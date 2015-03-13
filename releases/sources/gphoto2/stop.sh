#!/bin/sh

rmmod exfat
[ -f /bin/gphoto2 ] && rm -f /bin/gphoto2
ln -s /usr/local/modules/sbin/gphoto2 /usr/sbin/gphoto2

exit 0
