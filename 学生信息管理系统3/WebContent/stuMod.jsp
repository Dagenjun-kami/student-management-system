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
    String birth = request.getParameter("birth");
    String sex = request.getParameter("sex");
    String telnum = request.getParameter("telnum");
    String major = request.getParameter("major");
    String place = request.getParameter("place");
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //组装SQL语句
    String sql = "update student set id="+id+",name='"+name+"',birth='"+birth+"',sex='"+sex+"',major='"+major+"',place='"+place+"'  where id="+id;
    if (sdb.studentUpdate(sql)){
        response.sendRedirect("stuForm.jsp");
    }else {
        request.getRequestDispatcher("stuModForm.jsp").forward(request,response);
    }
%>
</body>
</html>