package c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import u.utils.ContextUtil;
import u.utils.DBUtils;
import u.utils.UtilTestBean;
import u.utils.UtilTestNotBean;

@Controller
@RequestMapping("/Base")
public class Controller_Base {
	@RequestMapping("/ContextUtil")
	public void callFunc(){
		DBUtils dbUtils = (DBUtils) ContextUtil.getBean("DBUtils");
		System.out.println(dbUtils.getDBname());
		
		UtilTestNotBean.test_static();
		UtilTestNotBean utilTestNotBean = new UtilTestNotBean();
		utilTestNotBean.test_dynamic();
		
//		按理说，下面的用法与DBUtils一样才对，但是，这里报错，找不到这个bean。
//		UtilTestBean utilTestBean = (UtilTestBean) ContextUtil.getBean("UtilTestBean");
//		UtilTestBean.test_static();
//		utilTestBean.test_dynamic();
	}

}
