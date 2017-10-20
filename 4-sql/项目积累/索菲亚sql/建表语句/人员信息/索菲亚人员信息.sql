drop table if exists org_sfy_employee;

/*==============================================================*/
/* Table: org_sfy_employee                                      */
/*==============================================================*/
create table org_sfy_employee
(
   sfyempid             decimal(10) not null,
   sfyposid             decimal(10) comment 'ֱ��ְλ���',
   sfyarea              varchar(8) comment '���·�Χ���',
   sfysubarea           varchar(8) comment '�����ӷ�Χ',
   sfyteam              varchar(8) comment 'Ա�����ţ����ã���ʽ���ȡ�',
   sfysubteam           varchar(8) comment 'Ա�������ţ���ʱ���Ƽ����֡�',
   sfyopreason          varchar(32) comment '����ԭ������',
   sfyintroducer        varchar(16) comment '������',
   sfylinkman           varchar(16) comment '����������',
   sfytelephone         varchar(32) comment 'ͨ����Ϣ',
   sfypersonalphone     varchar(32) comment '˽�˵绰',
   sfyofficephone       varchar(32) comment '��˾�绰',
   sfyofficemail        varchar(32) comment '��˾����',
   sfyplaceidcard       varchar(128) comment '���֤��ַ',
   sfyplacedetail       varchar(64) comment '��ϸ��ַ',
   sfyplacework         varchar(64) comment '�����ص�',
   sfybegindate         date,
   sfyemploystatus      varchar(4) comment '��Ӷ״̬',
   sfycolyears          varchar(16) comment '���Ź���',
   sfycomyears          varchar(16) comment '��˾����',
   sfysex               varchar(4) comment '�Ա����',
   sfyenglishname       varchar(32) comment 'Ӣ����',
   sfymarriage          varchar(4) comment '����״������',
   sfybrithday          date comment '��������',
   sfyage               varchar(8) comment '����',
   sfycountry           varchar(16) comment '����',
   sfynativeplace       varchar(8) comment '����',
   sfynation            varchar(8) comment '����',
   sfypolitical         varchar(8) comment '������ò',
   sfyfamtype           varchar(4) comment '��������',
   sfylanguage          varchar(4) comment '��������',
   sfylanlevel          varchar(4) comment '����ˮƽ',
   sfyenglevel          varchar(4) comment 'Ӣ��ˮƽ',
   sfysalary            varchar(4) comment '���ʷ�Χ',
   sfyedudesc           varchar(32) comment '������������',
   sfyregulardate       date comment '�ƻ�ת������',
   sfygraduatedate      date comment '��ҵ����',
   primary key (sfyempid)
);

alter table org_sfy_employee comment '��������Ա��Ϣ��';
