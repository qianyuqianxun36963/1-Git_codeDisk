这下面试另一个项目的，等以后可以试试写。

1. 去activemq官网下载：https://www.baidu.com/link?url=-KVJT1OInPSjikOJs6Lt7K6AA7oGruc_iUR9nw2gUjCQ5sc0lcfqaOtJhCcauT-z&wd=&eqid=c7d778a8000d24a60000000656ea1f1a

2. 进入bin目录双击activemq.bat启动mq

这样表示启动成功。

3. 新建一个Java项目，以下是maven的pom.xml文件内容，下载有关的jar包。

[html] view plain copy
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">  
    <modelVersion>4.0.0</modelVersion>  
    <groupId>test</groupId>  
    <artifactId>test</artifactId>  
    <version>0.0.1-SNAPSHOT</version>  
    <packaging>war</packaging>  
  
    <dependencies>  
        <dependency>  
            <groupId>junit</groupId>  
            <artifactId>junit</artifactId>  
            <version>4.10</version>  
            <scope>test</scope>  
        </dependency>  
        <dependency>  
            <groupId>org.springframework</groupId>  
            <artifactId>spring-context</artifactId>  
            <version>3.1.0.RELEASE</version>  
        </dependency>  
        <dependency>  
            <groupId>org.springframework</groupId>  
            <artifactId>spring-jms</artifactId>  
            <version>3.1.0.RELEASE</version>  
        </dependency>  
        <dependency>  
            <groupId>org.springframework</groupId>  
            <artifactId>spring-test</artifactId>  
            <version>3.1.0.RELEASE</version>  
        </dependency>  
        <dependency>  
            <groupId>javax.annotation</groupId>  
            <artifactId>jsr250-api</artifactId>  
            <version>1.0</version>  
        </dependency>  
        <dependency>  
            <groupId>org.apache.activemq</groupId>  
            <artifactId>activemq-all</artifactId>  
            <version>5.9.0</version>  
        </dependency>  
        <dependency>  
            <groupId>org.apache.xbean</groupId>  
            <artifactId>xbean-spring</artifactId>  
            <version>3.16</version>  
        </dependency>  
    </dependencies>  
  
  
  
</project>  

4. 配置spring
[html] view plain copy
<?xml version="1.0" encoding="UTF-8"?>  
<beans xmlns="http://www.springframework.org/schema/beans"  
xmlns:context="http://www.springframework.org/schema/context"  
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:amq="http://activemq.apache.org/schema/core"  
xmlns:jms="http://www.springframework.org/schema/jms"  
xsi:schemaLocation="http://www.springframework.org/schema/beans     
        http://www.springframework.org/schema/beans/spring-beans-4.0.xsd     
        http://www.springframework.org/schema/context     
        http://www.springframework.org/schema/context/spring-context-4.0.xsd  
        http://www.springframework.org/schema/jms  
        http://www.springframework.org/schema/jms/spring-jms-4.0.xsd  
        http://activemq.apache.org/schema/core  
        http://activemq.apache.org/schema/core/activemq-core-5.8.0.xsd">  
  
    <context:component-scan base-package="com.sy.test" />  
  
    <amq:connectionFactory id="amqConnectionFactory"  
        brokerURL="tcp://localhost:61616" />  
  
    <bean id="connectionFactory"  
        class="org.springframework.jms.connection.CachingConnectionFactory">  
        <constructor-arg ref="amqConnectionFactory" />  
    </bean>  
  
    <!-- Spring提供的JMS工具类，它可以进行消息发送、接收等 -->  
    <bean id="jmsTemplate" class="org.springframework.jms.core.JmsTemplate">  
        <!-- 这个connectionFactory对应的是我们定义的Spring提供的那个ConnectionFactory对象 -->  
        <property name="connectionFactory" ref="connectionFactory" />  
    </bean>  
  
    <!--这个是队列目的地，点对点的 -->  
    <bean id="queueDestination" class="org.apache.activemq.command.ActiveMQQueue">  
        <constructor-arg>  
            <value>queue</value>  
        </constructor-arg>  
    </bean>  
  
    <!-- 消息监听容器 -->  
    <bean id="jmsContainer"  
        class="org.springframework.jms.listener.DefaultMessageListenerContainer">  
        <property name="connectionFactory" ref="connectionFactory" />  
        <property name="destination" ref="queueDestination" />  
        <property name="messageListener" ref="consumer" />  
    </bean>  
  
</beans>  

5. product.java
[java] view plain copy
package com.sy.test;  
  
import javax.annotation.Resource;  
import javax.jms.Destination;  
import javax.jms.JMSException;  
import javax.jms.Message;  
import javax.jms.Session;  
  
import org.springframework.jms.core.JmsTemplate;  
import org.springframework.jms.core.MessageCreator;  
import org.springframework.stereotype.Component;  
  
@Component  
public class Product  
{  
    @Resource  
    private JmsTemplate jmsTemplate;  
  
    public void sendMessage(Destination destination, final String message)  
    {  
        jmsTemplate.send(destination, new MessageCreator()  
        {  
            public Message createMessage(Session session) throws JMSException  
            {  
                return session.createTextMessage(message);  
            }  
        });  
    }  
}  

6. consumer.java
[java] view plain copy
package com.sy.test;  
  
import javax.jms.JMSException;  
import javax.jms.Message;  
import javax.jms.MessageListener;  
import javax.jms.TextMessage;  
  
import org.springframework.stereotype.Component;  
  
@Component  
public class Consumer implements MessageListener   
{  
  
    public void onMessage(Message message)  
    {  
        TextMessage textMsg = (TextMessage) message;    
        try {    
            System.out.println("消息内容是：" + textMsg.getText());    
        } catch (JMSException e) {    
            e.printStackTrace();    
        }    
    }  
      
}  

7. junit测试
[java] view plain copy
package test;  
  
  
import javax.jms.Destination;  
  
import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.beans.factory.annotation.Qualifier;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;  
  
import com.sy.test.Product;  
  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration("classpath:/applicationContext.xml")  
public class JMSTest  
{  
    @Autowired  
    private Product product;  
    @Autowired  
    @Qualifier("queueDestination")  
    private Destination destination;  
  
    @Test  
    public void testSend()  
    {  
        for (int i = 0; i < 2; i++)  
        {  
            product.sendMessage(destination, "你好，生产者！这是消息：" + (i + 1));  
        }  
    }  
}  

以上完成所有配置。
