#coding=UTF-8

#获取内容

import urllib,urllib2,re  
#文章头地址：
url = "http://www.mingchaonaxieshier.com/hong-wu-da-di-qianyan.html"  
#某一章地址：
#url = "http://www.mingchaonaxieshier.com/ri-luo-xi-shan-01.html" 

#文章分部分，以及每一部分的章节数目。
chapter = [33,22,20,22,20,20,22]

#这里的 i 是从0~6. 如果需要从某一章开始，修改下名range中的'0' 如从第三章开始，改为'2'即可。
for i in range(0,len(chapter)):
    f=open('chapter%d.html' % (i+1),'w+')  
    f.write('<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /></head>') 
    for j in range(chapter[i]):
        print "getting url:",url  
        content = urllib.urlopen(url).read()      
        title = re.findall(r'<h1>.*</h1>',content,re.DOTALL)[0]
        print title  
        text = re.findall(r'<div style="clear:both"></div>.*<div style="margin:15px 0px 0px 0px; float:right">', content,re.DOTALL)[0]  
        contents = re.findall(r'<p>.*</p>',text)[0]
        hrep = re.findall(r'<a href=".*rel="next">',content)[0]  
        url = re.findall(r'http://.*html',hrep)[0]  
        f.write(title)  
        f.write(text)  
        f.write('<br><br><br>')  
    f.write('</html>')  
    f.close()  


#可以发现
#标题位于<title>与</title>之间，
#
#而正文位于    <div style="clear:both"></div>   与  <div style="margin:15px 0px 0px 0px; float:right"> 之间，
#
#下一页的连接地址位于  <a href=" 与 rel="next">之间，且以http://.开头，以html结尾。
#
#用正则表达式搜寻这两个特征：
#
#标题为'<title>.*</title>'
#正文为'<div style="clear:both"></div>.*<div style="clear:both"></div>'
#
#链接地址为'<a href=".*rel="next">'
#更新链接地址到URL后，就可以开始循环直到末页为止了