#!/bin/sh

path=$1

[ -f /var/www/OpenNTPD ] && rm -f /var/www/OpenNTPD
ln -s $path/web /var/www/OpenNTPD

exit 0
