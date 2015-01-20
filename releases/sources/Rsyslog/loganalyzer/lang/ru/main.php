<?php
/*
	*********************************************************************
	* LogAnalyzer - http://loganalyzer.adiscon.com
	* -----------------------------------------------------------------
	*
	* Copyright (C) 2008-2010 Adiscon GmbH.
	*
	* This file is part of LogAnalyzer.
	*
	* LogAnalyzer is free software: you can redistribute it and/or modify
	* it under the terms of the GNU General Public License as published by
	* the Free Software Foundation, either version 3 of the License, or
	* (at your option) any later version.
	*
	* LogAnalyzer is distributed in the hope that it will be useful,
	* but WITHOUT ANY WARRANTY; without even the implied warranty of
	* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	* GNU General Public License for more details.
	*
	* You should have received a copy of the GNU General Public License
	* along with LogAnalyzer. If not, see <http://www.gnu.org/licenses/>.
	*
	* A copy of the GPL can be found in the file "COPYING" in this
	* distribution.
	*********************************************************************
*/
global $content;

// Global Stuff
$content['LN_MAINTITLE'] = "LogAnalyzer: главная";
$content['LN_MAIN_SELECTSTYLE'] = "Стиль";
$content['LN_GEN_LANGUAGE'] = "Язык";
$content['LN_GEN_SELECTSOURCE'] = "Источник";
$content['LN_GEN_MOREPAGES'] = "Более одной страницы";
$content['LN_GEN_FIRSTPAGE'] = "Первая страница";
$content['LN_GEN_LASTPAGE'] = "Последняя страница";
$content['LN_GEN_NEXTPAGE'] = "Следующая страница";
$content['LN_GEN_PREVIOUSPAGE'] = "Предыдущая страница";
$content['LN_GEN_RECORDCOUNT'] = "Всего записей";
$content['LN_GEN_PAGERSIZE'] = "Записей на страницу";
$content['LN_GEN_PAGE'] = "Стр.";
$content['LN_GEN_PREDEFINEDSEARCHES'] = "Предопределённый поиск";
$content['LN_GEN_SOURCE_DISK'] = "Файл";
$content['LN_GEN_SOURCE_DB'] = "MySQL";
$content['LN_GEN_SOURCE_PDO'] = "СУБД (PDO)";
$content['LN_GEN_RECORDSPERPAGE'] = "записей/стр";
$content['LN_GEN_PRECONFIGURED'] = "Преднастроено";
$content['LN_GEN_AVAILABLESEARCHES'] = "Варианты поиска";
$content['LN_GEN_DB_MYSQL'] = "Сервер MySQL";
$content['LN_GEN_DB_MSSQL'] = "Сервер MS SQL";
$content['LN_GEN_DB_ODBC'] = "Источник ODBC";
$content['LN_GEN_DB_PGSQL'] = "PostgreSQL";
$content['LN_GEN_DB_OCI'] = "Oracle Call Interface";
$content['LN_GEN_DB_DB2'] = "IBM DB2";
$content['LN_GEN_DB_FIREBIRD'] = "Firebird/Interbase 6";
$content['LN_GEN_DB_INFORMIX'] = "IBM Informix Dynamic Server";
$content['LN_GEN_DB_SQLITE'] = "SQLite 2";
$content['LN_GEN_SELECTVIEW'] = "Выберите вид";
$content['LN_GEN_CRITERROR_UNKNOWNTYPE'] = "Тип источника '%1' ещё не поддерживается LogAnalyzer. Это критическая ошибка, пожалуйста, исправьте конфигурацию.";
$content['LN_GEN_ERRORRETURNPREV'] = "Щёлкните здесь для возврата к предыдущей странице.";
$content['LN_GEN_ERRORDETAILS'] = "Подробности ошибки:";
$content['LN_SOURCES_ERROR_WITHINSOURCE'] = "Источник '%1' при проверке выдал ошибку:<br>%2";
$content['LN_SOURCES_ERROR_EXTRAMSG'] = "Дополнительная информация об ошибке:<br>%1";
$content['LN_ERROR_NORECORDS'] = "Не найдены записи syslog";
$content['LN_ERROR_FILE_NOT_FOUND'] = "Не найден файл syslog";
$content['LN_ERROR_FILE_NOT_READABLE'] = "Не удалось прочесть файл syslog, может не хватать прав на чтение";
$content['LN_ERROR_UNKNOWN'] = "Произошла неизвестная или необработанная ошибка (код '%1')";
$content['LN_ERROR_FILE_EOF'] = "Достигнут конец файла";
$content['LN_ERROR_FILE_BOF'] = "Достигнуто начало файла";
$content['LN_ERROR_FILE_CANT_CLOSE'] = "Невозможно закрыть файл";
$content['LN_ERROR_UNDEFINED'] = "Неопределённая ошибка";
$content['LN_ERROR_EOS'] = "Достигнут конец потока";
$content['LN_ERROR_FILTER_NOT_MATCH'] = "Удовлетворяющих фильтру результатов не найдено";
$content['LN_ERROR_DB_CONNECTFAILED'] = "Сбой подключения к серверу СУБД";
$content['LN_ERROR_DB_CANNOTSELECTDB'] = "Невозможно найти сконфигурированную базу данных";
$content['LN_ERROR_DB_QUERYFAILED'] = "Не удалось выполнить запрос к СУБД";
$content['LN_ERROR_DB_NOPROPERTIES'] = "Не найдены свойства базы данных";
$content['LN_ERROR_DB_INVALIDDBMAPPING'] = "Неверное отображение полей данных";
$content['LN_ERROR_DB_INVALIDDBDRIVER'] = "Выбран неверный драйвер базы данных";
$content['LN_ERROR_DB_TABLENOTFOUND'] = "Невозможно найти указанную в конфигурации таблицу, проверьте опечатки и регистр имени";
$content['LN_ERROR_DB_DBFIELDNOTFOUND'] = "Не найдено отображение поля базы данных для как минимум одного поля.";

	$content['LN_GEN_SELECTEXPORT'] = "&gt; Формат экспорта &lt;";
	$content['LN_GEN_EXPORT_CVS'] = "CSV (через запятую)";
	$content['LN_GEN_EXPORT_XML'] = "XML";
	$content['LN_GEN_EXPORT_PDF'] = "PDF";
	$content['LN_GEN_ERROR_EXPORING'] = "Ошибка экспорта данных";
	$content['LN_GEN_ERROR_INVALIDEXPORTTYPE'] = "Выбран неверный формат экспорта либо неверны другие параметры.";
	$content['LN_GEN_ERROR_SOURCENOTFOUND'] = "Не найден источник с идентификатором '%1'.";
	$content['LN_GEN_MOREINFORMATION'] = "Подробности";
	$content['LN_FOOTER_PAGERENDERED'] = "Время создания страницы";
	$content['LN_FOOTER_DBQUERIES'] = "Запросов к БД";
	$content['LN_FOOTER_GZIPENABLED'] = "GZIP включен";
	$content['LN_FOOTER_SCRIPTTIMEOUT'] = "Таймаут скрипта";
	$content['LN_FOOTER_SECONDS'] = "сек";
	$content['LN_WARNING_LOGSTREAMTITLE'] = "Предупреждение";
	$content['LN_WARNING_LOGSTREAMDISK_TIMEOUT'] = "При чтении потока журнала таймаут php-скрипта вынудил прервать работу.<br><br>Если хотите избежать подобного, увеличьте таймаут скрипта LogAnalyzer в config.php. Если установлена система пользователей, это можно сделать в административном интерфейсе.";
	$content['LN_ERROR_FILE_NOMORETIME'] = "Не осталось времени для обработки";
	$content['LN_WARNING_DBUPGRADE'] = "Требуется обновление базы данных";
	$content['LN_WARNING_DBUPGRADE_TEXT'] = "Версия установленной базы данных: '%1'.<br>Доступно обновление версии '%2'.";
	$content['LN_ERROR_REDIRECTABORTED'] = 'Автоматическое перенаправление на <a href="%1">страницу</a> было прервано вследствие внутренней ошибки. Ознакомьтесь с подробностями выше и при необходимости поддержки обратитесь к нашему форуму.';
	$content['LN_DEBUGLEVEL'] = "Уровень отладки";
	$content['LN_DEBUGMESSAGE'] = "Отладочное сообщение";
	$content['LN_GEN_REPORT_OUTPUT_HTML'] = "HTML";
	$content['LN_GEN_REPORT_OUTPUT_PDF'] = "PDF";
	$content['LN_GEN_REPORT_TARGET_STDOUT'] = "Непосредственно";
	$content['LN_GEN_REPORT_TARGET_FILE'] = "Сохранить в файл";
	$content['LN_GEN_REPORT_TARGET_EMAIL'] = "Отослать e-mail";
