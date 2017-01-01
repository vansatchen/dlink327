#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

ln -s $path/lib/libltdl.so.7 /lib/
[ -f /bin/siproxd ] && rm -f /bin/siproxd
ln -s $path/bin/siproxd /bin/
ln -s $path/web /var/www/Siproxd
ln -s $path/etc/siproxd.conf /etc/
mkdir /var/run/siproxd
chown nobody:root /var/run/siproxd

route add -host 192.168.1.23 gw 192.168.1.1

exit 0
