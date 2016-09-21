<?php 

$bluezconf = '/mnt/HD/HD_a2/Nas_Prog/CamRec/etc/bluez.conf';

exec("grep 'DIROUT\|VIDEOSRC\|SRCPORT\|VIDEOFPS\|RCRDTIME\|RCRDFILTER\|SAVEDATE' $bluezconf | sed -e 's/.*=//g' | sed -e 's#http://##g'", $output);
$outputs = implode(" ", $output);
$status_array=explode(" ", $outputs);

//echo '<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="95%">';
//echo "<tr>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[5]</i></td>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[0]</i></td>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[1]</i></td>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[2]</i></td>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[4]</i></td>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[3]</i></td>";
	echo "<td align='center' style='width: 14.3%; background: #E1EFFB;'><i>$status_array[6]</i></td>";
//echo "</tr>";
//echo "</table>";

//echo "<ul>";
//echo "<li><b>Output directory:</b>   $status_array[5] <br />";
//echo "<li><b>Host:</b>   $status_array[0] <br />";
//echo "<li><b>Port:</b>   $status_array[1] <br />";
//echo "<li><b>FPS:</b>   $status_array[2] <br />";
//echo "<li><b>Record time:</b>   $status_array[4] <br />";
//echo "<li><b>DeInterlacing filter:</b>   $status_array[3] <br />";
//echo "<li><b>Store videos:</b>   $status_array[6] <br />";
//echo "</ul>";
//echo "<br />";

?>
