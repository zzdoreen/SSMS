<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
.div_pwd {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 20%;
}
#tableClass{
margin:0 auto;
width: 100%

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
height:50px;
}
</style>

</head>

<body>
	<div class="div_pwd panel panel-default">
		<div class="panel-heading">个人信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>账&nbsp;&nbsp;号：</td>
				<td>${usernum }</td>
			</tr>
			<tr>
				<td>姓&nbsp;&nbsp;名：</td>
				<td>${username }</td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;码：</td>
				<td>${password }</td>
			</tr>
			
		</table>
	</div>
</body>
</html>
