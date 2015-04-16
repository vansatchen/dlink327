#!/bin/sh

#remove links
rm -f /bin/amixer
rm -f /bin/aplay
rm -f /bin/arecord
rm -f /bin/speaker-test

rmmod soundcore
rmmod snd
rmmod snd-hwdep
rmmod snd-page-alloc
rmmod snd-rawmidi
rmmod snd-timer
rmmod snd-pcm
rmmod snd-usbmidi-lib
rmmod snd-usb-audio

exit 0
