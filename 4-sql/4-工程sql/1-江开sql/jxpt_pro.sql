/*
Navicat MySQL Data Transfer

Source Server         : jsou_100
Source Server Version : 50720
Source Host           : 210.28.216.100:3306
Source Database       : jxpt_pro

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-29 00:40:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_activity
-- ----------------------------
DROP TABLE IF EXISTS `p_activity`;
CREATE TABLE `p_activity` (
  `activity_id` varchar(32) NOT NULL COMMENT '活动ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `activity_name` varchar(250) NOT NULL COMMENT '活动名称',
  `type` tinyint(4) NOT NULL COMMENT '活动类型：0单元；1标签；2视频；3文档；4在线作业；5实训作业；6话题讨论',
  `parent_id` varchar(32) NOT NULL COMMENT '父节点（单元父节点为0，其它父节点为单元id）',
  `relation_id` varchar(32) DEFAULT NULL COMMENT '关联的活动内容（type为2、3关联资源表；type为4、5关联作业表；type为6关联话题表）',
  `order_index` tinyint(3) unsigned NOT NULL COMMENT '在父节点下的排序，从0开始',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间(用于type为2、3、4、5、6的活动)',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间(用于type为2、3、4、5、6的活动)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_hide` tinyint(4) NOT NULL COMMENT '是否已隐藏，0未隐藏，1已隐藏',
  `has_del` tinyint(4) NOT NULL COMMENT '是否已删除，0未删除，1已删除',
  `teaching_cycle` int(11) DEFAULT NULL COMMENT '（用于type=0）教学周期(单位：天。注意，前置所有单元教学周期与开课时间的累加是此单元的建议开始学习时间)',
  `summary` varchar(500) DEFAULT NULL COMMENT '（用于type=0,1）概述',
  PRIMARY KEY (`activity_id`),
  KEY `NewIndex1` (`course_version_id`) USING BTREE,
  KEY `idx_relation_id` (`relation_id`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程单元活动表（第一期来不及设计很细，后面可能需要和UA整合。单元活动有两大类：资源和任务。标签就一个纯文本，不做学习记';

-- ----------------------------
-- Table structure for p_announcement
-- ----------------------------
DROP TABLE IF EXISTS `p_announcement`;
CREATE TABLE `p_announcement` (
  `announcement_id` varchar(32) NOT NULL COMMENT '公告ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `create_by` varchar(32) NOT NULL COMMENT '创建者',
  `subject` varchar(100) NOT NULL COMMENT '公告标题',
  `message` text NOT NULL COMMENT '公告内容',
  `create_time` datetime NOT NULL COMMENT '公告创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '公告修改时间',
  `has_hide` tinyint(4) NOT NULL COMMENT '0显示 1隐藏',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未删除  1已删除',
  `has_top` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0不置顶 1置顶',
  `view_times` int(11) DEFAULT NULL COMMENT '浏览次数',
  `all_view` tinyint(4) NOT NULL COMMENT '0指定班级  1所有课程班本的学生',
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Table structure for p_announcement_reader
-- ----------------------------
DROP TABLE IF EXISTS `p_announcement_reader`;
CREATE TABLE `p_announcement_reader` (
  `announcement_id` varchar(32) NOT NULL COMMENT '公告ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`announcement_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已读公告表';

-- ----------------------------
-- Table structure for p_area
-- ----------------------------
DROP TABLE IF EXISTS `p_area`;
CREATE TABLE `p_area` (
  `area_code` varchar(6) NOT NULL COMMENT '行政区编码',
  `area` varchar(50) NOT NULL COMMENT '行政区名称',
  PRIMARY KEY (`area_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行政区域，按照国家行政区域代码规定（GB T2260）';

-- ----------------------------
-- Table structure for p_assessment_indicator
-- ----------------------------
DROP TABLE IF EXISTS `p_assessment_indicator`;
CREATE TABLE `p_assessment_indicator` (
  `assessment_indicator_id` varchar(32) NOT NULL COMMENT '课程考核指标ID',
  `course_id` varchar(32) NOT NULL COMMENT '课程',
  `check_method_code` varchar(32) DEFAULT NULL COMMENT '考核形式编码（纸笔考试、机考、老师评分）数据字典维护type=''EXAM_TYPE''',
  `form` varchar(32) DEFAULT NULL COMMENT '考核形式(字典表type=''EXAM_FORM'')',
  `method` varchar(32) DEFAULT NULL COMMENT '考核方式(字典表type=''EXAM_METHOD'')',
  `exam_duration` int(11) DEFAULT '0' COMMENT '考试时长，单位分钟',
  `form_rate` int(11) DEFAULT '0' COMMENT '形考比例，单位百分数',
  `final_rate` int(11) DEFAULT '0' COMMENT '终考比例，单位百分数',
  `practice_rate` int(11) DEFAULT '0' COMMENT '实践比例，单位百分数',
  `min_form_score` int(11) DEFAULT '0' COMMENT '形考最低分',
  `min_final_score` int(11) DEFAULT '0' COMMENT '终考最低分',
  `min_practice_score` int(11) DEFAULT '0' COMMENT '实践最低分',
  PRIMARY KEY (`assessment_indicator_id`),
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程考核指标';

-- ----------------------------
-- Table structure for p_assessment_indicator_apply
-- ----------------------------
DROP TABLE IF EXISTS `p_assessment_indicator_apply`;
CREATE TABLE `p_assessment_indicator_apply` (
  `id` varchar(32) NOT NULL COMMENT '主键	id',
  `course_id` varchar(32) NOT NULL COMMENT '课程id，jsou_subject_course',
  `exam_forms` varchar(32) DEFAULT NULL COMMENT '考核形式',
  `exam_type_code` varchar(32) DEFAULT NULL COMMENT '考核类型编码（纸笔考试、机考、老师评分）数据字典维护，data_code',
  `exam_method_code` varchar(32) DEFAULT NULL COMMENT '考试方式（开卷、闭卷）数据字典维护，data_code',
  `exam_time` int(11) DEFAULT '0' COMMENT '考试时长，单位分钟',
  `form_rate` int(11) DEFAULT '0' COMMENT '形考比例，单位百分数',
  `final_rate` int(11) DEFAULT '0' COMMENT '终考比例，单位百分数',
  `practice_rate` int(11) DEFAULT '0' COMMENT '实践比例，单位百分数',
  `min_form_score` int(11) DEFAULT '0' COMMENT '形考最低分',
  `min_final_score` int(11) DEFAULT '0' COMMENT '终考最低分',
  `min_practice_score` int(11) DEFAULT '0' COMMENT '实践最低分',
  `verify_status` tinyint(2) DEFAULT '0' COMMENT '审核状态，0待审核，1审核通过，2审核驳回',
  `verify_remark` varchar(512) DEFAULT NULL COMMENT '审核意见',
  `verify_time` datetime DEFAULT NULL COMMENT '审批时间',
  `verify_by` varchar(32) DEFAULT NULL COMMENT '审批人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_use` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  `synchro_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程考核指标申请表';

-- ----------------------------
-- Table structure for p_attend_course_log
-- ----------------------------
DROP TABLE IF EXISTS `p_attend_course_log`;
CREATE TABLE `p_attend_course_log` (
  `id` varchar(32) NOT NULL COMMENT '用户旁听课程id',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `course_version_id` varchar(32) NOT NULL,
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户旁听课程记录表';

-- ----------------------------
-- Table structure for p_cart
-- ----------------------------
DROP TABLE IF EXISTS `p_cart`;
CREATE TABLE `p_cart` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `school_roll_id` varchar(32) NOT NULL COMMENT '学籍id',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本id',
  `course_credit` decimal(5,0) DEFAULT '0' COMMENT '课程学分(付款后使用这个字段，付款前用关联查询)',
  `amount_money` decimal(8,2) DEFAULT '0.00' COMMENT '订单付款金额',
  `exam_flag` tinyint(4) DEFAULT '0' COMMENT '报考标识 -（如果只是报考，则为“1”，默认为0）',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号,关联订单表订单号',
  `create_by` varchar(32) NOT NULL COMMENT '创建者用户ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `pay_time` datetime DEFAULT NULL COMMENT '结算时间',
  `has_pay` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已结算： 0 未结算，1 已结算',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除： 0 未删除，1 已删除',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_school_roll_id` (`school_roll_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Table structure for p_class
-- ----------------------------
DROP TABLE IF EXISTS `p_class`;
CREATE TABLE `p_class` (
  `class_id` varchar(32) NOT NULL COMMENT '标识',
  `course_version_id` varchar(32) DEFAULT NULL COMMENT '课程版本ID',
  `class_name` varchar(64) DEFAULT NULL COMMENT '班级名',
  `has_allot` tinyint(4) DEFAULT '1' COMMENT '是否分配0未分配；1已分配',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者id',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0	是否已删除，0未删除，1已删除',
  `has_archived` tinyint(4) DEFAULT '0' COMMENT '是否归档(0：未归档，1：归档)',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  PRIMARY KEY (`class_id`),
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表（班级删除或归档后将不在教务平台显示，归档后的班级学生还是可以看到）';

-- ----------------------------
-- Table structure for p_class_announcement
-- ----------------------------
DROP TABLE IF EXISTS `p_class_announcement`;
CREATE TABLE `p_class_announcement` (
  `class_id` varchar(32) DEFAULT NULL COMMENT '标识',
  `announcement_id` varchar(32) DEFAULT NULL COMMENT '公告ID',
  KEY `idx_class_id` (`class_id`) USING BTREE,
  KEY `idx_announcement_id` (`announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='如果公告的all_view指定为0';

-- ----------------------------
-- Table structure for p_class_user
-- ----------------------------
DROP TABLE IF EXISTS `p_class_user`;
CREATE TABLE `p_class_user` (
  `class_id` varchar(32) NOT NULL COMMENT '标识',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `has_del` tinyint(4) DEFAULT NULL COMMENT '是否已删除',
  `join_time` datetime NOT NULL COMMENT '加入日期',
  `role_id` tinyint(4) NOT NULL COMMENT '用户角色(这里只有课程导师和学生)',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者id',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步 0未同步 1已同步',
  PRIMARY KEY (`class_id`,`user_id`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级成员表';

-- ----------------------------
-- Table structure for p_common_dictdata
-- ----------------------------
DROP TABLE IF EXISTS `p_common_dictdata`;
CREATE TABLE `p_common_dictdata` (
  `id` varchar(32) NOT NULL COMMENT '主键	id',
  `data_code` varchar(32) NOT NULL COMMENT '	字典数据编码',
  `data_name` varchar(75) NOT NULL COMMENT '	字典数据名称',
  `data_value` varchar(255) DEFAULT NULL COMMENT '数据值',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `data_desc` varchar(450) DEFAULT NULL COMMENT '字典数据描述',
  `data_sort` int(11) DEFAULT NULL COMMENT '排序编号',
  `data_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '默认0	字段状态0未启用,1已启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_date` datetime DEFAULT NULL COMMENT '	创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者id',
  `update_date` datetime DEFAULT NULL COMMENT '	修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(4) DEFAULT '0' COMMENT '是否删除，0未删除，1已删除',
  `has_used` tinyint(4) DEFAULT '0' COMMENT '是否使用：0未使用；1未使用',
  PRIMARY KEY (`id`),
  KEY `idx_data_code` (`data_code`,`type`) USING BTREE,
  KEY `idx_type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表（除了表名不一样，其他都和教务平台common_dictdata一致）';

-- ----------------------------
-- Table structure for p_course
-- ----------------------------
DROP TABLE IF EXISTS `p_course`;
CREATE TABLE `p_course` (
  `course_id` varchar(32) NOT NULL COMMENT '课程ID',
  `course_code` varchar(20) NOT NULL COMMENT '课程编码',
  `name` varchar(128) NOT NULL COMMENT '课程名称',
  `introduction` longtext COMMENT '课程简介',
  `subject_id` varchar(32) DEFAULT NULL COMMENT '学科，数据字典type=''SUBJECT_TYPE''',
  `teaching_objectives` longtext COMMENT '教学目标',
  `cover_id` varchar(32) NOT NULL COMMENT '课程封面(关联p_image_tab的image_id)',
  `theme_id` varchar(32) NOT NULL COMMENT '课程主题(关联p_image_tab的image_id)',
  `preview` varchar(100) DEFAULT NULL COMMENT '预览视频',
  `credit` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '课程学分',
  `total_hours` int(11) DEFAULT '0' COMMENT '总学时',
  `practice_teaching_hours` int(11) DEFAULT '0' COMMENT '实践教学学时',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `has_self_built` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否自建（0：非自建，1：自建）',
  `create_by` varchar(32) NOT NULL DEFAULT '-1' COMMENT '创建人',
  `password` varchar(6) DEFAULT NULL COMMENT '只有自建课程才有访问密码',
  `allow_guest` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否允许旁听（0:不允许，1：允许）',
  `class_max_number` smallint(6) DEFAULT NULL COMMENT '班级人数限制',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`course_id`),
  KEY `idx_preview` (`preview`) USING BTREE,
  KEY `idx_cover_id` (`cover_id`) USING BTREE,
  KEY `idx_subject_id` (`subject_id`) USING BTREE,
  KEY `idx_course_code` (`course_code`) USING BTREE,
  KEY `idx_theme_id` (`theme_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Table structure for p_courserefund_course
-- ----------------------------
DROP TABLE IF EXISTS `p_courserefund_course`;
CREATE TABLE `p_courserefund_course` (
  `crefund_course_id` varchar(32) NOT NULL COMMENT '退课及选课关联ID',
  `course_refund_id` varchar(32) NOT NULL COMMENT '退课信息ID',
  `student_course_id` varchar(32) NOT NULL COMMENT '学生选课ID',
  `finance_order_id` varchar(32) NOT NULL COMMENT '学生缴费id，关联学生缴费订单表',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0 未删除，1已删除',
  PRIMARY KEY (`crefund_course_id`),
  KEY `idx_course_refund_id` (`course_refund_id`) USING BTREE,
  KEY `idx_student_course_id` (`student_course_id`) USING BTREE,
  KEY `idx_finance_order_id` (`finance_order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退课及选课缴费关联表';

-- ----------------------------
-- Table structure for p_course_education
-- ----------------------------
DROP TABLE IF EXISTS `p_course_education`;
CREATE TABLE `p_course_education` (
  `course_edu_id` varchar(32) NOT NULL COMMENT '主键',
  `course_id` varchar(32) NOT NULL COMMENT '课程ID',
  `edu_id` varchar(32) NOT NULL COMMENT '学历ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`course_edu_id`),
  KEY `idx_edu_id` (`edu_id`) USING BTREE,
  KEY `IDX_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程与学历关联表';

-- ----------------------------
-- Table structure for p_course_education_copy
-- ----------------------------
DROP TABLE IF EXISTS `p_course_education_copy`;
CREATE TABLE `p_course_education_copy` (
  `course_edu_id` varchar(32) NOT NULL COMMENT '主键',
  `course_id` varchar(32) NOT NULL COMMENT '课程ID',
  `edu_id` varchar(32) NOT NULL COMMENT '学历ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`course_edu_id`),
  KEY `idx_edu_id` (`edu_id`) USING BTREE,
  KEY `IDX_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_course_learning_time
-- ----------------------------
DROP TABLE IF EXISTS `p_course_learning_time`;
CREATE TABLE `p_course_learning_time` (
  `user_id` varchar(32) NOT NULL COMMENT '用户Id',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本',
  `day` date NOT NULL COMMENT '日期',
  `total_time` int(11) NOT NULL COMMENT '一天的学习时间统计(单位为秒)',
  PRIMARY KEY (`user_id`,`course_version_id`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一个人一门课程一天的总学习时长';

-- ----------------------------
-- Table structure for p_course_like
-- ----------------------------
DROP TABLE IF EXISTS `p_course_like`;
CREATE TABLE `p_course_like` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `score` tinyint(4) NOT NULL COMMENT '评分',
  `create_time` datetime NOT NULL COMMENT '评分时间',
  PRIMARY KEY (`user_id`,`course_version_id`),
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程版本评分表';

-- ----------------------------
-- Table structure for p_course_module
-- ----------------------------
DROP TABLE IF EXISTS `p_course_module`;
CREATE TABLE `p_course_module` (
  `module_id` varchar(32) NOT NULL COMMENT '主键	id',
  `course_type_id` varchar(32) NOT NULL COMMENT '课程分类编码，数据字典维护data_id',
  `course_module_code` varchar(32) NOT NULL COMMENT '课程模块编码',
  `course_module_name` varchar(64) NOT NULL COMMENT '课程模块名称',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否启用，0未启用，1已启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`module_id`),
  KEY `idx_course_type_id` (`course_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程模块表';

-- ----------------------------
-- Table structure for p_course_module_dir
-- ----------------------------
DROP TABLE IF EXISTS `p_course_module_dir`;
CREATE TABLE `p_course_module_dir` (
  `dir_id` varchar(32) NOT NULL COMMENT '主键	id',
  `course_module_id` varchar(32) NOT NULL COMMENT '所属课程模块id，jsou_subject_course_module',
  `code` varchar(32) NOT NULL COMMENT '模块方向编码',
  `name` varchar(64) NOT NULL COMMENT '模块方向名称',
  `introduction` longtext COMMENT '模块方向简介',
  `status` smallint(6) NOT NULL COMMENT '0	是否启用，0未启用，1已启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`dir_id`),
  KEY `idx_course_module_id` (`course_module_id`) USING BTREE,
  KEY `idx_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块方向表';

-- ----------------------------
-- Table structure for p_course_refund
-- ----------------------------
DROP TABLE IF EXISTS `p_course_refund`;
CREATE TABLE `p_course_refund` (
  `course_refund_id` varchar(32) NOT NULL COMMENT '退课信息ID',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍ID',
  `original_amount` decimal(8,2) DEFAULT NULL COMMENT '原始金额',
  `real_amount` decimal(8,2) DEFAULT NULL COMMENT '实退金额',
  `Retreating_time` datetime NOT NULL COMMENT '退课时间',
  `refund_time` datetime DEFAULT NULL COMMENT '退款时间',
  `verify_status` varchar(32) DEFAULT '0' COMMENT '当前审核状态(数据字典维护)',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0 未删除，1已删除',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`course_refund_id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退课信息表';

-- ----------------------------
-- Table structure for p_course_textbook
-- ----------------------------
DROP TABLE IF EXISTS `p_course_textbook`;
CREATE TABLE `p_course_textbook` (
  `course_textbook_id` varchar(32) NOT NULL COMMENT '主键',
  `course_id` varchar(32) NOT NULL COMMENT '课程ID',
  `textbook_id` varchar(32) NOT NULL COMMENT '教材ID',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建关联者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0停用；1启用',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  PRIMARY KEY (`course_textbook_id`),
  KEY `idx_textbook_id` (`textbook_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='由考务平台设计';

-- ----------------------------
-- Table structure for p_course_user
-- ----------------------------
DROP TABLE IF EXISTS `p_course_user`;
CREATE TABLE `p_course_user` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `role_id` tinyint(4) NOT NULL COMMENT '用户角色',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_del` tinyint(4) DEFAULT NULL COMMENT '是否已经删除（0:未删除，1：已删除）',
  PRIMARY KEY (`user_id`,`course_version_id`,`role_id`),
  KEY `idx_role_id` (`role_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程用户表';

-- ----------------------------
-- Table structure for p_course_version
-- ----------------------------
DROP TABLE IF EXISTS `p_course_version`;
CREATE TABLE `p_course_version` (
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `course_id` varchar(32) NOT NULL COMMENT '课程ID',
  `version_code` varchar(32) NOT NULL COMMENT '版本号',
  `version_name` varchar(50) NOT NULL COMMENT '版本名称',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `release_date` datetime DEFAULT NULL COMMENT '发布时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:未发布，1：已发布，2：建设中，3：已归档。一个课程有且最多只有一个已发布，一个课程未发布和建设中最多只有一个)',
  `archive_date` datetime DEFAULT NULL COMMENT '归档日期',
  `class_size` tinyint(4) DEFAULT NULL COMMENT '班级人数限定',
  `start_date` datetime DEFAULT NULL COMMENT '开课日期',
  `learning_cycle` smallint(6) DEFAULT NULL COMMENT '学习周期 (以天为单位)',
  `arrangement_deadline` datetime DEFAULT NULL COMMENT '教学点分班截止日期',
  `orig_course_version_id` varchar(32) DEFAULT NULL COMMENT '原版本',
  `exam_forms` varchar(32) DEFAULT NULL COMMENT '考核形式',
  `exam_type_code` varchar(32) DEFAULT NULL COMMENT '考核类型编码（纸笔考试、机考、老师评分）数据字典维护，data_code',
  `exam_method_code` varchar(32) DEFAULT NULL COMMENT '考试方式（开卷、闭卷）数据字典维护，data_code',
  `exam_time` int(11) DEFAULT '0' COMMENT '考试时长，单位分钟',
  `form_rate` int(11) DEFAULT '0' COMMENT '形考比例，单位百分数',
  `final_rate` int(11) DEFAULT '0' COMMENT '终考比例，单位百分数',
  `practice_rate` int(11) DEFAULT '0' COMMENT '实践比例，单位百分数',
  `min_form_score` int(11) DEFAULT '0' COMMENT '形考最低分',
  `min_final_score` int(11) DEFAULT '0' COMMENT '终考最低分',
  `min_practice_score` int(11) DEFAULT '0' COMMENT '实践最低分',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '0是否已引用，0未引用，1已引用',
  PRIMARY KEY (`course_version_id`),
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_create_by` (`create_by`) USING BTREE,
  KEY `idx_version_code` (`version_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程版本';

-- ----------------------------
-- Table structure for p_date_constant
-- ----------------------------
DROP TABLE IF EXISTS `p_date_constant`;
CREATE TABLE `p_date_constant` (
  `day` date NOT NULL COMMENT '日期常量',
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日期常量表';

-- ----------------------------
-- Table structure for p_degree_score
-- ----------------------------
DROP TABLE IF EXISTS `p_degree_score`;
CREATE TABLE `p_degree_score` (
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍id',
  `batch_name` varchar(32) DEFAULT NULL COMMENT '批次',
  `application_deadline` datetime DEFAULT NULL COMMENT '申请截止时间',
  `studegree_score` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '学位课成绩',
  `dissertation_score` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '毕业论文成绩',
  `need_degree_score` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否需要审核学位英语课成绩：0不需要；1需要',
  `need_dissertation_score` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否需要审核毕业论文课成绩：0不需要；1需要',
  `need_degree_average_score` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否需要审核学位学位平均分：0不需要；1需要',
  `degree_batch_id` varchar(32) DEFAULT NULL COMMENT '学位批次ID',
  PRIMARY KEY (`schoolroll_id`),
  KEY `idx_degree_batch_id` (`degree_batch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_degree_stu_module_info
-- ----------------------------
DROP TABLE IF EXISTS `p_degree_stu_module_info`;
CREATE TABLE `p_degree_stu_module_info` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍id',
  `module_id` varchar(32) NOT NULL COMMENT '模块id',
  `module_avage_score` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '学生得分',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_module_id` (`module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_edumanage_cbatch_course
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_cbatch_course`;
CREATE TABLE `p_edumanage_cbatch_course` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `course_batch_id` varchar(32) DEFAULT NULL COMMENT '选课批次ID',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`),
  KEY `idx_course_batch_id` (`course_batch_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课批次与课程关联表';

-- ----------------------------
-- Table structure for p_edumanage_cbatch_point
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_cbatch_point`;
CREATE TABLE `p_edumanage_cbatch_point` (
  `id` varchar(32) NOT NULL COMMENT '系统ID',
  `course_batch_id` varchar(32) DEFAULT NULL COMMENT '选课批次ID',
  `point_id` varchar(32) DEFAULT NULL COMMENT '教学点ID',
  PRIMARY KEY (`id`),
  KEY `idx_point_id` (`point_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课批次与教学点关联表';

-- ----------------------------
-- Table structure for p_edumanage_cbatch_student_type
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_cbatch_student_type`;
CREATE TABLE `p_edumanage_cbatch_student_type` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `course_batch_id` varchar(32) DEFAULT NULL COMMENT '选课批次ID',
  `student_type_id` varchar(32) DEFAULT NULL COMMENT '学生类型(数据字典表维护)',
  PRIMARY KEY (`id`),
  KEY `idx_course_batch_id` (`course_batch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课批次与学生类型关联表';

-- ----------------------------
-- Table structure for p_edumanage_choose_course_batch
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_choose_course_batch`;
CREATE TABLE `p_edumanage_choose_course_batch` (
  `id` varchar(32) NOT NULL COMMENT '系统ID',
  `course_batch_name` varchar(75) DEFAULT NULL COMMENT '选课批次名称',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `stop_time` datetime DEFAULT NULL COMMENT '结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者id',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_use` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课批次表';

-- ----------------------------
-- Table structure for p_edumanage_courserefund_course
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_courserefund_course`;
CREATE TABLE `p_edumanage_courserefund_course` (
  `id` varchar(32) NOT NULL COMMENT '系统id',
  `course_refund_id` varchar(32) DEFAULT NULL COMMENT '退课信息ID',
  `student_course_id` varchar(32) DEFAULT NULL COMMENT '学生选课ID',
  `finance_order_id` varchar(32) DEFAULT NULL COMMENT '学生缴费id，关联学生缴费订单表',
  `advice_refund_money` decimal(8,2) DEFAULT NULL COMMENT '建议退费',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `idx_course_refund_id` (`course_refund_id`) USING BTREE,
  KEY `idx_student_course_id` (`student_course_id`) USING BTREE,
  KEY `idx_finance_order_id` (`finance_order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退课信息与选课关联表';

-- ----------------------------
-- Table structure for p_edumanage_course_refund
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_course_refund`;
CREATE TABLE `p_edumanage_course_refund` (
  `id` varchar(32) NOT NULL COMMENT '系统ID',
  `point_id` varchar(32) DEFAULT NULL COMMENT '教学点ID',
  `schoolroll_id` varchar(32) DEFAULT NULL COMMENT '学籍ID',
  `refund_id` varchar(32) DEFAULT NULL COMMENT '退款单ID',
  `original_amount` decimal(8,2) DEFAULT NULL COMMENT '原始金额',
  `real_amount` decimal(8,2) DEFAULT NULL COMMENT '实退金额',
  `refund_user_id` varbinary(32) DEFAULT NULL COMMENT '退课人ID',
  `refund_time` datetime DEFAULT NULL COMMENT '退课时间',
  `verify_status` varchar(32) DEFAULT '0' COMMENT '当前审核状态(数据字典维护)',
  `verify_id` varchar(32) DEFAULT NULL COMMENT '当前审核记录id(记审核记录的id)',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `idx_point_id` (`point_id`) USING BTREE,
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_refund_id` (`refund_id`) USING BTREE,
  KEY `idx_verify_id` (`verify_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_edumanage_course_refund_verify
-- ----------------------------
DROP TABLE IF EXISTS `p_edumanage_course_refund_verify`;
CREATE TABLE `p_edumanage_course_refund_verify` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `course_refund_id` varchar(32) NOT NULL COMMENT '退课申请id',
  `verify_status` varchar(32) NOT NULL COMMENT '审核状态id (字典表维护)',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `user_id` varchar(32) DEFAULT NULL COMMENT '审核人账号',
  `verify_time` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`ID`),
  KEY `idx_course_refund_id` (`course_refund_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退课审核表';

-- ----------------------------
-- Table structure for p_exam_batch
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_batch`;
CREATE TABLE `p_exam_batch` (
  `id` varchar(32) NOT NULL,
  `exam_batch_No` varchar(64) NOT NULL COMMENT '考试批次号',
  `exam_type` varchar(20) NOT NULL COMMENT '考试类型，数据字典code，1纸笔考试，2机考',
  `max_num_per_exam` int(11) NOT NULL DEFAULT '0' COMMENT '每场最大人数',
  `apply_deadline` datetime NOT NULL COMMENT '报名截止时间 年月日',
  `start_time` date NOT NULL COMMENT '考试开始时间 年月日',
  `end_time` date NOT NULL COMMENT '考试结束时间，年月日',
  `remark` varchar(512) NOT NULL COMMENT '考试须知',
  `bak` varchar(512) DEFAULT NULL COMMENT '备注',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态，0待发布，1已发布',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新者id',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除，0标识未删除，1标识已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试批次信息';

-- ----------------------------
-- Table structure for p_exam_batch_time
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_batch_time`;
CREATE TABLE `p_exam_batch_time` (
  `id` varchar(32) NOT NULL,
  `exam_batch_id` varchar(32) NOT NULL COMMENT '考试批次id',
  `start_time` datetime NOT NULL COMMENT '场次，开始时间',
  `order_index` smallint(6) NOT NULL DEFAULT '9999' COMMENT '场次编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新者id',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除，0标识未删除，1标识已删除',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被引用：0未被引用，1已被引用',
  PRIMARY KEY (`id`),
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试场次定义';

-- ----------------------------
-- Table structure for p_exam_classroom
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_classroom`;
CREATE TABLE `p_exam_classroom` (
  `id` varchar(32) NOT NULL,
  `exam_place_id` varchar(32) NOT NULL COMMENT '考点信息id',
  `classroom_type` varchar(32) NOT NULL COMMENT '考场资源类型，和考试类型编码对应',
  `classroom_name` varchar(64) NOT NULL COMMENT '教室名称',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态，1可用、0不可用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新者id',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除，0标识未删除，1标识已删除',
  `has_used` int(11) NOT NULL DEFAULT '0' COMMENT '是否被引用，引用一次加一,相关引用删除一次，减一',
  PRIMARY KEY (`id`),
  KEY `idx_exam_place_id` (`exam_place_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考点资源--教室信息';

-- ----------------------------
-- Table structure for p_exam_course
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_course`;
CREATE TABLE `p_exam_course` (
  `id` varchar(32) NOT NULL,
  `exam_batch_id` varchar(32) NOT NULL COMMENT '考试批次id',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `exam_type_code` varchar(20) NOT NULL COMMENT '考试类型，机考1，纸笔考试0，数据字典维护',
  `exam_method_code` varchar(20) NOT NULL COMMENT '考试类型，1开卷，2闭卷，数据字典维护',
  `exam_time` int(11) NOT NULL DEFAULT '0' COMMENT '考试时长',
  `form_rate` int(11) NOT NULL DEFAULT '0' COMMENT '形考比例，单位百分数',
  `final_rate` int(11) DEFAULT '0' COMMENT '终考比例，单位百分数',
  `exam_batch_time_id` varchar(32) DEFAULT NULL COMMENT '场次id',
  `practice_rate` int(11) DEFAULT '0' COMMENT '实践比例，单位百分数',
  `min_form_score` int(11) DEFAULT '0' COMMENT '形考最低分',
  `min_final_score` int(11) DEFAULT '0' COMMENT '终考最低分',
  `min_practice_score` int(11) DEFAULT '0' COMMENT '实践最低分',
  `create_rate` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_use` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`id`),
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开考课程';

-- ----------------------------
-- Table structure for p_exam_final_totalscore
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_final_totalscore`;
CREATE TABLE `p_exam_final_totalscore` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `exam_batch_id` varchar(32) DEFAULT NULL COMMENT '考试批次id',
  `course_version_id` varchar(32) DEFAULT NULL COMMENT '课程版本id',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍表主键id',
  `form_score` decimal(5,2) DEFAULT '0.00' COMMENT '形考成绩',
  `final_score` decimal(5,2) DEFAULT NULL COMMENT '终考成绩',
  `practice_score` decimal(5,2) DEFAULT NULL COMMENT '实验实训成绩',
  `total_score` decimal(5,2) DEFAULT NULL COMMENT '最终成绩-由终考形考成绩合成得到，一般成绩是指这个',
  `pub_date` datetime DEFAULT NULL COMMENT '发布日期',
  `enable_time` datetime DEFAULT NULL COMMENT '成绩有效期(发布日期加有效月份)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_pub` tinyint(2) DEFAULT NULL COMMENT '是否已发布，0 未发布，1已发布',
  `has_getscore` tinyint(2) DEFAULT NULL COMMENT '是否获得学分，0 未获得，1已获得',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0 未删除，1已删除',
  PRIMARY KEY (`id`),
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩总表';

-- ----------------------------
-- Table structure for p_exam_place
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_place`;
CREATE TABLE `p_exam_place` (
  `id` varchar(32) NOT NULL,
  `point_id` varchar(32) NOT NULL COMMENT '教学点id',
  `name` varchar(64) NOT NULL COMMENT '考点名称',
  `code` varchar(32) NOT NULL COMMENT '考点代码',
  `charge_pers` varchar(64) NOT NULL COMMENT '考点负责人',
  `charge_phone` varchar(64) NOT NULL COMMENT '考点负责人电话',
  `link_man` varchar(64) DEFAULT NULL COMMENT '联系人',
  `link_contact` varchar(64) DEFAULT NULL COMMENT '联系人电话',
  `verify_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '审核状态，0待审核，1审核通过，2审核不通过',
  `verify_id` varchar(32) NOT NULL COMMENT '当前申请对应的审核表id',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '考点状态，是否启用，0停用，1启用',
  `province` varchar(20) NOT NULL COMMENT '所在省id',
  `city` varchar(20) NOT NULL COMMENT '所属市id',
  `county` varchar(20) NOT NULL COMMENT '所在县id',
  `address` varchar(256) NOT NULL COMMENT '详细地址',
  `apply_reason` varchar(2048) NOT NULL COMMENT '申请理由',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '申请者id',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新者id',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除，0未删除，1已删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNI_name_index` (`name`) USING BTREE,
  KEY `idx_point_id` (`point_id`) USING BTREE,
  KEY `idx_verify_id` (`verify_id`) USING BTREE,
  KEY `idx_province` (`province`) USING BTREE,
  KEY `idx_city` (`city`) USING BTREE,
  KEY `idx_county` (`county`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考点信息';

-- ----------------------------
-- Table structure for p_exam_place_student
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_place_student`;
CREATE TABLE `p_exam_place_student` (
  `id` varchar(32) NOT NULL,
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学生id',
  `exam_place_id` varchar(32) DEFAULT NULL COMMENT '考点信息id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新者id',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除，0标识未删除，1标识已删除',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_exam_place_id` (`exam_place_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生考点关系信息';

-- ----------------------------
-- Table structure for p_exam_room
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_room`;
CREATE TABLE `p_exam_room` (
  `id` varchar(32) NOT NULL,
  `exam_batch_id` varchar(32) NOT NULL COMMENT '考试批次id',
  `exam_place_id` varchar(32) NOT NULL COMMENT '考点id',
  `exam_time` datetime NOT NULL COMMENT '考试时间',
  `room_code` varchar(32) NOT NULL COMMENT '考场编号，自动生成，考点+3位流水号',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本id',
  `secret_code` varchar(32) NOT NULL COMMENT '考场保密号',
  `person_num` int(11) NOT NULL DEFAULT '0' COMMENT '考生数',
  `mantiss` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是尾数考场，1是，0否',
  `lended` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是借考考场，1是，0否',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已经引用，0未引用，1已引用',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  PRIMARY KEY (`id`),
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE,
  KEY `idx_exam_place_id` (`exam_place_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考场信息表';

-- ----------------------------
-- Table structure for p_exam_room_classroom
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_room_classroom`;
CREATE TABLE `p_exam_room_classroom` (
  `id` varchar(32) NOT NULL,
  `exam_batch_id` varchar(32) NOT NULL COMMENT '考试批次id',
  `exam_room_id` varchar(32) NOT NULL COMMENT '考场id',
  `exam_place_id` varchar(32) NOT NULL COMMENT '考点id',
  `exam_classroom_id` varchar(32) NOT NULL COMMENT '教室id',
  PRIMARY KEY (`id`),
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE,
  KEY `idx_exam_room_id` (`exam_room_id`) USING BTREE,
  KEY `idx_exam_place_id` (`exam_place_id`) USING BTREE,
  KEY `idx_exam_classroom_id` (`exam_classroom_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考场教室对应关系表';

-- ----------------------------
-- Table structure for p_exam_room_seats
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_room_seats`;
CREATE TABLE `p_exam_room_seats` (
  `id` varchar(32) NOT NULL,
  `exam_batch_id` varchar(32) NOT NULL COMMENT '考试批次id',
  `exam_place_id` varchar(32) NOT NULL COMMENT '考点id',
  `exam_room_id` varchar(32) NOT NULL COMMENT '考场id',
  `seat_code` int(11) NOT NULL COMMENT '考场座位号，从1开始累加',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学生id',
  `lended` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是借考，0否，1是',
  PRIMARY KEY (`id`),
  KEY `idx_exam_place_id` (`exam_place_id`) USING BTREE,
  KEY `idx_exam_room_id` (`exam_room_id`) USING BTREE,
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考场座次表';

-- ----------------------------
-- Table structure for p_exam_student_register
-- ----------------------------
DROP TABLE IF EXISTS `p_exam_student_register`;
CREATE TABLE `p_exam_student_register` (
  `id` varchar(32) NOT NULL,
  `exam_batch_id` varchar(32) NOT NULL COMMENT '考试批次id',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学生学籍id',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本id',
  `intime` datetime NOT NULL COMMENT '报考时间',
  `incount` int(11) NOT NULL DEFAULT '1' COMMENT '报考次数，（累加每个版本每个学生报考次数）',
  `edumanage_student_course_id` varchar(32) NOT NULL COMMENT '学生选课表id',
  `pay_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '缴费状态，0待缴费、2已缴费、3已退费',
  `exam_reg` tinyint(2) NOT NULL DEFAULT '0' COMMENT '报考状态，0未报考、1已报考',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_use` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`id`),
  KEY `idx_exam_batch_id` (`exam_batch_id`) USING BTREE,
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生报考记录表';

-- ----------------------------
-- Table structure for p_file_info
-- ----------------------------
DROP TABLE IF EXISTS `p_file_info`;
CREATE TABLE `p_file_info` (
  `file_info_id` varchar(32) NOT NULL COMMENT '主键',
  `orgin_name` varchar(200) NOT NULL COMMENT '文件源名称',
  `new_name` varchar(200) NOT NULL COMMENT '文件唯一标识的名称',
  `file_type` varchar(20) NOT NULL COMMENT '文件后缀',
  `remote_id` varchar(32) DEFAULT NULL COMMENT '远程（数据中心）资源ID',
  `remote_path` varchar(250) DEFAULT NULL COMMENT '远程（数据中心）资源服务器文件路径',
  `local_path` varchar(200) DEFAULT NULL COMMENT '本地资源服务器文件相对路径',
  `file_size` bigint(20) NOT NULL COMMENT '文件大小，单位：byte',
  `file_create_time` datetime DEFAULT NULL COMMENT '文件创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_modify_time` datetime DEFAULT NULL COMMENT '文件最后更改时间',
  `has_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除标识：0-未删除，1-已删除，默认 ：0',
  PRIMARY KEY (`file_info_id`),
  KEY `idx_remote_id` (`remote_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有上传文件的文件信息';

-- ----------------------------
-- Table structure for p_finance_order
-- ----------------------------
DROP TABLE IF EXISTS `p_finance_order`;
CREATE TABLE `p_finance_order` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍表ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `remittance_id` varchar(32) DEFAULT NULL COMMENT '汇款单ID',
  `pay_type_code` varchar(32) DEFAULT NULL COMMENT '缴费类型, 使用的是 finance_pay_type 表',
  `pay_way_id` varchar(32) DEFAULT NULL COMMENT '缴费途径(数据字典维护)',
  `pay_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '缴费状态(0未缴；1缴费中；2已缴费；3退费中；4已退费；5已取消)',
  `pay_account` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '缴费金额',
  `result_inform_time` datetime DEFAULT NULL COMMENT '结果通知时间',
  `has_genInvoice` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已导出发票，0 未导出，1已导出',
  `stop_time` datetime DEFAULT NULL COMMENT '交费截至时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `pay_time` datetime DEFAULT NULL COMMENT '缴费时间',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步 0未同步 1已同步',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE,
  KEY `idx_remittance_id` (`remittance_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生交费订单表';

-- ----------------------------
-- Table structure for p_finance_refund
-- ----------------------------
DROP TABLE IF EXISTS `p_finance_refund`;
CREATE TABLE `p_finance_refund` (
  `id` varchar(32) NOT NULL COMMENT '系统ID',
  `point_id` varchar(32) DEFAULT NULL COMMENT '教学点ID',
  `schoolroll_id` varchar(32) DEFAULT NULL COMMENT '学籍表ID',
  `refund_user_id` varchar(32) NOT NULL COMMENT '退款人ID',
  `refund_user_name` varchar(64) DEFAULT NULL COMMENT '退款人姓名',
  `refund_resource` tinyint(2) DEFAULT '0' COMMENT '退费来源，0 退课，1 退学',
  `amount` decimal(14,2) NOT NULL COMMENT '退款金额，以分为单位，int型',
  `refund_time` datetime NOT NULL COMMENT '退款时间',
  `verify_id` varchar(32) DEFAULT NULL COMMENT '当前审核状态，记审核表ID',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  PRIMARY KEY (`id`),
  KEY `IDX_point_id` (`point_id`) USING BTREE,
  KEY `IDX_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `IDX_refund_user_id` (`refund_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款信息';

-- ----------------------------
-- Table structure for p_finance_refund_order
-- ----------------------------
DROP TABLE IF EXISTS `p_finance_refund_order`;
CREATE TABLE `p_finance_refund_order` (
  `id` varchar(32) NOT NULL COMMENT '标示',
  `refund_id` varchar(32) DEFAULT NULL COMMENT '退款单ID',
  `order_id` varchar(32) DEFAULT NULL COMMENT '缴费记录ID',
  `refund_account` decimal(14,2) DEFAULT NULL COMMENT '实际退款的金额',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `IDX_order_id` (`order_id`) USING BTREE,
  KEY `IDX_refundorder_refund_refundid` (`refund_id`) USING BTREE,
  CONSTRAINT `p_finance_refund_order_ibfk_1` FOREIGN KEY (`refund_id`) REFERENCES `p_finance_refund` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款单与缴费记录关联表';

-- ----------------------------
-- Table structure for p_finance_refund_verify
-- ----------------------------
DROP TABLE IF EXISTS `p_finance_refund_verify`;
CREATE TABLE `p_finance_refund_verify` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `finance_refund_id` varchar(32) NOT NULL COMMENT '退款id',
  `user_id` varchar(32) NOT NULL COMMENT '审核人账号',
  `user_name` varchar(64) NOT NULL COMMENT '审核人姓名',
  `verify_status` varchar(32) NOT NULL DEFAULT '0' COMMENT '审核状态(0：待审核；1：通过；2：驳回；3：已退费)',
  `remark` varchar(255) DEFAULT NULL COMMENT '审核备注',
  `verify_time` datetime DEFAULT NULL COMMENT '审核时间',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `IDX_finance_refund_id` (`finance_refund_id`) USING BTREE,
  KEY `IDX_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `p_finance_refund_verify_ibfk_1` FOREIGN KEY (`finance_refund_id`) REFERENCES `p_finance_refund` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款审核表';

-- ----------------------------
-- Table structure for p_formative_exam
-- ----------------------------
DROP TABLE IF EXISTS `p_formative_exam`;
CREATE TABLE `p_formative_exam` (
  `formative_exam_id` varchar(32) NOT NULL COMMENT '形考任务ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本',
  `activity_id` varchar(32) NOT NULL COMMENT '活动ID(产品又出了丧心病狂的注意：所有文档、视频作为课程内容，为一个考核项。课程内容的活动ID这里设为0)',
  `type` tinyint(4) DEFAULT NULL COMMENT '活动类型(和activity表一致)：1视频；2文档；3标签；4在线作业；5实训作业；6话题讨论',
  `rate` tinyint(4) NOT NULL COMMENT '权重',
  `requirements` int(11) DEFAULT NULL COMMENT '满分要求(作业取最高分；资源学习是分钟数；讨论吧是帖子数)',
  PRIMARY KEY (`formative_exam_id`),
  UNIQUE KEY `NewIndex1` (`course_version_id`,`activity_id`) USING BTREE,
  KEY `idx_activity_id` (`activity_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='形考任务就是形考指标';

-- ----------------------------
-- Table structure for p_formative_exam_record
-- ----------------------------
DROP TABLE IF EXISTS `p_formative_exam_record`;
CREATE TABLE `p_formative_exam_record` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `formative_exam_version_id` varchar(32) NOT NULL COMMENT '形考指标计算记录ID',
  `score` decimal(4,1) DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`user_id`,`formative_exam_version_id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='形考指标完成记录表，每次计算课程形考成绩时都保存一份统计数据';

-- ----------------------------
-- Table structure for p_formative_exam_version
-- ----------------------------
DROP TABLE IF EXISTS `p_formative_exam_version`;
CREATE TABLE `p_formative_exam_version` (
  `formative_exam_version_id` varchar(32) NOT NULL COMMENT '形考指标计算记录ID',
  `formative_exam_id` varchar(32) NOT NULL COMMENT '形考任务ID',
  `create_by` varchar(32) NOT NULL COMMENT '创建人（点击计算课程形考成绩的教师）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_del` tinyint(4) NOT NULL COMMENT '是否作废（0：不作废，1：作废）',
  PRIMARY KEY (`formative_exam_version_id`),
  KEY `idx_formative_exam_id` (`formative_exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='形考指标计算记录表';

-- ----------------------------
-- Table structure for p_forum_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_blacklist`;
CREATE TABLE `p_forum_blacklist` (
  `user_id` varchar(32) NOT NULL COMMENT '黑名单人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `end_time` datetime NOT NULL COMMENT '在此之前不能建贴回贴',
  `create_by` varchar(32) NOT NULL COMMENT '创建黑名单者',
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黑名单';

-- ----------------------------
-- Table structure for p_forum_discussion
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_discussion`;
CREATE TABLE `p_forum_discussion` (
  `forum_discussion_id` varchar(32) NOT NULL COMMENT '话题ID',
  `course_version_id` varchar(32) DEFAULT NULL COMMENT '课程ID（增加此列因为学生也可以发布话题）',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `message` text NOT NULL COMMENT '主帖',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_top` tinyint(4) DEFAULT '0' COMMENT '是否置顶',
  `create_by` varchar(32) NOT NULL COMMENT '创建者用户ID',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除(0:未删除，1:删除了)删除时得从单元活动里删除',
  `has_invalid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否设置为无效(0:有效，1:无效)设置为无效时得从单元活动里删除',
  `start_time` datetime DEFAULT NULL COMMENT '允许跟帖的开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '允许跟帖的结束时间',
  PRIMARY KEY (`forum_discussion_id`),
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE,
  KEY `idx_create_by` (`create_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='讨论吧话题（复制课程版本时讨论吧是深拷贝）';

-- ----------------------------
-- Table structure for p_forum_discussion_attachment
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_discussion_attachment`;
CREATE TABLE `p_forum_discussion_attachment` (
  `forum_discussion_id` varchar(32) NOT NULL COMMENT '主题id',
  `attachment_id` varchar(32) NOT NULL COMMENT '资源中心id',
  `attachment_name` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `attachment_size` int(11) DEFAULT NULL COMMENT '附件大小,单位byte',
  `attachment_mimetype` varchar(20) DEFAULT NULL COMMENT '附件类型',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  PRIMARY KEY (`forum_discussion_id`,`attachment_id`),
  KEY `idx_attachment_id` (`attachment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题附件表（附件放置于资源中心，定时任务获取文件大小和类型）';

-- ----------------------------
-- Table structure for p_forum_discussion_view
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_discussion_view`;
CREATE TABLE `p_forum_discussion_view` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `forum_discussion_id` varchar(32) NOT NULL COMMENT '话题ID',
  `session_id` varchar(32) NOT NULL COMMENT '会话ID',
  `update_time` datetime NOT NULL COMMENT '最后浏览时间',
  PRIMARY KEY (`session_id`,`user_id`,`forum_discussion_id`),
  KEY `idx_forum_discussion_id` (`forum_discussion_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子浏览记录(每个session浏览记录算一个)';

-- ----------------------------
-- Table structure for p_forum_post
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_post`;
CREATE TABLE `p_forum_post` (
  `forum_post_id` varchar(32) NOT NULL COMMENT '帖子ID',
  `forum_discussion_id` varchar(32) NOT NULL COMMENT '话题ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `parent_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '对于评论，是父贴的ID；否则ParentID为0。（评论不计入形考成绩）',
  `message` text NOT NULL COMMENT '话题内容，内容中可能包含表情代码。文本型会更好，这样可以简化处理。',
  `user_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '发帖人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `has_invalid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0：有效，1：无效',
  PRIMARY KEY (`forum_post_id`),
  KEY `idx_forum_discussion_id` (`forum_discussion_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子表';

-- ----------------------------
-- Table structure for p_forum_post_delete
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_post_delete`;
CREATE TABLE `p_forum_post_delete` (
  `forum_post_id` varchar(32) NOT NULL COMMENT '帖子ID',
  `user_id` varchar(32) NOT NULL COMMENT '删除者',
  `del_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`forum_post_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='删帖记录';

-- ----------------------------
-- Table structure for p_forum_rating
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_rating`;
CREATE TABLE `p_forum_rating` (
  `forum_post_id` varchar(32) NOT NULL COMMENT '帖子ID',
  `user_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '发赞人用户ID',
  `type` tinyint(4) NOT NULL COMMENT '0:赞，1：踩',
  `create_time` datetime DEFAULT NULL COMMENT '评论时间',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除(0：未删除，1：已删除)',
  PRIMARY KEY (`forum_post_id`,`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子点赞/踩表';

-- ----------------------------
-- Table structure for p_forum_report
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_report`;
CREATE TABLE `p_forum_report` (
  `forum_report_id` varchar(32) NOT NULL COMMENT '违规举报ID',
  `forum_post_id` varchar(32) DEFAULT NULL COMMENT '帖子ID',
  `user_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '举报人',
  `description` varchar(255) DEFAULT NULL COMMENT '举报信息描述',
  `create_time` datetime DEFAULT NULL COMMENT '举报时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '举报信息处理状态0未处理1已处理',
  PRIMARY KEY (`forum_report_id`),
  KEY `idx_forum_post_id` (`forum_post_id`) USING BTREE,
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子违规举报表';

-- ----------------------------
-- Table structure for p_forum_thesaurus
-- ----------------------------
DROP TABLE IF EXISTS `p_forum_thesaurus`;
CREATE TABLE `p_forum_thesaurus` (
  `forum_thesaurus_id` varchar(32) NOT NULL COMMENT '敏感词ID',
  `keyword` varchar(20) DEFAULT NULL COMMENT '敏感词',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`forum_thesaurus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='敏感词表';

-- ----------------------------
-- Table structure for p_gradu_examine_info
-- ----------------------------
DROP TABLE IF EXISTS `p_gradu_examine_info`;
CREATE TABLE `p_gradu_examine_info` (
  `schoolroll_Id` varchar(32) NOT NULL COMMENT '学籍id',
  `graduate_batch_id` varchar(32) DEFAULT NULL COMMENT '毕业批次ID',
  `graduate_batch_name` varchar(128) DEFAULT NULL COMMENT '毕业批次名称',
  `apply_end_time` datetime DEFAULT NULL COMMENT '申请截止时间',
  `stu_learn_time` decimal(5,2) DEFAULT '0.00' COMMENT '学生学习时长',
  `credit_transfer_upper` int(2) DEFAULT NULL COMMENT '学分转换上限',
  `stu_credit_transfer` int(2) DEFAULT NULL COMMENT '学生学分转换率',
  `program_his_id` varchar(32) DEFAULT NULL COMMENT '毕业时关联的培养方案历史ID',
  `stu_total_credit` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '学生有效总学分',
  `need_edu_sys` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否审核学制',
  `need_min_learn_time` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否审核最短学习时长',
  `need_max_learn_time` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否审核最长学习时长',
  `need_min_grad_credit` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否审核毕业最低学分',
  `need_min_module_credit` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否审核模块最低学分',
  `need_ele_photo` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否审核电子照片',
  PRIMARY KEY (`schoolroll_Id`),
  UNIQUE KEY `school_roll_id_index` (`schoolroll_Id`) USING BTREE,
  KEY `idx_graduate_batch_id` (`graduate_batch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_homework
-- ----------------------------
DROP TABLE IF EXISTS `p_homework`;
CREATE TABLE `p_homework` (
  `homework_id` varchar(32) NOT NULL COMMENT '作业ID',
  `version` int(11) NOT NULL COMMENT '版本(homework_id不作为唯一主键，但每个homework_id只有一个version是可见的)',
  `has_hide` tinyint(4) NOT NULL COMMENT '0:当前唯一一个可见版本，1:不可见',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `create_by` varchar(32) NOT NULL COMMENT '创建作业的老师',
  `title` varchar(200) NOT NULL COMMENT '作业的标题',
  `description` varchar(1000) DEFAULT NULL COMMENT '作业要求（作业说明）',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `grade` decimal(4,1) DEFAULT NULL COMMENT '满分设置',
  `upload_size` int(11) DEFAULT NULL COMMENT '允许上传大小限制(byte)',
  `file_format_range` varchar(50) DEFAULT NULL COMMENT '上传文件格式限制',
  `type` tinyint(4) DEFAULT NULL COMMENT '作业类型(0、试题作业，1、实训作业)',
  `dead_line` decimal(4,1) DEFAULT NULL COMMENT '最低分限制(本次作业低于分数线的学生可以重新提交一次，不设则不能重新提交)',
  `late_shipment` tinyint(4) DEFAULT NULL COMMENT '是否允许学生迟交作业，0:不允许,1:允许',
  `late_score_limit` decimal(4,1) DEFAULT NULL COMMENT '延迟提交最高分限制',
  `late_date_limit` tinyint(4) DEFAULT NULL COMMENT '延迟提交天数限制',
  PRIMARY KEY (`homework_id`,`version`),
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_create_by` (`create_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业表';

-- ----------------------------
-- Table structure for p_homework_answer
-- ----------------------------
DROP TABLE IF EXISTS `p_homework_answer`;
CREATE TABLE `p_homework_answer` (
  `stu_homework_version_id` varchar(32) NOT NULL COMMENT '作业版本ID',
  `question_id` varchar(32) NOT NULL COMMENT '试题ID',
  `answer` longtext COMMENT '回答的内容',
  `score` decimal(4,1) DEFAULT NULL COMMENT '得分',
  `comments` varchar(1500) DEFAULT NULL COMMENT '教师批语',
  `file_info_id` varchar(32) DEFAULT NULL COMMENT '学生上传附加id',
  PRIMARY KEY (`stu_homework_version_id`,`question_id`),
  KEY `idx_question_id` (`question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生作业作答表';

-- ----------------------------
-- Table structure for p_homework_question
-- ----------------------------
DROP TABLE IF EXISTS `p_homework_question`;
CREATE TABLE `p_homework_question` (
  `homework_question_id` varchar(32) NOT NULL COMMENT '作业试题ID',
  `question_id` varchar(32) NOT NULL COMMENT '试题ID',
  `homework_id` varchar(32) DEFAULT NULL COMMENT '作业ID',
  `version` int(11) DEFAULT NULL COMMENT '版本(homework_id不作为唯一主键，但每个homework_id只有一个version是可见的)',
  `score` decimal(4,1) DEFAULT NULL COMMENT '分数',
  `order_index` tinyint(4) DEFAULT NULL COMMENT '题序（从0开始，大题在部分的序号，小题在大题的序号）',
  PRIMARY KEY (`homework_question_id`,`question_id`),
  KEY `idx_homework_id` (`homework_id`) USING BTREE,
  KEY `idx_question_id` (`question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业试题表';

-- ----------------------------
-- Table structure for p_image
-- ----------------------------
DROP TABLE IF EXISTS `p_image`;
CREATE TABLE `p_image` (
  `image_id` varchar(32) NOT NULL COMMENT '图片ID',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `name` varchar(50) DEFAULT NULL COMMENT '资源(文件)名称',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0，已删除；1，可用',
  `mime_type` varchar(48) DEFAULT NULL COMMENT '后缀名',
  `content_size` int(11) DEFAULT NULL COMMENT '文件大小 byte',
  `location` varchar(300) DEFAULT NULL COMMENT '路径 或 url',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `width` int(11) DEFAULT NULL COMMENT '宽度',
  `height` int(11) DEFAULT NULL COMMENT '高度',
  PRIMARY KEY (`image_id`),
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片库';

-- ----------------------------
-- Table structure for p_learning_record
-- ----------------------------
DROP TABLE IF EXISTS `p_learning_record`;
CREATE TABLE `p_learning_record` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `activity_id` varchar(32) NOT NULL COMMENT '活动ID',
  `total_time` int(11) DEFAULT NULL COMMENT '总学习时间(秒)',
  `score` decimal(4,1) DEFAULT NULL COMMENT '最新得分',
  `lowest_score` decimal(4,1) DEFAULT NULL COMMENT '最低分',
  `heighest_score` decimal(4,1) DEFAULT NULL COMMENT '最高分',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `time_point` decimal(6,1) DEFAULT NULL COMMENT '视频最后学习时的时间点（s）',
  `forum_post_count` int(3) DEFAULT NULL COMMENT '帖子回复和评论统计',
  PRIMARY KEY (`user_id`,`course_version_id`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习记录表';

-- ----------------------------
-- Table structure for p_level
-- ----------------------------
DROP TABLE IF EXISTS `p_level`;
CREATE TABLE `p_level` (
  `level_id` varchar(32) NOT NULL COMMENT '层次id',
  `level_code` varchar(32) DEFAULT NULL COMMENT '专业编码',
  `level_name` varchar(75) DEFAULT NULL COMMENT '层次名',
  `edu_id` varchar(32) DEFAULT NULL COMMENT '学历编码，数据字典维护(type=''EDUCATION_BACKGROUND'')',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态：0停用；1启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者id',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(4) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(4) DEFAULT NULL COMMENT '是否被引用，0未引用，1已引用',
  PRIMARY KEY (`level_id`),
  KEY `idx_level_code` (`level_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='层次表';

-- ----------------------------
-- Table structure for p_major
-- ----------------------------
DROP TABLE IF EXISTS `p_major`;
CREATE TABLE `p_major` (
  `major_id` varchar(32) NOT NULL COMMENT '专业ID',
  `department_id` varchar(32) DEFAULT NULL COMMENT '所属学院id ，表jsou_sys_department中的dept_id关联',
  `edu_id` varchar(32) DEFAULT NULL COMMENT '学历编码，数据字典维护(type=''EDUCATION_BACKGROUND'')',
  `major_code` varchar(32) DEFAULT NULL COMMENT '专业编码',
  `major_name` varchar(75) DEFAULT NULL COMMENT '专业名称',
  `subject_cat_id` varchar(32) DEFAULT NULL COMMENT '学科分类编码，数据字典type=''SUBJECT_TYPE''',
  `major_kind` varchar(32) DEFAULT NULL COMMENT '专业分类编码，数据字典维护 data_id',
  `degree_category_code` varchar(32) DEFAULT NULL COMMENT '学位授予门类(字典表维护)',
  `file_path` varchar(200) DEFAULT NULL COMMENT '专业封面路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '专业封面文件名',
  `file_type` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '专业封面文件类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否启用，0未启用，1已启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `bak` varchar(512) DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_use` tinyint(4) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`major_id`),
  KEY `idx_subject_cat_id` (`subject_cat_id`) USING BTREE,
  KEY `idx_department_id` (`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业表(依据教务平台)';

-- ----------------------------
-- Table structure for p_message
-- ----------------------------
DROP TABLE IF EXISTS `p_message`;
CREATE TABLE `p_message` (
  `message_id` varchar(32) NOT NULL COMMENT '消息id',
  `sender_id` varchar(32) NOT NULL COMMENT '发送者',
  `send_time` datetime NOT NULL COMMENT '发送时间',
  `has_sender_del` tinyint(4) NOT NULL COMMENT '发送者是否隐藏该消息(0:不隐藏，1：隐藏)',
  `receiver_id` varchar(32) NOT NULL COMMENT '接收者',
  `receive_time` datetime DEFAULT NULL COMMENT '接收时间',
  `has_receiver_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '接收者是否隐藏该消息(0:不隐藏，1：隐藏)',
  `content` varchar(500) NOT NULL COMMENT '消息内容',
  `has_read` tinyint(4) NOT NULL DEFAULT '0' COMMENT '接收者是否已经阅读（0：未阅读，1：已阅读）',
  PRIMARY KEY (`message_id`),
  KEY `idx_receiver_id` (`receiver_id`) USING BTREE,
  KEY `idx_sender_id` (`sender_id`) USING BTREE,
  KEY `index_msg_send` (`sender_id`) USING BTREE,
  KEY `index_msg_recv` (`receiver_id`) USING BTREE,
  KEY `index_msg_send_time` (`send_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私信表';

-- ----------------------------
-- Table structure for p_nation
-- ----------------------------
DROP TABLE IF EXISTS `p_nation`;
CREATE TABLE `p_nation` (
  `nation_id` tinyint(4) NOT NULL COMMENT '民族编码',
  `name` varchar(10) NOT NULL COMMENT '民族名称',
  PRIMARY KEY (`nation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='民族表，参考GB 3304';

-- ----------------------------
-- Table structure for p_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `p_operation_log`;
CREATE TABLE `p_operation_log` (
  `operation_id` varchar(32) NOT NULL COMMENT '主键',
  `user_id` varchar(32) NOT NULL COMMENT '操作人',
  `ip` varchar(32) NOT NULL COMMENT 'ip',
  `operation_time` datetime NOT NULL COMMENT '操作时间',
  `operation_type` varchar(20) DEFAULT NULL COMMENT '类型:insert，update，delete',
  `relation_id` varchar(2000) NOT NULL COMMENT '关联id，多个用，隔开',
  `remark` varchar(500) NOT NULL COMMENT '备注说明',
  `user_agent` varchar(500) NOT NULL COMMENT '浏览器',
  `system_type` varchar(200) DEFAULT NULL COMMENT '操作系统',
  `system_version` varchar(200) DEFAULT NULL COMMENT '操作系统版本',
  `browser_type` varchar(200) DEFAULT NULL COMMENT '浏览器',
  `browser_version` varchar(200) DEFAULT NULL COMMENT '浏览器版本',
  PRIMARY KEY (`operation_id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作记录';

-- ----------------------------
-- Table structure for p_order
-- ----------------------------
DROP TABLE IF EXISTS `p_order`;
CREATE TABLE `p_order` (
  `order_id` varchar(32) NOT NULL COMMENT '订单id,主键',
  `order_no` varchar(32) NOT NULL COMMENT '订单号',
  `order_amount` decimal(12,2) DEFAULT NULL COMMENT '订单金额',
  `create_by` varchar(32) NOT NULL COMMENT '订单创建者（购买者，用户）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单是否被删除 0未删除，1已删除,默认为0',
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态 0未付款，1付款默认为0',
  `synchro_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  PRIMARY KEY (`order_id`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_pay_amount
-- ----------------------------
DROP TABLE IF EXISTS `p_pay_amount`;
CREATE TABLE `p_pay_amount` (
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `edu_id` varchar(32) DEFAULT NULL COMMENT '学历ID',
  `stu_type_id` varchar(32) DEFAULT NULL COMMENT '优惠学生类型ID',
  `point_id` varchar(32) DEFAULT NULL COMMENT '优惠教学点ID',
  `credits_fee` decimal(8,2) DEFAULT '0.00' COMMENT '学分费',
  `exam_fee` decimal(8,2) DEFAULT '0.00' COMMENT '考试费',
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_point_id` (`point_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缴费金额表';

-- ----------------------------
-- Table structure for p_point
-- ----------------------------
DROP TABLE IF EXISTS `p_point`;
CREATE TABLE `p_point` (
  `point_id` varchar(32) NOT NULL COMMENT '标识',
  `point_code` varchar(20) NOT NULL COMMENT '教学点编码',
  `old_point_code` varchar(20) DEFAULT NULL COMMENT '老平台教学点代码',
  `point_name` varchar(128) NOT NULL COMMENT '教学点名称',
  `enroll_person` varchar(128) DEFAULT NULL COMMENT '招生人员',
  `enroll_phone` varchar(128) DEFAULT NULL COMMENT '招生电话',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '教学点状态0未启用，1启用',
  `province` varchar(32) DEFAULT NULL COMMENT '省',
  `city` varchar(32) DEFAULT NULL COMMENT '市',
  `county` varchar(32) DEFAULT NULL COMMENT '县',
  `detail_address` varchar(512) DEFAULT NULL COMMENT '教学点地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '默认0	是否删除，0未删除，1已删除',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1未使用',
  PRIMARY KEY (`point_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_pre_registration
-- ----------------------------
DROP TABLE IF EXISTS `p_pre_registration`;
CREATE TABLE `p_pre_registration` (
  `teaching_place_id` varchar(32) NOT NULL COMMENT '教学点',
  `major_id` varchar(32) NOT NULL COMMENT '专业(需要张专业表)',
  `level_id` varchar(32) DEFAULT NULL COMMENT '层次id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `cellphone` varchar(11) NOT NULL COMMENT '手机号',
  `create_time` datetime NOT NULL COMMENT '报名时间',
  `status` tinyint(4) NOT NULL COMMENT '状态(0:等待审核，1:审核通过，2:审核不通过)',
  `synchro_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否同步，0未同步，1已同步',
  `id` varchar(32) NOT NULL COMMENT '主键',
  PRIMARY KEY (`id`),
  KEY `idx_major_id` (`major_id`) USING BTREE,
  KEY `idx_level_id` (`level_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预报名表';

-- ----------------------------
-- Table structure for p_question
-- ----------------------------
DROP TABLE IF EXISTS `p_question`;
CREATE TABLE `p_question` (
  `question_id` varchar(32) NOT NULL COMMENT '试题ID',
  `course_id` varchar(32) DEFAULT NULL COMMENT '所属课程',
  `title` text COMMENT '试题名称、内容',
  `type` tinyint(4) NOT NULL COMMENT '试题类型',
  `difficulty` tinyint(4) NOT NULL COMMENT '难度(1简单、2一般、3中等、4较难、5困难)',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '只有复合类型题才有父题',
  `score` decimal(4,1) NOT NULL COMMENT '分数',
  `correct_reply` text COMMENT '答题解析',
  `correct_answer` varchar(10000) DEFAULT NULL COMMENT '标准答案',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更改者',
  `options` text COMMENT '选项列表，JSON格式',
  `order_index` tinyint(4) DEFAULT NULL COMMENT '此题在父题的顺序',
  `the_latest` varchar(32) DEFAULT NULL COMMENT '此项非空的表示此题已作废（但不删除），这里放的是最新题的题号',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:未删除，1：已删除',
  `has_hide` tinyint(2) NOT NULL DEFAULT '0' COMMENT '（编辑已引用试题则隐藏该题）0:未隐藏 1：已隐藏',
  PRIMARY KEY (`question_id`),
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_create_by` (`create_by`) USING BTREE,
  KEY `NewIndex1` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题';

-- ----------------------------
-- Table structure for p_question_attachment
-- ----------------------------
DROP TABLE IF EXISTS `p_question_attachment`;
CREATE TABLE `p_question_attachment` (
  `question_id` varchar(32) NOT NULL COMMENT '试题id',
  `file_info_id` varchar(32) NOT NULL COMMENT '附件id',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:未删除，1删除',
  PRIMARY KEY (`question_id`,`file_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_reg_learning_batch
-- ----------------------------
DROP TABLE IF EXISTS `p_reg_learning_batch`;
CREATE TABLE `p_reg_learning_batch` (
  `id` varchar(32) NOT NULL COMMENT '主键 id',
  `batch_name` varchar(10) NOT NULL COMMENT '学习批次',
  `reg_date` date NOT NULL COMMENT '入学日期',
  `max_serial_num` int(11) NOT NULL DEFAULT '0' COMMENT '最大生成学号的流水号',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否启用 1 启用；0 停用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者ID',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活 0 未激活，1已激活',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  PRIMARY KEY (`id`),
  KEY `IDX_STUDENTREGBATCH_CODE` (`batch_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习批次';

-- ----------------------------
-- Table structure for p_reg_update_info
-- ----------------------------
DROP TABLE IF EXISTS `p_reg_update_info`;
CREATE TABLE `p_reg_update_info` (
  `school_roll_id` varchar(32) NOT NULL COMMENT '学籍ID',
  `description` text COMMENT '需修改之处的描述',
  `attachment` varchar(300) NOT NULL COMMENT '附件',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` tinyint(4) NOT NULL COMMENT '0:申请但未处理；1:已处理；2:已驳回',
  KEY `idx_school_roll_id` (`school_roll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请修改信息表';

-- ----------------------------
-- Table structure for p_resource
-- ----------------------------
DROP TABLE IF EXISTS `p_resource`;
CREATE TABLE `p_resource` (
  `resource_id` varchar(32) NOT NULL COMMENT '资源ID',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '资源类型：1、文档；2、视频；3、文件夹',
  `length` int(11) DEFAULT NULL COMMENT '视频时长(s)',
  `name` varchar(50) DEFAULT NULL COMMENT '资源(文件)名称',
  `description` varchar(200) DEFAULT NULL COMMENT '资源的描述',
  `has_del` tinyint(4) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  `mime_type` varchar(48) DEFAULT NULL COMMENT '后缀名',
  `content_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `location` varchar(300) DEFAULT NULL COMMENT '路径 或 url',
  `resource_center_id` varchar(32) DEFAULT NULL COMMENT '资源中心的资源ID（只针对文档资源）',
  `create_by` varchar(32) NOT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`resource_id`),
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `NewIndex1` (`course_id`) USING BTREE,
  KEY `index_resource_createby` (`create_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源表（这里允许建立文件夹，但暂时限制文件夹只有1个层级）';

-- ----------------------------
-- Table structure for p_resource_comment
-- ----------------------------
DROP TABLE IF EXISTS `p_resource_comment`;
CREATE TABLE `p_resource_comment` (
  `resource_comment_id` varchar(32) NOT NULL COMMENT '资源评论ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `course_version_id` varchar(32) DEFAULT NULL COMMENT '课程版本ID',
  `resource_id` varchar(32) NOT NULL COMMENT '资源ID',
  `content` varchar(70) NOT NULL COMMENT '评论内容',
  `time_point` decimal(6,1) NOT NULL DEFAULT '0.0' COMMENT '时间点(对视频资源才有时间点，单位秒)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_hide` tinyint(4) NOT NULL COMMENT '0:不隐藏，1:隐藏',
  PRIMARY KEY (`resource_comment_id`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE,
  KEY `idx_resource_id` (`resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源评论表';

-- ----------------------------
-- Table structure for p_resource_comment_like
-- ----------------------------
DROP TABLE IF EXISTS `p_resource_comment_like`;
CREATE TABLE `p_resource_comment_like` (
  `resource_comment_id` varchar(32) NOT NULL COMMENT '资源评论ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `type` tinyint(4) NOT NULL COMMENT '0:赞，1：踩',
  `create_time` datetime NOT NULL COMMENT '评论时间',
  `has_hide` tinyint(4) NOT NULL COMMENT '是否隐藏（0:不隐藏，1：隐藏）',
  PRIMARY KEY (`resource_comment_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源评论点赞表';

-- ----------------------------
-- Table structure for p_resource_like
-- ----------------------------
DROP TABLE IF EXISTS `p_resource_like`;
CREATE TABLE `p_resource_like` (
  `resource_id` varchar(32) NOT NULL COMMENT '资源ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `type` tinyint(4) NOT NULL COMMENT '0:赞，1：踩',
  `create_time` datetime NOT NULL COMMENT '评论时间',
  `has_del` tinyint(2) NOT NULL COMMENT '是否已删除',
  PRIMARY KEY (`resource_id`,`user_id`,`type`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源点赞表';

-- ----------------------------
-- Table structure for p_roll_certificate_org
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_certificate_org`;
CREATE TABLE `p_roll_certificate_org` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `code` varchar(32) DEFAULT NULL COMMENT '机构编码',
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '启用状态0未启用，1启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='转专证书机构表';

-- ----------------------------
-- Table structure for p_roll_change_major
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_change_major`;
CREATE TABLE `p_roll_change_major` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `start_time` datetime DEFAULT NULL COMMENT '开始',
  `end_time` datetime DEFAULT NULL COMMENT '截止时间',
  `next_start_time` datetime DEFAULT NULL COMMENT '预计下次开启时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='转专业控制表';

-- ----------------------------
-- Table structure for p_roll_credit
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_credit`;
CREATE TABLE `p_roll_credit` (
  `id` varchar(32) NOT NULL COMMENT '标示',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍表id',
  `course_module_id` varchar(32) NOT NULL COMMENT '课程模块ID',
  `course_version_id` varchar(32) DEFAULT NULL COMMENT '课程版本id',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `credit` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '课程学分',
  `achieve_way` tinyint(2) NOT NULL DEFAULT '0' COMMENT '获取途径：0：正常获得，1：通过转换获得',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_course_module_id` (`course_module_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学分表';

-- ----------------------------
-- Table structure for p_roll_credit_transfer_apply
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_credit_transfer_apply`;
CREATE TABLE `p_roll_credit_transfer_apply` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍ID',
  `others_credit_name` varchar(100) DEFAULT NULL COMMENT '其他转换类型，成果名称',
  `result_id` varchar(32) DEFAULT NULL COMMENT '学分转换外部成果表',
  `verify_status` tinyint(2) DEFAULT NULL COMMENT '审核状态:0待审核；1审核通过；2审核驳回；3已撤销',
  `verify_id` varchar(32) DEFAULT NULL COMMENT '当前审核状态，记审核表ID',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_result_id` (`result_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学分转换申请表';

-- ----------------------------
-- Table structure for p_roll_degree_apply
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_degree_apply`;
CREATE TABLE `p_roll_degree_apply` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍ID',
  `degree_batch_id` varchar(32) DEFAULT NULL COMMENT '学位批次ID',
  `verify_status` tinyint(2) DEFAULT '1' COMMENT '审核状态，1待审核；2通过；3驳回',
  `verify_remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '申请人',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '审核人',
  `update_time` datetime DEFAULT NULL COMMENT '审核时间',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `IDX_schoolroll_id` (`schoolroll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学位申请表';

-- ----------------------------
-- Table structure for p_roll_degree_verify
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_degree_verify`;
CREATE TABLE `p_roll_degree_verify` (
  `degree_verify_id` varchar(32) NOT NULL COMMENT '主键',
  `degree_apply_id` varchar(32) NOT NULL COMMENT '学位申请ID',
  `verify_status` tinyint(2) DEFAULT '3' COMMENT '审核状态: 3待审核；1审核通过；2审核驳回',
  `verify_remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `verify_by` varchar(32) NOT NULL COMMENT '审核人',
  `verify_time` datetime NOT NULL COMMENT '审核时间',
  PRIMARY KEY (`degree_verify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学位申请审核表';

-- ----------------------------
-- Table structure for p_roll_edit_apply
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_edit_apply`;
CREATE TABLE `p_roll_edit_apply` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `schoolroll_id` varchar(32) DEFAULT NULL COMMENT '学籍表id',
  `edit_content` varchar(4096) DEFAULT NULL COMMENT '申请修改的内容',
  `apply_time` datetime NOT NULL COMMENT '申请时间',
  `apply_by` varchar(32) NOT NULL COMMENT '申请者',
  `status` tinyint(2) DEFAULT NULL COMMENT '处理状态，0：待处理；1已处理',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `synchro_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  PRIMARY KEY (`id`),
  KEY `schoolroll_id` (`schoolroll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍修改申请表';

-- ----------------------------
-- Table structure for p_roll_edit_file
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_edit_file`;
CREATE TABLE `p_roll_edit_file` (
  `id` varchar(32) NOT NULL COMMENT '系统id',
  `roll_edit_apply_id` varchar(32) NOT NULL COMMENT '学籍修改申请id',
  `file_name` varchar(512) DEFAULT '证明材料照片' COMMENT '文件名',
  `file_type` varchar(20) NOT NULL COMMENT '文件类型',
  `file_size` varchar(20) NOT NULL COMMENT '文件大小',
  `file_path` varchar(1024) NOT NULL COMMENT '照片路径',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `roll_edit_apply_id` (`roll_edit_apply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍修改证明材料表';

-- ----------------------------
-- Table structure for p_roll_edit_solve
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_edit_solve`;
CREATE TABLE `p_roll_edit_solve` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `schoolroll_id` varchar(32) DEFAULT NULL COMMENT '学籍表id',
  `edit_apply_id` varchar(32) DEFAULT NULL COMMENT '学籍修改申请表id',
  `solve_content` varchar(4096) DEFAULT NULL COMMENT '修改内容',
  `solve_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '学籍变更的审核状态。(0： 未确认；1：待审核；) 2：审核通过；3：审核驳回; ',
  `solve_opinion` varchar(4096) DEFAULT NULL COMMENT '处理意见',
  `solve_time` datetime DEFAULT NULL COMMENT '处理时间',
  `solve_by_id` varchar(32) DEFAULT NULL COMMENT '处理人id',
  `solve_by_name` varchar(64) DEFAULT NULL COMMENT '处理人姓名',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  PRIMARY KEY (`id`),
  KEY `schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `edit_apply_id` (`edit_apply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍修改处理表';

-- ----------------------------
-- Table structure for p_roll_external_results
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_external_results`;
CREATE TABLE `p_roll_external_results` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `result_name` varchar(32) DEFAULT NULL COMMENT '成果名称',
  `conversion_type_id` varchar(32) DEFAULT NULL COMMENT '学分转换类型（数据字典表维护）',
  `result_type_id` varchar(32) DEFAULT NULL COMMENT '成果类型（数据字典表维护）',
  `certificate_org_id` varchar(256) DEFAULT NULL COMMENT '来源机构（转专证书机构表）',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '外部成果状态，0未启用，1启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学分转换外部成果表';

-- ----------------------------
-- Table structure for p_roll_external_results_course
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_external_results_course`;
CREATE TABLE `p_roll_external_results_course` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `result_id` varchar(32) DEFAULT NULL COMMENT '外部成果ID（学分转换外部成果表维护）',
  `course_edu_id` varchar(32) NOT NULL COMMENT '课程学历关联表id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`id`),
  KEY `idx_result_id` (`result_id`) USING BTREE,
  KEY `idx_course_edu_id` (`course_edu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学分转换外部成果与课程关联表';

-- ----------------------------
-- Table structure for p_roll_graduation_apply
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_graduation_apply`;
CREATE TABLE `p_roll_graduation_apply` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍ID',
  `graduation_batch_id` varchar(32) DEFAULT NULL COMMENT '毕业批次ID',
  `verify_status` tinyint(2) DEFAULT '3' COMMENT '审核状态: 3待审核；1审核通过；2审核驳回',
  `verify_remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '申请人',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '审核人',
  `update_time` datetime DEFAULT NULL COMMENT '审核时间',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0未激活，1已激活',
  PRIMARY KEY (`id`),
  KEY `IDX_schoolroll_id` (`schoolroll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='毕业申请表';

-- ----------------------------
-- Table structure for p_roll_graduation_verify
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_graduation_verify`;
CREATE TABLE `p_roll_graduation_verify` (
  `grad_verify_id` varchar(32) NOT NULL COMMENT '主键',
  `grad_apply_id` varchar(32) NOT NULL COMMENT '毕业申请ID',
  `verify_status` tinyint(2) DEFAULT '3' COMMENT '审核状态: 3待审核；1审核通过；2审核驳回',
  `verify_remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `verify_by` varchar(32) NOT NULL COMMENT '审核人',
  `verify_time` datetime NOT NULL COMMENT '审核时间',
  PRIMARY KEY (`grad_verify_id`),
  KEY `idx_grad_apply_id` (`grad_apply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='毕业申请审核表';

-- ----------------------------
-- Table structure for p_roll_particular_changes
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_particular_changes`;
CREATE TABLE `p_roll_particular_changes` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍表id',
  `change_type` tinyint(2) DEFAULT NULL COMMENT '异动类型  0：转专业 1：转教学点  2：退学',
  `reason` varchar(256) DEFAULT NULL COMMENT '申请原因',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `verify_type` varchar(32) DEFAULT '0' COMMENT '当前审核状态(数据字典维护)',
  `verify_id` varchar(32) DEFAULT NULL COMMENT '当前审核状态，记审核表id',
  `confirm_status` tinyint(2) DEFAULT '0' COMMENT '确认状态 。0：未确认（默认） 1：已确认',
  `original_point_id` varchar(32) DEFAULT NULL COMMENT '原教学点id',
  `target_point_id` varchar(32) DEFAULT NULL COMMENT '目标服务中心id',
  `original_stu_type_id` varchar(32) DEFAULT NULL COMMENT '原学生类型(数据字典维护)',
  `target_stu_type_id` varchar(32) DEFAULT NULL COMMENT '目标学生类型(数据字典维护)',
  `original_stu_source_id` varchar(32) DEFAULT NULL COMMENT '原学生来源(数据字典维护)',
  `target_stu_source_id` varchar(32) DEFAULT NULL COMMENT '目标学生来源(数据字典维护)',
  `original_major_id` varchar(32) DEFAULT NULL COMMENT '原专业id',
  `target_major_id` varchar(32) DEFAULT NULL COMMENT '目标专业id',
  `original_training_program_id` varchar(32) DEFAULT NULL COMMENT '原培养方案表id',
  `target_training_program_id` varchar(32) DEFAULT NULL COMMENT '目标培养方案表id',
  `original_stu_eduSystem_id` varchar(32) DEFAULT NULL COMMENT '原学制(数据字典维护)',
  `target_stu_eduSystem_id` varchar(32) DEFAULT NULL COMMENT '目标学制(数据字典维护)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_original_point_id` (`original_point_id`) USING BTREE,
  KEY `idx_target_point_id` (`target_point_id`) USING BTREE,
  KEY `idx_original_training_program_id` (`original_training_program_id`) USING BTREE,
  KEY `idx_target_training_program_id` (`target_training_program_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍异动申请表';

-- ----------------------------
-- Table structure for p_roll_particular_changes_file
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_particular_changes_file`;
CREATE TABLE `p_roll_particular_changes_file` (
  `id` varchar(32) NOT NULL COMMENT '系统id',
  `roll_particular_changes_id` varchar(32) NOT NULL COMMENT '学籍异动申请id',
  `file_name` varchar(400) DEFAULT NULL COMMENT '文件名',
  `file_path` varchar(600) NOT NULL COMMENT '照片路径',
  `file_type` varchar(10) DEFAULT NULL COMMENT '文件类型',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`id`),
  KEY `idx_roll_particular_changes_id` (`roll_particular_changes_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍异动证明材料表';

-- ----------------------------
-- Table structure for p_roll_particular_changes_verify
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_particular_changes_verify`;
CREATE TABLE `p_roll_particular_changes_verify` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `particular_changes_id` varchar(32) NOT NULL COMMENT '学籍异动申请表id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '审核人账号',
  `user_name` varchar(64) DEFAULT NULL COMMENT '审核人姓名',
  `verify_status_id` varchar(32) DEFAULT NULL COMMENT '审核状态(数据字典维护)',
  `edit_content` varchar(200) DEFAULT NULL COMMENT '审核修改的内容',
  `remark` varchar(1024) DEFAULT NULL COMMENT '审核备注',
  `verify_time` datetime DEFAULT NULL COMMENT '审核时间',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活，0 未激活，1已激活',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`id`),
  KEY `idx_particular_changes_id` (`particular_changes_id`) USING BTREE,
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍异动审核表';

-- ----------------------------
-- Table structure for p_roll_transfer_apply_courses
-- ----------------------------
DROP TABLE IF EXISTS `p_roll_transfer_apply_courses`;
CREATE TABLE `p_roll_transfer_apply_courses` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `transfer_apply_id` varchar(32) DEFAULT NULL COMMENT '学分转换申请表ID',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `course_module_id` varchar(32) DEFAULT NULL COMMENT '课程模块id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`id`),
  KEY `idx_transfer_apply_id` (`transfer_apply_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学分转换申请与课程关联表';

-- ----------------------------
-- Table structure for p_school_roll
-- ----------------------------
DROP TABLE IF EXISTS `p_school_roll`;
CREATE TABLE `p_school_roll` (
  `school_roll_id` varchar(32) NOT NULL COMMENT '学籍ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `stu_base_id` varchar(32) DEFAULT NULL COMMENT '学生基本信息ID',
  `student_no` varchar(20) NOT NULL COMMENT '学号',
  `verify_status` varchar(1) NOT NULL COMMENT '审核状态 : 0：未确认；1：待审核；2：审核通过；3：审核驳回; 9 ：已确认',
  `verify_remark` varchar(256) DEFAULT NULL COMMENT '审核备注',
  `graduate_time` datetime DEFAULT NULL COMMENT '毕业时间',
  `graduate_certificate_no` varchar(128) DEFAULT NULL COMMENT '毕业证号',
  `examinee_number` varchar(40) DEFAULT NULL COMMENT '考生号',
  `degree_batch_id` varchar(32) DEFAULT NULL COMMENT '学位批次id(查学位批次表)',
  `training_program_id` varchar(32) DEFAULT NULL COMMENT '培养方案表id',
  `last_graduate_college` varchar(200) DEFAULT NULL COMMENT '原毕业学校',
  `last_graduate_time` datetime DEFAULT NULL COMMENT '原毕业时间',
  `last_graduate_code` varchar(100) DEFAULT NULL COMMENT '原毕业证号',
  `last_certificate_level` varchar(32) DEFAULT NULL COMMENT '原学历层次(数据字典表维护type=''EDUCATION_BACKGROUND'')',
  `last_certificate_code` varchar(100) DEFAULT NULL COMMENT '原学历证件号码',
  `last_certificate_subject` varchar(100) DEFAULT NULL COMMENT '原学历所学专业',
  `last_certificate_name` varchar(64) DEFAULT NULL COMMENT '原学历姓名',
  `reg_type_code` char(1) DEFAULT NULL COMMENT '招生类别代码',
  `point_id` varchar(32) DEFAULT NULL COMMENT '教学点id',
  `level_id` varchar(32) DEFAULT NULL COMMENT '层次ID',
  `student_type_id` varchar(32) DEFAULT NULL COMMENT '学生类型(数据字典维护)',
  `student_source_id` varchar(32) DEFAULT NULL COMMENT '学生来源(数据字典维护)',
  `major_id` varchar(32) DEFAULT NULL COMMENT '专业ID',
  `llearning_batch_id` varchar(32) DEFAULT NULL COMMENT '学习批次id',
  `reg_batch_id` varchar(32) DEFAULT NULL COMMENT '招生批次id',
  `reg_source` varchar(64) DEFAULT NULL COMMENT '报名来源',
  `reg_time` datetime DEFAULT NULL COMMENT '报名时间',
  `reg_year` smallint(6) DEFAULT NULL COMMENT '报名年度',
  `reg_month` smallint(6) DEFAULT NULL COMMENT '报名月份',
  `edusystem_id` varchar(32) DEFAULT NULL COMMENT '学制(数据字典维护)',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `head_photo_path` varchar(200) DEFAULT NULL COMMENT '头像',
  `id_photo_front_path` varchar(200) DEFAULT NULL COMMENT '证件正面照片',
  `id_photo_back_path` varchar(200) DEFAULT NULL COMMENT '证件反面照片',
  `certificate_photo_front_path` varchar(200) DEFAULT NULL COMMENT '学历证件正面',
  `chsi_check_picture_path` varchar(200) DEFAULT NULL COMMENT '学信网网查报告',
  `verify_status_id` varchar(20) DEFAULT NULL COMMENT '学籍异动当前审核状态（学籍异动审核表的id）',
  `degree_verify_status` tinyint(2) DEFAULT '0' COMMENT '是否申请学位：0未申请；1审核通过 ; 2审核驳回；3已申请待审核',
  `graduation_verify_status` tinyint(2) DEFAULT '0' COMMENT '是否申请毕业：0未申请；1 审核通过 ; 2 审核驳回 ; 3 已申请待审核',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `roll_status` tinyint(2) DEFAULT '0' COMMENT '学籍状态(0 在读，1 在籍，2 休学，3 复学，4 毕业，5 退学，6 开除)',
  `has_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  `comfirmStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '学籍确认状态。0:未确认;1:已确认',
  `graduation_batch_id` varchar(32) DEFAULT NULL COMMENT '毕业批次id',
  `ele_photo_path` varchar(1024) DEFAULT NULL COMMENT '电子照片，毕业时需要',
  PRIMARY KEY (`school_roll_id`),
  KEY `idxtraining_program_id` (`training_program_id`) USING BTREE,
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍表';

-- ----------------------------
-- Table structure for p_session_log
-- ----------------------------
DROP TABLE IF EXISTS `p_session_log`;
CREATE TABLE `p_session_log` (
  `session_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '在线记录ID',
  `session_id` varchar(32) NOT NULL COMMENT '会话ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `ip` varchar(20) DEFAULT NULL COMMENT '登录时的IP地址',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `ttl` smallint(6) DEFAULT NULL COMMENT '扫描剩余时间',
  `logout_time` datetime DEFAULT NULL COMMENT '注销时间',
  `logout_type` tinyint(4) DEFAULT NULL COMMENT '注销方式：1-主动退出（用户点击退出）；2-超时退出（由定时任务扫描本表和redis得出的session失效时间）；3-挤占退出（相同浏览器前一账户未退出，后一账户登录挤出前一账户）',
  `user_agent` varchar(500) DEFAULT NULL COMMENT 'HTTP协议的UA信息',
  PRIMARY KEY (`session_log_id`),
  UNIQUE KEY `NewIndex1` (`session_id`,`user_id`) USING BTREE,
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6149 DEFAULT CHARSET=utf8 COMMENT='用户在线记录表（用户登录、注销）';

-- ----------------------------
-- Table structure for p_student_course
-- ----------------------------
DROP TABLE IF EXISTS `p_student_course`;
CREATE TABLE `p_student_course` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍表主键id',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本id',
  `course_module_id` varchar(32) DEFAULT NULL COMMENT '课程模块ID',
  `course_batch_id` varchar(32) DEFAULT NULL COMMENT '选课批次ID',
  `pay_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '交费状态：0待缴费；2已缴费；3退费中；4已退费；5已取消',
  `exam_count` tinyint(4) DEFAULT '0' COMMENT '考试次数',
  `exam_count_free` tinyint(4) DEFAULT '0' COMMENT '免费考试次数',
  `need_book` varchar(32) DEFAULT NULL COMMENT '是否征订教材',
  `credit` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '课程学分',
  `course_selection` tinyint(2) NOT NULL DEFAULT '0' COMMENT '选课方式，0 学生自选，1教学点代选',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新人',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被删除，0 未删除，1已删除',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE,
  KEY `idx_course_version_id` (`course_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生选课表';

-- ----------------------------
-- Table structure for p_stu_academicadvisor
-- ----------------------------
DROP TABLE IF EXISTS `p_stu_academicadvisor`;
CREATE TABLE `p_stu_academicadvisor` (
  `stu_academicadvisor_id` varchar(32) NOT NULL COMMENT '标示',
  `schoolroll_id` varchar(32) NOT NULL COMMENT '学籍表ID',
  `academic_advisor` varchar(32) NOT NULL COMMENT '学务导师(关联用户表id)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新人',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被激活，0未激活，1已激活',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  PRIMARY KEY (`stu_academicadvisor_id`),
  KEY `idx_schoolroll_id` (`schoolroll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生与学务导师关联表';

-- ----------------------------
-- Table structure for p_stu_base
-- ----------------------------
DROP TABLE IF EXISTS `p_stu_base`;
CREATE TABLE `p_stu_base` (
  `stu_base_id` varchar(32) NOT NULL COMMENT '学生基本信息ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `certificate_type` varchar(32) NOT NULL COMMENT '证件类型',
  `id_card` varchar(20) NOT NULL COMMENT '身份证号',
  `student_no` varchar(20) DEFAULT NULL COMMENT '学号',
  `nation_id` varchar(32) DEFAULT NULL COMMENT '民族',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `census_register_types` varchar(32) DEFAULT NULL COMMENT '户口性质',
  `incumbency` varchar(128) DEFAULT NULL COMMENT '在职状况(0:不在职，1：在职)',
  `political_outlook` varchar(32) DEFAULT NULL COMMENT '政治面貌',
  `join_job_date` date DEFAULT NULL COMMENT '参加工作日期',
  `native_place` varchar(128) DEFAULT NULL COMMENT '籍贯（参考p_area_tab）',
  `hoursehold_register` varchar(128) DEFAULT NULL COMMENT '户籍所在地（参考p_area_tab）',
  `unit` varchar(128) DEFAULT NULL COMMENT '工作单位',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '移动号码',
  `telephone` varchar(16) DEFAULT NULL COMMENT '座机号码',
  `postal_code` varchar(10) DEFAULT NULL COMMENT '邮政编码（参考p_area_tab）',
  `address` varchar(128) DEFAULT NULL COMMENT '通讯地址',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ号',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`stu_base_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生基本信息';

-- ----------------------------
-- Table structure for p_stu_homework_version
-- ----------------------------
DROP TABLE IF EXISTS `p_stu_homework_version`;
CREATE TABLE `p_stu_homework_version` (
  `stu_homework_version_id` varchar(32) NOT NULL COMMENT '作业版本ID',
  `homework_id` varchar(32) NOT NULL COMMENT '作业ID',
  `version` int(11) NOT NULL COMMENT '版本(homework_id不作为唯一主键，但每个homework_id只有一个version是可见的)',
  `course_version_id` varchar(32) NOT NULL COMMENT '课程版本ID',
  `user_id` varchar(32) NOT NULL COMMENT '学生ID',
  `mark_user_id` varchar(32) DEFAULT NULL COMMENT '批阅者Id',
  `subjective` decimal(4,1) DEFAULT NULL COMMENT '主观题得分',
  `objective` decimal(4,1) DEFAULT NULL COMMENT '客观题得分',
  `score` decimal(4,1) DEFAULT NULL COMMENT '总得分',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-草稿 1-已提交 2-批阅完成',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `submit_time` datetime DEFAULT NULL COMMENT '提交时间',
  `mark_time` datetime DEFAULT NULL COMMENT '批阅时间',
  PRIMARY KEY (`stu_homework_version_id`),
  KEY `NewIndex1` (`course_version_id`) USING BTREE,
  KEY `NewIndex2` (`homework_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生作业版本表';

-- ----------------------------
-- Table structure for p_stu_module_info
-- ----------------------------
DROP TABLE IF EXISTS `p_stu_module_info`;
CREATE TABLE `p_stu_module_info` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `moduleid` varchar(32) NOT NULL COMMENT '模块id',
  `stuscore` double DEFAULT '0' COMMENT '学生得分',
  `examineresult` tinyint(2) DEFAULT '0' COMMENT '审核结果',
  `school_roll_id` varchar(32) NOT NULL COMMENT '学籍id',
  PRIMARY KEY (`id`),
  KEY `idx_school_roll_id` (`school_roll_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_subject_course_education
-- ----------------------------
DROP TABLE IF EXISTS `p_subject_course_education`;
CREATE TABLE `p_subject_course_education` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `edu_id` varchar(32) DEFAULT NULL COMMENT '学历ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程与学历关联表';

-- ----------------------------
-- Table structure for p_synchro_record
-- ----------------------------
DROP TABLE IF EXISTS `p_synchro_record`;
CREATE TABLE `p_synchro_record` (
  `synchro_id` varchar(32) NOT NULL COMMENT '同步任务ID',
  `job_name` varchar(100) NOT NULL COMMENT 'job名称',
  `last_excute_time` datetime NOT NULL COMMENT '最后执行时间',
  PRIMARY KEY (`synchro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据同步记录表';

-- ----------------------------
-- Table structure for p_sys_message
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_message`;
CREATE TABLE `p_sys_message` (
  `sys_message_id` varchar(32) NOT NULL COMMENT '系统消息ID',
  `content` varchar(500) NOT NULL COMMENT '消息内容',
  `sender_id` varchar(32) NOT NULL COMMENT '发送者',
  `send_time` datetime NOT NULL COMMENT '发送时间',
  `has_del` tinyint(4) NOT NULL COMMENT '是否已删除(0：未删除，1：已删除)',
  PRIMARY KEY (`sys_message_id`),
  KEY `idx_sender_id` (`sender_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统消息';

-- ----------------------------
-- Table structure for p_sys_msg_received
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_msg_received`;
CREATE TABLE `p_sys_msg_received` (
  `sys_message_id` varchar(32) DEFAULT NULL COMMENT '系统消息ID',
  `receiver_id` varchar(32) NOT NULL COMMENT '已接收者',
  KEY `idx_sys_message_id` (`sys_message_id`) USING BTREE,
  KEY `idx_receiver_id` (`receiver_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已读系统消息表';

-- ----------------------------
-- Table structure for p_sys_org
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_org`;
CREATE TABLE `p_sys_org` (
  `org_id` varchar(32) NOT NULL COMMENT '标识',
  `org_code` varchar(32) NOT NULL COMMENT '组织编码',
  `org_name` varchar(64) NOT NULL COMMENT '组织名称',
  `detail_address` varchar(255) DEFAULT NULL COMMENT '组织详细地址',
  `type` tinyint(2) NOT NULL COMMENT '类型，1：部门，2院系',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父节点ID',
  `status` tinyint(2) NOT NULL COMMENT '部门状态，0启用，0停用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者ID',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被删除，0未删除，1已删除',
  `has_used` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否被激活，0未激活，1已激活',
  PRIMARY KEY (`org_id`),
  KEY `IDX_parent_id` (`parent_id`) USING BTREE,
  KEY `IDX_org_code` (`org_code`) USING BTREE,
  KEY `IDX_org_name` (`org_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院系/部门表';

-- ----------------------------
-- Table structure for p_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_user`;
CREATE TABLE `p_sys_user` (
  `user_id` varchar(32) NOT NULL COMMENT '教务用户信息表同步信息表',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `head_portrait_path` varchar(512) DEFAULT NULL COMMENT '头像地址',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机',
  `has_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1已删除',
  PRIMARY KEY (`user_id`),
  KEY `idx_real_name` (`real_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `p_teacher_course`;
CREATE TABLE `p_teacher_course` (
  `id` varchar(32) NOT NULL COMMENT '标识',
  `user_id` varchar(32) NOT NULL COMMENT '用户主键id',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程id',
  `role_id` tinyint(4) NOT NULL COMMENT '角色编码',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(32) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `status` tinyint(4) NOT NULL COMMENT '状态（0:停用，1启用）',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步 0未同步 1已同步',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE,
  KEY `idx_role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师课程表';

-- ----------------------------
-- Table structure for p_teacher_file
-- ----------------------------
DROP TABLE IF EXISTS `p_teacher_file`;
CREATE TABLE `p_teacher_file` (
  `id` varchar(32) NOT NULL COMMENT '系统id',
  `teacher_id` varchar(32) NOT NULL COMMENT '教师id(关联教师表)',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_type` varchar(32) NOT NULL COMMENT '文件类型',
  `file_size` varchar(32) NOT NULL COMMENT '文件大小',
  `file_path` varchar(1024) NOT NULL COMMENT '文件路径',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `has_del` smallint(1) DEFAULT '0' COMMENT '是否删除：0未删除；1已删除',
  PRIMARY KEY (`id`),
  KEY `IDX_teacher_id` (`teacher_id`) USING BTREE,
  CONSTRAINT `p_teacher_file_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `p_teacher_info` (`teacher_info_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师附件表';

-- ----------------------------
-- Table structure for p_teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `p_teacher_info`;
CREATE TABLE `p_teacher_info` (
  `teacher_info_id` varchar(32) NOT NULL COMMENT '主键id',
  `teacher_code` varchar(20) NOT NULL COMMENT '工号',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `teacher_name` varchar(64) NOT NULL COMMENT '姓名',
  `id_card` varchar(18) NOT NULL COMMENT '身份证号',
  `sex` varchar(1) NOT NULL COMMENT '性别',
  `birthday` datetime NOT NULL COMMENT '出生日期',
  `teacher_source_id` varchar(32) DEFAULT NULL COMMENT '教师来源(数据字典表维护type=''TEACHER_SOURCE'')',
  `unit` varchar(32) DEFAULT NULL COMMENT '工作单位',
  `unit_other` varchar(32) DEFAULT NULL COMMENT '单位名称，教师来源为外聘时，添加至此项，手动输入单位',
  `department` varchar(32) DEFAULT NULL COMMENT '所在部门',
  `credit_card_number` varchar(19) DEFAULT NULL COMMENT '银行卡号',
  `open_bank` varchar(20) DEFAULT NULL COMMENT '开户行',
  `subject` varchar(100) DEFAULT NULL COMMENT '所学专业',
  `certificate_id` varchar(100) DEFAULT NULL COMMENT '学历学位(数据字典表维护type=''EDUCATION_BACKGROUND'')',
  `degree_category_code` varchar(32) DEFAULT 'NULL' COMMENT '教师学位（关联字典表 学位授予门类 data_code）',
  `technical_title` varchar(32) DEFAULT NULL COMMENT '职称',
  `technical_title_level` varchar(32) DEFAULT NULL COMMENT '职称等级',
  `telephone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `mobilephone` varchar(11) NOT NULL COMMENT '手机',
  `email` varchar(64) NOT NULL COMMENT 'Email',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `introduction` varchar(1024) DEFAULT NULL COMMENT '教师简介',
  `course_managed` varchar(1024) DEFAULT NULL COMMENT '已承担的课程',
  `course_intention` varchar(1024) DEFAULT NULL COMMENT '意向承担课程',
  `student_managed` varchar(1024) DEFAULT NULL COMMENT '负责学生情况',
  `status` tinyint(2) DEFAULT '0' COMMENT '是否启用标识：0-未启用，1-已启用,：默认未启用 0',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `has_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_used` tinyint(2) DEFAULT '0' COMMENT '是否被激活 0 未激活，1已激活',
  `synchro_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '同步标识 0未同步 1已同步',
  PRIMARY KEY (`teacher_info_id`,`teacher_code`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_teacher_source_id` (`teacher_source_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师信息表';

-- ----------------------------
-- Table structure for p_teaching_place
-- ----------------------------
DROP TABLE IF EXISTS `p_teaching_place`;
CREATE TABLE `p_teaching_place` (
  `teaching_place_id` varchar(32) NOT NULL COMMENT '教学点ID',
  `code` varchar(10) NOT NULL COMMENT '教学点代码',
  `name` varchar(50) NOT NULL COMMENT '教学点名称',
  `area_code` varchar(6) NOT NULL COMMENT '参考p_area_tab',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `admissions_calls` varchar(20) DEFAULT NULL COMMENT '招生电话',
  `status` tinyint(4) NOT NULL COMMENT '教学点状态(0：停用，1：启用)',
  PRIMARY KEY (`teaching_place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教学点';

-- ----------------------------
-- Table structure for p_tea_and_stu_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `p_tea_and_stu_dynamic`;
CREATE TABLE `p_tea_and_stu_dynamic` (
  `tea_and_stu_dynamic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '师生动态ID',
  `dynamic_type` tinyint(4) DEFAULT NULL COMMENT '动态类型(1、签名更新；2、购买新课)',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `dynamic_content` varchar(200) NOT NULL COMMENT '动态内容',
  `course_version_id` varchar(32) DEFAULT NULL COMMENT '购买的课程ID（只针对购买课程的动态）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `has_hide` tinyint(4) DEFAULT NULL COMMENT '是否隐藏(0:不隐藏，1隐藏)',
  PRIMARY KEY (`tea_and_stu_dynamic_id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6142 DEFAULT CHARSET=utf8 COMMENT='师生动态表，只记录师生更换了签名、学生购买了课程';

-- ----------------------------
-- Table structure for p_tea_daliy_workload
-- ----------------------------
DROP TABLE IF EXISTS `p_tea_daliy_workload`;
CREATE TABLE `p_tea_daliy_workload` (
  `day` date NOT NULL COMMENT '统计的日期',
  `course_id` varchar(32) NOT NULL COMMENT '课程Id',
  `user_id` varchar(32) NOT NULL COMMENT '教师Id',
  `upload_video_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '上传的视频文件数',
  `upload_doc_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '上传的文档数量',
  `homework_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '发布作业数',
  `mark_homework_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '批阅的作业数',
  `question_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '创建的试题数量',
  `discussion_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '发布的讨论数',
  `replay_forum_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '回复讨论的数量',
  `comment_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '评论的数量',
  `announcement_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '公告数量',
  PRIMARY KEY (`day`,`course_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_textbook
-- ----------------------------
DROP TABLE IF EXISTS `p_textbook`;
CREATE TABLE `p_textbook` (
  `textbook_id` varchar(32) NOT NULL COMMENT '教材ID',
  `textbook_name` varchar(128) NOT NULL COMMENT '教材名称',
  `textbook_type_code` varchar(32) NOT NULL COMMENT '教材类型编码，数据字典维护，type=''TEACH_TYPE''',
  `textbook_source_code` varchar(32) NOT NULL COMMENT '教材来源编码，数据字典维护，type=''TEXTBOOK_SOURCE''',
  `textbook_version` varchar(32) NOT NULL COMMENT '版次',
  `chiefeditor` varchar(32) NOT NULL COMMENT '作者/主编',
  `publisher` varchar(128) NOT NULL COMMENT '出版单位',
  `cost` varchar(32) NOT NULL COMMENT '定价',
  `isbn` varchar(32) NOT NULL COMMENT 'isbn(国际标准书号)',
  `cip` varchar(32) DEFAULT NULL COMMENT 'cip核字号',
  `introduction` text COMMENT '教材简介',
  `publish_date` date NOT NULL COMMENT '出版时间',
  `advice_buy_path` varchar(300) DEFAULT NULL COMMENT '建议的购买地址',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否启用，0未启用，1已启用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `has_use` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  PRIMARY KEY (`textbook_id`),
  KEY `idx_textbook_type_code` (`textbook_type_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教材表(由考务平台设计)';

-- ----------------------------
-- Table structure for p_textbook_apply
-- ----------------------------
DROP TABLE IF EXISTS `p_textbook_apply`;
CREATE TABLE `p_textbook_apply` (
  `textbook_id` varchar(32) NOT NULL COMMENT '教材主键id',
  `course_id` varchar(32) NOT NULL COMMENT '课程ID',
  `textbook_name` varchar(128) NOT NULL COMMENT '教材名称',
  `textbook_type_code` varchar(32) DEFAULT NULL COMMENT '教材类型编码，数据字典维护，data_code',
  `textbook_source_code` varchar(32) DEFAULT NULL COMMENT '教材来源编码，数据字典维护，data_code',
  `textbook_version` varchar(32) DEFAULT NULL COMMENT '版次',
  `chiefeditor` varchar(32) NOT NULL COMMENT '作者/主编',
  `publisher` varchar(128) NOT NULL COMMENT '出版单位',
  `cost` varchar(32) DEFAULT NULL COMMENT '定价',
  `isbn` varchar(32) DEFAULT NULL COMMENT 'isbn(国际标准书号)',
  `cip` varchar(32) DEFAULT NULL COMMENT 'cip核字号',
  `introduction` longtext COMMENT '教材简介',
  `publish_date` datetime DEFAULT NULL COMMENT '出版时间',
  `advice_buy_path` varchar(255) DEFAULT NULL COMMENT '建议购买地址',
  `verify_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '审核状态，0待审核，1审核通过，2审核驳回',
  `verify_time` datetime DEFAULT NULL COMMENT '审核时间',
  `verify_remark` varchar(500) DEFAULT NULL COMMENT '审核意见',
  `verify_by` varchar(32) DEFAULT NULL COMMENT '审批人id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  `synchro_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '同步标识：0未同步；1已同步',
  PRIMARY KEY (`textbook_id`),
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教材申请表';

-- ----------------------------
-- Table structure for p_thirdparty_user
-- ----------------------------
DROP TABLE IF EXISTS `p_thirdparty_user`;
CREATE TABLE `p_thirdparty_user` (
  `user_id` varchar(32) NOT NULL COMMENT '本地用户id',
  `id` tinyint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `thirdparty_type` tinyint(11) NOT NULL COMMENT '第三方类型',
  `thirdparty_user_id` varchar(32) DEFAULT NULL COMMENT '第三方id',
  PRIMARY KEY (`id`),
  KEY `idx_thirdparty_user_id` (`thirdparty_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_third_client
-- ----------------------------
DROP TABLE IF EXISTS `p_third_client`;
CREATE TABLE `p_third_client` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `client_key` varchar(32) NOT NULL COMMENT '第三方系统key',
  `client_value` varchar(32) NOT NULL COMMENT '第三方系统value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for p_training_program
-- ----------------------------
DROP TABLE IF EXISTS `p_training_program`;
CREATE TABLE `p_training_program` (
  `program_id` varchar(32) NOT NULL COMMENT '系统ID',
  `program_name` varchar(75) NOT NULL COMMENT '方案名称',
  `credit_rules_code` varchar(32) NOT NULL COMMENT '学分规则编码',
  `level_id` varchar(32) DEFAULT NULL COMMENT '层次id',
  `stu_type_id` varchar(32) DEFAULT NULL COMMENT '学生类型id，数据字典维护，data_id',
  `stu_source_id` varchar(32) DEFAULT NULL COMMENT '学生来源id，数据字典维护',
  `enroll_target_id` varchar(32) DEFAULT NULL COMMENT '招生对象id，数据字典维护',
  `major_id` varchar(32) DEFAULT NULL COMMENT '专业id，jsou_subject_major',
  `educational_system` varchar(32) DEFAULT NULL COMMENT '学制，单位年',
  `learn_min_length` decimal(4,2) DEFAULT NULL COMMENT '最短学习时长，单位年',
  `learn_max_length` decimal(4,2) DEFAULT NULL COMMENT '最长学习时长，单位年',
  `graduate_pre_credit` decimal(4,1) DEFAULT '0.0' COMMENT '毕业预审学分',
  `grad_paper_score` decimal(4,1) DEFAULT '0.0' COMMENT '毕业论文成绩',
  `academic_degree` decimal(4,1) DEFAULT '0.0' COMMENT '学位英语课成绩',
  `graduate_min_credit` decimal(4,1) DEFAULT '0.0' COMMENT '毕业最低学分',
  `need_elephone` tinyint(2) DEFAULT NULL COMMENT '是否需要电子照片，0 需要，1 不需要',
  `status` tinyint(2) DEFAULT '0' COMMENT '是否启用，0以保存，1已发布，2停用',
  `start_time` datetime DEFAULT NULL COMMENT '启用时间',
  `stop_time` datetime DEFAULT NULL COMMENT '停用时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_by` varchar(32) NOT NULL COMMENT '修改者',
  `has_del` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除，0未删除，1已删除',
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养方案表';

-- ----------------------------
-- Table structure for p_training_program_course_system
-- ----------------------------
DROP TABLE IF EXISTS `p_training_program_course_system`;
CREATE TABLE `p_training_program_course_system` (
  `course_sys_id` varchar(32) NOT NULL COMMENT '主键	id',
  `program_id` varchar(32) NOT NULL COMMENT '培养方案id',
  `course_type_id` varchar(32) DEFAULT NULL COMMENT '课程类别ID字典表维护',
  `course_module_id` varchar(32) DEFAULT NULL COMMENT '课程模块id',
  `min_credit` decimal(4,1) DEFAULT '0.0' COMMENT '模块最低毕业学分',
  `min_degree_average` decimal(4,1) DEFAULT '0.0' COMMENT '学位平均分',
  `module_dir_id` varchar(32) DEFAULT NULL COMMENT '模块方向id',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程id',
  `course_nature_id` varchar(32) DEFAULT NULL COMMENT '课程性质id，数据字典维护 data_id',
  `start_term_code` varchar(32) DEFAULT NULL COMMENT '建议选课学期code，数据字典维护 data_code',
  `special_mark_code` varchar(32) DEFAULT NULL COMMENT '特殊标记code，数据字典维护，data_code',
  PRIMARY KEY (`course_sys_id`),
  KEY `idx_program_course_id` (`program_id`,`course_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养方案课程体系表';

-- ----------------------------
-- Table structure for p_training_program_course_system_his
-- ----------------------------
DROP TABLE IF EXISTS `p_training_program_course_system_his`;
CREATE TABLE `p_training_program_course_system_his` (
  `course_sys_id` varchar(32) NOT NULL COMMENT '主键	id',
  `program_his_id` varchar(32) NOT NULL COMMENT '培养方案历史id',
  `program_id` varchar(32) NOT NULL COMMENT '培养方案id',
  `course_type_id` varchar(32) DEFAULT NULL COMMENT '课程类别ID字典表维护',
  `course_module_id` varchar(32) DEFAULT NULL COMMENT '课程模块id',
  `total_score` decimal(5,2) DEFAULT '0.00' COMMENT '总学分',
  `min_credit` decimal(5,2) DEFAULT '0.00' COMMENT '模块最低毕业学分',
  `min_degree_average` decimal(5,2) DEFAULT '0.00' COMMENT '学位平均分',
  `module_dir_id` varchar(32) DEFAULT NULL COMMENT '模块方向id',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程id',
  `course_nature_id` varchar(32) DEFAULT NULL COMMENT '课程性质id，数据字典维护 data_id',
  `start_term_code` varchar(32) DEFAULT NULL COMMENT '建议选课学期code，数据字典维护 data_code',
  `special_mark_code` varchar(32) DEFAULT NULL COMMENT '特殊标记code，数据字典维护，data_code',
  PRIMARY KEY (`course_sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养方案课程体系历史表';

-- ----------------------------
-- Table structure for p_training_program_desc
-- ----------------------------
DROP TABLE IF EXISTS `p_training_program_desc`;
CREATE TABLE `p_training_program_desc` (
  `program_desc_id` varchar(32) NOT NULL COMMENT '标识',
  `program_id` varchar(32) NOT NULL COMMENT '培养方案id',
  `desc_title` varchar(100) DEFAULT NULL COMMENT '描述标题',
  `desc_content` longtext COMMENT '描述内容',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`program_desc_id`),
  KEY `idx_program_id` (`program_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养方案描述表';

-- ----------------------------
-- Table structure for p_training_program_desc_his
-- ----------------------------
DROP TABLE IF EXISTS `p_training_program_desc_his`;
CREATE TABLE `p_training_program_desc_his` (
  `program_desc_id` varchar(32) NOT NULL COMMENT '标识',
  `program_his_id` varchar(32) NOT NULL COMMENT '培养方案历史id',
  `program_id` varchar(32) NOT NULL COMMENT '培养方案id',
  `desc_title` varchar(100) DEFAULT NULL COMMENT '描述标题',
  `desc_content` longtext COMMENT '描述内容',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`program_desc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养方案描述历史表';

-- ----------------------------
-- Table structure for p_training_program_his
-- ----------------------------
DROP TABLE IF EXISTS `p_training_program_his`;
CREATE TABLE `p_training_program_his` (
  `program_his_id` varchar(32) NOT NULL COMMENT '系统ID',
  `program_id` varchar(32) NOT NULL COMMENT '培养方案id',
  `program_name` varchar(75) NOT NULL COMMENT '方案名称',
  `credit_rules_code` varchar(32) NOT NULL COMMENT '学分规则编码',
  `level_id` varchar(32) NOT NULL COMMENT '层次id',
  `stu_type_id` varchar(32) NOT NULL COMMENT '学生类型id，数据字典维护，data_id',
  `stu_source_id` varchar(32) NOT NULL COMMENT '学生来源id，数据字典维护',
  `enroll_target_id` varchar(32) DEFAULT NULL COMMENT '招生对象id，数据字典维护',
  `major_id` varchar(32) NOT NULL COMMENT '专业id，jsou_subject_major',
  `educational_system` varchar(32) NOT NULL COMMENT '学制，单位年',
  `learn_min_length` varchar(32) DEFAULT NULL COMMENT '最短学习时长，单位年',
  `learn_max_length` varchar(32) DEFAULT NULL COMMENT '最长学习时长，单位年',
  `graduate_pre_credit` decimal(5,2) DEFAULT '0.00' COMMENT '毕业预审学分',
  `grad_paper_score` decimal(5,2) DEFAULT '0.00' COMMENT '毕业论文成绩',
  `academic_degree` decimal(5,2) DEFAULT '0.00' COMMENT '学位英语课成绩',
  `graduate_min_credit` decimal(5,2) DEFAULT '0.00' COMMENT '毕业最低学分',
  `need_elephone` tinyint(2) DEFAULT NULL COMMENT '是否需要电子照片，0 需要，1 不需要',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) NOT NULL COMMENT '创建者id',
  PRIMARY KEY (`program_his_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养方案历史表';

-- ----------------------------
-- Table structure for p_user
-- ----------------------------
DROP TABLE IF EXISTS `p_user`;
CREATE TABLE `p_user` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `user_role` tinyint(4) NOT NULL DEFAULT '3' COMMENT '用户角色：3学生；9教师',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `head_portrait_id` varchar(32) DEFAULT NULL COMMENT '头像(关联p_image_tab)',
  `signature` varchar(150) DEFAULT NULL COMMENT '个性签名',
  `salt` varchar(128) NOT NULL COMMENT '盐值',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `create_by` varchar(32) DEFAULT '0-1' COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `has_del` tinyint(4) DEFAULT '0' COMMENT '是否删除，0未删除，1已删除',
  `has_used` tinyint(4) DEFAULT '0' COMMENT '是否使用：0未使用；1已使用',
  `has_lock` tinyint(4) DEFAULT '0' COMMENT '是否锁定：0未锁定；1已锁定',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '通讯地址',
  `postcode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别 0男1女2保密',
  `from_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户来源 0教务即cas 1 注册',
  `is_manger` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否管理员 0不是 1是',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `NewIndex1` (`user_name`) USING BTREE,
  KEY `idx_head_portrait_id` (`head_portrait_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Function structure for create_day
-- ----------------------------
DROP FUNCTION IF EXISTS `create_day`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `create_day`(num INT) RETURNS int(11)
BEGIN
	DECLARE min_day DATE;
	DECLARE i INT;
	SET i = 1;
	SELECT IFNULL(MAX(d.day),'2018-03-21') INTO min_day FROM p_date_constant d;
	REPEAT 
		INSERT INTO p_date_constant (DAY) VALUES (INTERVAL i DAY + min_day); 
		SET i = i + 1; 
		UNTIL i >= num
	END REPEAT;
	RETURN num;
    END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getFullAreaByAreaCode
-- ----------------------------
DROP FUNCTION IF EXISTS `getFullAreaByAreaCode`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getFullAreaByAreaCode`(area_code VARCHAR(6)) RETURNS varchar(255) CHARSET utf8
BEGIN
	DECLARE province VARCHAR(6) DEFAULT '';
	DECLARE city VARCHAR(6) DEFAULT '';
	DECLARE addr VARCHAR(255) DEFAULT '';
	DECLARE zindex INT DEFAULT 0;
	SELECT POSITION('00' IN area_code) INTO zindex;
	SET province = CONCAT(LEFT(area_code, 2), '0000');
	SET city = CONCAT(LEFT(area_code, 4), '00');
	IF (zindex = 0 OR zindex > 5) THEN 
		SELECT CONCAT(a.area, b.area, c.area) INTO addr FROM p_area a,p_area b,p_area c WHERE a.area_code=province AND b.area_code=city AND c.area_code=area_code;
	ELSEIF (zindex >  3) THEN
		SELECT CONCAT(a.area, b.area) INTO addr FROM p_area a,p_area b WHERE a.area_code=province AND b.area_code=city;
	ELSE
		SELECT a.area INTO addr FROM p_area a WHERE a.area_code=province;
	END IF;
	RETURN addr;
    END
;;
DELIMITER ;
