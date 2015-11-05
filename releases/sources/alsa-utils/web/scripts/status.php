<?php 

exec('ps -e | grep pulseaudio | grep -v grep', $outputuptime, $return);

if (!$return) {
    echo "<b><font color='green'>Running!</font></b>";
} else {
    echo "<b><font color='red'>NOT WORKING!!!</font></b>";
}

exec("pactl list sinks | grep -e Description -e Specification -e Channel", $output);
echo "<br />";
echo "<br />";
foreach ( $output as $output ) {
echo $output;
echo "<br />";
echo "<br />";
}

?>
