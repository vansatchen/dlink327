<?php

exec("/bin/mount | grep nfs | grep -v nfsd | awk '{print $1,$3}'", $nfsmountsoutput);

foreach ( $nfsmountsoutput as $nfsmountsoutput ) {
	$status_array=explode(" ", $nfsmountsoutput);
	$status_array_n=explode(":", $status_array[0]);
		echo "<tr>";
//		echo "<script type='text/javascript' src='js/config.js'></script>";
		echo "<td align='center' style='width: 25%; background: #E1EFFB; height: 22px;'><i>$status_array_n[0]</i></td>";
		echo "<td align='center' style='width: 25%; background: #E1EFFB; height: 22px;'><i>$status_array_n[1]</i></td>";
		echo "<td align='center' style='width: 25%; background: #E1EFFB; height: 22px;'><i>$status_array[1]</i></td>";
		echo "<td align='center' style='width: 25%; background: #E1EFFB; height: 22px;'><input type='button' id='$shareforumount' onclick='umountnfsshare();' value='Umount' /></td>";
		echo "</tr>";
}

?>
