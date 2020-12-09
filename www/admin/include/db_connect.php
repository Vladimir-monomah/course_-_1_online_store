<?php
defined('it') or die('Äîñòóï çàïðåù¸í!');

$db_host		= 'localhost';
$db_user		= 'id1667679_bykov';
$db_pass		= '14031999KIR';
$db_database	= 'id1667679_vladimir'; 


$link = mysql_connect($db_host,$db_user,$db_pass);

mysql_select_db($db_database,$link) or die("Íåò ñîåäèíåíèÿ ñ ÁÄ ".mysql_error());
mysql_query("SET names utf8");
header("Content-Type: text/html; charset=utf-8");
?>