$content['LN_GEN_UNKNOWN'] = "Неизвестно";

// Topmenu Entries
$content['LN_MENU_SEARCH'] = "Поиск";
$content['LN_MENU_SHOWEVENTS'] = "Показать события";
$content['LN_MENU_HELP'] = "Справка";
	$content['LN_MENU_DOC'] = "Документация";
	$content['LN_MENU_FORUM'] = "Форум поддержки";
	$content['LN_MENU_WIKI'] = "Вики по LogAnalyzer";
	$content['LN_MENU_PROSERVICES'] = "Профессиональные услуги";
$content['LN_MENU_SEARCHINKB'] = "Поиск в базе знаний";
$content['LN_MENU_LOGIN'] = "Логин";
$content['LN_MENU_ADMINCENTER'] = "Администрирование";
$content['LN_MENU_LOGOFF'] = "Выйти";
$content['LN_MENU_LOGGEDINAS'] = "Вход как";
$content['LN_MENU_MAXVIEW'] = "Полный вид";
$content['LN_MENU_NORMALVIEW'] = "Нормальный вид";
$content['LN_MENU_STATISTICS'] = "Статистика";
$content['LN_MENU_CLICKTOEXPANDMENU'] = "Щёлкните, чтобы показать меню";
	$content['LN_MENU_REPORTS'] = "Отчёты";

