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
            
 <li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 网站页面<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">   
     <li> <a href="/admin/catepage/companyadd.asp">添加页面</a></li>
      <li> <a href="/admin/catepage/companyall.asp">页面管理</a></li>

      </ul>
      </li>   
         

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 网站架构<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/category/companyadd.asp">添加栏目</a></li>

<li> <a href="/admin/category/companyall.asp">栏目管理</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


   

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 信息管理<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/news/news_add.asp">添加信息</a></li>

<li> <a href="/admin/News/CompanyAll.asp">信息管理</a></li>

<li> <a href="/admin/news/news_manage.asp">所有信息</a></li>

<li> <a href="/admin/news/news_manage_recycle.asp">回收站</a></li>

<li> <a href="/admin/news/file_manage.asp">附件清理</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


   

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 项目管理<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/news2/news_manage.asp">项目管理</a></li>

<li> <a href="/admin/news2/news_add.asp">添加项目</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


   

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 广告系统<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/ad/ad_sort.asp">广告分类</a></li>

<li> <a href="/admin/ad/ad_add.asp">发布广告</a></li>

<li> <a href="/admin/ad/ad_manage.asp">广告管理</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


   

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 管理员管理<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/manager/Manage_Admin.asp">管理员管理</a></li>

<li> <a href="/admin/manager/ad_sort.asp">管理员分组</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


   

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 系统管理<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/databak/admin_sqldb_bak.asp">sqlserver备分</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


   

<li>
    <a href="#"><i class="fa fa-list fa-fw"></i> 系统配置<span class="fa arrow"></span></a>
    <ul class="nav nav-second-level">                                
    
<li> <a href="/admin/config/admin_main.asp">查看</a></li>

<li> <a href="/admin/config/SiteConfig.asp">网站配置</a></li>

    </ul>
                            <!-- /.nav-second-level -->
</li>


  

                       
                        
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
                        <h1 class="page-header">操作管理</h1>
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

