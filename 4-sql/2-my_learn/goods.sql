drop table if exists goods;

create table goods(userid int,brandid int,cnt int,time int, primary key(userid,brandid,time) ) ;

insert into goods (userid,brandid,cnt,time) values (1,2,3,1);
insert into goods (userid,brandid,cnt,time) values (1,2,3,2);
insert into goods (userid,brandid,cnt,time) values (1,2,3,3);
insert into goods (userid,brandid,cnt,time) values (1,3,3,4);

select * from goods

select brandid,sum(cnt) as counts from goods where userid = 1 group by brandid

alter table goods add column time int;