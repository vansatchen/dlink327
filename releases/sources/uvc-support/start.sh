#!/bin/sh

path=$1

insmod $path/modules/input-core.ko
insmod $path/modules/videodev.ko
insmod $path/modules/uvcvideo.ko
insmod $path/modules/v4l2-common.ko

exit 0
