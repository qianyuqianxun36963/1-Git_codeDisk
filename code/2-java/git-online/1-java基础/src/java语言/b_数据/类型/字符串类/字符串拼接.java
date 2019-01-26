package java语言.b_数据.类型.字符串类;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang.StringUtils;
import org.junit.Test;

//StringBuilder cost {} ms32
//StringUtils.join cost {} ms31
//+ cost {} ms17864
//StringBuffer cost {} ms13
//concat cost {} ms7461

//总结：
//用+的方式效率最差，concat由于是内部机制实现，比+的方式好了不少。
//Join 和 StringBuffer，相差不大，Join方式要快些，可见这种JavaScript中快速拼接字符串的方式在Java中也非常适用。
//StringBuilder 的速度最快，但其有线程安全的问题，而且只有JDK5支持。

public class 字符串拼接 {
    @Test
    public void testPlus() {
        String s = "";
        long ts = System.currentTimeMillis();
        for (int i = 0; i < 100000; i++) {
            s = s + String.valueOf(i);
        }
        long te = System.currentTimeMillis();
        System.out.println("+ cost {} ms" + (te - ts));
    }
    @Test
    public void testConcat() {
        String s = "";
        long ts = System.currentTimeMillis();
        for (int i = 0; i < 100000; i++) {
            s = s.concat(String.valueOf(i));
        }
        long te = System.currentTimeMillis();
        System.out.println("concat cost {} ms" + (te - ts));
    }
    @Test
    public void testJoin() {
        List<String> list = new ArrayList<String>();
        long ts = System.currentTimeMillis();
        for (int i = 0; i < 100000; i++) {
            list.add(String.valueOf(i));
        }
        StringUtils.join(list, "");
        long te = System.currentTimeMillis();
        System.out.println("StringUtils.join cost {} ms" + (te - ts));
    }
    @Test
    public void testStringBuffer() {
        StringBuffer sb = new StringBuffer();
        long ts = System.currentTimeMillis();
        for (int i = 0; i < 100000; i++) {
            sb.append(String.valueOf(i));
        }
        sb.toString();
        long te = System.currentTimeMillis();
        System.out.println("StringBuffer cost {} ms" + (te - ts));
    }
    @Test
    public void testStringBuilder() {
        StringBuilder sb = new StringBuilder();
        long ts = System.currentTimeMillis();
        for (int i = 0; i < 100000; i++) {
            sb.append(String.valueOf(i));
        }
        sb.toString();
        long te = System.currentTimeMillis();
        System.out.println("StringBuilder cost {} ms" + (te - ts));
    }
}
