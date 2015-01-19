#!/bin/sh

if ps aux | grep -v grep | grep rsyslogd > /dev/null; then
   killall rsyslogd
fi

/usr/sbin/syslogd -r -m 0 --rt_line 800

exit 0
