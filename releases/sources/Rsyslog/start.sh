#!/bin/sh

path=$1

if ps aux | grep -v grep | grep syslogd > /dev/null; then
   killall syslogd
fi

/usr/sbin/rsyslogd

exit 0
