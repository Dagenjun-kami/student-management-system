<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <link rel="stylesheet" href="style.css">
   <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>

 </head>

<style>
body {
	color: RGB(176, 196, 222);
	background: url("img/背景.jpg") no-repeat;
	background-size: 100%;
}
.navbar {
	border-radius: 0px;
	background-color: rgba(0, 0, 0, .5);
}</style>
<body>

<div class="box">
<div class='title'>学生信息管理系统</div>
<div class="content">
<div id="User" style="display:block">
   <form action="LoginServlet" method="post" class="index">
   <div class="inputBox" placeholder='UserID'><input type="text" class="a" name="userid" ><div class="msg">${msg1}</div></div>
     <div class="inputBox" placeholder='Password'><input type="password" class="a" name="password"><div class="msg">${msg2}</div></div>
     <div >${msg8}</div>
     <button class="a" type="submit">LOGIN</button>
   </form>
   </div>  
</div>
</div>

<script>

     $('.inputBox input').on('focus',function(){
        $(this).parent().addClass('focus');
    })

    $('.inputBox input').on('blur',function(){
        if($(this).val() === '')
            $(this).parent().removeClass('focus');
    })
    </script>
</body>

</html> 
    
