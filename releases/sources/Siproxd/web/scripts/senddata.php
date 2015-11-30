<?php

$siproxdconf = '/mnt/HD/HD_a2/Nas_Prog/Siproxd/etc/siproxd.conf';

if($_GET["func"] == "sendport") {
   $portdata = $_POST[portdata];
   if (empty($portdata)) { exit("<b><font color='red'>Port CELL MUST BE FILLED!!!</font></b><br ><i>Example: 6060</i>"); }
//	exec ("sed -i 's#DIROUT=.*#DIROUT=$portdata#g' $siproxdconf", $output);
	echo "<b><font color='green'>Output directory saved!</font></b><br >";
}

if($_GET["func"] == "sendlog") {
   $logdata = $_POST[logdata];
   if (empty($logdata)) { exit("<b><font color='red'>Silence log CELL MUST BE SET!!!</font></b><br ><i>Example: 3</i>"); }
//	exec ("sed -i 's/VIDEOSRC=.*/VIDEOSRC=http:\/\/$logdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>StreamHost saved!</font></b><br >";
}

if($_GET["func"] == "sendrtp") {
   $rtpdata = $_POST[rtpdata];
   if (empty($rtpdata)) { exit("<b><font color='red'>RTP proxy enable CELL MUST BE SET!!!</font></b><br ><i>Example: 1</i>"); }
//	exec ("sed -i 's/SRCPORT=.*/SRCPORT=$rtpdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>StreamPort saved!</font></b><br >";
}

if($_GET["func"] == "sendportlow") {
   $portlowdata = $_POST[portlowdata];
   if (empty($portlowdata)) { exit("<b><font color='red'>RTP port low CELL MUST BE FILLED!!!</font></b><br ><i>7010</i>"); }
//	exec ("sed -i 's/VIDEOFPS=.*/VIDEOFPS=$portlowdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>FPS saved!</font></b><br >";
}

if($_GET["func"] == "sendporthigh") {
   $porthighdata = $_POST[porthighdata];
   if (empty($porthighdata)) { exit("<b><font color='red'>RTP port high CELL MUST BE FILLED!!!</font></b><br ><i>7090</i>"); }
//	exec ("sed -i 's/RCRDTIME=.*/RCRDTIME=$porthighdata/g' $siproxdconf", $output);
//	exec ("echo '*/$porthighdata * * * * /bin/siproxd' > $camcronconf", $output);
//	exec ("kill `ps -e | grep crond | grep Siproxd | awk '{print $1}'` && crond -f -c /mnt/HD/HD_a2/Nas_Prog/Siproxd/cron", $output);
	echo "<b><font color='green'>Record time saved!</font></b><br >";
}

if($_GET["func"] == "sendrtpto") {
   $rtptodata = $_POST[rtptodata];
   if (empty($rtptodata)) { exit("<b><font color='red'>RTP timeout CELL MUST BE FILLED!!!</font></b><br ><i>280</i>"); }
//	exec ("sed -i 's/RCRDFILTER=.*/RCRDFILTER=$rtptodata/g' $siproxdconf", $output);
	echo "<b><font color='green'>DeInterlacing filter saved!</font></b><br >";
}

if($_GET["func"] == "sendexpires") {
   $expiresdata = $_POST[expiresdata];
   if (empty($expiresdata)) { exit("<b><font color='red'>Default expires CELL MUST BE FILLED!!!</font></b><br ><i>60</i>"); }
//	exec ("sed -i 's/SAVEDATE=.*/SAVEDATE=$expiresdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>Store videos time saved!</font></b><br >";
}

?>
