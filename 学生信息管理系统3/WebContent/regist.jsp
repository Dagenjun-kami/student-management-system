<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <link rel="stylesheet" href="style.css">
</head>

<body>
<img src="img/背景.jpg" alt="" width="1480">
<div class="box">
 <div class="switch">
      <span id='login' >Login</span>
      <span>/</span>
      <span id='signup'class='active'>Sign Up</span>
</div>
<div class="content">
<div id="Login" style="display:none">
   <form action="LoginServlet" method="post" class="index">
   <div class="inputBox" placeholder='Username'><input type="text" class="a" name="username" ><div class="msg">${msg1}</div></div>
     <div class="inputBox" placeholder='Password'><input type="password" class="a" name="password"><div class="msg">${msg2}</div></div>
     <button type="submit">LOGIN</button>
   </form>
   </div>
<div id="Regis" style="display:block">
   <form action="RegistServlet" method="post" class="index">
     <div id='email' class="inputBox" placeholder='Email'><input type="text" class="a" name="email" ><div class="msg">${msg3}</div></div>
     <div class="inputBox" placeholder='Username'><input type="text" class="a" name="username"><div class="msg">${msg4}</div></div>
     <div class="inputBox" placeholder='Password'><input type="password" class="a" name="password"><div class="msg">${msg5}</div></div>
     <div id='repeat' class="inputBox" placeholder='Repeat'><input type="password" class="a" name="repeat"><div class="msg">${msg6}</div></div>
     <button type="submit">SIGNUP</button>
   </form>
</div>
  
</div>
</div>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script>
    $('#login').click(function(){
        $('.switch span').removeClass('active');
        $(this).addClass('active');
        Regis.style.display="none";
        Login.style.display="block";
        
    })

    $('#signup').click(function(){
        $('.switch span').removeClass('active');
        $(this).addClass('active');
        Login.style.display="none";
        Regis.style.display="block";

    })
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