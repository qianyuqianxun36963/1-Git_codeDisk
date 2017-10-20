drop table if exists org_sfy_postype;

/*==============================================================*/
/* Table: org_sfy_postype                                       */
/*==============================================================*/
create table org_sfy_postype
(
   postypeid            decimal(10) not null comment 'ְλ���',
   postypename          varchar(64) comment 'ְλ����',
   postypekind          varchar(8) comment '���ű��',
   startdate            date comment '��ʼʱ��',
   enddate              date comment 'ʧЧʱ��',
   issync               varchar(8),
   EXT1                 varchar(8),
   EXT2                 varchar(16),
   EXT3                 date,
   EXT4                 date,
   primary key (postypeid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_postype comment 'ְ����Ϣ';
