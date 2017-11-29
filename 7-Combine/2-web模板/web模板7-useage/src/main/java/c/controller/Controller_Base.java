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
		

	}

}
