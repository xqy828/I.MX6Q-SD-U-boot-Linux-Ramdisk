#!/bin/bash
CUR_DIR=$(pwd)
CUR_DATE=$(date +%Y%m%d)
CUR_TIME=$(date +%H%M%S)
host_name=$(hostname)
ARCH=`uname -m`

echo "ARCH=${ARCH}"
if [ ${ARCH} = "x86_64" ]; then
	./mkimage_x86 -c none -A arm -T script -d ./boot.cmd.user ${CUR_DATE}_${CUR_TIME}_boot.scr
elif [ ${ARCH} = "aarch64" ]; then
	./mkimage -c none -A arm -T script -d ./boot.cmd.user ${CUR_DATE}_${CUR_TIME}_boot.scr
else
	echo "arch is invalid"
    exit 1
fi
cp ${CUR_DATE}_${CUR_TIME}_boot.scr boot.scr
