package com.test1.db;
 
import com.test1.entity.Grade;
import com.test1.entity.Student;
import com.test1.entity.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *  操作数据库的类
 */
public class StudentDb {
    //写一个获取mysql数据库连接的函数
    private static Connection getConn(){
    	String driver ="com.mysql.cj.jdbc.Driver";
		String url ="jdbc:mysql://localhost:3306/user?serverTimezone=GMT";
		String user ="root";
		String password ="1234";
		Connection conn =null;
		try {
			Class.forName(driver);
			conn =DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

    /**
     *  函数功能：通过查询语句来获取数据库中的表格信息
     * @param sql
     * @return 返回一个List对象
     * @throws SQLException
     */
    public List<Student> getStudent(String sql) throws SQLException {
        //查询语句的执行结果为一个表格，即多个学生对象的集合，所有可以创建数组列表对象来存储
        List<Student> lst = new ArrayList<Student>();
        //获取连接对象
        Connection conn = getConn();
        try {
            //连接对象conn调用createStatement()方法，创建一个执行SQL语句的对象st
            Statement st = conn.createStatement();
            //执行SQL语句的对象st调用executeQuery()方法，执行查询语句，将查询到的结果返回到一个结果集中
            ResultSet rs = st.executeQuery(sql);
            //遍历结果集对象
            while(rs.next()){
                Student stu = new Student();      
                stu.setSid(rs.getInt("id")); 
                stu.setSname(rs.getString("name"));
                stu.setSbirth(rs.getString("birth"));
                stu.setSsex(rs.getString("sex"));
                stu.setStelnum(rs.getString("telnum"));
                stu.setSmajor(rs.getString("major"));
                stu.setSplace(rs.getString("place"));
                lst.add(stu);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            //资源使用完之后，如果没有关闭，则需要关闭
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }
    

    public List<User> getUser(String sql) throws SQLException {
        //查询语句的执行结果为一个表格，即多个学生对象的集合，所有可以创建数组列表对象来存储
        List<User> lst = new ArrayList<User>();
        //获取连接对象
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            //遍历结果集对象
            while(rs.next()){
                User user = new User();      
                user.setSid(rs.getInt("id")); 
                user.setSname(rs.getString("name"));
                user.setSpassword(rs.getString("password"));
                user.setSauthority(rs.getString("authority"));
                lst.add(user);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            //资源使用完之后，如果没有关闭，则需要关闭
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }
    
    public List<Grade> getGrade(String sql) throws SQLException {
        //查询语句的执行结果为一个表格，即多个学生对象的集合，所有可以创建数组列表对象来存储
        List<Grade> lst = new ArrayList<Grade>();
        //获取连接对象
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            //遍历结果集对象
            while(rs.next()){
                Grade grade = new Grade();      
                grade.setSid(rs.getInt("id")); 
                grade.setSname(rs.getString("name"));
                grade.setSchool_year(rs.getString("school_year"));
                grade.setMath(rs.getInt("math"));
                grade.setSoftEN(rs.getInt("softeN"));
                grade.setOracle(rs.getInt("oracle"));
                grade.setUI(rs.getInt("ui"));
                grade.setJavaWeb(rs.getInt("Javaweb"));
                lst.add(grade);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            //资源使用完之后，如果没有关闭，则需要关闭
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }
    
    /**
     *  函数功能：对表中数据进行增删改操作
     * @param sql
     * @return true或者false
     * @throws SQLException
     */
    public boolean studentUpdate(String sql) throws SQLException {
        //获取数据库连接对象
        Connection conn = getConn();
        try {
            //连接对象调用createStatement()方法，创建一个执行SQL语句的对象
            Statement st = conn.createStatement();
            //执行SQL语句的对象st，调用executeUpdate()方法执行SQL语句，执行结果为int类型，表示受到影响的记录条数
            //executeUpdate( )方法可以执行增删改DML语句和创建表、删除表等DDL语句
            int cnt = st.executeUpdate(sql);
            return cnt>0; //如果有记录受到影响，则表示更新操作成功
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }finally {
            if (conn!=null)
                conn.close();
        }
    }

    public boolean userUpdate(String sql) throws SQLException {
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            int cnt = st.executeUpdate(sql);
            return cnt>0; 
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }finally {
            if (conn!=null)
                conn.close();
        }
    }

public boolean gradeUpdate(String sql) throws SQLException {
    Connection conn = getConn();
    try {
        Statement st = conn.createStatement();
        int cnt = st.executeUpdate(sql);
        return cnt>0; 
    }catch (Exception e){
        System.out.println(e.getMessage());
        return false;
    }finally {
        if (conn!=null)
            conn.close();
    }
}
}

