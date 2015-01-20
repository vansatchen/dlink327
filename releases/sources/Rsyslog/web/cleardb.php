<?php 
exec("./cleardb.sh", $output);
foreach ( $output as $output ) {
  echo $output . "<br />";
}
?>
