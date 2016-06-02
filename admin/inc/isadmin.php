<?php

//$_SESSION['user_id'] =null;
if(!isset($_SESSION['user_id'])){	
	header("Location: /admin/login.php");
	echo "请重新登陆！";
	die();
}
else{
	//echo  $_SESSION['user_id'];;
	$userid=$_SESSION['user_id'];
}    