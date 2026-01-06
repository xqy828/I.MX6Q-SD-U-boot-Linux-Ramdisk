#!/bin/bash

EMMC_DEV="/dev/mmcblk3"
UBOOT_PART="/dev/mmcblk3boot0"
UBOOT_B_PART="/dev/mmcblk3p1"
KERNEL_PART="/dev/mmcblk3p3"
ROOTFS_PART="/dev/mmcblk3p4"
DTS_PART="/dev/mmcblk3p5"

# 显示使用帮助
show_help() {
    echo "用法: $0 [选项] <镜像文件>"
    echo "选项:"
    echo "  -u    烧录 U-Boot"
    echo "  -k    烧录 Kernel"
    echo "  -r    烧录 Ramdisk"
    echo "  -d    烧录 Device Tree"
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
    -u)
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
        type="U-Boot-b"
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
    -k)
        part="$KERNEL_PART"
        type="Kernel"
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
    -r)
        part="$ROOTFS_PART"
        type="Ramdisk"
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
    -d)
        part="$DTS_PART"
        type="Device Tree"
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

