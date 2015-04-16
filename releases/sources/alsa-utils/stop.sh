#!/bin/sh

#remove links
[ -f /bin/amixer ] && rm -f /bin/amixer
[ -f /bin/aplay ] && rm -f /bin/aplay
[ -f /bin/arecord ] && rm -f /bin/arecord
[ -f /bin/speaker-test ] && rm -f /bin/speaker-test

exit 0
