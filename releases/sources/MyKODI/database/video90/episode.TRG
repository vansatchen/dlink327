TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_episode AFTER DELETE ON episode FOR EACH ROW BEGIN DELETE FROM actorlinkepisode WHERE idEpisode=old.idEpisode; DELETE FROM directorlinkepisode WHERE idEpisode=old.idEpisode; DELETE FROM writerlinkepisode WHERE idEpisode=old.idEpisode; DELETE FROM art WHERE media_id=old.idEpisode AND media_type=\'episode\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
