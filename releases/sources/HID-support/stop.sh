#!/bin/sh

#remove modules
rmmod usbhid.ko
rmmod hid.ko
rmmod evdev.ko
rmmod input_core.ko

exit 0
