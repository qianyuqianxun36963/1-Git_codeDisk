package controllers;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hi") //这里是追加在web.xml中定义的spring拦截标志的后面的。
public class JspController_Annotation {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model){
		model.addAttribute("message","hello world");
		return "MyJsp";  
	}
}

