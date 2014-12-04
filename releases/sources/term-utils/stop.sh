#!/bin/sh

#remove links
#[ -f `which htop` ] && rm -f `which htop`
#[ -f `which file` ] && rm -f `which file`
[ -f /bin/htop ] && rm -f /bin/htop
[ -f /bin/file ] && rm -f /bin/file

exit 0
