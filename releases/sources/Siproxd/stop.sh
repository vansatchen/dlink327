#!/bin/sh

# Stop ffmpeg
#killall siproxd
kill `cat /var/run/siproxd/siproxd.pid`

exit 0
