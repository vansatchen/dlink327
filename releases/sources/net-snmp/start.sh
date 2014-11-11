#!/bin/sh

path=$1

/bin/net-snmpd -c $path/etc/snmpd.conf -p /var/run/net-snmpd.pid

exit 0
