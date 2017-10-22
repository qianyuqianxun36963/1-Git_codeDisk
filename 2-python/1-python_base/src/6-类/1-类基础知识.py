#coding=gbk

'''
类(Class): 用来描述具有相同的属性和方法的对象的集合。它定义了该集合中每个对象所共有的属性和方法。对象是类的实例。

类变量：     类变量在整个实例化的对象中是公用的。类变量定义在类中且在函数体之外。类变量通常不作为实例变量使用。
实例变量：    定义在方法中的变量，只作用于当前实例的类。
数据成员：    类变量或者实例变量用于处理类及其实例对象的相关的数据。

方法：       类中定义的函数。
方法重载：    如果从父类继承的方法不能满足子类的需求，可以对其进行改写，这个过程叫方法的覆盖（override），也称为方法的重载。
继承：       即一个派生类（derived class）继承基类（base class）的字段和方法。继承也允许把一个派生类的对象作为一个基类对象对待。例如，有这样一个设计：一个Dog类型的对象派生自Animal类，这是模拟"是一个（is-a）"关系（例图，Dog是一个Animal）。

实例化：      创建一个类的实例，类的具体对象。
对象：       通过类定义的数据结构实例。对象包括两个数据成员（类变量和实例变量）和方法。
'''

#定义一个类
class FirstClass:
    'Optional class documentation string'#类文档字符串
    
    Count = 0                         #类变量：   empCount变量是一个  类变量,它的值将在这个类的所有实例之间共享。你可以在内部类或外部类使用Employee.empCount访问。
    
    def __init__(self, name, value):  #构造函数或初始化方法        __init__()方法是一种特殊的方法，被称为类的构造函数或初始化方法，当创建了这个类的实例时就会调用该方法
      self.name = name
      self.value = value
      FirstClass.Count += 1
    
    def __del__(self):                #析构函数 __del__ ，__del__在对象消逝的时候被调用，当对象不再被使用时，__del__方法运行
      class_name = self.__class__.__name__
      print (class_name, "destroyed")
    
    def setdata(self,value):
        self.value = value
    def display(self):
        print (self.name + self.value)

#初始化和设置实例化类的对象  
x = FirstClass('wang',' student')
y = FirstClass('wang',' student')
x.setdata(' xxxx')

#访问类的方法和属性
x.display()
y.display()
print ("Total Objects of FirstClass %d" % FirstClass.Count)

# 你可以添加，删除，修改类的属性
x.age = 7  # 添加一个 'age' 属性
x.age = 8  # 修改 'age' 属性
del x.age  # 删除 'age' 属性

#对象销毁
'''
同Java语言一样，Python使用了引用计数这一简单技术来追踪内存中的对象。
在Python内部记录着所有使用中的对象各有多少引用。
一个内部跟踪变量，称为一个引用计数器。
'''
z=x
print (id(x),id(z))
del x
del z



