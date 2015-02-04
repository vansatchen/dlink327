<?php

//$camrecconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/camrec.conf';
$camrecconf = '../config.conf';
$fpsdata = $_POST[fpsdata];

if (empty($fpsdata)) {
        exit("<b><font color='red'>FPS CELL MUST BE SET!!!</font></b><br ><i>Example: 10</i>");
}
exec ("sed -i 's/VIDEOFPS=.*/VIDEOFPS=$fpsdata/g' $camrecconf", $output);
echo "<b><font color='green'>FPS saved!</font></b><br >";

?>
