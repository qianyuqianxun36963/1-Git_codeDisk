package java语言.b_数据.类型.字符串类;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AllView {
	public static void main(String args[]){
		 @SuppressWarnings("resource")
		 ApplicationContext ctx = new ClassPathXmlApplicationContext("java语言/b_数据/类型/字符串类/beans.xml");//读取bean.xml中的内容
		 String和StringBuffer作为函数参数  strtest = ctx.getBean("strtest",String和StringBuffer作为函数参数.class);//创建bean的引用对象
		 strtest.test();		
	}
}
