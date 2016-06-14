<?php
session_start();
$curpagetitle = '页面管理';
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/isadmin.php");
include_once($_SERVER['DOCUMENT_ROOT']."/inc/config.php") ;
include_once($_SERVER['DOCUMENT_ROOT']."/inc/conn.php");
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/head.php");

$data = $dbh -> query("select * from catepage  order by orderid");

$r = $data -> fetchAll();
 //var_dump($r);
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
function getMenuTree($arrCat, $followid = 0)
{
    static  $arrTree = array(); //使用static代替global
    if( empty($arrCat)) return FALSE;
    //$level++;
    foreach($arrCat as $key => $value)
    {
        if($value['followid' ] == $followid)
        {
           // $value[ 'depth'] = $level;
            $arrTree[] = $value; //不用下标赋值 默认从0开始            
            unset($arrCat[$key]); //注销当前节点数据，减少已无用的遍历
            getMenuTree($arrCat, $value[ 'cateid']);
        }
    }   
    return $arrTree;
}

$data2 = getMenuTree($r, 0);

// foreach ($data2 as $key => $value) {
// 	# code...
// 	echo $value['catename']."...".$value['cateid']."....".$value['depth'].'<br>';
// }

//echo json_encode($data2,JSON_UNESCAPED_UNICODE); //5.4以上版本


// function encode_json($str) {  
//     return urldecode(json_encode(url_encode($str)));      
// }  
  

// function url_encode($str) {  
//     if(is_array($str)) {  
//         foreach($str as $key=>$value) {  
//             $str[urlencode($key)] = url_encode($value);  
//         }  
//     } else {  
//         $str = urlencode($str);  
//     }  
      
//     return $str;  
// }

// //echo encode_json($data2); //json中文防止转码 


?>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" class="table_southidc">
  <tr>
    <td width="44%" align="center" class="blod">项目名</td>
    <td width="14%" align="center" class="blod">属性</td>
    <td width="27%" align="center" class="blod">相关操作</td>
  </tr>
<!-- <?php
foreach($data2 as $key => $value):?>
//  # code...
  echo $value['catename']."...".$value['cateid']."....".$value['depth'].'<br>';

 <tr class="td_southidc<?php echo $value['depth']?>">
 <td align="left"><?php echo str_repeat("&nbsp;&nbsp;&nbsp;&nbsp;",$value['depth'])?><img src="../Images/tree_folder3.gif" width="19" height="18" align="absbottom"><b><?php echo $value['catename']?></b> (<?php echo $value['orderID']?>)</td>

 <td align="center">栏目（列表） <a href='companyAll.asp?Act=IsHide&s=0&id=1' title='<?php echo $value['isHome']?"点击隐藏":"点击显示"?>'><font color='#999999'><?php echo $value['isHome']?"显":"隐"?></font></a>&nbsp;</td>
 <td align="center"><a href="companyadd.asp?Act=edit&ID=1">修改属性</a> | <a href="companyadd.asp?followid=1">添加下级栏目</a> | <a href="companyAll.asp?Act=del&ID=1" onClick="return confirm('删除之后,相关内容也会被删除,并且不能恢复!\n\n确定要删除吗？');">删除</a></td>
 </tr>


<?php endforeach; ?> -->
<?php
function catetype($num){
    $catetype;
    switch ($num){
        case 0:
            # code...
            $catetype = "栏目（内容）";
            break;
        case 1:
            # code...
            $catetype = "栏目（列表）";
            break;
        case 2:
            # code...
            $catetype = "单网页";
            break;
        case 3:
            # code...
            $catetype = "单链接";
            break;
        
        default:
            # code...
            $catetype = "单网页";
            break;
    }
    return $catetype;
}
foreach($data2 as $key => $value){
    $blank = str_repeat("&nbsp;&nbsp;&nbsp;&nbsp;",$value['depth'] -1);
    $catetype = catetype($value['cateType']);
    $ishide = $value['isHome']?"点击隐藏":"点击显示";
    $ishide2 = $value['isHome']?"显":"隐";
    $strtemp ="";
    $strtemp = "<tr class=\"td_southidc{$value['depth']}\">";

    $strtemp .= "<td align=\"left\">{$blank}<img src=\"../Images/tree_folder3.gif\" width=\"19\" height=\"18\" align=\"absbottom\"><b>{$value['catename']}</b> ({$value['orderID']})</td>";
    $strtemp .= "<td align=\"center\">{$catetype} <a href='companyAll.asp?Act=IsHide&s=0&id=1' title='{$ishide}'><font color='#999999'>{$ishide2}</font></a>&nbsp;</td>";
    if($value['depth']<=1){
    $strtemp .= "<td align=\"center\"><a href=\"javascript:doedit({$value['cateid']});\">修改属性</a> | <a href=\"javascript:doadd({$value['cateid']});\">添加下级栏目</a> | <a href=\"javascript:dodel({$value['cateid']})\" >删除</a></td>";
    }
    else{
        $strtemp .= "<td align=\"center\"><a href=\"javascript:doedit({$value['cateid']});\">修改属性</a> | <a href=\"javascript:dodel({$value['cateid']})\" >删除</a></td>";
    }
    $strtemp .= "</tr>";
    echo $strtemp;

}
?>


 

