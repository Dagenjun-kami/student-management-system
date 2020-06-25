package com.test1.entity;

public class Student {
	    private Integer id;
	    private String name;
	    private String birth;
	    private String sex;
	    private String telnum;
	    private String major;
	    private String place;
	 
	    public Integer getSid() {
	        return id;
	    }
	 
	    public String getSname() {
	        return name;
	    }
	 
	    public String getSbirth() {
	        return birth;
	    }
	    public String getSsex() {
	        return sex;
	    }
	 
	    public String getStelnum() {
	        return telnum;
	    }
	 
	    public String getSmajor() {
	        return major;
	    }
	 
	    public String getSplace() {
	        return place;
	    }
	 
	    public void setSid(Integer id) {
	        this.id = id;
	    }
	 
	    public void setSname(String name) {
	        this.name = name;
	    }
	 
	    public void setSbirth(String birth) {
	        this.birth = birth;
	    }
	 
	    public void setSsex(String sex) {
	        this.sex = sex;
	    }
	    
	    public void setStelnum(String telnum) {
	        this.telnum = telnum;
	    }
	 
	    public void setSmajor(String major) {
	        this.major = major;
	    }
	 
	    public void setSplace(String place) {
	        this.place = place;
	    }

	    public Student(Integer id, String name, String birth, String sex, String telnum, String major, String place) {
	        this.id = id;
	        this.name = name;
	        this.birth = birth;
	        this.sex = sex;
	        this.telnum = telnum;       
	        this.major = major;
	        this.place = place;
	    }
	 
	    public Student() {
	        super();
	    }
	 
	    @Override
	    public String toString() {
	        return "Student{" +
	                "id=" + id +
	                ", name='" + name + '\'' +
	                ", birth=" + birth +'\'' +
	                ", sex='" + sex + '\'' +
	                ", telnum='" + telnum + '\'' +
	                ", major='" + major + '\'' +
	                ", place='" + place + '\'' +
	                '}';
	        
	    }


}
