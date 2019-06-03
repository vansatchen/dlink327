#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

ln -s $path/web /var/www/UpgradeFW

exit 0
