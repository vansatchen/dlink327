#!/bin/sh

#remove links
[ -f /bin/showmount ] && rm -f /bin/showmount
[ -f /sbin/mount.nfs ] && rm -f /sbin/mount.nfs

exit 0
