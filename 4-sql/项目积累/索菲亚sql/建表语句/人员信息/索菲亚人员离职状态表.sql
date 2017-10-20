drop table if exists org_sfy_empleave;

/*==============================================================*/
/* Table: org_sfy_empleave                                      */
/*==============================================================*/
create table org_sfy_empleave
(
   leaempid             decimal(10) not null comment '主键',
   leaoperatetype       varchar(8) comment '名称',
   lealeavedate         date comment '描述',
   LEAEXT1              varchar(16),
   LEAEXT2              varchar(16),
   LEAEXT3              varchar(32),
   primary key (leaempid)
);

alter table org_sfy_empleave comment '人员离职状态表';
