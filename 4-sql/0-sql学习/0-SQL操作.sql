--������

1��˵�����������ݿ�
   CREATE DATABASE database-name 
   
2��˵����ɾ�����ݿ�
   drop database dbname
   
3��˵��������sql server
   --- ���� �������ݵ� device
   USE master
   EXEC sp_addumpdevice 'disk', 'testBack', 'c:\mssql7backup\MyNwind_1.dat'
   --- ��ʼ ����
   BACKUP DATABASE pubs TO testBack 

4��˵���������±�
   create table tabname(col1 type1 [not null] [primary key],col2 type2 [not null],..)
   �������еı����±� 
   A��create table tab_new like tab_old (ʹ�þɱ����±�)
   B��create table tab_new as select col1,col2�� from tab_old definition only
   
5��˵������������� Alter table tabname add primary key(col) 
   ˵����ɾ�������� Alter table tabname drop primary key(col) 

6��˵��������һ����
   Alter table tabname add column col type
   ע�������Ӻ󽫲���ɾ����DB2���м��Ϻ���������Ҳ���ܸı䣬Ψһ�ܸı��������varchar���͵ĳ��ȡ�

7��˵����ɾ���±�
   drop table tabname 


8��˵��������������create [unique] index idxname on tabname(col��.) 
   ɾ��������drop index idxname
   ע�������ǲ��ɸ��ĵģ�����ı���ɾ�����½���


9��˵����������ͼ��create view viewname as select statement 
   ɾ����ͼ��drop view viewname



10��˵���������򵥵Ļ�����sql���
   ѡ��select * from table1 where ��Χ
   ���룺insert into table1(field1,field2) values(value1,value2)
   ɾ����delete from table1 where ��Χ
   ���£�update table1 set field1=value1 where ��Χ
   ���ң�select * from table1 where field1 like ��%value1%�� ---like���﷨�ܾ��������!
   ����select * from table1 order by field1,field2 [desc]
   ������select count as totalcount from table1
   ��ͣ�select sum(field1) as sumvalue from table1
   ƽ����select avg(field1) as avgvalue from table1
   ���select max(field1) as maxvalue from table1
   ��С��select min(field1) as minvalue from table1

11��˵���������߼���ѯ�����
   A�� UNION ����� 
   UNION �����ͨ���������������������� TABLE1 �� TABLE2������ȥ�����κ��ظ��ж�������һ��������� ALL �� UNION һ��ʹ��ʱ���� UNION ALL�����������ظ��С���������£��������ÿһ�в������� TABLE1 �������� TABLE2�� 
   B�� EXCEPT ����� 
   EXCEPT �����ͨ������������ TABLE1 �е����� TABLE2 �е��в����������ظ��ж�������һ��������� ALL �� EXCEPT һ��ʹ��ʱ (EXCEPT ALL)���������ظ��С� 
   C�� INTERSECT �����
   INTERSECT �����ͨ��ֻ���� TABLE1 �� TABLE2 �ж��е��в����������ظ��ж�������һ��������� ALL �� INTERSECT һ��ʹ��ʱ (INTERSECT ALL)���������ظ��С� 
   ע��ʹ������ʵļ�����ѯ����б�����һ�µġ� 
   12��˵����ʹ�������� 
   A��left ��outer�� join�� 
   �������ӣ������ӣ�����������������ӱ��ƥ���У�Ҳ���������ӱ�������С� 
   SQL: select a.a, a.b, a.c, b.c, b.d, b.f from a LEFT OUT JOIN b ON a.a = b.c
   B��right ��outer�� join: 
   ��������(������)��������Ȱ������ӱ��ƥ�������У�Ҳ���������ӱ�������С� 
   C��full/cross ��outer�� join�� 
   ȫ�����ӣ����������������ӱ��ƥ���У��������������ӱ��е����м�¼��

12������:Group by:
   һ�ű�һ������ ��ɺ󣬲�ѯ��ֻ�ܵõ�����ص���Ϣ��
    ����ص���Ϣ����ͳ����Ϣ�� count,sum,max,min,avg  ����ı�׼)
    ��SQLServer�з���ʱ��������text,ntext,image���͵��ֶ���Ϊ��������
   ��selecteͳ�ƺ����е��ֶΣ����ܺ���ͨ���ֶη���һ��

13�������ݿ���в�����
   �������ݿ⣺ sp_detach_db; �������ݿ⣺sp_attach_db ��ӱ�����������Ҫ������·����
   
14.����޸����ݿ������:
   sp_renamedb 'old_name', 'new_name'
 
��������
1��˵�������Ʊ�(ֻ���ƽṹ,Դ������a �±�����b) (Access����)
   ��һ��select * into b from a where 1<>1��������SQlServer��
   ������select top 0 * into b from a
2��˵����������(��������,Դ������a Ŀ�������b) (Access����)
   insert into b(a, b, c) select d,e,f from b;
3��˵���������ݿ�֮���Ŀ���(��������ʹ�þ���·��) (Access����)
   insert into b(a, b, c) select d,e,f from b in ���������ݿ⡯ where ����
   ���ӣ�..from b in '"&Server.MapPath(".")&"\data.mdb" &"' where..
