#!/bin/sh

path=$1

[ -f /var/www/Extraddons ] && rm -f /var/www/Extraddons
ln -s $path/web /var/www/Extraddons
ln -s $path/web/cgi-bin/* /var/www/cgi-bin/

exit 0
