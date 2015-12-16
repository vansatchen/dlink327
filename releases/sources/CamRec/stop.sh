#!/bin/sh

#remove links
#[ -f /bin/ffmpeg ] && rm -f /bin/ffmpeg
#[ -f /bin/camrec ] && rm -f /bin/camrec

# Stop ffmpeg
killall -9 ffmpeg
kill `ps -e | grep cronc | grep CamRec | awk '{print $1}'`

exit 0
