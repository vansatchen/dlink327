#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

echo 'export CAMLIBS=/mnt/HD/HD_a2/Nas_Prog/gphoto2/lib/libgphoto2/2.5.6' >> /home/root/.profile
echo 'export IOLIBS=/mnt/HD/HD_a2/Nas_Prog/gphoto2/lib/libgphoto2_port/0.12.0' >> /home/root/.profile

exit 0
