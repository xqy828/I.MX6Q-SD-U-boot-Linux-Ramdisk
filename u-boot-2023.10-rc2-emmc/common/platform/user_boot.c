#include <common.h>
#include <command.h>
#include <linux/delay.h>
#include <asm/system.h> 
#include <env.h>
#include <mmc.h>
#include <blk.h>
#include <console.h>
#include <display_options.h>
#include <dm.h>
#include <dm/uclass.h>
#include <wdt.h>
#include "./image_map.h"
#include "./user_boot.h"

#define RED   "\033[31m"
#define GREEN "\033[32m"
#define RESET "\033[0m"

IMAGE_EMMC gstImageEmmc;

void user_init(void)
{
    env_set("bootcmd", "user_cmd user_boot");
}

int set_img_map(struct blk_desc *desc)
{
    int rc = 0;
    int len = 0;
    int p = 0,i = 0;
    struct disk_partition info = {0};
    IMGMAP *local_ImgMap = NULL;
    IMGMAP *pImgMap = NULL;

    assert(desc != NULL);

    get_user_img_map(&pImgMap,&len); 
    local_ImgMap  = pImgMap;
    for (p = 1; p <= MAX_SEARCH_PARTITIONS; p++) 
    {
        rc = part_get_info(desc, p, &info);
        if (rc != 0)
        {
            continue;
        }
        for(i = 0; i < len;i++)
        {
            if(strcmp(info.name,pImgMap->mmc_partition) == 0)
            {
                pImgMap->id = p;
                pImgMap->start = info.start;
                pImgMap->blksz = info.blksz; 
                pImgMap->size = info.size;

                debug(GREEN "%s found in emmc(%d) sector:0x%x size:%d bytes" RESET "\n",\
                    pImgMap->img_name,CONFIG_SYS_MMC_BOOT_DEV,pImgMap->start,\
                    (pImgMap->size * pImgMap->blksz));
                break;
            }
            pImgMap++;
        }
        pImgMap = local_ImgMap; 
    }
    return 0;    
}

int image_copy(struct blk_desc *desc)
{
    int rc = 0;
    int len = 0;
    int i = 0;
    IMGMAP *pImgMap = NULL;

    assert(desc != NULL);
    printf("Start loading image . . . \n"); 
    get_user_img_map(&pImgMap,&len); 
    for(i = 0; i < len;i++)
    {
        rc = blk_dread(desc, pImgMap->start, pImgMap->size, (void*)(pImgMap->vm_addr));
        if (rc != pImgMap->size)
        {
            printf(RED "%s load failed" RESET "\n",pImgMap->img_name);
        }   
        else
        {
            printf(GREEN "%s load form emmc(%d) sector:0x%x to addr:0x%x size:%d bytes" RESET "\n",\
                pImgMap->img_name,CONFIG_SYS_MMC_BOOT_DEV,pImgMap->start,\
                pImgMap->vm_addr,(pImgMap->size * pImgMap->blksz));\
        }
        pImgMap++;
        mdelay(10);
    }
    return 0;
}

int user_image_probe(void)
{
    int rc = 0;
    struct mmc *mmc = NULL; 
    struct blk_desc *desc = NULL;
    struct disk_partition info = {0};
    int p = 0;

    mmc = find_mmc_device(CONFIG_SYS_MMC_BOOT_DEV);
    if(mmc == NULL)
    {
        printf("failed to find MMC(%d) \n",CONFIG_SYS_MMC_BOOT_DEV);
        return -1;
    }
    rc =  mmc_init(mmc);
    if(rc != 0)
    {
        printf("MMC(%d) init failed\n",CONFIG_SYS_MMC_BOOT_DEV);
        return -1;
    }
       desc = mmc_get_blk_desc(mmc);
    if (!desc)
    {
        printf("MMC(%d) get blk desc failed\n",CONFIG_SYS_MMC_BOOT_DEV);
        return -1; 
    }
    
    gstImageEmmc.mmc = mmc ;
    gstImageEmmc.desc = desc ;

    printf("MMC Device %d:\n", CONFIG_SYS_MMC_BOOT_DEV);
    printf("High Capacity: %s\n", mmc->high_capacity ? "Yes" : "No");
    puts("Capacity: ");
    print_size(mmc->capacity, "\n");
    printf("Block size: %lu bytes\n", desc->blksz);
    
    printf("\n--- Partitions ---\n");
    printf("Num  Name            Type        Start       Bootable     Size   \n");
    printf("---  --------------  ----------  ----------  ----------  --------\n");
    for (p = 1; p <= MAX_SEARCH_PARTITIONS; p++) 
    {
        rc = part_get_info(desc, p, &info);
        if (rc != 0)
        {
            continue;
        }
        printf("%-3d  %-14s  %-10s  %-10lu  %-10s  ", p, info.name, info.type,\
                info.start,info.bootable ? "Yes" : "No");
        print_size(info.size * info.blksz, "");
        printf("\n");
    }
    
    return 0;
}

/*******************************//*
* wdt reset *
*********************************/
void reset_cpu(void)
{
#if CONFIG_IS_ENABLED(WDT)
    struct udevice *currdev;
    int ret;
#if 0
	struct udevice *dev;
	struct uclass *uc;
 
    ret = uclass_get(UCLASS_WDT, &uc);
	if (ret)
    {
	    return;
    }
	uclass_foreach_dev(dev, uc);
    printf("%s (%s)\n", dev->name, dev->driver->name);
#endif    
    ret = uclass_get_device_by_name(UCLASS_WDT,"watchdog@20bc000", &currdev);
    if (ret) {
	    printf("Can't get the watchdog timer: watchdog@20bc000 \n");
	    return;
    }
	ret = wdt_expire_now(currdev,0);
    if (ret == -ENOSYS) {
        printf("Expiring watchdog timer not supported.\n");
        return ;
    } else if (ret) {
        printf("Expiring watchdog timer failed (%d)\n", ret);
        return ;
    }
#endif
    return ;
}


