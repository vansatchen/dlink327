#!/bin/sh

mysql -B --disable-column-names -u root -pXP4VddgD0zd8IbKQ -e "SELECT USER,host from mysql.user;" | grep kodi | grep % &> /dev/null
[ $? -eq 0 ] && exit 0 || mysql -u root -pXP4VddgD0zd8IbKQ -e "GRANT ALL PRIVILEGES ON kodi.* TO 'kodi'@'%' IDENTIFIED BY 'kodipassword' WITH GRANT OPTION;"

exit 0
