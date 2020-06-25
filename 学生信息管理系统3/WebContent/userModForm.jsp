<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    
    <title>学生信息修改页面</title>
    <link rel="stylesheet" href="style.css">
<style>
body{
      color:RGB(176,196,222);
      background:url("img/背景4.jpg") no-repeat;
      background-size: 100%;
}
.button{
      background:RGB(176,196,222);
	  border:none;
	  outline:none;
	  color:RGB(119,136,153);
	  cursor:pointer;
	  border-radius:4rem;
	  height:2rem;
	  width:4.5rem;
}
input.a{
	color:RGB(119,136,153);
	border-bottom:1px solid RGB(176,196,222);	
}
.box{
      width:300px;
      }
</style>
</head>
<body>
<img src="img/背景4.jpg" alt="" width="1450">
<div class="box">
    <div style="height: 10px"></div>
    <form action="userMod.jsp" style="text-align: center">
    <h2>用户信息修改</h2>          
        <table align="center">
           
            <tr>
                <td>学号：</td>
                <%-- readonly属性规定字段只能读，不能编辑修改--%>
                <td><input id="id" name="id" class="a" value="<%=request.getParameter("id")%>" readonly></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <%--  required 属性规定必需在提交表单之前填写输入字段  --%>
                <td><input id="name" name="name" class="a" value="<%=request.getParameter("name")%>" required></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input id="password" name="password" class="a" value="<%=request.getParameter("password")%>"></td>
            </tr>
            <tr>
                <td>权限：</td>
                <td>   <label class="radio-inline">
                        <input type="radio" name="authority" id="authority1" value="管理员" > 管理员
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="authority" id="authority0" value="普通用户" checked> 普通用户
                    </label></td>
            </tr>
            
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" class="button" value="确认修改">
                </td>
                <td>
                    <input type="button"  class="button" value="返回" onclick="window.location.href='userForm.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
<script>

$("input[name="authority"]").get(管理员).checked=false;
</script>
</body>
</html>