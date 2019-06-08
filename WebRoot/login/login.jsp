<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
html, body {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
      background-image: linear-gradient(to bottom, #243949 0%, #517fa4 100%);
      overflow: hidden;
    }
canvas{
	position: absolute;
	top: 0;
	z-index: -1;
}
#_top {
	text-align: center;
	height: 100px;
	font-size: 30px;
	padding-top: 30px;
	letter-spacing: 10px; /*字与字之间的间距*/
}
#_top span{
	color: aliceblue;
}

.div_body {
	height: 400px;
	width: 30%;
	margin: 10% auto;
	position: relative;
	/*background:rgba(255,255,255, 0.3);*/
	background: #fff;
	/*box-shadow: whitesmoke 5px 5px 50px 5px;*/
	border-radius: 6px;
	z-index: 2;
}
#_body {
	width: 100%;
	text-align: center;
}
.msg{
	padding-top: 20px;
	color: #374b5d;
	height: 40px;
}
table{
	margin: 0 10%;
	width: 100%;
	height: 85%;
}
table tr{
	width: 100%;
	height: 15%;
}
table tr td{
	font-size: 20px;
	width: 100%;
}
.input{
	width: 80%;
	height: 55%;
	border-radius: 10px;
	text-align: center;
	font-size: 15px;
	border:1px solid #ccc;
	color: #ccc;

}
.btn {
    color: #ffffff;
    background-color: #40586d;
    border-color: #374b5d;
		width:20%;
		margin-right: 8%;
}
.check{
	width: 13%;

}
</style>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/particle-bg.umd.min.js"></script>

<script type="text/javaScript">
window.onload = function() {
	particleBg('body', {
    color: 'rgba(255, 255, 255, 0.5)'
  });
}
</script>
</head>

<body>
	<div class="div_body">
		<div id="_body">
		<h3 class="msg" style="cursor:default">${massage }</h3>
			<form action="ServletLogin" method="post"
				onsubmit="return checked(this)">
				<table>
					<tr>
						<td><input class="input" type="text" name="ID" placeholder="账号">
						</td>
					</tr>
					<tr>
						<td><input class="input" type="password" name="pwd" placeholder="密码">
						</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="radio" name="role" value="0" checked="checked">学生
							<input class="check" type="radio" name="role" value="1">教师 
							<input class="check" type="radio" name="role" value="2">管理员
						</td>
					</tr>
					<tr>
						<td>
							<input class="btn" type="submit" value="登录">
							<input class="btn" type="button" name="register" value="注册"
							onclick="window.open('register/register.jsp')">
							<input class="btn" type="reset" value="取消">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
