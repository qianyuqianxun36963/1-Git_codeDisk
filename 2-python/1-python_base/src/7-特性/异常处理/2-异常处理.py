#coding=gbk

#异常的处理

'''
try 语句按如下方式工作。
首先，执行 try 子句 （在 try 和 except 关键字之间的部分）。
如果没有异常发生， except 子句 在 try 语句执行完毕后就被忽略了。
如果在 try 子句执行过程中发生了异常，那么该子句其余的部分就会被忽略。如果异常匹配于 except 关键字后面指定的异常类型，就执行对应的except子句。然后继续执行 try 语句之后的代码。
如果发生了一个异常，在 except 子句中没有与之匹配的分支，它就会传递到上一级 try 语句中。如果最终仍找不到对应的处理语句，它就成为一个 未处理异常 ，终止程序运行，显示提示信息。
'''

while True:
     try:
         x = int(input("Please enter a number: "))
         
         if x == 1:
             10 * (1/0)
             #零除错误（ ZeroDivisionError ）
         elif x == 2:  
             4 + spam*3
             #命名错误（ NameError） 
         elif x == 3:
             '2' + 2
             #类型 错误（ TypeError ）
         elif x == 4:
             pass
             #空语句，不做任何动作。
         else:
             print("程序结束。")
         break
     
     except ZeroDivisionError as z: #在这里通过起别名，可以通过别名获得异常的相关信息，
         print("发生除数为零错误")
         print(ZeroDivisionError)
         print(z)                   
     except NameError:
         print("发生命名错误")
     except TypeError:
         print("发生类型 错误错误")
     except SyntaxError:
         print("发生了语法错误")
     #一个 except 子句可以在括号中列出多个异常的名字，例如:
     except (ZeroDivisionError,NameError,TypeError,SyntaxError): 
         print("这里已经拦截了所有的集中错误。")