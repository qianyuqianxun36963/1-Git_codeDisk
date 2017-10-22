#coding=gbk

x = 'python'

while x:
    print (x)
    x = x[1:]
    

head,end = 'a','d'
while head < end:
    print(head)
    head = chr(ord(head)+1)