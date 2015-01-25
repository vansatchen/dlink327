#!/bin/sh

path_src=$1
path_des=$2

cp -R $path_src $path_des

BACKUPFOLDER="/mnt/HD_a4/.systemfile/.net-snmp"

[ -d $BACKUPFOLDER ] && rm -rf $path_des/net-snmp/etc
cp -r $BACKUPFOLDER/etc $path_des/net-snmp/etc

exit 0
