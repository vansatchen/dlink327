#!/bin/sh

DEBUG=0
if [ -e /tmp/apkg_debug ] ; then
	DEBUG=1
fi
if [ $DEBUG == 1 ] ; then
	echo "APKG_DEBUG: $0 $@" > /dev/console
fi

killall -SIGTERM twonkystarter
while [ 1 ] ; do
	PID=`pidof twonkystarter`
	if [ -z "$PID" ] ; then
		break
	fi
	sleep 1
done

killall -SIGTERM TwonkyServer
while [ 1 ] ; do
        PID=`pidof TwonkyServer`
        if [ -z "$PID" ] ; then
                break
        fi
        sleep 1
done
