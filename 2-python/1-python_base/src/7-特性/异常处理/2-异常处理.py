#coding=gbk

#�쳣�Ĵ���

'''
try ��䰴���·�ʽ������
���ȣ�ִ�� try �Ӿ� ���� try �� except �ؼ���֮��Ĳ��֣���
���û���쳣������ except �Ӿ� �� try ���ִ����Ϻ�ͱ������ˡ�
����� try �Ӿ�ִ�й����з������쳣����ô���Ӿ�����Ĳ��־ͻᱻ���ԡ�����쳣ƥ���� except �ؼ��ֺ���ָ�����쳣���ͣ���ִ�ж�Ӧ��except�Ӿ䡣Ȼ�����ִ�� try ���֮��Ĵ��롣
���������һ���쳣���� except �Ӿ���û����֮ƥ��ķ�֧�����ͻᴫ�ݵ���һ�� try ����С�����������Ҳ�����Ӧ�Ĵ�����䣬���ͳ�Ϊһ�� δ�����쳣 ����ֹ�������У���ʾ��ʾ��Ϣ��
'''

while True:
     try:
         x = int(input("Please enter a number: "))
         
         if x == 1:
             10 * (1/0)
             #������� ZeroDivisionError ��
         elif x == 2:  
             4 + spam*3
             #�������� NameError�� 
         elif x == 3:
             '2' + 2
             #���� ���� TypeError ��
         elif x == 4:
             pass
             #����䣬�����κζ�����
         else:
             print("���������")
         break
     
     except ZeroDivisionError as z: #������ͨ�������������ͨ����������쳣�������Ϣ��
         print("��������Ϊ�����")
         print(ZeroDivisionError)
         print(z)                   
     except NameError:
         print("������������")
     except TypeError:
         print("�������� �������")
     except SyntaxError:
         print("�������﷨����")
     #һ�� except �Ӿ�������������г�����쳣�����֣�����:
     except (ZeroDivisionError,NameError,TypeError,SyntaxError): 
         print("�����Ѿ����������еļ��д���")