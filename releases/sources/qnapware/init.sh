#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

[ -d /Apps ] && rm -r /Apps/
mkdir -p /Apps && ln -sf $path/opt /Apps/

echo $PATH | grep -q "opt" || echo ". /Apps/opt/etc/profile" >> /home/root/.profile

exit 0
