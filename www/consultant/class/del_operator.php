<?php
 class DelOperator{ private $id_operator; public function __construct() { if(isset($_GET['id_operator'])){ $this->id_operator = intval($_GET['id_operator']); require 'mysql.php'; }else{ die('Кого удалить?'); } } public function del(){ $mysql = Mysql::getInstance(); $sql = "DELETE FROM ok_operators WHERE operator_id = {$this->id_operator}"; $mysql->exec($sql); } } session_start(); if(isset($_SESSION['who']) AND $_SESSION['who'] == "admin"){ $operator = new DelOperator(); $operator->del(); }else{ die('Нет прав!!!'); } ?>