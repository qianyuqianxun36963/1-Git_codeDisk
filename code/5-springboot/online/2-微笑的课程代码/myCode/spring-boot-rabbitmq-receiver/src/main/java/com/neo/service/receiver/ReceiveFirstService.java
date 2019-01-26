package com.neo.service.receiver;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(queues = "first")
public class ReceiveFirstService {

    @RabbitHandler
    public void process(String str) {
        System.out.println("Receive from queue first  : " + str);
    }

}
