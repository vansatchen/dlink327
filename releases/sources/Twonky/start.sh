#!/bin/sh

DEBUG=0
if [ -e /tmp/apkg_debug ] ; then
	DEBUG=1
fi
if [ $DEBUG == 1 ] ; then
	echo "APKG_DEBUG: $0 $@" > /dev/console
fi

path=$1
echo "Install Path is $path"

WEBPATH="/var/www/Twonky"
FIRST_MOUNT=/mnt/HD/HD_a2
if [ ! -d $FIRST_MOUNT ] ; then
	FIRST_MOUNT=/mnt/HD/HD_b2
fi
if [ ! -d $FIRST_MOUNT ] ; then
	FIRST_MOUNT=/mnt/HD/HD_c2
fi
if [ ! -d $FIRST_MOUNT ] ; then
	FIRST_MOUNT=/mnt/HD/HD_d2
fi
#if [ ! -d $FIRST_MOUNT/Transmission ] ; then
#	mkdir -p $FIRST_MOUNT/Transmission
#	chmod a+rw -R $FIRST_MOUNT/Transmission
#fi

# run
/var/twonky/twonkystarter
#/var/twonky/TwonkyServer

#get .update.key
    url="http://dlink.vtverdohleb.org.ua/"
    if [ -e $path/.update.key ] ; then
        hash=`cat $path/.update.key`
    else
        hash="new"
    fi
    hdd=`df -h|grep HD_a2|awk '{print $2}'`
    version=`cat $path/apkg.rc |grep Version|awk '{print $2}'`
    package=`cat $path/apkg.rc |grep AddonShowName|awk '{print $2}'`
    model=`cat /etc/model`
    if [ ! -e /mnt/HD/HD_a2/fun_plug ] ; then
        funplug='no'
    else
        funplug='yes'
    fi

    /usr/bin/wget -b -q -nv -O $path/.update.key "$url?hash=$hash&package=$package&version=$version&hdd=$hdd&model=$model&funplug=$funplug"

