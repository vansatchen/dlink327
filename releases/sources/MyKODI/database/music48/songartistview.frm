TYPE=VIEW
query=select `music48`.`song_artist`.`idSong` AS `idSong`,`music48`.`song_artist`.`idArtist` AS `idArtist`,`music48`.`artist`.`strArtist` AS `strArtist`,`music48`.`artist`.`strMusicBrainzArtistID` AS `strMusicBrainzArtistID`,`music48`.`song_artist`.`boolFeatured` AS `boolFeatured`,`music48`.`song_artist`.`strJoinPhrase` AS `strJoinPhrase`,`music48`.`song_artist`.`iOrder` AS `iOrder` from (`music48`.`song_artist` join `music48`.`artist` on((`music48`.`song_artist`.`idArtist` = `music48`.`artist`.`idArtist`)))
md5=593b9e3859cc6f14e8e75ffc439f1ba1
updatable=1
algorithm=0
definer_user=kodi
definer_host=%
suid=2
with_check_option=0
timestamp=2015-01-23 08:57:39
create-version=1
source=SELECT  song_artist.idSong AS idSong,   song_artist.idArtist AS idArtist,   artist.strArtist AS strArtist,   artist.strMusicBrainzArtistID AS strMusicBrainzArtistID,   song_artist.boolFeatured AS boolFeatured,   song_artist.strJoinPhrase AS strJoinPhrase,   song_artist.iOrder AS iOrder FROM song_artist JOIN artist ON      song_artist.idArtist = artist.idArtist
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `music48`.`song_artist`.`idSong` AS `idSong`,`music48`.`song_artist`.`idArtist` AS `idArtist`,`music48`.`artist`.`strArtist` AS `strArtist`,`music48`.`artist`.`strMusicBrainzArtistID` AS `strMusicBrainzArtistID`,`music48`.`song_artist`.`boolFeatured` AS `boolFeatured`,`music48`.`song_artist`.`strJoinPhrase` AS `strJoinPhrase`,`music48`.`song_artist`.`iOrder` AS `iOrder` from (`music48`.`song_artist` join `music48`.`artist` on((`music48`.`song_artist`.`idArtist` = `music48`.`artist`.`idArtist`)))
