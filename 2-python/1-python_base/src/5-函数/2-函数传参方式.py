#coding=gbk

#�������η�ʽ

'''
�� Python �У����в��������������ǰ����ô��ݡ�
������ں������޸��˲�������ô�ڵ�����������ĺ����ԭʼ�Ĳ���Ҳ���ı��ˡ�
'''

def changeme( mylist ):
   "�޸Ĵ�����б�"
   mylist.append([1,2,3,4]);
   print ("inside function: ", mylist)
   return
 
# ����changeme����
mylist = [10,20,30];
changeme( mylist );
print ("outside function: ", mylist)