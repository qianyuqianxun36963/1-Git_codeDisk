drop table if exists org_sfy_empfieldconf;

/*==============================================================*/
/* Table: org_sfy_empfieldconf                                  */
/*==============================================================*/
create table org_sfy_empfieldconf
(
   defineid          varchar(10) not null comment 'Ա���Զ����ֶ�id',
   num                  varchar(8) comment '��ʾ���',
   visible              varchar(32) comment '�ֶ��Ƿ�ɼ�',
   fieldname            varchar(32) comment '�ֶ���ʾ��',
   columnname           varchar(32) comment '���ֶ���',
   primary key (empdefineid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_empfieldconf comment '�û��Զ�����Ϣ�ֶε���ʾ����';
