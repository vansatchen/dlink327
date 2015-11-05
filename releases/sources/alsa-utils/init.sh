#!/bin/sh

path=$1

insmod $path/modules/soundcore.ko
insmod $path/modules/snd.ko
insmod $path/modules/snd-hwdep.ko
insmod $path/modules/snd-page-alloc.ko
insmod $path/modules/snd-rawmidi.ko
insmod $path/modules/snd-timer.ko
insmod $path/modules/snd-pcm.ko
insmod $path/modules/snd-usbmidi-lib.ko
insmod $path/modules/snd-usb-audio.ko

[ -f /lib/libasound.so ] || ln -s $path/lib/libasound.so /lib/
[ -f /lib/libasound.so.2 ] || ln -s $path/lib/libasound.so.2 /lib/
[ -f /lib/libform.so.5 ] || ln -s $path/lib/libform.so.5 /lib/
[ -f /lib/libmenu.so.5 ] || ln -s $path/lib/libmenu.so.5 /lib/
[ -f /lib/libtinfo.so.5 ] || ln -s $path/lib/libtinfo.so.5 /lib/

[ -f /var/www/alsa-utils ] || ln -s $path/web /var/www/alsa-utils

exit 0
