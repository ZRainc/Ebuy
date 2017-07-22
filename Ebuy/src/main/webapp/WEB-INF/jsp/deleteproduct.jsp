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
   <table class="table table-hover">
            <c:forEach items="${requestScope.product_list }" var="p"> 
			<tr>    
            <tr>
			<th class="thtd">编号</th>
			<th class="thtd">名称</th>
			<th class="thtd">价格</th>
			<th class="thtd">描述</th>
			<th class="thtd">图片</th>
			<th class="thtd"><font color="red">操作</font></th>
		    </tr>
				<td>1</td>
				<td>${p.name}</td>
				<td>${p.price}</td>
				<td>${p.descripts}</td>
				<td><img src="images/${p.image}"></td>
		    <td>
			<a class="btn btn-danger" href="removeproduct?id=${id}" role="button">删除</a>
		    </td>
 		  </c:forEach>
        </table>
 </div>
 <div class="container">
			<div class="products">
					<h2 class=" products-in">PRODUCTS</h2>
					<div class=" top-products">
						<div class="col-md-3 md-col">
						<c:forEach items="${requestScope.product_list }" var="p">
							<div class="col-md">
								 <div class="thumbnail"> <img src="images/${p.image }" alt="Thumbnail Image 1" class="img-responsive">
								<div class="compare">
									<span>查看</span>
								</div>	
								<div class="top-content">
									<h5><a href="single.html">Popular belief</a></h5>
									<div class="white">
										<p>${p.price }</p>
										<p><a href="product.action?id=${p.id }" class="btn btn-warning" role="button"> 立即购买</a></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
					<div class="clearfix"></div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>