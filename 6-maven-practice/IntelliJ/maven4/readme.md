
# 两种方式新建java项目

## CMDgenerate

### 命令行方式新建简单javaweb项目

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

### 命令行生成的项目改为支持idea的项目

直接用idea打开cmd生成的只有src和pom的文件即可，idea自动支持maven！！极其方便！

### 添加相关的jar包(eclipse中需要，idea中暂时不清楚可需要...)

此时，可能会出现缺少javaweb相关的jar包的错。

修改pom文件，加入jar包

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
