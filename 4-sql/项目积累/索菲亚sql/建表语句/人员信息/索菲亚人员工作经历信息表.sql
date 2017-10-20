drop table if exists org_sfy_empworks;

/*==============================================================*/
/* Table: org_sfy_empworks                                      */
/*==============================================================*/
create table org_sfy_empworks
(
   workempid            decimal(10) not null,
   workbegindate        date not null comment '������ʼ����',
   workenddate          date not null comment '������������',
   workemployername     varchar(100) comment '��������',
   workjobinfo          varchar(80) comment 'ְλ��Ϣ',
   workcountryid        varchar(8) comment '���Ҽ�ֵ',
   workcountryname      varchar(40) comment '��������',
   WORKEXT1             varchar(16),
   WORKEXT2             varchar(16),
   WORKEXT3             varchar(32),
   WORKEXT4             varchar(32),
   WORKEXT5             varchar(64),
   primary key (workempid, workenddate, workbegindate)
);

alter table org_sfy_empworks comment '��Ա����������Ϣ';
