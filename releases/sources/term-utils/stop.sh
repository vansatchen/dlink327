#!/bin/sh

#remove links
[ -f `which htop` ] && rm -f `which htop`
[ -f `which file` ] && rm -f `which file`

exit 0
