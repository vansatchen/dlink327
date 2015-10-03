#!/bin/sh

path=$1

#insmod $path/modules/usbserial.ko
#insmod $path/modules/pl2303.ko

KVERS=`uname -r`

[ $KVERS == "3.2.34" ] && modulespath=modules-3.2.34 || modulespath=modules
insmod $path/$modulespath/usbserial.ko
insmod $path/$modulespath/pl2303.ko

exit 0
