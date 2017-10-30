本地还要配置下nginx服务。

use my_web;

drop table if exists fileinfo;

/*==============================================================*/
/* Table: fileinfo      文件上传相关的表                                           */
/*==============================================================*/
create table fileinfo
(
   id                   varchar(64) not null comment '主键',
   file_org_name        varchar(200) default NULL comment '文件源名称',
   file_new_name        varchar(200) default NULL comment '文件唯一标识的名称',
   file_size            bigint(20) default NULL comment '文件大小，单位：byte',
   file_create_time     varchar(50) default NULL comment '文件创建时间',
   file_origin_type     smallint(2) default NULL comment '文件来源类型:(0:测试，1:用户，2:课程，3:站点)',
   file_md5             varchar(200) default NULL comment '文件MD5唯一标识，保留字段',
   create_user_id       varchar(64) default NULL comment '创建人ID',
   create_time          datetime default NULL comment '创建时间',
   update_time          datetime default NULL comment '更新时间',
   is_del               smallint(1) default 0 comment '是否删除标识：0-未删除，1-已删除，默认 ：0',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

SELECT
	 *
	FROM
	 fileinfo
	WHERE
	 1=1
	 AND file_org_name = '166.jpg'
	 AND file_create_time = '2017-09-20 09:14:13'
	 AND file_origin_type = 0
	 AND file_size = 40503
	 AND create_user_id= -1
	 AND is_del = 0

insert into fileinfo(id,file_org_name,file_create_time,file_origin_type,file_size,create_user_id,is_del) values ('001','166.jpg','2017-09-20 09:14:13',0,40503,-1,0);
