<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script language="javascript" type="text/javascript" src="js/loginForm.js"> </script>  
</head>
<body>
  <div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
				<a href="register">没有账号？注册一个</a>
				</div>
				</div>
			</div>
			</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="index.html"><i> </i>首页</a></li>
					<li ><a href="#" >所有分类</a>
						<ul class="drop">
							<li><a href="products.html">阿迪达斯</a></li>
							<li><a href="products.html">耐克</a></li>
							<li><a href="products.html">AJ</a></li>
							<li><a href="products.html">李宁</a></li>
							<li><a href="products.html">亚瑟士</a></li>
						</ul>
						</li> 
												
						<li><a href="products.html" >阿迪达斯</a></li>            
						<li><a href="products.html" >耐克</a></li>						  				 
						<li><a href="products.html" >AJ</a></li>
						<li><a href="products.html" >李宁</a></li>
						<li><a href="products.html" >亚瑟士</a></li>
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="container">
		<div class="account">
				<div class="form-bottom">
			        <form class="form-horizontal" action="login" method="post" >
			            <div class="form-group">
                            <i class="fa fa-user fa-lg"></i>
			                <label class="sr-only" for="loginname">loginname</label>
			                <input type="text" name="loginname" placeholder="用户名" class="form-username form-control" id="loginname" value="${loginname}">
			            </div>
			            <div class="form-group">
                            <i class="fa fa-lock fa-lg"></i>
			                <label class="sr-only" for="password">Password</label>
			                <input type="password" name="password" placeholder="密码" class="form-password form-control" id="password" value="${password}">
			            </div>
                        <div class="form-group">  
                            <label class="rember-me">
   							<input type="checkbox" id="chkRememberPass" name="chkRememberPass">
                  			记住密码 
							</label>  
        					</div>  
                        <a href="findpassword">忘记密码</a>
                        <a href="newpassword">修改密码</a>
                        <hr><hr>  
			            <button type="submit" class="btn btn-success" onclick="userLogin()">登录</button>
			        </form>
		        </div>
		</div>
	</div>
		<div class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="footer-top-in">
						<h6>关于我们</h6>
						<p>网站</p>
					</div>
					<div class="footer-top-in">
						<h6>信息</h6>
						<ul>
							<li><a href="#">关于我们</a></li>
							<li><a href="#">配送信息</a></li>
							<li><a href="#">隐私政策</a></li>
							<li><a href="#">条款和条件</a></li>
						</ul>
					</div>
					<div class="footer-top-in">
						<h6>客服服务</h6>
						<ul>
							<li><a href="contact.html">联系我们</a></li>
							<li><a href="#">返回</a></li>
							<li><a href="#">网站地图</a></li>
						</ul>
					</div>
					<div class="footer-top-in">
						<h6>我的账户</h6>
						<ul>
							<li><a href="account.html">我的账户</a></li>
							<li><a href="#">订单历史</a></li>
							<li><a href="wishlist.html">愿望清单</a></li>
							<li><a href="#">通讯</a></li>
						</ul>
					</div>
					<div class="footer-top-in">
						<h6>附加功能</h6>
						<ul>
							<li><a href="#">品牌</a></li>
							<li><a href="#">礼券</a></li>
							<li><a href="#">关联公司</a></li>
							<li><a href="#">特价</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<p class="footer-class">Copyright@毒物</p>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>
