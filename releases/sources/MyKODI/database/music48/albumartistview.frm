TYPE=VIEW
query=select `music48`.`album_artist`.`idAlbum` AS `idAlbum`,`music48`.`album_artist`.`idArtist` AS `idArtist`,`music48`.`artist`.`strArtist` AS `strArtist`,`music48`.`artist`.`strMusicBrainzArtistID` AS `strMusicBrainzArtistID`,`music48`.`album_artist`.`boolFeatured` AS `boolFeatured`,`music48`.`album_artist`.`strJoinPhrase` AS `strJoinPhrase`,`music48`.`album_artist`.`iOrder` AS `iOrder` from (`music48`.`album_artist` join `music48`.`artist` on((`music48`.`album_artist`.`idArtist` = `music48`.`artist`.`idArtist`)))
md5=cc36366f1ce30df9a418563aa7487cc5
updatable=1
algorithm=0
definer_user=kodi
definer_host=%
suid=2
with_check_option=0
timestamp=2015-01-23 08:57:39
create-version=1
source=SELECT  album_artist.idAlbum AS idAlbum,   album_artist.idArtist AS idArtist,   artist.strArtist AS strArtist,   artist.strMusicBrainzArtistID AS strMusicBrainzArtistID,   album_artist.boolFeatured AS boolFeatured,   album_artist.strJoinPhrase AS strJoinPhrase,   album_artist.iOrder AS iOrder FROM album_artist JOIN artist ON      album_artist.idArtist = artist.idArtist
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `music48`.`album_artist`.`idAlbum` AS `idAlbum`,`music48`.`album_artist`.`idArtist` AS `idArtist`,`music48`.`artist`.`strArtist` AS `strArtist`,`music48`.`artist`.`strMusicBrainzArtistID` AS `strMusicBrainzArtistID`,`music48`.`album_artist`.`boolFeatured` AS `boolFeatured`,`music48`.`album_artist`.`strJoinPhrase` AS `strJoinPhrase`,`music48`.`album_artist`.`iOrder` AS `iOrder` from (`music48`.`album_artist` join `music48`.`artist` on((`music48`.`album_artist`.`idArtist` = `music48`.`artist`.`idArtist`)))
