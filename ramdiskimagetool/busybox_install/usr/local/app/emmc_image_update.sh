#!/bin/bash

EMMC_DEV="/dev/mmcblk3"
UBOOT_PART="/dev/mmcblk3boot0"
UBOOT_B_PART="/dev/mmcblk3p1"
KERNEL_PART="/dev/mmcblk3p3"
ROOTFS_PART="/dev/mmcblk3p4"
DTS_PART="/dev/mmcblk3p5"

KERNEL_B_PART="/dev/mmcblk3p6"
ROOTFS_B_PART="/dev/mmcblk3p7"
DTS_B_PART="/dev/mmcblk3p8"


# 显示使用帮助
show_help() {
    echo "用法: $0 [选项] <镜像文件>"
    echo "选项:"
    echo "  -ua    烧录 U-Boot a"
    echo "  -ka    烧录 Kernel a"
    echo "  -ra    烧录 Ramdisk a"
    echo "  -da    烧录 Device Tree a"

    echo "  -ub    烧录 U-Boot b"
    echo "  -kb    烧录 Kernel b"
    echo "  -rb    烧录 Ramdisk b"
    echo "  -db    烧录 Device Tree b"

    echo "示例:"
    echo "  $0 -u uboot.bin"
    echo "  $0 -k zImage"
}

# 检查参数
if [ $# -ne 2 ]; then
    show_help
    exit 1
fi

# 获取参数
option="$1"
image_file="$2"

# 检查文件是否存在
if [ ! -f "$image_file" ]; then
    echo "错误: 文件 $image_file 不存在"
    exit 1
fi

# 检查 eMMC 设备
if [ ! -b "$EMMC_DEV" ]; then
    echo "错误: eMMC 设备 $EMMC_DEV 不存在"
    exit 1
fi

# 根据选项设置烧录参数
case "$option" in
    -ua)
        part="$UBOOT_PART"
        type="U-Boot"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        
        echo "access boot partition $part"
        echo 0 > /sys/block/mmcblk3boot0/force_ro
        echo "access linux boot partition $EMMC_DEV"
        echo 0 > /sys/block/mmcblk3/force_ro
        if dd if="$image_file" of="$part" bs=512 seek=2 conv=fsync; then
            echo "$type 烧录成功!"
            sync
            echo "re-enable read-only access"
            echo 1 > /sys/block/mmcblk3boot0/force_ro
            echo "enable boot partion $part to boot"
            mmc bootpart enable 1 1 /dev/mmcblk3
        else
            echo "$type 烧录失败!"
            exit 1
        fi
        ;;
    -ub)
        part="$UBOOT_B_PART"
        type="U-Boot b"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
            exit 1
        fi
        ;; 
    -ka)
        part="$KERNEL_PART"
        type="Kernel a"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
            exit 1
        fi
        ;;
    -kb)
        part="$KERNEL_B_PART"
        type="Kernel b"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
            exit 1
        fi
        ;;
    -ra)
        part="$ROOTFS_PART"
        type="Ramdisk a"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync ; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
        exit 1
        fi
        ;;
    -rb)
        part="$ROOTFS_B_PART"
        type="Ramdisk b"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync ; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
        exit 1
        fi
        ;;
    -da)
        part="$DTS_PART"
        type="Device Tree a"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
            exit 1
        fi
        ;;
    -db)
        part="$DTS_B_PART"
        type="Device Tree a"
        echo "正在烧录 $type..."
        echo "设备: $EMMC_DEV"
        echo "文件: $image_file"
        echo "分区: $part"
        if dd if="$image_file" of="$part" conv=fsync; then
            echo "$type 烧录成功!"
            sync
        else
            echo "$type 烧录失败!"
            exit 1
        fi
        ;;
    *)
        echo "错误: 无效选项 $option"
        show_help
        exit 1
        ;;
esac

