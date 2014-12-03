#!/bin/sh

path=$1

# Check that ldconfig is exists
[ -f /sbin/ldconfig ] || cp $path/sbin/ldconfig /sbin/ && /sbin/ldconfig $path/lib
/sbin/ldconfig $path/lib

[ -f `which htop` ] && rm -f `which htop`
[ -f `which file` ] && rm -f `which file`

exit 0
