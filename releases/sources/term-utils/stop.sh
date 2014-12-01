#!/bin/sh

#remove links
[ -f `which htop` ] && rm -f `which htop`
[ -f `which ifstat` ] && rm -f `which ifstat`

exit 0
