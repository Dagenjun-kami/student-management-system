package com.test1.loginServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.test1.loginDao.UserDao;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String psw =new UserDao().findUser(userid);
		String username =new UserDao().findName(userid);
		String authority = new UserDao().findAuth(userid);
		String a=new String("管理员"); 
		String b=new String("普通用户");
		if(psw ==null){
			request.setAttribute("userid", userid);
			request.setAttribute("msg1", "没有这个用户");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		if(psw!=null&&!psw.equals(password)){
			request.setAttribute("password", password);
			request.setAttribute("msg2", "密码错误，重新输入");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		if(psw.equals(password)&&authority.equals(a)){
			request.getSession().setAttribute("username",username);//将用户名保存在整个会话期间  
			request.getSession().setAttribute("userid",userid);//将用户名保存在整个会话期间 
			request.getRequestDispatcher("/indexAdmin.jsp").forward(request, response);
		}	
		if(psw.equals(password)&&authority.equals(b)) {
			request.getSession().setAttribute("username",username);//将用户名保存在整个会话期间  
			request.getSession().setAttribute("userid",userid);//将用户名保存在整个会话期间 
			request.getRequestDispatcher("/indexUser.jsp").forward(request, response);
		}
	
        }
	}
	       
	         

