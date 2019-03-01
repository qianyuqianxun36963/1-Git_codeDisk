create database my_hibernate charset=utf8;
use my_hibernate;

create table student ( id int primary key,name varchar(20),age int);

create table teacher (id int primary key,name varchar(20),sex varchar(20));

create table students(
    sId varchar(8) primary key,
    sName varchar(40),
    sAge int,
    deptId varchar(8)
);

create table depts(
  dId varchar(8) primary key,
  dName varchar(40)
);

alter table students add(constraint fk_stu_dept foreign key(deptId) references dept(dId));
//Ϊstudents-deptId������-dept(dId)

insert into depts(dId,dName) values('D001','��Ϣ��ѧ�빤��ѧԺ');
insert into depts(dId,dName) values('D002','��ľ����ѧԺ');
insert into depts(dId,dName) values('D003','��ѧ������ѧԺ');
insert into depts(dId,dName) values('D004','ͨ��ѧԺ');

insert into students(sId,sName,sAge,deptId) values('S001','Jack',23,'D001');
insert into students(sId,sName,sAge,deptId) values('S002','Tom',25,'D001');
insert into students(sId,sName,sAge,deptId) values('S003','����',43,'D001');
insert into students(sId,sName,sAge,deptId) values('S004','����',55,'D001');
insert into students(sId,sName,sAge,deptId) values('S005','Jack',23,'D002');
insert into students(sId,sName,sAge,deptId) values('S006','Tom',25,'D003');
insert into students(sId,sName,sAge,deptId) values('S007','����',43,'D002');
insert into students(sId,sName,sAge,deptId) values('S008','����',55,'D002');