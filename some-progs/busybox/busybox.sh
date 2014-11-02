#!/bin/sh

CURRENTCOMMANDPATH=`pwd`

rm -f $CURRENTCOMMANDPATH/newcommands.txt
for name in $($CURRENTCOMMANDPATH/bin/busybox --list)
do
#  [ $(which $name) ] || ln -s $CURRENTCOMMANDPATH/bin/busybox /bin/
#[ $(which $name) ] || ln -s $CURRENTCOMMANDPATH/bin/busybox /bin/$name && echo "/bin/$name" >> $CURRENTCOMMANDPATH/newcommands.txt
   if [ ! $(which $name) ]; then 
      ln -s $CURRENTCOMMANDPATH/bin/busybox /bin/$name
      echo "/bin/$name" >> $CURRENTCOMMANDPATH/newcommands.txt
   fi
done

exit 0
