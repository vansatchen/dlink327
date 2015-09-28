#!/bin/sh

#remove modules
rmmod v4l2-int-device
rmmod v4l2-common
rmmod uvcvideo
rmmod videodev.ko
rmmod input-core.ko

exit 0
