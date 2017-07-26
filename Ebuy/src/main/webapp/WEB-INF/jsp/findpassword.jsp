<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<title>找回密码</title>
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
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
</head>
<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
						<a href="loginForm">已有账号？直接登录</a></div>
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
							<li><a href="adidas" >阿迪达斯</a></li>            
						<li><a href="nike" >耐克</a></li>						  				 
						<li><a href="aj" >AJ</a></li>
						<li><a href="lining" >李宁</a></li>
						<li><a href="asics" >亚瑟士</a></li>
						</ul>
						</li> 
												
						<li><a href="adidas" >阿迪达斯</a></li>            
						<li><a href="nike" >耐克</a></li>						  				 
						<li><a href="aj" >AJ</a></li>
						<li><a href="lining" >李宁</a></li>
						<li><a href="asics" >亚瑟士</a></li>
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
<div class=" container">
    <div class="row">
			<div class="col-md-6 col-md-offset-3" style="padding:100px  0px 0px 0px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<p><strong>请输入确认信息找回密码</strong></p> 
							</div>
						</div>
						<hr>
					</div>
		  	 <form action="find" method="post"> 
		  	   <font color="red">${requestScope.message }</font>
		  	 <div class="col-md-12 ">
		  	     <div class="row">
						<div class="form-group">
                           <div class="col-md-3 ">  用 户 名：</div>
                           <div class="col-md-9">
                                   <input type="text" name="loginname" id="loginname" tabindex="1" class="form-control" placeholder="请输入你的用户名" value="">
                           </div> 
		   		        </div>
		   		        <div class="form-group">
                           <div class="col-md-3">  邮箱地址：</div>
                           <div class="col-md-9">
                                   <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="请输入注册使用的邮箱" value="">
                           </div> 
		   		        </div>
				        <div class="form-group">
							<div class="row">
								<div class="col-sm-5 col-sm-offset-4">
									<button type="submit" class="btn btn-default btn-lg" >立即找回</button>
								</div>
							</div>
						</div>
			</div>
			</div>
		</form>
	</div>
	</div>
	
	</div>
</div>
<div class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="footer-top-in">
						<h6>关于我们</h6>
						<p>卖鞋网站</p>
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

