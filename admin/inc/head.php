<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>后台管理 - <?php echo $sitetitle?></title>

    <!-- Bootstrap Core CSS -->
    <link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    
    <!-- Custom Fonts -->
    <link href="/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- Custom CSS -->
    <link href="/css/admin/sb-admin-2.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/admin/admin.css" rel="stylesheet">

     <!-- jQuery -->
    <script src="/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/bower_components/metisMenu/dist/metisMenu.min.js"></script>

     <!-- Custom Theme JavaScript -->
    <script src="/js/admin/sb-admin-2.js"></script>
</head>

<body>

    <div id="wrapper">
    <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">CMCU后台管理系统</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
            
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="/admin/manager/Manage_Admin.asp"><i class="fa fa-user fa-fw"></i> 管理员</a>
                        </li>
                        <li><a href="/admin/config/siteconfig.asp"><i class="fa fa-gear fa-fw"></i> 网站配置</a>
                        </li>
                        <li><a href="/" target="_blank"><i class="fa fa-files-o fa-fw"></i> 预览网站</a></li>
                        <li class="divider"></li>
                        <li><a href="/admin/loginout.asp"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
 <?php if($userid==41):?>           
 <li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 网站页面<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">   
     <li> <a href="/admin/catepage/companyadd.asp">添加页面</a></li>
      <li> <a href="/admin/catepage/companyall.asp">页面管理</a></li>

      </ul>
      </li>   
         
<?php endif; ?>

<?php 
$sql ="Select * from catepage where depth=1 and ishome=1  order by orderid";
foreach ($dbh->query($sql) as $rs ):?>
	<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> <?php echo $rs['catename']?><span class="fa arrow"></span></a>
		    <ul class="nav nav-second-level">                                
		    	<?php 
		    	$cateid_d1 = $rs['cateid'];
		    	//$sql2 ="Select * from catepage where followid=".$cateid_d1." and depth=2 and ishome=1   order by orderid";
		    	$sql2 ="Select * from catepage where followid={$cateid_d1} and depth=2 and ishome=1  order by orderid";		    	
				foreach ($dbh->query($sql2) as $rs2 ):?>
				<li> <a href="<?php echo $rs2['OutLinkUrl']?>"><?php echo $rs2['catename']; ?></a></li>
				<?php endforeach;?>			
				
		    </ul>
                            <!-- /.nav-second-level -->
</li>

<?php endforeach;?>

                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

<!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"><?php echo $curpagetitle;?></h1>
                    </div>
                    <!-- /.col-lg-12 -->
</div>
                     <!-- /.row -->
                <div class="row">
                  <div class="panel panel-default">
                       <!--  <div class="panel-heading">
                            Kitchen Sink
                        </div> -->
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">

