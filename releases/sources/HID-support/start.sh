#!/bin/sh

path=$1

insmod $path/modules/input-core.ko
insmod $path/modules/evdev.ko
insmod $path/modules/hid.ko
insmod $path/modules/usbhid.ko

exit 0
