#coding=UTF-8

# python ִ��cmd�����С�
# hi = os.system("coscmd -b mylife-1255399141 list -a") ֻ���� 0/1
# hi = os.popen("coscmd -b mylife-1255399141 list -a")  ����ִ�н��

import os  
#cos cmd�� oscmd -b mylife-1255399141 signurl
#imgpath�� 1-ǧѰ/2-�鷨/�����ռ�/�����鷨��/ŷ��ѯ���ųɹ���Ȫ����/37745574_38.jpg
#�������coscmd -b mylife-1255399141 signurl 1-ǧѰ/2-�鷨/�����ռ�/�����鷨��/ŷ��ѯ���ųɹ���Ȫ����/37745574_38.jpg
#         coscmd -b mylife-1255399141 list -a

#�ļ�����ͼƬ����
imgnum = 1

#�Զ���һ��ִ�������У������ؽ���ĺ���
def execCmd(cmd):
  r = os.popen(cmd)
  text = r.read()
  r.close()
  return text

# write "data" to file-filename
def writeFile(filename, data):
  f = open(filename, "w")
  f.write(data)
  f.close()

#����� i �Ǵ�0~6. �����Ҫ��ĳһ�¿�ʼ���޸�����range�е�'0' ��ӵ����¿�ʼ����Ϊ'2'���ɡ�
f=open('imgdir.html','w+')  
for i in range(0,imgnum):
    imgpath = execCmd("coscmd -b mylife-1255399141 signurl 1-ǧѰ/2-�鷨/�����ռ�/�����鷨��/ŷ��ѯ���ųɹ���Ȫ����/37745574_38.jpg")
    f.write(imgpath) 
f.close()  
