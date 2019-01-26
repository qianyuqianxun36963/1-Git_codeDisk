package com.neo.rabbit.fanout;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FanoutSender {

	@Autowired
	private AmqpTemplate rabbitTemplate;

	public void send() {
		String context = "hi, fanout msg ";
		System.out.println("Sender : " + context);
		//convertAndSend 函数，当两个参数时候，第一个参数指queue名，
		//当三个参数时候，第一个参数指exchange名，第二个参数指routingkey，广播时任意填，不影响。
		this.rabbitTemplate.convertAndSend("fanoutExchange","", context);
	}

}