// Main Index Site
$content['LN_ERROR_INSTALLFILEREMINDER'] = "ПРЕДУПРЕЖДЕНИЕ: в основном каталоге LogAnalyzer до сих пор присутствует файл 'install.php'!";
$content['LN_TOP_NUM'] = "Нет.";
$content['LN_TOP_UID'] = "UID";
$content['LN_GRID_POPUPDETAILS'] = "Подробности записи с ID '%1'";

$content['LN_SEARCH_USETHISBLA'] = "Используйте форму ниже, здесь появятся результаты расширенного поиска";
$content['LN_SEARCH_FILTER'] = "Поиск (фильтр):";
$content['LN_SEARCH_ADVANCED'] = "Расширенный поиск";
$content['LN_SEARCH'] = "Поиск";
$content['LN_SEARCH_RESET'] = "Очистить";
$content['LN_SEARCH_PERFORMADVANCED'] = "Произвести расширенный поиск";
$content['LN_VIEW_MESSAGECENTERED'] = "Вернуться к нефильтрованному виду с этим сообщением наверху";
$content['LN_VIEW_RELATEDMSG'] = "Просмотреть соотносящиеся записи журнала";
$content['LN_VIEW_FILTERFOR'] = "Отфильтровать записи по ";
$content['LN_VIEW_SEARCHFOR'] = "Искать онлайн по ";
$content['LN_VIEW_SEARCHFORGOOGLE'] = "Искать в Google по ";
$content['LN_GEN_MESSAGEDETAILS'] = "Подробности сообщения";
	$content['LN_VIEW_ADDTOFILTER'] = "Добавить '%1' в фильтр";
	$content['LN_VIEW_EXCLUDEFILTER'] = "Исключить '%1' из фильтра";
	$content['LN_VIEW_FILTERFORONLY'] = "Фильтровать только по '%1'";
	$content['LN_VIEW_SHOWALLBUT'] = "Показать всё, кроме '%1'";
	$content['LN_VIEW_VISITLINK'] = "Открыть ссылку '%1' в новом окне";

$content['LN_HIGHLIGHT'] = "Подсветка >>";
$content['LN_HIGHLIGHT_OFF'] = "Подсветка <<";
$content['LN_HIGHLIGHT_WORDS'] = "Слова для подсветки, разделённые запятыми";

$content['LN_AUTORELOAD'] = "Автообновление";
$content['LN_AUTORELOAD_DISABLED'] = "Отключено";
$content['LN_AUTORELOAD_PRECONFIGURED'] = "Преднастроенное ";
$content['LN_AUTORELOAD_SECONDS'] = "сек";
$content['LN_AUTORELOAD_MINUTES'] = "мин";

// Filter Options
$content['LN_FILTER_DATE'] = "Диапазон даты/времени";
$content['LN_FILTER_DATEMODE'] = "Режим";
$content['LN_DATEMODE_ALL'] = "Всё время";
$content['LN_DATEMODE_RANGE'] = "Диапазон по времени";
$content['LN_DATEMODE_LASTX'] = "Время x от сегодня";
$content['LN_FILTER_DATEFROM'] = "Диапазон по дате от";
$content['LN_FILTER_DATETO'] = "Диапазон по дате до";
$content['LN_FILTER_TIMEFROM'] = "Диапазон по времени от";
$content['LN_FILTER_TIMETO'] = "Диапазон по времени до";
$content['LN_FILTER_DATELASTX'] = "Время с";
$content['LN_FILTER_ADD2SEARCH'] = "Добавить в поиск";
$content['LN_DATE_LASTX_HOUR'] = "Последний час";
$content['LN_DATE_LASTX_12HOURS'] = "Последние 12 часов";
$content['LN_DATE_LASTX_24HOURS'] = "Последние 24 часа";
$content['LN_DATE_LASTX_7DAYS'] = "Последние 7 дней";
$content['LN_DATE_LASTX_31DAYS'] = "Последние 31 дней";
$content['LN_FILTER_FACILITY'] = "Источник syslog";
$content['LN_FILTER_SEVERITY'] = "Важность syslog";
$content['LN_FILTER_OTHERS'] = "Другие фильтры";
$content['LN_FILTER_MESSAGE'] = "Запись syslog";
$content['LN_FILTER_SYSLOGTAG'] = "Метка syslog";
$content['LN_FILTER_SOURCE'] = "Узел (имя хоста)";
$content['LN_FILTER_MESSAGETYPE'] = "Тип записи";

