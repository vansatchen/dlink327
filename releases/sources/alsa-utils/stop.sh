#!/bin/sh

#remove links
[ -f /bin/alsamixer ] && rm -f /bin/alsamixer
[ -f /bin/alsaucm ] && rm -f /bin/alsaucm
[ -f /bin/amidi ] && rm -f /bin/amidi
[ -f /bin/amixer ] && rm -f /bin/amixer
[ -f /bin/aplay ] && rm -f /bin/aplay
[ -f /bin/aplaymidi ] && rm -f /bin/aplaymidi
[ -f /bin/arecord ] && rm -f /bin/arecord
[ -f /bin/aserver ] && rm -f /bin/aserver
[ -f /bin/speaker-test ] && rm -f /bin/speaker-test

exit 0
