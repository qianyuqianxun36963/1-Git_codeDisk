drop table if exists org_sfy_orgextend;

/*==============================================================*/
/* Table: org_sfy_orgextend                                     */
/*==============================================================*/
create table org_sfy_orgextend
(
   extorgid             decimal(10) not null,
   SFYORGEXT1           varchar(16),
   SFYORGEXT2           varchar(16),
   SFYORGEXT3           varchar(16),
   SFYORGEXT4           varchar(16),
   SFYORGEXT5           varchar(16),
   SFYORGEXT6           varchar(16),
   SFYORGEXT7           varchar(16),
   SFYORGEXT8           varchar(16),
   SFYORGEXT9           varchar(16),
   SFYORGEXT10          varchar(16),
   SFYORGEXT11          varchar(16),
   SFYORGEXT12          varchar(16),
   SFYORGEXT13          varchar(16),
   SFYORGEXT14          varchar(16),
   SFYORGEXT15          varchar(16),
   SFYORGEXT16          varchar(16),
   SFYORGEXT17          varchar(16),
   SFYORGEXT18          varchar(16),
   SFYORGEXT19          varchar(16),
   SFYORGEXT20          varchar(16),
   SFYORGEXT21          varchar(16),
   SFYORGEXT22          varchar(16),
   SFYORGEXT23          varchar(16),
   SFYORGEXT24          varchar(16),
   SFYORGEXT25          varchar(16),
   SFYORGEXT26          varchar(16),
   SFYORGEXT27          varchar(16),
   SFYORGEXT28          varchar(16),
   SFYORGEXT29          varchar(32),
   SFYORGEXT30          varchar(32),
   SFYORGEXT31          varchar(32),
   SFYORGEXT32          varchar(32),
   SFYORGEXT33          varchar(64),
   SFYORGEXT34          varchar(64),
   SFYORGEXT35          varchar(64),
   SFYORGEXT36          varchar(64),
   SFYORGEXT37          varchar(128),
   SFYORGEXT38          varchar(128),
   SFYORGEXT39          varchar(128),
   SFYORGEXT40          varchar(128),
   primary key (extorgid)
);

alter table org_sfy_orgextend comment '机构自定义信息表';
