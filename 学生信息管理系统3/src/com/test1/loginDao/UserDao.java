package com.test1.loginDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	public String findUser(String userid){
		String psw = null;
		String sql = "select * from user where id=?";
		Connection con =getConnection();
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()){
				psw=rs.getString("password");
			}else{
				psw=null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (SQLException e) {		
				e.printStackTrace();
			}
		}
		return psw;
	}
	public String findAuth(String userid){
		String auth=null;
		String sql = "select * from user where id=?";
		Connection con =getConnection();
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()){
				auth=rs.getString("authority");
			}else{
				auth=null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (SQLException e) {		
				e.printStackTrace();
			}
		}
		return auth;
	}
	public String findName(String userid){
		String name=null;
		String sql = "select * from user where id=?";
		Connection con =getConnection();
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()){
				name=rs.getString("name");
			}else{
				name=null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (SQLException e) {		
				e.printStackTrace();
			}
		}
		return name;
	}
	
	public static Connection getConnection(){
		String driver ="com.mysql.cj.jdbc.Driver";
		String url ="jdbc:mysql://localhost:3306/user?serverTimezone=GMT";
		String user ="root";
		String password ="1234";
		Connection connection =null;
		try {
			Class.forName(driver);
			connection =DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
}
