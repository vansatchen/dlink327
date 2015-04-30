#!/bin/sh

pulseaudio -k
kill `ps -e | grep pulse | grep -v grep | awk '{print $1}'`
#pulseaudio -k

exit 0
