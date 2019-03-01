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
//为students-deptId添加外键-dept(dId)

insert into depts(dId,dName) values('D001','信息科学与工程学院');
insert into depts(dId,dName) values('D002','土木工程学院');
insert into depts(dId,dName) values('D003','数学与计算机学院');
insert into depts(dId,dName) values('D004','通信学院');

insert into students(sId,sName,sAge,deptId) values('S001','Jack',23,'D001');
insert into students(sId,sName,sAge,deptId) values('S002','Tom',25,'D001');
insert into students(sId,sName,sAge,deptId) values('S003','张三',43,'D001');
insert into students(sId,sName,sAge,deptId) values('S004','李四',55,'D001');
insert into students(sId,sName,sAge,deptId) values('S005','Jack',23,'D002');
insert into students(sId,sName,sAge,deptId) values('S006','Tom',25,'D003');
insert into students(sId,sName,sAge,deptId) values('S007','张三',43,'D002');
insert into students(sId,sName,sAge,deptId) values('S008','李四',55,'D002');