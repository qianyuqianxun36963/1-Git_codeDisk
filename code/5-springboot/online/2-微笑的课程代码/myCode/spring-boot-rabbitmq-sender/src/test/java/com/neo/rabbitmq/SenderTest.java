package com.neo.rabbitmq;


import com.neo.model.User;
import com.neo.service.sender.SendService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SenderTest {
    @Autowired
    private AmqpTemplate template;

    @Autowired
    SendService sender;

    @Test
    public void testSender(){
        String str = "this is test string";
        template.convertAndSend("hi",new User());
        template.convertAndSend("hi",str);
        template.convertAndSend("out","",str);
        template.convertAndSend("direct","topic",str);
        template.convertAndSend("topic","topic.my",str);
    }

    @Test
    public void testSend2Hi(){
        sender.sendStrToHiQueue("hahaha");
        sender.sendUserToHiQueue(new User());
    }

    @Test
    public void testSend2FanoutExchange(){
        sender.sendStrToFanoutExchange("fanout");
    }

    @Test
    public void testSend2DirectExchange(){
        sender.sendStrToDirectExchange("direct");
        sender.sendStrToDirectExchange2("other");
    }

    @Test
    public void testSend2TopicExchange(){
        sender.sendStrToTopicExchange("topic");
    }
}
