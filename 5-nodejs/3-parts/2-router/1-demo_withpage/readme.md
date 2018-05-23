# Node.js实现文件路由功能

## 创建主文件 start.js

### 第一步：创建文件Luyou.js，在里面声明引用模块的变量和需响应的文件路由
```
//获取http模块
var http = require("http");
//文件模块
var fs = require('fs');

//主页路由模块,file文件夹里的index.js文件
var index = require('./file/index');
//错误处理文件路径
var error = "./file/error404.html";
//春晓页面路径
var cx = "./file/cunxiao.html";
```

需提供路由的文件主要包括三个文件，第一个是一个index模块，负责主页的响应；第二个是404错误的错误页面响应；第三个是春晓这首诗的响应页面，文件目录如下：
这里写图片描述

### 第二步：实现文件响应函数及404错误响应函数

```
//函数Response，将HTML、css、js等文件响应给客户端
var Response = function(res,filePath){
    //读取文件，读取完成后给客户端响应
    fs.readFile(filePath,function(err,data){
        if(err){                        //如果失败，就返回错误文件
            if(filePath != error)       //如果失败的不是错误文件，才返回错误文件
                Response(res,error);
        }else{
            res.writeHead(200,{              //响应客户端，将文件内容发回去
                'Content-type':"text/html"});
            res.end(data);
        }
    });
};
//404错误响应文件
var error404 = function(res){
   Response(res,error);
};
```

该函数使用了fs这一文件模块，用于提取文件里面的内容，提取出来的内容（或错误）都会在回调函数传回来，这也就是node.js非阻塞I/O事件编程思想的体现。

### 第三步：创建HTTP服务器，根据URL请求的不同实现文件路由并启动服务器

```
//创建HTTP服务器
var server = http.createServer(function(req,res){
   console.log(req.url);               //在控制台打印请求
    //判断URL，提供不同的路由
    if(req.url == '/index' || req.url == '/') {    //主页
        index.index(res);
    }
    else if(req.url == '/chunxiao') {   //访问cunxiao.html（特意使用中文命名）
       Response(res,cx);
    }
    else {                              //访问其它静态文件，如/stylesheets/index.css
        Response(res,"./file"+req.url);
    }
});

//启动服务器
server.listen('3000',function(){
    console.log("服务器启动");
});
```

使用node.js（或IDE工具）运行start.js，输入http://localhost:3000/context时可看到效果：

以上代码均在Luyou.js文件里面，下面附录了春晓.html，error404.html，index.js的代码：

## 附录

### 1.index.js
```
/**
 * Created by Administrator on 2015/3/26.
 */
exports.index = function(res){
    res.writeHead(200,{
        'Content-type':"text/html"});
    res.write('<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'
        +'床前明月光');
    res.end();
};
```

### 2.error404.html
<!DOCTYPE html>
```
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<b>错误404：页面没有找到.</b>
</body>
</html>
```

### 3.chunxiao.html
```
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>春晓</title>
  </head>
<body>

<nav>春晓</nav>
<div id="value">
    <p>春眠不觉晓</p>
    <p>处处闻啼鸟</p>
    <p>夜来风雨声</p>
    <p>花落知多少</p>
</div>
</body>
</html>
```

## 访问项目

使用node.js（或IDE工具）运行start.js，输入下面路径可看到效果：

http://localhost:3000/                //访问首页----路径匹配 1

http://localhost:3000/index           //访问首页----路径匹配 1

http://localhost:3000/index/context   //访问文章----路径匹配 2

http://localhost:3000/error404.html   //访问静态页--路径匹配 3

http://localhost:3000/error           //真正的错误--真正的错误
