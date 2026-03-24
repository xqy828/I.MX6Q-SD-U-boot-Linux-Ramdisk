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

typedef enum
{
    USER_MODE = 0,
    FACTORY_MODE,
} SYSTEM_BOOT_MODE;

int user_image_probe(void);
int set_img_map(struct blk_desc *desc,unsigned int system_mode);
int image_copy(struct blk_desc *desc,unsigned int system_mode);

#endif
