drop table if exists art_poetry;

/*==============================================================*/
/* Table: art_poetry                                            */
/*==============================================================*/
create table art_poetry
(
   id                   char(16) not null comment '编号',
   title                varchar(255) comment '标题',
   content              mediumtext comment '内容',
   form                 varchar(255) comment '文体',
   genre                varchar(255) comment '流派',
   from_type_info       text comment '文体类信息',
   author               varchar(255),
   tag                  varchar(255) comment '标签',
   keywords             varchar(255),
   score                int comment '评分',
   analysis             text comment '解读 对文章的评鉴，内容的分析',
   comment              text comment '评价 对文章的评价',
   primary key (id)
);

alter table art_poetry comment '诗歌记录在这里。';


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

alter table sentences comment '记录的是非规范的文本之类的，如笑话，短信，名言之类的。';
