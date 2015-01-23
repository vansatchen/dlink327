TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_tvshow AFTER DELETE ON tvshow FOR EACH ROW BEGIN DELETE FROM actorlinktvshow WHERE idShow=old.idShow; DELETE FROM directorlinktvshow WHERE idShow=old.idShow; DELETE FROM tvshowlinkpath WHERE idShow=old.idShow; DELETE FROM genrelinktvshow WHERE idShow=old.idShow; DELETE FROM movielinktvshow WHERE idShow=old.idShow; DELETE FROM seasons WHERE idShow=old.idShow; DELETE FROM art WHERE media_id=old.idShow AND media_type=\'tvshow\'; DELETE FROM taglinks WHERE idMedia=old.idShow AND media_type=\'tvshow\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
