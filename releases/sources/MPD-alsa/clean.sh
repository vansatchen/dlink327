#!/bin/sh

#remove links
rm -f /bin/mpd
rm -f /etc/mpd.conf
rm -f /bin/mpc
rm -f /bin/ncmpc
rm -f /bin/ympd

rm -f /var/www/MPD-alsa

rm -f /lib/libmpdclient.so.2
rm -f /lib/libmad.so.0

exit 0
