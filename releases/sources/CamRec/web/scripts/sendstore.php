<?php

//$camrecconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/camrec.conf';
$camrecconf = '../config.conf';
$storedata = $_POST[storedata];

if (empty($storedata)) {
        exit("<b><font color='red'>Store videos CELL MUST BE SET!!!</font></b><br ><i>Example: 3</i>");
}
exec ("sed -i 's/SAVEDATE=.*/SAVEDATE=$storedata/g' $camrecconf", $output);
echo "<b><font color='green'>Store videos time saved!</font></b><br >";

?>
