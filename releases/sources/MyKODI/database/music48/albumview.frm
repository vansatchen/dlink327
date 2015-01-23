TYPE=VIEW
query=select `music48`.`album`.`idAlbum` AS `idAlbum`,`music48`.`album`.`strAlbum` AS `strAlbum`,`music48`.`album`.`strMusicBrainzAlbumID` AS `strMusicBrainzAlbumID`,`music48`.`album`.`strArtists` AS `strArtists`,`music48`.`album`.`strGenres` AS `strGenres`,`music48`.`album`.`iYear` AS `iYear`,`music48`.`album`.`strMoods` AS `strMoods`,`music48`.`album`.`strStyles` AS `strStyles`,`music48`.`album`.`strThemes` AS `strThemes`,`music48`.`album`.`strReview` AS `strReview`,`music48`.`album`.`strLabel` AS `strLabel`,`music48`.`album`.`strType` AS `strType`,`music48`.`album`.`strImage` AS `strImage`,`music48`.`album`.`iRating` AS `iRating`,`music48`.`album`.`bCompilation` AS `bCompilation`,min(`music48`.`song`.`iTimesPlayed`) AS `iTimesPlayed` from (`music48`.`album` left join `music48`.`song` on((`music48`.`album`.`idAlbum` = `music48`.`song`.`idAlbum`))) group by `music48`.`album`.`idAlbum`
md5=340548961070035e281e8db851626dae
updatable=0
algorithm=0
definer_user=kodi
definer_host=%
suid=2
with_check_option=0
timestamp=2015-01-23 08:57:39
create-version=1
source=SELECT         album.idAlbum AS idAlbum,         strAlbum,         strMusicBrainzAlbumID,         album.strArtists AS strArtists,         album.strGenres AS strGenres,         album.iYear AS iYear,         album.strMoods AS strMoods,         album.strStyles AS strStyles,         strThemes,         strReview,         strLabel,         strType,         album.strImage as strImage,         iRating,         bCompilation,         MIN(song.iTimesPlayed) AS iTimesPlayed FROM album LEFT OUTER JOIN song ON   album.idAlbum=song.idAlbum GROUP BY album.idAlbum
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `music48`.`album`.`idAlbum` AS `idAlbum`,`music48`.`album`.`strAlbum` AS `strAlbum`,`music48`.`album`.`strMusicBrainzAlbumID` AS `strMusicBrainzAlbumID`,`music48`.`album`.`strArtists` AS `strArtists`,`music48`.`album`.`strGenres` AS `strGenres`,`music48`.`album`.`iYear` AS `iYear`,`music48`.`album`.`strMoods` AS `strMoods`,`music48`.`album`.`strStyles` AS `strStyles`,`music48`.`album`.`strThemes` AS `strThemes`,`music48`.`album`.`strReview` AS `strReview`,`music48`.`album`.`strLabel` AS `strLabel`,`music48`.`album`.`strType` AS `strType`,`music48`.`album`.`strImage` AS `strImage`,`music48`.`album`.`iRating` AS `iRating`,`music48`.`album`.`bCompilation` AS `bCompilation`,min(`music48`.`song`.`iTimesPlayed`) AS `iTimesPlayed` from (`music48`.`album` left join `music48`.`song` on((`music48`.`album`.`idAlbum` = `music48`.`song`.`idAlbum`))) group by `music48`.`album`.`idAlbum`
