<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<!--slider-script-->
		<script src="js/responsiveslides.min.js"></script>
			<script>
				$(function () {
				  $("#slider1").responsiveSlides({
					auto: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			</script>
<!--//slider-script-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
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
					<li class="active"><a href="newuser-main"><i> </i>首页</a></li>
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
						<li><a href="collect.action?username=${ sessionScope.user.username }" >我的收藏</a></li>
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
	<div class="banner-mat">
		<div class="container">
			<div class="banner">
			   <div class="slider">
			<ul class="rslides" id="slider1">
			  <li><img src="images/AJ11_4.png" alt="">
			  </li>
			  <li><img src="images/Rose1.png" alt="">
			  </li>
			  <li><img src="images/AJ11_5.png" alt="">
			  </li>
			  <li><img src="images/AJ1_1.png" alt="">
			  </li>
			</ul>
		</div>

				<div class="banner-bottom">
					<div class="banner-matter">
						<p></p> 
						<a href="cart" class="hvr-shutter-in-vertical ">购买</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>				
			<!-- //slider-->
		</div>
	</div>
		<!---->
		<div class="container">
			<div class="content">
				<div class="content-top">
					<h3 class="future">特色馆藏</h3>
					<div class="content-top-in">
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="product"><img  src="images/pg1.png" alt="" /></a>	
								<div class="top-content">
									<h5><a href="product">保罗乔治1代</a></h5>
									<div class="white">
										<a href="cart" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>

								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="product"><img  src="images/kobe1.png" alt="" />	</a>
								<div class="top-content">
									<h5><a href="product">科比11代</a></h5>
									<div class="white">
										<a href="cart" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>3</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="product"><img  src="images/AJ11_1.png" alt="" /></a>	
								<div class="top-content">
									<h5><a href="product">大魔王</a></h5>
									<div class="white">
										<a href="cart" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>5</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="product"><img  src="images/kyrie1.png" alt="" /></a>	
								<div class="top-content">
									<h5><a href="product">欧文2代</a></h5>
									<div class="white">
										<a href="cart" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>4</span><span>5</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
				</div>
				<!---->
				<div class="content-middle">
					<h3 class="future">品牌</h3>
					<div class="content-middle-in">
					<ul id="flexiselDemo1">			
						<li><img src="images/ap.jpg"/></li>
						<li><img src="images/ap1.jpg"/></li>
						<li><img src="images/ap2.png"/></li>
						<li><img src="images/ap3.jpg"/></li>
					
					</ul>
            		<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>
				</div>
				<!---->
				<div class="content-bottom">
					<h3 class="future">最近新品</h3>
					<div class="content-bottom-in">
					<ul id="flexiselDemo2">			
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img  src="images/wow1.png" alt="" />
								<div class="compare in-compare">
									<span>查看</span>
								</div></a>
								<div class="top-content bag">
									<h5><a href="single.html">韦德之道5代</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>4</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div></li>
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img  src="images/Rose1.png" alt="" />
								<div class="compare in-compare">
									<span>查看</span>
								</div></a>	
								<div class="top-content bag">
									<h5><a href="single.html">玫瑰 罗斯7代</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>5</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div></li>
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img  src="images/NMD1.png" alt="" />
								<div class="compare in-compare">
									<span>查看</span>
								</div></a>	
								<div class="top-content bag">
									<h5><a href="single.html">NMD</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>1</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div></li>
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img  src="images/harden1.png" alt="" />
								<div class="compare in-compare">
									<span>查看</span>
								</div></a>	
								<div class="top-content bag">
									<h5><a href="single.html">哈登1代篮球鞋</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>6</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div></li>
					
					</ul>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
					</div>
				</div>
				<ul class="start">
					<li ><a href="#"><i></i></a></li>
					<li><span>1</span></li>
					<li class="arrow"><a href="#">2</a></li>
					<li class="arrow"><a href="#">3</a></li>
					<li class="arrow"><a href="#">4</a></li>
					<li class="arrow"><a href="#">5</a></li>
					<li ><a href="#"><i  class="next"> </i></a></li>
				</ul>
			</div>
		</div>
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