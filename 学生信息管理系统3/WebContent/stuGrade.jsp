<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.test1.db.StudentDb"%>
<%@ page import="java.util.List"%>
<%@ page import="com.test1.entity.Grade"%>
<%@ page import="com.test1.loginServlet.LoginServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
	<link rel="stylesheet" href="style.css">
</head>
<style>
body {
	color: RGB(25, 25, 112);
	background: url("img/列表图片.jpg") no-repeat;
	background-size: 100%;
}

td, th {
	/* white-space: nowrap; 文本不换行显示 */
	white-space: nowrap;
	width: 150px;
	height: 35px;
	text-align: center; /*文本居中显示*/
}

.divcenter {
	position: absolute;
	top: 10%;
	left: 30%;
	width: 850px;
	height: 400px;
	/* overflow: auto;当内容溢出时添加滚动条 */
	overflow: auto;
	/* margin: auto;使div块居中显示 */
	margin: auto;
	
}

.button {
	background: RGB(176, 196, 222);
	border: none;
	outline: none;
	color: RGB(25, 25, 112);
	cursor: pointer;
	border-radius: 1rem;
	height: 2rem;
}

table {
	background-color: rgba(255, 255, 255, .6);
	margin-top:15px;
}
        
.menu {

	background-color: rgba(0, 0, 0, .5);
}
.pagination{
    position: absolute;
    left:35%;
}
.navbar {
	border-radius: 0px;
	background-color: rgba(0, 0, 0, .5);
}
</style>

<body>
	<%
		String username = request.getSession().getAttribute("username").toString();
	%>
	<%
		String userid = request.getSession().getAttribute("userid").toString();
	%>
	<nav class="navbar " role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			 <img src="img/logo.png" style="max-width:120px;margin-top:2px;"></a>
		</div>

		<p class="navbar-text navbar-left"></p>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" style="height: 60px"> <img alt=""
					class="img-circle" src="img/头像1.jpg" width="38px" height="38px" />
					<span style="color: #FFFFFF; font-size: 15px"> </span> <b
					class="caret"></b>
			</a>
				<div class="dropdown-menu pull-right"
					style="background: #FFFFFF; width: 200px; overflow: hidden">
					<div style="margin-top: 16px; border-bottom: 1px solid #eeeeee">
						<div style="text-align: center">
							<img class="img-circle" src="img/头像1.jpg"
								style="width: 38px; height: 38px;" />
						</div>
						<div
							style="color: #323534; text-align: center; line-height: 36px; font-size: 15px">
							<span><%=username%></span>
						</div>
					</div>
					<div class="row"
						style="margin-left: 15px; margin-right: 15px; margin-top: 10px">
						<div class="col-md-6 text-center grid">
							<i class="fa fa-user" style="font-size: 25px; line-height: 45px;"></i>
							<p
								style="padding: 0px; margin-top: 6px; margin-bottom: 10px; font-size: 12px">
								<a href="perCenter.jsp">个人中心</a>
							</p>
						</div>
						<div class="col-md-6 text-center grid">
							<i class="fa fa-comments"
								style="font-size: 25px; line-height: 45px;"></i>
							<p
								style="padding: 0px; margin-top: 6px; margin-bottom: 10px; font-size: 12px">
								<a href="mailBox.jsp">收件箱</a>
							</p>
						</div>
					</div>
					<div class="row" style="margin-top: 20px">
						<div class="text-center"
							style="padding: 15px; margin: 0px; background: #f6f5f5; color: #323534;">
							<i class="fa fa-sign-out"></i><a href="login.jsp"> 退出登录</a>
						</div>
					</div>
				</div>
	</div>
	</nav>
	<div class="menu">
		<ul class="nav nav-pills nav-stacked">
			<li><a href="indexAdmin.jsp"style="color:#F4E9E7">主页</a></li>
			<li><a href="stuForm.jsp"style="color:#F4E9E7">学生信息管理</a></li>
			<li class="active"style="color:#F4E9E7"><a>学生成绩管理</a></li>
			<li><a href="userForm.jsp"style="color:#F4E9E7">用户账号管理</a></li>
		</ul>
	</div>
	<div class="divcenter">
		<form action="stuGrade.jsp" style="text-align: center;margin-top: 30px">
			<input id="name" name="name" placeholder="按姓名查询"> <input
				type="submit" class="button" value="查询"> <input
				type="button" class="button" value="添加信息"
				onclick="window.location.href='graAddForm.jsp'">
		</form>
		<table class="table table-hover">
			 <thead>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>学期</th>
					<th>高等数学</th>
					<th>英语</th>
					<th>软件工程</th>
					<th>Oracle</th>
					<th>UI</th>
					<th>javaWeb</th>
					<th colspan="2">操作</th>
				</tr>
				</thead>
				<tr>
					<td>20177719</td>
					<td>肖璐瑶</td>
					<td>2020春</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td><a href="#" style="text-decoration: none">删除</a></td>
					<td><a href="#" style="text-decoration: none">修改</a></td>
				</tr>
				<tr>
					<td>20177721</td>
					<td>李子妍</td>
					<td>2020春</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td>80</td>
					<td><a href="#" style="text-decoration: none">删除</a></td>
					<td><a href="#" style="text-decoration: none">修改</a></td>
				</tr>
		</table>
			<ul class="pagination" >
    <li><a href="#">&laquo;</a></li>
    <li class="active"><a href="#">1</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>
		</div>
		
</body>
</html>