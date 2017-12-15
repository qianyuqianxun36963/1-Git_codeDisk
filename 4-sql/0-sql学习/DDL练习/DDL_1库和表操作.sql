
//************************************数据库DLL*********************************
/*
create database my_store
drop database my_store  //注意，在这里做删除的时候，如果数据库里面已经有数据，也会删除。
*/

//************************************数据表DLL*********************************
/*
create table poetry(
    id varchar(16) ,//primary key,
    title varchar(128) not null,
    
    constraint peotryid unique (id,title) //这里是定义了一个约束
)

//修改数据库表的名字
alter table table_name rename table_new_name


//与字段相关的操作
1.增加一个字段
alter table poetry add column content text default null; //增加一个列默认为空
alter table poetry add column content text not null;  //增加一个字段，默认不能为空
 
2.删除一个字段
alter table user drop column new2; 　 //删除一个字段
 
3.修改一个字段
alter table poetry modify column content mediumtext //修改一个列的字段类型
alter table poetry change text content  mediumtext;　 //修改一个字段的名称，此时一定要重新指定该字段的类型

4、增加一个主键
alter table poetry add primary key(id) //增加主键

//于约束相关的操作
1、添加约束
alter table poetry add constraint fkey foreign key(id) references poetry(empid);

2、删除约束
alter table poetry drop constraint fkey;
alter table poetry drop primary key cascade; //如果被其他表引用了。这里需要级联操作。
对于not null约束,用alter table modify子句来删除
alter table poetry modify title null;

3、关闭约束
alter table poetry disable constraint fkey cascade;   //如果没有被引用则不需cascade关键字
当你生成一个约束时,约束自动打开(除非你指定了disable子句0,当用disable关闭unique或者primary key约束时,oracle会自动删除相关的唯一索引,再次打开时,oracle又会自动建立的.

4、打开约束
alter table poetry enable constraint fkey; //注意,打开一个先前关闭的被引用的主键约束,并不能自动打开相关的外部键约束
*/
