#!/bin/sh

path=$1

# Check that ldconfig is exists
#if ! which ldconfig >/dev/null; then
#        cp $path/sbin/ldconfig /sbin/
#fi
#/sbin/ldconfig $path/lib

#[ -f `which ifstat` ] && rm -f `which ifstat`
#[ -f `which tcpdump` ] && rm -f `which tcpdump`
#[ -f `which trafshow` ] && rm -f `which trafshow`
#[ -f `which iperf` ] && rm -f `which iperf`
#[ -f `which iperf3` ] && rm -f `which iperf3`

if [ -f /sbin/ldconfig ]; then
        /sbin/ldconfig $path/lib
else
        cp $path/sbin/ldconfig /sbin/
        /sbin/ldconfig $path/lib
fi

[ -f /bin/ifstat ] && rm -f /bin/ifstat
[ -f /bin/tcpdump ] && rm -f /bin/tcpdump
[ -f /bin/trafshow ] && rm -f /bin/trafshow
[ -f /bin/iperf ] && rm -f /bin/iperf
[ -f /bin/iperf3 ] && rm -f /bin/iperf3

exit 0
