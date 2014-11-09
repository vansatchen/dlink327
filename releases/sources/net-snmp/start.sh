#!/bin/sh

path=$1

/bin/snmpd -c $path/etc/snmpd.conf -p /var/run/snmpd.pid

exit 0
