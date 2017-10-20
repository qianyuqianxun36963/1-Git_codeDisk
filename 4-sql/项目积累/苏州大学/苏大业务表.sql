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
   POLITICAL_STATUS     varchar(128) comment '������ò',
   NATION               varchar(128) comment '����',
   ORIGIN               varchar(128) comment '����',
   SCHOOL_NAME          varchar(128) comment 'ѧԺ����',
   SCHOOL_ID            varchar(32) comment 'ѧԺ����',
   MAJOR_NAME           varchar(128) comment 'רҵ����',
   MAJOR_ID             varchar(32) comment 'רҵ����',
   CLASS_NAME           varchar(128) comment '�༶����',
   CLASS_ID             varchar(32) comment '�༶����',
   ENTRANCE_TYPE        varchar(128) comment '��ѧ��ʽ(�о�����д)',
   TUTOR_ID             varchar(32) comment '��ʦ���(�о�����д)',
   TUTOR_NAME           varchar(64) comment '��ʦ����(�о�����д)',
   EMP_TYPE             varchar(12) comment '��Ա����(S����������Y:�о�����T:��ʦ)',
   GX_SCHOOL_ID         varchar(32),
   NJ                   varchar(11) comment 'ѧ���꼶(��ʦΪ��)',
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
   LOGID                varchar(20) not null comment '��־ID',
   BUSINESSID           varchar(20) comment 'ҵ��ID',
   BUSINESSTYPE         varchar(64) comment 'ҵ������',
   OPERATETYPE          varchar(64) comment '��������',
   IPADDRESS            varchar(32) comment 'IP',
   USERCODE             varchar(64) comment '������',
   USERNAME             varchar(64) comment '����������',
   OPERATETIME          datetime comment '����ʱ��',
   CLIENTTYPE           varchar(20) comment '�ն�����',
   EXTEND1              varchar(128) comment '�����ֶ�1',
   EXTEND2              varchar(128) comment '�����ֶ�2',
   EXTEND3              varchar(128) comment '�����ֶ�3',
   EXTEND4              varchar(128) comment '�����ֶ�4',
   EXTEND5              varchar(128) comment '�����ֶ�5',
   EXTEND6              varchar(128) comment '�����ֶ�6',
   EXTEND7              varchar(128) comment '�����ֶ�7',
   primary key (LOGID)
);

alter table SUDA_LOG comment '��־��¼';


drop table if exists SUDA_RESAUTH;

/*==============================================================*/
/* Table: SUDA_RESAUTH                                          */
/*==============================================================*/
create table SUDA_RESAUTH
(
   PARTYID              varchar(64) not null comment 'ҵ��ID',
   PARTYTYPE            varchar(64) not null comment 'ҵ������',
   RESID                varchar(255) not null comment '��ԴID',
   RESTYPE              varchar(64) not null comment '��Դ����',
   STATUS               varchar(512) not null comment '��Դ״̬',
   CREATOR              varchar(64) comment '�����û�',
   CREATEDATE           datetime comment '����ʱ��',
   primary key (PARTYID, PARTYTYPE, RESID, RESTYPE)
);

alter table SUDA_RESAUTH comment 'ҵ��ƽ̨��Ȩ��';


drop table if exists SUDA_BUSINESS;

      /*==============================================================*/
      /* Table: SUDA_BUSINESS                                         */
      /*==============================================================*/
      create table SUDA_BUSINESS
      (
         businessId           varchar(20) not null comment '����ID',
         businessFullName     varchar(256) comment '����ȫ��',
         businessName         varchar(256) comment '������',
         businessType         varchar(128) comment '��������',
         openUser             varchar(64) comment '���ö���',
         openOrg              varchar(64) comment '���û���',
         childOrg             varchar(64),
         startDate            datetime comment '��Ч�ڿ�ʼ����',
         endDate              datetime comment '��Ч�ڽ�������',
         serverDay            varchar(32),
         serverTime           varchar(32),
         serverPlace          varchar(128),
         linkMan              varchar(64),
         phone                varchar(64),
         isOpen               varchar(8) comment '�Ƿ񿪷�',
         isQuick              varchar(8),
         isCheck              varchar(8) comment '�Ƿ���Ҫ����������',
         processName          varchar(256) comment '��������',
         processId            varchar(256) comment '����ID',
         processFormUrl       varchar(256) comment '���̱�·��',
         businessGuideId      varchar(20) comment '����ָ��ID',
         businessIcon         varchar(128) comment '����ͼ��',
         status               varchar(8) comment '״̬',
         attachmentUrl        varchar(1024) comment '����URL',
         createTime           datetime comment '��������',
         creator              varchar(128) comment '������',
         extend1              varchar(128) comment '�����ֶ�1',
         extend2              varchar(128) comment '�����ֶ�2',
         extend3              varchar(128) comment '�����ֶ�3',
         extend4              varchar(128) comment '�����ֶ�4',
         extend5              varchar(128) comment '�����ֶ�5',
         extend6              varchar(128) comment '�����ֶ�6',
         extend7              varchar(128) comment '�����ֶ�7',
         primary key (businessId)
      );

      alter table SUDA_BUSINESS comment '�������ñ�';


