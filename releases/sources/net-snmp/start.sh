#!/bin/sh

path=$1

/bin/snmpd -c $path/etc/snmpd.conf

exit 0
