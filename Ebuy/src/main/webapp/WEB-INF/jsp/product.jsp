<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
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
						<li><a href="collect.action?username=${ sessionScope.user.username }" >我的收藏</a></li>
                		<li><a href="order">我的订单</a></li>
                		<li><a href="cart"  class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> <strong>购物车</strong> </a>  </li>  
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
 <div class="container" >
 		<c:forEach items="${requestScope.p_list }" var="product">
   <div class="col-md-1" >
   				
     <div class="row">
        <div class="thumbnail"> <img src="images/${product.image }" alt="Thumbnail Image 1" class="img-responsive"></div>
     </div>
   
      <div class="row">
        	<div class="thumbnail"> <img src="images/${product.image2 }" alt="Thumbnail Image 2" class="img-responsive"></div>
      </div>
      
      <div class="row">
      		<div class="thumbnail"> <img src="images/${product.image3 }" alt="Thumbnail Image 3" class="img-responsive"></div>
      </div>
       
      <div class="row">
       		<div class="thumbnail"> <img src="images/${product.image4 }" alt="Thumbnail Image 4" class="img-responsive"></div>
      </div>
    </div>
   <div class="col-md-6" >
   		<div class=" text-center"> <img src="images/${product.image }"  style="width:450px"></div>
   </div>
   <div class="col-md-4 col-md-offset-1">
   		<div><p align="left">${product.name}</p> </div>
        <br>
        <div class="panel panel-default">
            <div class="panel-heading">
                <p>${product.descripts}</p>
            </div>
        </div>
 		<div class="available">
								<ul>
									<li>颜色:
										<select>
										<option>黑色</option>
										<option>红色</option>
										<option>蓝色</option>
										<option></option>
									</select></li>
								<li>尺码:<select>
									<option>39</option>
									<option>40</option>
									<option>41</option>
									<option>42</option>
									<option>43</option>
								</select></li>
								<li>数量:<select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select></li>
							</ul>
						</div>
        <p>价格  ${product.price}   </p>
       	<div class="row">          
         </div>  
             <div class="col-md-6">库存：${product.stock}   件</div> 
         <br><br> 
         
         
        <div class="row">
            <div class="col-md-5  col-md-offset-1">
                 <p><a href="savecollect?product_id=${product.id}&user_id=${user.id}" class="btn btn-danger btn-lg " role="button"> 加入收藏夹</a></p>
            </div>          
         </div>
        <div class="row">
            <div class="col-md-5  col-md-offset-1">
                  <p><a href="save?product_id=${product.id}&user_id=${user.id}" class="btn btn-danger btn-lg " role="button"> 加入购物车</a></p>
            </div>
           </div>          
        </div> 
   </c:forEach>
   </div>   
 <hr>
 <div class="container">
 <form action="product.comment" method="post">
 <c:forEach items="${requestScope.comment_list }" var="c">
  <div class="row">
            <h1 class="text-left">商品评论</h1>
    </div>
   <div class="row">
   		<div class="col-md-2">
           <p>用户名 ${c.username}</p>
        </div>
        <div class="col-md-10">
        <div class="row">
         	<ul>
            	<li>商品质量:   <a class="text-danger">${c.quality}分 </a></li>
            	<li>卖家服务:   <a class="text-danger">${c.service}分 </a> </li>
                <li>物流服务:   <a class="text-danger">${c.logistics}分 </a></li>
            </ul> 
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <p>${c.comments}</p>
            </div>
            <div class="row">
            <div class="col-md-2 col-md-offset-2">
             <img src="1.jpg" class="img-responsive">
            </div>
            <div class="col-md-2">
             <img src="1.jpg" class="img-responsive">
            </div>
            </div>
        </div>
             
        </div>
   </div>
   </c:forEach>
   
   </form>
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
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>