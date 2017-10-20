package com.struts_2.dataHand.BaseTypeConvertor;

public class User_Bean {
    private String name;
    private int age;
    
    public User_Bean(){}
    public User_Bean(String name,int age){
    	this.name = name;
    	this.age = age;
    }
    
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
    
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}