4��˵�����Ӳ�ѯ(����1��a ����2��b)
   select a,b,c from a where a IN (select d from b ) ����: select a,b,c from a where a IN (1,2,3)

5��˵������ʾ���¡��ύ�˺����ظ�ʱ��
   select a.title,a.username,b.adddate from table a,(select max(adddate) adddate from table where table.title=a.title) b

6��˵���������Ӳ�ѯ(����1��a ����2��b)
   select a.a, a.b, a.c, b.c, b.d, b.f from a LEFT OUT JOIN b ON a.a = b.c

7��˵����������ͼ��ѯ(����1��a )
   select * from (SELECT a,b,c FROM a) T where t.a > 1;

8��˵����between���÷�,between���Ʋ�ѯ���ݷ�Χʱ�����˱߽�ֵ,not between������
   select * from table1 where time between time1 and time2
   select a,b,c, from table1 where a not between ��ֵ1 and ��ֵ2

9��˵����in ��ʹ�÷���
   select * from table1 where a [not] in (��ֵ1��,��ֵ2��,��ֵ4��,��ֵ6��)

10��˵�������Ź�����ɾ���������Ѿ��ڸ�����û�е���Ϣ 
   delete from table1 where not exists ( select * from table2 where table1.field1=table2.field1 )

11��˵�����ı��������⣺
   select * from a left inner join b on a.a=b.b right inner join c on a.a=c.c inner join d on a.a=d.d where .....

12��˵�����ճ̰�����ǰ��������� 
   SQL: select * from �ճ̰��� where datediff('minute',f��ʼʱ��,getdate())>5

13��˵����һ��sql ���㶨���ݿ��ҳ
   select top 10 b.* from (select top 20 �����ֶ�,�����ֶ� from ���� order by �����ֶ� desc) a,���� b where b.�����ֶ� = a.�����ֶ� order by a.�����ֶ�
   ����ʵ�֣�
   �������ݿ��ҳ��
     declare @start int,@end int
     @sql  nvarchar(600)
     set @sql=��select top��+str(@end-@start+1)+��+from T where rid not in(select top��+str(@str-1)+��Rid from T where Rid>-1)��
     exec sp_executesql @sql
   
   ע�⣺��top����ֱ�Ӹ�һ��������������ʵ��Ӧ����ֻ�������Ľ�������Ĵ���RidΪһ����ʶ�У����top���о�����ֶΣ��������Ƿǳ��кô��ġ���Ϊ�������Ա��� top���ֶ�������߼������ģ���ѯ�Ľ����ʵ�ʱ��еĲ�һ�£��߼������е������п��ܺ����ݱ��еĲ�һ�£�����ѯʱ����������������Ȳ�ѯ������

14��˵����ǰ10����¼
   select top 10 * form table1 where ��Χ

15��˵����ѡ����ÿһ��bֵ��ͬ�������ж�Ӧ��a���ļ�¼��������Ϣ(�����������÷�����������̳ÿ�����а�,ÿ��������Ʒ����,����Ŀ�ɼ�����,�ȵ�.)
   select a,b,c from tablename ta where a=(select max(a) from tablename tb where tb.b=ta.b)

16��˵�������������� TableA �е����� TableB��TableC �е��в����������ظ��ж�������һ�������
   (select a from tableA ) except (select a from tableB) except (select a from tableC)

17��˵�������ȡ��10������
   select top 10 * from tablename order by newid()

18��˵�������ѡ���¼
   select newid()

19��˵����ɾ���ظ���¼
   1),delete from tablename where id not in (select max(id) from tablename group by col1,col2,...)
   2),select distinct * into temp from tablename
     delete from tablename
     insert into tablename select * from temp
   ���ۣ� ���ֲ���ǣ�����������ݵ��ƶ��������������ʺϴ����������ݲ���
   3),���磺��һ���ⲿ���е������ݣ�����ĳЩԭ���һ��ֻ������һ���֣��������жϾ���λ�ã�����ֻ������һ��ȫ�����룬����Ҳ�Ͳ����ö��ظ����ֶΣ�����ɾ���ظ��ֶ�
   alter table tablename
   --���һ��������
   add  column_b int identity(1,1)
    delete from tablename where column_b not in(
   select max(column_b)  from tablename group by column1,column2,...)
   alter table tablename drop column column_b

20��˵�����г����ݿ������еı���
   select name from sysobjects where type='U' // U�����û�

21��˵�����г���������е�����
   select name from syscolumns where id=object_id('TableName') 

22��˵������ʾtype��vender��pcs�ֶΣ���type�ֶ����У�case���Է����ʵ�ֶ���ѡ������select �е�case��
   select type,sum(case vender when 'A' then pcs else 0 end),sum(case vender when 'C' then pcs else 0 end),sum(case vender when 'B' then pcs else 0 end) FROM tablename group by type
   ��ʾ�����
   type vender pcs
   ���� A 1
   ���� A 1
   ���� B 2
   ���� A 2
   �ֻ� B 3
   �ֻ� C 3

23��˵������ʼ����table1
   TRUNCATE TABLE table1

24��˵����ѡ���10��15�ļ�¼
   select top 5 * from (select top 15 * from table order by id asc) table_���� order by id desc   