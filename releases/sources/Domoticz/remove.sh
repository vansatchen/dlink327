#!/bin/sh

path=$1

[ -d /mnt/HD_a4/.systemfile/Domoticz ] || mkdir -p /mnt/HD_a4/.systemfile/Domoticz
cp $path/domoticz/domoticz.db* /mnt/HD_a4/.systemfile/Domoticz/

rm -rf $path

exit 0