// Install Page
$content['LN_CFG_DBSERVER'] = "Сервер СУБД";
$content['LN_CFG_DBPORT'] = "Порт СУБД";
$content['LN_CFG_DBNAME'] = "Имя БД";
$content['LN_CFG_DBPREF'] = "Префикс таблицы";
$content['LN_CFG_DBUSER'] = "Пользователь БД";
$content['LN_CFG_DBPASSWORD'] = "Пароль БД";
$content['LN_CFG_PARAMMISSING'] = "Недостающие параметры: ";
$content['LN_CFG_SOURCETYPE'] = "Тип источника";
$content['LN_CFG_DISKTYPEOPTIONS'] = "Варианты для файла";
$content['LN_CFG_LOGLINETYPE'] = "Тип записей";
$content['LN_CFG_SYSLOGFILE'] = "Файл syslog";
$content['LN_CFG_DATABASETYPEOPTIONS'] = "Варианты для БД";
$content['LN_CFG_DBTABLETYPE'] = "Тип таблицы";
$content['LN_CFG_DBSTORAGEENGINE'] = "Хранилище БД";
$content['LN_CFG_DBTABLENAME'] = "Имя таблицы БД";
$content['LN_CFG_NAMEOFTHESOURCE'] = "Имя источника";
$content['LN_CFG_FIRSTSYSLOGSOURCE'] = "Первый источник syslog";
$content['LN_CFG_DBROWCOUNTING'] = "Включить подсчёт строк";
$content['LN_CFG_VIEW'] = "Выбрать вид";
$content['LN_CFG_DBUSERLOGINREQUIRED'] = "Требуется имя пользователя";
$content['LN_CFG_MSGPARSERS'] = "Разбор записей (через запятую)";
$content['LN_CFG_NORMALIZEMSG'] = "Нормализовать записи при разборе";
$content['LN_CFG_SKIPUNPARSEABLE'] = "Пропускать неразборчивые записи (работает только при сконфигурированном разборе!)";
$content['LN_CFG_DBRECORDSPERQUERY'] = "Количество записей для запросов к СУБД";

// Details page
$content['LN_DETAILS_FORSYSLOGMSG'] = "Подробности по записям syslog с ID";
$content['LN_DETAILS_DETAILSFORMSG'] = "Подробности по записи с ID";
$content['LN_DETAIL_BACKTOLIST'] = "Вернуться к списку";

// Login Site
$content['LN_LOGIN_DESCRIPTION'] = "Используйте эту форму для входа в LogAnalyzer. ";
$content['LN_LOGIN_TITLE'] = "Вход";
$content['LN_LOGIN_USERNAME'] = "Пользователь";
$content['LN_LOGIN_PASSWORD'] = "Пароль";
$content['LN_LOGIN_SAVEASCOOKIE'] = "Запомнить вход";
$content['LN_LOGIN_ERRWRONGPASSWORD'] = "Неверное имя пользователя или пароль!";
$content['LN_LOGIN_USERPASSMISSING'] = "Не задано имя пользователя или пароль";

