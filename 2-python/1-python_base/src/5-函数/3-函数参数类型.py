#coding=gbk

#函数参数相关

#必须参数
#******************************************************************
'''
必需参数须以正确的顺序传入函数。调用时的数量必须和声明时的一样。
调用printme()函数，你必须传入一个参数，不然会出现语法错误：
'''
def printme( str ):
   "打印任何传入的字符串"
   print (str);
   return;
 
#调用printme函数
printme('this is required');
#printme()

# 默认参数值
#******************************************************************
'''
最有用的形式是指定一个或多个参数的默认值。这种方法创建的函数被调用时，可以带有比定义的要少的参数。
'''

def defaultpara(para1,para2=' love',para3=' you'):
    print(para1+para2+para3)
    
defaultpara('I')
defaultpara('I',' like',' her')
defaultpara('I',' want')


'''
默认值在定义时段中执行函数定义时计算，因此：
'''
i = 5
def f(arg=i): #默认值也可以由变量给出。
# def f(arg=5): #其实上一句就相当于这样了。    
    print(arg)
i = 6
f()
f(6)


'''
默认值是只计算一次。这在默认值是列表、字典或大部分类的实例等易变的对象的时候又有所不同。
例如，下面的函数在后续调用过程中会累积传给它的参数：
'''
def f(a, L=[]):
    L.append(a)
    return L

print(f(1))
print(f(2))
print(f(3))

'''
如果你不想默认值在随后的调用中共享，可以像这样编写函数：
'''
def f(a, L=None):
    if L is None:
        L = []
    L.append(a)
    return L

print(f(1))
print(f(2))
print(f(3))

#关键字参数
#******************************************************************
'''
关键字参数
关键字参数和函数调用关系紧密，函数调用使用关键字参数来确定传入的参数值。
使用关键字参数允许函数调用时参数的顺序与声明时不一致，因为 Python 解释器能够用参数名匹配参数值。
以下实例在函数 printme() 调用时使用参数名：
'''

def printinfo( name, age ):
   "打印任何传入的字符串"
   print ("name: ", name);
   print ("age: ", age);
   return;
 
#调用printinfo函数
printinfo( age=50, name="runoob" );

#不定长参数
#******************************************************************
'''
不定长参数
你可能需要一个函数能处理比当初声明时更多的参数。这些参数叫做不定长参数，和上述2种参数不同，声明时不会命名。
加了星号（*）的变量名会存放所有未命名的变量参数。如果在函数调用时没有指定参数，它就是一个空元组。我们也可以不向函数传递未命名的变量:
'''

def printinfo( arg1, *vartuple ):
   "打印任何传入的参数"
   print ("输出: ")
   print (arg1)
   for var in vartuple:
      print (var)
   return;
 
# 调用printinfo 函数
printinfo( 10 );
printinfo( 70, 60, 50 );
