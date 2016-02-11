#!/bin/sh

path_src=$1
path_des=$2

#cmd on reinstall
rm -rf $path_des

#copy file to installed directory
cp -R $path_src $path_des

exit 0
