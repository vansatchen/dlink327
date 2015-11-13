<?php

$relayctlindex = '/mnt/HD/HD_a2/Nas_Prog/HID-support/web/relayctl/index.html';

if($_GET["func"] == "sendscrolllockname") {
   $scrolllockdata = $_POST[scrolllockdata];
   if (empty($scrolllockdata)) { exit("<b><font color='red'>Scroll Lock name MUST BE FILLED!!!</font></b><br ><i>Example: Lamp1</i>"); }
	exec ("sed -i 's#<strong class=label id=scrolllock>.*#<strong class=label id=scrolllock>$scrolllockdata</strong>#g' $relayctlindex", $output);
	echo "<b><font color='green'>Name '$scrolllockdata' for Scroll Lock assigned!</font></b><br >";
}

if($_GET["func"] == "sendcapslockname") {
   $capslockdata = $_POST[capslockdata];
   if (empty($capslockdata)) { exit("<b><font color='red'>Caps Lock name MUST BE FILLED!!!</font></b><br ><i>Example: Lamp23</i>"); }
	exec ("sed -i 's#<strong class=label id=capslock>.*#<strong class=label id=capslock>$capslockdata</strong>#g' $relayctlindex", $output);
	echo "<b><font color='green'>Name '$capslockdata' for Caps Lock assigned!</font></b><br >";
}

if($_GET["func"] == "sendnumlockname") {
   $numlockdata = $_POST[numlockdata];
   if (empty($numlockdata)) { exit("<b><font color='red'>Num Lock name MUST BE FILLED!!!</font></b><br ><i>Lamp5</i>"); }
	exec ("sed -i 's#<strong class=label id=numlock>.*#<strong class=label id=numlock>$numlockdata</strong>#g' $relayctlindex", $output);
	echo "<b><font color='green'>Name '$numlockdata' for Num Lock assigned!</font></b><br >";
}

?>
