#!/bin/sh

path=$1

#ln -s $path/bin/ffmpeg /bin/
#ln -s $path/bin/camrec /bin/

#crond -f -c /mnt/HD/HD_a2/Nas_Prog/CamRec/cron
$path/bin/cronc -f -c /mnt/HD/HD_a2/Nas_Prog/CamRec/cron -L /dev/null

exit 0
