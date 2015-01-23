TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_set AFTER DELETE ON sets FOR EACH ROW BEGIN DELETE FROM art WHERE media_id=old.idSet AND media_type=\'set\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
