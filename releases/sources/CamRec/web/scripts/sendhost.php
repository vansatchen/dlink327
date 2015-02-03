<?php

$hostdata = $_POST[hostdata];

if (empty($hostdata)) {
        exit("<b><font color='red'>STREAMHOST CELL MUST BE FILLED!!!</font></b><br >");
}
exec ("sed -i 's/VIDEOSRC=.*/VIDEOSRC=http:\/\/$hostdata/g' ../config.conf", $output);
echo "<b><font color='green'>StreamHost saved!</font></b><br >";

?>
