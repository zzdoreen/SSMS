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

<title>My JSP 'addScore.jsp' starting page</title>

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
	width: 5%;
	height: 44px;
}

font {
	color: red;
	font-weight: bold;
}
</style>

<script type="text/javascript">
	function numChenked() {
		var xhr = null;
		if (XMLHttpRequest) {
			xhr = new XMLHttpRequest();
		} else {
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}

		if (xhr != null) {

			var stuNum = document.getElementById("num");

			var url = "ServletFindStu";
			//	var url="ServletFindStu?stunum="+stuNum.value;
			xhr.open("post", url, true);
			xhr.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			//	xhr.send();
			xhr.send("stunum=" + stuNum.value);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					xmlDoc = xhr.responseXML;
					txt = "";
				
					x = xmlDoc.getElementsByTagName("title");
					for (i = 0; i < x.length; i++) {
						txt = x[i].childNodes[0].nodeValue;
						
						document.getElementById("a"+i).value =txt;
					}
					
				}
				
			};
		}

	}
</script>
</head>

<body>
	<form action="ServletaddScore" method="post">
	




		<div class="div_ads">
			<table>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;号：</td>
					<td><input type="text" name="stuNum" class="put form-control" id="num"
						onblur="numChenked();" />
						
					</td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp;&nbsp;名：</td>
					<td><!-- <input type="text" name="stuName" class="put"
						id="i0" /> -->
						<input type="text" id="a0" name="stuName" class="put form-control">
					</td>
				</tr>
				<tr>
					<td>班&nbsp;&nbsp;&nbsp;级：</td>
					<td><!-- <input type="text" name="stuClass" class="put"
						id="i1" /> -->
						<input type="text" id="a1" name="stuClass" class="put form-control">
					</td>
				</tr>

				<tr>
					<td>科&nbsp;&nbsp;&nbsp;目：</td>
					<td><input type="text" name="courseName" class="put form-control" />
					</td>
				</tr>
				<tr>
					<td>成&nbsp;&nbsp;&nbsp;绩：</td>
					<td><input type="text" name="scoreGrade" class="put form-control" id="tim" />
					</td>
				</tr>
				<tr>
					<td>专&nbsp;&nbsp;&nbsp;业：</td>
					<td><!-- <input type="text" name="major" class="put" id="i2"
						 /> -->
						 <input type="text" id="a2" name="major" class="put form-control">
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="添加" class="putb btn btn-primary" />
					</td>
					<td><input type="reset" value="清空" class="putb btn btn-danger" />
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
