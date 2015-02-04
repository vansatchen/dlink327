<?php

$camrecconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/camrec.conf';
//$camrecconf = '../config.conf';
$timedata = $_POST[timedata];

if (empty($timedata)) {
        exit("<b><font color='red'>RECORDTIME CELL MUST BE SET!!!</font></b><br ><i>Example: 30</i>");
}
exec ("sed -i 's/RCRDTIME=.*/RCRDTIME=$timedata/g' $camrecconf", $output);
echo "<b><font color='green'>Record time saved!</font></b><br >";

?>
