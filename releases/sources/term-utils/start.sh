#!/bin/sh

path=$1

ln -s $path/bin/htop /bin/
ln -s $path/bin/file /bin/
ln -s $path/bin/showmount /bin/
ln -s $path/bin/mount.nfs /sbin/
ln -s $path/bin/dialog /bin/
ln -s $path/bin/clear /bin/
ln -s $path/bin/lshw /bin/
ln -s $path/bin/strace /bin/
ln -s $path/bin/fdupes /bin/
ln -s $path/bin/pv /bin/
ln -s $path/bin/mysqlcheck /bin/
ln -s $path/bin/mysqldump /bin/
ln -s $path/bin/tmux /bin/
ln -s $path/bin/nmon /bin/
ln -s $path/bin/saidar /bin/
ln -s $path/bin/ncdu /bin/

exit 0
