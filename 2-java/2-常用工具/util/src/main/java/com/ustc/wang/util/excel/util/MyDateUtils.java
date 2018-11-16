package com.ustc.wang.util.excel.util;

import org.apache.commons.lang3.time.DateUtils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DateTimeException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class MyDateUtils extends DateUtils {
    private final static SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
    private final static SimpleDateFormat sdfDay = new SimpleDateFormat("yyyy-MM-dd");
    private final static SimpleDateFormat sdfDays = new SimpleDateFormat("yyyyMMdd");
    private final static SimpleDateFormat sdfTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private static String[] parsePatterns = {
            "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM",
            "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM",
            "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm", "yyyy.MM"};

    /**
     * 获取YYYY格式
     * @return
     */
    public static String getYear() {
        return sdfYear.format(new Date());
    }

    /**
     * 获取月份
     * @param date
     * @return
     */
    public static String getMonth(Date date) {
        java.util.Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        return String.valueOf(cal.get(Calendar.MONTH)+1);
    }

    /**
     * 获取天
     * @param date
     * @return
     */
    public static String getDay(Date date) {
        java.util.Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        return String.valueOf(cal.get(Calendar.DATE));
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

    /**
     * 日期型字符串转化为日期 格式
     * { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm",
     *   "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm",
     *   "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm" }
     */
    public static Date parseDate(Object str) {
        if (str == null){
            return null;
        }
        try {
            return parseDate(str.toString(), parsePatterns);
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * 根据入参类型，进行格式化时间格式
     * @param strDate
     * @return
     * @throws ParseException
     */
    public static Date str2Date(String strDate) throws ParseException {
        strDate = strDate.trim();
        SimpleDateFormat sdf = null;
        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$")) {
            sdf = new SimpleDateFormat("yyyy-MM-dd");
        }

        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}/(0[1-9]|1[0-2])/(0[1-9]|[1-2][0-9]|3[0-1])$")) {
            sdf = new SimpleDateFormat("yyyy/MM/dd");
        }

        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}/([1-9]|1[0-2])/([1-9]|[1-2][0-9]|3[0-1])$")) {
            sdf = new SimpleDateFormat("y/M/d");
        }

        if (RegularUtils.isMatched(strDate, "^(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d$")) {
            sdf = new SimpleDateFormat("HH:mm:ss");
        }

        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\\s(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d$")) {
            sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }

        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\\s(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d\\.\\d{3}$")) {
            sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        }

        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d\\.\\d{3}$")) {
            sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
        }

        if (RegularUtils.isMatched(strDate, "^[1-9]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d\\.\\d{3}Z$")) {
            sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        }

        if (null != sdf) {
            return sdf.parse(strDate);
        } else {
            return null;
        }
    }

    public static Date str2DateUnmatch2Null(String strDate) {
        try {
            return str2Date(strDate);
        } catch (Exception var3) {
            throw new DateTimeException("[" + strDate + "] 日期格式不正确", var3);
        }
    }
    public static void main(String[] args){
        System.out.println(getDays());
        System.out.println(getDay(new Date()));
        System.out.println(getAfterDayWeek("1"));
    }
}
