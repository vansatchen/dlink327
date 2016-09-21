#!/bin/sh

kill `ps -e | grep bluetoothd | grep -v grep | awk '{print $1}'`

exit 0
