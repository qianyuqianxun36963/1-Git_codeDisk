# Express搭建NodeJS项目

## 基础环境安装

1.安装Node.js；

2.安装npm;

3.安装Express;

在本例中默认全局安装express

`npm install -g express`

## 安装express生成器

`npm install -g express-generator`

如果没有安装express-generator或安装路径不对，会报以下错误

'express' 不是内部或外部命令，也不是可运行的程序

查看是否安装成功，随便输的一个命令

`express --help`

## 创建项目文件夹

此处安装了ejs模板，默认安装模板Jade,

```
mkdir mydemo
cd mydemo
```

运行初始化工程命令

`express -e myblog mydemo`

在命令行输入cd myblog && npm install，等待安装，安装完成后打开myblog文件夹，如图：

第一次打开直接输入命令 `SET DEBUG=myblog.* & npm start`

第二次打开直接输入命令 `npm start`

查看项目是否创建成功，若成功，可打开本地3000端口看到如下截图

[访问地址](http://localhost:3000/)
