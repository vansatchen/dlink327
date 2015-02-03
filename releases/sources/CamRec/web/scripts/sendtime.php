<?php

$timedata = $_POST[timedata];

if (empty($timedata)) {
        exit("<b><font color='red'>RECORDTIME CELL MUST BE FILLED!!!</font></b><br >");
}
exec ("sed -i 's/RCRDTIME=.*/RCRDTIME=$timedata/g' ../config.conf", $output);
echo "<b><font color='green'>Record time saved!</font></b><br >";

?>
