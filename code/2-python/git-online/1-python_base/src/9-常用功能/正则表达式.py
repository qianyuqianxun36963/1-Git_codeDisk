#coding=UTF-8

import re

#替换标题标记的例子：
lines = ["#h1 this is head1","head2 #h11#h2#h3"]
#r'#h[0-9]{1,2}' 匹配 #h + 1~2个数字的组合，例如#h1、#h11。而不会匹配到#h、#h123这样的。
#re.sub 是正则表达式替换函数，将line中符合正则的部分替换掉。
for line in lines:
    #获取标签符
    headtag  = re.search(r'#h[0-9]{1,2}', line).group()
    print (headtag)
    #获取标题等级，从标签符上提取
    level = headtag[2:]
    print (level)
    #获取标签内容
    headtext = re.sub(r'#h[0-9]{1,2}', "", line)
    print (headtext)
    #组建新的标签
    newhead  = "<h"+level+">"+headtext+"</h"+level+">"
    print (newhead)

#菜鸟手册上的例子：
#re.match 匹配成功re.match方法返回一个匹配的对象，否则返回None。
#我们可以使用group(num) 或 groups() 匹配对象函数来获取匹配表达式。
a = "123abc456"
print (re.match("([0-9]*)([a-z]*)([0-9]*)",a).groups()) 

print (re.match("([0-9]*)([a-z]*)([0-9]*)",a).group())
print (re.match("([0-9]*)([a-z]*)([0-9]*)",a).group(0))   #123abc456,返回整体
print (re.match("([0-9]*)([a-z]*)([0-9]*)",a).group(1))   #123

#re.search 匹配成功re.search方法返回一个匹配的对象，否则返回None。
#我们可以使用group(num) 或 groups() 匹配对象函数来获取匹配表达式。
a = "123abc456"
print (re.search("([0-9]*)([a-z]*)([0-9]*)",a).groups()) 

print (re.search("([0-9]*)([a-z]*)([0-9]*)",a).group())
print (re.search("([0-9]*)([a-z]*)([0-9]*)",a).group(0))   #123abc456,返回整体
print (re.search("([0-9]*)([a-z]*)([0-9]*)",a).group(1))   #123
print (re.search("([0-9]*)([a-z]*)([0-9]*)",a).group(2))   #abc
print (re.search("([0-9]*)([a-z]*)([0-9]*)",a).group(3))   #456