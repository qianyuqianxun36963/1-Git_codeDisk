package com.neo.service.receiver;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(queues = "third")
public class ReceiveThirdService {

    @RabbitHandler
    public void process(String str) {
        System.out.println("Receive from queue third  : " + str);
    }

}
