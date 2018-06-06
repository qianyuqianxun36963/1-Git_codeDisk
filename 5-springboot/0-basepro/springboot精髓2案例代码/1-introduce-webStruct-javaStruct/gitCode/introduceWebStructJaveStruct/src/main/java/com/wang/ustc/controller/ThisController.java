package com.wang.ustc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ThisController {

    @RequestMapping("/userDetail.html")
    public String foo(String id){
        return "admin/user.btl";
    }
}
