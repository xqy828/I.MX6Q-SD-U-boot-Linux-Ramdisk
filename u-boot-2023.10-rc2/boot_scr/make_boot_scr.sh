#!/bin/bash
CUR_DIR=$(pwd)
CUR_DATE=$(date +%Y%m%d)
CUR_TIME=$(date +%H%M%S)
host_name=$(hostname)
./mkimage -c none -A arm -T script -d ./boot.cmd.user ${CUR_DATE}_${CUR_TIME}_boot.scr
cp ${CUR_DATE}_${CUR_TIME}_boot.scr boot.scr
