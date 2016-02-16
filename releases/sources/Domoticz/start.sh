#!/bin/sh

path=$1

$path/domoticz/domoticz -daemon -pidfile /var/run/domoticz.pid -sslwww 8443 -sslcert /etc/certificate_https_all.pem

exit 0
