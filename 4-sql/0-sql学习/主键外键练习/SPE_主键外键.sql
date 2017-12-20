//��ʼ��ѧ����
drop table if exists student;
create table student
    (
        studentid varchar(32) primary key,
        studentname varchar(32),
        age int,
        birthday date
    )

//��ʼ���γ̱�
drop table if exists course;
create table course(
courseid varchar(32) primary key,
coursename varchar(32)
);

//��ʼ�����Ա�
drop table if exists test;
create table test(
testid varchar(32) primary key,
studentid varchar(32) ,
courseid varchar(32) 
);

//��ʼ��������
drop table if exists testroom;
create table testroom(
testroomid char(32) primary key,
studentid varchar(32) ,
courseid varchar(32), 
testid varchar(32)
);

//��ʼ������
insert into student values(1,'wang',21,'1990-9-9');
insert into course values(1,'english');
insert into test values(1,1,1);
insert into testroom values(1,1,1,1);

//alter table test  modify   constraint FK_test_student  disable;

//��test���������Լ���������student�� ��������һ����
alter table test drop  foreign key  FK_test_student;
//��������ö�����ʱ������� -no action;--set null; --restrict; --cascade
alter table test add  constraint  FK_test_student foreign key(studentid) references student(studentid) on delete cascade on update cascade //cascade ����ɾ����ɾ��ѧ����ɾ����ؿ��Լ�¼��
alter table test add  constraint  FK_test_student foreign key(studentid) references student(studentid) on delete restrict on update restrict   //restrict   ǿ��Լ���������ѧ�����������ûɾ��ʱ��������¼����ɾ����

//��test���������Լ���������student��course��������test�������� ��������������
//ɾ�����Լ��
alter table testroom drop  foreign key  FK_testroom_student;          
alter table testroom add  constraint  FK_testroom_student foreign key(studentid) references student(studentid) on delete cascade on update cascade;
alter table testroom add  constraint  FK_testroom_course foreign key(courseid) references course(courseid) on delete cascade on update cascade;
alter table testroom add  constraint  FK_testroom_test foreign key(testid) references test(testid) on delete cascade on update cascade;

