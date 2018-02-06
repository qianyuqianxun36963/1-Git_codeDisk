package c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Http")
public class Controller_Http {
    @RequestMapping("/NoPoolTest")
    public void callFunc(){
        
    }
}
