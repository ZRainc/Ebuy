<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>库存管理</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->


	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap3.3.5.min.js"></script>
	<script> 
	$('#myModal').on('shown.bs.modal', function () {
 			 $('#myInput').focus()
});
		$('#myModal2').on('shown.bs.modal', function () {
 			 $('#myInput').focus()
});
	$('#myModal3').on('shown.bs.modal', function () {
 			 $('#myInput').focus()
})
</script>
</head>
<body>
<div class="top">
<table class="table table-hover table-bordered ">
 	 <thead>
 	 		<tr>
	 	 		<th>商品ID</th>
	 	 		<th>商品名称</th>
	 	 		<th>价格</th>
				<th>商品描述</th>	 	 		
	 	 		<th>库存</th>	
				<th>销量</th>
				<th></th>

 	 		</tr>
  	 </thead>
 	 <tbody>
 	 <s:iterator id="list" value="#request.list">
 	 		<tr> 
 	 			<td><s:property value="#list.id"/></td>
 	 			<td><s:property value="#list.name"/></td>
 	 			<td><s:property value="#list.saleprice"/></td>
 	 			<td><s:property value="#list.descripts"/></td>
 	 			<td><s:property value="#list.stock"/></td>
 	 			<td><s:property value="#list.sales"/></td>
 	 			<td><!-- 添加 -->
								<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3">
								  修改
								</button>
								
								<!-- Modal -->
								<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <form action="restock" method="post">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel">填写库存</h4>
								      </div>
								      <div class="modal-body">
								      		<table class="table table-hover wd" >
											 <thead>
										 	 		<tr>
											 	 		<th>库存</th>	
										 	 		</tr>
										  	 </thead>
										 	 <tbody>
										 	 		<tr>
										 	 				
										 	 			<td><input name="stock" class="wd" type="text" value="<s:property value="#list.stock"/>"/>

										 	 				<input name="id"  type="hidden" value="<s:property value="#list.id"/>"/>
										 	 			</td>
										 	 		</tr>
										 	 </tbody>
										 	</table>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								        <button type="submit" class="btn btn-primary">提交</button>
								      </div>
								    </div>
								    </form>
								  </div>
								</div>
 	 			</td>
 	 		</tr>
 	 </s:iterator>
  	 </tbody>
</table>
</div>					
</body>
</html>