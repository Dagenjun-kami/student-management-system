<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息页面</title>
    <link rel="stylesheet" href="style.css">
</head>
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
	  width:4rem;
}
input.a{
	color:RGB(119,136,153);
	border-bottom:1px solid RGB(176,196,222);	
	
}
.box{
      width:300px;
      top:15%;
      }

</style>
 
<body>
<div class="box" >
    <div style="height: 10px " ></div>
    <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
    <form action="stuAdd.jsp" style="text-align: center;">
        <%-- 表格使用align="center"居中显示 --%>
        <h2><div align="center">添加学生信息</div></h2>
        <table align="center">
            <tr>
                <td>学号：</td>
                <td>
                    <input id="id" name="id" class="a" placeholder="" required >
                </td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input id="name" name="name" class="a" placeholder="" required>
                </td>
            </tr>
            <tr>
                <td>生日：</td>
                <td><input id="birth" name="birth" class="a" placeholder="" required>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td> <label class="radio-inline">
                        <input type="radio" name="sex" id="sex1" value="男" checked> 男
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="sex" id="sex0" value="女"> 女
                    </label>
                </td>
            </tr>
                        <tr>
                <td>手机号：</td>
                <td><input id="telnum" name="telnum" class="a" placeholder="" required>
                </td>
            </tr>
            <tr>
                <td>专业：</td>
                <td><input id="major" name="major" class="a" placeholder="" required>
                </td>
            </tr>
                        <tr>
                <td>地址：</td>
                <td><input id="place" name="place" class="a" placeholder="" required>
                </td>
            </tr>
            <tr><td colspan="2"><font color=RGB(135,206,250) size="2"> ${msg}</font></td></tr>
            
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" class="button" value="增加">
                </td>
                <td>
                    <input type="button" class="button" value="重置" onclick="window.location.href='stuAddForm.jsp'">
                </td>
                <td>
                    <input type="button" class="button" value="返回" onclick="window.location.href='stuForm.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
<script>
var authority = $('input:radio[name="sex"]:checked').val();    <%-- 获取单选框取值  --%>
</script>
</body>
</html>
