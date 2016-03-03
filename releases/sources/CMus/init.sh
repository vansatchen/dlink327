#!/bin/sh

path=$1

ln -s $path/lib/libmad.so.0 /lib/

[ -f /bin/cmus ] && rm -f /bin/cmus
ln -s $path/bin/cmus /bin/
[ -f /bin/cmus-remote ] && rm -f /bin/cmus-remote
ln -s $path/bin/cmus-remote /bin/
[ -f /lib/libmad.so.0 ] || ln -s $path/lib/libmad.so.0 /lib/
[ -f /home/root/.config/cmus ] && rm -f /home/root/.config/cmus
ln -s $path/etc /home/root/.config/cmus

[ -f /var/www/CMus ] && rm -f /var/www/CMus
ln -s $path/web /var/www/CMus

exit 0
