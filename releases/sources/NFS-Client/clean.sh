#!/bin/sh

TERMUTILS=/mnt/HD/HD_a2/Nas_Prog/term-utils

#remove links
rm -f /bin/showmount
rm -f /sbin/mount.nfs

[ -d $TERMUTILS ] && ln -s $TERMUTILS/bin/mount.nfs /sbin/ && ln -s $TERMUTILS/bin/showmount /bin/

exit 0
