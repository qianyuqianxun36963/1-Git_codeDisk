package com.struts_1.begin;

import com.opensymphony.xwork2.ActionSupport;

public class Hello_Action extends ActionSupport {
private static final long serialVersionUID=1L;
private String helo;
private String bye;

public String execute() throws Exception{
//	setHelo("欢迎来中国"); 这里不加设置，然后在结果页就接收不到这个属性的结果，那里我们设置了默认值。
	setBye("欢迎下次再来");
	return SUCCESS;
}


public String getHelo() {
	return helo;
}
public void setHelo(String helo) {
	this.helo = helo;
}
public String getBye() {
	return bye;
}
public void setBye(String bye) {
	this.bye = bye;
}

}
