package com.neo.config;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class RabbitConfig {

    @Bean
    public Queue neoQueue() {
        return new Queue("neo");
    }

    @Bean
    public Queue objectQueue() {
        return new Queue("object");
    }


}
