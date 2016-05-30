<?php
session_start();
include_once($_SERVER['DOCUMENT_ROOT']."/inc/config.php") ;
include_once($_SERVER['DOCUMENT_ROOT']."/inc/conn.php") ;

// $result=multi_query('select * from category;select * from catepage');  

// $test=mysql_fetch_array($result);
// print_r($test) ;


var_dump(PDO::getAvailableDrivers());