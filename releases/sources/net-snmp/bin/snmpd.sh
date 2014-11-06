#!/bin/sh

SNMPDHOME=/mnt/HD/HD_a2/Nas_Prog/net-snmp
LD_LIBRARY_PATH=$SNMPDHOME/lib/ $SNMPDHOME/sbin/snmpd -c $SNMPDHOME/etc/snmpd.conf

exit 0
