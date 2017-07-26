<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
   <h2>类别</h2>
   <table class="table table-hover">
            <c:forEach items="${requestScope.category_list }" var="category">     
            <tr>
			<th class="thtd">ID</th>
			<th class="thtd">类别</th>
		    </tr>
			<tr>
				<td>${category.id}</td>
				<td>${category.type}</td>
				<td>
		<a class="btn btn-info" href="removecategory?id=${category.id}" role="button">删除类别</a> 
		    </td>
		  </tr>
 		</c:forEach>  		 
        </table>
 </div>
</body>
</html>