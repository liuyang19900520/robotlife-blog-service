/*
Navicat MySQL Data Transfer

Source Server         : Liu
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : robotlife

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-24 11:44:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `msg` varchar(1024) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`message_id`),
  KEY `idx_gmt_create` (`gmt_create`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of a
-- ----------------------------

-- ----------------------------
-- Table structure for b
-- ----------------------------
DROP TABLE IF EXISTS `b`;
CREATE TABLE `b` (
  `user_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `msg` varchar(1024) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`message_id`),
  KEY `idx_gmt_create` (`gmt_create`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of b
-- ----------------------------

-- ----------------------------
-- Table structure for b_blog
-- ----------------------------
DROP TABLE IF EXISTS `b_blog`;
CREATE TABLE `b_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(64) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_content` longtext,
  `blog_html` longtext,
  `tags` varchar(255) DEFAULT NULL,
  `categroy_id` bigint(64) DEFAULT NULL,
  `author_id` bigint(64) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` bigint(64) DEFAULT NULL,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` bigint(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_blog_id` (`blog_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='账本_账本表';

-- ----------------------------
-- Records of b_blog
-- ----------------------------
INSERT INTO `b_blog` VALUES ('1', '1', '测试第一篇文章', '没有文章', '<h2>没有文章</h2>', 'SpringBoot,Vue,AWS', '1001', '19900520', '2018-07-13 17:00:52', '19900520', '2018-07-13 17:00:52', '19900520', '0');
INSERT INTO `b_blog` VALUES ('2', '2', 'Title2', '没有文章', '<h2>没有文章</h2>', 'SpringBoot,Vue,HTML,aaa', '1001', '19900520', '2018-07-13 17:00:52', '19900520', '2018-07-13 17:00:52', '19900520', '0');
INSERT INTO `b_blog` VALUES ('3', '3', 'Title3', '没有文章', '<h2>没有文章</h2>', 'SpringBoot,Vue,HTML,aaa', '1001', '19900520', '2018-07-13 17:00:52', '19900520', '2018-07-13 17:00:52', '19900520', '0');
INSERT INTO `b_blog` VALUES ('4', '4', '测试第一篇文章', '没有文章', '<h2>没有文章</h2>', 'SpringBoot,Vue,AWS', '1001', '19900520', '2018-07-13 17:00:52', '19900520', '2018-07-13 17:00:52', '19900520', '0');
INSERT INTO `b_blog` VALUES ('5', '5', 'Title2', '没有文章', '<h2>没有文章</h2>', 'SpringBoot,Vue,HTML,aaa', '1001', '19900520', '2018-07-13 17:00:52', '19900520', '2018-07-13 17:00:52', '19900520', '0');
INSERT INTO `b_blog` VALUES ('6', '6', 'Title3', '没有文章', '<h2>没有文章</h2>', 'SpringBoot,Vue,HTML,aaa', '1001', '19900520', '2018-07-13 17:00:52', '19900520', '2018-07-13 17:00:52', '19900520', '0');
INSERT INTO `b_blog` VALUES ('10', '205015697879724032', '为什么', '没有文章', '<h2>没有文章</h2>', '1,2,3,4', null, '19900520', '2018-07-20 18:39:11', '19900520', '2018-07-20 18:39:11', '19900520', '0');
INSERT INTO `b_blog` VALUES ('11', '205469239476219904', '为什么', '没有文章', '<h2>没有文章</h2>', '1,2,3,4', null, '19900520', '2018-07-22 00:41:24', '19900520', '2018-07-22 00:41:24', '19900520', '0');
INSERT INTO `b_blog` VALUES ('12', '205469720307036160', 'title1', '# 一级标题\n### 三级标题\n\n```java\n\nprivate String name;\n\n```\n', null, '', null, null, '2018-07-22 00:43:18', null, '2018-07-22 00:43:18', null, '0');
INSERT INTO `b_blog` VALUES ('13', '205478045555879936', 'liuyang', '::: hljs-left\n\n## 以及标题\n1. 1231==标记==234\n2. 1324\n3. 1234\n4. 1234\n\n|2|哟哟哟|等等|\n|-|-|-|\n|a|啊|爱是|\n\n```java\n// 这是注释\n\nprivate String asdf\n\n```\n\n\n\n\n\n\n:::\n\n', null, '', null, null, '2018-07-22 01:16:23', null, '2018-07-22 01:16:23', null, '0');

-- ----------------------------
-- Table structure for b_category
-- ----------------------------
DROP TABLE IF EXISTS `b_category`;
CREATE TABLE `b_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(64) NOT NULL,
  `category_content` varchar(255) DEFAULT NULL,
  `category_rank` int(5) NOT NULL,
  `parent_id` bigint(64) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` bigint(64) DEFAULT NULL,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` bigint(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='账本_账本表';

-- ----------------------------
-- Records of b_category
-- ----------------------------
INSERT INTO `b_category` VALUES ('1', '1001', 'Spring Boot', '1', null, '2018-07-15 12:28:32', null, '2018-07-15 12:28:58', null, '0');
INSERT INTO `b_category` VALUES ('2', '1002', 'Vue.js', '2', null, '2018-07-15 12:28:32', null, '2018-07-15 12:28:58', null, '0');

-- ----------------------------
-- Table structure for m_account
-- ----------------------------
DROP TABLE IF EXISTS `m_account`;
CREATE TABLE `m_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(64) NOT NULL,
  `account_name` varchar(64) DEFAULT NULL,
  `target_user_id` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账本_账本表';

-- ----------------------------
-- Records of m_account
-- ----------------------------

-- ----------------------------
-- Table structure for m_category
-- ----------------------------
DROP TABLE IF EXISTS `m_category`;
CREATE TABLE `m_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(64) NOT NULL,
  `category_name` varchar(64) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT NULL,
  `ioe` char(1) DEFAULT NULL,
  `account_id` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账本_记录表';

-- ----------------------------
-- Records of m_category
-- ----------------------------

-- ----------------------------
-- Table structure for m_record
-- ----------------------------
DROP TABLE IF EXISTS `m_record`;
CREATE TABLE `m_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `record_id` varchar(64) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `ioe` char(1) DEFAULT NULL,
  `account_id` varchar(64) DEFAULT NULL,
  `category_id` varchar(64) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `record_user` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账本_记录表';

-- ----------------------------
-- Records of m_record
-- ----------------------------

-- ----------------------------
-- Table structure for s_module
-- ----------------------------
DROP TABLE IF EXISTS `s_module`;
CREATE TABLE `s_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(64) NOT NULL,
  `module_name` varchar(64) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT NULL,
  `module_level` varchar(64) DEFAULT NULL,
  `module_img` varchar(64) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `module_rank` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='系统_模块表';

-- ----------------------------
-- Records of s_module
-- ----------------------------
INSERT INTO `s_module` VALUES ('1', 'index', 'index', '0', 'FUNCTION', 'fa-globe', '/index', '11111', '2018-02-19 14:06:14', null, '2018-03-06 14:35:47', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '0');
INSERT INTO `s_module` VALUES ('2', 'account', 'account', '0', 'FUNCTION', 'fa-money', '/account', '22222', '2018-02-19 14:06:14', '', '2018-03-06 14:57:42', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '0');
INSERT INTO `s_module` VALUES ('3', 'system', 'system', '0', 'FUNCTION', '', '/system', '33333', '2018-02-28 00:55:17', null, '2018-03-06 15:06:22', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '0');
INSERT INTO `s_module` VALUES ('4', 'module', 'module', 'system', 'FUNCTION', 'fa-hand-lizard-o', '/system/module', '4444', '2018-02-19 14:06:14', '', '2018-03-06 20:24:03', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '0');
INSERT INTO `s_module` VALUES ('5', 'user', 'user', 'system', 'FUNCTION', 'fa-clone', '/system/user', '1234', '2018-02-19 14:06:14', '', null, '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '0');
INSERT INTO `s_module` VALUES ('12', '4553213b-d1b5-4821-8eb8-f1c20aeeadc4', 'liuyang', 'system', 'FUNCTION', 'fa-credit-card', '/liuyang', '7', '2018-03-06 20:24:29', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '2018-03-07 10:04:48', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '0');

-- ----------------------------
-- Table structure for s_role
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(64) NOT NULL,
  `role_name` varchar(64) DEFAULT NULL,
  `role_level` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统_角色表';

-- ----------------------------
-- Records of s_role
-- ----------------------------
INSERT INTO `s_role` VALUES ('1', 'super', 'super', '1', '2018-02-19 14:05:24', null, '2018-02-19 14:05:24', null, '0');

-- ----------------------------
-- Table structure for s_role_module
-- ----------------------------
DROP TABLE IF EXISTS `s_role_module`;
CREATE TABLE `s_role_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(64) NOT NULL,
  `module_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`role_id`,`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统_角色模块表';

-- ----------------------------
-- Records of s_role_module
-- ----------------------------
INSERT INTO `s_role_module` VALUES ('1', 'super', 'index', '2018-02-19 14:05:56', null, '2018-02-19 14:05:56', null, '0');
INSERT INTO `s_role_module` VALUES ('2', 'super', 'system', '2018-02-19 14:05:56', '', '2018-02-19 14:05:56', '', '0');
INSERT INTO `s_role_module` VALUES ('3', 'super', 'account', '2018-02-19 14:05:56', '', '2018-02-19 14:05:56', '', '0');
INSERT INTO `s_role_module` VALUES ('4', 'super', 'module', '2018-02-28 00:59:04', null, '2018-02-28 00:59:04', null, '0');

-- ----------------------------
-- Table structure for s_role_user
-- ----------------------------
DROP TABLE IF EXISTS `s_role_user`;
CREATE TABLE `s_role_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`role_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统_角色用户表';

-- ----------------------------
-- Records of s_role_user
-- ----------------------------
INSERT INTO `s_role_user` VALUES ('1', 'super', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', '2018-02-19 14:05:11', null, '2018-02-19 14:05:11', null, '0');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`user_id`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统_用户表';

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES ('2', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', 'liuyang@hotmail.com', '814dabf3f2feddebad9d0acc24d29057', '2018-02-19 13:36:28', null, '2018-02-19 13:36:28', null, '0');

-- ----------------------------
-- Table structure for s_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `s_userinfo`;
CREATE TABLE `s_userinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统_用户表';

-- ----------------------------
-- Records of s_userinfo
-- ----------------------------
INSERT INTO `s_userinfo` VALUES ('1', '4236ec87-0713-40ff-9e1f-63c4b788e5f4', null, '惟染', '1990-05-20', '1594304034', 'liuyang19900520@hotmai.com', '2018-02-20 13:57:05', null, '2018-02-20 13:57:05', null, '0');
