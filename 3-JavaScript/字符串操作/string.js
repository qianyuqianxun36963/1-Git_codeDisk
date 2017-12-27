function say_hello(){
	alert(getResourcePath());
	testStartWith();
}


function testStartWith(){
	 var teststr = "hello world";
	 var substr = "hello";
	 if(teststr.startWith(substr))
		 alert(teststr + " is start with " + substr);
}

String.prototype.startWith=function(str){     
  var reg=new RegExp("^"+str);     
  return reg.test(this);        
}  

//获取图片访问地址前缀
function getResourcePath(){
//	var resourcePath = "http://210.28.216.100:9080"; //测试的时候用这个。
	var basePath = "http://slave:8080/educationalManage"; // jQuery.getBasePath();
	var resourcePath = basePath.substring(0, basePath.lastIndexOf(":"))+ ":9080";
	
	return resourcePath;
}