#!/bin/sh

path=$1

# Check that ldconfig is exists
if ! which ldconfig >/dev/null; then
        cp $path/sbin/ldconfig /sbin/
fi
/sbin/ldconfig $path/lib

[ -f `which htop` ] && rm -f `which htop`
[ -f `which ifstat` ] && rm -f `which ifstat`

exit 0
