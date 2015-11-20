#!/bin/sh

path_src=$1
path_des=$2

cp -R $path_src $path_des

if [ -d /mnt/HD_a4/.systemfile/.HID-support ]; then
	rm -f /mnt/HD/HD_a2/Nas_Prog/HID-support/web/relayctl/index.html && rm -f /mnt/HD/HD_a2/Nas_Prog/HID-support/web/ledstate
	cp /mnt/HD_a4/.systemfile/.HID-support/index.html /mnt/HD/HD_a2/Nas_Prog/HID-support/web/relayctl/
	cp /mnt/HD_a4/.systemfile/.HID-support/ledstate /mnt/HD/HD_a2/Nas_Prog/HID-support/web/
	rm -rf rm -rf /mnt/HD_a4/.systemfile/.HID-support
fi

exit 0
