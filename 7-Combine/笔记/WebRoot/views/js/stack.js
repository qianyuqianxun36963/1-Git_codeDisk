// JavaScript Document

function Stack() {  
	this.dataStore = [];//����ջ��Ԫ��
	this.top = 0;
}  

Stack.prototype={  
   push:function push(element) {  
          this.dataStore[this.top++] = element;//���һ��Ԫ�ز���top+1  
        },  
   peek:function peek() {  
          return this.dataStore[this.top-1];//����ջ��Ԫ��  
        },  
   pop:function pop() {  
          return this.dataStore[--this.top];//����ջ��Ԫ�ز���top-1  
       },  
   clear:function clear() {  
           this.top = 0;//��top��0  
         },  
   length:function length() {  
            return this.top;//����ջ�ڵ�Ԫ�ظ���  
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