<?php
include_once($_SERVER['DOCUMENT_ROOT']."/inc/conn.php");

	$username=$_POST['username'];
	$password=$_POST['password'];

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
		$err='ok';
		
	}


	$json = new stdClass();
	$json->err = $err;
	$json->status =$status;
	//print_r($json);


// 	function encode_json($str) {  
// 	    return urldecode(json_encode(url_encode($str)));      
// 	}  
	  

// 	function url_encode($str) {  
// 	    if(is_array($str)) {  
// 	        foreach($str as $key=>$value) {  
// 	            $str[urlencode($key)] = url_encode($value);  
// 	        }  
// 	    } else {  
// 	        $str = urlencode($str);  
// 	    }  
	      
// 	    return $str;  
// 	}

// echo encode_json($json); //json中文防止转码 
//return preg_replace("#\\\u([0-9a-f]{4})#ie", "iconv('UCS-2LE', 'UTF-8', pack('H4', '\\1'))", $str);
echo json_encode($json);