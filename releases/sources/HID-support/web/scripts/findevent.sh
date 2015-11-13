#!/bin/sh

eventlines=`grep -E -i 'Name|Handlers' /proc/bus/input/devices | sed 's/.*=\(.*\)$/\1/g; s/\"//g' | sed 'N;s/\n/ /' | grep -i 'keyboard' | awk 'NF>1{print $NF}'`
eventline=`echo $eventlines | awk '{print $1}'`
#sed -i "s#KEYBOARDEVENT=.*#KEYBOARDEVENT=$eventline#g" /mnt/HD/HD_a2/Nas_Prog/HID-support/web/scripts/keyboardevent
echo "KEYBOARDEVENT=/dev/$eventline" > /mnt/HD/HD_a2/Nas_Prog/HID-support/web/scripts/keyboardevent

exit 0
