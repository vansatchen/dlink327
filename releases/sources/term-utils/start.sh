#!/bin/sh

path=$1

ln -s $path/bin/ifstat /bin/
ln -s $path/bin/htop /bin/
ln -s $path/bin/tcpdump /bin/

exit 0
