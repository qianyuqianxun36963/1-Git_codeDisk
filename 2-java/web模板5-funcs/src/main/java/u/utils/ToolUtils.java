package u.utils;

import java.util.Random;

public class ToolUtils {

    /**
     * 获取6位随机数 短信验证码使用
     * @return
     */
    public static int getSixRandomNum() {
    	Random random = new Random();
    	return random.nextInt(900000)+100000;
    }
    
    public static void main(String[] args) {
    	System.out.println(getSixRandomNum());
    }
}
