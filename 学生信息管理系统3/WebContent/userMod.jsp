<%@ page import="com.test1.db.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改页面</title>
</head>
<body>
<%
    //获取表单中的数据
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String authority = request.getParameter("authority");
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //组装SQL语句
    String sql = "update user set id="+id+",name='"+name+"',password='"+password+"',authority='"+authority+"' where id="+id;
    if (sdb.userUpdate(sql)){
        response.sendRedirect("userForm.jsp");
    }else {
        request.getRequestDispatcher("userModForm.jsp").forward(request,response);
    }
%>
</body>
</html>