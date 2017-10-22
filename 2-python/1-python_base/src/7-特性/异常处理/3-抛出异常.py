#coding=gbk

#抛出异常

#raise 语句允许程序员强制抛出一个指定的异常。例如:
try:
    raise NameError('HiThere')
except NameError:
    print('An exception flew by!')
#如果你需要明确一个异常是否抛出，但不想处理它， raise 语句可以让你很简单的重新抛出该异常:
#    raise
    
    