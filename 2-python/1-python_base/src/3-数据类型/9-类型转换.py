#coding=gbk

#基本类型的相互转换
'''
整数字符串转换为对应的整数
int('12')
小数字符串转换为对应小数
float('12.34')
数字转换为字符串
str(123.45)
ASCII码转换为相应字符
chr(97)
字符转换为响应ASCII码
ord('a')
'''

#数值 与 字符串
str1 = "12"
print(str1*10)
int1 = int(str1)
print(int1*10)

str2 = "12.34"
float = float(str2)
print(float*100)

#字符转换为响应ASCII码 
char1 = "a"
ord1 = ord(char1)
print(ord1)


