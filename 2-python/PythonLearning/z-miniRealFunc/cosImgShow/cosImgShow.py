#coding=UTF-8

# python 执行cmd命令行。
# hi = os.system("coscmd -b mylife-1255399141 list -a") 只返回 0/1
# hi = os.popen("coscmd -b mylife-1255399141 list -a")  返回执行结果

import os  
#cos cmd： oscmd -b mylife-1255399141 signurl
#imgpath： 1-千寻/2-书法/书帖收集/古人书法帖/欧阳询《九成宫醴泉铭》/37745574_38.jpg
#完整命令：coscmd -b mylife-1255399141 signurl 1-千寻/2-书法/书帖收集/古人书法帖/欧阳询《九成宫醴泉铭》/37745574_38.jpg
#         coscmd -b mylife-1255399141 list -a

#文件夹下图片数量
imgnum = 1

#自定义一个执行命令行，并返回结果的函数
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

#这里的 i 是从0~6. 如果需要从某一章开始，修改下名range中的'0' 如从第三章开始，改为'2'即可。
f=open('imgdir.html','w+')  
for i in range(0,imgnum):
    imgpath = execCmd("coscmd -b mylife-1255399141 signurl 1-千寻/2-书法/书帖收集/古人书法帖/欧阳询《九成宫醴泉铭》/37745574_38.jpg")
    f.write(imgpath) 
f.close()  
