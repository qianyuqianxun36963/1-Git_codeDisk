package com.struts_2.dataHand.CustomTypeConvertor;

import com.opensymphony.xwork2.ActionSupport;

public class UserLine_Action extends ActionSupport{
	private static final long serialVersionUID=1L;
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	//÷ÿ‘ÿexecute∑Ω∑®
	public String execute() throws Exception{
		return SUCCESS;
	}
}
