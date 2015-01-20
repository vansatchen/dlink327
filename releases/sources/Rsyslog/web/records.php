<?php 
exec("./records.sh", $output);
foreach ( $output as $output ) {
  echo "<b>Records in database: </b>" . $output . "<br />";
}
?>
