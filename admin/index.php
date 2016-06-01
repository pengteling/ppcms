<?php
session_start();

if(!isset($_SESSION['user_id'])){
	echo "请重新登陆！";
}
else{
	echo  $_SESSION['user_id'];
}    
?>