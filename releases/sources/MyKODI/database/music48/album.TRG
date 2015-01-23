TYPE=TRIGGERS
triggers='CREATE DEFINER=`kodi`@`%` TRIGGER tgrDeleteAlbum AFTER delete ON album FOR EACH ROW BEGIN  DELETE FROM song WHERE song.idAlbum = old.idAlbum;  DELETE FROM album_artist WHERE album_artist.idAlbum = old.idAlbum;  DELETE FROM album_genre WHERE album_genre.idAlbum = old.idAlbum;  DELETE FROM albuminfosong WHERE albuminfosong.idAlbumInfo=old.idAlbum;  DELETE FROM art WHERE media_id=old.idAlbum AND media_type=\'album\'; END'
sql_modes=0
definers='kodi@%'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
