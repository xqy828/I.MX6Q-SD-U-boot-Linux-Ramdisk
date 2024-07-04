#!/bin/bash
start_time=$(date +%s)
PARALLEL=`cat /proc/cpuinfo | grep cores | wc -l`
HOST_ARCH=`uname -m`
if [ ${HOST_ARCH} = "x86_64" ]; then
    export ARCH=arm
    export CROSS_COMPILE=arm-none-linux-gnueabihf-
    export PATH=$PATH:/opt/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-linux-gnueabihf/bin
elif [ ${HOST_ARCH} = "aarch64" ]; then
    export ARCH=arm
    export CROSS_COMPILE=arm-none-linux-gnueabihf-
    export PATH=$PATH:/opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/bin
else
    echo "HOST ARCH IS INVALID"
    exit 1
fi
echo make distclen
make distclean
echo make mx6sabresd_defconfig
make mx6sabresd_defconfig
echo "make -j${PARALLEL}"
#make -j${PARALLEL}
make -j8
end_time=$(date +%s)
cost_time=$[ $end_time-$start_time ]
echo "build uboot time is $(($cost_time/60))min $(($cost_time%60))s"
