#!/bin/sh

#remove links
rm -f /var/www/Domoticz
[ -f /bin/lua ] || rm -f /bin/lua

exit 0
