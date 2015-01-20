#!/bin/sh
showrecords=`mysql -B --disable-column-names -u rsyslog -pyBhAUdqCtSRUdegl -n Syslog -e "select ID from SystemEvents where id=(select max(id) from SystemEvents);"`
[ -n "$showrecords" ] && echo $showrecords || echo "0"
exit 0
