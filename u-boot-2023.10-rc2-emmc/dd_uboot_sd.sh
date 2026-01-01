#!/bin/bash

# dd command 
# [paramater]
# 1. if:        input file/dev name
# 2. of:        output file/dev name
# 3. bs=n:      输入输出块大小为n个Byte
# 4. cbs=n:     一次转换n个Byte/转换缓冲区大小
# 5. skip=blocks :      从输出文件开头跳过blocks个块后再开始复制
# 6. seek=blocks :      从输出文件开头跳过blocks个块后再开始复制
# 7. count=blocks:      指定拷贝blocks个块，块大小等于bs指定的字节数
# 8. conv=conversion:   用指定的参数转换文件。
#    8.1 : ascii:       转换为ebcdic为ascii
#    8.2 : ebcdic:      转换ascii为ebcdic
#    8.3 : ibm:         转换ascii为alternate ebcdic
#    8.4 : block：      把每一行转换为长度为cbs，不足部分用空格填充
#    8.5 : unblock：    使每一行的长度都为cbs，不足部分用空格填充
#    8.6 : lcase：      把大写字符转换为小写字符
#    8.7 : ucase：      把小写字符转换为大写字符
#    8.8 : swab：       交换输入的每对字节
#    8.9 : noerror：    出错时不停止
#    8.10: notrunc：    不截短输出文件
#    8.11: sync：       将每个输入块填充到ibs个字节，不足部分用空（NUL）字符补齐。
if [ -z "$1" ];then
    echo "Usage: arg1=image arg2=/dev/sdx"
    exit
fi

#echo "erase u-boot sector in SD card, memory size =512*2048=1MB"
#dd if=/dev/zero of=$2 bs=512 count=2048
#sync
 
echo "write $1 to $2:"
# Write u-boot.imx to SD card
# uboot.imx from 1KB-1MB(skip 512*2=1KB in SDcard)
dd if=$1 of=$2 bs=512 seek=2 conv=sync
sync

