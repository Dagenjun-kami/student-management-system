<%@ page import="com.test1.db.StudentDb" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加用户页面</title>
</head>
<body>
<%
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //获取表单中各个输入框中的值
    String id =request.getParameter("id");//账号
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String authority = request.getParameter("authority");
    
    String sql = "insert into user(id,name,password,authority) values("+id+",'"+name+"','"+password+"','"+authority+"')";
    //调用函数执行SQL语句
    if (sdb.studentUpdate(sql)){
        System.out.println("insert 语句为:"+sql);
        System.out.println("用户"+name+"信息增加成功");
        response.sendRedirect("userForm.jsp");
    }else {
        request.getRequestDispatcher("userAdd.jsp").forward(request,response);
    }
%>
</body>
</html>
