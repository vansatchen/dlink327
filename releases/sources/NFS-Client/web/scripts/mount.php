<?php

if($_GET["func"] == "sendmountto") {
   $nfsserverdata = $_POST[nfsserverdata];
   $nfssharedata = $_POST[nfssharedata];
   $mounttodata = $_POST[mounttodata];
   if (empty($nfsserverdata)) { exit("<b><font color='red'>NFS-server CELL MUST BE FILLED!!!</font></b>"); }
   if (empty($nfssharedata)) { exit("<b><font color='red'>Share CELL MUST BE FILLED!!!</font></b>"); }
   if (empty($mounttodata)) { exit("<b><font color='red'>Mount to CELL MUST BE FILLED!!!</font></b>"); }
   if (is_writable($mounttodata)) { } else { exit("<b><font color='red'>Directory does not exist!!!</font></b>"); }

   exec("/bin/mount | grep $mounttodata | grep -v nfsd", $output, $return);
   if (!$return) { exit("<b><i>$mounttodata </i><font color='red'>already in use!!!</font></b>"); }

   exec ("/sbin/mount.nfs $nfsserverdata:$nfssharedata $mounttodata", $output);
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
