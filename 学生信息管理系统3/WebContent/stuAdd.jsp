<%@ page import="com.test1.db.StudentDb" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生页面</title>
</head>
<body>
<%
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //获取表单中各个输入框中的值
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String birth = request.getParameter("birth");
    String sex = request.getParameter("sex");
    String telnum = request.getParameter("telnum");
    String major = request.getParameter("major");
    String place = request.getParameter("place");
   /* if(email.indexOf("@")==0||email.length()-1==email.lastIndexOf(".")||email.indexOf(".")-email.indexOf("@")<2) {
		request.setAttribute("msg","邮箱格式不正确，请重新输入");
		request.getRequestDispatcher("/stuAddForm.jsp").forward(request, response);
		return;
	}*/
    //组装SQL语句
    String sql = "insert into student(id,name,birth,sex,telnum,major,place) values('"+id+"','"+name+"','"+birth+"','"+sex+"','"+telnum+"','"+major+"','"+place+"')";
    //调用函数执行SQL语句
    if (sdb.studentUpdate(sql)){
        System.out.println("insert 语句为:"+sql);
        System.out.println("学生"+name+"信息增加成功");
        response.sendRedirect("stuForm.jsp");
    }else {
        request.getRequestDispatcher("stuFrom.jsp").forward(request,response);
    }
%>
</body>
</html>
