TYPE=VIEW
query=select `video90`.`seasons`.`idSeason` AS `idSeason`,`video90`.`seasons`.`idShow` AS `idShow`,`video90`.`seasons`.`season` AS `season`,`tvshowview`.`strPath` AS `strPath`,`tvshowview`.`c00` AS `showTitle`,`tvshowview`.`c01` AS `plot`,`tvshowview`.`c05` AS `premiered`,`tvshowview`.`c08` AS `genre`,`tvshowview`.`c14` AS `strStudio`,`tvshowview`.`c13` AS `mpaa`,count(distinct `episodeview`.`idEpisode`) AS `episodes`,count(`video90`.`files`.`playCount`) AS `playCount` from (((`video90`.`seasons` join `video90`.`tvshowview` on((`tvshowview`.`idShow` = `video90`.`seasons`.`idShow`))) join `video90`.`episodeview` on(((`episodeview`.`idShow` = `video90`.`seasons`.`idShow`) and (`episodeview`.`c12` = `video90`.`seasons`.`season`)))) join `video90`.`files` on((`video90`.`files`.`idFile` = `episodeview`.`idFile`))) group by `video90`.`seasons`.`idSeason`
md5=d79ce977b5de34f1879d39dd4fa1ba67
updatable=0
algorithm=0
definer_user=kodi
definer_host=%
suid=2
with_check_option=0
timestamp=2015-01-23 08:57:53
create-version=1
source=SELECT   seasons.*,   tvshowview.strPath AS strPath,  tvshowview.c00 AS showTitle,  tvshowview.c01 AS plot,  tvshowview.c05 AS premiered,  tvshowview.c08 AS genre,  tvshowview.c14 AS strStudio,  tvshowview.c13 AS mpaa,  count(DISTINCT episodeview.idEpisode) AS episodes,  count(files.playCount) AS playCount FROM seasons  JOIN tvshowview ON    tvshowview.idShow = seasons.idShow  JOIN episodeview ON    episodeview.idShow = seasons.idShow AND episodeview.c12 = seasons.season  JOIN files ON    files.idFile = episodeview.idFile GROUP BY seasons.idSeason
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `video90`.`seasons`.`idSeason` AS `idSeason`,`video90`.`seasons`.`idShow` AS `idShow`,`video90`.`seasons`.`season` AS `season`,`tvshowview`.`strPath` AS `strPath`,`tvshowview`.`c00` AS `showTitle`,`tvshowview`.`c01` AS `plot`,`tvshowview`.`c05` AS `premiered`,`tvshowview`.`c08` AS `genre`,`tvshowview`.`c14` AS `strStudio`,`tvshowview`.`c13` AS `mpaa`,count(distinct `episodeview`.`idEpisode`) AS `episodes`,count(`video90`.`files`.`playCount`) AS `playCount` from (((`video90`.`seasons` join `video90`.`tvshowview` on((`tvshowview`.`idShow` = `video90`.`seasons`.`idShow`))) join `video90`.`episodeview` on(((`episodeview`.`idShow` = `video90`.`seasons`.`idShow`) and (`episodeview`.`c12` = `video90`.`seasons`.`season`)))) join `video90`.`files` on((`video90`.`files`.`idFile` = `episodeview`.`idFile`))) group by `video90`.`seasons`.`idSeason`
