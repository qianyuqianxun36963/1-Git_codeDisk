drop index INDEX_ORG_EMPLOYEE on SUDA.ORG_EMPLOYEE;

drop table if exists ORG_EMPLOYEE;

/*==============================================================*/
/* Table: ORG_EMPLOYEE                                          */
/*==============================================================*/
create table ORG_EMPLOYEE
(
   EMPID                numeric(10,0) not null,
   EMPCODE              varchar(30),
   OPERATORID           numeric(18,0),
   USERID               varchar(30),
   EMPNAME              varchar(128),
   REALNAME             varchar(128),
   GENDER               varchar(255),
   BIRTHDATE            datetime,
   POSITION             numeric(10,0),
   EMPSTATUS            varchar(255),
   CARDTYPE             varchar(255),
   CARDNO               varchar(32),
   INDATE               datetime,
   OUTDATE              datetime,
   OTEL                 varchar(32),
   OADDRESS             varchar(255),
   OZIPCODE             varchar(10),
   OEMAIL               varchar(128),
   FAXNO                varchar(14),
   MOBILENO             varchar(64),
   QQ                   varchar(16),
   HTEL                 varchar(12),
   HADDRESS             varchar(128),
   HZIPCODE             varchar(10),
   PEMAIL               varchar(128),
   PARTY                varchar(255),
   DEGREE               varchar(255),
   SORTNO               numeric(10,0),
   MAJOR                numeric(10,0),
   SPECIALTY            varchar(1024),
   WORKEXP              varchar(512),
   REGDATE              datetime,
   CREATETIME           datetime not null,
   LASTMODYTIME         datetime not null,
   ORGIDLIST            varchar(128),
   ORGID                numeric(10,0),
   REMARK               varchar(512),
   TENANT_ID            varchar(64) not null,
   APP_ID               varchar(64),
   WEIBO                varchar(255),
   POLITICAL_STATUS     varchar(128) comment '政治面貌',
   NATION               varchar(128) comment '民族',
   ORIGIN               varchar(128) comment '籍贯',
   SCHOOL_NAME          varchar(128) comment '学院名称',
   SCHOOL_ID            varchar(32) comment '学院代码',
   MAJOR_NAME           varchar(128) comment '专业名称',
   MAJOR_ID             varchar(32) comment '专业代码',
   CLASS_NAME           varchar(128) comment '班级名称',
   CLASS_ID             varchar(32) comment '班级代码',
   ENTRANCE_TYPE        varchar(128) comment '入学方式(研究生填写)',
   TUTOR_ID             varchar(32) comment '导师编号(研究生填写)',
   TUTOR_NAME           varchar(64) comment '导师姓名(研究生填写)',
   EMP_TYPE             varchar(12) comment '人员类型(S：本科生、Y:研究生、T:教师)',
   GX_SCHOOL_ID         varchar(32),
   NJ                   varchar(11) comment '学生年级(教师为空)',
   primary key (EMPID)
);

/*==============================================================*/
/* Index: INDEX_ORG_EMPLOYEE                                    */
/*==============================================================*/
create index INDEX_ORG_EMPLOYEE on SUDA.ORG_EMPLOYEE
(
   EMPCODE
);

drop table if exists SUDA_LOG;

/*==============================================================*/
/* Table: SUDA_LOG                                              */
/*==============================================================*/
create table SUDA_LOG
(
   LOGID                varchar(20) not null comment '日志ID',
   BUSINESSID           varchar(20) comment '业务ID',
   BUSINESSTYPE         varchar(64) comment '业务类型',
   OPERATETYPE          varchar(64) comment '操作类型',
   IPADDRESS            varchar(32) comment 'IP',
   USERCODE             varchar(64) comment '操作人',
   USERNAME             varchar(64) comment '操作人姓名',
   OPERATETIME          datetime comment '操作时间',
   CLIENTTYPE           varchar(20) comment '终端类型',
   EXTEND1              varchar(128) comment '备用字段1',
   EXTEND2              varchar(128) comment '备用字段2',
   EXTEND3              varchar(128) comment '备用字段3',
   EXTEND4              varchar(128) comment '备用字段4',
   EXTEND5              varchar(128) comment '备用字段5',
   EXTEND6              varchar(128) comment '备用字段6',
   EXTEND7              varchar(128) comment '备用字段7',
   primary key (LOGID)
);

