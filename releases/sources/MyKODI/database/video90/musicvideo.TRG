TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_musicvideo AFTER DELETE ON musicvideo FOR EACH ROW BEGIN DELETE FROM artistlinkmusicvideo WHERE idMVideo=old.idMVideo; DELETE FROM directorlinkmusicvideo WHERE idMVideo=old.idMVideo; DELETE FROM genrelinkmusicvideo WHERE idMVideo=old.idMVideo; DELETE FROM studiolinkmusicvideo WHERE idMVideo=old.idMVideo; DELETE FROM art WHERE media_id=old.idMVideo AND media_type=\'musicvideo\'; DELETE FROM taglinks WHERE idMedia=old.idMVideo AND media_type=\'musicvideo\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
