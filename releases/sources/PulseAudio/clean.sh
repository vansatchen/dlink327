#!/bin/sh

#remove links
rm -f /bin/pacat
rm -f /bin/pacmd
rm -f /bin/pactl
rm -f /bin/paplay
rm -f /bin/parec
rm -f /bin/parecord
rm -f /bin/pasuspender
rm -f /bin/pulseaudio

rmmod snd-usb-audio
rmmod snd-usbmidi-lib
rmmod snd-pcm
rmmod snd-timer
rmmod snd-rawmidi
rmmod snd-page-alloc
rmmod snd-hwdep
rmmod snd
rmmod soundcore

rm -f /lib/libFLAC.so.8
rm -f /lib/libgdbm.so.3
rm -f /lib/libjson-c.so.2
rm -f /lib/libltdl.so.7
rm -f /lib/libogg.so.0
rm -f /lib/libsndfile.so.1
rm -f /lib/libvorbisenc.so.2
rm -f /lib/libvorbis.so.0
rm -f /lib/libwrap.so.0
rm -f /lib/libasound.so.2
rm -f /lib/libpulse.so.0

exit 0
