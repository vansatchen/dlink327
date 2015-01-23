TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_season AFTER DELETE ON seasons FOR EACH ROW BEGIN DELETE FROM art WHERE media_id=old.idSeason AND media_type=\'season\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
