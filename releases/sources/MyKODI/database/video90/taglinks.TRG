TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER delete_tag AFTER DELETE ON taglinks FOR EACH ROW BEGIN DELETE FROM tag WHERE idTag=old.idTag AND idTag NOT IN (SELECT DISTINCT idTag FROM taglinks); END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
