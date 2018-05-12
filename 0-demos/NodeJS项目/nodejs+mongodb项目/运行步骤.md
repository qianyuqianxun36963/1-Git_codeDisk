# nodejs+mongodb做项目的详解

[项目源](https://github.com/songtanjichuan/chihuo_0.0.1.git)

## 1. 准备工作
Nodejs、express和mongodb的安装(这里安装的都是最新版的)

安装：
Nodejs的安装没什么说的。不过安装完之后测试是否成功用过原来版本的同学可能会有一些问题。
原来的版本是：$ node -v  新版不在支持$,直接在命令行中：node -v

安装最新版的express之后，需要在安装：express-generator   //express命令工具，很多初学者都会遇到这个问题(当然我也是)
mongodb的安装下面会讲解到。

用express创建一个项目的框架。
这个我创建一个名字叫 chihuo 的网站，用的模板引擎是 ejs。

express -e chihuo -e表示ejs模板引擎，不写 -e 默认的创建jade模板引擎

然后在输入：
cd chihuo    //进入到你创建的项目目录
npm install  //读取根目录中的package.json文件然后安装项目所依赖的包

然后通过 cmd 命令行 cd 到 chihuo 的目录下

node app

这样就启动项目了。

### 提示

提示1：如果不能启动项目：看看app.js文件中没有监听端口。如果没有,
在 module.exports = app;语句之前添加app.listen(3000);

提示2：Ctrl + c 终止运行

然后我们可以在浏览器地址栏里敲入 http://127.0.0.1:3000/ 或者 http://localhost:3000
这就是你的第一个express创建的node app。
到这里你就完成了项目的重要的一步。

### 之后的讲解 我们从目录开始

```
– node_modules   项目中依赖的包
– public         公共资源放的目录
– routes         学名 路由，里面放着一些路由文件
– views          放着就是页面文件了
– app.js         项目的入口文件。当然你也可以改成其他的名字。
```

## 2. 现在基本的结果已经有了，之后就是创建数据库了

### mongodb的安装

这里只介绍window的安装
在官网上下载zip，这个我装在D盘的mongodb目录下

1. 在D盘中创建 mongodb 文件夹然后把下载的包解压后把其中的 bin 文件夹拷贝到创建的 mongodb 文件夹中。

2. 然后在mongodb文件夹中创建一个 data 文件夹，再在 data 文件夹中创建 db 文件夹

3. 打开CMD命令行
d:
cd mongodb\bin
mongod -dbpath D:\mongodb\data\db

4. 在打开一个CMD命令行：
d:
cd mongodb\bin
mongo

5. 这样就可以用了。

### 接着就设计我们的数据库了

在刚才的打开的mongodb数据库中输入：

```
use chihuo                                         \创建一个叫chihuo的数据库
db.createCollection("users")                       \创建一个集合
db.users.insert({"name":"admin","password":"111"}) \给users集合添加一个文档。
db.users.find()                                    \查询你添加的文档
```

### 再接着就是在项目中连接刚才创建的数据库了

在项目根目录下创建一个的文件夹 database ，然后在创建一个

db.js

```
var mongoose = require('mongoose');
var db = mongoose.connect('mongodb://localhost/chihuo');//；连接数据库
var Schema = mongoose.Schema;   //  创建模型
var userScheMa = new Schema({
	name: String,
	password: String
}); //  定义了一个新的模型，但是此模式还未和users集合有关联
exports.user = db.model('users', userScheMa); //  与users集合关联
```

## 3. 接着在views文件夹创建视图文件了

我们上面用express创建的项目视图文件是ejs后缀名，我们一般习惯使用html后缀名。
那么我们怎么让他识别html的视图文件呢？

在app.js文件中 找到

```
>app.set('view engine', 'ejs');
把它替换成：
>app.set( 'view engine', 'html' );
再用app.engine()方法注册模板引擎的后缀名。代码：
>app.engine('.html',require('ejs').__express);//两个下划线
```

#### 创建html页面

然后我们创建一个login.html(登陆页面),index.html(原来有，改一下后缀名就行)，ucenter.html(登陆之后的页面)；

#### login.html
```
<!DOCTYPE html>
<html>
  <head>
	<title>my login</title>
	<link rel='stylesheet' href='/stylesheets/style.css' />
  </head>
  <body>
	<h1>Hello World</h1>
	<p>Welcome to</p>
	<form action="ucenter" method="post">
		<p>
			<span>name:</span>
			<br>
			<input id="name" name="name" type="text">
		</p>
		<p>
			<span>password:</span>
			<br>
			<input id="password" name="password" type="password">
		</p>
		<p><input type="submit" value="submit"></p>
	</form>
  </body>
</html>
```

#### index.html
```
<!DOCTYPE html>
<html>
  <head>
	<title>my index</title>
	<link rel='stylesheet' href='/stylesheets/style.css' />
  </head>
  <body>
	<h1>Hello World</h1>
	<p>Welcome to</p>
	<p><a href="login">登陆</a></p>
  </body>
</html>
```

#### ucenter.html
```
<!DOCTYPE html>
<html>
  <head>
	<title>my ucenter</title>
	<link rel='stylesheet' href='/stylesheets/style.css' />
  </head>
  <body>
	<h1>Hello World</h1>
	<p>你已经成功登陆</p>
  </body>
</html>
```
## 4. 最后就是路由的控制了，在routes文件中的index.js
```
 var express = require('express');
 var router = express.Router();
 var user = require('../database/db').user;


 /* GET home page. */
 router.get('/', function(req, res) {
   res.render('index', {
     title: 'index'
   });
 });

  /* login */
 router.get('/login', function(req, res) {
   res.render('login', {
     title: 'login'
   });
 });

  /* ucenter */
 router.post('/ucenter', function(req, res) {
   var query = {
     name: req.body.name,
     password: req.body.password
   };
   (function() {
     user.count(query, function(err, doc) { //count返回集合中文档的数量，和 find 一样可以接收查询条件。query 表示查询的条件
       if (doc == 1) {
         console.log(query.name + ": 登陆成功 " + new Date());
         res.render('ucenter', {
           title: 'ucenter'
         });
       } else {
         console.log(query.name + ": 登陆失败 " + new Date());
         res.redirect('/');
       }
     });
   })(query););

module.exports = router;
```

github源码地址

mongoose学习地址
