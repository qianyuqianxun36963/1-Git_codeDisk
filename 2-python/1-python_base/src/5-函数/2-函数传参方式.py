#coding=gbk

#函数传参方式

'''
在 Python 中，所有参数（变量）都是按引用传递。
如果你在函数里修改了参数，那么在调用这个函数的函数里，原始的参数也被改变了。
'''

def changeme( mylist ):
   "修改传入的列表"
   mylist.append([1,2,3,4]);
   print ("inside function: ", mylist)
   return
 
# 调用changeme函数
mylist = [10,20,30];
changeme( mylist );
print ("outside function: ", mylist)