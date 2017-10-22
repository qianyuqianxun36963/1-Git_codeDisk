#coding=gbk

#定义一个类
class Vector:
    'Optional class documentation string'#类文档字符串
    
    def __init__(self, a, b):     #这里是重载了类的内置类方法，其中有关操作的方法就是重载操作符了。
      self.a = a
      self.b = b

    def __str__(self):
      return 'Vector (%d, %d)' % (self.a, self.b)
   
    def __add__(self,other):
      return Vector(self.a + other.a, self.b + other.b)

#Python 内置类属性
'''
__dict__ : 类的属性（包含一个字典，由类的数据属性组成）
__doc__ :类的文档字符串
__name__: 类名
__module__: 类定义所在的模块（类的全名是'__main__.className'，如果类位于一个导入模块mymod中，那么className.__module__ 等于 mymod）
__bases__ : 类的所有父类构成元素（包含了以个由所有父类组成的元组）
'''

print ("Vector.__doc__:", Vector.__doc__)
print ("Vector.__name__:", Vector.__name__)
print ("Vector.__module__:", Vector.__module__)
print ("Vector.__bases__:", Vector.__bases__)
print ("Vector.__dict__:", Vector.__dict__)


#Python 内置类方法
'''
类的专有方法：
__init__ : 构造函数，在生成对象时调用
__del__ : 析构函数，释放对象时使用
__repr__ : 打印，转换
__setitem__ : 按照索引赋值
__getitem__: 按照索引获取值
__len__: 获得长度
__cmp__: 比较运算
__call__: 函数调用
__add__: 加运算
__sub__: 减运算
__mul__: 乘运算
__div__: 除运算
__mod__: 求余运算
__pow__: 称方
'''


# 类的内置类方法可以被重载
v1 = Vector(2,10)
v2 = Vector(5,-2)
print (v1 + v2)

