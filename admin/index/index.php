<?php
session_start();
$curpagetitle = '欢迎介面';
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/isadmin.php");
include_once($_SERVER['DOCUMENT_ROOT']."/inc/config.php") ;
include_once($_SERVER['DOCUMENT_ROOT']."/inc/conn.php");
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/head.php");
echo "欢迎使用ppcms!<br>";
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/foot.php");
