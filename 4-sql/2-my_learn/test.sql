/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-25 00:31:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `a`
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `class` varchar(32) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `has_del` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a
-- ----------------------------
INSERT INTO `a` VALUES ('001', 'name001', 'class001', null, '1990-09-09 00:00:00', '0');
INSERT INTO `a` VALUES ('002', 'name002', 'class002', '20', '1990-09-05 00:00:00', '0');

-- ----------------------------
-- Table structure for `a_b`
-- ----------------------------
DROP TABLE IF EXISTS `a_b`;
CREATE TABLE `a_b` (
  `id` varchar(32) NOT NULL,
  `id_a` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_b
-- ----------------------------
INSERT INTO `a_b` VALUES ('001', '001', 'name_b_001', '1990-01-01 00:00:00');
INSERT INTO `a_b` VALUES ('002', '001', 'name_b_002', '1990-01-02 00:00:00');
INSERT INTO `a_b` VALUES ('003', '001', 'name_b_003', '1990-01-10 00:00:00');

-- ----------------------------
-- Table structure for `a_c`
-- ----------------------------
DROP TABLE IF EXISTS `a_c`;
CREATE TABLE `a_c` (
  `id` varchar(32) NOT NULL,
  `id_a` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_c
-- ----------------------------
INSERT INTO `a_c` VALUES ('002', '002', 'name_b_002', '1990-01-02 00:00:00');
INSERT INTO `a_c` VALUES ('003', '002', 'name_b_003', '1990-01-10 00:00:00');
