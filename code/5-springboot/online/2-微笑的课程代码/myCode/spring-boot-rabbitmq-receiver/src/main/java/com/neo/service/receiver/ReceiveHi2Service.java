package com.neo.service.receiver;

import com.neo.model.User;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import static java.lang.Thread.sleep;

@Component
@RabbitListener(queues = "hi")
public class ReceiveHi2Service {

    @RabbitHandler
    public void process(String hello) throws Exception {
        sleep(2000);
        System.out.println("this is 2222222222, Receive from queue hi  : " + hello);
    }

    @RabbitHandler
    public void process(User user) {
        System.out.println("this is 2222222222, Receive from queue hi  : " + user);
    }

}
