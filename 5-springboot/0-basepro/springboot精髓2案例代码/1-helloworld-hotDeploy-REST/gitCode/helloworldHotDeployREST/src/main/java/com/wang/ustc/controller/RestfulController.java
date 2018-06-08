package com.wang.ustc.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestfulController {
    @RequestMapping(value = "/rest/{id}")
    public Integer getCreditCode(@PathVariable String id){
        return 123;
    }
}
