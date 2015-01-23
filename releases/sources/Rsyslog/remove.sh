#!/bin/sh

path=$1
#BACKUPFOLDER="/mnt/HD_a4/.systemfile/rsyslog"

#[ -d $BACKUPFOLDER ] && rm -rf $BACKUPFOLDER
#mkdir $BACKUPFOLDER
#cp -r $path/etc $BACKUPFOLDER

rm -rf $path

exit 0
