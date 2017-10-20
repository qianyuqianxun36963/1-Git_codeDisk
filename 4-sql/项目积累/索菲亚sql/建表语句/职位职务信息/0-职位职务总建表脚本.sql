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


drop table if exists org_sfy_position;

/*==============================================================*/
/* Table: org_sfy_position                                      */
/*==============================================================*/
create table org_sfy_position
(
   positionid           decimal(10) not null comment '职位编号',
   posiname             varchar(64) comment '职位名称',
   createtime           date comment '创建时间',
   updator              varchar(32) comment '最后更新人的编号',
   lastupdate           date comment '更新时间',
   startdate            date comment '开始时间生效时间',
   enddate              date comment '失效时间',
   positype             decimal(10) comment '职务编号',
   orgid                decimal(10) not null comment '部门编号',
   issync               varchar(8) comment '是否同步的',
   EXT1                 varchar(8) comment '备用的拓展字段',
   EXT2                 varchar(16),
   EXT3                 date,
   EXT4                 date,
   primary key (positionid, orgid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_position comment '新的OA的职位信息表';


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
