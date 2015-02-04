<?php

$camrecconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/camrec.conf';
//$camrecconf = '../config.conf';
$filterdata = $_POST[filterdata];

if (empty($filterdata)) {
        exit("<b><font color='red'>DeInterlacing filter CELL MUST BE SET!!!</font></b><br ><i>Example: Yadif</i>");
}
exec ("sed -i 's/RCRDFILTER=.*/RCRDFILTER=$filterdata/g' $camrecconf", $output);
echo "<b><font color='green'>DeInterlacing filter saved!</font></b><br >";

?>
