drop table if exists org_sfy_emppos;

/*==============================================================*/
/* Table: org_sfy_emppos                                        */
/*==============================================================*/
create table org_sfy_emppos
(
   empid                decimal(10) not null comment '员工ID',
   orgid                decimal(10) not null comment '组织单位',
   posid                decimal(10) not null comment '职位',
   empnamesy            varchar(64) comment '这个关联表里人员姓名是从外部系统同步过来的。 其实本系统不需要了的，暂时留在这里。弃用。',
   isleader             varchar(8) comment '是否领导',
   isvalid              varchar(8) comment '是否有效，所有同步的数据中，新同步时还有就是有效的。',
   issync               varchar(8) comment '是否是从原有系统同步过来的',
   ismain               varchar(8) comment '是否主职位',
   primary key (empid, orgid, posid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_emppos comment '员工职位信息';
