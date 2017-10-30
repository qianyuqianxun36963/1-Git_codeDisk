package com.wh.eas.sys.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {

	private final static SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
	private final static SimpleDateFormat sdfDay = new SimpleDateFormat("yyyy-MM-dd");
	private final static SimpleDateFormat sdfDays = new SimpleDateFormat("yyyyMMdd");
	private final static SimpleDateFormat sdfTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	/**
	 * 获取YYYY格式
	 * @return
	 */
	public static String getYear() {
		return sdfYear.format(new Date());
	}
	
	/**
	 * 获取yyyy-mm-dd格式
	 * @return
	 */
	public static String getDay() {
		return sdfDay.format(new Date());
	}
	
	/**
	 * 获取yyyymmdd格式
	 * @return
	 */
	public static String getDays() {
		return sdfDays.format(new Date());
	}
	
	/**
	 * 获取yyyy-MM-dd hh:mm:ss格式
	 * @return
	 */
	public static String getTime() {
		return sdfTime.format(new Date());
	}
	
	/**
	 * 格式化日期
	 * @param date
	 * @return
	 */
	public static Date fomatDate(String date) {
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try{
			return fmt.parse(date);
		}catch(ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 日期比较，如果first>=e,返回true，否则返回false
	 * @param first
	 * @param second
	 * @return
	 */
	public static boolean compareDate(String first,String second) {
		if(fomatDate(first) == null || fomatDate(second) == null){
			return false;
		}
		return fomatDate(first).getTime() >= fomatDate(second).getTime();
	}
	
	/**
	 * 校验日期是否合法
	 * @param s
	 * @return
	 */
	public static boolean isValidDate(String s){
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		try{
			fmt.parse(s);
			return true;
		}catch(Exception e){
			return false;
		}
	}
	
	/**
	 * 两个时间相隔年数
	 * @param startTime
	 * @param endTime
	 * @return
	 */
	public static int getDiffYear(String startTime,String endTime){
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		try{
			int years = (int) (((fmt.parse(endTime).getTime()-fmt.parse(startTime).getTime())/(1000 * 60 * 60 * 24))/365);
			return years;
		}catch(Exception e){
			//如果throw java.text.ParseException 或者NullPointerException 就说明格式不对
			return 0;
		}
	}
	
	/**
	 * 时间相减得到天数
	 * @param beginDateStr
	 * @param endDateStr
	 * @return
	 */
	public static long getDaySub(String beginDateStr,String endDateStr) {
		long day = 0;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date beginDate = null;
		Date endDate = null;
		try{
			beginDate = format.parse(beginDateStr);
			endDate = format.parse(endDateStr);
		}catch(ParseException e) {
			e.printStackTrace();
		}
		
		day = ((endDate.getTime()) - (beginDate.getTime())) / (24 * 60 * 60 * 1000);
		return day;
	}
	
	/**
	 * 得到n天之后的日期
	 * @param days
	 * @return
	 */
	public static String getAfterDayDate(String days) {
		int daysInt = Integer.parseInt(days);
		
		Calendar canlendar = Calendar.getInstance();
		canlendar.add(Calendar.DATE, daysInt);
		Date date = canlendar.getTime();
		
		SimpleDateFormat sdfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdfd.format(date);
		return dateStr;
	}
	
	/**
	 * 得到n天之后是周几
	 * @param days
	 * @return
	 */
	public static String getAfterDayWeek(String days){
		int daysInt = Integer.parseInt(days);
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DATE,daysInt);
		Date date = calendar.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("E");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	
	/**
	 * 根据格式返回日期字符串
	 * @param date
	 * @param dateFormat
	 * @return
	 */
	public static String dateToString(Date date,String dateFormat) {
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
		return sdf.format(date);
	}
	
	public static void main(String[] args){
		System.out.println(getDays());
		
		System.out.println(getAfterDayWeek("1"));
	}
}
