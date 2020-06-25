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
		String a=new String("����Ա"); 
		String b=new String("��ͨ�û�");
		if(psw ==null){
			request.setAttribute("userid", userid);
			request.setAttribute("msg1", "û������û�");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		if(psw!=null&&!psw.equals(password)){
			request.setAttribute("password", password);
			request.setAttribute("msg2", "���������������");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		if(psw.equals(password)&&authority.equals(a)){
			request.getSession().setAttribute("username",username);//���û��������������Ự�ڼ�  
			request.getSession().setAttribute("userid",userid);//���û��������������Ự�ڼ� 
			request.getRequestDispatcher("/indexAdmin.jsp").forward(request, response);
		}	
		if(psw.equals(password)&&authority.equals(b)) {
			request.getSession().setAttribute("username",username);//���û��������������Ự�ڼ�  
			request.getSession().setAttribute("userid",userid);//���û��������������Ự�ڼ� 
			request.getRequestDispatcher("/indexUser.jsp").forward(request, response);
		}
	
        }
	}
	       
	         

