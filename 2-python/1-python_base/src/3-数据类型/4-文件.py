#coding=gbk

import os
#import os.path

# �ļ�
input = open('file.txt','r')
#S1 = input.read()
S2 = input.read(20)
S3 = input.readline()
S4 = input.readlines() 
S = [S2,S3,S4]
print(S)
output = open('file.txt','w')

#---���ļ�·���ļ���д---------
#�ļ�·����д�����������w����ô���ļ��ʹ�����
f = open("file.html",'w')#fp = open("test.txt",w) ֱ�Ӵ�һ���ļ�������ļ��������򴴽��ļ�
f.write("take care of the path")  
f.close()

#---���ļ����ļ���д-------------
#����Ƕ��Ŀ¼�µ��ļ��������д���ǲ��еġ�
#��ֱ������д�ǲ��еģ���
#f = open("org/python/file.html",'w')
if not os.path.exists('org/python'):
    os.makedirs("org/python")  #����'/'���ڵ�ǰĿ¼���½��ļ��С�
#os.makedirs("/org/python")#��'/'�ͻ���CĿ¼���½��ļ����ˡ�
f = open("org/python/file.html",'w')
f.write("take care of the path")  
f.close()

#---���ļ����ļ���д�ĺ���---------
#��ͨ��open���ܽ��ܴ�·���ĳ��ļ���������д��һ�����Խ��ܳ��ļ����ġ����ļ���û���򴴽�֮��
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
