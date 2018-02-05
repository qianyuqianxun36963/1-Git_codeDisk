package java语言.d_系统.时间相关;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

public class 使用日历 {
    @Test
    public void test() throws ParseException{
        String datestr = "20180112";
        String formatstr = "yyyyMMdd";
        Date date = getDateFromStr(datestr,formatstr);
        String strdate = getStrForDate(date,formatstr);
        System.out.println(strdate);
        
        Calendar cal = Calendar.getInstance();
        
        cal.setTime(date);
        cal.add(cal.YEAR, 3);
        cal.add(cal.MONTH, 6);
        System.out.println(getStrForDate(cal.getTime(),formatstr));
        
        cal.setTime(date);
        cal.add(cal.MONTH, (int)(3.5*12));
        System.out.println(getStrForDate(cal.getTime(),formatstr));
        
        
        //下面是进行时分秒的计算。
        String timeStr = "2018-01-12  07:10:10";
        String formatTimeStr = "yyyy-MM-dd HH:mm:ss";
        Date time = getDateFromStr(timeStr,formatTimeStr);
        
        Calendar calTime = Calendar.getInstance();
        
        calTime.setTime(time);
        calTime.add(calTime.HOUR, 2);
        calTime.add(calTime.MINUTE, 30);
        System.out.println(getStrForDate(calTime.getTime(),formatTimeStr));
        
    }
    
    public Date getDateFromStr(String datestr, String formatStr) throws ParseException{
        SimpleDateFormat sdf=new SimpleDateFormat(formatStr);//小写的mm表示的是分钟  
        Date date=sdf.parse(datestr);  
        return date;
    }
    
    public String getStrForDate(Date date, String formatStr){
        SimpleDateFormat sdf=new SimpleDateFormat(formatStr);  
        String str=sdf.format(date);  
        return str;
    }
    
    //通过日历类进行日期计算。参数格式使用Date,Map
    //Date 表示日期的基础，在其上进行计算。
    //Key: 表示计算什么。Calendar.YEAR(年)、Calendar.MONTH(月)、 Calendar.WEDNESDAY(周)、 Calendar.DATE(天)
    //Value: 表示计算规则。正数为加，负数为减。
    //cal.add(Calendar.DATE, -7); 当前日期减7天; cal.add(Calendar.DATE, 7); 当前日期加7天;
    public Date dateComput(Date date,Map<Integer,Integer> param){
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        //遍历一个map对象。当数据上万时，这种方法的效率更高。
        for(Map.Entry<Integer, Integer> entry:param.entrySet()){  
            cal.add(entry.getKey(), entry.getValue());
        }  
        return cal.getTime();
    }
    
    
    
    
}
