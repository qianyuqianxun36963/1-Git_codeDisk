drop table if exists org_sfy_empextend;

/*==============================================================*/
/* Table: org_sfy_empextend                                     */
/*==============================================================*/
create table org_sfy_empextend
(
   extempid             decimal(10) not null,
   SFYEMPEXT1           varchar(16),
   SFYEMPEXT2           varchar(16),
   SFYEMPEXT3           varchar(16),
   SFYEMPEXT4           varchar(16),
   SFYEMPEXT5           varchar(16),
   SFYEMPEXT6           varchar(16),
   SFYEMPEXT7           varchar(16),
   SFYEMPEXT8           varchar(16),
   SFYEMPEXT9           varchar(16),
   SFYEMPEXT10          varchar(16),
   SFYEMPEXT11          varchar(16),
   SFYEMPEXT12          varchar(16),
   SFYEMPEXT13          varchar(16),
   SFYEMPEXT14          varchar(16),
   SFYEMPEXT15          varchar(32),
   SFYEMPEXT16          varchar(32),
   SFYEMPEXT17          varchar(64),
   SFYEMPEXT18          varchar(64),
   SFYEMPEXT19          varchar(128),
   SFYEMPEXT20          varchar(128),
   primary key (extempid)
);

alter table org_sfy_empextend comment '索菲亚人员信息表';
