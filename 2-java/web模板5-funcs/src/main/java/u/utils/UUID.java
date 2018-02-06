package u.utils;

import java.util.regex.Pattern;

/**
 * 自定义UUID，将原始UUID的‘-’去掉
 * @author WangJialu
 * @version 2017-10-23 21:10:00
 */
public class UUID {
	public static String UUID_PATTERN = "[0-9a-z]{32}";
	
	/**
	 * 返回没有‘-’的UUID
	 * @author WangJialu
	 * @version 2017-10-23 21:10:00
	 */
	public static synchronized String getRadomUUID() {
		return java.util.UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	/**
	 * 判断一个字符串是否是UUID
	 * @param uuid
	 * @return
	 * @author WangJialu
	 * @version 2017年12月9日下午3:22:56
	 */
	public static boolean isUUID(String uuid) {
		if (StringUtil.isBlank(uuid) || uuid.length() != 32) {
			return false;
		}
		return Pattern.matches(UUID_PATTERN, uuid);
	}

}
