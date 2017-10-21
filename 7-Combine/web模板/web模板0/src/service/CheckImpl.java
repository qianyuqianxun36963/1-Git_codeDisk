package service;

import org.hibernate.HibernateException;
import dao.HibernateTemplate;
import entity.User;

public class CheckImpl {
	public static void main(String args[]){
	    User user = getUser(1);
	    System.out.println(user.getName());
	}
	
	public static User getUser(int id) {  
        try {  
        	HibernateTemplate template = HibernateTemplate.getInstance();
            User user = template.getObjectByID(User.class, "1");
            return user;  
          
        } catch (HibernateException e) {  
            throw e;  
        } 
    } 
}
