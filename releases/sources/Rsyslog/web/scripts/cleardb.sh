#!/bin/sh
mysql -u rsyslog -pyBhAUdqCtSRUdegl -e "truncate table SystemEvents" Syslog
exit 0
