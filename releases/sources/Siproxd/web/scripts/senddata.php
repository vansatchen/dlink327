<?php

$siproxdconf = '/mnt/HD/HD_a2/Nas_Prog/Siproxd/etc/siproxd.conf';
$camcronconf = '/mnt/HD/HD_a2/Nas_Prog/Siproxd/cron/root';
//$siproxdconf = '../config.conf';

if($_GET["func"] == "senddirout") {
   $diroutdata = $_POST[diroutdata];
   if (empty($diroutdata)) { exit("<b><font color='red'>Output directory CELL MUST BE FILLED!!!</font></b><br ><i>Example: /mnt/HD/HD_a2</i>"); }
	exec ("sed -i 's#DIROUT=.*#DIROUT=$diroutdata#g' $siproxdconf", $output);
	echo "<b><font color='green'>Output directory saved!</font></b><br >";
}

if($_GET["func"] == "sendhost") {
   $hostdata = $_POST[hostdata];
   if (empty($hostdata)) { exit("<b><font color='red'>STREAMHOST CELL MUST BE FILLED!!!</font></b><br ><i>Example: 192.168.1.52</i>"); }
	exec ("sed -i 's/VIDEOSRC=.*/VIDEOSRC=http:\/\/$hostdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>StreamHost saved!</font></b><br >";
}

if($_GET["func"] == "sendport") {
   $portdata = $_POST[portdata];
   if (empty($portdata)) { exit("<b><font color='red'>STREAMPORT CELL MUST BE DIGITS!!!</font></b><br ><i>Example: 7776</i>"); }
	exec ("sed -i 's/SRCPORT=.*/SRCPORT=$portdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>StreamPort saved!</font></b><br >";
}

if($_GET["func"] == "sendfps") {
   $fpsdata = $_POST[fpsdata];
   if (empty($fpsdata)) { exit("<b><font color='red'>FPS CELL MUST BE SET!!!</font></b><br ><i>Example: 10</i>"); }
	exec ("sed -i 's/VIDEOFPS=.*/VIDEOFPS=$fpsdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>FPS saved!</font></b><br >";
}

if($_GET["func"] == "sendtime") {
   $timedata = $_POST[timedata];
   if (empty($timedata)) { exit("<b><font color='red'>RECORDTIME CELL MUST BE SET!!!</font></b><br ><i>Example: 30</i>"); }
	exec ("sed -i 's/RCRDTIME=.*/RCRDTIME=$timedata/g' $siproxdconf", $output);
	exec ("echo '*/$timedata * * * * /bin/siproxd' > $camcronconf", $output);
	exec ("kill `ps -e | grep crond | grep Siproxd | awk '{print $1}'` && crond -f -c /mnt/HD/HD_a2/Nas_Prog/Siproxd/cron", $output);
	echo "<b><font color='green'>Record time saved!</font></b><br >";
}

if($_GET["func"] == "sendfilter") {
   $filterdata = $_POST[filterdata];
   if (empty($filterdata)) { exit("<b><font color='red'>DeInterlacing filter CELL MUST BE SET!!!</font></b><br ><i>Example: Yadif</i>"); }
	exec ("sed -i 's/RCRDFILTER=.*/RCRDFILTER=$filterdata/g' $siproxdconf", $output);
	echo "<b><font color='green'>DeInterlacing filter saved!</font></b><br >";
}

if($_GET["func"] == "sendstore") {
   $storedata = $_POST[storedata];
   if (empty($storedata)) { exit("<b><font color='red'>Store videos CELL MUST BE SET!!!</font></b><br ><i>Example: 3</i>"); }
	exec ("sed -i 's/SAVEDATE=.*/SAVEDATE=$storedata/g' $siproxdconf", $output);
	echo "<b><font color='green'>Store videos time saved!</font></b><br >";
}

?>
