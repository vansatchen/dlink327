#!/bin/sh

kill `ps -e | grep mpd | grep -v grep | grep -v snmpd`
kill `ps -e | grep ympd | grep -v grep`

exit 0
