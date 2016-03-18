#!/bin/sh

NasProgPath=/mnt/HD/HD_a2/Nas_Prog

#echo "<html>"
#echo "<body>"
#echo "<table>"

cd $NasProgPath
for INSTALLEDADDON in $(ls -d */ | sed 's|/||g' | grep -v -E '_install|Extraddons'); do
	if [ -f $INSTALLEDADDON/apkg.xml ]; then
		ADDONPACKAGER=`grep "<packager>" $INSTALLEDADDON/apkg.xml | sed 's|<packager>||g;s|</packager>||g'`
		ADDONICON=`echo $INSTALLEDADDON"_on.png"`
		ADDONDESCRIPTION=`grep "<description>" $INSTALLEDADDON/apkg.xml | sed 's|<description>||g;s|</description>||g'`
		ADDONVERSION=`grep "<version>" $INSTALLEDADDON/apkg.xml | sed 's|<version>||g;s|</version>||g'`
		if [[ $ADDONPACKAGER == "rusatch" ]]; then
			echo "<tr><td><h1><b>"$INSTALLEDADDON"</b> "$ADDONVERSION"</h1></td></tr>"
			echo "<tr>"
			echo "<td><img src=/"$INSTALLEDADDON/$ADDONICON"></td><td valign=middle><b>&nbsp;"$ADDONDESCRIPTION"</b></td>"
			echo "</tr>"
			echo "<tr><td><hr></td></tr>"
 		fi
	fi 



done

#echo "</table>"
#echo "</body>"
#echo "</html>"





exit 0
