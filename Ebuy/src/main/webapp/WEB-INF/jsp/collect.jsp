<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<title>收藏夹</title>
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
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
  <!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
						<div>当前在线人数：${applicationScope.count}</div>
						 <div>${ sessionScope.user.username }</div>
						 <a href ="main">注销</a>
	  					</div>  
		</div>
		</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="main"><i> </i>首页</a></li>
					<li ><a href="shop" >所有分类</a>
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
						<li><a href="collect">我的收藏</a></li>
                		<li><a href="order">我的订单</a></li>
                		<li><a href="cart.action?username=${ sessionScope.user.username }"  class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> <strong>购物车</strong> </a>  </li>
					</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
			<div class="header-bottom-on">
			<p class="wel"><a href="#">欢迎光临</a></p>
			<div class="header-can">
				<div class="search">
					<form>
						<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}" >
						<input type="submit" value="">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>

  <div class="container">
   <h2>我的收藏</h2>
   <table class="table table-hover">
            <c:forEach items="${requestScope.collect_list }" var="collect">
            <c:forEach items="${collect.product }" var="product">
			<tr>    
            <tr>
			<th class="thtd">图片</th>
			<th class="thtd">名称</th>
			<th class="thtd">价格</th>
			<th class="thtd"><font color="blue">购买</font></th>
			<th class="thtd"><font color="red">从收藏夹删除</font></th>
		    </tr>
	  
           
				<td><img src="images/${product.image}" height="70"></td>
				<td>${product.name}</td>
				<td>${product.price}</td>
			<td>
			<a class="btn btn-info" href="save?product_id=${product.id}&user_id=${user.id}" role="button">加入购物车</a>
		    </td>
		    <td>
			<a class="btn btn-danger" href="removecollect?product_id=${product.id}" role="button">删除</a>
		    </td>
		</c:forEach>  
		</c:forEach>		
        </table>
 </div>
  <hr>

 

<div class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="footer-top-in">
						<h6>关于我们</h6>
						<p>我们是一个专门销售各种鞋的网站</p>
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
			<script type="text/javascript">
						$(document).ready(function() {
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>