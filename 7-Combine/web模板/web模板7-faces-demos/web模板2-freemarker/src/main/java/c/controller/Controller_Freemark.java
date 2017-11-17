package c.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import z.entity.po.User;


@Controller
@RequestMapping("/base")
public class Controller_Freemark {
	@RequestMapping("/helloWorld")
	public String helloWorld(Model model) {
		String word0 = "Hello ";
		String word1 = "World!";
		//将数据添加到视图数据容器中
		model.addAttribute("word0",word0);
		model.addAttribute("word1",word1);
		return "hello";
	}
	
	@RequestMapping(value = "/testFreemarker")
	@ResponseBody
	public ModelAndView testFreemarker(@RequestParam(value = "a", required = false) String a) throws Exception {
		ModelAndView mv = new ModelAndView();

		User user = new User("21","may");

		List<String> list = new ArrayList<String>();
		list.add("Jack1");
		list.add("Jack2");
		list.add("Jack3");

		mv.addObject("list", list);
		mv.addObject("user", user);
		mv.addObject("param", new String(a.getBytes("iso8859-1"), "utf-8"));
		mv.setViewName("may");
		return mv;
	}
	
}
