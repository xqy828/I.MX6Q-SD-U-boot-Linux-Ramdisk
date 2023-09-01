#!/bin/bash
start_time=$(date +%s)
export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabihf-
export PATH=$PATH:/opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/bin
echo make distclen
make distclean
echo make mx6sabresd_defconfig
make mx6sabresd_defconfig
echo make
make -j4   
end_time=$(date +%s)
cost_time=$[ $end_time-$start_time ]
echo "build uboot time is $(($cost_time/60))min $(($cost_time%60))s"
