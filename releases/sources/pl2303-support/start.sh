#!/bin/sh

path=$1

[ `lsmod | grep -o ^usbserial` ] || insmod $path/modules/usbserial.ko
sleep 1
[ `lsmod | grep -o ^ftdi_sio` ] || insmod $path/modules/ftdi_sio.ko
sleep 1
[ `lsmod | grep -o ^pl2303` ] || insmod $path/modules/pl2303.ko

#insmod $path/modules/usbserial.ko
#insmod $path/modules/ftdi_sio.ko
#insmod $path/modules/pl2303.ko

exit 0
