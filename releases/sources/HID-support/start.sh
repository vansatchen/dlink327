#!/bin/sh

path=$1

insmod $path/modules/input-core.ko
insmod $path/modules/evdev.ko
insmod $path/modules/hid.ko
insmod $path/modules/usbhid.ko

sleep 3
sh $path/web/scripts/findevent.sh

exit 0
