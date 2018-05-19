# 命令行 新建 springboot 项目

## maven新建基础项目

使用mvn脚手架。

`mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=SpringbootCMDgenerate -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false [-DarchetypeCatalog=local]  [-X] `

### 上面这条初始语句有几点需要注意：

- -X 是用来看输出的，第一次执行时很慢，就是通过它来定位错误

- -DarchetypeCatalog=local 是指定使用本地模板目录。本地模板目录为：**~/.M2/archetype-catalog.xml**
可以用迅雷下载之，路径：https://repo.maven.apache.org/maven2/archetype-catalog.xml

使用 Spring Boot 仅仅需要在pom文件中声明使用 Spring Boot，并添加 spring-boot-starter-web 的依赖即可

## 修改配置文件

### 添加spring boot 主配置

添加如下内容，使项目变成springboot项目

```
<parent>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-parent</artifactId>
  <version>2.0.0.RELEASE</version>
</parent>
```

### 添加依赖

因为我们搭建的是 Web 应用，必须添加 spring-boot-starter-web 依赖

spring-boot-starter-web 中包含了**tomcat**等的依赖！
```
<dependencies>
  <dependency>
     <groupId>org.springframework.boot</groupId>
     <artifactId>spring-boot-starter-web</artifactId>
  </dependency>
  <dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-test</artifactId>
    <scope>test</scope>
  </dependency>
</dependencies>
```

### 添加构建配置

如果不加下面这个配置，打包成功，但是运行时报错："**SpringbootCMDgenerate-1.0-SNAPSHOT.jar中没有主清单属性**"
```
<build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
</build>
```

### 另外还可以加的一些配置 非必须的

```
<properties>
  <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  <java.version>1.8</java.version>
</properties>
```

### 这样，我们就得到了最简单的springboot项目的pom文件，如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.wang.ustc</groupId>
  <artifactId>SpringbootCMDgenerate</artifactId>
  <packaging>jar</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>SpringbootCMDgenerate</name>
  <url>http://maven.apache.org</url>

  <parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.0.0.RELEASE</version>
  </parent>

  <dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-test</artifactId>
        <scope>test</scope>
    </dependency>
  </dependencies>
  <build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
  </build>

</project>

```

## 编写java类

**注意：这里，java文件放置的位置没有强制要求，实际尝试了下，主类和控制类可以放在src下任意位置，注释都能生效！**

在src/main 目录下 新建目录 java

然后根据包名依次创建com/wang/ustc/

### 启动类 SpringBootApp.java

```
package com.wang.ustc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootApp {
    public static void main(String[] args) {
        SpringApplication.run(SpringBootApp.class, args);
    }
}
```

#### 注意！ 其中的 @SpringBootApplication 注释

有些示例上面，这里写的是**SpringBootConfiguration** 但是此处不行。。

说明：@SpringBootApplication是Spring Boot的核心注解，也是一个组合注解。主要组合了@Configuration、@EnableAutoConfiguration、@ComponentScan。

如果不使用组合注解@SpringBootApplication则可以直接使用@Configuration、@EnableAutoConfiguration、@ComponentScan。

### 控制类 TestController.java

```
package com.wang.ustc;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @RequestMapping("test")
    public String test(){
        return "test";
    }
}
```

## 启动并验证项目

### 打包 运行 项目

在pom所在文件夹，shift + 右击，打开命令行

mvn package

cd target

java -jar SpringbootCMDgenerate-1.0-SNAPSHOT.jar

### 验证项目

现在可以在浏览器输入[http://localhost:8080/test](http://localhost:8080/test)访问项目。
