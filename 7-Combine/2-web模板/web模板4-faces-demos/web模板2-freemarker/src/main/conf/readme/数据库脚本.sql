create database my_web charset=utf8;
use my_web;

create table user(
  userId varchar(8) primary key,
  userName varchar(40)
);

create table func(
  funcId varchar(8) primary key,
  funcName varchar(40),
  access varchar(40)
);

create table org(
  orgid varchar(8) primary key,
  parentorgid varchar(8),
  level varchar(40),
  orgname varchar(40),
  manager varchar(40),
  linkman varchar(40),
  linktel varchar(40)
);

create table role(
  roleId varchar(8) primary key,
  roleName varchar(40),
  rolecode varchar(40)
);

create table orguser(
  orguserid varchar(8) primary key,
  orgid varchar(8) ,
  userid varchar(8)
);

create table rolefunc(
  rolefuncid varchar(8) primary key,
  funcid varchar(8) ,
  roleid varchar(8)
);

create table roleuser(
  roleuserid varchar(8) primary key,
  userid varchar(8) ,
  roleid varchar(8)
);

insert into user values(1,'xiaofang');
insert into rolt values(1,'roleone');
insert into func values(1,'funcone','urlone');
insert into org values(1,0,1,'orgone','managerone','contactone','telephone');
insert into rolefunc values(1,1,1);
insert into roleuser values(1,1,1);
insert into orguser values(1,1,1);
