#!/bin/sh

path_src=$1
path_des=$2

cp -R $path_src $path_des

[ ! -d /mnt/HD_a4/.systemfile/Domoticz ] && mkdir -p /mnt/HD_a4/.systemfile/Domoticz
[ -d /mnt/HD/HD_a2/Nas_Prog/Domoticz ] && cp /mnt/HD/HD_a2/Nas_Prog/Domoticz/domoticz/domoticz.db* /mnt/HD_a4/.systemfile/Domoticz/

exit 0
