#encoding:UTF-8

import threading

def func():
    print "hello"

t=threading.Thread(target=func)

t.start()

class MyThread(threading.Thread):
    def run(self):
        print "implements run function"

t=MyThread()
t.start()
