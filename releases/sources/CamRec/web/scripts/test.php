<?php

exec('ps -e | grep ffmpeg | grep -v grep', $outputuptime, $return);

// Return will return non-zero upon an error
if (!$return) {
    echo "Uptime run Successfully";
} else {
    echo "Uptime fails";
}

?>
