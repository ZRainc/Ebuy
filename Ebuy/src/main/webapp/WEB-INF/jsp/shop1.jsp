<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品下架</title>
</head>
<body>
<div class="container">
   <h2>商品下架</h2>
   <table class="products">
            
			<tr>    
			<th class="thtd">编号</th>
			<th class="thtd">名称</th>
			<th class="thtd">价格</th>
			<th class="thtd">描述</th>
			<th class="thtd">图片</th>
			<th class="thtd"><font color="red">操作</font></th>
		    </tr>
		    <c:forEach items="${requestScope.product_list }" var="p">
		    <tr>
			<td>${p.id}</td>
			<td>${p.name}</td>
			<td>${p.price}</td>
			<td>${p.descripts}</td>
			<td><img src="images/${p.image}" height="70"></td>
		    <td>
			<a class="btn btn-danger" href="removeproduct?id=${p.id}">删除</a> 
		    </td>
		    </tr>
 		  </c:forEach>
        </table>
 </div>

</body>
</html>