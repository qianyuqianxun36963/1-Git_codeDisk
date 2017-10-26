#coding=gbk

#����һ����
class Vector:
    'Optional class documentation string'#���ĵ��ַ���
    
    def __init__(self, a, b):     #��������������������෽���������йز����ķ����������ز������ˡ�
      self.a = a
      self.b = b

    def __str__(self):
      return 'Vector (%d, %d)' % (self.a, self.b)
   
    def __add__(self,other):
      return Vector(self.a + other.a, self.b + other.b)

#Python ����������
'''
__dict__ : ������ԣ�����һ���ֵ䣬���������������ɣ�
__doc__ :����ĵ��ַ���
__name__: ����
__module__: �ඨ�����ڵ�ģ�飨���ȫ����'__main__.className'�������λ��һ������ģ��mymod�У���ôclassName.__module__ ���� mymod��
__bases__ : ������и��๹��Ԫ�أ��������Ը������и�����ɵ�Ԫ�飩
'''

print ("Vector.__doc__:", Vector.__doc__)
print ("Vector.__name__:", Vector.__name__)
print ("Vector.__module__:", Vector.__module__)
print ("Vector.__bases__:", Vector.__bases__)
print ("Vector.__dict__:", Vector.__dict__)


#Python �����෽��
'''
���ר�з�����
__init__ : ���캯���������ɶ���ʱ����
__del__ : �����������ͷŶ���ʱʹ��
__repr__ : ��ӡ��ת��
__setitem__ : ����������ֵ
__getitem__: ����������ȡֵ
__len__: ��ó���
__cmp__: �Ƚ�����
__call__: ��������
__add__: ������
__sub__: ������
__mul__: ������
__div__: ������
__mod__: ��������
__pow__: �Ʒ�
'''


# ��������෽�����Ա�����
v1 = Vector(2,10)
v2 = Vector(5,-2)
print (v1 + v2)

