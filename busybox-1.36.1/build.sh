#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabihf-
export PATH=$PATH:/opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/bin
make menuconfig
echo make install
make install CONFIG_PREFIX=/home/pi/workspace/busybox-1.36.1/busybox_install
