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
<script language="javascript" type="text/javascript">  
function addCookie(name,value,days,path){   /**添加设置cookie**/  
    var name = escape(name);  
    var value = escape(value);  
    var expires = new Date();  
    expires.setTime(expires.getTime() + days * 3600000 * 24);  
    //path=/，表示cookie能在整个网站下使用，path=/temp，表示cookie只能在temp目录下使用  
    path = path == "" ? "" : ";path=" + path;  
    //GMT(Greenwich Mean Time)是格林尼治平时，现在的标准时间，协调世界时是UTC  
    //参数days只能是数字型  
    var _expires = (typeof days) == "string" ? "" : ";expires=" + expires.toUTCString();  
    document.cookie = name + "=" + value + _expires + path;  
}  
function getCookieValue(name){  /**获取cookie的值，根据cookie的键获取值**/  
    //用处理字符串的方式查找到key对应value  
    var name = escape(name);  
    //读cookie属性，这将返回文档的所有cookie  
    var allcookies = document.cookie;         
    //查找名为name的cookie的开始位置  
    name += "=";  
    var pos = allcookies.indexOf(name);      
    //如果找到了具有该名字的cookie，那么提取并使用它的值  
    if (pos != -1){                                             //如果pos值为-1则说明搜索"version="失败  
        var start = pos + name.length;                  //cookie值开始的位置  
        var end = allcookies.indexOf(";",start);        //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置  
        if (end == -1) end = allcookies.length;        //如果end值为-1说明cookie列表里只有一个cookie  
        var value = allcookies.substring(start,end); //提取cookie的值  
        return (value);                           //对它解码        
    }else{  //搜索失败，返回空字符串  
        return "";  
    }  
}  
function deleteCookie(name,path){   /**根据cookie的键，删除cookie，其实就是设置其失效**/  
    var name = escape(name);  
    var expires = new Date(0);  
    path = path == "" ? "" : ";path=" + path;  
    document.cookie = name + "="+ ";expires=" + expires.toUTCString() + path;  
}  
  
/**实现功能，保存用户的登录信息到cookie中。当登录页面被打开时，就查询cookie**/  
window.onload = function(){  
    var loginnameValue = getCookieValue("loginname");  
    document.getElementById("loginname").value = loginnameValue;  
    var passwordValue = getCookieValue("password");  
    document.getElementById("password").value =passwordValue;  
}  
  
function userLogin(){   /**用户登录，其中需要判断是否选择记住密码**/  
    //简单验证一下  
    var loginname = document.getElementById("loginname").value;  
    if(loginname == ''){  
        alert("请输入用户名。");  
        return;  
    }  
    var password = document.getElementById("password").value;  
    if(password == ''){  
        alert("请输入密码。");  
        return;  
    }  
    var objChk = document.getElementById("chkRememberPass");  
    if(objChk.checked){  
        //添加cookie  
        addCookie("loginname",loginname,7,"/");  
        addCookie("password",password,7,"/");  
        alert("记住了你的密码登录。");  
        window.location.href = "http://www.baidu.com";  
    }else{  
        alert("不记密码登录。");  
        window.location.href = "http://www.baidu.com";  
    }  
}  
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
			<script type="text/javascript">
						$(document).ready(function() {
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>
