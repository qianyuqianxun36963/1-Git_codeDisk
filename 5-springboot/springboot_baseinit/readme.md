# 命令行 新建 springboot 项目

## 新建支持maven的javaweb基础项目

使用mvn脚手架。

`mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=SpringbootCMDgenerate -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false  [-X] -X 是用来看输出的`

使用 Spring Boot 仅仅需要在pom文件中声明使用 Spring Boot，并添加 spring-boot-starter-web 的依赖即可

## 修改配置文件

### 添加如下内容，使项目变成springboot项目

```
<parent>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-starter-parent</artifactId>
	<version>2.0.0.RELEASE</version>
</parent>
```

### 因为我们搭建的是 Web 应用，必须添加 spring-boot-starter-web 依赖
```
<dependencies>
  <dependency>
     <groupId>org.springframework.boot</groupId>
     <artifactId>spring-boot-starter-web</artifactId>
  </dependency>
</dependencies>
```

### 这样，我们就得到了最简单的springboot项目的pom文件，如下：

```
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

	<modelVersion>4.0.0</modelVersion>

	<groupId>com.neo</groupId>
	<artifactId>spring-boot-hello</artifactId>
	<version>1.0</version>

	<name>spring-boot-hello</name>
	<description>Demo project for Spring Boot</description>

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
	</dependencies>

</project>

```
