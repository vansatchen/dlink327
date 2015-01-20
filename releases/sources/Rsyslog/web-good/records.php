<?php 
exec("./records.sh", $output);
foreach ( $output as $output ) {
  echo $output . "<br />";
}
?>
