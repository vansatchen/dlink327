#!/bin/sh

#remove links
[ -f `which ifstat` ] && rm -f `which ifstat`
[ -f `which tcpdump` ] && rm -f `which tcpdump`
[ -f `which trafshow` ] && rm -f `which trafshow`
[ -f `which iperf` ] && rm -f `which iperf`
[ -f `which iperf3` ] && rm -f `which iperf3`

exit 0