</table>


 <div class="modal fade" id="win-new-info" role="dialog" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="modal-title">添加新栏目</h4>
        </div>
        <div class="modal-body">
          <form action="?action=savenew" method="post" class="form" id="form-addnew">
            <input type="hidden" name="cid" id="cid" value="">
            <div class="form-group">
              <label for="title" class="control-label">所属栏目：</label>
              
              <select name="followid" id="followid" class="form-control">
                <option value="0">作为根目录</option>
                  <?php
                  foreach($data2 as $key => $value){
                    if($value['depth']==1){
                        echo "<option value={$value['cateid']}>{$value['catename']}</option>";
                    }

                  }
                  ?>
              </select>
              
            </div>
            <div class="form-group">
              <label for="title" class="control-label">客户名称：</label>
              <input type="text" name="sitecompany" id="sitecompany_add" class="form-control" value="" placeholder="请输入..." />
            </div>
            <div class="form-group">
              <label for="title" class="control-label">联系人：</label>
              <input type="text" name="lxperson" id="lxperson_add" class="form-control" value="" placeholder="请输入..." />
            </div>
            <div class="form-group">
              <label for="title" class="control-label">联系电话：</label>
              <input type="text" name="lxtel" id="lxtel_add" class="form-control" value="" placeholder="请输入电话..." />
            </div>
            <div class="form-group">
              <label for="title" class="control-label">上线时间：</label>
              <input type="text" name="start_date" id="start_date_add" class="form-control" value="2016-06-14" placeholder="格式形如2014-5-23..." />
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" id="btn-sumbit">保存</button>
        </div>
      </div>
      <!-- /.modal-content --> 
    </div>
    <!-- /.modal-dialog --> 
  </div>



<div class="modal small fade" id="myModal" role="dialog" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">确认删除</h3>
        </div>
        <div class="modal-body">
          <p class="error-text"><i class="icon-warning-sign modal-icon"></i>确认要删除这个记录?删除后无法恢复！</p>
        </div>
        <div class="modal-footer">
          <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
          <a href="Del.asp?id=XXX" class="btn btn-danger">删除</a> </div>
      </div>
    </div>
  </div>



<script type="text/javascript">
$(function(){
        
    $("tr[class^=td_southidc] img").click(function(){
        
    var tr_this = $(this).parent().parent();
    //$("tr[class^=td_southidc]").click(function(){
        //alert($(this).attr("class"));
        //$(this).nextUntil("td[class^=td_southidc").parent().toggle();
        var curClass=$(tr_this).attr("class");
        var curClassNum=parseInt(curClass.substr(11,1));
        //alert(curClassNum);
        var img1="../Images/tree_folder3.gif";      
        var img2="../Images/tree_folder4.gif";
        var isOpen=true;
        if ($(tr_this).find("img").attr("src")==img1)
        {
            $(tr_this).find("img").attr("src",img2);
            isOpen=false;
        }
        else
        {
            $(tr_this).find("img").attr("src",img1);
            isOpen=true;
        }
        
        
        //alert(subClass);
        //$(this).nextUntil("tr[class="+curClass+"]").nextUntil("tr[class!="+subClass+"]").toggle();
        var k=1;
        $(tr_this).nextUntil("tr[class="+curClass+"]").each(function(index,element){
             if( parseInt($(element).attr("class").substr(11,1))>curClassNum && k==1 )
             {
                 //alert($(element).attr("class").substr(11,1));
                 if($(element).is(":hidden") )
                 {
                    if(isOpen){
                        $(element).show();
                        $(this).find("img").attr("src",img1);
                    }
                    else{
                        $(element).hide();
                        $(this).find("img").attr("src",img2);
                    }
                    
                 }
                 else
                 {
                    $(element).hide();
                 }               
             }
             else
             {
                 k=2;
             }
        });
        
        

    });
});


  function dodel(id){
        $('#myModal').modal('show').on('shown.bs.modal',function(){
            $(".btn-danger").attr('href','?action=delete&id='+id);
        })
        
        
    }
  function doadd(id){
        $('#win-new-info').modal('show').on('shown.bs.modal',function(){
            //$(".btn-danger").attr('href','?action=delete&id='+id);
            $("#followid").val(id);
        })
        
        
    }
</script>
<span class="red" style="font-weight: bold">注:</span> 为了不影响系统正常运行,默认项目请不要删除,如需删除请联系制作者.

<?php
include_once($_SERVER['DOCUMENT_ROOT']."/admin/inc/foot.php");


