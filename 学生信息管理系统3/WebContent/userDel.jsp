<%@ page import="com.test1.db.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除用户信息</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String sql = "delete from user where id = "+id;
    StudentDb sdb = new StudentDb();
    if (sdb.studentUpdate(sql)){
        System.out.println("删除语句为:"+sql);
        System.out.println(id+"号用户已成功删除");
        response.sendRedirect("userForm.jsp");
    }else {
        out.println(sql);
        out.println(id+"号用户删除失败");
    }
%>
</body>
</html>
