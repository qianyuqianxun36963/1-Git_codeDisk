# 命令行 新建 springboot 项目

## maven新建基础项目

使用mvn脚手架。

`mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=introduceWebStructJaveStruct -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false [-DarchetypeCatalog=local]  [-X] `

### 上面这条初始语句有几点需要注意：

- -X 是用来看输出的，第一次执行时很慢，就是通过它来定位错误

- -DarchetypeCatalog=local 是指定使用本地模板目录。本地模板目录为：**~/.M2/archetype-catalog.xml**
可以用迅雷下载之，路径：https://repo.maven.apache.org/maven2/archetype-catalog.xml

使用 Spring Boot 仅仅需要在pom文件中声明使用 Spring Boot，并添加 spring-boot-starter-web 的依赖即可

## 使用之前创建的基础项目

拷贝a-Code_github\5-springboot\0-baseinit\0-mavenCmdinit\code\SpringbootCMDgenerate 目录下的src和pom.xml过来。

然后修改pom.xml里面的项目名称，这样就够了。

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

## 使用beetl作为示例的模板技术

安装Beetl, 需要在pom中添加如下依赖：

		<dependency>
		    <groupId>com.ibeetl</groupId>
		    <artifactId>beetl</artifactId>
		    <version>2.7.22</version>
		</dependency>

## Web 应用目录结构

1. Web 模板文件位于 resources templates 目录下
2. 模板文件使用的静态资源文件，如css 、图片，存放在 resources/static 目录下。

也就是说：在MVC中,视图名自动在template目录下找到对应的模板名称,模板中使用的静态资源将在static目录下查找


### 示例

如下Controller代码所示，将
"/userDetail.html?id=xxx" 请求映射到 foo 方法：

@RestController
public class ThisController {
    @RequestMapping("/userDetail.html")
    public String foo(String id){
        return "/admin/user.btl";
    }
}

1. 渲染的视图名称是/admin/user.ftl

SpringBoot会在templates下寻找 admin/userlnfo.ftl 模板文件

2. 如果这个 userlnfo.btl 有以下引用
<link href="/css/my.css" rel="stylesheet"/>

SpringBoot会从static下查找ccs/my.css

## 启动并验证项目

### 打包 运行 项目

在pom所在文件夹，shift + 右击，打开命令行

mvn package

cd target

java -jar introduceWebStructJaveStruct-1.0-SNAPSHOT.jar

### 验证项目

现在可以在浏览器输入[http://localhost:8080/rest/123](http://localhost:8080/rest/123)访问项目。
