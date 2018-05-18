package com.wang.ustc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class baseController {
	@RequestMapping("/say")
	public @ResponseBody String say(){
		return "hello";
	}
}
