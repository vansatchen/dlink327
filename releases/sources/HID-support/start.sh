#!/bin/sh

path=$1

insmod $path/modules/input-core.ko
insmod $path/modules/evdev.ko
insmod $path/modules/hid.ko
insmod $path/modules/usbhid.ko

sleep 3
sh $path/web/scripts/findevent.sh

ledstatefile=`cat $path/web/ledstate | sed 's/{//g;s/}//g;s/"//g'`

for i in 1 2 3; do
        buttonstate=`echo $ledstatefile | cut -d ',' -f $i | sed 's/:/_/g;s/true/on/g;s/false/off/g'`
        /usr/bin/curl http://127.0.0.1/cgi-bin/ctlrelay.cgi?command=$buttonstate
done

exit 0
