#!/bin/bash

CORE=`cat /proc/cpuinfo |grep "processor"|wc -l`
THREAD=$(($CORE*2))

make clean
make ARCH=arm CROSS_COMPILE=arm-himix100-linux- -j$THREAD
make ARCH=arm CROSS_COMPILE=arm-himix100-linux- u-boot-z.bin -j$THREAD
