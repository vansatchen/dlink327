#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

[ -f /bin/ifstat ] && rm -f /bin/ifstat
[ -f /bin/tcpdump ] && rm -f /bin/tcpdump
[ -f /bin/trafshow ] && rm -f /bin/trafshow
[ -f /bin/iperf ] && rm -f /bin/iperf
[ -f /bin/iperf3 ] && rm -f /bin/iperf3
[ -f /bin/nethogs ] && rm -f /bin/nethogs
[ -f /bin/ngrep ] && rm -f /bin/ngrep

ln -s $path/web /var/www/net-utils

exit 0
