#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

[ -f /bin/ntpd ] && rm -f /bin/ntpd
ln -s $path/sbin/ntpd /bin/
ln -s $path/web /var/www/NTP
#ln -s $path/etc/siproxd.conf /etc/
#mkdir /var/run/siproxd
#chown nobody:root /var/run/siproxd

exit 0
