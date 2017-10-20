drop table if exists org_sfy_emppos;

/*==============================================================*/
/* Table: org_sfy_emppos                                        */
/*==============================================================*/
create table org_sfy_emppos
(
   empid                decimal(10) not null comment 'Ա��ID',
   orgid                decimal(10) not null comment '��֯��λ',
   posid                decimal(10) not null comment 'ְλ',
   empnamesy            varchar(64) comment '�������������Ա�����Ǵ��ⲿϵͳͬ�������ġ� ��ʵ��ϵͳ����Ҫ�˵ģ���ʱ����������á�',
   isleader             varchar(8) comment '�Ƿ��쵼',
   isvalid              varchar(8) comment '�Ƿ���Ч������ͬ���������У���ͬ��ʱ���о�����Ч�ġ�',
   issync               varchar(8) comment '�Ƿ��Ǵ�ԭ��ϵͳͬ��������',
   ismain               varchar(8) comment '�Ƿ���ְλ',
   primary key (empid, orgid, posid)
)ENGINE=InnoDB   DEFAULT   CHARSET=utf8;

alter table org_sfy_emppos comment 'Ա��ְλ��Ϣ';
