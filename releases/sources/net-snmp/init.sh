#!/bin/sh

path=$1

# Check that ldconfig is exists
if ! which ldconfig >/dev/null; then
        cp $path/sbin/ldconfig /sbin/
fi
/sbin/ldconfig $path/lib

[ -f `which net-snmpd` ] && rm -f `which net-snmpd`
ln -s $path/sbin/net-snmpd /bin/

exit 0
