#coding=gbk

#�ַ�������

str1 = "yiren"
str2 = ''
str3 = "this's"
str4 = """..."""""
str5 = "�����ַ���"

str11 = str3+str1
str12 = str1*3
str13 = str1[2]
str14 = str1[0:4]
str15 = "I like %s" % "her"
str16 = len(str1)
str17 = 'h' in str1

str1L = [str1,str2,str3,str4,str5]
str2L = [str11,str12,str13,str14,str15]


print("�ַ������壺")
print(str1L)

print("�ַ���������")
print(str2L)

print("str16: %d" % str16)
print("str17: %d" % str17)

for x in str1:
  print(x)
 
#��������Ƭ֪ʶ
S = "0123456789" 
#����
s1 = S[0] #��һ���O��ʼ
s2 = S[-1] #��������ζ�Ŵ�ĩβ��ʼ��(�൱�ڼ��ϳ���)
s = [s1,s2]
print("ͨ����������:" )
print(s)

#��Ƭ
p1 = S[:] #��ʡ�ԵĻ�����Ƭ�ı߽��0�򵽳���λ��
p2 = S[:3]
p3 = S[3:]
p4 = S[:-3]
p5 = S[-3:]
P = [p1,p2,p3,p4,p5]
print("ͨ����Ƭ����:")
print(P)

#�ж��ַ����Ƿ���ʲô��ͷ
str = "welcome to string"
if str[:7]=="welcome":
    print("It's begin with welcome")