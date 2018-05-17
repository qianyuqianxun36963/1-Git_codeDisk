package simple.demo.controller.serverletController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import simple.demo.controller.baseController;

@Controller
public class serverletController extends baseController {
    @RequestMapping(value="/hello")
    public String say(){
        return "hello world";
    }
}