drop table if exists SUDA_BUSINESS_COLLECT;

      /*==============================================================*/
      /* Table: SUDA_BUSINESS_COLLECT                                 */
      /*==============================================================*/
      create table SUDA_BUSINESS_COLLECT
      (
         COLLECT_ID           varchar(11) not null comment '����',
         COLLECT_NAME         varchar(256) comment '�������',
         BUSINESS_ID          varchar(20) comment '����ID',
         BUSINESS_FULLNAME    varchar(256) comment '����ȫ��',
         BUSINESS_TYPE        varchar(128) comment '��������',
         CREATE_BY            varchar(11) comment '������',
         CREATE_DATE          datetime comment '����ʱ��',
         SQUENCE              numeric(8,0) comment '�����ֶ�',
         EXTEND_1             varchar(64) comment '��չ�ֶ�1',
         EXTEND_2             varchar(11) comment '��չ�ֶ�2',
         EXTEND_3             varchar(11) comment '��չ�ֶ�3',
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
         priorityId           varchar(20) not null comment '�Ƽ�����ID',
         businessId           varchar(20) comment '����ID',
         businessName         varchar(256) comment '��������',
         sortNo               varchar(20) comment '����',
         isTop                varchar(2) comment '�Ƿ��ö�',
         status               varchar(2) comment '״̬',
         extend1              varchar(64) comment '�����ֶ�1',
         extend2              varchar(64) comment '�����ֶ�2',
         extend3              varchar(64) comment '�����ֶ�3',
         extend4              varchar(64) comment '�����ֶ�4',
         extend5              varchar(64) comment '�����ֶ�5',
         extend6              varchar(64) comment '�����ֶ�6',
         extend7              varchar(128) comment '�����ֶ�7',
         primary key (priorityId)
      );

      alter table SUDA_BUSINESS_PRIORITY comment '�Ƽ�����';

drop table if exists SUDA_GUIDE;

      /*==============================================================*/
      /* Table: SUDA_GUIDE                                            */
      /*==============================================================*/
      create table SUDA_GUIDE
      (
         guideId              varchar(20) not null comment 'ָ��ID',
         guideFullName        varchar(32),
         guideName            varchar(32) comment '����ָ��',
         guideUrl             varchar(256) comment '����ָ��·��',
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
         creator              varchar(128) comment '������',
         createDate           datetime comment '����ʱ��',
         businessType         varchar(128) comment '��������',
         applicableObject     varchar(8) comment '�������',
         status               varchar(8) comment '״̬',
         processInstID        varchar(20) comment '����ID',
         attachmentUrl        varchar(256) comment '����URL',
         guideicon            varchar(128) comment '�����ֶ�1',
         searchtype           varchar(512),
         count                numeric(8,0),
         guideType            varchar(128) comment 'ָ������',
         extend2              varchar(128) comment '�����ֶ�2',
         extend3              varchar(128) comment '�����ֶ�3',
         extend4              varchar(128) comment '�����ֶ�4',
         extend5              varchar(128) comment '�����ֶ�5',
         extend6              varchar(128) comment '�����ֶ�6',
         extend7              varchar(128) comment '�����ֶ�7',
         primary key (guideId)
      );

      alter table SUDA_GUIDE comment 'ָ�����ñ�';

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
