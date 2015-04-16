#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

[ -f /bin/amixer ] && rm -f /bin/amixer
[ -f /bin/aplay ] && rm -f /bin/aplay
[ -f /bin/arecord ] && rm -f /bin/arecord
[ -f /bin/speaker-test ] && rm -f /bin/speaker-test

insmod $path/modules/soundcore.ko
insmod $path/modules/snd.ko
insmod $path/modules/snd-hwdep.ko
insmod $path/modules/snd-page-alloc.ko
insmod $path/modules/snd-rawmidi.ko
insmod $path/modules/snd-timer.ko
insmod $path/modules/snd-pcm.ko
insmod $path/modules/snd-usbmidi-lib.ko
insmod $path/modules/snd-usb-audio.ko

exit 0
