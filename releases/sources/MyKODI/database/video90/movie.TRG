TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_movie AFTER DELETE ON movie FOR EACH ROW BEGIN DELETE FROM genrelinkmovie WHERE idMovie=old.idMovie; DELETE FROM actorlinkmovie WHERE idMovie=old.idMovie; DELETE FROM directorlinkmovie WHERE idMovie=old.idMovie; DELETE FROM studiolinkmovie WHERE idMovie=old.idMovie; DELETE FROM countrylinkmovie WHERE idMovie=old.idMovie; DELETE FROM writerlinkmovie WHERE idMovie=old.idMovie; DELETE FROM movielinktvshow WHERE idMovie=old.idMovie; DELETE FROM art WHERE media_id=old.idMovie AND media_type=\'movie\'; DELETE FROM taglinks WHERE idMedia=old.idMovie AND media_type=\'movie\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
