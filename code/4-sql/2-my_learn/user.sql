drop table if exists user;

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   int not null,
   name                 varchar(20),
   primary key (id)
);


insert into user(id,name) values (1,'����Ա');
insert into user(id,name) values (2,'����');
insert into user(id,name) values (3,'����');
