#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
	if [ ! -f /lib/$LIBA ]; then
		rm -f /lib/$LIBA
		ln -s $path/lib/$LIBA /lib/
	fi
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

[ -f /bin/mpd ] && rm -f /bin/mpd || ln -s $path/bin/mpd /bin/
[ -f /etc/mpd.conf ] && rm -f /etc/mpd.conf || ln -s $path/etc/mpd.conf /etc/
[ -f /bin/mpc ] && rm -f /bin/mpc || ln -s $path/bin/mpc /bin/
[ -f /bin/ncmpc ] && rm -f /bin/ncmpc || ln -s $path/bin/ncmpc /bin/
[ -f /bin/ympd ] && rm -f /bin/ympd || ln -s $path/bin/ympd /bin/

[ -f /var/www/MPD ] && rm -f /var/www/MPD || ln -s $path/web /var/www/MPD

#create Library Dir
if [ ! -d /mnt/HD/HD_a2/MPD_library ] ; then
    mkdir -p /mnt/HD/HD_a2/MPD_library/Music
    mkdir -p /mnt/HD/HD_a2/MPD_library/Playlists
    chown -R nobody:allaccount /mnt/HD/HD_a2/MPD_library
    chmod -R 777 /mnt/HD/HD_a2/MPD_library
fi

exit 0
