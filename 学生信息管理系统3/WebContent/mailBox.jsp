<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.menu {
	background: #354144;
}
</style>
<body>
	<%
		String username = request.getSession().getAttribute("username").toString();
	%>
	<%
		String userid = request.getSession().getAttribute("userid").toString();
	%>
	<nav class="navbar navbar-default" role="navigation"
		style="background: #354144">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#" style="color: #FFFFFF">学生信息管理系统</a>
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
		</ul>
		</li>
		</ul>
	</div>
	</div>
	</nav>
	<div class="menu">
		<ul class="nav nav-pills nav-stacked">
			<li><a href="indexAdmin.jsp"style="color:#F4E9E7">首页</a></li>
			<li><a href="perCenter.jsp"style="color:#F4E9E7">个人中心</a></li>
			<li class="active"><a>收件箱</a></li>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-8 col-md-offset-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">我的收件箱</h3>
				</div>
				<table class="table">
					<th>内容</th>
					<th>发件人</th>
					<th>时间</th>
					<tr>
						<td>空</td>
						<td>空</td>
						<td>空</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>