#!/bin/sh

path=$1
ln -s $path/database/video* /mnt/HD_a4/.@database@/
ln -s $path/database/music* /mnt/HD_a4/.@database@/
mysqlmgr -c -u kodi -pkodipassword -n music48
mysqlmgr -c -u kodi -pkodipassword -n video90

#mysql -B --disable-column-names -u root -pXP4VddgD0zd8IbKQ -e "SELECT USER,host from mysql.user;" | grep kodi | grep % &> /dev/null
#if [ $? -eq 0 ]
#then
	mysql -u root -pXP4VddgD0zd8IbKQ -e "GRANT ALL PRIVILEGES ON music48.* TO 'kodi'@'%' IDENTIFIED BY 'kodipassword' WITH GRANT OPTION;"
	mysql -u root -pXP4VddgD0zd8IbKQ -e "GRANT ALL PRIVILEGES ON video90.* TO 'kodi'@'%' IDENTIFIED BY 'kodipassword' WITH GRANT OPTION;"
#fi

EGIGAIP=`ifconfig egiga0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
cat <<EOF > $path/web/advancedsettings.xml
<advancedsettings>
  <videodatabase>
    <type>mysql</type>
    <host>$EGIGAIP</host>
    <port>3306</port>
    <user>kodi</user>
    <pass>kodipassword</pass>
    <name>video</name>
  </videodatabase>
  <musicdatabase>
    <type>mysql</type>
    <host>$EGIGAIP</host>
    <port>3306</port>
    <user>kodi</user>
    <pass>kodipassword</pass>
    <name>music</name>
  </musicdatabase>
  <videolibrary>
    <importwatchedstate>true</importwatchedstate>
    <importresumepoint>true</importresumepoint>
  </videolibrary>
</advancedsettings>
EOF

exit 0
