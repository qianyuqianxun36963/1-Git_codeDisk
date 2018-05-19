var http = require('http');
server = http.createServer(function (req, res) {
var html = '<html>'
+'<head>'
+'<title>nodejs</title>'
+'</head>'
+'<body><h1>'
+ 'hello world!'
+'</h1></body>'
+'</html>';
  res.writeHeader(200, {"Content-Type": "text/html"});
  res.write(html);
res.end();
})
server.listen(8000);
console.log("httpd start @8000");