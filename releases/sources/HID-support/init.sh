#!/bin/sh

path=$1

ln -s $path/bin/perl /bin/
ln -s $path/web /var/www/HID-support
ln -s $path/web/scripts/ctlrelay /var/www/cgi-bin/ctlrelay.cgi

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

exit 0
