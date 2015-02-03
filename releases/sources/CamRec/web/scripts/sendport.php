<?php

$portdata = $_POST[portdata];

if (empty($portdata)) {
        exit("<b><font color='red'>STREAMPORT CELL MUST BE DIGITS!!!</font></b><br ><i>Example: 7776</i>");
}
exec ("sed -i 's/SRCPORT=.*/SRCPORT=$portdata/g' ../config.conf", $output);
echo "<b><font color='green'>StreamPort saved!</font></b><br >";

?>
