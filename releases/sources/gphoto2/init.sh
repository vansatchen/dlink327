#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

[ -f /bin/gphoto2 ] && rm -f /bin/gphoto2

export CAMLIBS=$path/lib/libgphoto2/2.5.6
export IOLIBS=$path/lib/libgphoto2_port/0.12.0

exit 0
