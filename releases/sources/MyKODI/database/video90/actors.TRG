TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_person AFTER DELETE ON actors FOR EACH ROW BEGIN DELETE FROM art WHERE media_id=old.idActor AND media_type IN (\'actor\',\'artist\',\'writer\',\'director\'); END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
