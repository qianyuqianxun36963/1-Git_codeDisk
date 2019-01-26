package java语言.b_数据.类型.基本类型;

import java.math.BigDecimal;

public class 精位数计算 {
    public static void main(String args[]){
        BigDecimal arg1 = new BigDecimal("257.01");
        BigDecimal arg2 = new BigDecimal("15.02");
        System.out.println(arg1.add(arg2));
    }
}
