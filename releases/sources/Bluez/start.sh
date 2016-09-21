#!/bin/sh

path=$1

DBUS_SYSTEM_BUS_ADDRESS="unix:path=/var/run/dbus/bt_bus_socket" $path/sbin/bluetoothd

exit 0
