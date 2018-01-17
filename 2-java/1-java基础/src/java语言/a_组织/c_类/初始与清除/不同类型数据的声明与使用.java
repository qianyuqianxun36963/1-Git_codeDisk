package java语言.a_组织.c_类.初始与清除;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

public class 不同类型数据的声明与使用 {
	@Test
	public void testBaseType() {
		int i, j; // 仅进行了声明
		// j = i + 1; //编译报错，不可直接访问值。
		// System.out.println(i); //编译报错，不可直接访问值。
		i = 123; // 没有问题，可以直接设值。
		System.out.println(i);
	}

	@Test
	public void testString() {
		String stra, strb; // 仅进行了声明
		// strb = stra + "hello"; //编译报错，不可直接访问值。
		// System.out.println(str); //编译报错，不可直接访问值。
		stra = "hello world"; // 没有问题，可以直接设值。
		System.out.println(stra);
	}

	public void testMap() {
		//Map map; // 仅进行了声明，没有开辟空间
		//map.put("name", "hello world"); // 编译报错，仅声明不可以赋值
		
		Map map = new HashMap();
		map.put("name", "hello world");
		System.out.println(map);
	}
}
