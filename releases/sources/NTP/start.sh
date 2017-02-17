#!/bin/sh

path=$1

/bin/ntpd -p /var/run/ntpd.pid -g -c $path/etc/ntp.conf

exit 0
