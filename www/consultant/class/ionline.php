<?php
 class IOnline{ static function setOnline($id_operator){ $ltime = time(); $sql = "UPDATE ok_operators SET operator_ltime = '{$ltime}' WHERE operator_id = {$id_operator}"; $mysql = Mysql::getInstance(); $mysql->exec($sql); } static function setUserOnline(){ require_once 'ip.php'; $user_ip = UserIP::getIP(); $ltime = time(); $sql = "UPDATE ok_online SET ltime = {$ltime} WHERE user_ip = {$user_ip}"; $mysql = Mysql::getInstance(); $mysql->exec($sql); } } if(!isset($_SESSION))session_start(); require_once 'mysql.php'; if(isset($_SESSION['who']) AND $_SESSION['who'] == "operator"){ IOnline::setOnline($_SESSION['operator_id']); }else{ IOnline::setUserOnline(); } ?>
