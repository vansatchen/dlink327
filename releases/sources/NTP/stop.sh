#!/bin/sh

# Stop ffmpeg
#killall ntpd
kill `cat /var/run/ntpd.pid`

exit 0
