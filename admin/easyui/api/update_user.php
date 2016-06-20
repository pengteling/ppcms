<?php
include_once($_SERVER['DOCUMENT_ROOT']."/inc/conn.php");
var_dump($_POST);
$data = $dbh -> query("select * from zh_admin  order by id");

$r = $data -> fetchAll();

//var_dump($r) ;
//echo json_encode($r);