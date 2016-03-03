#!/bin/sh

kill `ps -e | grep cmus | grep -v grep`

exit 0
