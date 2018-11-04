package www.ustc.wang.redis.web;

import www.ustc.wang.redis.model.User;
import www.ustc.wang.redis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("rest_redis")
public class RedisController {
        @Resource
        private UserService userService;
        @GetMapping("set")
        public void set() {
 userService.set("key1", new User(1, "meepoguan", 26));
}
        @GetMapping("get")
        public String get() {
 return userService.get("key1").getName();
}
        @GetMapping("stringset")
        public void stringset() {
 userService.setCode("stringkey", "meepoguan_coke");
}
        @GetMapping("stringget")
        public String stringget() {
 return userService.getCode("stringkey");
}
}