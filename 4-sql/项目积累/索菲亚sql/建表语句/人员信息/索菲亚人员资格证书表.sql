drop table if exists org_sfy_empcertificate;

/*==============================================================*/
/* Table: org_sfy_empcertificate                                */
/*==============================================================*/
create table org_sfy_empcertificate
(
   cerempid             decimal(10) not null,
   cerbegindate         date not null comment '��ʼ����',
   cerenddate           date not null comment '��������',
   cercertbook          varchar(20) comment '�ʸ�֤��',
   cerlevel             varchar(20) comment '֤��ȼ�',
   cercerttext          varchar(40) comment '�ʸ�֤���ı�',
   cerleveltext         varchar(40) comment '֤��ȼ��ı�',
   CEREXT1              varchar(16),
   CEREXT2              varchar(16),
   CEREXT3              varchar(32),
   CEREXT4              varchar(32),
   CEREXT5              varchar(64),
   primary key (cerempid, cerenddate, cerbegindate)
);

alter table org_sfy_empcertificate comment '��Ա�ʸ�֤����Ϣ';
