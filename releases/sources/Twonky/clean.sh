#!/bin/sh

DEBUG=0
if [ -e /tmp/apkg_debug ] ; then
	DEBUG=1
fi
if [ $DEBUG == 1 ] ; then
	echo "APKG_DEBUG: $0 $@" > /dev/console
fi

WEBPATH="/var/www/Twonky"

#remove var
rm -f /var/twonky

#remove web
rm -rf $WEBPATH
