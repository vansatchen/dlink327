#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

ln -s $path/web /var/www/Bluez

insmod $path/modules/rfkill.ko
insmod $path/modules/bluetooth.ko
insmod $path/modules/btusb.ko

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

[ -f /bin/hcitool ] && rm -f /bin/hcitool
[ -f /bin/rfcomm ] && rm -f /bin/rfcomm
[ -f /bin/sdptool ] && rm -f /bin/sdptool
[ -f /sbin/hciconfig ] && rm -f /bin/hciconfig
ln -s $path/bin/hcitool /bin/
ln -s $path/bin/rfcomm /bin/
ln -s $path/bin/sdptool /bin/
ln -s $path/sbin/hciconfig /bin/

# Start dbus as session
[ -a /var/run/dbus/bt-pid ] && rm /var/run/dbus/bt-pid
dbus-daemon --config-file=$path/etc/dbus-1/system.d/bt-session.conf

exit 0
