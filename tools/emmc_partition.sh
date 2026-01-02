#!/bin/bash
# 完整分区脚本 - 带有分区标签
# 分区: u-boot(2M) env(1M) kernel(32M) rootfs(128M) devicetree(1M)

EMMC_DEV="${1:-/dev/mmcblk3}"

# 检查设备
if [ ! -b "$EMMC_DEV" ]; then
    echo "错误: 设备 $EMMC_DEV 不存在!"
    echo "可用设备:"
    lsblk -d -o NAME,SIZE | grep -E "^(mmcblk|sd|nvme)" 2>/dev/null || true
    exit 1
fi

echo "目标设备: $EMMC_DEV"
echo ""
echo "分区布局:"
echo "┌─────┬──────────────┬────────┬─────────────────────┐"
echo "│ 序号 │ 标签         │ 大小   │ 用途               │"
echo "├─────┼──────────────┼────────┼─────────────────────┤"
echo "│   1 │ u-boot       │ 2MB    │ U-Boot 引导代码    │"
echo "│   2 │ env          │ 1MB    │ U-Boot 环境变量    │"
echo "│   3 │ kernel       │ 32MB   │ Linux 内核镜像     │"
echo "│   4 │ rootfs       │ 128MB  │ 根文件系统         │"
echo "│   5 │ devicetree   │ 1MB    │ 设备树文件         │"
echo "└─────┴──────────────┴────────┴─────────────────────┘"
echo ""

# 确认操作
read -p "⚠️  这将清除 ${EMMC_DEV} 上的所有数据！继续吗？(输入 'YES' 继续): " confirm
if [ "$confirm" != "YES" ]; then
    echo "操作已取消。"
    exit 0
fi

echo "开始分区..."

# 创建gdisk命令文件
cat > /tmp/gdisk_commands.txt << 'EOF'
o
y
n
1

+2M
ef02
n
2

+1M
8300
n
3

+32M
8300
n
4

+128M
8300
n
5

+1M
8300
n
6


8300
c
1
u-boot
c
2
env
c
3
kernel
c
4
rootfs
c
5
devicetree
c
6
userdata
p
w
y
EOF

echo "开始分区操作..."
echo "注意：此操作将清除所有现有数据！"
echo ""

# 执行gdisk命令
gdisk "$EMMC_DEV" < /tmp/gdisk_commands.txt

sleep 1
mkfs.ext4 -L "userdata" "${EMMC_DEV}p6" 2>/dev/null
# 清理临时文件
rm -f /tmp/gdisk_commands.txt

echo ""
echo "分区完成！"
