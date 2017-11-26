
# 两种方式新建java项目

## CMDgenerate

### 命令行方式新建简单java项目

首先进入目录maven2中

输入命令 mvn archetype:generate 

输入新建所需参数信息

至此，新建一个java简单项目完成。

## CMDtoIDE

### 命令行生成的项目改为支持eclipse的项目

#### 命令行生成基本配置文件

进入已经新建的项目目录中

输入命令 mvn eclipse:eclipse  

至此，项目包含了eclipse项目所需的配置文件。

eclipse import可以导入项目进来。但此时，插件的支持没体现，项目上没‘m’符号。

#### 修改项目中配置文件

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

## IDEgenerate

### Eclipse方式生成java项目

点击Eclipse菜单栏File->New->Ohter->Maven得到如下图所示对话框：

<img src="http://www.yiibai.com/uploads/allimg/140215/1101251452-2.png" width = "400" height = "300" alt="图片名称" align=center />

选中Maven Project并点击Next，到下一个对话框继续点击Next得到如下对话框

<img src="http://www.yiibai.com/uploads/allimg/140215/110125F47-3.png" width = "400" height = "300" alt="图片名称" align=center />

如图示操作，选择maven-archetype-quickstart，点击Next

<img src="http://www.yiibai.com/uploads/allimg/140215/1101251318-4.png" width = "400" height = "300" alt="图片名称" align=center />

按图示填写好groupId, artfactId,version等信息，点击Finish。
由此我们成功创建了一个简单的Maven项目，项目结构如图所示

<img src="http://www.yiibai.com/uploads/allimg/140215/1101256194-5.png" width = "400" height = "300" alt="图片名称" align=center />
