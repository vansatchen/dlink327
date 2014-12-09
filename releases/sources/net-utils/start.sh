#!/bin/sh

path=$1

#if [ -f /sbin/ldconfig ]; then
#        /sbin/ldconfig $path/lib
#else
#        cp $path/sbin/ldconfig /sbin/
#        /sbin/ldconfig $path/lib
#fi

ln -s $path/bin/ifstat /bin/
ln -s $path/bin/tcpdump /bin/
ln -s $path/bin/trafshow /bin/
ln -s $path/etc/trafshow /etc/
ln -s $path/bin/iperf /bin/
ln -s $path/bin/iperf3 /bin/
ln -s $path/bin/nethogs /bin/

exit 0

