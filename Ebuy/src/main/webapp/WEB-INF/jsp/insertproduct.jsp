<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->


	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap3.3.5.min.js"></script>

</head>
<body>
<h3>请填写商品信息</h3>
<div class="ts">
	
<form  action="addproduct" method="post">
	<font color="red">${requestScope.message}</font>
	<div class="input-group ipt">
  		<span class="input-group-addon" id="basic-addon1">名称</span>
  		<input type="text" name="name" id="name" tabindex="1" class="form-control">
  	  	</div>
  	<div class="input-group ipt">
  		<span class="input-group-addon" id="basic-addon1">价格</span>
  		<input type="text" name="price" id="price" tabindex="1" class="form-control">
  	  	</div>
  	<div class="input-group ipt">
  		<span class="input-group-addon" id="basic-addon1">描述</span>
  		<input type="text" name="descripts" id="descripts" tabindex="1" class="form-control">
  	  	</div>
	
   	<div class="input-group">
    		 <label for="inputfile">图片1</label>
	    	 <input type="file" id="image" name="image" class="form-control" >
	  </div>	
	<div class="input-group">
    		 <label for="inputfile">图片2</label>
	    	 <input type="file" id="image2" name="image2" class="form-control" >
	  </div>
  	<div class="input-group">
    		 <label for="inputfile">图片3</label>
	    	 <input type="file" id="image3" name="image3" class="form-control" >
	  </div>
  	<div class="input-group">
    		 <label for="inputfile">图片4</label>
	    	 <input type="file" id="image4" name="image4" class="form-control" >
	  </div>
	<div class="input-group ipt">
  		<span class="input-group-addon" id="basic-addon1">库存</span>
  		<input type="text" name="stock" id="stock" tabindex="1" class="form-control">
  	  	</div>
  	 <div class="input-group ipt">
  		<span class="input-group-addon" id="basic-addon1">类别</span>
  		<input type="text" name="category_id" id="category_id" tabindex="1" class="form-control">
  	  	</div>
	<button type="submit" class="btn btn-default btn-lg" >提交</button> 
	</form>		
 </div>

</body>
</html>