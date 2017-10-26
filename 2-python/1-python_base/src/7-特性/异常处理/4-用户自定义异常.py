#coding=gbk

#�û��Զ����쳣

'''
�������Զ����쳣
1��ֱ�ӻ��ӵĴ� Exception ������
2����д��__init__�������������������ӡ������쳣�����ԡ�
3����д��__str__�������� ������쳣��ͨ��������ʾ�ľ��� ��__str__�� ���������صĽ����
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
    print(e)  #������ʾ�ľ��� ��__str__�� ���������صĽ����
    
'''
�쳣���п��Զ����κ��������п��Զ���Ķ�����
����ͨ��Ϊ�˱��ּ򵥣�ֻ�����м��뼸��������Ϣ���Թ��쳣��������ȡ��
���һ���´�����ģ������Ҫ�׳����ֲ�ͬ�Ĵ���ʱ��
һ��ͨ����������Ϊ��ģ�鶨��һ���쳣���࣬Ȼ����Բ�ͬ�Ĵ���������������Ӧ���쳣����:

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
        return ("������д��""__str__""���������Ա����Ϳ���ֱ�����.")
        #return repr("������д�ˡ�__str__�����������Ա����Ϳ���ֱ�����.")
        
while True:
    try:
        x = int(input("Please enter a number: "))
        
        if x == 1:
            raise Error #�����׳������쳣�������쳣�ǲ��񲻵��ġ�
        elif x == 2:  
            raise InputError("error","�����������쳣 InputError ")
        elif x == 3:
            raise TransitionError("123","345","789")
        else:
            print("���������")
        break
    
    except InputError as I:
        print(I)#��Ϊû��д��__str__��������������ʾ��Ϊ�ա�
        print(I.message)
        print(I.expression)
    except TransitionError as T:
        print(T)
        print(T.previous)
    except Error as E: #�����쳣����ƥ�����������쳣��
        print("���������������쳣�Ķ��������쳣�����Ժ���������쳣�Ͳ����ٱ������ˡ�")