package com.struts_2.dataHand.BaseTypeConvertor;

import java.util.Map;
import com.opensymphony.xwork2.ActionSupport;

public class UserMap_Action extends ActionSupport{
	private static final long serialVersionUID=1L;

	private Map<String, User_Bean>  users;

	public Map<String, User_Bean> getUsers() {
		return users;
	}

	public void setUsers(Map<String, User_Bean> users) {
		this.users = users;
	}

	public String execute() throws Exception{

	    return SUCCESS;
	}
	
}
