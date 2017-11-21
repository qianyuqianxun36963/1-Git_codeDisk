package u.utils;

import org.springframework.stereotype.Service;

@Service
public class UtilTestBean {
	public static void test_static(){
		System.out.println("UtilTestBean_static");
	}
	
	public void test_dynamic(){
		System.out.println("UtilTestBean_dynamic");
	}
}
