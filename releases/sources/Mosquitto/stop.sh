#!/bin/sh

#kill daemon
kill `cat /var/run/mosquitto.pid`

exit 0
