#!/bin/sh

#remove links
rm -f /mnt/HD_a4/.@database@/Syslog
rm -f /etc/rsyslog.conf
rm -f /etc/rsyslog.d
rm -f /var/www/Rsyslog
rm -f /var/www/loganalyzer
rm -f /usr/sbin/rsyslogd

exit 0
