package com.wang.ustc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ThisController {

    @RequestMapping("/userDetail.html")
    public ModelAndView foo(String id){
        return new ModelAndView("admin/user.btl");
    }

    @RequestMapping("/userTest.html")
    public ModelAndView showUser(){
        ModelAndView modelandview = new ModelAndView();
        modelandview.addObject("user","user");
        modelandview.setViewName("user.btl");
        return modelandview;
    }
}
