#!/bin/sh

#remove links
rm -f /bin/alsamixer
rm -f /bin/alsaucm
rm -f /bin/amidi
rm -f /bin/amixer
rm -f /bin/aplay
rm -f /bin/aplaymidi
rm -f /bin/arecord
rm -f /bin/aserver
rm -f /bin/speaker-test

rmmod snd-usb-audio
rmmod snd-usbmidi-lib
rmmod snd-pcm
rmmod snd-timer
rmmod snd-rawmidi
rmmod snd-page-alloc
rmmod snd-hwdep
rmmod snd
rmmod soundcore

rm -f /lib/libasound.so
rm -f /lib/libasound.so.2
rm -f /lib/libasound.so.2.0.0
rm -f /lib/libform.so.5
rm -f /lib/libmenu.so.5
rm -f /lib/libtinfo.so.5
rm -f /etc/asound.conf
rm -f /var/www/alsa-utils

exit 0
