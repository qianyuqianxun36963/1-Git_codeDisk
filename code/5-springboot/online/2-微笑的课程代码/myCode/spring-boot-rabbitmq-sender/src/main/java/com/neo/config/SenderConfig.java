package com.neo.config;

import org.springframework.amqp.core.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SenderConfig {
    @Bean
    public Queue hiQueue() {
        return new Queue("hi");
    }

    @Bean
    public Queue firstQueue() {
        return new Queue("first");
    }

    @Bean
    public Queue secondQueue() {
        return new Queue("second");
    }

    @Bean
    public Queue thirdQueue() {
        return new Queue("third");
    }

    @Bean
    FanoutExchange fanoutExchange() {
        return new FanoutExchange("out");
    }

    @Bean
    TopicExchange topicExchange(){
        return new TopicExchange("topic");
    }

    @Bean
    DirectExchange directExchange(){
        return new DirectExchange("direct");
    }

    @Bean
    Binding bindingFirst2Fanout(Queue firstQueue, FanoutExchange fanoutExchange) {
        return BindingBuilder.bind(firstQueue).to(fanoutExchange);
    }

    @Bean
    Binding bindingFirst2Direct(Queue firstQueue,DirectExchange directExchange){
        return BindingBuilder.bind(firstQueue).to(directExchange).with("directfirst");
    }

    @Bean
    Binding bindingFirst2Topic(Queue firstQueue, TopicExchange topicExchange) {
        return BindingBuilder.bind(firstQueue).to(topicExchange).with("topicfirst.#");
    }

    @Bean
    Binding bindingSecond2Topic(Queue secondQueue, TopicExchange topicExchange) {
        return BindingBuilder.bind(secondQueue).to(topicExchange).with("topicsecond.#");
    }
}
