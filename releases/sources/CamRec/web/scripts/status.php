<?php 

exec("ps -e | grep ffmpeg | grep -v grep | awk '{print $11,$9,$13,$19,$20}'| sed -e 's#/mnt/HD/HD_b2/smb/cam/##'", $output);
foreach ( $output as $output ) {
    echo "<b>Status:</b>";
    $status_array=explode(" ", $output);
    echo "<ul>";
    echo "<li><b>Host:</b>   $status_array[0] <br />";
    echo "<li><b>FPS:</b>   $status_array[1] <br />";
    echo "<li><b>Codec:</b>   $status_array[2] <br />";
    echo "<li><b>Record time:</b>   $status_array[3] <br />";
    echo "<li><b>File:</b>   $status_array[4] <br />";
    echo "</ul>";
    echo "<br />";
}




?>
