#!/bin/sh

path=$1

ln -s $path/bin/showmount /bin/
ln -s $path/bin/mount.nfs /sbin/

exit 0
