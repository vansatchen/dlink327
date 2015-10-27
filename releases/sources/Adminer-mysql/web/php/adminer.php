<?php
function adminer_object() {
  
  class AdminerSoftware extends Adminer {

	function credentials() {
      // server, username and password for connecting to database
      return array('localhost', 'root', 'XP4VddgD0zd8IbKQ');
    }
}
  
  return new AdminerSoftware;
}

include "./php/adminer-4.2.2-mysql.php";
