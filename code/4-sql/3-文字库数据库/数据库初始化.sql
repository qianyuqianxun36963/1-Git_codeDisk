drop table if exists art_poetry;

/*==============================================================*/
/* Table: art_poetry                                            */
/*==============================================================*/
create table art_poetry
(
   id                   char(16) not null comment '���',
   title                varchar(255) comment '����',
   content              mediumtext comment '����',
   form                 varchar(255) comment '����',
   genre                varchar(255) comment '����',
   from_type_info       text comment '��������Ϣ',
   author               varchar(255),
   tag                  varchar(255) comment '��ǩ',
   keywords             varchar(255),
   score                int comment '����',
   analysis             text comment '��� �����µ����������ݵķ���',
   comment              text comment '���� �����µ�����',
   primary key (id)
);

alter table art_poetry comment 'ʫ���¼�����';


drop table if exists sentences;

/*==============================================================*/
/* Table: sentences                                             */
/*==============================================================*/
create table sentences
(
   id                   char(20) not null,
   content              varchar(64000),
   tab                  varchar(255),
   keywords             varchar(255),
   author               varchar(255),
   primary key (id)
);

alter table sentences comment '��¼���Ƿǹ淶���ı�֮��ģ���Ц�������ţ�����֮��ġ�';
