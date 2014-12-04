#!/bin/sh

path=$1

# Check that ldconfig is exists
#[ -f /sbin/ldconfig ] || cp $path/sbin/ldconfig /sbin/ && /sbin/ldconfig $path/lib
#/sbin/ldconfig $path/lib
if [ -f /sbin/ldconfig ]; then
	/sbin/ldconfig $path/lib
else
	cp $path/sbin/ldconfig /sbin/
	/sbin/ldconfig $path/lib
fi

[ -f /bin/htop ] && rm -f /bin/htop
[ -f /bin/file ] && rm -f /bin/file

exit 0
