#!/bin/sh

kill `ps -e | grep pulse | grep -v grep | awk '{print $1}'`

exit 0