// Install Site
$content['LN_INSTALL_TITLETOP'] = "Установка LogAnalyzer версии %1 - шаг %2";
$content['LN_INSTALL_TITLE'] = "Шаг установки: %1";
$content['LN_INSTALL_ERRORINSTALLED'] = 'LogAnalyzer уже сконфигурирован!<br><br> Если требуется переконфигурировать LogAnalyzer, либо удалите текущий <B>config.php</B>, либо замените его пустым файлом.<br><br>Щёлкните <A HREF="index.php">здесь</A> для возврата к начальной странице.';
$content['LN_INSTALL_FILEORDIRNOTWRITEABLE'] = "Как минимум один файл или каталог недоступен по записи; пожалуйста, проверьте права доступа!";
$content['LN_INSTALL_SAMPLECONFIGMISSING'] = "Отсутствует пример конфигурационного файла '%1'. LogAnalyzer был загружен не полностью.";
$content['LN_INSTALL_ERRORCONNECTFAILED'] = "Сбой подключения к БД '%1'! Пожалуйста, проверьте имя сервера, порт, имя пользователя и пароль!";
$content['LN_INSTALL_ERRORACCESSDENIED'] = "Невозможно использовать БД  '%1'! Если база данных не существует, создайте её или проверьте права доступа пользователя!";
$content['LN_INSTALL_ERRORINVALIDDBFILE'] = "Ошибка, неверный (слишком короткий) файл определения БД '%1'! Пожалуйста, проверьте корректность загрузки этого файла.";
$content['LN_INSTALL_ERRORINSQLCOMMANDS'] = "Ошибка, неверный файл определения БД '%1' (не найдены команды SQL)!  Пожалуйста, проверьте корректность загрузки этого файла или обратитесь на форум LogAnalyzer за поддержкой!";
$content['LN_INSTALL_MISSINGUSERNAME'] = "Требуется указать имя пользователя";
$content['LN_INSTALL_PASSWORDNOTMATCH'] = "Пароль не подходит или слишком короткий!";
$content['LN_INSTALL_FAILEDTOOPENSYSLOGFILE'] = "Не удалось открыть файл syslog '%1'! Проверьте, существует ли файл и достаточны ли права доступа LogAnalyzer (веб-сервера) к нему<br>";
$content['LN_INSTALL_FAILEDCREATECFGFILE'] = "Невозможно создать конфигурационный файл '%1'! Пожалуйста, проверьте права доступа к файлу!";
$content['LN_INSTALL_FAILEDREADINGFILE'] = "Ошибка чтения файла '%1'! Пожалуйста, проверьте существование файла!";
$content['LN_INSTALL_ERRORREADINGDBFILE'] = "Ошибка чтения файла определения БД по умолчанию '%1'! Пожалуйста, проверьте существование файла!";
$content['LN_INSTALL_STEP1'] = "Шаг 1 - требования";
$content['LN_INSTALL_STEP2'] = "Шаг 2 - права на файлы";
$content['LN_INSTALL_STEP3'] = "Шаг 3 - основная конфигурация";
$content['LN_INSTALL_STEP4'] = "Шаг 4 - создание таблиц";
$content['LN_INSTALL_STEP5'] = "Шаг 5 - проверка результатов SQL";
$content['LN_INSTALL_STEP6'] = "Шаг 6 - создание входа основного пользователя";
$content['LN_INSTALL_STEP7'] = "Шаг 7 - создание первого источника записей syslog";
$content['LN_INSTALL_STEP8'] = "Шаг 8 - готово";
$content['LN_INSTALL_STEP1_TEXT'] = 'Перед началом установки LogAnalyzer инсталятор должен выполнить несколько проверок.<br>Может потребоваться исправить права доступа к нескольким файлам.<br><br>Щёлкните <input type="submit" value="Далее"> для начала проверки!';
$content['LN_INSTALL_STEP2_TEXT'] = "Проверены права доступа к следующим файлам. Ознакомьтесь с результатами ниже!<br>Вы можете задействовать скрипт <B>configure.sh</B> из подкаталога <B>contrib</B> для удобного выставления прав доступа.";
$content['LN_INSTALL_STEP3_TEXT'] = "На этом шаге задаётся основная конфигурация LogAnalyzer.";
$content['LN_INSTALL_STEP4_TEXT'] = 'На этом шаге подключение к СУБД благополучно проверено.<br><br>Следующий шаг состоит в создании необходимых для системы пользователей LogAnalyzer таблиц БД. Это может занять некоторое время.<br> <b>ВНИМАНИЕ</b>: если в этой БД имеются таблицы уже существующей установки LogAnalyzer с тем же префиксом, все данные в них будут <b>УНИЧТОЖЕНЫ</b>! Убедитесь, что используется свежая БД или что требуется перезаписать старую БД LogAnalyzer.<br><br><b>Щёлкните <input type="submit" value="Далее"> для создания таблиц</b>';
$content['LN_INSTALL_STEP5_TEXT'] = "Таблицы созданы. Ознакомьтесь со списком ниже на предмет возможных ошибок";
$content['LN_INSTALL_STEP6_TEXT'] = "Создаётся первый пользовательский вход в LogAnalyzer.<br>Это будет первый пользователь с правами администратора, который необходим для входа в LogAnalyzer и доступа к интерфейсу администрирования.";
$content['LN_INSTALL_STEP8_TEXT'] = 'Поздравляю, вы благополучно установили LogAnalyzer :)!<br><br>Щёлкните <a href="index.php">здесь</a> для перехода к нему.';
$content['LN_INSTALL_PROGRESS'] = "Ход установки: ";
$content['LN_INSTALL_FRONTEND'] = "Настройки интерфейса";
$content['LN_INSTALL_NUMOFSYSLOGS'] = "Записей syslog на страницу";
$content['LN_INSTALL_MSGCHARLIMIT'] = "Предельное количество символов записи для основного вида";
$content['LN_INSTALL_STRCHARLIMIT'] = "Предельное количество символов для всех полей строчного типа";
$content['LN_INSTALL_SHOWDETAILPOP'] = "Показывать подробности во всплывающем окне";
$content['LN_INSTALL_AUTORESOLVIP'] = "Автоматически определённые IP-адреса (там же)";
$content['LN_INSTALL_USERDBOPTIONS'] = "Настройки системы пользователей";
$content['LN_INSTALL_ENABLEUSERDB'] = "Включить систему пользователей";
$content['LN_INSTALL_SUCCESSSTATEMENTS'] = "Успешно выполненные запросы:";
$content['LN_INSTALL_FAILEDSTATEMENTS'] = "Неудачные запросы:";
$content['LN_INSTALL_STEP5_TEXT_NEXT'] = "Можно двигаться <B>далее</B> для задания первого администратора LogAnalyzer.";
$content['LN_INSTALL_STEP5_TEXT_FAILED'] = "Как минимум один запрос не удался, обратите внимание на сообщения ниже";
$content['LN_INSTALL_ERRORMSG'] = "Сообщение об ошибке";
$content['LN_INSTALL_SQLSTATEMENT'] = "SQL-запрос";
$content['LN_INSTALL_CREATEUSER'] = "Создать пользователя";
$content['LN_INSTALL_PASSWORD'] = "Пароль";
$content['LN_INSTALL_PASSWORDREPEAT'] = "Повторно";
$content['LN_INSTALL_SUCCESSCREATED'] = "Пользователь успешно создан";
$content['LN_INSTALL_RECHECK'] = "Перепроверить";
$content['LN_INSTALL_FINISH'] = "Закончить";
$content['LN_INSTALL_'] = "";

