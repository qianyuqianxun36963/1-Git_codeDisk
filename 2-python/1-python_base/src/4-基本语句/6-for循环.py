#coding=gbk

'''
Python的 for 语句与你在C或者Pascal中使用的有一点区别。
和常见的等差数列迭代（如Pascal中）
或让用户能够自定义迭代步骤和停止条件（如 C）不一样，
Python 的 for 语句按照元素出现的顺序迭代任何序列（列表或字符串）例如（没有双关意）：
'''

words = ['cat', 'window', 'defenestrate']
for w in words:
    print(w, len(w))
    
words = ('cat', 'window', 'defenestrate')
for w in words:
    print(w, len(w))


words = {'age':18,'name':"wang"}
for w in words:
    print(w,words[w])
  


'''
如果要在循环内修改正在迭代的序列（例如，复制所选的项目），
建议首先制作副本。迭代序列不会隐式地创建副本。 
使用切片就可以很容易地做到：
'''

words = ['cat', 'window', 'defenestrate']

for w in words[:]:  # Loop over a slice copy of the entire list.
  if len(w) > 2:
      words.insert(0, w)
      
print(words)

#range() 函数
'''
如果你确实需要遍历一个数字序列，内置函数 range() 会派上用场。它会生成等差序列：
range(开头，结尾，步长) 步长可以为正，可以为负。 不包含结尾。
'''
print(range(5))
print(range(5,10))
print(range(0,10,3))
print(range(-10,-100,-30))

for i in range(998,1000):
    print(i)
    
a = ['111','222','333','444','555']
for i in range(len(a)):
    print(a[i])
    

chapter = [3,2]

for i in range(len(chapter)):
    print('chapter%d' % i)
    for j in range(chapter[i]):
        print('part%d' % j)
