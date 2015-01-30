#!/bin/sh

DEBUG=0
if [ -e /tmp/apkg_debug ] ; then
	DEBUG=1
fi
if [ $DEBUG == 1 ] ; then
	echo "APKG_DEBUG: $0 $@" > /dev/console
fi

path=$1

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

#backup .ini
if [ ! -d /mnt/HD_a4/.systemfile/.twonky ] ; then
    mkdir -p /mnt/HD_a4/.systemfile/.twonky
fi
cp -f /mnt/HD/HD_a2/Nas_Prog/Twonky/twonky/twonkyserver/twonkyserver.ini /mnt/HD_a4/.systemfile/.twonky/

echo "Remove $path"
rm -rf $path

WEBPATH="/var/www/Twonky"

#remove web
rm -rf $WEBPATH

#remove .transmission-daemon
rm -f /var/twonky
rm -f /tmp/twonkyserver-log.txt
