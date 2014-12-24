#!/bin/sh

path=$1

[ -f /bin/polipo ] && rm -f /bin/polipo || cp $path/bin/polipo /bin/
[ -f /etc/polipo ] && rm -f /etc/polipo || ln -s $path/etc /etc/polipo
[ -f /var/www/Polipo ] && rm -f /var/www/Polipo || ln -s $path/web /var/www/Polipo

exit 0
