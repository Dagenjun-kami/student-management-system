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
      top:150px;
      width:300px;
      }
</style>
</head>
<body>
<img src="img/背景4.jpg" alt="" width="1450">
<div class="box">
    <div style="height: 0px"></div>
    <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
    <form action="stuMod.jsp" style="text-align: center">
    <h2>学生信息修改</h2>          
        <table align="center">
           
            <tr>
                <td>学号：</td>
                <%-- readonly属性规定字段只能读，不能编辑修改--%>
                <td><input id="id" name="id" class="a" value="<%=request.getParameter("id")%>"readonly></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <%--  required 属性规定必需在提交表单之前填写输入字段  --%>
                <td><input id="name" name="name" class="a" value="<%=request.getParameter("name")%>" required></td>
            </tr>
            <tr>
                <td>生日：</td>
                <td><input id="birth" name="birth" class="a" value="<%=request.getParameter("birth")%>"></td>
            </tr>
             <tr>
                <td>性别：</td>
                <td> <label class="radio-inline">
                        <input type="radio" name="sex" id="sex1" value="男" checked> 男
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="sex" id="sex0" value="女"> 女
                    </label></td>
            </tr>
            <tr>
                <td>手机号：</td>
                <td><input id="telnum" name="telnum" class="a" value="<%=request.getParameter("telnum")%>"></td>
            </tr>
            <tr>
                <td>专业：</td>
                <td><input id="major" name="major" class="a" value="<%=request.getParameter("major")%>"></td>
            </tr>
            <tr>
                <td>地址：</td>
                <td><input id="place" name="place" class="a" value="<%=request.getParameter("place")%>"></td>
            </tr>
            
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" class="button" value="确认修改">
                </td>
                <td>
                    <input type="button"  class="button" value="返回" onclick="window.location.href='stuForm.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
<script>

$("input[name="sex"]").get(男).checked=false;
</script>
</body>
</html>