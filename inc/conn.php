<?php
// $con = mysql_connect("localhost","root","root");
// if (!$con)
//   {
//   die('Could not connect: ' . mysql_error());
//   }

// mysql_select_db("xannad", $con);

//echo dirname(__FILE__);
//echo getcwd();

$dsn = 'mysql:Server=127.0.0.1;database=xannad';
$user = 'root';
$password = 'root';

$dsn = 'sqlsrv:Server=JADEBOXSERVER\SQLEXPRESS;database=xannad';
$user = 'xannad';
$password = 'xannadadm';

try{
	$dbh = new PDO($dsn,$user,$password);
}catch(PDOException $e){
	echo '数据库连接失败：'.$e->getMessage();
}

$rs = $dbh -> query("select * from category"); 
	while($row = $rs -> fetch()){ 
	print_r($row); 
} 
