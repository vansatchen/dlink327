#!/bin/sh

#remove links
[ -f /bin/htop ] && rm -f /bin/htop
[ -f /bin/file ] && rm -f /bin/file
[ -f /bin/showmount ] && rm -f /bin/showmount
[ -f /sbin/mount.nfs ] && rm -f /sbin/mount.nfs
[ -f /bin/dialog ] && rm -f /bin/dialog
[ -f /bin/clear ] && rm -f /bin/clear

exit 0
