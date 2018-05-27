# 项目介绍

## express 工具使用

这里使用express而不是nodejs本身来实现简单应用。

## 新建文件 start.js:

```
var express = require('express');

var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;
  console.log('Example app listening at http://%s:%s', host, port);
});
```

## 运行

node start.js

## 访问

[http://localhost:3000/](http://localhost:3000/)
