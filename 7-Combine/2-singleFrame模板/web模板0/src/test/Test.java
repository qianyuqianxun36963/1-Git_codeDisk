package test;

import java.util.Iterator;
import java.util.List;

import service.DBServiceImpl;
import entity.Func;
import entity.Org;
import entity.Role;
import entity.User;

public class Test {
	public static void main(String args[]){
		DBServiceImpl dbService = new DBServiceImpl();
		
		User stu = new User();
		stu.setUserid("2");
		stu.setName("333");
		
		User user = dbService.getEntityByID(User.class,"1");
		if(null!=user)
		System.out.println(user.getName());
		
		dbService.saveOrUpdate(stu);
		
		stu.setUserid("1");
		dbService.delete(stu);
		
		
		List<?> listOrg = dbService.getOrgTree(1);
		
		Iterator<?> itOrg = listOrg.iterator();
		while(itOrg.hasNext()){
			Org org = (Org) itOrg.next();
			String name = org.getOrgname();
			System.out.println(name);
		}
		
		List<?> listRole = dbService.getRoalTree();
		
		Iterator<?> itRole = listRole.iterator();
		if(null!=itRole){
			while(itRole.hasNext()){
				Role role = (Role) itRole.next();
				String name = role.getRolename();
				System.out.println(name);
			}
		}
		
		List<?> listFunc = dbService.getFuncTree();
		
		Iterator<?> itFunc = listFunc.iterator();
		if(null!=itFunc){
			while(itFunc.hasNext()){
				Func func = (Func) itFunc.next();
				String name = func.getFuncname();
				System.out.println(name);
			}
		}
	}
}
