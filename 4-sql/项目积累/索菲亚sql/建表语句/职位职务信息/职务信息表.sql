drop table if exists org_sfy_postype;

/*==============================================================*/
/* Table: org_sfy_postype                                       */
/*==============================================================*/
create table org_sfy_postype
(
   postypeid            decimal(10) not null comment '职位编号',
   postypename          varchar(64) comment '职位名称',
   postypekind          varchar(8) comment '部门编号',
   startdate            date comment '开始时间',
   enddate              date comment '失效时间',
   issync               varchar(8),
   EXT1                 varchar(8),
   EXT2                 varchar(16),
   EXT3                 date,
   EXT4                 date,
   primary key (postypeid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_postype comment '职务信息';
