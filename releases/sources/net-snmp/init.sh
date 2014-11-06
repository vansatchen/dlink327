#!/bin/sh

path=$1

[ -f `which snmpd.sh` ] && rm -f `which snmpd.sh`
ln -s $path/bin/snmpd.sh /bin/

exit 0
