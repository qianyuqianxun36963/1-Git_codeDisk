package u.utils;

import java.util.Calendar;
import java.util.Date;

/**
 * 所有时间与字符串互相转换的帮助类
 * 
 * @author WangJialu
 *
 */
public class TimeUtil {
	/**
	 * 得到几天后的时间
	 * 
	 * @param d
	 * @param days
	 * @return
	 */
	public static Date getDateAfterDays(Date d, int days) {
		Calendar now = Calendar.getInstance();
		now.setTime(d);
		now.set(Calendar.DATE, now.get(Calendar.DATE) + days);
		return now.getTime();
	}
	
	/**
	 * 得到几分钟前的时间
	 * @param d
	 * @param minutes
	 * @return
	 * @author WangJialu
	 * @version 2017年11月9日下午4:17:40
	 */
	public static Date getDateBeforeMinutes(Date d, int minutes) {
		Calendar now = Calendar.getInstance();
		now.setTime(d);
		now.set(Calendar.MINUTE, now.get(Calendar.MINUTE) - minutes);
		return now.getTime();
	}
}
