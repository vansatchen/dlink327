#!/bin/sh

#remove links
rm -f /var/www/Bluez
rm -f /bin/hcitool
rm -f /bin/rfcomm
rm -f /bin/sdptool
rm -f /bin/hciconfig

rmmod btusb
rmmod bluetooth
rmmod rfkill

kill `ps -e | grep dbus-daemon | grep Bluez | grep -v grep | awk '{print $1}'`
rm -f /var/run/dbus/bt-pid

exit 0
