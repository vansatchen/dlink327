#!/bin/sh

path=$1

#[ -f /bin/vlmcsd ] && rm -f /bin/vlmcsd || cp $path/bin/vlmcsd /bin/
[ -f /var/www/KMS ] && rm -f /var/www/KMS || ln -s $path/web /var/www/KMS

exit 0
