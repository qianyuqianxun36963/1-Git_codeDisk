#coding=gbk

'''
Python�� for ���������C����Pascal��ʹ�õ���һ������
�ͳ����ĵȲ����е�������Pascal�У�
�����û��ܹ��Զ�����������ֹͣ�������� C����һ����
Python �� for ��䰴��Ԫ�س��ֵ�˳������κ����У��б���ַ��������磨û��˫���⣩��
'''

words = ['cat', 'window', 'defenestrate']
for w in words:
    print(w, len(w))
    
words = ('cat', 'window', 'defenestrate')
for w in words:
    print(w, len(w))


words = {'age':18,'name':"wang"}
for w in words:
    print(w,words[w])
  


'''
���Ҫ��ѭ�����޸����ڵ��������У����磬������ѡ����Ŀ����
�������������������������в�����ʽ�ش��������� 
ʹ����Ƭ�Ϳ��Ժ����׵�������
'''

words = ['cat', 'window', 'defenestrate']

for w in words[:]:  # Loop over a slice copy of the entire list.
  if len(w) > 2:
      words.insert(0, w)
      
print(words)

#range() ����
'''
�����ȷʵ��Ҫ����һ���������У����ú��� range() �������ó����������ɵȲ����У�
range(��ͷ����β������) ��������Ϊ��������Ϊ���� ��������β��
'''
print(range(5))
print(range(5,10))
print(range(0,10,3))
print(range(-10,-100,-30))

for i in range(998,1000):
    print(i)
    
a = ['111','222','333','444','555']
for i in range(len(a)):
    print(a[i])
    

chapter = [3,2]

for i in range(len(chapter)):
    print('chapter%d' % i)
    for j in range(chapter[i]):
        print('part%d' % j)
