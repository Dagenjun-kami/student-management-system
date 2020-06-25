package com.test1.entity;

public class Grade {
	    private Integer id;
	    private String name;
	    private String school_year;
	    private Integer math;
	    private Integer english;
	    private Integer soften;//Èí¼þ¹¤³Ì
	    private Integer oracle;
	    private Integer ui;
	    private Integer javaweb;
	 
	    public Integer getid() {
	        return id;
	    }
	 
	    public String getname() {
	        return name;
	    }
	 
	    public String getschool_year() {
	        return school_year;
	    }
	    public Integer getmath() {
	        return math;
	    }
	 
	    public Integer getenglish() {
	        return english;
	    }
	 
	    public Integer getsoften() {
	        return soften;
	    }
	 
	    public Integer getoracle() {
	        return oracle;
	    }
	 
	    public Integer getui() {
	        return ui;
	    }
	    
	    public Integer getjavaweb() {
	        return javaweb;
	    }
	    
	    public void setSid(Integer id) {
	        this.id = id;
	    }
	 
	    public void setSname(String name) {
	        this.name = name;
	    }
	 
	    public void setSchool_year(String School_year) {
	        this.school_year = School_year;
	    }
	 
	    public void setMath(Integer Math) {
	        this.math = Math;
	    }
	    
	    public void setEnglish(Integer english) {
	        this.english = english;
	    }
	 
	    public void setSoftEN(Integer soften) {
	        this.soften = soften;
	    }
	 
	    public void setOracle(Integer Oracle) {
	        this.oracle = Oracle;
	    }
	    
	    public void setUI(Integer ui) {
	        this.ui = ui;
	    }
	    
	    public void setJavaWeb(Integer JavaWeb) {
	        this.javaweb = JavaWeb;
	    }

	    public Grade(Integer id, String name, String school_year, Integer math, Integer english, Integer soften,Integer oracle, Integer ui, Integer javaweb) {
	        this.id = id;
	        this.name = name;
	        this.school_year = school_year;
	        this.math = math;
	        this.english = english;       
	        this.soften = soften;
	        this.oracle = oracle;
	        this.ui = ui;
	        this.javaweb = javaweb;
	    }
	 
	    public Grade() {
	        super();
	    }
	 
	    @Override
	    public String toString() {
	        return "Grade{" +
	                "id=" + id +
	                ", name='" +name + '\'' +
	                ", school_year=" + school_year +'\'' +
	                ", math='" + math + '\'' +
	                ", english='" + english + '\'' +
	                ", soften='" + soften + '\'' +
	                ", oracle='" + oracle + '\'' +
	                ", ui='" + ui + '\'' +
	                ", javaweb=" + javaweb + '\'' +
	                '}';
	        
	    }


}
