//初始化学生表
drop table if exists student;
create table student
    (
        studentid varchar(32) primary key,
        studentname varchar(32),
        age int,
        birthday date
    )

//初始化课程表
drop table if exists course;
create table course(
courseid varchar(32) primary key,
coursename varchar(32)
);

//初始化考试表
drop table if exists test;
create table test(
testid varchar(32) primary key,
studentid varchar(32) ,
courseid varchar(32) 
);

//初始化考场表
drop table if exists testroom;
create table testroom(
testroomid char(32) primary key,
studentid varchar(32) ,
courseid varchar(32), 
testid varchar(32)
);

//初始化数据
insert into student values(1,'wang',21,'1990-9-9');
insert into course values(1,'english');
insert into test values(1,1,1);
insert into testroom values(1,1,1,1);

//alter table test  modify   constraint FK_test_student  disable;

//给test表增加外键约束。外键是student表。 它关联了一个表！
alter table test drop  foreign key  FK_test_student;
//外键在设置动作的时候可以是 -no action;--set null; --restrict; --cascade
alter table test add  constraint  FK_test_student foreign key(studentid) references student(studentid) on delete cascade on update cascade //cascade 级联删除，删除学生会删除相关考试记录。
alter table test add  constraint  FK_test_student foreign key(studentid) references student(studentid) on delete restrict on update restrict   //restrict   强制约束，在这个学生相关联数据没删除时候，这条记录不能删除。

//给test表增加外键约束，外键是student表、course表主键和test表主键。 它关联了三个表！
//删除外键约束
alter table testroom drop  foreign key  FK_testroom_student;          
alter table testroom add  constraint  FK_testroom_student foreign key(studentid) references student(studentid) on delete cascade on update cascade;
alter table testroom add  constraint  FK_testroom_course foreign key(courseid) references course(courseid) on delete cascade on update cascade;
alter table testroom add  constraint  FK_testroom_test foreign key(testid) references test(testid) on delete cascade on update cascade;

