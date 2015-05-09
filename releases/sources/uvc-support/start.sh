#!/bin/sh

path=$1

KVERS=`uname -r`
#insmod $path/modules/input-core.ko
#insmod $path/modules/videodev.ko
#insmod $path/modules/uvcvideo.ko
#insmod $path/modules/v4l2-common.ko

[ $KVERS == "3.2.34" ] && modulespath=modules-3.2.34 || modulespath=modules
insmod $path/$modulespath/input-core.ko
insmod $path/$modulespath/videodev.ko
insmod $path/$modulespath/uvcvideo.ko
insmod $path/$modulespath/v4l2-common.ko

exit 0
