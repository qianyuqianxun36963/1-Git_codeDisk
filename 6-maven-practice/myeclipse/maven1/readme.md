
# 使用maven模板生成java项目

本项目TempGenerateJavapro的命令行如下：
mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=TempGenerateJavapro -DarchetypeArtifactId=maven -archetype-quickstart -DinteractiveMode=false -X **-X 是用来看输出的**

## Archetype
maven 使用 Archetype 概念为用户提供不同类型的项目模板，它是一个非常大的列表（614个数字）。 maven 使用下面的命令来帮助用户快速开始构建一个新的 Java 项目。

## mvn archetype:generate 创建命令

### 常用命令

mvn archetype:generate -DgroupId={project-packaging} -DartifactId={project-name} -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

这句命令中告诉 Maven 来从 maven-archetype-quickstart 模板创建 Java 项目。如果忽视 archetypeArtifactId 选项，一个巨大的 Maven 模板列表将列出。

本工程文件下，执行的是：mvn archetype:generate -DgroupId=com.wang.ustc -DartifactId=TempGenerateJavapro -DarchetypeArtifactId=maven -archetype-quickstart -DinteractiveMode=false

### 获得模板列表

命令行输入 mvn archetype:generate > templates.txt

键入命令mvn archetype:generate，1000 +模板会被提示在屏幕上，你没有办法看到它，或者选择什么。为了解决这个问题，输出模板列表，像这样保存为文本文件：

C:\worksp> mvn archetype:generate > templates.txt

### 交互的方式新建工程

#### 选择模板
命令行输入 mvn archetype:generate

Maven 开始处理，并按要求选择所需的原型，执行结果如下图中所示：

INFO] Scanning for projects...
[INFO] Searching repository for plugin with prefix: 'archetype'.
[INFO] -------------------------------------------------------------------
[INFO] Building Maven Default Project
[INFO]    task-segment: [archetype:generate] (aggregator-style)
[INFO] -------------------------------------------------------------------
[INFO] Preparing archetype:generate
...
600: remote -> org.trailsframework:trails-archetype (-)
601: remote -> org.trailsframework:trails-secure-archetype (-)
602: remote -> org.tynamo:tynamo-archetype (-)
depending on the Wicket-Scala project.
...
Choose a number or apply filter
(format: [groupId:]artifactId, case sensitive contains): 203:

按 Enter 键选择默认选项（984：maven-archetype-quickstart）

#### 输入项目信息

Maven会要求原型的特定版本 以及项目细节信息，这些在命令提示下输入即可
