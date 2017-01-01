<?php

$siproxdconf = '/mnt/HD/HD_a2/Nas_Prog/Siproxd/etc/siproxd.conf';

if($_GET["func"] == "sendport") {
   $portdata = $_POST[portdata];
   if (empty($portdata)) { exit("<b><font color='red'>Port CELL MUST BE FILLED!!!</font></b><br ><i>Example: 6060</i>"); }
	exec ("sed -i 's#sip_listen_port.*#sip_listen_port = $portdata#g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>Port saved!</font></b><br >";
}

if($_GET["func"] == "sendlog") {
   $logdata = $_POST[logdata];
   if (empty($logdata)) { exit("<b><font color='red'>Silence log CELL MUST BE SET!!!</font></b><br ><i>Example: 3</i>"); }
	exec ("sed -i 's/silence_log.*/silence_log = $logdata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>Silence log saved!</font></b><br >";
}

if($_GET["func"] == "sendrtp") {
   $rtpdata = $_POST[rtpdata];
   if (empty($rtpdata)) { exit("<b><font color='red'>RTP proxy enable CELL MUST BE SET!!!</font></b><br ><i>Example: 1</i>"); }
   if ($rtpdata == 'true') { $rtpdata = '1'; } else { $rtpdata = '0'; }
	exec ("sed -i 's/rtp_proxy_enable.*/rtp_proxy_enable = $rtpdata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>RTP proxy enable saved!</font></b><br >";
}

if($_GET["func"] == "sendportlow") {
   $portlowdata = $_POST[portlowdata];
   if (empty($portlowdata)) { exit("<b><font color='red'>RTP port low CELL MUST BE FILLED!!!</font></b><br ><i>7010</i>"); }
	exec ("sed -i 's/rtp_port_low.*/rtp_port_low = $portlowdata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>RTP port low saved!</font></b><br >";
}

if($_GET["func"] == "sendporthigh") {
   $porthighdata = $_POST[porthighdata];
   if (empty($porthighdata)) { exit("<b><font color='red'>RTP port high CELL MUST BE FILLED!!!</font></b><br ><i>7090</i>"); }
	exec ("sed -i 's/rtp_port_high.*/rtp_port_high = $porthighdata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>RTP port high saved!</font></b><br >";
}

if($_GET["func"] == "sendrtpto") {
   $rtptodata = $_POST[rtptodata];
   if (empty($rtptodata)) { exit("<b><font color='red'>RTP timeout CELL MUST BE FILLED!!!</font></b><br ><i>280</i>"); }
	exec ("sed -i 's/rtp_timeout.*/rtp_timeout = $rtptodata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>RTP timeout saved!</font></b><br >";
}

if($_GET["func"] == "sendexpires") {
   $expiresdata = $_POST[expiresdata];
   if (empty($expiresdata)) { exit("<b><font color='red'>Default expires CELL MUST BE FILLED!!!</font></b><br ><i>60</i>"); }
	exec ("sed -i 's/default_expires.*/default_expires = $expiresdata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>Default expires saved!</font></b><br >";
}

if($_GET["func"] == "sendoutbound") {
   $outbounddata = $_POST[outbounddata];
   if (empty($outbounddata)) { exit("<b><font color='red'>Outbound host CELL MUST BE FILLED!!!</font></b><br ><i>192.168.1.23</i>"); }
	exec ("sed -i 's/outbound_proxy_host.*/outbound_proxy_host = $outbounddata/g' $siproxdconf && kill `cat /var/run/siproxd/siproxd.pid` && /bin/siproxd", $output);
	echo "<b><font color='green'>Outbound host saved!</font></b><br >";
}

?>
