package java����.b_����.����.�ַ�����;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AllView {
	public static void main(String args[]){
		 @SuppressWarnings("resource")
		 ApplicationContext ctx = new ClassPathXmlApplicationContext("java����/b_����/����/�ַ�����/beans.xml");//��ȡbean.xml�е�����
		 String��StringBuffer��Ϊ��������  strtest = ctx.getBean("strtest",String��StringBuffer��Ϊ��������.class);//����bean�����ö���
		 strtest.test();		
	}
}