// Converter Site
$content['LN_CONVERT_TITLE'] = "Преобразование конфигурации: шаг %1";
$content['LN_CONVERT_NOTALLOWED'] = "Вход";
$content['LN_CONVERT_ERRORINSTALLED'] = 'LogAnalyzer не позволено преобразовывать ваши настройки в базу данных пользователей.<br><br>Если вы хотите преобразовать настройки, добавьте следующую переменную в config.php: <br><b>$CFG[\'UserDBConvertAllowed\'] = true;</b><br><br>Щёлкните<A HREF="index.php">здесь</A> для возврата к начальной странице.';
$content['LN_CONVERT_STEP1'] = "Шаг 1 - информация";
$content['LN_CONVERT_STEP2'] = "Шаг 2 - создание таблиц";
$content['LN_CONVERT_STEP3'] = "Шаг 3 - проверка результатов SQL";
$content['LN_CONVERT_STEP4'] = "Шаг 4 - создание входа основного пользователя";
$content['LN_CONVERT_STEP5'] = "Шаг 5 - импортирование настроек в систему пользователей";
$content['LN_CONVERT_TITLETOP'] = "Преобразование настроек LogAnalyzer - шаг ";
$content['LN_CONVERT_STEP1_TEXT'] = 'Этот скрипт позволяет импортировать текущую конфигурацию из файла <b>config.php</b>. Включены: настройки интерфейса, источники данных, заданные виды и варианты поиска. Данное преобразование требуется только после установки LogAnalyzer без системы пользователей и она потребовалась позже.<br><br><b>ЕСЛИ СУЩЕСТВУЕТ БАЗА ДАННЫХ ПОЛЬЗОВАТЕЛЕЙ, ОНА БУДЕТ ЗАТЁРТА!</b><br><br><input type="submit" value="Щёлкните здесь"> для перехода к первому шагу преобразования.';
$content['LN_CONVERT_STEP2_TEXT'] = 'Соединение с базой данных успешно проверено!<br><br>Следующим шагом будет создание необходимых для системы пользователей LogAnalyzer таблиц БД, что может занять некоторое время.<br><b>ВНИМАНИЕ</b>: если в этой БД имеются таблицы уже существующей установки LogAnalyzer с тем же префиксом, все данные в них будут <b>УНИЧТОЖЕНЫ</b>! Убедитесь, что используется свежая БД или что требуется перезаписать старую БД LogAnalyzer.<br><br><b>Щёлкните <input type="submit" value="Далее"> для создания таблиц</b>';
$content['LN_CONVERT_STEP5_TEXT'] = '<input type="submit" value="Щёлкните здесь"> для перехода к последнему шагу преобразования, на котором существующая конфигурация будет импортирована из <b>config.php</b> в базу данных.';
$content['LN_CONVERT_STEP6'] = "Шаг 8 - готово";
$content['LN_CONVERT_STEP6_TEXT'] = 'Поздравляю! Вы благополучно преобразовали существующую установку LogAnalyzer :)!<br><br>Важно! не забудьте УДАЛИТЬ ПЕРЕМЕННУЮ <b>$CFG[\'UserDBConvertAllowed\'] = true;</b> из файла config.php! <br><br>Можете щёлкнуть <a href="index.php">здесь</a> для перехода к LogAnalyzer.';
$content['LN_CONVERT_PROCESS'] = "Ход преобразования:";
$content['LN_CONVERT_ERROR_SOURCEIMPORT'] = "Критическая ошибка при импортировании источников в базу данных, тип источника '%1' не поддерживается этой версией LogAnalyzer.";

