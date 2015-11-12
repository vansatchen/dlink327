<?php 

exec('ls /dev/event*', $outputuptime, $return);

if (!$return) {
    echo "<b><font color='green'>HID-device founded!</font></b>";
} else {
    echo "<b><font color='red'>HID-device not founded!!!</font></b>";
}

//exec("grep Product -r /proc/bus/usb/devices | grep -i -E 'mouse|keyboard' | sed 's/S:  Product=//g'", $output);
//exec("grep Name -r /proc/bus/input/devices | grep -i -E 'mouse|keyboard' | sed 's/N: Name=//g' | sed 's/\"//g'", $output);
exec("./status.sh", $output);
//exec("grep -i -E 'Product|Manufacturer' -r /proc/bus/usb/devices | sed -r 's/^[^=]+//g' | sed 's/=//g' | sed -r 'N;s/\n/ /'", $output);
//exec("grep -i -E 'Product|Manufacturer' -r /proc/bus/usb/devices | sed 's/.*=\(.*\)$/\1/g' | sed 'N;s/\n/ /' | grep -E -i 'mouse|keyboard'", $output);
//exec("grep -i -E 'Product|Manufacturer' -r /proc/bus/usb/devices | sed 'N;s/\n//g'", $output);
foreach ( $output as $output ) {
    echo "<ul>";
    echo "<li><b>Device:</b>   $output <br />";
    echo "</ul>";
//echo $output;
}

?>
