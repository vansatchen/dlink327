#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

[ -f /bin/showmount ] && rm -f /bin/showmount
[ -f /sbin/mount.nfs ] && rm -f /sbin/mount.nfs

exit 0
