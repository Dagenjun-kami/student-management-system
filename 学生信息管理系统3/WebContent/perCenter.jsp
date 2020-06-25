<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.test1.loginServlet.LoginServlet"%>
<%@ page import="com.test1.db.StudentDb"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="calender/css/bootstrap.min.css" />
<link rel="stylesheet" href="calender/css/dcalendar.picker.css" />
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
					<b class="caret"></b>
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
							<i class="fa fa-sign-out"></i><a href="login.jsp"> 退出登入界面</a>
						</div>
					</div>
				</div></li>
		</ul>
	</div>
	</nav>
	</div>
	<div class="menu">
		<ul class="nav nav-pills nav-stacked">
			<li><a href="indexAdmin.jsp"style="color:#F4E9E7">首页</a></li>
			<li class="active"><a>个人中心</a></li>
			<li><a href="mailBox.jsp"style="color:#F4E9E7">收件箱</a></li>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-8 col-md-offset-3 ">
			<div class="panel panel-default">
				<form class="form-horizontal">
					<div class="modal-header">
						<h3>个人信息</h3>
					</div>
						<div class="form-group" style="margin-top:10px;">
							<label for="mobile" class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="username"
									value="<%=username%>">
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">账号</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="userid"
									value="<%=userid%>" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="mobile" class="col-sm-2 control-label">手机号码</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="mobile"
									value="15567890283">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">所属角色</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="userid" value="管理员"
									readonly="readonly">

							</div>
							<div class="col-sm-4 tips"></div>
						</div>
						<div class="form-group">
							<label for="regtime2" class="col-sm-2 control-label">出生日期</label>
							<div class="col-sm-6">
								<input type="text" id='mydatepicker2' class="form-control"
									value="1998-10-28">
							</div>
						</div>
						<div class="form-group">
							<label for="exampleInputFile" class="col-sm-2 control-label">头像</label> 
							<div class="col-sm-6">
							<input type="file" class="load" id="exampleInputFile">
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="submit">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="calender/js/dcalendar.picker.js"></script>
	<script type="text/javascript">
		$('#mydatepicker2').dcalendarpicker({
			format : 'yyyy-mm-dd'
		});
	</script>
</body>
</html>