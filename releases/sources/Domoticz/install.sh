#!/bin/sh

path_src=$1
path_des=$2
backup_path=/mnt/HD_a4/.systemfile/Domoticz

cp -R $path_src $path_des

# Restore backups
[ -d $backup_path ] && cp $backup_path/domoticz.db* /mnt/HD/HD_a2/Nas_Prog/Domoticz/domoticz/ && rm -rf $backup_path

exit 0
