package java语言.d_系统.时间相关;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class MyDateUtil {
public static void main(String args[]){
	getDatestrWithFormat();
//	getDateWithFormat();
//	getDatestrByCalendar();
//	
//	getLastDate();
//	getNextDate();
//	getAroundDate(-1);
//	
//	getLastMonth();
//	getNextMonth();
//	getLastAndNextMonth();
//	getAroundMonth(13);
}
	
public static void getDatestrWithFormat(){
	
		SimpleDateFormat year=new SimpleDateFormat("yyyy"),
				         month=new SimpleDateFormat("MM"), 
		                 day=new SimpleDateFormat("dd"),
		                 ymd=new SimpleDateFormat("yyyy-MM-dd"),
		                 ymdhms=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=new Date();
		String  y=year.format(date),
				m=month.format(date),
				d=day.format(date),
				strymd=ymd.format(date),
				strymdhms=ymdhms.format(date);
		System.out.println(y+m+d+","+strymd+","+strymdhms);	
		
		//常用的取时间字符串。
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time2=format.format(new Date());
		
		SimpleDateFormat sformat=new SimpleDateFormat("yyyyMMddHHmmss");
		String stime2=sformat.format(new Date());
		
		SimpleDateFormat sformat3=new SimpleDateFormat("yyyy年MM月dd日");
		String stime3=sformat3.format(new Date());
		
		System.out.println(time2+"\n" +stime2+"\n" +stime3);
		
		
}

public static java.util.Date getDateWithFormat(){
	//处理并返回一个格式化的时间类型对象。
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String strtime=sdf.format(new Date());
	java.util.Date time=null;
	try {
		time= sdf.parse(strtime);
		System.out.println(strtime+" date:"+time);
	} catch (ParseException e) {
	   e.printStackTrace();
	}
	
	return time;
}

public static void getDatestrByCalendar(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  年=String.valueOf(calendar.get(Calendar.YEAR)),
			月=String.valueOf(calendar.get(Calendar.MONTH)+1),
			日=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH)),
			时=String.valueOf(calendar.get(Calendar.HOUR_OF_DAY)),
			分=String.valueOf(calendar.get(Calendar.MINUTE)),
			秒=String.valueOf(calendar.get(Calendar.SECOND));
	System.out.println(年+月+日+时+分+秒);
}

@SuppressWarnings("unused")
public static void getLastDate(){
	//计算昨天日期,例如：last_day_year.简写l_d_y;
		Calendar   cal   =   Calendar.getInstance();
		cal.add(Calendar.DATE,   -1);
		String l_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
		String l_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
		String l_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
		String l_d = new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
        System.out.println("昨天： "+l_d);
	
}

@SuppressWarnings("unused")
public static void getNextDate(){
	//计算昨天日期,例如：last_day_year.简写l_d_y;
		Calendar   cal   =   Calendar.getInstance();
        cal.add(Calendar.DATE,   +1);
        String n_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
        String n_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
        String n_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
        String n_d = new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
        System.out.println("明天： "+n_d);
}

@SuppressWarnings("unused")
public static void getAroundDate(int rel){
	//计算昨天日期,例如：last_day_year.简写l_d_y;
		Calendar   cal   =   Calendar.getInstance();
        cal.add(Calendar.DATE,   rel);
        String a_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
        String a_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
        String a_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
        String a_d = new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
        System.out.println("附近几天： "+a_d);
}

public static void getLastMonth(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1);
	//通过当月'm'，计算上月'l_m'(last_month)，下月'n_m'(next_month)。
	//通过当年'y'，计算上月'l_y'(last_month)，下月'n_y'(next_month)。
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	String l_m=String.valueOf(int_month-1); 
	String l_y=String.valueOf(int_year);
	if (int_month==1) {l_m=String.valueOf(12); l_y=String.valueOf(int_year-1);}
	//单字符的月份在前面补'0'。
	if(l_m.length()==1) l_m="0"+l_m;
	System.out.println("上个月："+l_y+"-"+l_m);
}

public static void getNextMonth(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1);
	//通过当月'm'，计算上月'l_m'(last_month)，下月'n_m'(next_month)。
	//通过当年'y'，计算上月'l_y'(last_month)，下月'n_y'(next_month)。
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	String n_m=String.valueOf(int_month+1); 
	String n_y=String.valueOf(int_year);
	if (int_month==12){n_m=String.valueOf(1); n_y=String.valueOf(int_year+1);}
	//单字符的月份在前面补'0'。
	if(n_m.length()==1) n_m="0"+n_m;
	System.out.println("下个月："+n_y+"-"+n_m);
}

public static void getAroundMonth(int rel){
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1);
	//通过当月'm'，计算上月'l_m'(last_month)，下月'n_m'(next_month)。
	//通过当年'y'，计算上月'l_y'(last_month)，下月'n_y'(next_month)。
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	
	int rel_m=(int_month+rel)%12<=0?(int_month+rel)%12+12:(int_month+rel)%12;
	String a_m=String.valueOf(rel_m);
	
	int rel_y=(int_month+rel)<=0?-((int_month+rel)/12+1):(int_month+rel)/12;
	if((int_month+rel)%12==0&&int_month+rel>0) rel_y--;
	String a_y=String.valueOf(int_year+rel_y);
	
	//单字符的月份在前面补'0'。
	if(a_m.length()==1) a_m="0"+a_m;
	System.out.println("相对"+rel+"个月："+a_y+"-"+a_m);
}

public static void getLastAndNextMonth(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1),
			d=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));
	
	//通过当月'm'，计算上月'l_m'(last_month)，下月'n_m'(next_month)。
	//通过当年'y'，计算上月'l_y'(last_month)，下月'n_y'(next_month)。
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	String l_m=String.valueOf(int_month-1); 
	String n_m=String.valueOf(int_month+1); 
	String l_y=String.valueOf(int_year);
	String n_y=String.valueOf(int_year);
	if (int_month==1) {l_m=String.valueOf(12); l_y=String.valueOf(int_year-1);}
	if (int_month==12){n_m=String.valueOf(1); n_y=String.valueOf(int_year+1);}
	
	//单字符的月份在前面补'0'。
	if(l_m.length()==1) l_m="0"+l_m;
	if(n_m.length()==1) n_m="0"+n_m;
	
	System.out.println("相对当天的前后两个月："+y+m+d+"  "+l_y+l_m+"  "+n_y+n_m);
}

}