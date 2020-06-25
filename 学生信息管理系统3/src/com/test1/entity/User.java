package com.test1.entity;

public class User {
	    private Integer id;
	    private String name;
	    private String password;
	    private String authority;
	 
	    public Integer getSid() {
	        return id;
	    }
	 
	    public String getSname() {
	        return name;
	    }
	 
	    public String getSpassword() {
	        return password;
	    }
	    public String getSauthority() {
	        return authority;
	    }
	 
	    public void setSid(Integer id) {
	        this.id = id;
	    }
	 
	    public void setSname(String name) {
	        this.name = name;
	    }
	 
	    public void setSpassword(String password) {
	        this.password = password;
	    }
	 
	    public void setSauthority(String authority) {
	        this.authority = authority;
	    }

	    public User(Integer id, String name, String password, String authority) {
	        this.id = id;
	        this.name = name;
	        this.password = password;
	        this.authority = authority;
	    }
	 
	    public User() {
	        super();
	    }
	 
	    @Override
	    public String toString() {
	        return "User{" +
	                "id=" + id +
	                ", name='" + name + '\'' +
	                ", password=" + password +'\'' +
	                ", authority='" + authority + '\'' +
	                '}';
	        
	    }


}
