#!/bin/sh

path=$1

[ -f /bin/polipo ] && rm -f /bin/polipo || cp $path/bin/polipo /bin/
[ -f /etc/polipo ] && rm -f /etc/polipo || ln -s $path/etc /etc/polipo

exit 0
