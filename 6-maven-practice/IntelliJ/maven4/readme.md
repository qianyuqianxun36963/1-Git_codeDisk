
# 两种方式新建java项目

## CMDgenerate

### 命令行方式新建简单java项目

首先进入目录maven4中

输入命令 mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=JavawebCMDgenerate -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

至此，新建一个javaweb简单项目完成。

#### 项目目录布局

.|____CounterWebApp  
||____pom.xml  
||____src  
|||____main  
||||____resources  
||||____webapp  
|||||____index.jsp  
|||||____WEB-INF  
||||||____web.xml  

## CMDtoIDE

### 命令行生成的项目改为支持eclipse的项目

#### 命令行生成基本配置文件

进入已经新建的项目目录中

##### 方式一：

输入命令 mvn eclipse:eclipse -Dwtpversion=2.0

此选项 -Dwtpversion=2.0 告诉 Maven 将项目转换到 Eclipse 的 Web 项目(WAR)，而不是默认的Java项目(JAR)。为方便起见，以后我们会告诉你如何配置 pom.xml 中的这个 WTP 选项。

至此，项目包含了eclipse项目所需的配置文件。

eclipse import可以导入项目进来。但此时，插件的支持没体现，项目上没‘m’符号。

##### 方式二：

先修改pom.xml文件

<build> </build> 中间加入下面内容。

```
    <plugins>
        <!-- Eclipse project -->
      <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-eclipse-plugin</artifactId>
      <version>2.9</version>
      <configuration>
              <!-- Always download and attach dependencies source code -->
        <downloadSources>true</downloadSources>
        <downloadJavadocs>false</downloadJavadocs>
        <!-- Avoid type mvn eclipse:eclipse -Dwtpversion=2.0 -->
        <wtpversion>2.0</wtpversion>
      </configuration>
      </plugin>

      <!-- Set JDK Compiler Level -->
      <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-compiler-plugin</artifactId>
      <version>2.3.2</version>
      <configuration>
        <source>1.8</source>
        <target>1.8</target>
      </configuration>
      </plugin>

      <!-- For Maven Tomcat Plugin -->
      <plugin>
      <groupId>org.apache.tomcat.maven</groupId>
      <artifactId>tomcat7-maven-plugin</artifactId>
      <version>2.2</version>
      <configuration>
        <path>/CounterWebApp</path>
      </configuration>
      </plugin>
    </plugins>

```

为方便起见，声明 maven-eclipse-plugin，并配置wtpversion 来避免输入参数 -Dwtpversion=2.0。现在，每次使用 mvn eclipse:eclipse，Maven将这个项目导入转换为 Eclipse Web 项目。

其中，还可以指定java 的编译器版本，这里的是1.8，与eclipse中默认的版本一致，如果出现不一致错误，可以调整这里。或者修改生成后的文件.setting中的“org.eclipse.jdt.core.prefs”和“org.eclipse.wst.common.project.facet.core.xml”文件，强制修改项目的java编译器版本。

#### 进一步修改配置文件，支持eclipse的maven插件。

为了使eclipse更好支持，需要修改.project和.classpath文件。具体内容见项目文件。

.project文件加入需要的maven插件：
```
  <buildSpec>
    <buildCommand>
      <name>org.eclipse.m2e.core.maven2Builder</name>
      <arguments>
      </arguments>
    </buildCommand>
  </buildSpec>
  
  <natures>
    <nature>org.eclipse.m2e.core.maven2Nature</nature>
  </natures>
```

.class文件加入maven引用：

```
  <classpathentry kind="con" path="org.eclipse.m2e.MAVEN2_CLASSPATH_CONTAINER">
	<attributes>
		<attribute name="maven.pomderived" value="true"/>
	</attributes>
  </classpathentry>
```


再导入项目，此时可以看到‘m’ 符号了。

此时，可能会出现缺少javaweb相关的jar包的错。

修改pom文件，加入jar包：

```
  <dependencies>
    <!--CMDtoIDE 增加的，提供javaweb支持 -->
    <!-- web项目新建自动创建的jar包 -->  
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>bean-validator</artifactId>
      <version>3.0-JBoss-4.0.2</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.enterprise.deploy</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.jms</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.management.j2ee</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.eclipse.persistence</groupId>
      <artifactId>javax.persistence</artifactId>
      <version>2.0.0</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.resource</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.security.auth.message</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.security.jacc</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.servlet</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.servlet.jsp</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish</groupId>
      <artifactId>javax.servlet.jsp.jstl</artifactId>
      <version>3.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>javax.xml.bind</groupId>
      <artifactId>jaxb-api-osgi</artifactId>
      <version>2.2.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>javax.ws.rs</groupId>
      <artifactId>jsr311-api</artifactId>
      <version>1.1.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish.web</groupId>
      <artifactId>jstl-impl</artifactId>
      <version>1.2</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>javax.mail</groupId>
      <artifactId>mail</artifactId>
      <version>1.4.3</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>javax.xml</groupId>
      <artifactId>webservices-api-osgi</artifactId>
      <version>2.0.1</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.jboss.weld</groupId>
      <artifactId>weld-osgi-bundle</artifactId>
      <version>1.0.1-SP3</version>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>org.glassfish.web</groupId>
      <artifactId>javax.servlet.jsp.jstl</artifactId>
      <version>1.2.1</version>
    </dependency>
  </dependencies>

```

## IDEgenerate

### Eclipse方式生成javaweb项目

点击Eclipse菜单栏File->New->Ohter->Maven得到如下图所示对话框：

<img src="http://www.yiibai.com/uploads/allimg/140215/1101251452-2.png" width = "400" height = "300" alt="图片名称" align=center />

选中Maven Project并点击Next，到下一个对话框继续点击Next得到如下对话框

<img src="http://www.yiibai.com/uploads/allimg/140215/110125F47-3.png" width = "400" height = "300" alt="图片名称" align=center />

如图示操作，选择maven-archetype-quickstart，点击Next

<img src="http://www.yiibai.com/uploads/allimg/140215/1101251318-4.png" width = "400" height = "300" alt="图片名称" align=center />

按图示填写好groupId, artfactId,version等信息，点击Finish。
由此我们成功创建了一个简单的Maven项目，项目结构如图所示

<img src="http://www.yiibai.com/uploads/allimg/140215/1101256194-5.png" width = "400" height = "300" alt="图片名称" align=center />
