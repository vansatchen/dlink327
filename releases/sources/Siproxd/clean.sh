#!/bin/sh

#remove links
rm -rf /var/run/siproxd
rm -f /etc/siproxd.conf
rm -f /bin/siproxd
rm -f /lib/libltdl.so.7
rm -f /lib/libosip2.so.7
rm -f /lib/libosipparser2.so.7

exit 0
