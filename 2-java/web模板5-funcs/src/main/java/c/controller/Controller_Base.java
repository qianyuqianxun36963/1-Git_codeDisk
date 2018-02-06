package c.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import u.utils.ContextUtil;
import u.utils.DBUtils;
import u.utils.PropertiesUtil;
import u.utils.UtilTestBean;
import u.utils.UtilTestNotBean;

@Controller
@RequestMapping("/Base")
public class Controller_Base {
	@RequestMapping("/ContextUtil")
	public void callFunc(){
		DBUtils dbUtils = (DBUtils) ContextUtil.getBean("DBUtils");
		System.out.println(dbUtils.getDBname());
		
		//还可以通过注入的方式获取配置信息，这里就不写了。
		
		//先通过ContextUtil拿到配置工具类，再获取配置信息
		PropertiesUtil propertiesUtil = (PropertiesUtil) ContextUtil.getBean("propertiesUtil");
		System.out.println(propertiesUtil.get("smFetchReportUrl"));
		
		//直接通过PropertiesUtil 类获取配置信息
		System.out.println(PropertiesUtil.fileParams.get("smFetchReportUrl"));
		
		//通过实例化配置工具类来获取配置信息。
		PropertiesUtil propertiesUtilInstance = new PropertiesUtil();
		List properties = new ArrayList();
		properties.add("classpath*:conf/property/*.properties");
		//propertiesUtilInstance.setFilePaths(properties);
		
		UtilTestNotBean.test_static();
		UtilTestNotBean utilTestNotBean = new UtilTestNotBean();
		utilTestNotBean.test_dynamic();
		
//		按理说，下面的用法与DBUtils一样才对，但是，这里报错，找不到这个bean。
//		UtilTestBean utilTestBean = (UtilTestBean) ContextUtil.getBean("UtilTestBean");
//		UtilTestBean.test_static();
//		utilTestBean.test_dynamic();
	}

}
