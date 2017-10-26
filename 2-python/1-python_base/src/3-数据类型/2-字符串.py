#coding=gbk

#字符串类型

str1 = "yiren"
str2 = ''
str3 = "this's"
str4 = """..."""""
str5 = "中文字符串"

str11 = str3+str1
str12 = str1*3
str13 = str1[2]
str14 = str1[0:4]
str15 = "I like %s" % "her"
str16 = len(str1)
str17 = 'h' in str1

str1L = [str1,str2,str3,str4,str5]
str2L = [str11,str12,str13,str14,str15]


print("字符串定义：")
print(str1L)

print("字符串操作：")
print(str2L)

print("str16: %d" % str16)
print("str17: %d" % str17)

for x in str1:
  print(x)
 
#索引和切片知识
S = "0123456789" 
#索引
s1 = S[0] #第一项从O开始
s2 = S[-1] #负索引意味着从末尾开始数(相当于加上长度)
s = [s1,s2]
print("通过索引访问:" )
print(s)

#分片
p1 = S[:] #若省略的话，分片的边界从0或到长度位置
p2 = S[:3]
p3 = S[3:]
p4 = S[:-3]
p5 = S[-3:]
P = [p1,p2,p3,p4,p5]
print("通过切片访问:")
print(P)

#判断字符串是否以什么开头
str = "welcome to string"
if str[:7]=="welcome":
    print("It's begin with welcome")