#!/bin/sh

path=$1

insmod $path/modules/exfat.ko
ln -s $path/bin/gphoto2 /bin/

exit 0
