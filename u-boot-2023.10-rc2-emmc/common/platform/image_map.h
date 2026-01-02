#ifndef _IMAGE_MAP_H_
#define _IMAGE_MAP_H_

#define ZIMAGE_ADDR     (0x12000000u)
#define RAMDISK_ADDR    (0x13000000u)
#define FDT_ADDR        (0x18000000u)
enum IMGTYPE
{
    EMMC,
    SD,
    NOR_FLASH,
    MAX,
};

typedef struct
{
    unsigned int id; // emmc Partition id
    unsigned int type;
    unsigned int start;
    unsigned int size;
    unsigned int blksz;
    unsigned int vm_addr;
    char *img_name;
    char *mmc_partition;
} IMGMAP;

int get_user_img_map(IMGMAP **pImgMap,int *pMapSize);

#endif
