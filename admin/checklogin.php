<?php
session_start();
include_once($_SERVER['DOCUMENT_ROOT']."/inc/config.php") ;

// $code = $_SESSION['code'];
// $checkcode = $_POST['checkcode'];
$status = false;
$err='ok';
if($_SESSION['code']!=$_POST['checkcode']){
	$err= "验证码不正确";
}
else{
	//echo realpath(dirname(__FILE__).'/../inc/conn.php');
	// echo getcwd();
	// echo $_SERVER['DOCUMENT_ROOT'];
	// echo DOCUMENT_ROOT;
	
	$username=$_POST['username'];
	$password=$_POST['password'];
	include_once(dirname(__FILE__).'/../inc/conn.php');

	$query = sprintf("SELECT id FROM Zh_admin where UserName='%s' and Password='%s'",   

    mysql_real_escape_string($username),   
    mysql_real_escape_string(md5($password,false)));  
    //echo $query;
	$result=mysql_query($query);  
	$test=mysql_fetch_assoc($result);
	//print_r($test['id']) ;

	if(!isset($test['id'])){
		$status = false;
		$err = "用户名或密码不正确";
	}else{
		
		$_SESSION['user_id']=$test['id'];
		$status = true;
		
	}
}

$json = new stdClass();
$json->err = $err;
$json->status =$status;
//print_r($json);
echo json_encode($json);


?>

