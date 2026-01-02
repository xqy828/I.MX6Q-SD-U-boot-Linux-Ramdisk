#ifndef _USER_BOOT_H_
#define _USER_BOOT_H_
#include <env.h>
#include <mmc.h>
#include <blk.h>


typedef struct
{
    struct mmc *mmc;
    struct blk_desc *desc;
    struct disk_partition info;
}IMAGE_EMMC;

int user_image_probe(void);
int set_img_map(struct blk_desc *desc);
int image_copy(struct blk_desc *desc);

#endif
