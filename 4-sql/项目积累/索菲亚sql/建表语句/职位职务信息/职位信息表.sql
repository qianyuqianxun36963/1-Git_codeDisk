drop table if exists org_sfy_position;

/*==============================================================*/
/* Table: org_sfy_position                                      */
/*==============================================================*/
create table org_sfy_position
(
   positionid           decimal(10) not null comment 'ְλ���',
   posiname             varchar(64) comment 'ְλ����',
   createtime           date comment '����ʱ��',
   updator              varchar(32) comment '�������˵ı��',
   lastupdate           date comment '����ʱ��',
   startdate            date comment '��ʼʱ����Чʱ��',
   enddate              date comment 'ʧЧʱ��',
   positype             decimal(10) comment 'ְ����',
   orgid                decimal(10) not null comment '���ű��',
   issync               varchar(8) comment '�Ƿ�ͬ����',
   EXT1                 varchar(8) comment '���õ���չ�ֶ�',
   EXT2                 varchar(16),
   EXT3                 date,
   EXT4                 date,
   primary key (positionid, orgid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_position comment '�µ�OA��ְλ��Ϣ��';
