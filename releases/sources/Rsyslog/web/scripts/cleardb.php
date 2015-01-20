<?php 

$db = mysql_connect('localhost','rsyslog','yBhAUdqCtSRUdegl');
mysql_select_db('Syslog', $db);
$result = mysql_query("truncate table SystemEvents",$db);

?>
