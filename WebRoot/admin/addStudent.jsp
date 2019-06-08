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

<title>My JSP 'addStudent.jsp' starting page</title>

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
.div_ads {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 10%;
}

table {
	margin: 0 auto;
	width:100%;
	border-collapse:separate; 
	border-spacing:0px 10px;
}

table tr td {
	text-align: center;
	width:150px;
	height:44px;
}

font{
	color:red;
	font-weight: bold;
}
</style>
</head>

<body>
	<form action="ServletaddStudent" method="post">
	
		<div class="div_ads">
		
			<table>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;号：</td>
					<td><input type="text" name="stuNum" class="form-control" /></td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp;&nbsp;名：</td>
					<td><input type="text" name="stuName" class="put form-control" /></td>
				</tr>
				<tr>
					<td>密&nbsp;&nbsp;&nbsp;码：</td>
					<td><input type="text" name="password" class="put form-control" /></td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp;&nbsp;别：</td>
					<td><input type="radio"  name="stuSex" value="男" checked="checked" />男&nbsp;&nbsp;
						<input type="radio" name="stuSex" value="女" />女
					</td>
				</tr>
				<tr>
					<td>年&nbsp;&nbsp;&nbsp;龄：</td>
					<td><input type="text" name="stuAge" class="put form-control" /></td>
				</tr>
				<tr>
					<td>班&nbsp;&nbsp;&nbsp;级：</td>
					<td><input type="text" name="stuClass" class="put form-control" /></td>
				</tr>
				<tr>
					<td>专&nbsp;&nbsp;&nbsp;业：</td>
					<td><input type="text" name="major" class="put form-control" /></td>
				</tr>
				<tr>
					<td>院&nbsp;&nbsp;&nbsp;系：</td>
					<td><input type="text" name="department" class="put form-control" /></td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td><input type="text" name="phone" class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2"><input class="form-control" type="hidden" name="role" value="0" /></td>
					
				</tr>
				<tr>
					<td><input type="submit" value="添加" class="btn btn-primary" /></td>
					<td><input type="reset" value="清空" class="btn btn-danger" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
