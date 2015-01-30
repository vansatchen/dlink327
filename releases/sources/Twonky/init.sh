#!/bin/sh

DEBUG=0
if [ -e /tmp/apkg_debug ] ; then
	DEBUG=1
fi
if [ $DEBUG == 1 ] ; then
	echo "APKG_DEBUG: $0 $@" > /dev/console
fi

path=$1

echo "Link file from : "$path

#link program,cgi

#mkdir lib

#link twonky web
ln -sf $path/twonky /var/
rm -f /tmp/twonkyserver-log.txt
ln -sf $path/twonky/twonkyserver-log.txt /tmp/twonkyserver-log.txt

#create a folder for webpage
WEBPATH="/var/www/Twonky"
mkdir -p $WEBPATH

#webpage,function,css,js,cgi
ln -s $path/web/css/*.css $WEBPATH
ln -s $path/web/images/*.png $WEBPATH
ln -s $path/web/images/*.jpg $WEBPATH
ln -s $path/web/js/*.js $WEBPATH
ln -s $path/web/js/jQuery/*.js $WEBPATH
ln -s $path/web/js/jScrollPane/images/*.png $WEBPATH
ln -s $path/web/js/jScrollPane/scripts/*.js $WEBPATH
ln -s $path/web/js/jScrollPane/styles/*.css $WEBPATH
ln -s $path/web/js/NiftyCube/*.txt $WEBPATH
ln -s $path/web/js/NiftyCube/*.css $WEBPATH
ln -s $path/web/js/NiftyCube/*.js $WEBPATH
ln -s $path/web/js/curvycorners-2.0.4/*.js $WEBPATH
ln -s $path/web/*.html $WEBPATH
ln -s $path/web/*.php $WEBPATH
ln -s $path/gui_info.xml $WEBPATH
