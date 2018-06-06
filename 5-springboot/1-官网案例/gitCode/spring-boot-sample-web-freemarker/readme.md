# 项目介绍

## 这个是官网给的示例项目

### 运行时需修改pom文件：

#### 原来的parent配置：

```
<!--	<parent>
		&lt;!&ndash; Your own application should inherit from spring-boot-starter-parent &ndash;&gt;
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-samples</artifactId>
		<version>${revision}</version>
	</parent>-->
```

#### 注释掉，改为starter-parent。
```
	<parent>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-parent</artifactId>
		<version>2.0.2.RELEASE</version>
		<relativePath/> <!-- lookup parent from repository -->
	</parent>
```