// Stats Site
	$content['LN_STATS_CHARTTITLE'] = "Top %1 '%2' sorted by messagecount";
	$content['LN_STATS_COUNTBY'] = "Количество записей по '%1'";
	$content['LN_STATS_OTHERS'] = "All Others";
	$content['LN_STATS_TOPRECORDS'] = "Макс. записей: %1";
	$content['LN_STATS_GENERATEDAT'] = "Generated at: %1";
//	$content['LN_STATS_COUNTBYSYSLOGTAG'] = "Messagecount by SyslogTag";
	$content['LN_STATS_GRAPH'] = "График";
	$content['LN_GEN_ERROR_INVALIDFIELD'] = "Неверное имя поля";
	$content['LN_GEN_ERROR_MISSINGCHARTFIELD'] = "Недостающее имя поля";
	$content['LN_GEN_ERROR_INVALIDTYPE'] = "Неверный или неизвестный тип диаграммы.";
	$content['LN_ERROR_CHARTS_NOTCONFIGURED'] = "Диаграммы не сконфигурированы как класс.";
	$content['LN_CHART_TYPE'] = "Тип диаграммы";
	$content['LN_CHART_WIDTH'] = "Ширина диаграммы";
	$content['LN_CHART_FIELD'] = "Поле диаграммы";
	$content['LN_CHART_MAXRECORDS'] = "Максимум записей";
	$content['LN_CHART_SHOWPERCENT'] = "Показывать проценты";
	$content['LN_CHART_TYPE_CAKE'] = "Круговая";
	$content['LN_CHART_TYPE_BARS_VERTICAL'] = "Вертикальная";
	$content['LN_CHART_TYPE_BARS_HORIZONTAL'] = "Горизонтальная";
	$content['LN_STATS_WARNINGDISPLAY'] = "Создание графиков по большим источникам данных в данный момент требует много времени. Это будет исправлено в следующих версиях. Если обработка занимает слишком долго, пожалуйста, прервите запрос.";

// asktheoracle site
$content['LN_ORACLE_TITLE'] = "Спросить всезнайку про '%1'";
$content['LN_ORACLE_HELP_FOR'] = "Вот что всезнайка может посоветовать по этому поводу";
$content['LN_ORACLE_HELP_TEXT'] = "<br><h3>Вы попросили всезнайку найти информацию по '%1' со значением '%2'.</h3>
<p align=\"left\">Эта страница даёт возможность поиска по нескольким источникам журналов. %3
<br>Общая идея состоит в том, чтобы легко находить информацию по конкретному вопросу во всех местах, где она может оказаться.
</p>
<p align=\"left\">Полезным применением может оказаться разбор попытки взлома, которая наблюдается в логе веб-сервера. Щёлкните по IP атакующего, появится эта страничка поиска. Теперь вы можете как посмотреть информацию по диапазону IP, так и свериться с другими журналами (например, файрвола или почтового сервера) на предмет наличия информации по атакующему. Мы надеемся, что это поможет при разборе.
</p>
";
$content['LN_ORACLE_HELP_TEXT_EXTERNAL'] = "Также возможно делать заранее подготовленные поисковые запросы ко внешним базам данных";
$content['LN_ORACLE_HELP_DETAIL'] = "Матрица связей для '%1' со значением '%2'";
$content['LN_ORACLE_SEARCH'] = "Поиск"; // in '%1' Field";
$content['LN_ORACLE_SOURCENAME'] = "Имя источника";
$content['LN_ORACLE_FIELD'] = "Поле";
$content['LN_ORACLE_ONLINESEARCH'] = "Поиск онлайн";
$content['LN_ORACLE_WHOIS'] = "Запрос WHOIS для '%1' со значением '%2'";

