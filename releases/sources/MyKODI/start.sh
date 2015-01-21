#!/bin/sh

path=$1
ln -s $path/database/kodi /mnt/HD_a4/.@database@/
mysqlmgr -c -u kodi -pkodipassword -n kodi

mysql -B --disable-column-names -u root -pXP4VddgD0zd8IbKQ -e "SELECT USER,host from mysql.user;" | grep kodi | grep % &> /dev/null
[ $? -eq 0 ] && exit 0 || mysql -u root -pXP4VddgD0zd8IbKQ -e "GRANT ALL PRIVILEGES ON kodi.* TO 'kodi'@'%' IDENTIFIED BY 'kodipassword' WITH GRANT OPTION;"

EGIGAIP=`ifconfig egiga0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
cat <<EOF > $path/web/advancedsettings.xml
<advancedsettings>
  <videodatabase>
    <type>mysql</type>
    <host>$EGIGAIP</host>
    <port>3306</port>
    <user>kodi</user>
    <pass>kodipassword</pass>
  </videodatabase>
  <musicdatabase>
    <type>mysql</type>
    <host>$EGIGAIP</host>
    <port>3306</port>
    <user>kodi</user>
    <pass>kodipassword</pass>
  </musicdatabase>
  <videolibrary>
    <importwatchedstate>true</importwatchedstate>
    <importresumepoint>true</importresumepoint>
  </videolibrary>
</advancedsettings>
EOF

exit 0
