<?php

$db = mysql_connect('localhost','rsyslog','yBhAUdqCtSRUdegl');
mysql_select_db('Syslog', $db);
$result = mysql_query("SELECT ID FROM SystemEvents where id=(select max(id) from SystemEvents)",$db);
$myrow = mysql_fetch_array($result);
echo $myrow['ID'];

?>
