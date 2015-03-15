#!/bin/sh

path=$1

sed -i 's#export CAMLIBS=/mnt/HD/HD_a2/Nas_Prog/gphoto2/lib/libgphoto2/2.5.6##g' /home/root/.profile
sed -i 's#export IOLIBS=/mnt/HD/HD_a2/Nas_Prog/gphoto2/lib/libgphoto2_port/0.12.0##g' /home/root/.profile
sed -i '/^$/d' /home/root/.profile

rm -rf $path

exit 0
