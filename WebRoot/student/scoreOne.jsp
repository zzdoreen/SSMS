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
    
    <title>My JSP 'scoreOne.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
.div_list {
	width:75%;
	margin: auto;
	margin-top: 50px;
	margin-left:20%;
}

.div_select{
	width:75%;
	margin: auto;
	margin-top: 50px;
	margin-left:20%;
}
font {
	color: red;
	font-weight: bold;
	text-align: center;
}
table{
margin:0 auto;

}
table tr td{
text-align: center;
width:150px;
height:40px;
}
a{
text-decoration: none;
cursor: pointer;
}
#form1{
width:200px;
display: inline-block
}
</style>


  </head>
  
  <body>
  <div class="div_select">
  	<form action="ServletOneStudentScore" method="post">
  	课程名：<input type="text" class="cosName form-control" id="form1"  name="cosName" /> <input type="submit" class="btn btn-primary" value="查询" />
  	</form>
  </div>
    
    <div class="div_list">
		<div class="panel panel-default">
			<div class="panel-heading">成绩信息</div>
		<table class="table" style="width: 100%">
			<tr>
				<td>科目</td>
				<td>学分</td>
				<td>学时</td>
				<td>任课教师</td>
				<td>专业</td>
				<td>开课时间</td>
				<td>成绩</td>
				
			</tr>
			<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.getCourseName() }</td>
				<td>${list.getCourseCredit() }</td>
				<td>${list.getCourseHours() }</td>
				<td>${list.getCourseTeacher() }</td>
				<td>${list.getMajor() }</td>
				<td>${list.getCourseDate() }</td>
				<td>${list.getScoreGrade() }</td>
				
			</tr>
			</c:forEach>
			
		</table>
	</div>
	
  </body>
</html>
