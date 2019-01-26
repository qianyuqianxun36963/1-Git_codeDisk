package java语言.b_数据.类型.字符串类;

import org.junit.Test;

public class 常用功能 {
	@Test
	public void test(){
		System.out.println(generateUserName("zhang"));
	}
	
	public String generateUserName(String casUserId){
		String userName = casUserId;
		if(!checkUserName(userName)){userName = casUserId+"_jwpt";}
		int i = 1;
		while(!checkUserName(userName + i)){
			i++;
		}
		return userName+i;
	};
	
	//检查用户名是否合法，本例中，只有zhang_jwpt5或zhang_jwpt8合法
	public boolean checkUserName(String userName){
		boolean flag = false;
		flag = userName.equals("zhang_jwpt8")||flag;
		flag = userName.equals("zhang_jwpt5")||flag;
		return flag;
	}
}
