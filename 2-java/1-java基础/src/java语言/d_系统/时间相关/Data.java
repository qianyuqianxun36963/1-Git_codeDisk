package java语言.d_系统.时间相关;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Data {
    public static void main(String args[]){
        
        int[] count=getCounts();
        for(int i=0;i<8;i++){
        System.out.print(count[i]);}
    }
    
public static int[] getCounts(){
        
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
        if(m.length()==1) m="0"+m;
        if(l_m.length()==1) l_m="0"+l_m;
        if(n_m.length()==1) n_m="0"+n_m;
        
        //计算昨天日期,例如：last_day_year.简写l_d_y;
        Calendar   cal   =   Calendar.getInstance();
        cal.add(Calendar.DATE,   -1);
        String l_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
        String l_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
        String l_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
        
        cal   =   Calendar.getInstance();
        cal.add(Calendar.DATE,   +1);
        String n_d_y = new SimpleDateFormat( "yyyy").format(cal.getTime());
        String n_d_m = new SimpleDateFormat( "MM").format(cal.getTime());
        String n_d_d = new SimpleDateFormat( "dd").format(cal.getTime());
        
        
        System.out.print(y+m+d+l_y+l_m+n_y+n_m+l_d_y+l_d_m+l_d_d);
        
        
        String  sqlStr="select  t1.sumCount ,t2.finishCount ,t3.oldCount ,"
                + "t4.oldFinishCount ,t5.monthCount ,t6.monthFinishCount ,"
                + "t7.yesterdayCount ,t8.todayCount"
                + " from (select  count(*) as sumCount  from WFPROCESSINST)  t1 ,"
                
                + "(select  count(*) as finishCount  from WFPROCESSINST t  "
                + "where t.CURRENTSTATE='7')  t2, "
                
                + "(select  count(*) as oldCount from "
                + "WFPROCESSINST t  where t.CREATETIME>=to_date"
                + "('"+l_y+"-"+l_m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss')"
                + "and t.CREATETIME<=to_date('"+y+"-"+m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss') )  t3,"
                
                + "(select  count(*) as oldFinishCount  from WFPROCESSINST t  "
                + "where t.CREATETIME>=to_date('"+l_y+"-"+l_m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss')"
                + " and t.CREATETIME<=to_date('"+y+"-"+m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss') "
                + " and t.CURRENTSTATE='7' )  t4,"
                
                + "(select  count(*) as monthCount from WFPROCESSINST t "
                + "where t.CREATETIME>=to_date('"+y+"-"+m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss') "
                + "and t.CREATETIME<=to_date('"+n_y+"-"+n_m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss'))  t5,"
                
                + "(select  count(*) as monthFinishCount from WFPROCESSINST t "
                + "where t.CREATETIME>=to_date('"+y+"-"+m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss')"
                + " and t.CREATETIME<=to_date('"+n_y+"-"+n_m+"-01 00:00:00','yyyy-mm-dd hh24:mi:ss') "
                + "and t.CURRENTSTATE='8' )  t6,"
                
                + "(select  count(*) as yesterdayCount from WFPROCESSINST t "
                + "where t.CREATETIME>=to_date('"+l_d_y+"-"+l_d_m+"-"+l_d_d+" 00:00:00','yyyy-mm-dd hh24:mi:ss')"
                + "and t.CREATETIME<=to_date('"+y+"-"+m+"-"+d+" 00:00:00','yyyy-mm-dd hh24:mi:ss'))  t7,"
                
                + "(select count(*) as todayCount from WFPROCESSINST t "
                + "where t.CREATETIME>=to_date('"+y+"-"+m+"-"+d+" 00:00:00','yyyy-mm-dd hh24:mi:ss') "
                + "and t.CREATETIME<=to_date('"+n_d_y+"-"+n_d_m+"-"+n_d_d+" 00:00:00','yyyy-mm-dd hh24:mi:ss'))  t8";
        
        System.out.println(sqlStr);
        
        int[] a={1,2,3,4,5,6,7,8};
        
        return a;
    } 
}
