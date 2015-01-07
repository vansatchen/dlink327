#!/bin/sh

path=$1

killall syslogd
[ -f /usr/sbin/rsyslogd ] && rm -f /usr/sbin/rsyslogd
[ -f /etc/rsyslog.conf ] && rm -f /etc/rsyslog.conf
ln -s $path/sbin/rsyslogd /usr/sbin/

exit 0
