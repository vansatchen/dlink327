#!/bin/sh

path=$1

# Check that ldconfig is exists
if ! which ldconfig >/dev/null; then
        cp $path/sbin/ldconfig /sbin/
fi
/sbin/ldconfig $path/lib

[ -f `which htop` ] && rm -f `which htop`
[ -f `which ifstat` ] && rm -f `which ifstat`
[ -f `which tcpdump` ] && rm -f `which tcpdump`
[ -f `which trafshow` ] && rm -f `which trafshow`
[ -f `which iperf` ] && rm -f `which iperf`
[ -f `which iperf3` ] && rm -f `which iperf3`

exit 0
