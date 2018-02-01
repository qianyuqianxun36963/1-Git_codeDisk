#coding=UTF-8
import os
#获取内容

import urllib,urllib2,re  
#文章头地址：
url = "http://docs.jboss.org/hibernate/orm/3.2/api/overview-frame.html"  
baseurl = "http://docs.jboss.org/hibernate/orm/3.2/api/"

def myOpenFile(path,mode='w'):
    p = os.path.split(path)
    dir = p[0]
    if not os.path.exists(dir):
        os.makedirs(dir) 
    if not os.path.exists(path):
	    f = open(path,mode)    
	    return f
    else:
        return "existed"

#   f=myOpenFile("org/hibernate/package-frame.html",'w+') 
#   print(baseurl+"org/hibernate/package-frame.html")
#   content = urllib.urlopen(baseurl+"org/hibernate/package-frame.html").read() 
#   f.write(content)  
#   f.close()

def getPageUrlFiles(url):
    print "getting url:",url  
    content = urllib.urlopen(url).read()  
    #首先，对网页内容进行分割。结果splits是一个列表！
    splits = re.split(r'get="packageFrame"',content);
    for s in splits:
        h = re.findall(r'<A HREF.*tar',s,re.DOTALL)
        if h:
        	#注意这里h、u都是一个数列，要用h[0]、u[0]这种形式。
        	u = re.findall(r'org/.*.html',h[0],re.DOTALL)
        	if u and u[0][:3]=="org":
        		print "getting url:",baseurl+u[0] 
         		content = urllib.urlopen(baseurl+u[0]).read() 
         		f=myOpenFile(u[0],'w+') 
         		if f!="existed":
	         		f.write(content)  
	     			f.close()
	     		else:
	     			print(u[0]+" is already existed")

getPageUrlFiles(url)

#cd /mnt/c/a_practice/3-python/0-python_linux/src/PythonLearning/z-miniRealFunc/getApiDocument
#python getApiDocument.py

