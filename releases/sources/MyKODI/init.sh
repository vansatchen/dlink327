#!/bin/sh

path=$1

[ -f /var/www/MyKODI ] && rm -f /var/www/MyKODI || ln -s $path/web /var/www/MyKODI
[ -f /mnt/HD_a4/.@database@/music* ] && rm -f /mnt/HD_a4/.@database@/music*
[ -f /mnt/HD_a4/.@database@/video* ] && rm -f /mnt/HD_a4/.@database@/video*

exit 0
