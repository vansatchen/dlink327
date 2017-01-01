<?php 

$siproxdconf = '/mnt/HD/HD_a2/Nas_Prog/Siproxd/etc/siproxd.conf';

exec("grep 'sip_listen_port\|silence_log\|rtp_proxy_enable\|rtp_port_low\|rtp_port_high\|rtp_timeout\|default_expires\|outbound_proxy_host' $siproxdconf | sed -e 's/.*=//g; s/ //g'", $output);
$outputs = implode(" ", $output);
$status_array=explode(" ", $outputs);

echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[0]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[1]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[2]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[3]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[4]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[5]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[6]</i></td>";
echo "<td align='center' style='width: 12.5%; background: #E1EFFB;'><i>$status_array[7]</i></td>";

?>
