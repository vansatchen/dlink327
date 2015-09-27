#!/bin/sh

path=$1

insmod $path/modules/usbserial.ko
insmod $path/modules/pl2303.ko

exit 0
