<?php
session_start();
$curpagetitle = '欢迎介面';
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/isadmin.php");
include_once($_SERVER['DOCUMENT_ROOT']."/inc/config.php") ;
include_once($_SERVER['DOCUMENT_ROOT']."/inc/conn.php");
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/head.php");


$data = $dbh -> query("select * from catepage where ishome =1 order by orderid");


$r = $data -> fetchAll();

 
// foreach ($data as $rs ){
// 	//var_dump($rs);
// }

//var_dump($rs);
//var_dump($data);

/**
 * 递归无限级分类【先序遍历算】，获取任意节点下所有子孩子
 * @param array $arrCate 待排序的数组
 * @param int $parent_id 父级节点
 * @param int $level 层级数
 * @return array $arrTree 排序后的数组
 */
function getMenuTree($arrCat, $followid = 0, $level = 0)
{
    static  $arrTree = array(); //使用static代替global
    if( empty($arrCat)) return FALSE;
    $level++;
    foreach($arrCat as $key => $value)
    {
        if($value['followid' ] == $followid)
        {
           // $value[ 'depth'] = $level;
            $arrTree[] = $value;
            unset($arrCat[$key]); //注销当前节点数据，减少已无用的遍历
            getMenuTree($arrCat, $value[ 'cateid'], $level);
        }
    }   
    return $arrTree;
}

$data2 = getMenuTree($r, 0, 0);

foreach ($data2 as $key => $value) {
	# code...
	echo $value['catename']."....".$value['depth'].'<br>';
}
//echo json_encode($data2,JSON_UNESCAPED_UNICODE); //5.4以上版本

include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/foot.php");


