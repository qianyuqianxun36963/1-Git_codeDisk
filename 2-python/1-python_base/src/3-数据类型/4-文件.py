#coding=gbk

import os
#import os.path

# 文件
input = open('file.txt','r')
#S1 = input.read()
S2 = input.read(20)
S3 = input.readline()
S4 = input.readlines() 
S = [S2,S3,S4]
print(S)
output = open('file.txt','w')

#---简单文件路径文件读写---------
#文件路径的写法！！后面的w代表，么有文件就创建。
f = open("file.html",'w')#fp = open("test.txt",w) 直接打开一个文件，如果文件不存在则创建文件
f.write("take care of the path")  
f.close()

#---长文件名文件读写-------------
#如果是多层目录下的文件。上面的写法是不行的。
#如直接这样写是不行的！：
#f = open("org/python/file.html",'w')
if not os.path.exists('org/python'):
    os.makedirs("org/python")  #不加'/'会在当前目录下新建文件夹。
#os.makedirs("/org/python")#加'/'就会在C目录下新建文件夹了。
f = open("org/python/file.html",'w')
f.write("take care of the path")  
f.close()

#---长文件名文件读写的函数---------
#普通的open不能接受带路径的长文件名。这里写了一个可以接受长文件名的。打开文件，没有则创建之。
def myOpenFile(path,mode='w'):
    p = os.path.split(path)
    dir = p[0]
    if not os.path.exists(dir):
        os.makedirs(dir) 
    f = open(path,mode)    
    return f

f = myOpenFile('org/python/file.html')
f.write("My open file function")  
f.close()
