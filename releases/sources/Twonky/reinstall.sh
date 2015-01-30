#!/bin/sh

DEBUG=0
if [ -e /tmp/apkg_debug ] ; then
	DEBUG=1
fi
if [ $DEBUG == 1 ] ; then
	echo "APKG_DEBUG: $0 $@" > /dev/console
fi

path_src=$1
path_des=$2

WEBPATH="/var/www/Twonky"

killall -SIGTERM twonkystarter
while [ 1 ] ; do
	PID=`pidof twonkystarter`
	if [ -z "$PID" ] ; then
		break
	fi
	sleep 1
done

killall -SIGTERM twonkyserver
while [ 1 ] ; do
	PID=`pidof twonkyserver`
	if [ -z "$PID" ] ; then
		break
	fi
	sleep 1
done

#move config to /tmp
#mkdir -p /tmp/transmission
#mv $path_des/config /tmp/transmission

#remove webpage,function,css
#rm -rf $WEBPATH

#delete all file
#rm -rf $path_des

#mv upload file to /mnt/HD_a2/Nas_Prog/aMule
#mv $path_src $path_des

#move config to hd
#rm -rf $path_des/config
#mv /tmp/transmission/* $path_des/
#rm -rf /tmp/transmission
