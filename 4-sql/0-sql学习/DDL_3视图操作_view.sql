视图创建：
use test;

//下面这张表test库里面已经有了。
create table student(
    studentid        varchar(10) primary key, 
    studentname      varchar(20),
    age              varchar(10),
    birthday         datatime
);

create table user(
    uuid          varchar(10) primary key, 
    username      varchar(20)
);


create view view_student as
select studentid,studentname,age,uuid,username
from student,user;

