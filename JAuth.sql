/*
Navicat MySQL Data Transfer

Source Server         : ch_meddkim
Source Server Version : 50633
Source Host           : 42.96.144.163:3306
Source Database       : JAuth

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2017-02-06 17:17:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jx_captchas
-- ----------------------------
DROP TABLE IF EXISTS `jx_captchas`;
CREATE TABLE `jx_captchas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `captchas` varchar(20) DEFAULT NULL COMMENT '验证码',
  `success_is` int(4) DEFAULT '0' COMMENT '是否校验：0：否；1：是；',
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '可用时间',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1490 DEFAULT CHARSET=utf8 COMMENT='验证码';

-- ----------------------------
-- Records of jx_captchas
-- ----------------------------

-- ----------------------------
-- Table structure for jx_company
-- ----------------------------
DROP TABLE IF EXISTS `jx_company`;
CREATE TABLE `jx_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '公司名称',
  `org_code` varchar(255) NOT NULL COMMENT '组织机构代码',
  `type` int(11) NOT NULL COMMENT '公司类型：1.自营 2.加盟 3.入驻',
  `package_id` bigint(20) DEFAULT NULL COMMENT '功能包id',
  `duplicate_url` varchar(255) DEFAULT NULL COMMENT '副本url',
  `experience_in_scope` varchar(255) DEFAULT NULL COMMENT '经验范围',
  `effective_license_date` timestamp NULL DEFAULT NULL COMMENT '营业执照有效日期',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '公司类型',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `extension1` varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  `extension2` varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  `extension3` varchar(255) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司信息表';

-- ----------------------------
-- Records of jx_company
-- ----------------------------

-- ----------------------------
-- Table structure for jx_domain_info
-- ----------------------------
DROP TABLE IF EXISTS `jx_domain_info`;
CREATE TABLE `jx_domain_info` (
  `id` bigint(20) NOT NULL,
  `coolie_life` bigint(20) DEFAULT NULL COMMENT 'coolie生命周期，单位天',
  `cookie_domain` varchar(255) NOT NULL COMMENT 'cookie的域',
  `access_domain` varchar(255) NOT NULL COMMENT '访问的域名地址',
  `company_id` bigint(20) NOT NULL COMMENT 'company表的主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jx_domain_info
-- ----------------------------

-- ----------------------------
-- Table structure for jx_function
-- ----------------------------
DROP TABLE IF EXISTS `jx_function`;
CREATE TABLE `jx_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) DEFAULT NULL COMMENT '功能code',
  `name` varchar(128) DEFAULT NULL COMMENT '功能名称',
  `type` int(4) NOT NULL COMMENT '功能类型',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能定义表';

-- ----------------------------
-- Records of jx_function
-- ----------------------------

-- ----------------------------
-- Table structure for jx_function_resource
-- ----------------------------
DROP TABLE IF EXISTS `jx_function_resource`;
CREATE TABLE `jx_function_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `function_id` bigint(20) DEFAULT NULL COMMENT '功能id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '权限资源id',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`function_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能权限资源关联表';

-- ----------------------------
-- Records of jx_function_resource
-- ----------------------------

-- ----------------------------
-- Table structure for jx_organization
-- ----------------------------
DROP TABLE IF EXISTS `jx_organization`;
CREATE TABLE `jx_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `parents_code` varchar(128) DEFAULT NULL,
  `parent_code` varchar(20) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of jx_organization
-- ----------------------------

-- ----------------------------
-- Table structure for jx_package
-- ----------------------------
DROP TABLE IF EXISTS `jx_package`;
CREATE TABLE `jx_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) DEFAULT NULL COMMENT '功能包code',
  `name` varchar(128) DEFAULT NULL COMMENT '功能包名称',
  `type` int(4) NOT NULL COMMENT '功能包类型',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能包定义表';

-- ----------------------------
-- Records of jx_package
-- ----------------------------

-- ----------------------------
-- Table structure for jx_package_function
-- ----------------------------
DROP TABLE IF EXISTS `jx_package_function`;
CREATE TABLE `jx_package_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `package_id` bigint(20) DEFAULT NULL COMMENT '功能code',
  `function_id` bigint(20) DEFAULT NULL COMMENT '功能名称',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`package_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能包功能明细表';

-- ----------------------------
-- Records of jx_package_function
-- ----------------------------

-- ----------------------------
-- Table structure for jx_product
-- ----------------------------
DROP TABLE IF EXISTS `jx_product`;
CREATE TABLE `jx_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) DEFAULT NULL COMMENT '产品编码',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of jx_product
-- ----------------------------

-- ----------------------------
-- Table structure for jx_resource
-- ----------------------------
DROP TABLE IF EXISTS `jx_resource`;
CREATE TABLE `jx_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) DEFAULT NULL COMMENT '权限code',
  `parents_code` varchar(128) DEFAULT NULL,
  `parent_code` varchar(32) NOT NULL DEFAULT '0' COMMENT '构造权限树',
  `product_id` int(4) NOT NULL COMMENT '产品id',
  `type` int(4) NOT NULL COMMENT '权限类型 1 菜单 2按钮 3数据接口',
  `domain` varchar(128) DEFAULT NULL COMMENT '域',
  `path` varchar(128) DEFAULT NULL COMMENT '访问路径',
  `name` varchar(128) DEFAULT NULL COMMENT '权限名称',
  `desc_` varchar(2048) DEFAULT NULL COMMENT '权限描述',
  `level` int(4) DEFAULT NULL COMMENT '资源层级',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `permission` varchar(128) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3907 DEFAULT CHARSET=utf8 COMMENT='权限资源表';

-- ----------------------------
-- Records of jx_resource
-- ----------------------------

-- ----------------------------
-- Table structure for jx_role
-- ----------------------------
DROP TABLE IF EXISTS `jx_role`;
CREATE TABLE `jx_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` bigint(20) NOT NULL DEFAULT '0' COMMENT '1 非子账户角色  2 子账户角色',
  `product_type` int(4) NOT NULL COMMENT '产品类型',
  `name` varchar(128) NOT NULL COMMENT '角色名称',
  `desc_` varchar(2048) DEFAULT NULL COMMENT '角色描述',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1079 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of jx_role
-- ----------------------------

-- ----------------------------
-- Table structure for jx_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `jx_role_resource`;
CREATE TABLE `jx_role_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `resource_id` bigint(20) NOT NULL COMMENT '权限资源id',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306550 DEFAULT CHARSET=utf8 COMMENT='角色和权限的关联关系';

-- ----------------------------
-- Records of jx_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for jx_session
-- ----------------------------
DROP TABLE IF EXISTS `jx_session`;
CREATE TABLE `jx_session` (
  `id` varchar(200) NOT NULL,
  `session` varchar(2000) DEFAULT NULL,
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '可用时间',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='session';

-- ----------------------------
-- Records of jx_session
-- ----------------------------

-- ----------------------------
-- Table structure for jx_third_party
-- ----------------------------
DROP TABLE IF EXISTS `jx_third_party`;
CREATE TABLE `jx_third_party` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(4) DEFAULT '0' COMMENT '类型：微信：1',
  `thir_id` varchar(60) DEFAULT NULL COMMENT '第三方id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `sex` int(4) DEFAULT NULL COMMENT '性别',
  `head_pic_url` varchar(255) DEFAULT NULL COMMENT '头像url',
  `birthday` timestamp NULL DEFAULT NULL COMMENT '生日',
  `user_province` varchar(60) DEFAULT NULL COMMENT '省份',
  `user_city` varchar(60) DEFAULT NULL COMMENT '市',
  `user_region` varchar(60) DEFAULT NULL COMMENT '区域',
  `user_address` varchar(60) DEFAULT NULL COMMENT '用户地址',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方账号信息';

-- ----------------------------
-- Records of jx_third_party
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user
-- ----------------------------
DROP TABLE IF EXISTS `jx_user`;
CREATE TABLE `jx_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(4) DEFAULT '0' COMMENT '状态：1：后台运营人员；2：公司主账号；3：公司子账号；',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(60) NOT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `contact_person` varchar(255) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `telephone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `status` int(4) DEFAULT '0' COMMENT '状态：0：待审核；1：审核通过；2：审核不通过；',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `points` decimal(12,2) DEFAULT NULL COMMENT 'points`',
  `sex` int(4) DEFAULT NULL COMMENT '性别',
  `head_pic_url` varchar(255) DEFAULT NULL COMMENT '头像url',
  `birthday` timestamp NULL DEFAULT NULL COMMENT '生日',
  `user_province` varchar(60) DEFAULT NULL COMMENT '省份',
  `user_city` varchar(60) DEFAULT NULL COMMENT '市',
  `user_region` varchar(60) DEFAULT NULL COMMENT '区域',
  `user_address` varchar(60) DEFAULT NULL COMMENT '用户地址',
  `check_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `check_user_id` bigint(20) DEFAULT NULL COMMENT '审核人id',
  `identity_card_name` varchar(60) DEFAULT NULL COMMENT '真实姓名',
  `is_certification` int(4) DEFAULT '0' COMMENT '是否实名认证：默认0未认证，1认证',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=571185 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of jx_user
-- ----------------------------
INSERT INTO `jx_user` VALUES ('571180', '1', '张三', '123', 'zhangsang', '1', '酱心', 't', '18521357251', '222', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '0', '0', null, null, null, null, null, '2017-01-19 10:35:20', null, null, null, null, null, null, null, null);
INSERT INTO `jx_user` VALUES ('571181', '1', 'aaa', '123', 'aaa', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '0', '0', null, null, null, null, null, '2017-02-06 15:54:30', null, null, null, null, null, null, null, null);
INSERT INTO `jx_user` VALUES ('571182', '0', 'bbbeaa', '1212', 'bbbaa', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '0', '0', null, null, null, null, null, '2017-02-06 15:54:48', null, null, null, null, null, null, null, null);
INSERT INTO `jx_user` VALUES ('571183', '0', 'ababa', '111', 'bbb', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '0', '0', null, null, null, null, null, '2017-02-06 15:55:03', null, null, null, null, null, null, null, null);
INSERT INTO `jx_user` VALUES ('571184', '0', 'aaa', '111', 'bbb', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '0', '0', null, null, null, null, null, '2017-02-06 15:55:12', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for jx_user_address
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_address`;
CREATE TABLE `jx_user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `first_name` varchar(50) DEFAULT NULL COMMENT '名',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `last_name` varchar(50) DEFAULT NULL COMMENT '姓',
  `province_id` bigint(20) DEFAULT NULL,
  `province_name` varchar(150) DEFAULT NULL COMMENT '省名称',
  `city_id` bigint(20) DEFAULT NULL,
  `city_name` varchar(150) DEFAULT NULL COMMENT '城市名称',
  `region_id` bigint(20) DEFAULT NULL,
  `region_name` varchar(150) DEFAULT NULL COMMENT '区域名称',
  `longitude` decimal(9,6) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `exact_address` varchar(255) DEFAULT NULL COMMENT '精确地址',
  `detail_address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `use_time` timestamp NULL DEFAULT NULL COMMENT '使用时间',
  `identity_card_number` varchar(20) DEFAULT NULL COMMENT '身份证号码',
  `default_is` int(4) DEFAULT '0' COMMENT '默认地址0非默认，1默认',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132459 DEFAULT CHARSET=utf8 COMMENT='用户地址表';

-- ----------------------------
-- Records of jx_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user_cookie
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_cookie`;
CREATE TABLE `jx_user_cookie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `user_login_id` bigint(20) NOT NULL COMMENT '用户登陆历史表id',
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '类型 默认1 cookie',
  `cookie_name` varchar(128) NOT NULL COMMENT 'cookie 名称',
  `cookie_value` varchar(128) DEFAULT NULL COMMENT 'cookie值',
  `domain` varchar(128) DEFAULT NULL COMMENT '域',
  `path` varchar(128) DEFAULT NULL COMMENT '路径',
  `expiration_time` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13551 DEFAULT CHARSET=utf8 COMMENT='用户登录cookie表';

-- ----------------------------
-- Records of jx_user_cookie
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user_login
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_login`;
CREATE TABLE `jx_user_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `login_result` int(4) DEFAULT NULL COMMENT '登陆结果',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登陆时间',
  `ip` varchar(64) DEFAULT NULL COMMENT 'ip',
  `browser` varchar(2000) DEFAULT NULL COMMENT '浏览器信息',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18123 DEFAULT CHARSET=utf8 COMMENT='用户登录日志表';

-- ----------------------------
-- Records of jx_user_login
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user_manage_company
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_manage_company`;
CREATE TABLE `jx_user_manage_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `company_id` bigint(20) NOT NULL COMMENT '管理商家id',
  `company_name` varchar(255) DEFAULT NULL COMMENT '商家名称',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5827 DEFAULT CHARSET=utf8 COMMENT='用户和管理商家关联关系';

-- ----------------------------
-- Records of jx_user_manage_company
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_product_relation`;
CREATE TABLE `jx_user_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `status` int(4) DEFAULT '0' COMMENT '状态：1：初始化；2：测试状态；3：正常运行状态；4:禁用状态;',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与产品关系表';

-- ----------------------------
-- Records of jx_user_product_relation
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user_role
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_role`;
CREATE TABLE `jx_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3958 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of jx_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for jx_user_third
-- ----------------------------
DROP TABLE IF EXISTS `jx_user_third`;
CREATE TABLE `jx_user_third` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `third_party_id` varchar(60) DEFAULT NULL COMMENT '第三方信息id',
  `is_available` int(11) DEFAULT NULL COMMENT '是否可用:默认0否;1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否逻辑删除:默认0未删除;1已删除',
  `version_no` int(11) DEFAULT '0' COMMENT '版本号:默认0,每次更新+1',
  `create_userid` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `create_userip` varchar(60) DEFAULT NULL COMMENT '创建人IP',
  `create_usermac` varchar(60) DEFAULT NULL COMMENT '创建人MAC地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间-应用操作时间',
  `create_time_db` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间-数据库操作时间',
  `server_ip` varchar(60) DEFAULT NULL COMMENT '服务器IP',
  `update_userid` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `update_username` varchar(100) DEFAULT NULL COMMENT '最后修改人姓名',
  `update_userip` varchar(60) DEFAULT NULL COMMENT '最后修改人IP',
  `update_usermac` varchar(60) DEFAULT NULL COMMENT '最后修改人MAC',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_time_db` timestamp NULL DEFAULT NULL COMMENT '最后修改时间-数据库默认写入时间',
  `client_versionno` varchar(40) DEFAULT NULL COMMENT '客户端程序的版本号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和第三方用户关联表';

-- ----------------------------
-- Records of jx_user_third
-- ----------------------------
