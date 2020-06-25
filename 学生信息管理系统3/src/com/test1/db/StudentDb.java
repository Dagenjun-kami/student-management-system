package com.test1.db;
 
import com.test1.entity.Grade;
import com.test1.entity.Student;
import com.test1.entity.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *  �������ݿ����
 */
public class StudentDb {
    //дһ����ȡmysql���ݿ����ӵĺ���
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
     *  �������ܣ�ͨ����ѯ�������ȡ���ݿ��еı����Ϣ
     * @param sql
     * @return ����һ��List����
     * @throws SQLException
     */
    public List<Student> getStudent(String sql) throws SQLException {
        //��ѯ����ִ�н��Ϊһ����񣬼����ѧ������ļ��ϣ����п��Դ��������б�������洢
        List<Student> lst = new ArrayList<Student>();
        //��ȡ���Ӷ���
        Connection conn = getConn();
        try {
            //���Ӷ���conn����createStatement()����������һ��ִ��SQL���Ķ���st
            Statement st = conn.createStatement();
            //ִ��SQL���Ķ���st����executeQuery()������ִ�в�ѯ��䣬����ѯ���Ľ�����ص�һ���������
            ResultSet rs = st.executeQuery(sql);
            //�������������
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
            //��Դʹ����֮�����û�йرգ�����Ҫ�ر�
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }
    

    public List<User> getUser(String sql) throws SQLException {
        //��ѯ����ִ�н��Ϊһ����񣬼����ѧ������ļ��ϣ����п��Դ��������б�������洢
        List<User> lst = new ArrayList<User>();
        //��ȡ���Ӷ���
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            //�������������
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
            //��Դʹ����֮�����û�йرգ�����Ҫ�ر�
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }
    
    public List<Grade> getGrade(String sql) throws SQLException {
        //��ѯ����ִ�н��Ϊһ����񣬼����ѧ������ļ��ϣ����п��Դ��������б�������洢
        List<Grade> lst = new ArrayList<Grade>();
        //��ȡ���Ӷ���
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            //�������������
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
            //��Դʹ����֮�����û�йرգ�����Ҫ�ر�
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }
    
    /**
     *  �������ܣ��Ա������ݽ�����ɾ�Ĳ���
     * @param sql
     * @return true����false
     * @throws SQLException
     */
    public boolean studentUpdate(String sql) throws SQLException {
        //��ȡ���ݿ����Ӷ���
        Connection conn = getConn();
        try {
            //���Ӷ������createStatement()����������һ��ִ��SQL���Ķ���
            Statement st = conn.createStatement();
            //ִ��SQL���Ķ���st������executeUpdate()����ִ��SQL��䣬ִ�н��Ϊint���ͣ���ʾ�ܵ�Ӱ��ļ�¼����
            //executeUpdate( )��������ִ����ɾ��DML���ʹ�����ɾ�����DDL���
            int cnt = st.executeUpdate(sql);
            return cnt>0; //����м�¼�ܵ�Ӱ�죬���ʾ���²����ɹ�
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

