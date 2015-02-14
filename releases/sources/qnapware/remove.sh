#!/bin/sh

path=$1

rm -rf $path
sed -i 's#. /Apps/opt/etc/profile##g' /home/root/.profile

exit 0
