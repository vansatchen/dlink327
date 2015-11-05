#!/bin/sh

path=$1

BINCONS=`ls $path/bin/`

for BINA in $BINCONS; do
        [ ! -f /bin/$BINA ] && ln -s $path/bin/$BINA /bin/
done

exit 0
