package controllers;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hi") //������׷����web.xml�ж����spring���ر�־�ĺ���ġ�
public class JspController_Annotation {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model){
		model.addAttribute("message","hello world");
		return "MyJsp";  
	}
}

