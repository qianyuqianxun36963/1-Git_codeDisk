package u.utils;

import java.util.Calendar;

import org.apache.poi.ss.usermodel.DateUtil;

/**
 * 自定义处理excel xslx日期格式
 * @author thinkpad
 *
 */
public class XSSFDateUtil extends DateUtil{
	protected static int absoluteDay(Calendar cal,boolean use1904windowing) {
		return DateUtil.absoluteDay(cal, use1904windowing);
	}

}
