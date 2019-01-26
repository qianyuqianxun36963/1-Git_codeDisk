package com.neo.service.receiver;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(queues = "second")
public class ReceiveSecondService {

    @RabbitHandler
    public void process(String str) {
        System.out.println("Receive from queue second  : " + str);
    }

}
