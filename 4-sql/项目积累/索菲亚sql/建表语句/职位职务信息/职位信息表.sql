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
