package java����.d_ϵͳ.ʱ�����;

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
		
		//���õ�ȡʱ���ַ�����
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time2=format.format(new Date());
		
		SimpleDateFormat sformat=new SimpleDateFormat("yyyyMMddHHmmss");
		String stime2=sformat.format(new Date());
		
		SimpleDateFormat sformat3=new SimpleDateFormat("yyyy��MM��dd��");
		String stime3=sformat3.format(new Date());
		
		System.out.println(time2+"\n" +stime2+"\n" +stime3);
		
		
}

public static java.util.Date getDateWithFormat(){
	//��������һ����ʽ����ʱ�����Ͷ���
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
	String  ��=String.valueOf(calendar.get(Calendar.YEAR)),
			��=String.valueOf(calendar.get(Calendar.MONTH)+1),
			��=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH)),
			ʱ=String.valueOf(calendar.get(Calendar.HOUR_OF_DAY)),
			��=String.valueOf(calendar.get(Calendar.MINUTE)),
			��=String.valueOf(calendar.get(Calendar.SECOND));
	System.out.println(��+��+��+ʱ+��+��);
}

@SuppressWarnings("unused")
public static void getLastDate(){
	//������������,���磺last_day_year.��дl_d_y;
		Calendar   cal   =   Calendar.getInstance();
		cal.add(Calendar.DATE,   -1);
		String l_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
		String l_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
		String l_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
		String l_d = new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
        System.out.println("���죺 "+l_d);
	
}

@SuppressWarnings("unused")
public static void getNextDate(){
	//������������,���磺last_day_year.��дl_d_y;
		Calendar   cal   =   Calendar.getInstance();
        cal.add(Calendar.DATE,   +1);
        String n_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
        String n_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
        String n_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
        String n_d = new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
        System.out.println("���죺 "+n_d);
}

@SuppressWarnings("unused")
public static void getAroundDate(int rel){
	//������������,���磺last_day_year.��дl_d_y;
		Calendar   cal   =   Calendar.getInstance();
        cal.add(Calendar.DATE,   rel);
        String a_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
        String a_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
        String a_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
        String a_d = new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
        System.out.println("�������죺 "+a_d);
}

public static void getLastMonth(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1);
	//ͨ������'m'����������'l_m'(last_month)������'n_m'(next_month)��
	//ͨ������'y'����������'l_y'(last_month)������'n_y'(next_month)��
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	String l_m=String.valueOf(int_month-1); 
	String l_y=String.valueOf(int_year);
	if (int_month==1) {l_m=String.valueOf(12); l_y=String.valueOf(int_year-1);}
	//���ַ����·���ǰ�油'0'��
	if(l_m.length()==1) l_m="0"+l_m;
	System.out.println("�ϸ��£�"+l_y+"-"+l_m);
}

public static void getNextMonth(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1);
	//ͨ������'m'����������'l_m'(last_month)������'n_m'(next_month)��
	//ͨ������'y'����������'l_y'(last_month)������'n_y'(next_month)��
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	String n_m=String.valueOf(int_month+1); 
	String n_y=String.valueOf(int_year);
	if (int_month==12){n_m=String.valueOf(1); n_y=String.valueOf(int_year+1);}
	//���ַ����·���ǰ�油'0'��
	if(n_m.length()==1) n_m="0"+n_m;
	System.out.println("�¸��£�"+n_y+"-"+n_m);
}

public static void getAroundMonth(int rel){
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1);
	//ͨ������'m'����������'l_m'(last_month)������'n_m'(next_month)��
	//ͨ������'y'����������'l_y'(last_month)������'n_y'(next_month)��
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	
	int rel_m=(int_month+rel)%12<=0?(int_month+rel)%12+12:(int_month+rel)%12;
	String a_m=String.valueOf(rel_m);
	
	int rel_y=(int_month+rel)<=0?-((int_month+rel)/12+1):(int_month+rel)/12;
	if((int_month+rel)%12==0&&int_month+rel>0) rel_y--;
	String a_y=String.valueOf(int_year+rel_y);
	
	//���ַ����·���ǰ�油'0'��
	if(a_m.length()==1) a_m="0"+a_m;
	System.out.println("���"+rel+"���£�"+a_y+"-"+a_m);
}

public static void getLastAndNextMonth(){
	
	Calendar calendar =Calendar.getInstance();
	calendar.setTime(new Date());
	String  y=String.valueOf(calendar.get(Calendar.YEAR)),
			m=String.valueOf(calendar.get(Calendar.MONTH)+1),
			d=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));
	
	//ͨ������'m'����������'l_m'(last_month)������'n_m'(next_month)��
	//ͨ������'y'����������'l_y'(last_month)������'n_y'(next_month)��
	int int_month=Integer.parseInt(m);
	int int_year=Integer.parseInt(y);
	String l_m=String.valueOf(int_month-1); 
	String n_m=String.valueOf(int_month+1); 
	String l_y=String.valueOf(int_year);
	String n_y=String.valueOf(int_year);
	if (int_month==1) {l_m=String.valueOf(12); l_y=String.valueOf(int_year-1);}
	if (int_month==12){n_m=String.valueOf(1); n_y=String.valueOf(int_year+1);}
	
	//���ַ����·���ǰ�油'0'��
	if(l_m.length()==1) l_m="0"+l_m;
	if(n_m.length()==1) n_m="0"+n_m;
	
	System.out.println("��Ե����ǰ�������£�"+y+m+d+"  "+l_y+l_m+"  "+n_y+n_m);
}

}