#!/bin/sh

path=$1

insmod $path/modules/exfat.ko

[ -f /usr/sbin/gphoto2 ] && rm -f /usr/sbin/gphoto2
ln -s $path/bin/gphoto2 /usr/sbin/gphoto2

exit 0
