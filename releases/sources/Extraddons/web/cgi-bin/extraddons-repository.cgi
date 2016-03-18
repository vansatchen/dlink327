#!/bin/sh

MYLINK=/mnt/HD/HD_a2/Nas_Prog/Extraddons

#wget -P $MYLINK/cache/ $REPOSITORYLINK/addons.txt
#if [ $? -ne 0 ]; then
#	echo "Sorry, repository not available at this time. Please, try later."
#	exit 1
#fi

for ADDON in $(cat $MYLINK/web/repository/addons.txt | grep "PACKAGE=" | sed 's|PACKAGE=||g'); do
	ADDONVERSION=`grep PACKAGEVERSION_$ADDON $MYLINK/web/repository/addons.txt | sed "s|PACKAGEVERSION_$ADDON=||g"`
	ADDONICON=`echo $ADDON"_on.png"`
	ADDONDESCRIPTION=`grep PACKAGEDESCRIPTION_$ADDON $MYLINK/web/repository/addons.txt | sed "s|PACKAGEDESCRIPTION_$ADDON=||g;s|\"||g"`

	echo "<tr><td><h1><b>"$ADDON $ADDONVERSION"</b></h1></td>"
	if [ -d /mnt/HD/HD_a2/Nas_Prog/$ADDON ]; then 
		echo "<td><h1 align=right><b>"Installed"</b></h1></td></tr>"
	else
		echo "<td><h1 align=right><b><button>"Install"</button></b></h1></td></tr>"
	fi

	echo "<tr>"
	echo "<td><img src="repository/$ADDONICON"></td><td valign=middle><b>&nbsp;"$ADDONDESCRIPTION"</b></td>"
	echo "</tr>"
	echo "<tr><td><hr></td><td><hr></td></tr>"
done



exit 0
