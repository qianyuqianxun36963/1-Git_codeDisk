drop table if exists org_sfy_fielddefine;

/*==============================================================*/
/* Table: org_conf_fieldDefine                                  */
/*==============================================================*/
create table org_sfy_fielddefine
(
   defineid             varchar(10) not null comment '机构自定义字段id',
   sortnum                  varchar(8) comment '显示序号',
   visible              varchar(32) comment '字段是否可见',
   fieldname            varchar(32) comment '字段显示名',
   columnname           varchar(32) comment '对应的存储数据表的字段名',
   fieldtype            varchar(32) comment '自定义字段属于哪个类型的。',
   primary key (defineid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_fielddefine comment '自定义信息字段的显示控制';
