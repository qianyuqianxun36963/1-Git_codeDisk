#coding=gbk

#if��������


'''
������0������ elif ��;
else ���ǿ�ѡ��.��
�ؼ��� ��elif�� �� ��else if����,�����ҿ��Ա��������
123һ��if ... elif ... elif ...���� �Ƕ��������Ե�switch or case �������������
'''

x = int(input("Please enter an integer: "))

if x < 0:
     x = 0
     print('Negative changed to zero')
elif x == 0:
     print('Zero')
elif x == 1:
     print('Single')
else:
     print('More')