alter table SUDA_LOG comment '日志记录';


drop table if exists SUDA_RESAUTH;

/*==============================================================*/
/* Table: SUDA_RESAUTH                                          */
/*==============================================================*/
create table SUDA_RESAUTH
(
   PARTYID              varchar(64) not null comment '业务ID',
   PARTYTYPE            varchar(64) not null comment '业务类型',
   RESID                varchar(255) not null comment '资源ID',
   RESTYPE              varchar(64) not null comment '资源类型',
   STATUS               varchar(512) not null comment '资源状态',
   CREATOR              varchar(64) comment '创建用户',
   CREATEDATE           datetime comment '创建时间',
   primary key (PARTYID, PARTYTYPE, RESID, RESTYPE)
);

alter table SUDA_RESAUTH comment '业务平台授权表';


drop table if exists SUDA_BUSINESS;

      /*==============================================================*/
      /* Table: SUDA_BUSINESS                                         */
      /*==============================================================*/
      create table SUDA_BUSINESS
      (
         businessId           varchar(20) not null comment '事务ID',
         businessFullName     varchar(256) comment '事务全称',
         businessName         varchar(256) comment '事务简称',
         businessType         varchar(128) comment '事务类型',
         openUser             varchar(64) comment '适用对象',
         openOrg              varchar(64) comment '适用机构',
         childOrg             varchar(64),
         startDate            datetime comment '有效期开始日期',
         endDate              datetime comment '有效期结束日期',
         serverDay            varchar(32),
         serverTime           varchar(32),
         serverPlace          varchar(128),
         linkMan              varchar(64),
         phone                varchar(64),
         isOpen               varchar(8) comment '是否开放',
         isQuick              varchar(8),
         isCheck              varchar(8) comment '是否需要走审批流程',
         processName          varchar(256) comment '流程名称',
         processId            varchar(256) comment '流程ID',
         processFormUrl       varchar(256) comment '流程表单路径',
         businessGuideId      varchar(20) comment '事务指南ID',
         businessIcon         varchar(128) comment '事务图标',
         status               varchar(8) comment '状态',
         attachmentUrl        varchar(1024) comment '附件URL',
         createTime           datetime comment '创建日期',
         creator              varchar(128) comment '创建人',
         extend1              varchar(128) comment '备用字段1',
         extend2              varchar(128) comment '备用字段2',
         extend3              varchar(128) comment '备用字段3',
         extend4              varchar(128) comment '备用字段4',
         extend5              varchar(128) comment '备用字段5',
         extend6              varchar(128) comment '备用字段6',
         extend7              varchar(128) comment '备用字段7',
         primary key (businessId)
      );

      alter table SUDA_BUSINESS comment '事务配置表';


drop table if exists SUDA_BUSINESS_COLLECT;

      /*==============================================================*/
      /* Table: SUDA_BUSINESS_COLLECT                                 */
      /*==============================================================*/
      create table SUDA_BUSINESS_COLLECT
      (
         COLLECT_ID           varchar(11) not null comment '主键',
         COLLECT_NAME         varchar(256) comment '事务别名',
         BUSINESS_ID          varchar(20) comment '事务ID',
         BUSINESS_FULLNAME    varchar(256) comment '事务全称',
         BUSINESS_TYPE        varchar(128) comment '事务类型',
         CREATE_BY            varchar(11) comment '创建人',
         CREATE_DATE          datetime comment '创建时间',
         SQUENCE              numeric(8,0) comment '排序字段',
         EXTEND_1             varchar(64) comment '扩展字段1',
         EXTEND_2             varchar(11) comment '扩展字段2',
         EXTEND_3             varchar(11) comment '扩展字段3',
         primary key (COLLECT_ID)
      );


