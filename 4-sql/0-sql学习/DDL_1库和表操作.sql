
//************************************���ݿ�DLL*********************************
/*
create database my_store
drop database my_store  //ע�⣬��������ɾ����ʱ��������ݿ������Ѿ������ݣ�Ҳ��ɾ����
*/

//************************************���ݱ�DLL*********************************
/*
create table poetry(
    id varchar(16) ,//primary key,
    title varchar(128) not null,
    
    constraint peotryid unique (id,title) //�����Ƕ�����һ��Լ��
)

//�޸����ݿ�������
alter table table_name rename table_new_name


//���ֶ���صĲ���
1.����һ���ֶ�
alter table poetry add column content text default null; //����һ����Ĭ��Ϊ��
alter table poetry add column content text not null;  //����һ���ֶΣ�Ĭ�ϲ���Ϊ��
 
2.ɾ��һ���ֶ�
alter table user drop column new2; �� //ɾ��һ���ֶ�
 
3.�޸�һ���ֶ�
alter table poetry modify column content mediumtext //�޸�һ���е��ֶ�����
alter table poetry change text content  mediumtext;�� //�޸�һ���ֶε����ƣ���ʱһ��Ҫ����ָ�����ֶε�����

4������һ������
alter table poetry add primary key(id) //��������

//��Լ����صĲ���
1�����Լ��
alter table poetry add constraint fkey foreign key(id) references poetry(empid);

2��ɾ��Լ��
alter table poetry drop constraint fkey;
alter table poetry drop primary key cascade; //����������������ˡ�������Ҫ����������
����not nullԼ��,��alter table modify�Ӿ���ɾ��
alter table poetry modify title null;

3���ر�Լ��
alter table poetry disable constraint fkey cascade;   //���û�б���������cascade�ؼ���
��������һ��Լ��ʱ,Լ���Զ���(������ָ����disable�Ӿ�0,����disable�ر�unique����primary keyԼ��ʱ,oracle���Զ�ɾ����ص�Ψһ����,�ٴδ�ʱ,oracle�ֻ��Զ�������.

4����Լ��
alter table poetry enable constraint fkey; //ע��,��һ����ǰ�رյı����õ�����Լ��,�������Զ�����ص��ⲿ��Լ��
*/
