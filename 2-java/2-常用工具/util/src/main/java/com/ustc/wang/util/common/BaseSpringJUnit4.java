//package com.ustc.wang.util.common;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.transaction.annotation.Transactional;
//
//@RunWith(SpringJUnit4ClassRunner.class)//表示该测试用例是运用springjunit4测试的环�?
//@ContextConfiguration(locations = "classpath*:springQuartz.xml")//用于指定配置文件�?在的位置
////@Transactional(transactionManager="transactionManager")//方法都在�?个事务中运行，如果不加入这个注解配置，事务控制就会完全失效！
//public abstract class BaseSpringJUnit4 {
//	@Before
//	public void init(){
//		System.out.println("start....");
//	}
//
//	@After
//	public void destroy(){
//		System.out.println("end....");
//	}
//}