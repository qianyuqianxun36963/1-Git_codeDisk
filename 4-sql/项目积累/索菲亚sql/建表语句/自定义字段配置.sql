drop table if exists org_sfy_fielddefine;

/*==============================================================*/
/* Table: org_conf_fieldDefine                                  */
/*==============================================================*/
create table org_sfy_fielddefine
(
   defineid             varchar(10) not null comment '�����Զ����ֶ�id',
   sortnum                  varchar(8) comment '��ʾ���',
   visible              varchar(32) comment '�ֶ��Ƿ�ɼ�',
   fieldname            varchar(32) comment '�ֶ���ʾ��',
   columnname           varchar(32) comment '��Ӧ�Ĵ洢���ݱ���ֶ���',
   fieldtype            varchar(32) comment '�Զ����ֶ������ĸ����͵ġ�',
   primary key (defineid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_fielddefine comment '�Զ�����Ϣ�ֶε���ʾ����';
