# 项目介绍

nodejs 入门项目

直接运行：node hello.js 即可

然后在浏览器方位 localhost:8000 查看结果！

## 用法

node [options] [V8 options] [script.js | -e "script" | - ] [arguments]

可查看命令行选项文档，了解更多使用 Node.js 运行脚本的选项与方法。

 ## 例子

例子，一个使用 Node.js 编写的 web服务器，响应返回
```

 'Hello World'：

const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});

server.listen(port, hostname, () => {
  console.log(`服务器运行在 http://${hostname}:${port}/`);
});
```

要运行这个服务器，需将代码保存到一个名为 hello.js 的文件，并使用 Node.js 执行：

$ node hello.js
服务器运行在 http://127.0.0.1:3000/
文档中大部分例子都可以用类似的方法运行。
