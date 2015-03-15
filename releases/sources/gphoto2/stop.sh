#!/bin/sh

rmmod exfat

[ -f /usr/sbin/gphoto2 ] && rm -f /usr/sbin/gphoto2
ln -s /usr/local/modules/sbin/gphoto2 /usr/sbin/gphoto2

exit 0
