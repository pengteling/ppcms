<?php
include_once($_SERVER['DOCUMENT_ROOT']."/inc/config.php") ;
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>后台登陆</title>

    <!-- Bootstrap core CSS -->
	<!-- Bootstrap Core CSS -->
    <link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/admin/signin.css" rel="stylesheet">	

</head>
<body>

<div class="container">
<?php
session_start();
// $code = $_SESSION['code'];
// $checkcode = $_POST['checkcode'];

if($_SESSION['code']!=$_POST['checkcode']){
	$err= "验证码不正确";
}
else{
	//echo realpath(dirname(__FILE__).'/../inc/conn.php');
	// echo getcwd();
	// echo $_SERVER['DOCUMENT_ROOT'];
	// echo DOCUMENT_ROOT;
	
	include_once(dirname(__FILE__).'/../inc/conn.php');
	
}


?>

</div>
</body>
</html>