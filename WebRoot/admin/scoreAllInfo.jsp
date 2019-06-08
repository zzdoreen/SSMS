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
    
    <title>My JSP 'selectblurScore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">

 <style type="text/css">
.div_list {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 20%;

}
#tableClass{
margin:0 auto;
width: 100%

}
.form1{
	width: 200px;
	display: inline-block
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
cursor:pointer;

}
</style>
<script type="text/javascript">

function page(s){
	var frm=document.getElementById("frm");
	var pageNo=document.getElementById("pageNo");
	pageNo.value=s;
	frm.submit();
}
</script>
  </head>
  
  <body>
  <form action="ServletSearchScore" method="post" id="frm">
    <div class="div_list">
   课程名：<input type="text" class="form-control form1"   name="cosName" value="${score.getCourseName() }" />&nbsp;&nbsp;&nbsp;&nbsp;
  	学&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text"  class="form1 form-control" name="stuNum" value="${score.getStuNum() }" />&nbsp;&nbsp;&nbsp;&nbsp;
  	姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text"  class="form1 form-control" name="stuName" value="${score.getStuName() }" /><br/><br/>
  	班&nbsp;&nbsp;&nbsp;&nbsp;级：<input type="text"  class="form1 form-control" name="stuClass" value="${score.getStuClass() }" />&nbsp;&nbsp;
  	专&nbsp;&nbsp;&nbsp;&nbsp;业：<input type="text"  class="form1 form-control" name="major" value="${score.getMajor() }" /> &nbsp;&nbsp;
		<input type="submit" class="btn btn-primary" value="查询" /><br/><br/>
		<div class=" panel panel-default">
			<div class="panel-heading">成绩信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>学号</td>
				<td>姓名</td>
				<td>班级</td>
				<td>科目</td>
				<td>成绩</td>
				<td>专业</td>
				<td>操作</td>
			</tr>
			<c:forEach var="list" items="${list.pbjs }">
			<tr>
				<td>${list.getStuNum() }</td>
				<td>${list.getStuName() }</td>
				<td>${list.getStuClass() }</td>
				<td>${list.getCourseName() }</td>
				<td>${list.getScoreGrade() }</td>
				<td>${list.getMajor() }</td>
				<td><a href="ServletSelectScore?scoreID=${list.getScoreID() }">修改</a>&nbsp;&nbsp;&nbsp;<a href="ServletDeleteScore?scoreID=${list.getScoreID() }" onclick="return confirm('是否确认删除？')">删除</a></td>
				
			</tr>
			</c:forEach>
			<tr>
					<td colspan="7">
						<a onclick="page(1);">首页</a> 
						<c:if test="${list.isPrevious() }">
							<a onclick="page(${list.pageNo-1});">上一页</a>
						</c:if> 
						<c:if test="${(list.pageNo+1)<list.totalPage }">
						<a onclick="page(${list.pageNo+1 });">${list.pageNo+1 }</a>
						</c:if> 
						<c:if test="${(list.pageNo+2)<list.totalPage }">
						<a onclick="page(${list.pageNo+2 });">${list.pageNo+2 }</a>
						</c:if> 
						<c:if test="${list.isNext() }">
							<a onclick="page(${list.pageNo+1});">下一页</a>
						</c:if> 
						<a onclick="page(${list.totalPage });">最后一页</a> <br /> 
						跳转到：<input class="form-control form1"
						id="pageNo" type="text" name="pageNo" value="${list.pageNo }" />
						每页记录数：<input type="text" name="pageCount" class="form-control form1"
						value="${list.pageCount }" /> 
						
						<input
						type="submit" class="btn btn-primary" value="跳转" /> 共有${list.totalPage }页</td>
				</tr>
		</table>
	</div>
	</div>
	</form>
  </body>
</html>
