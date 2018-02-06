package u.utils;

import u.utils.StringUtil;

/**
 * 所有数字和字符串互相转换的帮助类
 * @author WangJialu
 *
 */
public class NumberUtil {

	/**
  	  * 方法描述：将字符串解析为整数。如果字符串无效（为null或者空字符串或者不是一个有效的整数形式）返回0。
  	  * @param str
  	  * @return
  	  * @author: Huyihui
  	  * @version: 2013-3-26 下午03:38:02
  	  */
  	public static int getInt(String str) {
  		int value = 0;
  		if (!StringUtil.isBlank(str)) {
  			try {
  				value = Integer.parseInt(str);
  			} catch (NumberFormatException e) {
  			}
  		}
  		return value;
  	}
}
