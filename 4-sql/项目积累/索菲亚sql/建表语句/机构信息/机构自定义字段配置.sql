drop table if exists org_sfy_orgfieldconf;

/*==============================================================*/
/* Table: org_sfy_orgfieldconf                                  */
/*==============================================================*/
create table org_sfy_orgfieldconf
(
   defineid          varchar(10) not null comment '�����Զ����ֶ�id',
   num                  varchar(8) comment '��ʾ���',
   visible              varchar(32) comment '�ֶ��Ƿ�ɼ�',
   fieldname            varchar(32) comment '�ֶ���ʾ��',
   columnname           varchar(32) comment '���ֶ���',
   primary key (orgdefineid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_orgfieldconf comment '�����Զ�����Ϣ�ֶε���ʾ����';
