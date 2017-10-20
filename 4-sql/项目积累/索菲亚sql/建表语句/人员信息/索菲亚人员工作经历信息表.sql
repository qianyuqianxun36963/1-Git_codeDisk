drop table if exists org_sfy_empworks;

/*==============================================================*/
/* Table: org_sfy_empworks                                      */
/*==============================================================*/
create table org_sfy_empworks
(
   workempid            decimal(10) not null,
   workbegindate        date not null comment '工作开始日期',
   workenddate          date not null comment '工作结束日期',
   workemployername     varchar(100) comment '雇主名称',
   workjobinfo          varchar(80) comment '职位信息',
   workcountryid        varchar(8) comment '国家键值',
   workcountryname      varchar(40) comment '国家名称',
   WORKEXT1             varchar(16),
   WORKEXT2             varchar(16),
   WORKEXT3             varchar(32),
   WORKEXT4             varchar(32),
   WORKEXT5             varchar(64),
   primary key (workempid, workenddate, workbegindate)
);

alter table org_sfy_empworks comment '人员工作经历信息';
