<?
header("Cache-Control: public");
header("Content-Description: File Transfer");
header("Content-Disposition: attachment; filename= advancedsettings.xml");
header("Content-Transfer-Encoding: binary");    
readfile("advancedsettings.xml");
?>
