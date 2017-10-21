package com.struts_2.dataHand.CustomTypeConvertor;

public class User {
	private String name;
	private String age;
	
	public User(){}
	public User(String name,String age){this.setName(name); this.setAge(age);}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	
}
