drop table if exists org_sfy_empcertificate;

/*==============================================================*/
/* Table: org_sfy_empcertificate                                */
/*==============================================================*/
create table org_sfy_empcertificate
(
   cerempid             decimal(10) not null,
   cerbegindate         date not null comment '开始日期',
   cerenddate           date not null comment '结束日期',
   cercertbook          varchar(20) comment '资格证书',
   cerlevel             varchar(20) comment '证书等级',
   cercerttext          varchar(40) comment '资格证书文本',
   cerleveltext         varchar(40) comment '证书等级文本',
   CEREXT1              varchar(16),
   CEREXT2              varchar(16),
   CEREXT3              varchar(32),
   CEREXT4              varchar(32),
   CEREXT5              varchar(64),
   primary key (cerempid, cerenddate, cerbegindate)
);

alter table org_sfy_empcertificate comment '人员资格证书信息';
