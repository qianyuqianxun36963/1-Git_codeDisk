# 在Spring Boot CLI里使用Initializr

如前文所述，如果你想仅仅写代码就完成Spring应用程序的开发，那么Spring Boot CLI是个不错的选择。然而， Spring Boot CLI的功能还不限于此，它有一些命令可以帮你使用Initializr，通过它上手开发更传统的Java项目。

## 构建项目基线

Spring Boot CLI包含了一个init命令，可以作为Initializr的客户端界面。 init命令最简单的用法就是创建Spring Boot项目的基线：

`$ spring init`

在和Initializr的Web应用程序通信后， init命令会下载一个demo.zip文件。解压后你会看到一个典型的项目结构，包含一个Maven的pom.xml构建描述文件。 Maven的构建说明只包含最基本的内容，即只有Spring Boot基线和测试起步依赖。你可能会想要更多的东西。

## 配置依赖、构建类型、打包方式

假设你想要构建一个Web应用程序，其中使用JPA实现数据持久化，使用Spring Security进行安全加固，可以用--dependencies或-d来指定那些初始依赖：

`$ spring init -dweb,jpa,security`

这条命令会下载一个demo.zip文件，包含与之前一样的项目结构，但在pom.xml里增加了Spring Boot的Web、 jpa和security起步依赖。请注意，在-d和依赖之间不能加空格，否则就变成了下载一个ZIP文件，文件名是web,jpa,security。

现在，假设你想用Gradle来构建项目。没问题，用--build参数将Gradle指定为构建类型：

`$ spring init -dweb,jpa,security --build gradle`

默认情况下，无论是Maven还是Gradle的构建说明都会产生一个可执行JAR文件。但如果你想要一个WAR文件，那么可以通过--packaging或者-p参数进行说明：

`$ spring init -dweb,jpa,security --build gradle -p war`

## 初始化后解压

到目前为止， init命令只用来下载ZIP文件。如果你想让CLI帮你解压那个ZIP文件，可以指定一个用于解压的目录：

`$ spring init -dweb,jpa,security --build gradle -p war myapp`

此处的最后一个参数说明你希望把项目解压到myapp目录里去。此外，如果你希望CLI把生成的项目解压到当前目录，可以使用--extract或者-x参数：

`$ spring init -dweb,jpa,security --build gradle -p jar -x`

## 使用帮助了解更多

init命令还有不少其他参数，包括基于Groovy构建项目的参数、指定用Java版本编译的参数，还有选择构建依赖的Spring Boot版本的参数。可以通过help命令了解所有参数的情况：

`$ spring help init`

你也可以查看那些参数都有哪些可选项，为init命令带上--list或-l参数就可以了：

`$ spring init -l`

你一定注意到了，尽管spring init –l列出了一些Initializr支持的参数，但并非所有参数都能直接为Spring Boot CLI的init命令所支持。举例来说，用CLI初始化项目时，你不能指定根包的名字，它默认为demo。 spring help init会告诉你CLI的init命令都支持哪些参数。

无论你是用Initializr的Web界面，在Spring Tool Suite里创建项目，还是用Spring Boot CLI来初始化项目， Spring Boot Initializr创建出来的项目都有相似的项目布局，和你之前开发过的Java项目没什么不同。

# 项目练习

## 不同参数初始化几个基线项目

使用不同的构架参数 构建几个初始项目看看

spring init -dweb,jpa,security -p jar mavenJarApp

spring init -dweb,jpa,security -p war mavenWarApp

spring init -dweb,jpa,security --build gradle -p jar gradleJarApp

spring init -dweb,jpa,security --build gradle -p war gradleWarApp

## 项目对比分析

使用jar方式和war方式的区别：

mavenJarApp  VS  mavenWarApp

在mavenWarApp里面，会有两个地方不同。

### pom文件多一个依赖：

```
<dependency>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-starter-tomcat</artifactId>
	<scope>provided</scope>
</dependency>
```
### 主函数那边多一个类 ServletInitializer.java

ServletInitializer.java

```
package com.example.mavenWarApp;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(DemoApplication.class);
	}

}

```

## 验证执行

在使用 gradle build 进行构建的时候。

上面新建的 gradleJarApp 工程中，命令报错。如果去掉-dweb,jpa,security 就构建成功了。。
