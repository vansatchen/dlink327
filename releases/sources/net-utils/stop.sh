#!/bin/sh

#remove links
#[ -f `which ifstat` ] && rm -f `which ifstat`
#[ -f `which tcpdump` ] && rm -f `which tcpdump`
#[ -f `which trafshow` ] && rm -f `which trafshow`
#[ -f `which iperf` ] && rm -f `which iperf`
#[ -f `which iperf3` ] && rm -f `which iperf3`
[ -f /bin/ifstat ] && rm -f /bin/ifstat
[ -f /bin/tcpdump ] && rm -f /bin/tcpdump
[ -f /bin/trafshow ] && rm -f /bin/trafshow
[ -f /bin/iperf ] && rm -f /bin/iperf
[ -f /bin/iperf3 ] && rm -f /bin/iperf3
[ -f /bin/nethogs ] && rm -f /bin/nethogs

exit 0
