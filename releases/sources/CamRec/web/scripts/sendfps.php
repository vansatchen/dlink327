<?php

$fpsdata = $_POST[fpsdata];

if (empty($fpsdata)) {
        exit("<b><font color='red'>FPS CELL MUST BE DIGITS!!!</font></b><br ><i>Example: 10</i>");
}
exec ("sed -i 's/VIDEOFPS=.*/VIDEOFPS=$fpsdata/g' ../config.conf", $output);
echo "<b><font color='green'>FPS saved!</font></b><br >";

?>
