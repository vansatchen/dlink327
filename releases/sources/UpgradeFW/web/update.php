<?php

function sendFile($path) {
    header($_SERVER["SERVER_PROTOCOL"].' 200 OK', true, 200);
    header('Content-Type: application/octet-stream', true);
    header('Content-Disposition: attachment; filename='.basename($path));
    header('Content-Length: '.filesize($path), true);
    readfile($path);
}

if (!empty($_GET["file"])&&!empty($_GET["FW_VERSION"])) {
  $file = $_GET["file"];
  $FW_VERSION_old = $_GET["FW_VERSION"];
  $FW_VERSION_new = fopen("fw_$file.txt", 'rt') or die("unable to open file");
  $version = fread ($FW_VERSION_new,4);
  if ($version > $FW_VERSION_old) {
    sendFile($file);
  }
} else {
  echo "Wrong arguments.";
}

?>
