<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
.div_ads {
	width:75%;
	margin: auto;
	margin-top: 50px;
	margin-left:20%;
}
.attr {
	letter-spacing:20px;
}
font{
	color:red;
	font-weight: bold;
}
</style>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
		
	
		<div class="div_ads"><font>${msg }</font>
				<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">个人详细信息</div>
					  
						<!-- Table -->
						<c:forEach var="list" items="${list }">
						<table class="table" style="width: 100%">
						  <tr>
							  <td class="attr">学号:</td>
							  <td>${list.getStuNum() }</td>
						  </tr>
						  <tr>
								<td class="attr">姓名:</td>
								<td>${list.getStuName() }</td>
							</tr>
							<tr>
								<td class="attr">性别:</td>
								<td>${list.getStuSex()}</td>
							</tr>
							<tr>
								<td class="attr">年龄:</td>
								<td>${list.getStuAge() }</td>
							</tr>
							<tr>
								<td class="attr">班级:</td>
								<td>${list.getStuClass() }</td>
							</tr>
							<tr>
								<td class="attr">专业:</td>
								<td>${list.getMajor() }</td>
							</tr>
							<tr>
								<td class="attr">院系:</td>
								<td>${list.getDepartment()}</td>
							</tr>
						</table>
					</c:forEach>
					  </div>
		</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>


 
