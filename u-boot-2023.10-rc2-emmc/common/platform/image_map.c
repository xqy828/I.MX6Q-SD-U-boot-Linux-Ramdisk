#include <common.h>
#include "./image_map.h"

IMGMAP imx6q_img[] = 
{
   // [0] = {0,EMMC,0,0,0, ,"u-boot-with-spl.imx","u-boot"},
    [0] = {0,EMMC,0,0,0,ZIMAGE_ADDR,"zImage","kernel"},
    [1] = {0,EMMC,0,0,0,RAMDISK_ADDR,"ramdisk.image","rootfs"},
    [2] = {0,EMMC,0,0,0,FDT_ADDR,"imx6q-custom.dtb","devicetree"},
};

int get_user_img_map(IMGMAP **pImgMap,int *pMapSize)
{
    int rc = 0;
    *pImgMap = &imx6q_img[0];
    *pMapSize = sizeof(imx6q_img)/sizeof(imx6q_img[0]);
    return  rc;
}

