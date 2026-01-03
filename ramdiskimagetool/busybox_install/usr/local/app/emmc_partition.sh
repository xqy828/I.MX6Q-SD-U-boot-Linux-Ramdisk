#!/bin/bash

set -e

# 配置参数
EMMC_DEV="/dev/mmcblk3"
START_SECTOR=2 # imx6q start address must be 0x00000400 bytes (IVT+DCD) 

# 分区大小（MB）
UBOOT_SIZE=2
ENV_SIZE=1
KERNEL_SIZE=32
ROOTFS_SIZE=128
DTB_SIZE=1

echo "目标设备: $EMMC_DEV"
echo ""
echo "分区布局:"
echo "┌─────┬──────────────┬────────┬─────────────────────┐"
echo "│序号 │ 标签         │ 大小   │ 用途                │"
echo "├─────┼──────────────┼────────┼─────────────────────┤"
echo "│   1 │ u-boot-bak   │ 2MB    │ U-Boot 代码backup   │"
echo "│   2 │ env          │ 1MB    │ U-Boot 环境变量     │"
echo "│   3 │ kernel       │ 32MB   │ Linux 内核镜像      │"
echo "│   4 │ rootfs       │ 128MB  │ 根文件系统          │"
echo "│   5 │ devicetree   │ 1MB    │ 设备树文件          │"
echo "|   6 | userdata     | 7xGB   | 用户文件            |" 
echo "└─────┴──────────────┴────────┴─────────────────────┘"
echo ""

# 检查root权限
[ "$EUID" -ne 0 ] && echo "需要root权限" && exit 1

# 检查设备
[ ! -b "$EMMC_DEV" ] && echo "设备 $EMMC_DEV 不存在" && exit 1

# 检查gdisk
command -v gdisk >/dev/null 2>&1 || { echo "需要安装gdisk工具"; exit 1; }

# 确认操作
read -p "将清除 $EMMC_DEV 上的所有数据！继续？(y/N): " confirm
[[ ! "$confirm" =~ ^[Yy]$ ]] && echo "操作取消" && exit 0

echo "开始分区..."

# 使用管道方式执行gdisk命令，避免变量替换和解析问题
{
    echo o        # 创建新GPT分区表
    echo y        # 确认清除现有分区
    echo n        # 新建分区1
    echo 1        # 分区号1
    echo          # 使用默认起始扇区
    echo "+${UBOOT_SIZE}M"  # 分区大小
    echo 8300     # Linux文件系统类型
    echo n        # 新建分区2
    echo 2        # 分区号2
    echo          # 使用默认起始扇区
    echo "+${ENV_SIZE}M"    # 分区大小
    echo 8300     # Linux文件系统类型
    echo n        # 新建分区3
    echo 3        # 分区号3
    echo          # 使用默认起始扇区
    echo "+${KERNEL_SIZE}M" # 分区大小
    echo 8300     # Linux文件系统类型
    echo n        # 新建分区4
    echo 4        # 分区号4
    echo          # 使用默认起始扇区
    echo "+${ROOTFS_SIZE}M" # 分区大小
    echo 8300     # Linux文件系统类型
    echo n        # 新建分区5
    echo 5        # 分区号5
    echo          # 使用默认起始扇区
    echo "+${DTB_SIZE}M"    # 分区大小
    echo 8300     # Linux文件系统类型
    echo n        # 新建分区6
    echo 6        # 分区号6
    echo          # 使用默认起始扇区
    echo          # 使用默认结束扇区（占用所有剩余空间）
    echo 8300     # Linux文件系统类型
    echo c        # 修改分区名称
    echo 1        # 分区1
    echo "u-boot-bak" # 分区名称
    echo c        # 修改分区名称
    echo 2        # 分区2
    echo "env"    # 分区名称
    echo c        # 修改分区名称
    echo 3        # 分区3
    echo "kernel" # 分区名称
    echo c        # 修改分区名称
    echo 4        # 分区4
    echo "rootfs" # 分区名称
    echo c        # 修改分区名称
    echo 5        # 分区5
    echo "devicetree" # 分区名称
    echo c        # 修改分区名称
    echo 6        # 分区6
    echo "userdata" # 分区名称
    echo p        # 打印分区表（预览）
    echo w        # 写入磁盘
    echo y        # 确认写入
} | gdisk "$EMMC_DEV"

echo "开始分区操作..."
echo "注意：此操作将清除所有现有数据！"
echo ""

sleep 1
sync

if [ -b "${EMMC_DEV}p6" ] || [ -b "${EMMC_DEV}6" ]; then
    echo "格式化userdata分区..."
    if [ -b "${EMMC_DEV}p6" ]; then
        mkfs.ext4 -F -L "USERDATA" "${EMMC_DEV}p6"
    else
        mkfs.ext4 -F -L "USERDATA" "${EMMC_DEV}6"
    fi
else
    echo "警告：userdata分区未找到，跳过格式化"
fi

echo ""
echo "分区完成！"
echo ""
echo "分区表信息："
gdisk -l "$EMMC_DEV" | tail -20
