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

cp -rf $path_src $path_des

if [ -e /mnt/HD_a4/.systemfile/.twonky/twonkyserver.ini ] ; then
    cp -f /mnt/HD_a4/.systemfile/.twonky/* /mnt/HD/HD_a2/Twonky/twonky/twonkyserver/
fi
