#coding=gbk

#if控制流程


'''
可以有0个或多个 elif 块;
else 块是可选的.。
关键字 ‘elif‘ 比 ‘else if’短,，并且可以避免过度缩
123一个if ... elif ... elif ...序列 是对其他语言的switch or case 语句的替代方案。
'''

x = int(input("Please enter an integer: "))

if x < 0:
     x = 0
     print('Negative changed to zero')
elif x == 0:
     print('Zero')
elif x == 1:
     print('Single')
else:
     print('More')