<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.test1.db.StudentDb"%>
<%@ page import="com.test1.entity.Student"%>
<%@ page import="com.test1.loginServlet.LoginServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	color: RGB(176, 196, 222);
	background: url("img/背景3.jpg") no-repeat;
	background-size: 100%;
}

.menu {
	background: #354144;
}

.navbar {
	border-radius: 0px;
	background-color: rgba(0, 0, 0, .5);
}

#footer {
	z-index: -999;
	position: fixed;
	bottom: 0;
	width: 100%;
	height: 100px;
	margin: 30px 0 0;
	padding: 15px 0;
	text-align: center;
	color: rgb(255,255,255);
	text-shadow:3px 3px 3px  black;
}

.card-title {
	padding: 0px 20px 18px 20px;
	text-shadow: 3px 3px 3px rgb(251, 251, 251);
}

.card {
	position: absolute;
	top: 23%;
	left: 34%;
	height: 330px;
	background-color: rgba(0, 0, 0, .6);
	border-radius: 15px;
	padding: 20px 15px;
	color: rgb(251, 251, 251);
}

.button {
	position: absolute;
	left: 33%;
}

.btn-primary {
font-size:20px;
	color: rgb(251, 251, 251);
	background-color: rgb(70, 96, 145);
	border-color: rgb(70, 96, 145);
	border-radius: 15px;
	margin: 7px;
}
</style>
<title>管理员主页</title>
</head>
<body>
	<%
		String username = request.getSession().getAttribute("username").toString();
	%>
	<%
		String userid = request.getSession().getAttribute("userid").toString();
	%>
	<nav class="navbar" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">		
			<a class="navbar-brand" href="indexAdmin.jsp"> <img src="img/logo.png" style="max-width:120px;margin-top:-7px"></a>
		</div>

		<p class="navbar-text navbar-left" style="color: #e9e7ef">
			欢迎，管理员<%=username%></p>
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
	<div class="card">
		<div class="card-body">
			<h1 class="card-title">欢迎使用学生信息管理系统</h1>
			<p class="card-text"></p>
			<div class="button">
				<a href="stuForm.jsp" class="btn btn-primary btn-lg" role="button">学生信息管理</a></br>
				<a href="stuGrade.jsp" class="btn btn-primary btn-lg" role="button">学生成绩管理</a></br>
				<a href="userForm.jsp" class="btn btn-primary btn-lg" role="button">用户账号管理</a>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="copyright">
			<span> Copyright © 2020 kami233 </br></span> <span> Powered by you
				🧦 Theme in <a href="https://github.com/Dagenjun-kami">dagenjun-kami</a>
				v1.0
			</span>
		</div>
	</div>
</body>
</html>