<?php
 class Rerouting{ private $user_id; private $operator_id; public function __construct(){ if(!empty($_POST['user_id']) AND !empty($_POST['operator_id'])){ $this->user_id = intval($_POST['user_id']); $this->operator_id = intval($_POST['operator_id']); require 'mysql.php'; }else exit; } public function rerout(){ $sql = "UPDATE ok_users_chat SET id_operator = {$this->operator_id} WHERE id_user = $this->user_id"; $mysql = Mysql::getInstance(); if($mysql->exec($sql)){ $this->updateConUsers(); }else exit; } public function updateConUsers(){ $mysql = Mysql::getInstance(); $sql = "UPDATE ok_operators SET operator_connected = operator_connected + 1 WHERE operator_id = {$this->operator_id}"; $mysql->exec($sql); $sql = "UPDATE ok_operators SET operator_connected = operator_connected - 1 WHERE operator_id = {$_SESSION['operator_id']}"; $mysql->exec($sql); } } session_start(); if(isset($_SESSION['who']) AND $_SESSION['who'] == "operator"){ $user = new Rerouting(); $user->rerout(); }else{ die('Error! Ты не оператор'); } ?>
