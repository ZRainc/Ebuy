<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单管理</title>
</head>
<body>
<div class="container">
   <h2>我的订单</h2>
   <table class="table table-hover">
            <c:forEach items="${requestScope.order_list }" var="order">
                <c:forEach items="${order.product }" var="product">    
            <tr>
			<th class="thtd">图片</th>
			<th class="thtd">名称</th>
			<th class="thtd">价格</th>
			<th class="thtd"><font color="blue">购买</font></th>
			<th class="thtd"><font color="red">删除</font></th>
		    </tr>
	  
    
			<tr>
				<td><img src="image/${product.image}"></td>
				<td>${product.name}</td>
				<td>${product.price}</td>
			<td>
			<a class="btn btn-info" href="saveorder?product_id=${product.id}" role="button">立即购买</a>
		    </td>
		    <td>
			<a class="btn btn-danger" href="removeorder?product_id=${product.id}" role="button">删除</a>
		    </td>
		  </tr>
		</c:forEach>  
		</c:forEach>		
        </table>
 </div>
</body>
</html>