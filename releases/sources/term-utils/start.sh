#!/bin/sh

path=$1

ln -s $path/bin/ifstat /bin/
ln -s $path/bin/htop /bin/
ln -s $path/bin/tcpdump /bin/
ln -s $path/bin/trafshow /bin/
ln -s $path/etc/trafshow /etc/

exit 0
