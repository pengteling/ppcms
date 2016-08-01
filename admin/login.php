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

      <form class="form-signin" role="form" method="post" action="checklogin.php" >
        <h2 class="form-signin-heading">请登陆</h2>
        <input type="text" name="username" id="username" maxlength="16" class="form-control" placeholder="用户名" required autofocus>
        <input type="password" name="password" id="password" maxlength="16" class="form-control" placeholder="密码" required>
        <div class="row">
        <div class="col-xs-4">
         <input type="text"  id="checkcode" name="checkcode" maxlength="4" size="6" class="form-control" placeholder="验证码" required/></div>
         <div class="col-xs-8">
         <img src="/lib/code.php" class="validatecode" alt="验证码,看不清楚?请点击刷新验证码"  style="cursor : pointer;" onClick="this.src='/lib/code.php?t='+(new Date().getTime());" /></div>
         </div>
        <!--<div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住登陆
          </label>
        </div>-->
        <button class="btn btn-lg btn-primary btn-block" type="button" id="submit">登陆</button>
      </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/bower_components/jquery/dist/jquery.min.js"></script>
    <script>
    $(function(){
      $(".form-signin #submit").on("click",function(e){
       
        $.ajax({
          type: 'POST',
          url: $(".form-signin").attr("action"),
          data: $(".form-signin").serialize(),
          success: function(data){
            if(data.status==true){
              //alert("成功登陆");
              window.location.href='/admin/index/index.php';
            }
            else{
              alert(data.err);        
              //$(".form-signin .validatecode").click(); //更新验证码      
            }
            $(".form-signin .validatecode").click(); //更新验证码

          },
          dataType: 'json'
        });
        
      })
    })
    </script>
  </body>
</html>
<?php 
//echo md5("pengteling");