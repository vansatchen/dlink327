#!/bin/sh

path=$1

# Check that ldconfig is exists
if ! which ldconfig >/dev/null; then
        cp $path/sbin/ldconfig /sbin/
fi
/sbin/ldconfig $path/lib

[ -f `which snmpd` ] && rm -f `which snmpd`
ln -s $path/sbin/snmpd /bin/

exit 0
