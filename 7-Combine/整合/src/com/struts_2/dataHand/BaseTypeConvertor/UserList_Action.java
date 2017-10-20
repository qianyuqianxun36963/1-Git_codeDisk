package com.struts_2.dataHand.BaseTypeConvertor;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class UserList_Action extends ActionSupport {
private static final long serialVersionUID=1L;

private List<User_Bean> users;

public List<User_Bean> getUsers() {
	return users;
}

public void setUsers(List<User_Bean> users) {
	this.users = users;
}

public String execute() throws Exception{
    for(User_Bean user : users){
    	System.out.println("Name:"+user.getName()+"Age:"+user.getAge());
    }
    return SUCCESS;
}


}