// Report Strings
$content['LN_GEN_ERROR_INVALIDOP'] = "Неверный или недостающий тип операции";
$content['LN_GEN_ERROR_INVALIDREPORTID'] = "Неверный или недостающий идентификатор отчёта";
$content['LN_GEN_ERROR_MISSINGSAVEDREPORTID'] = "Неверный или недостающий идентификатор сохранённого отчёта";
$content['LN_GEN_ERROR_REPORTGENFAILED'] = "Не удалось создать отчёт '%1' по причине следующей ошибки: %2";
$content['LN_GEN_ERROR_WHILEREPORTGEN'] = "При создании отчёта произошла ошибка"; 
$content['LN_GEN_ERROR_REPORT_NODATA'] = "Не найдены данные для создания отчёта"; 
$content['LN_GEN_ALL_OTHER_EVENTS'] = "Прочие события";
$content['LN_REPORT_FOOTER_ENDERED'] = "Отчёт создан за";
$content['LN_REPORT_FILTERS'] = "Список использованных фильтров";
$content['LN_REPORT_FILTERTYPE_DATE'] = "Дата";
$content['LN_REPORT_FILTERTYPE_NUMBER'] = "Число";
$content['LN_REPORT_FILTERTYPE_STRING'] = "Строка";
$content['LN_GEN_SUCCESS_WHILEREPORTGEN'] = "Отчёт был благополучно создан";
$content['LN_GEN_ERROR_REPORTFAILEDTOGENERATE'] = "Не удалось создать отчёт, подробнее об ошибке: %1";
$content['LN_GEN_SUCCESS_REPORTWASGENERATED_DETAILS'] = "Благополучно создан отчёт: %1";
$content['LN_ERROR_PATH_NOT_ALLOWED'] = "Этот файл размещён не в каталоге из разрешённого списка (по умолчанию только /var/log)."; 
$content['LN_ERROR_PATH_NOT_ALLOWED_EXTRA'] = "Файл '%1' размещён не в одном из перечисленных каталогов: '%2'"; 

$content['LN_CMD_RUNREPORT'] = "Прогон сохранённого отчёта '%1'";
$content['LN_CMD_REPORTIDNOTFOUND'] = "Неверный идентификатор отчёта '%1'";
$content['LN_CMD_SAVEDREPORTIDNOTFOUND'] = "Неверный идентификатор сохранённого отчёта '%1'";
$content['LN_CMD_NOREPORTID'] = "Недостаёт идентификатора отчёта";
$content['LN_CMD_NOSAVEDREPORTID'] = "Недостаёт идентификатора сохранённого отчёта";
$content['LN_CMD_NOCMDPROMPT'] = "Ошибка, этот скрипт может быть запущен только из командной строки.";
$content['LN_REPORT_GENERATEDTIME'] = "Отчёт создан в: ";

$content['LN_REPORT_ACTIONS'] = "Выполнить действия по отчёту";
$content['LN_REPORTS_CAT'] = "Категория отчёта";
$content['LN_REPORTS_ID'] = "Идентификатор отчёта";
$content['LN_REPORTS_NAME'] = "Название отчёта";
$content['LN_REPORTS_DESCRIPTION'] = "Описание отчёта";
$content['LN_REPORTS_HELP'] = "Справка";
$content['LN_REPORTS_HELP_CLICK'] = "Щёлкните здесь для подробного описания отчёта";
$content['LN_REPORTS_INFO'] = "Показать больше сведений";
$content['LN_REPORTS_SAVEDREPORTS'] = "Сохранённые отчёта";
$content['LN_REPORTS_ADMIN'] = "Администрирование отчётов";
$content['LN_REPORTMENU_LIST'] = "Список установленных отчётов";
$content['LN_REPORTMENU_ONLINELIST'] = "Все доступные отчёты";
$content['LN_REPORTS_INFORMATION'] = "Эта страница показывает список установленных и доступных отчётов, включая конфигурации сохранённых отчётов.
<br/>Для прогона отчёта щёлкните по кнопке справа от сохранённых отчётов.
<br/>Внимание! Создание отчётов может занимать много времени в зависимости от размера базы данных.
";
$content['LN_REPORTS_CHECKLOGSTREAMSOURCE'] = "Проверить оптимизацию потока журнала";


?>
