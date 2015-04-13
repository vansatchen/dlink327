#!/bin/sh

path=$1

ln -s $path/bin/htop /bin/
ln -s $path/bin/file /bin/
ln -s $path/bin/showmount /bin/
ln -s $path/bin/mount.nfs /sbin/
ln -s $path/bin/dialog /bin/

exit 0
