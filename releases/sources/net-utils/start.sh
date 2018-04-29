#!/bin/sh

path=$1

ln -s $path/bin/ifstat /bin/
ln -s $path/bin/tcpdump /bin/
ln -s $path/bin/trafshow /bin/
ln -s $path/etc/trafshow /etc/
ln -s $path/bin/iperf /bin/
ln -s $path/bin/iperf3 /bin/
ln -s $path/bin/nethogs /bin/
ln -s $path/bin/ngrep /bin/
ln -s $path/bin/netcat /bin/
ln -s $path/bin/netcat /bin/nc
ln -s $path/bin/fping /bin/
ln -s $path/bin/snmpwalk /bin/
ln -s $path/bin/snmpget /bin/

export MIBDIRS=$path/share/mibs
export SNMPCONFPATH=$path/etc/snmp

exit 0

