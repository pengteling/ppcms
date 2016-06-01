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
	
	
	include_once(dirname(__FILE__).'/../inc/conn.php');
	$username=$_POST['username'];
	$password=$_POST['password'];

	/*mysql方法
	$query = sprintf("SELECT id FROM Zh_admin where UserName='%s' and Password='%s'",   

    mysql_real_escape_string($username),   
    mysql_real_escape_string(md5($password,false)));  
    //echo $query;
	$result=mysql_query($query);  
	$test=mysql_fetch_assoc($result);*/
	//print_r($test['id']) ;

	$sql = "SELECT id FROM Zh_admin where UserName=:username and Password=:password" ;
	$pdo_pre = $dbh -> prepare($sql);
	$pdo_pre -> execute(array("username"=>$username,"password"=>md5($password)));
	
	$result = $pdo_pre -> fetch(PDO::FETCH_ASSOC);//一条

	if(!isset($result['id'])){
		$status = false;
		$err = "用户名或密码不正确";
	}else{		
		$_SESSION['user_id']=$result['id'];
		$status = true;
		
	}
}

	$json = new stdClass();
	$json->err = $err;
	$json->status =$status;
	//print_r($json);
	echo json_encode($json);


?>

