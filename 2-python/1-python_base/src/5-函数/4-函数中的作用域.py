#coding=gbk

#函数中的作用域

'''
Pyhton 中，程序的变量并不是在哪个位置都可以访问的，访问权限决定于这个变量是在哪里赋值的。
变量的作用域决定了在哪一部分程序可以访问哪个特定的变量名称。两种最基本的变量作用域如下：
全局变量
局部变量
'''

total = 0; # 这是一个全局变量
# 可写函数说明
def sum( arg1, arg2 ):
    #返回2个参数的和."
    total = arg1 + arg2; # total在这里是局部变量.
    print ("local variable: ", total)
    return total;

#调用sum函数
sum( 10, 20 );
print ("global variable : ", total)