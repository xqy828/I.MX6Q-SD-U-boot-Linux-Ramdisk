#!/bin/bash
HOST_ARCH=`uname -m`
if [ ${ARCH}="x86_64" ]; then
    export ARCH=arm
    export CROSS_COMPILE=arm-none-linux-gnueabihf-
    export PATH=$PATH:/opt/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-linux-gnueabihf/bin
elif [ ${ARCH}="aarch64" ]; then
    export ARCH=arm
    export CROSS_COMPILE=arm-none-linux-gnueabihf-
    export PATH=$PATH:/opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/bin
else
    echo "HOST ARCH IS INVALID"
fi
make menuconfig
echo make install
make install CONFIG_PREFIX=/home/pi/workspace/busybox-1.36.1/busybox_install
