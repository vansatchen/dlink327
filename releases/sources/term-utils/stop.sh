#!/bin/sh

#remove links
[ -f `which htop` ] && rm -f `which htop`
[ -f `which ifstat` ] && rm -f `which ifstat`
[ -f `which tcpdump` ] && rm -f `which tcpdump`

exit 0
