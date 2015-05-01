#!/bin/sh

kill `ps -e | grep mpd | grep -v grep | grep -v snmpd`

exit 0
