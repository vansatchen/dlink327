#!/bin/sh

path=$1

[ -f /bin/net-snmpd ] && rm -f /bin/net-snmpd

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

ln -s $path/sbin/net-snmpd /bin/

ln -s $path/web /var/www/net-snmp

exit 0
