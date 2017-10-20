drop table if exists org_sfy_empeducation;

/*==============================================================*/
/* Table: org_sfy_empeducation                                  */
/*==============================================================*/
create table org_sfy_empeducation
(
   eduempid             decimal(10) not null,
   edubegindate         date not null comment '��ʼ����',
   eduenddate           date not null comment '��������',
   edusubtype           varchar(10) comment '����Ϣ����',
   eduschooltype        varchar(10) comment '������������',
   eduschoolname        varchar(80) comment 'ԺУ/��������',
   edumajor             varchar(50) comment '��ѧרҵ',
   eduedulevel          varchar(8) comment 'ѧ��',
   eduedudesc           varchar(50) comment '������������',
   EDUEXT1              varchar(16),
   EDUEXT2              varchar(16),
   EDUEXT3              varchar(32),
   EDUEXT4              varchar(32),
   EDUEXT5              varchar(64),
   primary key (eduempid, eduenddate, edubegindate)
);

alter table org_sfy_empeducation comment '��Ա������Ϣ';
