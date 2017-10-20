drop table if exists org_sfy_employee;

/*==============================================================*/
/* Table: org_sfy_employee                                      */
/*==============================================================*/
create table org_sfy_employee
(
   sfyempid             decimal(10) not null,
   sfyposid             decimal(10) comment '直属职位编号',
   sfyarea              varchar(8) comment '人事范围编号',
   sfysubarea           varchar(8) comment '人事子范围',
   sfyteam              varchar(8) comment '员工组编号，试用，正式，等。',
   sfysubteam           varchar(8) comment '员工子组编号，计时，计件两种。',
   sfyopreason          varchar(32) comment '操作原因名称',
   sfyintroducer        varchar(16) comment '介绍人',
   sfylinkman           varchar(16) comment '紧急联络人',
   sfytelephone         varchar(32) comment '通信信息',
   sfypersonalphone     varchar(32) comment '私人电话',
   sfyofficephone       varchar(32) comment '公司电话',
   sfyofficemail        varchar(32) comment '公司邮箱',
   sfyplaceidcard       varchar(128) comment '身份证地址',
   sfyplacedetail       varchar(64) comment '详细地址',
   sfyplacework         varchar(64) comment '归属地点',
   sfybegindate         date,
   sfyemploystatus      varchar(4) comment '雇佣状态',
   sfycolyears          varchar(16) comment '集团工龄',
   sfycomyears          varchar(16) comment '公司工龄',
   sfysex               varchar(4) comment '性别代码',
   sfyenglishname       varchar(32) comment '英文名',
   sfymarriage          varchar(4) comment '婚姻状况代码',
   sfybrithday          date comment '出生日期',
   sfyage               varchar(8) comment '年龄',
   sfycountry           varchar(16) comment '国籍',
   sfynativeplace       varchar(8) comment '籍贯',
   sfynation            varchar(8) comment '民族',
   sfypolitical         varchar(8) comment '政治面貌',
   sfyfamtype           varchar(4) comment '户口类型',
   sfylanguage          varchar(4) comment '外语语言',
   sfylanlevel          varchar(4) comment '外语水平',
   sfyenglevel          varchar(4) comment '英语水平',
   sfysalary            varchar(4) comment '工资范围',
   sfyedudesc           varchar(32) comment '教育背景描述',
   sfyregulardate       date comment '计划转正日期',
   sfygraduatedate      date comment '毕业日期',
   primary key (sfyempid)
);

alter table org_sfy_employee comment '索菲亚人员信息表';
