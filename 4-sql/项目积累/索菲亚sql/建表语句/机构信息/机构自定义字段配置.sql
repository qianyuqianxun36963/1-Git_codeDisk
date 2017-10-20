drop table if exists org_sfy_orgfieldconf;

/*==============================================================*/
/* Table: org_sfy_orgfieldconf                                  */
/*==============================================================*/
create table org_sfy_orgfieldconf
(
   defineid          varchar(10) not null comment '机构自定义字段id',
   num                  varchar(8) comment '显示序号',
   visible              varchar(32) comment '字段是否可见',
   fieldname            varchar(32) comment '字段显示名',
   columnname           varchar(32) comment '表字段名',
   primary key (orgdefineid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_orgfieldconf comment '机构自定义信息字段的显示控制';
