<?php
// $con = mysql_connect("localhost","root","root");
// if (!$con)
//   {
//   die('Could not connect: ' . mysql_error());
//   }

// mysql_select_db("xannad", $con);

//echo dirname(__FILE__);
//echo getcwd();

// $dsn = 'mysql:Server=127.0.0.1;database=xannad';
// $user = 'root';
// $password = 'root';

$dsn = 'sqlsrv:Server=JADEBOXSERVER\SQLEXPRESS;database=xannad';
$user = 'xannad';
$password = 'xannadadm';

// $dsn = 'mysql:dbname=xannad;host=127.0.0.1';  //两种都可以？ 
// $user = 'root';
// $password = 'root';

try{
	//$dbh = new PDO($dsn,$user,$password, array(PDO::ATTR_PERSISTENT => true));
	$dbh = new PDO($dsn,$user,$password); //mssql 不能使用 array(PDO::ATTR_PERSISTENT => true) 否则apache不断重启
	//错误处理模式
	$dbh -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

	$dbh -> setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);//关联数组
	//$dbh -> setAttribute(3,2);

	//$dbh -> setAttribute(PDO::ATTR_AUTOCOMMIT,0); //mssql 不需要此名 否则有The auto-commit mode cannot be changed for this driver
}catch(PDOException $e){
	echo '数据库连接失败：'.$e->getMessage();
}
// $pdo - exec(); 影响行数
// $pdo - query(); 结果集
// $title = 'test';
//  $affected = $dbh -> exec("insert into `keys`(title) value('{$title}') "); //mysql 保留关键字 用 `` 扩起来  如`keys`
//  var_dump($affected);
 //$rs = $dbh -> query("select * from category"); 
 //var_dump($rs);
 // 	while($row = $rs -> fetch()){ 
 // 	//print_r($row); 
 // } 

 // foreach($rs as $v) {
 // 	# code...
 // 	echo $v['cateid'];
 // }

//pdo预处理  PDOStatement 对象的方法


// try{
// 	$sql = "INSERT INTO `keys`(title) value(?)"; //?占位符方式
// 	$pdo_pre = $dbh -> prepare($sql);
// 	var_dump($pdo_pre);
// 	$pdo_pre -> bindParam(1,$title); //这里必须是变量  不能直接写值
// 	//$pdo_pre -> bindParam(2,$username);
// 	$title = "testtest";
// 	$return = $pdo_pre -> execute();
	
// 	var_dump($return);

// 	$pdo_pre -> execute(array('testtest222'));



// }catch(PDOException $e){
// 	echo '数据库查询失败：'.$e->getMessage();
// }



/*try{
	$sql = "INSERT INTO `keys`(title) values(:title)"; //?别名方式  更方便:username,:pwd,:sex
	$pdo_pre = $dbh -> prepare($sql);
	var_dump($pdo_pre);
	$pdo_pre -> bindParam("title",$title); //这里必须是变量  不能直接写值
	//$pdo_pre -> bindParam(2,$username);
	$title = "testtest";
	$return = $pdo_pre -> execute();
	
	var_dump($return);

	//$pdo_pre -> execute(array('testtest222'));
	$arr = array("title"=>"testtest2223");
	$pdo_pre -> execute($arr);

}catch(PDOException $e){
	echo '数据库查询失败：'.$e->getMessage();
}*/


//$_GET  fetch
/*try{
	$sql = "select * from category where cateid> :id";
	$pdo_pre = $dbh -> prepare($sql);
	$pdo_pre -> execute($_GET);
	//$cate = $pdo_pre -> fetch(PDO::FETCH_ASSOC);//一条
	$cate = $pdo_pre -> fetchAll(PDO::FETCH_ASSOC);//多条

	//var_dump($cate);
	var_dump($pdo_pre -> rowCount());
}catch(PDOException $e){
	echo '数据库查询失败：'.$e->getMessage();
}*/


/*try{
	$sql = "select * from category where cateid> :id";
	$pdo_pre = $dbh -> prepare($sql);
	$pdo_pre -> execute($_GET);
	
	$pdo_pre -> bindColumn('cateid',$cateid);
	$pdo_pre -> bindColumn(2,$catename);
//$cateid = "erer";

	//$cate = $pdo_pre -> fetch(PDO::FETCH_ASSOC);//一条
	//$cate = $pdo_pre -> fetchAll(PDO::FETCH_ASSOC);//多条

	while($pdo_pre -> fetch(PDO::FETCH_NUM)){
		echo $cateid;
		echo $catename;		
	}

	// echo $cateid;
	// echo $catename;
	//var_dump($cate);
	//var_dump($pdo_pre -> rowCount());
}catch(PDOException $e){
	echo '数据库查询失败：'.$e->getMessage();
}
*/


/*mysql事务处理*/

// try{
// 	$dbh -> beginTransaction();
// 	/*$sql = "INSERT INTO `keys`(title) values(:title)"; //?别名方式  更方便:username,:pwd,:sex
// 	$pdo_pre = $dbh -> prepare($sql);
// 	var_dump($pdo_pre);
// 	$pdo_pre -> bindParam("title",$title); //这里必须是变量  不能直接写值
// 	//$pdo_pre -> bindParam(2,$username);
// 	$title = "testtest";
// 	$return = $pdo_pre -> execute();
	
// 	var_dump($return);

// 	//$pdo_pre -> execute(array('testtest222'));
// 	$arr = array("0"=>"testtest2223");
// 	$pdo_pre -> execute($arr);*/
// 	$sql = "INSERT INTO `keys`(title) values('test123')";
// 	$affected = $dbh -> exec($sql);
// 	 //var_dump($affected);

// 	if(!$affected){
// 	 	throw new PDOException("update fail");	 	
// 	 }
// 	 else{
	 	
// 	 }

// 	$sql = "update  `keys` set title='test12344' where id=1269";
// 	 $affected = $dbh -> exec($sql);
// 	 //var_dump($affected);
// 	 if(!$affected){
// 	 	throw new PDOException("update fail");	 	
// 	 }
// 	 else{
	 	
// 	 }

// 	$dbh -> commit();

// }catch(PDOException $e){
// 	$dbh->rollBack();
// 	echo '数据库查询失败：'.$e->getMessage();
// }


//mssql 

try{
	$dbh -> beginTransaction();
	$sql = "INSERT INTO keys(title) values(:title)"; //?别名方式  更方便:username,:pwd,:sex
	$pdo_pre = $dbh -> prepare($sql);
	var_dump($pdo_pre);
	$pdo_pre -> bindParam("title",$title); //这里必须是变量  不能直接写值
	//$pdo_pre -> bindParam(2,$username);
	$title = "testtest";
	$return = $pdo_pre -> execute();
	
	var_dump($return);

	//$pdo_pre -> execute(array('testtest222'));
	$arr = array("00"=>"testtest2223");
	$pdo_pre -> execute($arr);

	/*$sql = "INSERT INTO keys(title) values('test123')";
	$affected = $dbh -> exec($sql);
	 //var_dump($affected);

	if(!$affected){
	 	throw new PDOException("update fail");	 	
	 }
	 else{
	 	
	 }

	$sql = "update  keys set title='test12344' where id=111";
	 $affected = $dbh -> exec($sql);
	 //var_dump($affected);
	 if(!$affected){
	 	throw new PDOException("update fail");	 	
	 }
	 else{
	 	
	 }*/

	$dbh -> commit();

}catch(PDOException $e){
	$dbh->rollBack();
	echo '数据库查询失败：'.$e->getMessage();
}