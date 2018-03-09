#!/bin/sh

path=$1

$path/sbin/mosquitto -d -c $path/etc/mosquitto/mosquitto.conf

exit 0
