drop table if exists org_sfy_empexception;

/*==============================================================*/
/* Table: org_sfy_empexception                                  */
/*==============================================================*/
create table org_sfy_empexception
(
   excempid             decimal(10) not null,
   excbegindate         date not null comment '��Ա�춯��ʼʱ��',
   excorgid             decimal(10) comment '��Ա�춯��֯��λ',
   excorgdesc           varchar(64) comment '��Ա�춯��������',
   excroleid            decimal(10) comment '��Ա�춯ְλ����',
   excroledesc          varchar(64) comment '��Ա�춯ְλ����',
   EXCEXT1              varchar(16),
   EXCEXT2              varchar(16),
   EXCEXT3              varchar(32),
   primary key (excempid, excbegindate)
);

alter table org_sfy_empexception comment '��Ա�춯��Ϣ';
