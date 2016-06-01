#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

[ -f /bin/megacopy ] && rm -f /bin/megacopy
ln -s $path/bin/megacopy /bin/
ln -s $path/web /var/www/MEGAsync

if [ ! -d /mnt/HD/HD_a2/MEGAsync ] ; then
	mkdir -p /mnt/HD/HD_a2/MEGAsync
	chown -R nobody:allaccount /mnt/HD/HD_a2/MEGAsync
	chmod -R 777 /mnt/HD/HD_a2/MEGAsync
fi

exit 0
