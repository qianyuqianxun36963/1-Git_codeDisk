// JavaScript Document

function Stack() {  
	this.dataStore = [];//保存栈内元素
	this.top = 0;
}  

Stack.prototype={  
   push:function push(element) {  
          this.dataStore[this.top++] = element;//添加一个元素并将top+1  
        },  
   peek:function peek() {  
          return this.dataStore[this.top-1];//返回栈顶元素  
        },  
   pop:function pop() {  
          return this.dataStore[--this.top];//返回栈顶元素并将top-1  
       },  
   clear:function clear() {  
           this.top = 0;//将top归0  
         },  
   length:function length() {  
            return this.top;//返回栈内的元素个数  
          }  
} ; 

//	var lk=new Stack();  
//	lk.push("likeke");  
//	lk.push("zhangsan");  
//	lk.push("wangwu");  
//	alert(lk.peek());//"wangwu"  
//	lk.length();3  
//	lk.pop();//"wangwu"  
//	alert(lk.peek());//"zhangsan"  
//	lk.clear();  
//	lk.peek();//undefind  
//	lk.length();0  