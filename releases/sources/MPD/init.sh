#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done
#libjson-c.so.2
#libgdbm.so.3

[ -f /bin/mpd ] && rm -f /bin/mpd || ln -s $path/bin/mpd /bin/
[ -f /etc/mpd.conf ] && rm -f /etc/mpd.conf || ln -s $path/etc/mpd.conf /etc/

exit 0
