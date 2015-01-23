#!/bin/sh

for i in `mysql -u kodi -pkodipassword -NBe 'show tables' video90`
do
	mysql -u kodi -pkodipassword -e "truncate table $i" video90
done

for i in `mysql -u kodi -pkodipassword -NBe 'show tables' music48`
do
        mysql -u kodi -pkodipassword -e "truncate table $i" music48
done

exit 0
