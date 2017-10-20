drop table if exists org_sfy_empexception;

/*==============================================================*/
/* Table: org_sfy_empexception                                  */
/*==============================================================*/
create table org_sfy_empexception
(
   excempid             decimal(10) not null,
   excbegindate         date not null comment '人员异动开始时间',
   excorgid             decimal(10) comment '人员异动组织单位',
   excorgdesc           varchar(64) comment '人员异动部门描述',
   excroleid            decimal(10) comment '人员异动职位编码',
   excroledesc          varchar(64) comment '人员异动职位描述',
   EXCEXT1              varchar(16),
   EXCEXT2              varchar(16),
   EXCEXT3              varchar(32),
   primary key (excempid, excbegindate)
);

alter table org_sfy_empexception comment '人员异动信息';
