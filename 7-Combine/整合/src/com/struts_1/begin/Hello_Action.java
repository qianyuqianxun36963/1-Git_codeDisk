package com.struts_1.begin;

import com.opensymphony.xwork2.ActionSupport;

public class Hello_Action extends ActionSupport {
private static final long serialVersionUID=1L;
private String helo;
private String bye;

public String execute() throws Exception{
//	setHelo("��ӭ���й�"); ���ﲻ�����ã�Ȼ���ڽ��ҳ�ͽ��ղ���������ԵĽ������������������Ĭ��ֵ��
	setBye("��ӭ�´�����");
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
