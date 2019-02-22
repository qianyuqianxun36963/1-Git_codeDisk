#coding=gbk

#用户自定义异常

'''
基本的自定义异常
1、直接或间接的从 Exception 类派生
2、重写“__init__”方法。这里面可以添加、设置异常的属性。
3、重写“__str__”方法。 捕获的异常，通过别名显示的就是 “__str__” 函数所返回的结果。
'''
class MyError(Exception):
    def __init__(self, value):
        self.value = value
    def __str__(self):
        return repr("here stores the description of this error.")
    
try:
    raise MyError(2*2)
except MyError as e:
    print('My exception occurred, value:', e.value)
    print(e)  #这里显示的就是 “__str__” 函数所返回的结果。
    
'''
异常类中可以定义任何其它类中可以定义的东西，
但是通常为了保持简单，只在其中加入几个属性信息，以供异常处理句柄提取。
如果一个新创建的模块中需要抛出几种不同的错误时，
一个通常的作法是为该模块定义一个异常基类，然后针对不同的错误类型派生出对应的异常子类:

'''

class Error(Exception):
    """Base class for exceptions in this module."""
    pass

class InputError(Error):
    """Exception raised for errors in the input.

    Attributes:
        expression -- input expression in which the error occurred
        message -- explanation of the error
    """

    def __init__(self, expression, message):
        self.expression = expression
        self.message = message

class TransitionError(Error):
    """Raised when an operation attempts a state transition that's not
    allowed.

    Attributes:
        previous -- state at beginning of transition
        next -- attempted new state
        message -- explanation of why the specific transition is not allowed
    """

    def __init__(self, previous, next, message):
        self.previous = previous
        self.next = next
        self.message = message
      
    def __str__(self):
        return ("这里重写了""__str__""方法，所以别名就可以直接输出.")
        #return repr("这里重写了“__str__”方法，所以别名就可以直接输出.")
        
while True:
    try:
        x = int(input("Please enter a number: "))
        
        if x == 1:
            raise Error #这里抛出父类异常，子类异常是捕获不到的。
        elif x == 2:  
            raise InputError("error","这里是子类异常 InputError ")
        elif x == 3:
            raise TransitionError("123","345","789")
        else:
            print("程序结束。")
        break
    
    except InputError as I:
        print(I)#因为没重写“__str__”方法，这里显示的为空。
        print(I.message)
        print(I.expression)
    except TransitionError as T:
        print(T)
        print(T.previous)
    except Error as E: #父类异常可以匹配所有子类异常。
        print("这里拦截了所有异常的顶级父类异常，所以后面的子类异常就不会再被捕获了。")