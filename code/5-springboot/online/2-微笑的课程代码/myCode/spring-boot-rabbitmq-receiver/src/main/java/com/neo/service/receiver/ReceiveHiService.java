package com.neo.service.receiver;

import com.neo.model.User;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(queues = "hi")
public class ReceiveHiService {

    @RabbitHandler
    public void process(String hello) {
        System.out.println("Receive from queue hi  : " + hello);
    }

    @RabbitHandler
    public void process(User user) {
        System.out.println("Receive from queue hi  : " + user);
    }

}
