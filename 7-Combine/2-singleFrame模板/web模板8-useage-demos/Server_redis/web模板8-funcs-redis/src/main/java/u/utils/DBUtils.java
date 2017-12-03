package u.utils;

import org.springframework.stereotype.Service;

@Service
public class DBUtils {
	public static void test_static(){
		System.out.println("DBUtils_static");
	}
	
	private String DBname = "mysql";

	public String getDBname() {
		return DBname;
	}

	public void setDBname(String dBname) {
		DBname = dBname;
	}
}
