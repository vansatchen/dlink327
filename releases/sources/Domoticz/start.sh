#!/bin/sh

path=$1

$path/domoticz/domoticz -daemon -pidfile /var/run/domoticz.pid

exit 0
