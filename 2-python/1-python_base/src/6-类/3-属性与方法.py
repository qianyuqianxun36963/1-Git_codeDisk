#coding=gbk

'''
�����
������ڲ����ڷ����ⶨ�����������������Ա��������Ķ�����

���˽������
__private_attrs�������»��߿�ͷ������������Ϊ˽�У�����������ⲿ��ʹ�û�ֱ�ӷ��ʡ������ڲ��ķ�����ʹ��ʱ self.__private_attrs��

��ķ���
������ڲ���ʹ��def�ؼ��ֿ���Ϊ�ඨ��һ����������һ�㺯�����岻ͬ���෽�������������self,��Ϊ��һ������

���˽�з���
__private_method�������»��߿�ͷ�������÷���Ϊ˽�з���������������ⲿ���á�������ڲ����� slef.__private_methods��
'''

class JustCounter:
    __secretCount = 0  # ˽�б���
    publicCount = 0    # ��������

    def count(self):
        self.__secretCount += 1
        self.publicCount += 1
        print (self.__secretCount)
        
    def __privatecount(self):
        self.__secretCount += 1
        self.publicCount += 1
        print (self.__secretCount)

counter = JustCounter()
counter.count()
counter.count()
print (counter.publicCount)
#counter.__secretCount    # ����ʵ�����ܷ���˽�б���

counter.__privatecount()  # ����ʵ�����ܷ���˽�з���