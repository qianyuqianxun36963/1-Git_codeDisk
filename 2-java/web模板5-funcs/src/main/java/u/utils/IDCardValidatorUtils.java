package u.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 身份证校验
 * @author thinkpad
 *
 */
public class IDCardValidatorUtils {
    final static Map<Integer,String> cityMap = new HashMap<Integer,String>() {
    	{
    		put(11,"北京");
        	put(11, "北京");
            put(12, "天津");
            put(13, "河北");
            put(14, "山西");
            put(15, "内蒙古");
            put(21, "辽宁");
            put(22, "吉林");
            put(23, "黑龙江");
            put(31, "上海");
            put(32, "江苏");
            put(33, "浙江");
            put(34, "安徽");
            put(35, "福建");
            put(36, "江西");
            put(37, "山东");
            put(41, "河南");
            put(42, "湖北");
            put(43, "湖南");
            put(44, "广东");
            put(45, "广西");
            put(46, "海南");
            put(50, "重庆");
            put(51, "四川");
            put(52, "贵州");
            put(53, "云南");
            put(54, "西藏");
            put(61, "陕西");
            put(62, "甘肃");
            put(63, "青海");
            put(64, "宁夏");
            put(65, "新疆");
            put(71, "台湾");
            put(81, "香港");
            put(82, "澳门");
            put(91, "国外");
      }
    };
    
    final static String[] parity = { "1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2" }; 
    final static int[] factor = {7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10,5, 8, 4, 2};
    
    final static String regex15IDCard = "^[1-9]\\d{5}\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{2}$";
    final static String regex18IDCard = "^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$";
    
    final static String regexAllIDCard = "(^[1-9]\\d{5}\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{2}$)|(^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)";
    
    public static boolean isValidateAllIdCard(String idCard) {
    	if(StringUtils.isEmpty(idCard)) {
    		return false;
    	}
    	
    	if(!idCard.matches(regexAllIDCard)) {
    		return false;
    	} else {
    		if(cityMap.get(idCard.substring(0, 2)) != null) {
    			return false;
    		}
    		
    		if(idCard.length() == 18) {
    			return isVarify18thCode(idCard);
    		}
    		return true;
    	} 
    }
    
    /**
     *  
     * 判断第18位校验码是否正确 第18位校验码的计算方式： 1. 对前17位数字本体码加权求和 公式为：S = Sum(idCard[i] * factor[i]), i = 
     * 0, ... , 16 其中表示idCard第i个位置上的身份证号码数字值，Wi表示第i位置上的加权因子，其各位对应的值依次为： 7 9 10 5 8 4 
     * 2 1 6 3 7 9 10 5 8 4 2 2. 用11对计算结果取模 Y = mod(S, 11) 3. 根据模的值得到对应的校验码 
     * 对应关系为： Y值： 0 1 2 3 4 5 6 7 8 9 10 校验码： 1 0 X 9 8 7 6 5 4 3 2 
     *
     * @param idCard
     * @return
     */
    private static boolean isVarify18thCode(String idCard) {
    	int sum = 0;
    	for(int i = 0;i < 17;i++) {
    		sum = sum + Integer.parseInt(String.valueOf(idCard.charAt(i))) * factor[i];
    	}
    	
    	String last = parity[sum % 11];
    	if(last.equals(String.valueOf(idCard.charAt(17)).toUpperCase())) {
    		return true;
    	}
    	return false;
    }
    
    public static void main(String[] args) {
    	String idCard = "11038119850506521";
    	
    	System.out.print(isValidateAllIdCard(idCard));
    }
    
}
