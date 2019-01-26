package com.neo.service.sender;

import com.neo.model.User;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.rabbit.core.RabbitManagementTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class SendService {
    @Autowired
    private AmqpTemplate template;

    public void sendUserToHiQueue(User user){
        template.convertAndSend("hi",user);
    }

    public void sendMapToHiQueue(Map map){
        template.convertAndSend("hi",map);
    }

    public void sendStrToHiQueue(String str){
        template.convertAndSend("hi",str);
    }

    public void sendStrToFanoutExchange(String str){
        template.convertAndSend("fanout","",str);
    }

    public void sendStrToDirectExchange(String str){
        template.convertAndSend("direct","directfirst",str);
    }

    public void sendStrToDirectExchange2(String str){
        template.convertAndSend("direct","directfirst",str);
    }

    public void sendStrToTopicExchange(String str){
        template.convertAndSend("topic","topic.my",str);
    }

}
