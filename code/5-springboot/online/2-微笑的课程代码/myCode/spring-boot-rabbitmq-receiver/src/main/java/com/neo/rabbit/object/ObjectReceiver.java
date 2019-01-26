package com.neo.rabbit.object;

import com.neo.model.User;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
@RabbitListener(queues = "object")
public class ObjectReceiver {

    @RabbitHandler
    public void process(User user) {
        System.out.println("Receiver object : " + user);
    }

    @RabbitHandler
    public void process(Map user) {
        System.out.println("Receiver object : " + user);
    }

}
