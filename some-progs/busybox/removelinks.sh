#!/bin/sh

CURRENTCOMMANDPATH=`pwd`

rm -f $CURRENTCOMMANDPATH/removedlinks.txt
for newcommand in $(cat $CURRENTCOMMANDPATH/newcommands.txt)
do
#[ $(ls $newcommand) ] && rm -f $newcommand
#[ $(ls $newcommand) ] && echo $newcommand >> removedlinks.sh
#[ -f "$newcommand" ] && echo $newcommand >> removedlinks.sh
[ -f "$newcommand" ] && rm -f $newcommand && echo $newcommand >> $CURRENTCOMMANDPATH/removedlinks.txt
done

exit 0
