#!/bin/sh

path=$1

ln -s $path/bin/ifstat /bin/
ln -s $path/bin/htop /bin/

exit 0