drop table if exists SUDA_BUSINESS_KIND;

      /*==============================================================*/
      /* Table: SUDA_BUSINESS_KIND                                    */
      /*==============================================================*/
      create table SUDA_BUSINESS_KIND
      (
         kindId               varchar(10) not null,
         kindName             varchar(32) not null,
         creator              varchar(10),
         time                 datetime,
         OPENUSER             varchar(32),
         ICONURL              varchar(128),
         parentkindid         varchar(32),
         parentkindInfo       varchar(32),
         Column_7             varchar(32),
         Column_8             varchar(32),
         Column_9             varchar(32),
         Column_10            varchar(32),
         squence              int,
         primary key (kindId)
      );

drop table if exists SUDA_BUSINESS_PRIORITY;

      /*==============================================================*/
      /* Table: SUDA_BUSINESS_PRIORITY                                */
      /*==============================================================*/
      create table SUDA_BUSINESS_PRIORITY
      (
         priorityId           varchar(20) not null comment '推荐事务ID',
         businessId           varchar(20) comment '事务ID',
         businessName         varchar(256) comment '事务名称',
         sortNo               varchar(20) comment '排序',
         isTop                varchar(2) comment '是否置顶',
         status               varchar(2) comment '状态',
         extend1              varchar(64) comment '备用字段1',
         extend2              varchar(64) comment '备用字段2',
         extend3              varchar(64) comment '备用字段3',
         extend4              varchar(64) comment '备用字段4',
         extend5              varchar(64) comment '备用字段5',
         extend6              varchar(64) comment '备用字段6',
         extend7              varchar(128) comment '备用字段7',
         primary key (priorityId)
      );

      alter table SUDA_BUSINESS_PRIORITY comment '推荐事务';

drop table if exists SUDA_GUIDE;

      /*==============================================================*/
      /* Table: SUDA_GUIDE                                            */
      /*==============================================================*/
      create table SUDA_GUIDE
      (
         guideId              varchar(20) not null comment '指南ID',
         guideFullName        varchar(32),
         guideName            varchar(32) comment '办理指南',
         guideUrl             varchar(256) comment '办理指南路径',
         openuser             varchar(64),
         openOrg              varchar(64),
         childOrg             varchar(64),
         serverDay            varchar(32),
         serverTime           varchar(32),
         serverPlace          varchar(256),
         linkMan              varchar(64),
         phone                varchar(64),
         introduce            varchar(1024),
         attention            varchar(1024),
         creator              varchar(128) comment '创建人',
         createDate           datetime comment '创建时间',
         businessType         varchar(128) comment '事项类型',
         applicableObject     varchar(8) comment '办理对象',
         status               varchar(8) comment '状态',
         processInstID        varchar(20) comment '流程ID',
         attachmentUrl        varchar(256) comment '附件URL',
         guideicon            varchar(128) comment '备用字段1',
         searchtype           varchar(512),
         count                numeric(8,0),
         guideType            varchar(128) comment '指南类型',
         extend2              varchar(128) comment '备用字段2',
         extend3              varchar(128) comment '备用字段3',
         extend4              varchar(128) comment '备用字段4',
         extend5              varchar(128) comment '备用字段5',
         extend6              varchar(128) comment '备用字段6',
         extend7              varchar(128) comment '备用字段7',
         primary key (guideId)
      );

      alter table SUDA_GUIDE comment '指南配置表';

drop table if exists SUDA_NOTICE;

      /*==============================================================*/
      /* Table: SUDA_NOTICE                                           */
      /*==============================================================*/
      create table SUDA_NOTICE
      (
         noticeId             varchar(20) not null,
         noticeName           varchar(32) not null,
         noticeUrl            varchar(256),
         noticeType           varchar(8),
         createOrg            varchar(64),
         creator              varchar(16),
         createDate           datetime,
         endDate              datetime,
         extend1              varchar(128),
         extend2              varchar(128),
         extend3              varchar(128),
         extend4              varchar(128),
         extend5              varchar(128),
         extend6              varchar(128),
         extend7              varchar(128),
         status               varchar(8),
         primary key (noticeId)
      );
