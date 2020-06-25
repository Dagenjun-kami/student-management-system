<%@ page import="com.test1.db.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除学生信息</title>
</head>
<style>
body{
    text-align:center;
    }
</style>
<body>   
<script type="text/javascript"> 
  var x = confirm("是否确认删除?");
  if(x==0){
     window.parent.location.href="manageStu.jsp";
   }</script>
<%
	       
    String id = request.getParameter("id");
    String sql = "delete from student where id = "+id;
    StudentDb sdb = new StudentDb();
    if (sdb.studentUpdate(sql)){
        System.out.println("删除语句为:"+sql);
        System.out.println(id+"号学生已成功删除");
        response.sendRedirect("student.jsp");
    }else{
        out.println(id+"号学生删除失败");
    }
%>
</body>
</html>
