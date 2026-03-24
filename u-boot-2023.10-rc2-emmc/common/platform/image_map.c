#include <common.h>
#include "./image_map.h"

IMGMAP imx6q_img[] = 
{
   // [0] = {0,EMMC,0,0,0, ,"u-boot-with-spl.imx","u-boot"},
    [0] = {0,EMMC,0,0,0,ZIMAGE_ADDR,"zImage.a","kernel_a"},
    [1] = {0,EMMC,0,0,0,RAMDISK_ADDR,"ramdisk.image.a","rootfs_a"},
    [2] = {0,EMMC,0,0,0,FDT_ADDR,"imx6q-custom.dtb.a","devicetree_a"},
};

IMGMAP imx6q_img_f[] = 
{
   // [0] = {0,EMMC,0,0,0, ,"u-boot-with-spl.imx","u-boot"},
    [0] = {0,EMMC,0,0,0,ZIMAGE_ADDR,"zImage.b","kernel_b"},
    [1] = {0,EMMC,0,0,0,RAMDISK_ADDR,"ramdisk.image.b","rootfs_b"},
    [2] = {0,EMMC,0,0,0,FDT_ADDR,"imx6q-custom.dtb.b","devicetree_b"},
};

int get_user_img_map(IMGMAP **pImgMap,int *pMapSize)
{
    int rc = 0;
    *pImgMap = &imx6q_img[0];
    *pMapSize = sizeof(imx6q_img)/sizeof(imx6q_img[0]);
    return  rc;
}

int get_factory_img_map(IMGMAP **pImgMap,int *pMapSize)
{
    int rc = 0;
    *pImgMap = &imx6q_img_f[0];
    *pMapSize = sizeof(imx6q_img_f)/sizeof(imx6q_img_f[0]);
    return  rc;
}