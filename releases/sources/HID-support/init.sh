#!/bin/sh

path=$1

ln -s $path/web /var/www/HID-support
ln -s $path/web/scripts/ctlrelay /var/www/cgi-bin/ctlrelay.cgi

exit 0
