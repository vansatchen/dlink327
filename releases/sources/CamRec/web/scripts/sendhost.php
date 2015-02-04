<?php

//$camrecconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/camrec.conf';
$camrecconf = '../config.conf';
$hostdata = $_POST[hostdata];

if (empty($hostdata)) {
        exit("<b><font color='red'>STREAMHOST CELL MUST BE FILLED!!!</font></b><br ><i>Example: 192.168.1.52</i>");
}
exec ("sed -i 's/VIDEOSRC=.*/VIDEOSRC=http:\/\/$hostdata/g' $camrecconf", $output);
echo "<b><font color='green'>StreamHost saved!</font></b><br >";

?>
