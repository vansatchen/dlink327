#!/bin/sh

#remove links
#[ -f /bin/ffmpeg ] && rm -f /bin/ffmpeg
#[ -f /bin/camrec ] && rm -f /bin/camrec

kill `ps -e | grep cronm | grep MEGAsync | awk '{print $1}'`

exit 0
