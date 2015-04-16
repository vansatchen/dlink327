#!/bin/sh

path=$1

ln -s $path/bin/amixer /bin/
ln -s $path/bin/aplay /bin/
ln -s $path/bin/arecord /bin/
ln -s $path/bin/speaker-test /bin/

exit 0
