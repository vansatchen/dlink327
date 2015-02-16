<?php

if($_GET["func"] == "sendmountto") {
   $nfsserverdata = $_POST[nfsserverdata];
   $nfssharedata = $_POST[nfssharedata];
   $mounttodata = $_POST[mounttodata];
   if (empty($nfsserverdata)) { exit("<b><font color='red'>NFS-server CELL MUST BE FILLED!!!</font></b>"); }
   if (empty($nfssharedata)) { exit("<b><font color='red'>Share CELL MUST BE FILLED!!!</font></b>"); }
   if (empty($mounttodata)) { exit("<b><font color='red'>Mount to CELL MUST BE FILLED!!!</font></b>"); }
//	exec ("sed -i 's#DIROUT=.*#DIROUT=$diroutdata#g' $camrecconf", $output);
//	echo "<b><font color='green'>Output directory saved!</font></b><br >";
	echo "$nfsserverdata $nfssharedata $mounttodata";
}

if($_GET["func"] == "sendshowmount") {
   $showmountdata = $_POST[showmountdata];
	exec("/bin/showmount -e $showmountdata", $output);
	echo "<br />";
	foreach ( $output as $output ) {
	  echo $output . "<br />";
	}
}

?>
