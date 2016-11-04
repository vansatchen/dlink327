#!/bin/sh

path=$1

$path/bin/vlmcsd -p /var/run/vlmcsd.pid -M1

exit 0
