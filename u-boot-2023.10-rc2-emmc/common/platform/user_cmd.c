#include <common.h>
#include <command.h>
#include <linux/delay.h>
#include <asm/system.h> 
#include "./image_map.h"
#include "./user_boot.h"

#define STR(x) #x
#define XSTR(x) STR(x)

extern IMAGE_EMMC gstImageEmmc;

static int do_wfi(struct cmd_tbl *cmdtp, int flag, int argc, char *const argv[])
{
    printf("wfi ...\n");
    udelay(100000); 
    asm volatile("dsb sy": : :"memory");
    wfi();
    return 0;
}

U_BOOT_CMD(
    wfi, 1, 1, do_wfi,
    "make the system entry wfi",
    ""
    );

static int do_user_boot(struct cmd_tbl *cmdtp, int flag, int argc,char *const argv[])
{
    int ret = CMD_RET_SUCCESS;
    char cmd[128] = {0};
    printf("user boot ... \n");
    user_image_probe();    
    set_img_map(gstImageEmmc.desc);
    image_copy(gstImageEmmc.desc);

    sprintf(cmd, "bootz 0x%x 0x%x 0x%x", ZIMAGE_ADDR, RAMDISK_ADDR, FDT_ADDR);
    printf("Executing: %s\n", cmd);
    mdelay(10);
    run_command(cmd, 0);
    return ret;
}

static struct cmd_tbl user_cmd_sub[] = {
    U_BOOT_CMD_MKENT(user_boot, 1, 0, do_user_boot, "user define boot", ""),
};

static int do_user_cmd(struct cmd_tbl *cmdtp, int flag, int argc, char *const argv[])
{
    struct cmd_tbl *c;
    if (argc < 2)
        return CMD_RET_USAGE;
    c = find_cmd_tbl(argv[1], &user_cmd_sub[0],
             ARRAY_SIZE(user_cmd_sub));
    if (c)
        return c->cmd(c, flag, argc, argv);
    else
        return CMD_RET_USAGE; 
}

U_BOOT_CMD(
    user_cmd,
    8,
    1,
    do_user_cmd,
    "input user sub cmd",
    ""
    );

