drop table if exists org_sfy_empeducation;

/*==============================================================*/
/* Table: org_sfy_empeducation                                  */
/*==============================================================*/
create table org_sfy_empeducation
(
   eduempid             decimal(10) not null,
   edubegindate         date not null comment '开始日期',
   eduenddate           date not null comment '结束日期',
   edusubtype           varchar(10) comment '子信息类型',
   eduschooltype        varchar(10) comment '教育机构类型',
   eduschoolname        varchar(80) comment '院校/培养机构',
   edumajor             varchar(50) comment '所学专业',
   eduedulevel          varchar(8) comment '学历',
   eduedudesc           varchar(50) comment '教育背景描述',
   EDUEXT1              varchar(16),
   EDUEXT2              varchar(16),
   EDUEXT3              varchar(32),
   EDUEXT4              varchar(32),
   EDUEXT5              varchar(64),
   primary key (eduempid, eduenddate, edubegindate)
);

alter table org_sfy_empeducation comment '人员教育信息';
