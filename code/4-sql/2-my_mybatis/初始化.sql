create database my_mybatis charset=utf8;
use my_mybatis;

drop table if exists goods;

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table goods
(
   id                   int not null,
   cateid               int,
   name                 varchar(20),
   price                double,
   description          varchar(20),
   orderno              int,
   updatetime           date,
   primary key (id)
);


insert into goods(id,name) values (1,'π‹¿Ì‘±');

