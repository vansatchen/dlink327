<?php

$relayctlindex = '/mnt/HD/HD_a2/Nas_Prog/HID-support/web/relayctl/index.html';

if($_GET["func"] == "sendscrolllockname") {
   $scrolllockdata = $_POST[scrolllockdata];
   if (empty($scrolllockdata)) { exit("<b><font color='red'>Scroll Lock name MUST BE FILLED!!!</font></b><br ><i>Example: Lamp1</i>"); }
	exec ("sed -i 's#DIROUT=.*#DIROUT=$scrolllockdata#g' $relayctlindex", $output);
	echo "<b><font color='green'>Output directory saved!</font></b><br >";
}

if($_GET["func"] == "sendcapslockname") {
   $capslockdata = $_POST[capslockdata];
   if (empty($capslockdata)) { exit("<b><font color='red'>STREAMHOST CELL MUST BE FILLED!!!</font></b><br ><i>Example: 192.168.1.52</i>"); }
	exec ("sed -i 's/VIDEOSRC=.*/VIDEOSRC=http:\/\/$capslockdata/g' $relayctlindex", $output);
	echo "<b><font color='green'>StreamHost saved!</font></b><br >";
}

if($_GET["func"] == "sendnumlockname") {
   $numlockdata = $_POST[numlockdata];
   if (empty($numlockdata)) { exit("<b><font color='red'>STREAMPORT CELL MUST BE DIGITS!!!</font></b><br ><i>Example: 7776</i>"); }
	exec ("sed -i 's/SRCPORT=.*/SRCPORT=$numlockdata/g' $relayctlindex", $output);
	echo "<b><font color='green'>StreamPort saved!</font></b><br >";
}

?>
