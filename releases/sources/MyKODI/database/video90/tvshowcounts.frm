TYPE=VIEW
query=select `video90`.`tvshow`.`idShow` AS `idShow`,max(`video90`.`files`.`lastPlayed`) AS `lastPlayed`,nullif(count(`video90`.`episode`.`c12`),0) AS `totalCount`,count(`video90`.`files`.`playCount`) AS `watchedcount`,nullif(count(distinct `video90`.`episode`.`c12`),0) AS `totalSeasons`,max(`video90`.`files`.`dateAdded`) AS `dateAdded` from ((`video90`.`tvshow` left join `video90`.`episode` on((`video90`.`episode`.`idShow` = `video90`.`tvshow`.`idShow`))) left join `video90`.`files` on((`video90`.`files`.`idFile` = `video90`.`episode`.`idFile`))) group by `video90`.`tvshow`.`idShow`
md5=ffc0d076a33bb236844bb99918390962
updatable=0
algorithm=0
definer_user=kodi
definer_host=%
suid=2
with_check_option=0
timestamp=2015-01-23 08:57:52
create-version=1
source=SELECT       tvshow.idShow AS idShow,      MAX(files.lastPlayed) AS lastPlayed,      NULLIF(COUNT(episode.c12), 0) AS totalCount,      COUNT(files.playCount) AS watchedcount,      NULLIF(COUNT(DISTINCT(episode.c12)), 0) AS totalSeasons,       MAX(files.dateAdded) as dateAdded     FROM tvshow      LEFT JOIN episode ON        episode.idShow=tvshow.idShow      LEFT JOIN files ON        files.idFile=episode.idFile     GROUP BY tvshow.idShow
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `video90`.`tvshow`.`idShow` AS `idShow`,max(`video90`.`files`.`lastPlayed`) AS `lastPlayed`,nullif(count(`video90`.`episode`.`c12`),0) AS `totalCount`,count(`video90`.`files`.`playCount`) AS `watchedcount`,nullif(count(distinct `video90`.`episode`.`c12`),0) AS `totalSeasons`,max(`video90`.`files`.`dateAdded`) AS `dateAdded` from ((`video90`.`tvshow` left join `video90`.`episode` on((`video90`.`episode`.`idShow` = `video90`.`tvshow`.`idShow`))) left join `video90`.`files` on((`video90`.`files`.`idFile` = `video90`.`episode`.`idFile`))) group by `video90`.`tvshow`.`idShow`
