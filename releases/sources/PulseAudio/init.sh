#!/bin/sh

path=$1

[ -f /bin/pacat ] && rm -f /bin/pacat
[ -f /bin/pacmd ] && rm -f /bin/pacmd
[ -f /bin/pactl ] && rm -f /bin/pactl
[ -f /bin/paplay ] && rm -f /bin/paplay
[ -f /bin/parec ] && rm -f /bin/parec
[ -f /bin/parecord ] && rm -f /bin/parecord
[ -f /bin/pasuspender ] && rm -f /bin/pasuspender
[ -f /bin/pulseaudio ] && rm -f /bin/pulseaudio

insmod $path/modules/soundcore.ko
insmod $path/modules/snd.ko
insmod $path/modules/snd-hwdep.ko
insmod $path/modules/snd-page-alloc.ko
insmod $path/modules/snd-rawmidi.ko
insmod $path/modules/snd-timer.ko
insmod $path/modules/snd-pcm.ko
insmod $path/modules/snd-usbmidi-lib.ko
insmod $path/modules/snd-usb-audio.ko

ln -s $path/etc/pulse /etc/

ln -s $path/bin/pacat /bin/
ln -s $path/bin/pacmd /bin/
ln -s $path/bin/pactl /bin/
ln -s $path/bin/paplay /bin/
ln -s $path/bin/parec /bin/
ln -s $path/bin/parecord /bin/
ln -s $path/bin/pasuspender /bin/
ln -s $path/bin/pulseaudio /bin/

exit 0
