drop table if exists org_sfy_employee;

/*==============================================================*/
/* 索菲亚人员信�?                                              */
/* Table: org_sfy_employee                                      */
/*==============================================================*/
create table org_sfy_employee
(
   sfyempid             decimal(10) not null,
   sfyposid             decimal(10) comment '直属职位编号',
   sfyarea              varchar(8) comment '人事范围编号',
   sfysubarea           varchar(8) comment '人事子范�?,
   sfyteam              varchar(8) comment '员工组编号，试用，正式，等�?',
   sfysubteam           varchar(8) comment '员工子组编号，计时，计件两种�?,
   sfyopreason          varchar(32) comment '操作原因名称',
   sfyintroducer        varchar(16) comment '介绍�?,
   sfylinkman           varchar(16) comment '紧�?联络�?,
   sfytelephone         varchar(32) comment '通信信息',
   sfypersonalphone     varchar(32) comment '私人电话',
   sfyofficephone       varchar(32) comment '公司电话',
   sfyofficemail        varchar(32) comment '公司邮箱',
   sfyplaceidcard       varchar(128) comment '身份证地�?,
   sfyplacedetail       varchar(64) comment '详细地址',
   sfyplacework         varchar(64) comment '归属地点',
   sfybegindate         date,
   sfyemploystatus      varchar(4) comment '雇佣状�?',
   sfycolyears          varchar(16) comment '集团工龄',
   sfycomyears          varchar(16) comment '公司工龄',
   sfysex               varchar(4) comment '性别代码',
   sfyenglishname       varchar(32) comment '英文�?,
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
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_employee comment '索菲亚人员信息表';




drop table if exists org_sfy_empworks;

/*==============================================================*/
/* 索菲亚人员工作经�?                                          */
/* Table: org_sfy_empworks                                      */
/*==============================================================*/
create table org_sfy_empworks
(
   workempid            decimal(10) not null,
   workbegindate        date not null comment '工作�?��日期',
   workenddate          date not null comment '工作结束日期',
   workemployername     varchar(100) comment '雇主名称',
   workjobinfo          varchar(80) comment '职位信息',
   workcountryid        varchar(8) comment '国家键�?',
   workcountryname      varchar(40) comment '国家名称',
   WORKEXT1             varchar(16),
   WORKEXT2             varchar(16),
   WORKEXT3             varchar(32),
   WORKEXT4             varchar(32),
   WORKEXT5             varchar(64),
   primary key (workempid, workenddate, workbegindate)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empworks comment '人员工作经历信息';


drop table if exists org_sfy_empeducation;

/*==============================================================*/
/* 索菲亚人员教育信�?                                          */
/* Table: org_sfy_empeducation                                  */
/*==============================================================*/
create table org_sfy_empeducation
(
   eduempid             decimal(10) not null,
   edubegindate         date not null comment '�?��日期',
   eduenddate           date not null comment '结束日期',
   edusubtype           varchar(10) comment '子信息类�?,
   eduschooltype        varchar(10) comment '教育机构类型',
   eduschoolname        varchar(80) comment '院校/培养机构',
   edumajor             varchar(50) comment '�?��专业',
   eduedulevel          varchar(8) comment '学历',
   eduedudesc           varchar(50) comment '教育背景描述',
   EDUEXT1              varchar(16),
   EDUEXT2              varchar(16),
   EDUEXT3              varchar(32),
   EDUEXT4              varchar(32),
   EDUEXT5              varchar(64),
   primary key (eduempid, eduenddate, edubegindate)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empeducation comment '人员教育信息';


drop table if exists org_sfy_empleave;

/*==============================================================*/
/* 索菲亚人员离职状态表                                         */
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
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empleave comment '人员离职状�?�?;


drop table if exists org_sfy_empexception;

/*==============================================================*/
/* 索菲亚人员异动信�?                                          */
/* Table: org_sfy_empexception                                  */
/*==============================================================*/
create table org_sfy_empexception
(
   excempid             decimal(10) not null,
   excbegindate         date not null comment '人员异动�?��时间',
   excorgid             decimal(10) comment '人员异动组织单位',
   excorgdesc           varchar(64) comment '人员异动部门描述',
   excroleid            decimal(10) comment '人员异动职位编码',
   excroledesc          varchar(64) comment '人员异动职位描述',
   EXCEXT1              varchar(16),
   EXCEXT2              varchar(16),
   EXCEXT3              varchar(32),
   primary key (excempid, excbegindate)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empexception comment '人员异动信息';


drop table if exists org_sfy_empcertificate;

/*==============================================================*/
/* 索菲亚人员资格证书信�?                                      */
/* Table: org_sfy_empcertificate                                */
/*==============================================================*/
create table org_sfy_empcertificate
(
   cerempid             decimal(10) not null,
   cerbegindate         date not null comment '�?��日期',
   cerenddate           date not null comment '结束日期',
   cercertbook          varchar(20) comment '资格证书',
   cerlevel             varchar(20) comment '证书等级',
   cercerttext          varchar(40) comment '资格证书文本',
   cerleveltext         varchar(40) comment '证书等级文本',
   CEREXT1              varchar(16),
   CEREXT2              varchar(16),
   CEREXT3              varchar(32),
   CEREXT4              varchar(32),
   CEREXT5              varchar(64),
   primary key (cerempid, cerenddate, cerbegindate)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empcertificate comment '人员资格证书信息';


drop table if exists org_sfy_empextend;

/*==============================================================*/
/* 索菲亚人员信息表                                             */
/* Table: org_sfy_empextend                                     */
/*==============================================================*/
create table org_sfy_empextend
(
   extempid             decimal(10) not null,
   SFYEMPEXT1           decimal(16),
   SFYEMPEXT2           decimal(16),
   SFYEMPEXT3           date,
   SFYEMPEXT4           date,
   SFYEMPEXT5           varchar(16),
   SFYEMPEXT6           varchar(16),
   SFYEMPEXT7           varchar(16),
   SFYEMPEXT8           varchar(16),
   SFYEMPEXT9           varchar(16),
   SFYEMPEXT10          varchar(16),
   SFYEMPEXT11          varchar(32),
   SFYEMPEXT12          varchar(32),
   SFYEMPEXT13          varchar(32),
   SFYEMPEXT14          varchar(32),
   SFYEMPEXT15          varchar(64),
   SFYEMPEXT16          varchar(64),
   SFYEMPEXT17          varchar(64),
   SFYEMPEXT18          varchar(64),
   SFYEMPEXT19          varchar(128),
   SFYEMPEXT20          varchar(128),
   primary key (extempid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empextend comment '索菲亚人员信息表';
