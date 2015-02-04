<?php

$camrecconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/camrec.conf';
//$camrecconf = '../config.conf';
$diroutdata = $_POST[diroutdata];

if (empty($diroutdata)) {
        exit("<b><font color='red'>Output directory CELL MUST BE FILLED!!!</font></b><br ><i>Example: /mnt/HD/HD_a2</i>");
}
exec ("sed -i 's#DIROUT=.*#DIROUT=$diroutdata#g' $camrecconf", $output);
echo "<b><font color='green'>Output directory saved!</font></b><br >";

?>
