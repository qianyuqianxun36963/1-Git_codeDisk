#coding=utf-8

import threading
from time import ctime,sleep


def music(func):
    print "I was listening to %s. %s" %(func,ctime())
    sleep(1)

t1 = threading.Thread(target=music,args=(u'3'))
t1.start()

print "all over %s" %ctime()
