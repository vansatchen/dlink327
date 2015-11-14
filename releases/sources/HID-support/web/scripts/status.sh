#!/bin/sh

#grep Name -r /proc/bus/input/devices | grep -i -E 'mouse|keyboard' | sed 's/.*=\(.*\)$/\1/g' | sed 's/\"//g'
grep -E -i 'Name|Handlers' -r /proc/bus/input/devices | sed 's/.*=\(.*\)$/\1/g; s/\"//g' | sed 'N;s/\n/ /' | sed 's#event#<b>Handlers</b>: event#g'
