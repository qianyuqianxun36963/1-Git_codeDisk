
# 将eclipse创建的普通java项目转化成mvn项目，以及eclipse的maven项目

## javapro

创建普通的java项目。

## JavaproToMvn

### 目的：
将eclipse创建的java项目加入maven支持。

### 操作:
只需要在项目根目录下加入pom.xml文件即可

### 效果
此时通过命令行，可以进行 如：mvn package 操作了。

## JavaproToMvnEclipse

### 目的：
将项目进一步修改为支持maven插件的eclipse的java项目。

### 操作:

1、修改.classpath文件，.project文件。如maven2文件夹所述。

2、根目录下创建src/main/java文件夹，和src/main/test文件夹。

3、将src文件夹下面的文件全移动到 src/main/java文件夹下。

4、修改pom.xml文件，用maven来管理依赖的包等。

### 效果：

项目图标上显示‘m’标志，表明项目是eclipse支持的maven项目了。

如果没有配置pom.xml，这里Maven Dependencies 都不会显示！

配置pom管理项目依赖，会看到路径显示在了项目下面。
