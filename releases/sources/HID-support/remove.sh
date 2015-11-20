#!/bin/sh

path=$1

[ -d /mnt/HD_a4/.systemfile/.HID-support ] && rm -rf /mnt/HD_a4/.systemfile/.HID-support
mkdir -p /mnt/HD_a4/.systemfile/.HID-support
cp $path/web/relayctl/index.html /mnt/HD_a4/.systemfile/.HID-support/
cp $path/web/ledstate /mnt/HD_a4/.systemfile/.HID-support/

rm -rf $path

exit 0
