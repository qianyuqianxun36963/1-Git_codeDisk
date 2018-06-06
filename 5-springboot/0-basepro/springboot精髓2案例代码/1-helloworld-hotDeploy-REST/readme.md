# 命令行 新建 springboot 项目

## maven新建基础项目

使用mvn脚手架。

`mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=helloworldHotDeployREST -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false [-DarchetypeCatalog=local]  [-X] `

### 上面这条初始语句有几点需要注意：

- -X 是用来看输出的，第一次执行时很慢，就是通过它来定位错误

- -DarchetypeCatalog=local 是指定使用本地模板目录。本地模板目录为：**~/.M2/archetype-catalog.xml**
可以用迅雷下载之，路径：https://repo.maven.apache.org/maven2/archetype-catalog.xml

使用 Spring Boot 仅仅需要在pom文件中声明使用 Spring Boot，并添加 spring-boot-starter-web 的依赖即可

## 使用之前创建的基础项目

拷贝a-Code_github\5-springboot\0-baseinit\0-mavenCmdinit\code\SpringbootCMDgenerate 目录下

src和pom.xml过来，然后修改pom.xml里面的项目名称，这样就够了。

## 添加热部署依赖

一般代码编写时，修改类后必须再次重新运行应用，对于开发者来说非常不方便。SpringBoot提供了spring-boot-devtools 它能在修改类或者配置文件的时候自动重新加载 pring Boot应用，需要打开pom文件，添加如下依赖:

    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-devtools</artifactId>
        <scope>test</scope>
    </dependency>

## 添加一个restful的controller类

```
package com.wang.ustc.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestfulController {
    @RequestMapping(value = "/rest/{id}")
    public Integer getCreditCode(@PathVariable String id){
        return 123;
    }
}
```

## 启动并验证项目

### 打包 运行 项目

在pom所在文件夹，shift + 右击，打开命令行

mvn package

cd target

java -jar helloworldHotDeployREST-1.0-SNAPSHOT.jar

### 验证项目

现在可以在浏览器输入[http://localhost:8080/rest/123](http://localhost:8080/rest/123)访问项目。
