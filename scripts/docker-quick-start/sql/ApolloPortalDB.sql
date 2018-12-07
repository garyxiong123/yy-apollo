/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : ApolloPortalDB

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 05/12/2018 16:01:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for App
-- ----------------------------
DROP TABLE IF EXISTS `App`;
CREATE TABLE `App` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `Name` varchar(500) NOT NULL DEFAULT 'default' COMMENT '应用名',
  `OrgId` varchar(32) NOT NULL DEFAULT 'default' COMMENT '部门Id',
  `OrgName` varchar(64) NOT NULL DEFAULT 'default' COMMENT '部门名字',
  `OwnerName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerName',
  `OwnerEmail` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerEmail',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId` (`AppId`(191)),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_Name` (`Name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='应用表';

-- ----------------------------
-- Records of App
-- ----------------------------
BEGIN;
INSERT INTO `App` VALUES (1, 'SampleApp', 'Sample App', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `App` VALUES (2, 'mid', 'mid', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-14 17:22:55', 'apollo', '2018-11-14 17:22:55');
INSERT INTO `App` VALUES (3, 'test1', 'test1', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `App` VALUES (4, 'test5', 'test5', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 11:52:19', 'apollo', '2018-11-20 11:52:19');
INSERT INTO `App` VALUES (5, 'test6', 'test6', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `App` VALUES (6, 'test7', 'test7', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 12:45:17', 'apollo', '2018-11-20 12:45:17');
INSERT INTO `App` VALUES (7, 'test8', 'test8', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `App` VALUES (8, 'test9', 'test9', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `App` VALUES (10, 'test12', 'test12', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 13:48:25', 'apollo', '2018-11-20 13:48:25');
INSERT INTO `App` VALUES (11, 'test13', 'test13', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-11-20 14:52:47', 'apollo', '2018-11-20 14:52:47');
INSERT INTO `App` VALUES (12, 'test15', 'test15', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-01 20:32:16', 'apollo', '2018-12-01 20:32:16');
INSERT INTO `App` VALUES (13, 'test17', 'test17', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `App` VALUES (14, 'platform-sample-provider', 'platform-sample-provider', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `App` VALUES (15, 'tes16', 'teset16', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for AppNamespace
-- ----------------------------
DROP TABLE IF EXISTS `AppNamespace`;
CREATE TABLE `AppNamespace` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `Name` varchar(32) NOT NULL DEFAULT '' COMMENT 'namespace名字，注意，需要全局唯一',
  `AppId` varchar(32) NOT NULL DEFAULT '' COMMENT 'app id',
  `Format` varchar(32) NOT NULL DEFAULT 'properties' COMMENT 'namespace的format类型',
  `IsPublic` bit(1) NOT NULL DEFAULT b'0' COMMENT 'namespace是否为公共',
  `Comment` varchar(64) NOT NULL DEFAULT '' COMMENT '注释',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_AppId` (`AppId`),
  KEY `Name_AppId` (`Name`,`AppId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='应用namespace定义';

-- ----------------------------
-- Records of AppNamespace
-- ----------------------------
BEGIN;
INSERT INTO `AppNamespace` VALUES (1, 'application', 'SampleApp', 'properties', b'0', 'default app namespace', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `AppNamespace` VALUES (2, 'TEST1.test', 'SampleApp', 'properties', b'1', '测试', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `AppNamespace` VALUES (3, 'TEST1.aa', 'SampleApp', 'properties', b'1', 'aa', b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `AppNamespace` VALUES (4, 'application', 'mid', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-14 17:22:55', 'apollo', '2018-11-14 17:22:55');
INSERT INTO `AppNamespace` VALUES (5, 'TEST1.monitor', 'SampleApp', 'properties', b'1', 'jiankong', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `AppNamespace` VALUES (6, 'TEST1.test33', 'SampleApp', 'properties', b'1', 'test3', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `AppNamespace` VALUES (7, 'TEST1.test55', 'SampleApp', 'properties', b'1', 'test55', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `AppNamespace` VALUES (10, 'TEST1.test667', 'SampleApp', 'properties', b'1', 'test55', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `AppNamespace` VALUES (11, 'application', 'test1', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `AppNamespace` VALUES (12, 'application', 'test5', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 11:53:12', 'apollo', '2018-11-20 11:53:12');
INSERT INTO `AppNamespace` VALUES (13, 'application', 'test6', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `AppNamespace` VALUES (14, 'application', 'test7', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `AppNamespace` VALUES (15, 'application', 'test8', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `AppNamespace` VALUES (16, 'application', 'test9', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `AppNamespace` VALUES (18, 'application', 'test12', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 13:48:25', 'apollo', '2018-11-20 13:48:25');
INSERT INTO `AppNamespace` VALUES (19, 'application', 'test13', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-11-20 14:52:50', 'apollo', '2018-11-20 14:52:50');
INSERT INTO `AppNamespace` VALUES (20, 'application', 'test15', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-01 20:32:16', 'apollo', '2018-12-01 20:32:16');
INSERT INTO `AppNamespace` VALUES (21, 'application', 'test17', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `AppNamespace` VALUES (22, 'application', 'platform-sample-provider', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `AppNamespace` VALUES (23, 'TEST1.test3', 'platform-sample-provider', 'properties', b'1', '', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `AppNamespace` VALUES (24, 'application', 'tes16', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for Audit
-- ----------------------------
DROP TABLE IF EXISTS `Audit`;
CREATE TABLE `Audit` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `EntityName` varchar(50) NOT NULL DEFAULT 'default' COMMENT '表名',
  `EntityId` int(10) unsigned DEFAULT NULL COMMENT '记录ID',
  `OpName` varchar(50) NOT NULL DEFAULT 'default' COMMENT '操作类型',
  `Comment` varchar(500) DEFAULT NULL COMMENT '备注',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='日志审计表';

-- ----------------------------
-- Records of Audit
-- ----------------------------
BEGIN;
INSERT INTO `Audit` VALUES (1, 'Release', 3, 'INSERT', NULL, b'0', 'apollo', '2018-11-15 14:49:26', NULL, '2018-11-15 14:49:26');
INSERT INTO `Audit` VALUES (2, 'ReleaseHistory', 2, 'INSERT', NULL, b'0', 'apollo', '2018-11-15 14:49:26', NULL, '2018-11-15 14:49:26');
INSERT INTO `Audit` VALUES (3, 'Release', 4, 'INSERT', NULL, b'0', 'apollo', '2018-11-15 14:50:43', NULL, '2018-11-15 14:50:43');
INSERT INTO `Audit` VALUES (4, 'ReleaseHistory', 3, 'INSERT', NULL, b'0', 'apollo', '2018-11-15 14:50:48', NULL, '2018-11-15 14:50:48');
INSERT INTO `Audit` VALUES (5, 'Release', 5, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 13:45:16', NULL, '2018-11-19 13:45:16');
INSERT INTO `Audit` VALUES (6, 'ReleaseHistory', 4, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 13:45:16', NULL, '2018-11-19 13:45:16');
INSERT INTO `Audit` VALUES (7, 'Release', 6, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 18:09:09', NULL, '2018-11-19 18:09:09');
INSERT INTO `Audit` VALUES (8, 'ReleaseHistory', 5, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 18:09:11', NULL, '2018-11-19 18:09:11');
INSERT INTO `Audit` VALUES (9, 'Release', 7, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 19:53:15', NULL, '2018-11-19 19:53:15');
INSERT INTO `Audit` VALUES (10, 'ReleaseHistory', 6, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 19:53:15', NULL, '2018-11-19 19:53:15');
INSERT INTO `Audit` VALUES (11, 'Release', 8, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 19:53:50', NULL, '2018-11-19 19:53:50');
INSERT INTO `Audit` VALUES (12, 'ReleaseHistory', 7, 'INSERT', NULL, b'0', 'apollo', '2018-11-19 19:53:50', NULL, '2018-11-19 19:53:50');
INSERT INTO `Audit` VALUES (14, 'Namespace', 3, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 11:04:53', NULL, '2018-11-20 11:04:53');
INSERT INTO `Audit` VALUES (15, 'Release', 9, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 11:08:31', NULL, '2018-11-20 11:08:31');
INSERT INTO `Audit` VALUES (16, 'ReleaseHistory', 8, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 11:08:31', NULL, '2018-11-20 11:08:31');
INSERT INTO `Audit` VALUES (17, 'Release', 10, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 11:09:04', NULL, '2018-11-20 11:09:04');
INSERT INTO `Audit` VALUES (18, 'ReleaseHistory', 9, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 11:09:04', NULL, '2018-11-20 11:09:04');
INSERT INTO `Audit` VALUES (19, 'Namespace', 4, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 12:09:07', NULL, '2018-11-20 12:09:07');
INSERT INTO `Audit` VALUES (20, 'Namespace', 5, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 12:45:18', NULL, '2018-11-20 12:45:18');
INSERT INTO `Audit` VALUES (21, 'Namespace', 6, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 12:50:41', NULL, '2018-11-20 12:50:41');
INSERT INTO `Audit` VALUES (22, 'Namespace', 7, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:41:06', NULL, '2018-11-20 13:41:06');
INSERT INTO `Audit` VALUES (24, 'Namespace', 9, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:48:26', NULL, '2018-11-20 13:48:26');
INSERT INTO `Audit` VALUES (25, 'ClusterEntity', 2, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:48:26', NULL, '2018-11-20 13:48:26');
INSERT INTO `Audit` VALUES (26, 'Release', 11, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:49:33', NULL, '2018-11-20 13:49:33');
INSERT INTO `Audit` VALUES (27, 'ReleaseHistory', 10, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:49:33', NULL, '2018-11-20 13:49:33');
INSERT INTO `Audit` VALUES (28, 'Release', 12, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:50:12', NULL, '2018-11-20 13:50:12');
INSERT INTO `Audit` VALUES (29, 'ReleaseHistory', 11, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 13:50:12', NULL, '2018-11-20 13:50:12');
INSERT INTO `Audit` VALUES (30, 'Namespace', 10, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 14:53:08', NULL, '2018-11-20 14:53:08');
INSERT INTO `Audit` VALUES (31, 'ClusterEntity', 3, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 14:53:12', NULL, '2018-11-20 14:53:12');
INSERT INTO `Audit` VALUES (32, 'Release', 13, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 18:31:27', NULL, '2018-11-20 18:31:27');
INSERT INTO `Audit` VALUES (33, 'ReleaseHistory', 12, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 18:31:27', NULL, '2018-11-20 18:31:27');
INSERT INTO `Audit` VALUES (34, 'Release', 14, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 18:31:58', NULL, '2018-11-20 18:31:58');
INSERT INTO `Audit` VALUES (35, 'ReleaseHistory', 13, 'INSERT', NULL, b'0', 'apollo', '2018-11-20 18:31:58', NULL, '2018-11-20 18:31:58');
INSERT INTO `Audit` VALUES (36, 'Namespace', 11, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 20:32:18', NULL, '2018-12-01 20:32:18');
INSERT INTO `Audit` VALUES (37, 'ClusterEntity', 4, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 20:32:18', NULL, '2018-12-01 20:32:18');
INSERT INTO `Audit` VALUES (38, 'Release', 15, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 21:06:13', NULL, '2018-12-01 21:06:13');
INSERT INTO `Audit` VALUES (39, 'ReleaseHistory', 14, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 21:06:13', NULL, '2018-12-01 21:06:13');
INSERT INTO `Audit` VALUES (40, 'Item', 3, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:02:19', NULL, '2018-12-01 23:02:19');
INSERT INTO `Audit` VALUES (41, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:02:19', NULL, '2018-12-01 23:02:19');
INSERT INTO `Audit` VALUES (42, 'Item', 2, 'UPDATE', NULL, b'0', 'apollo', '2018-12-01 23:15:33', NULL, '2018-12-01 23:15:33');
INSERT INTO `Audit` VALUES (43, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-01 23:15:33', NULL, '2018-12-01 23:15:33');
INSERT INTO `Audit` VALUES (44, 'Release', 16, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:27:37', NULL, '2018-12-01 23:27:37');
INSERT INTO `Audit` VALUES (45, 'ReleaseHistory', 15, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:27:37', NULL, '2018-12-01 23:27:37');
INSERT INTO `Audit` VALUES (46, 'Release', 17, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:28:53', NULL, '2018-12-01 23:28:53');
INSERT INTO `Audit` VALUES (47, 'ReleaseHistory', 16, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:28:53', NULL, '2018-12-01 23:28:53');
INSERT INTO `Audit` VALUES (48, 'Item', 5, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:29:08', NULL, '2018-12-01 23:29:08');
INSERT INTO `Audit` VALUES (49, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-01 23:29:08', NULL, '2018-12-01 23:29:08');
INSERT INTO `Audit` VALUES (50, 'Item', 4, 'UPDATE', NULL, b'0', 'apollo', '2018-12-01 23:30:42', NULL, '2018-12-01 23:30:42');
INSERT INTO `Audit` VALUES (51, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-01 23:31:03', NULL, '2018-12-01 23:31:03');
INSERT INTO `Audit` VALUES (52, 'Release', 18, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:28:03', NULL, '2018-12-02 01:28:03');
INSERT INTO `Audit` VALUES (53, 'ReleaseHistory', 17, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:28:03', NULL, '2018-12-02 01:28:03');
INSERT INTO `Audit` VALUES (54, 'Release', 19, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:28:13', NULL, '2018-12-02 01:28:13');
INSERT INTO `Audit` VALUES (55, 'ReleaseHistory', 18, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:28:13', NULL, '2018-12-02 01:28:13');
INSERT INTO `Audit` VALUES (56, 'Release', 20, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:52:23', NULL, '2018-12-02 01:52:23');
INSERT INTO `Audit` VALUES (57, 'ReleaseHistory', 19, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:52:23', NULL, '2018-12-02 01:52:23');
INSERT INTO `Audit` VALUES (58, 'Release', 21, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:52:57', NULL, '2018-12-02 01:52:57');
INSERT INTO `Audit` VALUES (59, 'ReleaseHistory', 20, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:52:57', NULL, '2018-12-02 01:52:57');
INSERT INTO `Audit` VALUES (60, 'Release', 22, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:54:37', NULL, '2018-12-02 01:54:37');
INSERT INTO `Audit` VALUES (61, 'ReleaseHistory', 21, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:54:37', NULL, '2018-12-02 01:54:37');
INSERT INTO `Audit` VALUES (62, 'Release', 23, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:55:00', NULL, '2018-12-02 01:55:00');
INSERT INTO `Audit` VALUES (63, 'ReleaseHistory', 22, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 01:55:00', NULL, '2018-12-02 01:55:00');
INSERT INTO `Audit` VALUES (64, 'Item', 8, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:38:13', NULL, '2018-12-02 20:38:13');
INSERT INTO `Audit` VALUES (65, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:38:13', NULL, '2018-12-02 20:38:13');
INSERT INTO `Audit` VALUES (66, 'Item', 6, 'UPDATE', NULL, b'0', 'apollo', '2018-12-02 20:38:13', NULL, '2018-12-02 20:38:13');
INSERT INTO `Audit` VALUES (67, 'Item', 7, 'UPDATE', NULL, b'0', 'apollo', '2018-12-02 20:38:13', NULL, '2018-12-02 20:38:13');
INSERT INTO `Audit` VALUES (68, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-02 20:38:13', NULL, '2018-12-02 20:38:13');
INSERT INTO `Audit` VALUES (69, 'Item', 9, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:45:50', NULL, '2018-12-02 20:45:50');
INSERT INTO `Audit` VALUES (70, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:45:50', NULL, '2018-12-02 20:45:50');
INSERT INTO `Audit` VALUES (71, 'Item', 12, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:56:40', NULL, '2018-12-02 20:56:40');
INSERT INTO `Audit` VALUES (72, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:56:40', NULL, '2018-12-02 20:56:40');
INSERT INTO `Audit` VALUES (73, 'Item', 13, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:59:48', NULL, '2018-12-02 20:59:48');
INSERT INTO `Audit` VALUES (74, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:59:49', NULL, '2018-12-02 20:59:49');
INSERT INTO `Audit` VALUES (75, 'Release', 24, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:59:58', NULL, '2018-12-02 20:59:58');
INSERT INTO `Audit` VALUES (76, 'ReleaseHistory', 23, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 20:59:58', NULL, '2018-12-02 20:59:58');
INSERT INTO `Audit` VALUES (77, 'Namespace', 12, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:01:47', NULL, '2018-12-02 21:01:47');
INSERT INTO `Audit` VALUES (78, 'ClusterEntity', 5, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:01:47', NULL, '2018-12-02 21:01:47');
INSERT INTO `Audit` VALUES (79, 'Item', 15, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:02:52', NULL, '2018-12-02 21:02:52');
INSERT INTO `Audit` VALUES (80, 'Item', 16, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:02:52', NULL, '2018-12-02 21:02:52');
INSERT INTO `Audit` VALUES (81, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:02:52', NULL, '2018-12-02 21:02:52');
INSERT INTO `Audit` VALUES (82, 'Item', 14, 'UPDATE', NULL, b'0', 'apollo', '2018-12-02 21:02:52', NULL, '2018-12-02 21:02:52');
INSERT INTO `Audit` VALUES (83, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-02 21:02:52', NULL, '2018-12-02 21:02:52');
INSERT INTO `Audit` VALUES (84, 'Release', 25, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:03:00', NULL, '2018-12-02 21:03:00');
INSERT INTO `Audit` VALUES (85, 'ReleaseHistory', 24, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:03:00', NULL, '2018-12-02 21:03:00');
INSERT INTO `Audit` VALUES (86, 'Item', 17, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:33:57', NULL, '2018-12-02 21:33:57');
INSERT INTO `Audit` VALUES (87, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-02 21:33:57', NULL, '2018-12-02 21:33:57');
INSERT INTO `Audit` VALUES (88, 'Namespace', 13, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 10:34:59', NULL, '2018-12-03 10:34:59');
INSERT INTO `Audit` VALUES (89, 'ClusterEntity', 6, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 10:34:59', NULL, '2018-12-03 10:34:59');
INSERT INTO `Audit` VALUES (90, 'Item', 18, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 10:35:45', NULL, '2018-12-03 10:35:45');
INSERT INTO `Audit` VALUES (91, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 10:35:45', NULL, '2018-12-03 10:35:45');
INSERT INTO `Audit` VALUES (92, 'Release', 26, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:06:58', NULL, '2018-12-03 15:06:58');
INSERT INTO `Audit` VALUES (93, 'ReleaseHistory', 25, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:06:58', NULL, '2018-12-03 15:06:58');
INSERT INTO `Audit` VALUES (94, 'Namespace', 15, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:08:04', NULL, '2018-12-03 15:08:04');
INSERT INTO `Audit` VALUES (95, 'Item', 19, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:08:21', NULL, '2018-12-03 15:08:21');
INSERT INTO `Audit` VALUES (96, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:08:21', NULL, '2018-12-03 15:08:21');
INSERT INTO `Audit` VALUES (97, 'Release', 27, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:08:29', NULL, '2018-12-03 15:08:29');
INSERT INTO `Audit` VALUES (98, 'ReleaseHistory', 26, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:08:29', NULL, '2018-12-03 15:08:29');
INSERT INTO `Audit` VALUES (99, 'Item', 20, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:17:34', NULL, '2018-12-03 15:17:34');
INSERT INTO `Audit` VALUES (100, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:17:34', NULL, '2018-12-03 15:17:34');
INSERT INTO `Audit` VALUES (101, 'Release', 28, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:17:37', NULL, '2018-12-03 15:17:37');
INSERT INTO `Audit` VALUES (102, 'ReleaseHistory', 27, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:17:37', NULL, '2018-12-03 15:17:37');
INSERT INTO `Audit` VALUES (103, 'Release', 29, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:17:53', NULL, '2018-12-03 15:17:53');
INSERT INTO `Audit` VALUES (104, 'ReleaseHistory', 28, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:17:53', NULL, '2018-12-03 15:17:53');
INSERT INTO `Audit` VALUES (105, 'Item', 21, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (106, 'Item', 22, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (107, 'Item', 23, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (108, 'Item', 24, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (109, 'Item', 25, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (110, 'Item', 26, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (111, 'Item', 27, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (112, 'Item', 28, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (113, 'Item', 29, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (114, 'Item', 30, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (115, 'Item', 31, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (116, 'Item', 32, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (117, 'Item', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (118, 'Item', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (119, 'Item', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (120, 'Item', 36, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (121, 'Item', 37, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (122, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:55', NULL, '2018-12-03 15:20:55');
INSERT INTO `Audit` VALUES (123, 'Release', 30, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:58', NULL, '2018-12-03 15:20:58');
INSERT INTO `Audit` VALUES (124, 'ReleaseHistory', 29, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:20:58', NULL, '2018-12-03 15:20:58');
INSERT INTO `Audit` VALUES (125, 'Release', 31, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:21:06', NULL, '2018-12-03 15:21:06');
INSERT INTO `Audit` VALUES (126, 'ReleaseHistory', 30, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:21:06', NULL, '2018-12-03 15:21:06');
INSERT INTO `Audit` VALUES (127, 'Item', 38, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:09', NULL, '2018-12-03 15:51:09');
INSERT INTO `Audit` VALUES (128, 'Item', 39, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:09', NULL, '2018-12-03 15:51:09');
INSERT INTO `Audit` VALUES (129, 'Item', 40, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:09', NULL, '2018-12-03 15:51:09');
INSERT INTO `Audit` VALUES (130, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:09', NULL, '2018-12-03 15:51:09');
INSERT INTO `Audit` VALUES (131, 'Release', 32, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:11', NULL, '2018-12-03 15:51:11');
INSERT INTO `Audit` VALUES (132, 'ReleaseHistory', 31, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:11', NULL, '2018-12-03 15:51:11');
INSERT INTO `Audit` VALUES (133, 'Release', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:19', NULL, '2018-12-03 15:51:19');
INSERT INTO `Audit` VALUES (134, 'ReleaseHistory', 32, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 15:51:19', NULL, '2018-12-03 15:51:19');
INSERT INTO `Audit` VALUES (135, 'Item', 20, 'UPDATE', NULL, b'0', 'apollo', '2018-12-03 17:21:42', NULL, '2018-12-03 17:21:42');
INSERT INTO `Audit` VALUES (136, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-03 17:21:42', NULL, '2018-12-03 17:21:42');
INSERT INTO `Audit` VALUES (137, 'Release', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 17:21:45', NULL, '2018-12-03 17:21:45');
INSERT INTO `Audit` VALUES (138, 'ReleaseHistory', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 17:21:45', NULL, '2018-12-03 17:21:45');
INSERT INTO `Audit` VALUES (139, 'Release', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 17:31:56', NULL, '2018-12-03 17:31:56');
INSERT INTO `Audit` VALUES (140, 'ReleaseHistory', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 17:31:56', NULL, '2018-12-03 17:31:56');
INSERT INTO `Audit` VALUES (141, 'Item', 41, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:24:46', NULL, '2018-12-03 18:24:46');
INSERT INTO `Audit` VALUES (142, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:24:46', NULL, '2018-12-03 18:24:46');
INSERT INTO `Audit` VALUES (143, 'Release', 36, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:25:00', NULL, '2018-12-03 18:25:00');
INSERT INTO `Audit` VALUES (144, 'ReleaseHistory', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:25:00', NULL, '2018-12-03 18:25:00');
INSERT INTO `Audit` VALUES (145, 'Item', 42, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:28:01', NULL, '2018-12-03 18:28:01');
INSERT INTO `Audit` VALUES (146, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:28:01', NULL, '2018-12-03 18:28:01');
INSERT INTO `Audit` VALUES (147, 'Release', 37, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:28:09', NULL, '2018-12-03 18:28:09');
INSERT INTO `Audit` VALUES (148, 'ReleaseHistory', 36, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 18:28:09', NULL, '2018-12-03 18:28:09');
INSERT INTO `Audit` VALUES (149, 'Item', 43, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:00:33', NULL, '2018-12-03 19:00:33');
INSERT INTO `Audit` VALUES (150, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:00:33', NULL, '2018-12-03 19:00:33');
INSERT INTO `Audit` VALUES (151, 'Release', 38, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:00:40', NULL, '2018-12-03 19:00:40');
INSERT INTO `Audit` VALUES (152, 'ReleaseHistory', 37, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:00:40', NULL, '2018-12-03 19:00:40');
INSERT INTO `Audit` VALUES (153, 'Release', 39, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:01:35', NULL, '2018-12-03 19:01:35');
INSERT INTO `Audit` VALUES (154, 'ReleaseHistory', 38, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:01:35', NULL, '2018-12-03 19:01:35');
INSERT INTO `Audit` VALUES (155, 'Release', 40, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:32:08', NULL, '2018-12-03 19:32:08');
INSERT INTO `Audit` VALUES (156, 'ReleaseHistory', 39, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:32:08', NULL, '2018-12-03 19:32:08');
INSERT INTO `Audit` VALUES (157, 'Release', 41, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:33:12', NULL, '2018-12-03 19:33:12');
INSERT INTO `Audit` VALUES (158, 'ReleaseHistory', 40, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:33:35', NULL, '2018-12-03 19:33:35');
INSERT INTO `Audit` VALUES (159, 'Release', 42, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:57:54', NULL, '2018-12-03 19:57:54');
INSERT INTO `Audit` VALUES (160, 'ReleaseHistory', 41, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 19:57:54', NULL, '2018-12-03 19:57:54');
INSERT INTO `Audit` VALUES (161, 'Item', 44, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:08:41', NULL, '2018-12-03 20:08:41');
INSERT INTO `Audit` VALUES (162, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:08:41', NULL, '2018-12-03 20:08:41');
INSERT INTO `Audit` VALUES (163, 'Release', 43, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:09:04', NULL, '2018-12-03 20:09:04');
INSERT INTO `Audit` VALUES (164, 'ReleaseHistory', 42, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:09:04', NULL, '2018-12-03 20:09:04');
INSERT INTO `Audit` VALUES (165, 'Release', 44, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:11:17', NULL, '2018-12-03 20:11:17');
INSERT INTO `Audit` VALUES (166, 'ReleaseHistory', 43, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:11:17', NULL, '2018-12-03 20:11:17');
INSERT INTO `Audit` VALUES (167, 'Release', 45, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:12:56', NULL, '2018-12-03 20:12:56');
INSERT INTO `Audit` VALUES (168, 'ReleaseHistory', 44, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:12:56', NULL, '2018-12-03 20:12:56');
INSERT INTO `Audit` VALUES (169, 'Item', 45, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:25:06', NULL, '2018-12-03 20:25:06');
INSERT INTO `Audit` VALUES (170, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:25:06', NULL, '2018-12-03 20:25:06');
INSERT INTO `Audit` VALUES (171, 'Release', 46, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:25:16', NULL, '2018-12-03 20:25:16');
INSERT INTO `Audit` VALUES (172, 'ReleaseHistory', 45, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:25:16', NULL, '2018-12-03 20:25:16');
INSERT INTO `Audit` VALUES (173, 'Item', 20, 'UPDATE', NULL, b'0', 'apollo', '2018-12-03 20:29:17', NULL, '2018-12-03 20:29:17');
INSERT INTO `Audit` VALUES (174, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-03 20:29:17', NULL, '2018-12-03 20:29:17');
INSERT INTO `Audit` VALUES (175, 'Release', 47, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:29:20', NULL, '2018-12-03 20:29:20');
INSERT INTO `Audit` VALUES (176, 'ReleaseHistory', 46, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:29:20', NULL, '2018-12-03 20:29:20');
INSERT INTO `Audit` VALUES (177, 'Release', 48, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:29:38', NULL, '2018-12-03 20:29:38');
INSERT INTO `Audit` VALUES (178, 'ReleaseHistory', 47, 'INSERT', NULL, b'0', 'apollo', '2018-12-03 20:29:38', NULL, '2018-12-03 20:29:38');
INSERT INTO `Audit` VALUES (179, 'Namespace', 16, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:54:02', NULL, '2018-12-04 10:54:02');
INSERT INTO `Audit` VALUES (180, 'ClusterEntity', 7, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:54:02', NULL, '2018-12-04 10:54:02');
INSERT INTO `Audit` VALUES (181, 'Item', 2, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:54:18', NULL, '2018-12-04 10:54:18');
INSERT INTO `Audit` VALUES (182, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:54:18', NULL, '2018-12-04 10:54:18');
INSERT INTO `Audit` VALUES (183, 'Release', 49, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:54:24', NULL, '2018-12-04 10:54:24');
INSERT INTO `Audit` VALUES (184, 'ReleaseHistory', 48, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:54:24', NULL, '2018-12-04 10:54:24');
INSERT INTO `Audit` VALUES (185, 'Item', 3, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:29', NULL, '2018-12-04 10:56:29');
INSERT INTO `Audit` VALUES (186, 'Item', 4, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:29', NULL, '2018-12-04 10:56:29');
INSERT INTO `Audit` VALUES (187, 'Item', 5, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:29', NULL, '2018-12-04 10:56:29');
INSERT INTO `Audit` VALUES (188, 'Item', 6, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:29', NULL, '2018-12-04 10:56:29');
INSERT INTO `Audit` VALUES (189, 'Item', 7, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (190, 'Item', 8, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (191, 'Item', 9, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (192, 'Item', 10, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (193, 'Item', 11, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (194, 'Item', 12, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (195, 'Item', 13, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (196, 'Item', 14, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (197, 'Item', 15, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (198, 'Item', 16, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (199, 'Item', 17, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (200, 'Item', 18, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (201, 'Item', 19, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (202, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:30', NULL, '2018-12-04 10:56:30');
INSERT INTO `Audit` VALUES (203, 'Release', 50, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:33', NULL, '2018-12-04 10:56:33');
INSERT INTO `Audit` VALUES (204, 'ReleaseHistory', 49, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:56:33', NULL, '2018-12-04 10:56:33');
INSERT INTO `Audit` VALUES (205, 'Item', 20, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:10', NULL, '2018-12-04 10:57:10');
INSERT INTO `Audit` VALUES (206, 'Item', 21, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:10', NULL, '2018-12-04 10:57:10');
INSERT INTO `Audit` VALUES (207, 'Item', 22, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:10', NULL, '2018-12-04 10:57:10');
INSERT INTO `Audit` VALUES (208, 'Item', 23, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:10', NULL, '2018-12-04 10:57:10');
INSERT INTO `Audit` VALUES (209, 'Item', 24, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:10', NULL, '2018-12-04 10:57:10');
INSERT INTO `Audit` VALUES (210, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:10', NULL, '2018-12-04 10:57:10');
INSERT INTO `Audit` VALUES (211, 'Release', 51, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:13', NULL, '2018-12-04 10:57:13');
INSERT INTO `Audit` VALUES (212, 'ReleaseHistory', 50, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:13', NULL, '2018-12-04 10:57:13');
INSERT INTO `Audit` VALUES (213, 'Release', 52, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:30', NULL, '2018-12-04 10:57:30');
INSERT INTO `Audit` VALUES (214, 'ReleaseHistory', 51, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:30', NULL, '2018-12-04 10:57:30');
INSERT INTO `Audit` VALUES (215, 'Item', 25, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:42', NULL, '2018-12-04 10:57:42');
INSERT INTO `Audit` VALUES (216, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:42', NULL, '2018-12-04 10:57:42');
INSERT INTO `Audit` VALUES (217, 'Release', 53, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:49', NULL, '2018-12-04 10:57:49');
INSERT INTO `Audit` VALUES (218, 'ReleaseHistory', 52, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 10:57:49', NULL, '2018-12-04 10:57:49');
INSERT INTO `Audit` VALUES (219, 'Item', 26, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:06:26', NULL, '2018-12-04 11:06:26');
INSERT INTO `Audit` VALUES (220, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:06:26', NULL, '2018-12-04 11:06:26');
INSERT INTO `Audit` VALUES (221, 'Release', 54, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:06:47', NULL, '2018-12-04 11:06:47');
INSERT INTO `Audit` VALUES (222, 'ReleaseHistory', 53, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:06:47', NULL, '2018-12-04 11:06:47');
INSERT INTO `Audit` VALUES (223, 'Item', 27, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:15:23', NULL, '2018-12-04 11:15:23');
INSERT INTO `Audit` VALUES (224, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:15:23', NULL, '2018-12-04 11:15:23');
INSERT INTO `Audit` VALUES (225, 'Item', 28, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:45:51', NULL, '2018-12-04 11:45:51');
INSERT INTO `Audit` VALUES (226, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:45:51', NULL, '2018-12-04 11:45:51');
INSERT INTO `Audit` VALUES (227, 'Item', 29, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:48:30', NULL, '2018-12-04 11:48:30');
INSERT INTO `Audit` VALUES (228, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 11:48:30', NULL, '2018-12-04 11:48:30');
INSERT INTO `Audit` VALUES (229, 'Release', 55, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 13:43:08', NULL, '2018-12-04 13:43:08');
INSERT INTO `Audit` VALUES (230, 'ReleaseHistory', 54, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 13:43:08', NULL, '2018-12-04 13:43:08');
INSERT INTO `Audit` VALUES (231, 'Item', 30, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 13:45:36', NULL, '2018-12-04 13:45:36');
INSERT INTO `Audit` VALUES (232, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-04 13:45:36', NULL, '2018-12-04 13:45:36');
INSERT INTO `Audit` VALUES (233, 'Item', 30, 'UPDATE', NULL, b'0', 'apollo', '2018-12-04 13:46:26', NULL, '2018-12-04 13:46:26');
INSERT INTO `Audit` VALUES (234, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-04 13:46:26', NULL, '2018-12-04 13:46:26');
INSERT INTO `Audit` VALUES (235, 'Release', 56, 'INSERT', NULL, b'0', 'apollo', '2018-12-05 15:44:20', NULL, '2018-12-05 15:44:20');
INSERT INTO `Audit` VALUES (236, 'ReleaseHistory', 55, 'INSERT', NULL, b'0', 'apollo', '2018-12-05 15:44:20', NULL, '2018-12-05 15:44:20');
COMMIT;

-- ----------------------------
-- Table structure for Authorities
-- ----------------------------
DROP TABLE IF EXISTS `Authorities`;
CREATE TABLE `Authorities` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `Username` varchar(50) NOT NULL,
  `Authority` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of Authorities
-- ----------------------------
BEGIN;
INSERT INTO `Authorities` VALUES (1, 'apollo', 'ROLE_user');
COMMIT;

-- ----------------------------
-- Table structure for Cluster
-- ----------------------------
DROP TABLE IF EXISTS `Cluster`;
CREATE TABLE `Cluster` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `Name` varchar(32) NOT NULL DEFAULT '' COMMENT '集群名字',
  `AppId` varchar(32) NOT NULL DEFAULT '' COMMENT 'App id',
  `ParentClusterId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父cluster',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`) USING BTREE,
  KEY `IX_AppId_Name` (`AppId`,`Name`),
  KEY `IX_ParentClusterId` (`ParentClusterId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='集群';

-- ----------------------------
-- Records of Cluster
-- ----------------------------
BEGIN;
INSERT INTO `Cluster` VALUES (1, 'default', 'SampleApp', 0, b'0', '', '2018-11-11 17:34:08', '', '2018-11-16 11:10:47');
INSERT INTO `Cluster` VALUES (2, 'default', 'test12', 0, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Cluster` VALUES (3, 'default', 'test13', 0, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Cluster` VALUES (4, 'default', 'test15', 0, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Cluster` VALUES (5, 'default', 'test17', 0, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Cluster` VALUES (6, 'default', 'platform-sample-provider', 0, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Cluster` VALUES (7, 'default', 'tes16', 0, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for Commit
-- ----------------------------
DROP TABLE IF EXISTS `Commit`;
CREATE TABLE `Commit` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ChangeSets` longtext NOT NULL COMMENT '修改变更集',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `ClusterName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ClusterName',
  `NamespaceName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'namespaceName',
  `Comment` varchar(500) DEFAULT NULL COMMENT '备注',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `Env` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `AppId` (`AppId`(191)),
  KEY `ClusterName` (`ClusterName`(191)),
  KEY `NamespaceName` (`NamespaceName`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='commit 历史表';

-- ----------------------------
-- Records of Commit
-- ----------------------------
BEGIN;
INSERT INTO `Commit` VALUES (1, '{\"createItems\":[{\"namespaceId\":16,\"key\":\"999\",\"value\":\"999\",\"comment\":\"\",\"lineNum\":6,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'tes16', 'default', 'application', NULL, b'0', 'apollo', '2018-12-04 13:45:36', 'apollo', '2018-12-04 13:45:36', 'DEV');
INSERT INTO `Commit` VALUES (2, '{\"createItems\":[],\"updateItems\":[{\"namespaceId\":16,\"key\":\"999\",\"value\":\"99911\",\"comment\":\"\",\"lineNum\":6,\"id\":30,\"isDeleted\":false}],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'tes16', 'default', 'application', NULL, b'0', 'apollo', '2018-12-04 13:46:44', 'apollo', '2018-12-04 13:46:44', 'DEV');
COMMIT;

-- ----------------------------
-- Table structure for Consumer
-- ----------------------------
DROP TABLE IF EXISTS `Consumer`;
CREATE TABLE `Consumer` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `Name` varchar(500) NOT NULL DEFAULT 'default' COMMENT '应用名',
  `OrgId` varchar(32) NOT NULL DEFAULT 'default' COMMENT '部门Id',
  `OrgName` varchar(64) NOT NULL DEFAULT 'default' COMMENT '部门名字',
  `OwnerName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerName',
  `OwnerEmail` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerEmail',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId` (`AppId`(191)),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='开放API消费者';

-- ----------------------------
-- Table structure for ConsumerAudit
-- ----------------------------
DROP TABLE IF EXISTS `ConsumerAudit`;
CREATE TABLE `ConsumerAudit` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `ConsumerId` int(11) unsigned DEFAULT NULL COMMENT 'Consumer Id',
  `Uri` varchar(1024) NOT NULL DEFAULT '' COMMENT '访问的Uri',
  `Method` varchar(16) NOT NULL DEFAULT '' COMMENT '访问的Method',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_ConsumerId` (`ConsumerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='consumer审计表';

-- ----------------------------
-- Table structure for ConsumerRole
-- ----------------------------
DROP TABLE IF EXISTS `ConsumerRole`;
CREATE TABLE `ConsumerRole` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `ConsumerId` int(11) unsigned DEFAULT NULL COMMENT 'Consumer Id',
  `RoleId` int(10) unsigned DEFAULT NULL COMMENT 'Role Id',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_RoleId` (`RoleId`),
  KEY `IX_ConsumerId_RoleId` (`ConsumerId`,`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='consumer和role的绑定表';

-- ----------------------------
-- Table structure for ConsumerToken
-- ----------------------------
DROP TABLE IF EXISTS `ConsumerToken`;
CREATE TABLE `ConsumerToken` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `ConsumerId` int(11) unsigned DEFAULT NULL COMMENT 'ConsumerId',
  `Token` varchar(128) NOT NULL DEFAULT '' COMMENT 'token',
  `Expires` datetime NOT NULL DEFAULT '2099-01-01 00:00:00' COMMENT 'token失效时间',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Token` (`Token`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='consumer token表';

-- ----------------------------
-- Table structure for Favorite
-- ----------------------------
DROP TABLE IF EXISTS `Favorite`;
CREATE TABLE `Favorite` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `UserId` varchar(32) NOT NULL DEFAULT 'default' COMMENT '收藏的用户',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `Position` int(32) NOT NULL DEFAULT '10000' COMMENT '收藏顺序',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId` (`AppId`(191)),
  KEY `IX_UserId` (`UserId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='应用收藏表';

-- ----------------------------
-- Table structure for GrayReleaseRule
-- ----------------------------
DROP TABLE IF EXISTS `GrayReleaseRule`;
CREATE TABLE `GrayReleaseRule` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `AppId` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `ClusterName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'Cluster Name',
  `NamespaceName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'Namespace Name',
  `BranchName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'branch name',
  `Rules` varchar(16000) DEFAULT '[]' COMMENT '灰度规则',
  `ReleaseId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '灰度对应的release',
  `BranchStatus` tinyint(2) DEFAULT '1' COMMENT '灰度分支状态: 0:删除分支,1:正在使用的规则 2：全量发布',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_Namespace` (`AppId`,`ClusterName`,`NamespaceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='灰度规则表';

-- ----------------------------
-- Table structure for Instance
-- ----------------------------
DROP TABLE IF EXISTS `Instance`;
CREATE TABLE `Instance` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `AppId` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `ClusterName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'ClusterName',
  `DataCenter` varchar(64) NOT NULL DEFAULT 'default' COMMENT 'Data Center Name',
  `Ip` varchar(32) NOT NULL DEFAULT '' COMMENT 'instance ip',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `Env` varchar(32) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_UNIQUE_KEY` (`AppId`,`ClusterName`,`Ip`,`DataCenter`),
  KEY `IX_IP` (`Ip`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='使用配置的应用实例';

-- ----------------------------
-- Records of Instance
-- ----------------------------
BEGIN;
INSERT INTO `Instance` VALUES (1, 'platform-sample-provider', 'default', '', '10.0.52.66', '2018-12-04 14:41:46', '2018-12-04 14:41:46', 'DEV');
COMMIT;

-- ----------------------------
-- Table structure for InstanceConfig
-- ----------------------------
DROP TABLE IF EXISTS `InstanceConfig`;
CREATE TABLE `InstanceConfig` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `InstanceId` int(11) unsigned DEFAULT NULL COMMENT 'Instance Id',
  `ConfigAppId` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'Config App Id',
  `ConfigClusterName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'Config Cluster Name',
  `ConfigNamespaceName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'Config Namespace Name',
  `ReleaseKey` varchar(64) NOT NULL DEFAULT '' COMMENT '发布的Key',
  `ReleaseDeliveryTime` timestamp NULL DEFAULT NULL COMMENT '配置获取时间',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_UNIQUE_KEY` (`InstanceId`,`ConfigAppId`,`ConfigNamespaceName`),
  KEY `IX_ReleaseKey` (`ReleaseKey`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_Valid_Namespace` (`ConfigAppId`,`ConfigClusterName`,`ConfigNamespaceName`,`DataChange_LastTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='应用实例的配置信息';

-- ----------------------------
-- Table structure for Item
-- ----------------------------
DROP TABLE IF EXISTS `Item`;
CREATE TABLE `Item` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `NamespaceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '集群NamespaceId',
  `Key` varchar(128) NOT NULL DEFAULT 'default' COMMENT '配置项Key',
  `Value` longtext NOT NULL COMMENT '配置项值',
  `Comment` varchar(1024) DEFAULT '' COMMENT '注释',
  `LineNum` int(10) unsigned DEFAULT '0' COMMENT '行号',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `Env` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_GroupId` (`NamespaceId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='配置项目';

-- ----------------------------
-- Records of Item
-- ----------------------------
BEGIN;
INSERT INTO `Item` VALUES (1, 1, 'timeout', '100', 'sample timeout配置', 1, b'0', 'default', '2018-11-11 17:34:08', '', '2018-12-04 10:51:48', 'DEV');
INSERT INTO `Item` VALUES (2, 16, '11', '12', '', 1, b'0', 'apollo', '2018-12-04 10:54:18', 'apollo', '2018-12-04 10:54:18', 'DEV');
INSERT INTO `Item` VALUES (3, 13, 'spring.datasource.name', 'datasource', '', 1, b'0', 'apollo', '2018-12-04 10:56:29', 'apollo', '2018-12-04 10:56:29', 'DEV');
INSERT INTO `Item` VALUES (4, 13, 'spring.datasource.type', 'com.alibaba.druid.pool.DruidDataSource', '', 2, b'0', 'apollo', '2018-12-04 10:56:29', 'apollo', '2018-12-04 10:56:29', 'DEV');
INSERT INTO `Item` VALUES (5, 13, 'spring.datasource.driverClassName', 'com.mysql.jdbc.Driver', '', 3, b'0', 'apollo', '2018-12-04 10:56:29', 'apollo', '2018-12-04 10:56:29', 'DEV');
INSERT INTO `Item` VALUES (6, 13, 'spring.datasource.filters', 'stat', '', 4, b'0', 'apollo', '2018-12-04 10:56:29', 'apollo', '2018-12-04 10:56:29', 'DEV');
INSERT INTO `Item` VALUES (7, 13, 'spring.datasource.maxActive', '20', '', 5, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (8, 13, 'spring.datasource.initialSize', '1', '', 6, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (9, 13, 'spring.datasource.maxWait', '60000', '', 7, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (10, 13, 'spring.datasource.minIdle', '1', '', 8, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (11, 13, 'spring.datasource.timeBetweenEvictionRunsMillis', '60000', '', 9, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (12, 13, 'spring.datasource.minEvictableIdleTimeMillis', '300000', '', 10, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (13, 13, 'spring.datasource.validationQuery', 'select 1', '', 11, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (14, 13, 'spring.datasource.testWhileIdle', 'true', '', 12, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (15, 13, 'spring.datasource.testOnBorrow', 'false', '', 13, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (16, 13, 'spring.datasource.testOnReturn', 'false', '', 14, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (17, 13, 'spring.datasource.poolPreparedStatements', 'true', '', 15, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (18, 13, 'spring.datasource.maxOpenPreparedStatements', '20', '', 16, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (19, 13, 'mybatis.config-location', 'classpath:mybatis-config.xml', '', 17, b'0', 'apollo', '2018-12-04 10:56:30', 'apollo', '2018-12-04 10:56:30', 'DEV');
INSERT INTO `Item` VALUES (20, 13, 'spring.datasource.url', 'jdbc:mysql://192.168.1.95:3306/ops-upms?useUnicode=true&amp;characterEncoding=UTF-8', '', 18, b'0', 'apollo', '2018-12-04 10:57:10', 'apollo', '2018-12-04 10:57:10', 'DEV');
INSERT INTO `Item` VALUES (21, 13, 'spring.datasource.username', 'ops_upms', '', 19, b'0', 'apollo', '2018-12-04 10:57:10', 'apollo', '2018-12-04 10:57:10', 'DEV');
INSERT INTO `Item` VALUES (22, 13, 'spring.datasource.password', 'ops_upms', '', 20, b'0', 'apollo', '2018-12-04 10:57:10', 'apollo', '2018-12-04 10:57:10', 'DEV');
INSERT INTO `Item` VALUES (23, 13, 'server.port', '9091', '', 21, b'0', 'apollo', '2018-12-04 10:57:10', 'apollo', '2018-12-04 10:57:10', 'DEV');
INSERT INTO `Item` VALUES (24, 13, 'test.name', 'liudayang11', '', 22, b'0', 'apollo', '2018-12-04 10:57:10', 'apollo', '2018-12-05 15:44:12', 'DEV');
INSERT INTO `Item` VALUES (25, 15, 'test.name', 'liudayang', '', 1, b'0', 'apollo', '2018-12-04 10:57:42', 'apollo', '2018-12-04 10:57:42', 'DEV');
INSERT INTO `Item` VALUES (26, 16, '22', '22', '', 2, b'0', 'apollo', '2018-12-04 11:06:26', 'apollo', '2018-12-04 11:06:26', 'DEV');
INSERT INTO `Item` VALUES (27, 16, '33', '23', '', 3, b'0', 'apollo', '2018-12-04 11:15:23', 'apollo', '2018-12-04 11:15:23', 'DEV');
INSERT INTO `Item` VALUES (28, 16, '55', '66', '', 4, b'0', 'apollo', '2018-12-04 11:45:51', 'apollo', '2018-12-04 11:45:51', 'DEV');
INSERT INTO `Item` VALUES (29, 16, '66', '88', '', 5, b'0', 'apollo', '2018-12-04 11:48:30', 'apollo', '2018-12-04 11:48:30', 'DEV');
INSERT INTO `Item` VALUES (30, 16, '999', '99911', '', 6, b'0', 'apollo', '2018-12-04 13:45:36', 'apollo', '2018-12-04 13:46:25', 'DEV');
COMMIT;

-- ----------------------------
-- Table structure for Namespace
-- ----------------------------
DROP TABLE IF EXISTS `Namespace`;
CREATE TABLE `Namespace` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `ClusterName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'Cluster Name',
  `NamespaceName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'Namespace Name',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId_ClusterName_NamespaceName` (`AppId`(191),`ClusterName`(191),`NamespaceName`(191)),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_NamespaceName` (`NamespaceName`(191))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='命名空间';

-- ----------------------------
-- Records of Namespace
-- ----------------------------
BEGIN;
INSERT INTO `Namespace` VALUES (1, 'SampleApp', 'default', 'application', b'0', 'default', '2018-11-11 17:34:08', '', '2018-11-11 17:34:08');
INSERT INTO `Namespace` VALUES (3, 'SampleApp', 'default', 'TEST1.test667', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Namespace` VALUES (4, 'test6', 'default', 'application', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Namespace` VALUES (5, 'test7', 'default', 'application', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Namespace` VALUES (6, 'test8', 'default', 'application', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Namespace` VALUES (7, 'test9', 'default', 'application', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Namespace` VALUES (9, 'test12', 'default', 'application', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Namespace` VALUES (10, 'test13', 'default', 'application', b'0', 'apollo', '2018-11-20 14:53:07', 'apollo', '2018-11-20 14:53:07');
INSERT INTO `Namespace` VALUES (11, 'test15', 'default', 'application', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Namespace` VALUES (12, 'test17', 'default', 'application', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Namespace` VALUES (13, 'platform-sample-provider', 'default', 'application', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Namespace` VALUES (14, 'platform-sample-provider', 'default', 'TEST1.test', b'0', 'apollo', '2018-12-03 15:07:42', 'apollo', '2018-12-03 15:07:42');
INSERT INTO `Namespace` VALUES (15, 'platform-sample-provider', 'default', 'TEST1.test3', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Namespace` VALUES (16, 'tes16', 'default', 'application', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for NamespaceLock
-- ----------------------------
DROP TABLE IF EXISTS `NamespaceLock`;
CREATE TABLE `NamespaceLock` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `NamespaceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '集群NamespaceId',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT 'default' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `IsDeleted` bit(1) DEFAULT b'0' COMMENT '软删除',
  `Env` varchar(20) NOT NULL COMMENT '环境变量',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_NamespaceId` (`NamespaceId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='namespace的编辑锁';

-- ----------------------------
-- Table structure for Permission
-- ----------------------------
DROP TABLE IF EXISTS `Permission`;
CREATE TABLE `Permission` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `PermissionType` varchar(32) NOT NULL DEFAULT '' COMMENT '权限类型',
  `TargetId` varchar(256) NOT NULL DEFAULT '' COMMENT '权限对象类型',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_TargetId_PermissionType` (`TargetId`(191),`PermissionType`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='permission表';

-- ----------------------------
-- Records of Permission
-- ----------------------------
BEGIN;
INSERT INTO `Permission` VALUES (1, 'CreateCluster', 'SampleApp', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Permission` VALUES (2, 'CreateNamespace', 'SampleApp', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Permission` VALUES (3, 'AssignRole', 'SampleApp', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Permission` VALUES (4, 'ModifyNamespace', 'SampleApp+application', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Permission` VALUES (5, 'ReleaseNamespace', 'SampleApp+application', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Permission` VALUES (6, 'ModifyNamespace', 'SampleApp+TEST1.test', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Permission` VALUES (7, 'ReleaseNamespace', 'SampleApp+TEST1.test', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Permission` VALUES (8, 'ModifyNamespace', 'SampleApp+TEST1.test+DEV', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Permission` VALUES (9, 'ReleaseNamespace', 'SampleApp+TEST1.test+DEV', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Permission` VALUES (10, 'ModifyNamespace', 'SampleApp+TEST1.aa', b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `Permission` VALUES (11, 'ReleaseNamespace', 'SampleApp+TEST1.aa', b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `Permission` VALUES (12, 'ModifyNamespace', 'SampleApp+TEST1.aa+DEV', b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `Permission` VALUES (13, 'ReleaseNamespace', 'SampleApp+TEST1.aa+DEV', b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `Permission` VALUES (14, 'CreateCluster', 'mid', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (15, 'CreateNamespace', 'mid', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (16, 'AssignRole', 'mid', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (17, 'ModifyNamespace', 'mid+application', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (18, 'ReleaseNamespace', 'mid+application', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (19, 'ModifyNamespace', 'mid+application+DEV', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (20, 'ReleaseNamespace', 'mid+application+DEV', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Permission` VALUES (21, 'ModifyNamespace', 'SampleApp+TEST1.monitor', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Permission` VALUES (22, 'ReleaseNamespace', 'SampleApp+TEST1.monitor', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Permission` VALUES (23, 'ModifyNamespace', 'SampleApp+TEST1.monitor+DEV', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Permission` VALUES (24, 'ReleaseNamespace', 'SampleApp+TEST1.monitor+DEV', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Permission` VALUES (25, 'ModifyNamespace', 'SampleApp+TEST1.test33', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Permission` VALUES (26, 'ReleaseNamespace', 'SampleApp+TEST1.test33', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Permission` VALUES (27, 'ModifyNamespace', 'SampleApp+TEST1.test33+DEV', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Permission` VALUES (28, 'ReleaseNamespace', 'SampleApp+TEST1.test33+DEV', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Permission` VALUES (29, 'ModifyNamespace', 'SampleApp+TEST1.test55', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Permission` VALUES (30, 'ReleaseNamespace', 'SampleApp+TEST1.test55', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Permission` VALUES (31, 'ModifyNamespace', 'SampleApp+TEST1.test55+DEV', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Permission` VALUES (32, 'ReleaseNamespace', 'SampleApp+TEST1.test55+DEV', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Permission` VALUES (33, 'ModifyNamespace', 'SampleApp+TEST1.test667', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Permission` VALUES (34, 'ReleaseNamespace', 'SampleApp+TEST1.test667', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Permission` VALUES (35, 'ModifyNamespace', 'SampleApp+TEST1.test667+DEV', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Permission` VALUES (36, 'ReleaseNamespace', 'SampleApp+TEST1.test667+DEV', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Permission` VALUES (37, 'CreateCluster', 'test1', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (38, 'CreateNamespace', 'test1', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (39, 'AssignRole', 'test1', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (40, 'ModifyNamespace', 'test1+application', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (41, 'ReleaseNamespace', 'test1+application', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (42, 'ModifyNamespace', 'test1+application+DEV', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (43, 'ReleaseNamespace', 'test1+application+DEV', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Permission` VALUES (44, 'CreateCluster', 'test5', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (45, 'CreateNamespace', 'test5', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (46, 'AssignRole', 'test5', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (47, 'ModifyNamespace', 'test5+application', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (48, 'ReleaseNamespace', 'test5+application', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (49, 'ModifyNamespace', 'test5+application+DEV', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (50, 'ReleaseNamespace', 'test5+application+DEV', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Permission` VALUES (51, 'CreateCluster', 'test6', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Permission` VALUES (52, 'CreateNamespace', 'test6', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Permission` VALUES (53, 'AssignRole', 'test6', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Permission` VALUES (54, 'ModifyNamespace', 'test6+application', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Permission` VALUES (55, 'ReleaseNamespace', 'test6+application', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Permission` VALUES (56, 'ModifyNamespace', 'test6+application+DEV', b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `Permission` VALUES (57, 'ReleaseNamespace', 'test6+application+DEV', b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `Permission` VALUES (58, 'CreateCluster', 'test7', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (59, 'CreateNamespace', 'test7', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (60, 'AssignRole', 'test7', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (61, 'ModifyNamespace', 'test7+application', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (62, 'ReleaseNamespace', 'test7+application', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (63, 'ModifyNamespace', 'test7+application+DEV', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (64, 'ReleaseNamespace', 'test7+application+DEV', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Permission` VALUES (65, 'CreateCluster', 'test8', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (66, 'CreateNamespace', 'test8', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (67, 'AssignRole', 'test8', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (68, 'ModifyNamespace', 'test8+application', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (69, 'ReleaseNamespace', 'test8+application', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (70, 'ModifyNamespace', 'test8+application+DEV', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (71, 'ReleaseNamespace', 'test8+application+DEV', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Permission` VALUES (72, 'CreateCluster', 'test9', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (73, 'CreateNamespace', 'test9', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (74, 'AssignRole', 'test9', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (75, 'ModifyNamespace', 'test9+application', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (76, 'ReleaseNamespace', 'test9+application', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (77, 'ModifyNamespace', 'test9+application+DEV', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (78, 'ReleaseNamespace', 'test9+application+DEV', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Permission` VALUES (84, 'CreateCluster', 'test12', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (85, 'CreateNamespace', 'test12', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (86, 'AssignRole', 'test12', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (87, 'ModifyNamespace', 'test12+application', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (88, 'ReleaseNamespace', 'test12+application', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (89, 'ModifyNamespace', 'test12+application+DEV', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (90, 'ReleaseNamespace', 'test12+application+DEV', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Permission` VALUES (91, 'CreateCluster', 'test13', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (92, 'CreateNamespace', 'test13', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (93, 'AssignRole', 'test13', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (94, 'ModifyNamespace', 'test13+application', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (95, 'ReleaseNamespace', 'test13+application', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (96, 'ModifyNamespace', 'test13+application+DEV', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (97, 'ReleaseNamespace', 'test13+application+DEV', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Permission` VALUES (98, 'CreateCluster', 'test15', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (99, 'CreateNamespace', 'test15', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (100, 'AssignRole', 'test15', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (101, 'ModifyNamespace', 'test15+application', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (102, 'ReleaseNamespace', 'test15+application', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (103, 'ModifyNamespace', 'test15+application+DEV', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (104, 'ReleaseNamespace', 'test15+application+DEV', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Permission` VALUES (105, 'CreateCluster', 'test17', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (106, 'CreateNamespace', 'test17', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (107, 'AssignRole', 'test17', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (108, 'ModifyNamespace', 'test17+application', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (109, 'ReleaseNamespace', 'test17+application', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (110, 'ModifyNamespace', 'test17+application+DEV', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (111, 'ReleaseNamespace', 'test17+application+DEV', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Permission` VALUES (112, 'CreateCluster', 'platform-sample-provider', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (113, 'CreateNamespace', 'platform-sample-provider', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (114, 'AssignRole', 'platform-sample-provider', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (115, 'ModifyNamespace', 'platform-sample-provider+application', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (116, 'ReleaseNamespace', 'platform-sample-provider+application', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (117, 'ModifyNamespace', 'platform-sample-provider+application+DEV', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (118, 'ReleaseNamespace', 'platform-sample-provider+application+DEV', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Permission` VALUES (119, 'ModifyNamespace', 'platform-sample-provider+TEST1.test', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Permission` VALUES (120, 'ReleaseNamespace', 'platform-sample-provider+TEST1.test', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Permission` VALUES (121, 'ModifyNamespace', 'platform-sample-provider+TEST1.test+DEV', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Permission` VALUES (122, 'ReleaseNamespace', 'platform-sample-provider+TEST1.test+DEV', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Permission` VALUES (123, 'ModifyNamespace', 'platform-sample-provider+TEST1.test3', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Permission` VALUES (124, 'ReleaseNamespace', 'platform-sample-provider+TEST1.test3', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Permission` VALUES (125, 'ModifyNamespace', 'platform-sample-provider+TEST1.test3+DEV', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Permission` VALUES (126, 'ReleaseNamespace', 'platform-sample-provider+TEST1.test3+DEV', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Permission` VALUES (127, 'CreateCluster', 'tes16', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Permission` VALUES (128, 'CreateNamespace', 'tes16', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Permission` VALUES (129, 'AssignRole', 'tes16', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Permission` VALUES (130, 'ModifyNamespace', 'tes16+application', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Permission` VALUES (131, 'ReleaseNamespace', 'tes16+application', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Permission` VALUES (132, 'ModifyNamespace', 'tes16+application+DEV', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Permission` VALUES (133, 'ReleaseNamespace', 'tes16+application+DEV', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for Release
-- ----------------------------
DROP TABLE IF EXISTS `Release`;
CREATE TABLE `Release` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `ReleaseKey` varchar(64) NOT NULL DEFAULT '' COMMENT '发布的Key',
  `Name` varchar(64) NOT NULL DEFAULT 'default' COMMENT '发布名字',
  `Comment` varchar(256) DEFAULT NULL COMMENT '发布说明',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `ClusterName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ClusterName',
  `NamespaceName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'namespaceName',
  `Configurations` longtext NOT NULL COMMENT '发布配置',
  `IsAbandoned` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否废弃',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `Env` varchar(20) NOT NULL COMMENT '环境',
  PRIMARY KEY (`Id`),
  KEY `AppId_ClusterName_GroupName` (`AppId`(191),`ClusterName`(191),`NamespaceName`(191)),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_ReleaseKey` (`ReleaseKey`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='发布';

-- ----------------------------
-- Records of Release
-- ----------------------------
BEGIN;
INSERT INTO `Release` VALUES (1, '20161009155425-d3a0749c6e20bc15', '20161009155424-release', 'Sample发布', 'SampleApp', 'default', 'application', '{\"timeout\":\"100\"}', b'0', b'0', 'default', '2018-11-11 17:34:08', '', '2018-11-15 10:31:00', 'dev');
INSERT INTO `Release` VALUES (2, '20181115144434-1dc54bc9521a81a1', '20181115111505-release', '12', 'SampleApp', 'default', 'application', '{\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-15 14:44:34', 'apollo', '2018-11-15 14:44:35', 'DEV');
INSERT INTO `Release` VALUES (3, '20181115144924-1dc54bc952573c91', '20181115111505-release', '12', 'SampleApp', 'default', 'application', '{\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-15 14:49:25', 'apollo', '2018-11-15 14:49:26', 'DEV');
INSERT INTO `Release` VALUES (4, '20181115145036-1dc54bc952573c92', '20181115145015-release', '12', 'SampleApp', 'default', 'application', '{\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-15 14:50:37', 'apollo', '2018-11-15 14:50:40', 'DEV');
INSERT INTO `Release` VALUES (5, '20181119134514-1dc54bc95234f3fa', '20181119134507-release', '', 'SampleApp', 'default', 'application', '{\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-19 13:45:14', 'apollo', '2018-11-19 13:45:16', 'DEV');
INSERT INTO `Release` VALUES (6, '20181119180904-1dc54bc952245289', '20181119180845-release', '123', 'SampleApp', 'default', 'application', '{\"test1\":\"test\",\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-19 18:09:05', 'apollo', '2018-11-19 18:09:07', 'DEV');
INSERT INTO `Release` VALUES (7, '20181119195313-1dc54bc952704bc9', '20181119195310-release', '', 'SampleApp', 'default', 'application', '{\"12\":\"123\",\"test1\":\"test\",\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-19 19:53:14', 'apollo', '2018-11-19 19:53:14', 'DEV');
INSERT INTO `Release` VALUES (8, '20181119195348-1dc54bc952704bca', '20181119195341-release', '', 'SampleApp', 'default', 'application', '{\"12\":\"12323\",\"test1\":\"test\",\"timeout\":\"100\"}', b'0', b'0', 'apollo', '2018-11-19 19:53:49', 'apollo', '2018-11-19 19:53:50', 'DEV');
INSERT INTO `Release` VALUES (9, '20181120110824-9b0b4bc952a3413c', '20181120110823-release', '', 'SampleApp', 'default', 'TEST1.test667', '{\"12\":\"12\"}', b'0', b'0', 'apollo', '2018-11-20 11:08:25', 'apollo', '2018-11-20 11:08:31', 'DEV');
INSERT INTO `Release` VALUES (10, '20181120110904-9b0b4bc952a3413d', '20181120110903-release', '', 'SampleApp', 'default', 'TEST1.test667', '{\"12\":\"12233\"}', b'0', b'0', 'apollo', '2018-11-20 11:09:04', 'apollo', '2018-11-20 11:09:04', 'DEV');
INSERT INTO `Release` VALUES (11, '20181120134932-19014bc9529dbdc0', '20181120134931-release', '', 'test12', 'default', 'application', '{\"12\":\"3221\"}', b'0', b'0', 'apollo', '2018-11-20 13:49:33', 'apollo', '2018-11-20 13:49:33', 'DEV');
INSERT INTO `Release` VALUES (12, '20181120135012-19014bc9529dbdc1', '20181120135011-release', '', 'test12', 'default', 'application', '{\"12\":\"3221122\"}', b'0', b'0', 'apollo', '2018-11-20 13:50:12', 'apollo', '2018-11-20 13:50:12', 'DEV');
INSERT INTO `Release` VALUES (13, '20181120183126-1cc28ec2b48327e3', '20181120183125-release', '', 'test13', 'default', 'application', '{\"22\":\"221\",\"123\":\"123\"}', b'0', b'0', 'apollo', '2018-11-20 18:31:27', 'apollo', '2018-11-20 18:31:27', 'DEV');
INSERT INTO `Release` VALUES (14, '20181120183158-1cc28ec2b48327e4', '20181120183156-release', '', 'test13', 'default', 'application', '{\"22\":\"22122\",\"123\":\"123\"}', b'0', b'0', 'apollo', '2018-11-20 18:31:58', 'apollo', '2018-11-20 18:31:58', 'DEV');
INSERT INTO `Release` VALUES (15, '20181201210612-24448a94aa001f76', '20181201210611-release', '', 'test15', 'default', 'application', '{\"123\":\"332\"}', b'0', b'0', 'apollo', '2018-12-01 21:06:13', 'apollo', '2018-12-01 21:06:13', 'DEV');
INSERT INTO `Release` VALUES (16, '20181201232737-2444b7e2c8b0fa65', '20181201232735-release', '', 'test15', 'default', 'application', '{\"123\":\"332\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-01 23:27:37', 'apollo', '2018-12-01 23:27:37', 'DEV');
INSERT INTO `Release` VALUES (17, '20181201232853-2444b7e2c8b0fa66', '20181201232851-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd\",\"123\":\"332\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-01 23:28:53', 'apollo', '2018-12-01 23:28:53', 'DEV');
INSERT INTO `Release` VALUES (18, '20181202012802-2444b7e2c8b0fa67', '20181202012801-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"123\":\"332\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 01:28:03', 'apollo', '2018-12-02 01:28:03', 'DEV');
INSERT INTO `Release` VALUES (19, '20181202012812-2444b7e2c8b0fa68', '20181202012811-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"123\":\"332\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 01:28:13', 'apollo', '2018-12-02 01:28:13', 'DEV');
INSERT INTO `Release` VALUES (20, '20181202015222-2444b7e2c8b0fa69', '20181202015221-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"123\":\"332\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 01:52:23', 'apollo', '2018-12-02 01:52:23', 'DEV');
INSERT INTO `Release` VALUES (21, '20181202015256-2444b7e2c8b0fa6a', '20181202015255-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"123\":\"332\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 01:52:57', 'apollo', '2018-12-02 01:52:57', 'DEV');
INSERT INTO `Release` VALUES (22, '20181202015436-2444b7e2c8b0fa6b', '20181202015434-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"123\":\"332\",\"123333\":\"22\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 01:54:37', 'apollo', '2018-12-02 01:54:37', 'DEV');
INSERT INTO `Release` VALUES (23, '20181202015459-2444b7e2c8b0fa6c', '20181202015458-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"1\":\"11\",\"123\":\"332\",\"123333\":\"22\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 01:55:00', 'apollo', '2018-12-02 01:55:00', 'DEV');
INSERT INTO `Release` VALUES (24, '20181202205957-2444b7e2c8d9cfb1', '20181202205956-release', '', 'test15', 'default', 'application', '{\"dd\":\"dd11\",\"ss\":\"ss\",\"ff\":\"ffh\",\"mm\":\"mm\",\"jj\":\"jj\",\"hh\":\"hh\",\"gg\":\"shf\",\"1\":\"11\",\"123\":\"332\",\"123333\":\"22\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-02 20:59:58', 'apollo', '2018-12-02 20:59:58', 'DEV');
INSERT INTO `Release` VALUES (25, '20181202210259-2bc6b7e2c8d9cfb2', '20181202210258-release', '', 'test17', 'default', 'application', '{\"11\":\"12\",\"name\":\"liudayang\",\"url\":\"localhost\"}', b'0', b'0', 'apollo', '2018-12-02 21:03:00', 'apollo', '2018-12-02 21:03:00', 'DEV');
INSERT INTO `Release` VALUES (26, '20181203150657-72684bc952cf5ac2', '20181203150656-release', '', 'platform-sample-provider', 'default', 'application', '{\"server.port\":\"9091\"}', b'0', b'0', 'apollo', '2018-12-03 15:06:57', 'apollo', '2018-12-03 15:06:57', 'DEV');
INSERT INTO `Release` VALUES (27, '20181203150828-da2a4bc952cf5ac3', '20181203150827-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 15:08:29', 'apollo', '2018-12-03 15:08:29', 'DEV');
INSERT INTO `Release` VALUES (28, '20181203151736-68594bc952cf5ac4', '20181203151735-gray', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-03 15:17:37', 'apollo', '2018-12-03 15:17:37', 'DEV');
INSERT INTO `Release` VALUES (29, '20181203151753-da2a4bc952cf5ac5', '20181203151752-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"test.name\":\"garyxiong\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 15:17:53', 'apollo', '2018-12-03 15:17:53', 'DEV');
INSERT INTO `Release` VALUES (30, '20181203152057-68594bc952eaa92f', '20181203152056-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-03 15:20:58', 'apollo', '2018-12-03 15:20:58', 'DEV');
INSERT INTO `Release` VALUES (31, '20181203152106-72684bc952eaa930', '20181203152103-release', '', 'platform-sample-provider', 'default', 'application', '{\"spring.datasource.driverClassName\":\"com.mysql.jdbc.Driver\",\"spring.datasource.testWhileIdle\":\"true\",\"spring.datasource.maxOpenPreparedStatements\":\"20\",\"spring.datasource.name\":\"datasource\",\"spring.datasource.poolPreparedStatements\":\"true\",\"mybatis.config-location\":\"classpath:mybatis-config.xml\",\"spring.datasource.timeBetweenEvictionRunsMillis\":\"60000\",\"spring.datasource.minIdle\":\"1\",\"spring.datasource.minEvictableIdleTimeMillis\":\"300000\",\"spring.datasource.maxActive\":\"20\",\"spring.datasource.maxWait\":\"60000\",\"spring.datasource.filters\":\"stat\",\"spring.datasource.testOnBorrow\":\"false\",\"spring.datasource.initialSize\":\"1\",\"spring.datasource.testOnReturn\":\"false\",\"server.port\":\"9091\",\"spring.datasource.validationQuery\":\"select 1\",\"spring.datasource.type\":\"com.alibaba.druid.pool.DruidDataSource\"}', b'0', b'0', 'apollo', '2018-12-03 15:21:06', 'apollo', '2018-12-03 15:21:06', 'DEV');
INSERT INTO `Release` VALUES (32, '20181203155111-68594bc9522a66fd', '20181203155110-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-03 15:51:11', 'apollo', '2018-12-03 15:51:11', 'DEV');
INSERT INTO `Release` VALUES (33, '20181203155118-72684bc9522a66fe', '20181203155117-release', '', 'platform-sample-provider', 'default', 'application', '{\"spring.datasource.driverClassName\":\"com.mysql.jdbc.Driver\",\"spring.datasource.testWhileIdle\":\"true\",\"spring.datasource.maxOpenPreparedStatements\":\"20\",\"spring.datasource.name\":\"datasource\",\"spring.datasource.poolPreparedStatements\":\"true\",\"mybatis.config-location\":\"classpath:mybatis-config.xml\",\"spring.datasource.timeBetweenEvictionRunsMillis\":\"60000\",\"spring.datasource.minIdle\":\"1\",\"spring.datasource.minEvictableIdleTimeMillis\":\"300000\",\"spring.datasource.password\":\"ops_upms\",\"spring.datasource.maxActive\":\"20\",\"spring.datasource.maxWait\":\"60000\",\"spring.datasource.filters\":\"stat\",\"spring.datasource.username\":\"ops_upms\",\"spring.datasource.testOnBorrow\":\"false\",\"spring.datasource.initialSize\":\"1\",\"spring.datasource.url\":\"jdbc:mysql://192.168.1.95:3306/ops-upms?useUnicode\\u003dtrue\\u0026amp;characterEncoding\\u003dUTF-8\",\"spring.datasource.testOnReturn\":\"false\",\"server.port\":\"9091\",\"spring.datasource.validationQuery\":\"select 1\",\"spring.datasource.type\":\"com.alibaba.druid.pool.DruidDataSource\"}', b'0', b'0', 'apollo', '2018-12-03 15:51:19', 'apollo', '2018-12-03 15:51:19', 'DEV');
INSERT INTO `Release` VALUES (34, '20181203172144-68594bc95297757e', '20181203172143-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-03 17:21:45', 'apollo', '2018-12-03 17:21:45', 'DEV');
INSERT INTO `Release` VALUES (35, '20181203173155-da2a4bc95297757f', '20181203173154-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 17:31:56', 'apollo', '2018-12-03 17:31:56', 'DEV');
INSERT INTO `Release` VALUES (36, '20181203182500-da2a4bc9528b3522', '20181203182458-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 18:25:00', 'apollo', '2018-12-03 18:25:00', 'DEV');
INSERT INTO `Release` VALUES (37, '20181203182809-da2a4bc9529a5917', '20181203182807-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 18:28:09', 'apollo', '2018-12-03 18:28:09', 'DEV');
INSERT INTO `Release` VALUES (38, '20181203190039-da2a4bc9529a5918', '20181203190038-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 19:00:40', 'apollo', '2018-12-03 19:00:40', 'DEV');
INSERT INTO `Release` VALUES (39, '20181203190134-68594bc9529a5919', '20181203190106-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-03 19:01:35', 'apollo', '2018-12-03 19:01:35', 'DEV');
INSERT INTO `Release` VALUES (40, '20181203193208-da2a4bc9529a591a', '20181203193126-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"3333\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 19:32:08', 'apollo', '2018-12-03 19:32:08', 'DEV');
INSERT INTO `Release` VALUES (41, '20181203193312-da2a4bc9529a591b', '20181203193233-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"333355\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 19:33:12', 'apollo', '2018-12-03 19:33:12', 'DEV');
INSERT INTO `Release` VALUES (42, '20181203195754-da2a4bc952a7c353', '20181203195728-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33335566\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 19:57:54', 'apollo', '2018-12-03 19:57:54', 'DEV');
INSERT INTO `Release` VALUES (43, '20181203200904-da2a4bc952d5aa2c', '20181203200847-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33335566\",\"gg\":\"gg\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 20:09:04', 'apollo', '2018-12-03 20:09:04', 'DEV');
INSERT INTO `Release` VALUES (44, '20181203201116-da2a4bc952d5aa2d', '20181203200847-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33335566\",\"gg\":\"gg\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 20:11:17', 'apollo', '2018-12-03 20:11:17', 'DEV');
INSERT INTO `Release` VALUES (45, '20181203201256-da2a4bc95269c732', '20181203200847-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33335566\",\"gg\":\"gg\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 20:12:56', 'apollo', '2018-12-03 20:12:56', 'DEV');
INSERT INTO `Release` VALUES (46, '20181203202515-da2a4bc95261d581', '20181203202514-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33335566\",\"gg\":\"gg\",\"hh\":\"hh\",\"test.name\":\"garyxiong123\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 20:25:16', 'apollo', '2018-12-03 20:25:16', 'DEV');
INSERT INTO `Release` VALUES (47, '20181203202919-68594bc95261d582', '20181203202918-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-03 20:29:20', 'apollo', '2018-12-03 20:29:20', 'DEV');
INSERT INTO `Release` VALUES (48, '20181203202937-da2a4bc95261d583', '20181203202936-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"11\":\"12\",\"22\":\"33\",\"33\":\"33335566\",\"gg\":\"gg\",\"hh\":\"hh\",\"test.name\":\"garyxiong123888\",\"name\":\"gary\"}', b'0', b'0', 'apollo', '2018-12-03 20:29:38', 'apollo', '2018-12-03 20:29:38', 'DEV');
INSERT INTO `Release` VALUES (49, '20181204105423-5b954bc952c66c92', '20181204105422-release', '', 'tes16', 'default', 'application', '{\"11\":\"12\"}', b'0', b'0', 'apollo', '2018-12-04 10:54:24', 'apollo', '2018-12-04 10:54:24', 'DEV');
INSERT INTO `Release` VALUES (50, '20181204105632-68594bc952c66c93', '20181204105631-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-04 10:56:33', 'apollo', '2018-12-04 10:56:33', 'DEV');
INSERT INTO `Release` VALUES (51, '20181204105713-68594bc952c66c94', '20181204105711-release', '', 'platform-sample-provider', 'default', 'TEST1.test', '{}', b'0', b'0', 'apollo', '2018-12-04 10:57:13', 'apollo', '2018-12-04 10:57:13', 'DEV');
INSERT INTO `Release` VALUES (52, '20181204105729-72684bc952c66c95', '20181204105728-release', '', 'platform-sample-provider', 'default', 'application', '{\"spring.datasource.driverClassName\":\"com.mysql.jdbc.Driver\",\"spring.datasource.testWhileIdle\":\"true\",\"spring.datasource.maxOpenPreparedStatements\":\"20\",\"spring.datasource.name\":\"datasource\",\"spring.datasource.poolPreparedStatements\":\"true\",\"mybatis.config-location\":\"classpath:mybatis-config.xml\",\"spring.datasource.timeBetweenEvictionRunsMillis\":\"60000\",\"spring.datasource.minIdle\":\"1\",\"spring.datasource.minEvictableIdleTimeMillis\":\"300000\",\"spring.datasource.password\":\"ops_upms\",\"spring.datasource.maxActive\":\"20\",\"spring.datasource.maxWait\":\"60000\",\"spring.datasource.filters\":\"stat\",\"spring.datasource.username\":\"ops_upms\",\"spring.datasource.testOnBorrow\":\"false\",\"spring.datasource.initialSize\":\"1\",\"test.name\":\"liudayang\",\"spring.datasource.url\":\"jdbc:mysql://192.168.1.95:3306/ops-upms?useUnicode\\u003dtrue\\u0026amp;characterEncoding\\u003dUTF-8\",\"spring.datasource.testOnReturn\":\"false\",\"server.port\":\"9091\",\"spring.datasource.validationQuery\":\"select 1\",\"spring.datasource.type\":\"com.alibaba.druid.pool.DruidDataSource\"}', b'0', b'0', 'apollo', '2018-12-04 10:57:30', 'apollo', '2018-12-04 10:57:30', 'DEV');
INSERT INTO `Release` VALUES (53, '20181204105749-da2a4bc952c66c96', '20181204105747-release', '', 'platform-sample-provider', 'default', 'TEST1.test3', '{\"test.name\":\"liudayang\"}', b'0', b'0', 'apollo', '2018-12-04 10:57:49', 'apollo', '2018-12-04 10:57:49', 'DEV');
INSERT INTO `Release` VALUES (54, '20181204110646-5b954bc952c66c97', '20181204110645-release', '', 'tes16', 'default', 'application', '{\"11\":\"12\",\"22\":\"22\"}', b'0', b'0', 'apollo', '2018-12-04 11:06:47', 'apollo', '2018-12-04 11:06:47', 'DEV');
INSERT INTO `Release` VALUES (55, '20181204134307-5b954bc9527c944c', '20181204134306-release', '', 'tes16', 'default', 'application', '{\"11\":\"12\",\"22\":\"22\",\"33\":\"23\",\"55\":\"66\",\"66\":\"88\"}', b'0', b'0', 'apollo', '2018-12-04 13:43:08', 'apollo', '2018-12-04 13:43:08', 'DEV');
INSERT INTO `Release` VALUES (56, '20181205154419-72684bc9526c88f9', '20181205154418-release', '', 'platform-sample-provider', 'default', 'application', '{\"spring.datasource.driverClassName\":\"com.mysql.jdbc.Driver\",\"spring.datasource.testWhileIdle\":\"true\",\"spring.datasource.maxOpenPreparedStatements\":\"20\",\"spring.datasource.name\":\"datasource\",\"spring.datasource.poolPreparedStatements\":\"true\",\"mybatis.config-location\":\"classpath:mybatis-config.xml\",\"spring.datasource.timeBetweenEvictionRunsMillis\":\"60000\",\"spring.datasource.minIdle\":\"1\",\"spring.datasource.minEvictableIdleTimeMillis\":\"300000\",\"spring.datasource.password\":\"ops_upms\",\"spring.datasource.maxActive\":\"20\",\"spring.datasource.maxWait\":\"60000\",\"spring.datasource.filters\":\"stat\",\"spring.datasource.username\":\"ops_upms\",\"spring.datasource.testOnBorrow\":\"false\",\"spring.datasource.initialSize\":\"1\",\"test.name\":\"liudayang11\",\"spring.datasource.url\":\"jdbc:mysql://192.168.1.95:3306/ops-upms?useUnicode\\u003dtrue\\u0026amp;characterEncoding\\u003dUTF-8\",\"spring.datasource.testOnReturn\":\"false\",\"server.port\":\"9091\",\"spring.datasource.validationQuery\":\"select 1\",\"spring.datasource.type\":\"com.alibaba.druid.pool.DruidDataSource\"}', b'0', b'0', 'apollo', '2018-12-05 15:44:20', 'apollo', '2018-12-05 15:44:20', 'DEV');
COMMIT;

-- ----------------------------
-- Table structure for ReleaseHistory
-- ----------------------------
DROP TABLE IF EXISTS `ReleaseHistory`;
CREATE TABLE `ReleaseHistory` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `AppId` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `ClusterName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'ClusterName',
  `NamespaceName` varchar(32) NOT NULL DEFAULT 'default' COMMENT 'namespaceName',
  `BranchName` varchar(32) NOT NULL DEFAULT 'default' COMMENT '发布分支名',
  `ReleaseId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关联的Release Id',
  `PreviousReleaseId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '前一次发布的ReleaseId',
  `Operation` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布类型，0: 普通发布，1: 回滚，2: 灰度发布，3: 灰度规则更新，4: 灰度合并回主分支发布，5: 主分支发布灰度自动发布，6: 主分支回滚灰度自动发布，7: 放弃灰度',
  `OperationContext` longtext NOT NULL COMMENT '发布上下文信息',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_Namespace` (`AppId`,`ClusterName`,`NamespaceName`,`BranchName`),
  KEY `IX_ReleaseId` (`ReleaseId`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='发布历史';

-- ----------------------------
-- Records of ReleaseHistory
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseHistory` VALUES (1, 'SampleApp', 'default', 'application', 'default', 1, 0, 0, '{}', b'0', 'apollo', '2018-11-11 17:34:08', 'apollo', '2018-11-11 17:34:08');
INSERT INTO `ReleaseHistory` VALUES (2, 'SampleApp', 'default', 'application', 'default', 3, 2, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-15 14:49:26', 'apollo', '2018-11-15 14:49:26');
INSERT INTO `ReleaseHistory` VALUES (3, 'SampleApp', 'default', 'application', 'default', 4, 3, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-15 14:50:48', 'apollo', '2018-11-15 14:50:48');
INSERT INTO `ReleaseHistory` VALUES (4, 'SampleApp', 'default', 'application', 'default', 5, 4, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 13:45:16', 'apollo', '2018-11-19 13:45:16');
INSERT INTO `ReleaseHistory` VALUES (5, 'SampleApp', 'default', 'application', 'default', 6, 5, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 18:09:11', 'apollo', '2018-11-19 18:09:11');
INSERT INTO `ReleaseHistory` VALUES (6, 'SampleApp', 'default', 'application', 'default', 7, 6, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 19:53:15', 'apollo', '2018-11-19 19:53:15');
INSERT INTO `ReleaseHistory` VALUES (7, 'SampleApp', 'default', 'application', 'default', 8, 7, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 19:53:50', 'apollo', '2018-11-19 19:53:50');
INSERT INTO `ReleaseHistory` VALUES (8, 'SampleApp', 'default', 'TEST1.test667', 'default', 9, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 11:08:31', 'apollo', '2018-11-20 11:08:31');
INSERT INTO `ReleaseHistory` VALUES (9, 'SampleApp', 'default', 'TEST1.test667', 'default', 10, 9, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 11:09:04', 'apollo', '2018-11-20 11:09:04');
INSERT INTO `ReleaseHistory` VALUES (10, 'test12', 'default', 'application', 'default', 11, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 13:49:33', 'apollo', '2018-11-20 13:49:33');
INSERT INTO `ReleaseHistory` VALUES (11, 'test12', 'default', 'application', 'default', 12, 11, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 13:50:12', 'apollo', '2018-11-20 13:50:12');
INSERT INTO `ReleaseHistory` VALUES (12, 'test13', 'default', 'application', 'default', 13, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 18:31:27', 'apollo', '2018-11-20 18:31:27');
INSERT INTO `ReleaseHistory` VALUES (13, 'test13', 'default', 'application', 'default', 14, 13, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 18:31:58', 'apollo', '2018-11-20 18:31:58');
INSERT INTO `ReleaseHistory` VALUES (14, 'test15', 'default', 'application', 'default', 15, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-01 21:06:13', 'apollo', '2018-12-01 21:06:13');
INSERT INTO `ReleaseHistory` VALUES (15, 'test15', 'default', 'application', 'default', 16, 15, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-01 23:27:37', 'apollo', '2018-12-01 23:27:37');
INSERT INTO `ReleaseHistory` VALUES (16, 'test15', 'default', 'application', 'default', 17, 16, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-01 23:28:53', 'apollo', '2018-12-01 23:28:53');
INSERT INTO `ReleaseHistory` VALUES (17, 'test15', 'default', 'application', 'default', 18, 17, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 01:28:03', 'apollo', '2018-12-02 01:28:03');
INSERT INTO `ReleaseHistory` VALUES (18, 'test15', 'default', 'application', 'default', 19, 18, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 01:28:13', 'apollo', '2018-12-02 01:28:13');
INSERT INTO `ReleaseHistory` VALUES (19, 'test15', 'default', 'application', 'default', 20, 19, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 01:52:23', 'apollo', '2018-12-02 01:52:23');
INSERT INTO `ReleaseHistory` VALUES (20, 'test15', 'default', 'application', 'default', 21, 20, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 01:52:57', 'apollo', '2018-12-02 01:52:57');
INSERT INTO `ReleaseHistory` VALUES (21, 'test15', 'default', 'application', 'default', 22, 21, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 01:54:37', 'apollo', '2018-12-02 01:54:37');
INSERT INTO `ReleaseHistory` VALUES (22, 'test15', 'default', 'application', 'default', 23, 22, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 01:55:00', 'apollo', '2018-12-02 01:55:00');
INSERT INTO `ReleaseHistory` VALUES (23, 'test15', 'default', 'application', 'default', 24, 23, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 20:59:58', 'apollo', '2018-12-02 20:59:58');
INSERT INTO `ReleaseHistory` VALUES (24, 'test17', 'default', 'application', 'default', 25, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-02 21:03:00', 'apollo', '2018-12-02 21:03:00');
INSERT INTO `ReleaseHistory` VALUES (25, 'platform-sample-provider', 'default', 'application', 'default', 26, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:06:58', 'apollo', '2018-12-03 15:06:58');
INSERT INTO `ReleaseHistory` VALUES (26, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 27, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:08:29', 'apollo', '2018-12-03 15:08:29');
INSERT INTO `ReleaseHistory` VALUES (27, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 28, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:17:37', 'apollo', '2018-12-03 15:17:37');
INSERT INTO `ReleaseHistory` VALUES (28, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 29, 27, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:17:53', 'apollo', '2018-12-03 15:17:53');
INSERT INTO `ReleaseHistory` VALUES (29, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 30, 28, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:20:58', 'apollo', '2018-12-03 15:20:58');
INSERT INTO `ReleaseHistory` VALUES (30, 'platform-sample-provider', 'default', 'application', 'default', 31, 26, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:21:06', 'apollo', '2018-12-03 15:21:06');
INSERT INTO `ReleaseHistory` VALUES (31, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 32, 30, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:51:11', 'apollo', '2018-12-03 15:51:11');
INSERT INTO `ReleaseHistory` VALUES (32, 'platform-sample-provider', 'default', 'application', 'default', 33, 31, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 15:51:19', 'apollo', '2018-12-03 15:51:19');
INSERT INTO `ReleaseHistory` VALUES (33, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 34, 32, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 17:21:45', 'apollo', '2018-12-03 17:21:45');
INSERT INTO `ReleaseHistory` VALUES (34, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 35, 29, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 17:31:56', 'apollo', '2018-12-03 17:31:56');
INSERT INTO `ReleaseHistory` VALUES (35, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 36, 35, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 18:25:00', 'apollo', '2018-12-03 18:25:00');
INSERT INTO `ReleaseHistory` VALUES (36, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 37, 36, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 18:28:09', 'apollo', '2018-12-03 18:28:09');
INSERT INTO `ReleaseHistory` VALUES (37, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 38, 37, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 19:00:40', 'apollo', '2018-12-03 19:00:40');
INSERT INTO `ReleaseHistory` VALUES (38, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 39, 34, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 19:01:35', 'apollo', '2018-12-03 19:01:35');
INSERT INTO `ReleaseHistory` VALUES (39, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 40, 38, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 19:32:08', 'apollo', '2018-12-03 19:32:08');
INSERT INTO `ReleaseHistory` VALUES (40, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 41, 40, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 19:33:35', 'apollo', '2018-12-03 19:33:35');
INSERT INTO `ReleaseHistory` VALUES (41, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 42, 41, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 19:57:54', 'apollo', '2018-12-03 19:57:54');
INSERT INTO `ReleaseHistory` VALUES (42, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 43, 42, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 20:09:04', 'apollo', '2018-12-03 20:09:04');
INSERT INTO `ReleaseHistory` VALUES (43, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 44, 43, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 20:11:17', 'apollo', '2018-12-03 20:11:17');
INSERT INTO `ReleaseHistory` VALUES (44, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 45, 44, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 20:12:56', 'apollo', '2018-12-03 20:12:56');
INSERT INTO `ReleaseHistory` VALUES (45, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 46, 45, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 20:25:16', 'apollo', '2018-12-03 20:25:16');
INSERT INTO `ReleaseHistory` VALUES (46, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 47, 39, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 20:29:20', 'apollo', '2018-12-03 20:29:20');
INSERT INTO `ReleaseHistory` VALUES (47, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 48, 46, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-03 20:29:38', 'apollo', '2018-12-03 20:29:38');
INSERT INTO `ReleaseHistory` VALUES (48, 'tes16', 'default', 'application', 'default', 49, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 10:54:24', 'apollo', '2018-12-04 10:54:24');
INSERT INTO `ReleaseHistory` VALUES (49, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 50, 47, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 10:56:33', 'apollo', '2018-12-04 10:56:33');
INSERT INTO `ReleaseHistory` VALUES (50, 'platform-sample-provider', 'default', 'TEST1.test', 'default', 51, 50, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 10:57:13', 'apollo', '2018-12-04 10:57:13');
INSERT INTO `ReleaseHistory` VALUES (51, 'platform-sample-provider', 'default', 'application', 'default', 52, 33, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 10:57:30', 'apollo', '2018-12-04 10:57:30');
INSERT INTO `ReleaseHistory` VALUES (52, 'platform-sample-provider', 'default', 'TEST1.test3', 'default', 53, 48, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 10:57:49', 'apollo', '2018-12-04 10:57:49');
INSERT INTO `ReleaseHistory` VALUES (53, 'tes16', 'default', 'application', 'default', 54, 49, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 11:06:47', 'apollo', '2018-12-04 11:06:47');
INSERT INTO `ReleaseHistory` VALUES (54, 'tes16', 'default', 'application', 'default', 55, 54, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-04 13:43:08', 'apollo', '2018-12-04 13:43:08');
INSERT INTO `ReleaseHistory` VALUES (55, 'platform-sample-provider', 'default', 'application', 'default', 56, 52, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-05 15:44:20', 'apollo', '2018-12-05 15:44:20');
COMMIT;

-- ----------------------------
-- Table structure for ReleaseMessage
-- ----------------------------
DROP TABLE IF EXISTS `ReleaseMessage`;
CREATE TABLE `ReleaseMessage` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `Message` varchar(1024) NOT NULL DEFAULT '' COMMENT '发布的消息内容',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_Message` (`Message`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='发布消息';

-- ----------------------------
-- Records of ReleaseMessage
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseMessage` VALUES (3, 'platform-sample-provider+default+TEST1.test', '2018-12-04 10:57:13');
INSERT INTO `ReleaseMessage` VALUES (5, 'platform-sample-provider+default+TEST1.test3', '2018-12-04 10:57:49');
INSERT INTO `ReleaseMessage` VALUES (6, 'tes16+default+application', '2018-12-04 11:06:47');
INSERT INTO `ReleaseMessage` VALUES (7, 'tes16+default+application', '2018-12-04 13:43:23');
INSERT INTO `ReleaseMessage` VALUES (8, 'platform-sample-provider+default+application', '2018-12-05 15:44:20');
COMMIT;

-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE IF EXISTS `Role`;
CREATE TABLE `Role` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `RoleName` varchar(256) NOT NULL DEFAULT '' COMMENT 'Role name',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_RoleName` (`RoleName`(191)),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色表';

-- ----------------------------
-- Records of Role
-- ----------------------------
BEGIN;
INSERT INTO `Role` VALUES (1, 'Master+SampleApp', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Role` VALUES (2, 'ModifyNamespace+SampleApp+application', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Role` VALUES (3, 'ReleaseNamespace+SampleApp+application', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `Role` VALUES (4, 'ModifyNamespace+SampleApp+TEST1.test', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Role` VALUES (5, 'ReleaseNamespace+SampleApp+TEST1.test', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Role` VALUES (6, 'ModifyNamespace+SampleApp+TEST1.test+DEV', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Role` VALUES (7, 'ReleaseNamespace+SampleApp+TEST1.test+DEV', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `Role` VALUES (8, 'ModifyNamespace+SampleApp+TEST1.aa', b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `Role` VALUES (9, 'ReleaseNamespace+SampleApp+TEST1.aa', b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `Role` VALUES (10, 'ModifyNamespace+SampleApp+TEST1.aa+DEV', b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `Role` VALUES (11, 'ReleaseNamespace+SampleApp+TEST1.aa+DEV', b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `Role` VALUES (12, 'Master+mid', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Role` VALUES (13, 'ModifyNamespace+mid+application', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Role` VALUES (14, 'ReleaseNamespace+mid+application', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Role` VALUES (15, 'ModifyNamespace+mid+application+DEV', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Role` VALUES (16, 'ReleaseNamespace+mid+application+DEV', b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `Role` VALUES (17, 'ModifyNamespace+SampleApp+TEST1.monitor', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Role` VALUES (18, 'ReleaseNamespace+SampleApp+TEST1.monitor', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Role` VALUES (19, 'ModifyNamespace+SampleApp+TEST1.monitor+DEV', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Role` VALUES (20, 'ReleaseNamespace+SampleApp+TEST1.monitor+DEV', b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `Role` VALUES (21, 'ModifyNamespace+SampleApp+TEST1.test33', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Role` VALUES (22, 'ReleaseNamespace+SampleApp+TEST1.test33', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Role` VALUES (23, 'ModifyNamespace+SampleApp+TEST1.test33+DEV', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Role` VALUES (24, 'ReleaseNamespace+SampleApp+TEST1.test33+DEV', b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `Role` VALUES (25, 'ModifyNamespace+SampleApp+TEST1.test55', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Role` VALUES (26, 'ReleaseNamespace+SampleApp+TEST1.test55', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Role` VALUES (27, 'ModifyNamespace+SampleApp+TEST1.test55+DEV', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Role` VALUES (28, 'ReleaseNamespace+SampleApp+TEST1.test55+DEV', b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `Role` VALUES (29, 'ModifyNamespace+SampleApp+TEST1.test667', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Role` VALUES (30, 'ReleaseNamespace+SampleApp+TEST1.test667', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Role` VALUES (31, 'ModifyNamespace+SampleApp+TEST1.test667+DEV', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Role` VALUES (32, 'ReleaseNamespace+SampleApp+TEST1.test667+DEV', b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `Role` VALUES (33, 'Master+test1', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Role` VALUES (34, 'ModifyNamespace+test1+application', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Role` VALUES (35, 'ReleaseNamespace+test1+application', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Role` VALUES (36, 'ModifyNamespace+test1+application+DEV', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Role` VALUES (37, 'ReleaseNamespace+test1+application+DEV', b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `Role` VALUES (38, 'Master+test5', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Role` VALUES (39, 'ModifyNamespace+test5+application', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Role` VALUES (40, 'ReleaseNamespace+test5+application', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Role` VALUES (41, 'ModifyNamespace+test5+application+DEV', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Role` VALUES (42, 'ReleaseNamespace+test5+application+DEV', b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `Role` VALUES (43, 'Master+test6', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Role` VALUES (44, 'ModifyNamespace+test6+application', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Role` VALUES (45, 'ReleaseNamespace+test6+application', b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `Role` VALUES (46, 'ModifyNamespace+test6+application+DEV', b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `Role` VALUES (47, 'ReleaseNamespace+test6+application+DEV', b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `Role` VALUES (48, 'Master+test7', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Role` VALUES (49, 'ModifyNamespace+test7+application', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Role` VALUES (50, 'ReleaseNamespace+test7+application', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Role` VALUES (51, 'ModifyNamespace+test7+application+DEV', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Role` VALUES (52, 'ReleaseNamespace+test7+application+DEV', b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `Role` VALUES (53, 'Master+test8', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Role` VALUES (54, 'ModifyNamespace+test8+application', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Role` VALUES (55, 'ReleaseNamespace+test8+application', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Role` VALUES (56, 'ModifyNamespace+test8+application+DEV', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Role` VALUES (57, 'ReleaseNamespace+test8+application+DEV', b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `Role` VALUES (58, 'Master+test9', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Role` VALUES (59, 'ModifyNamespace+test9+application', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Role` VALUES (60, 'ReleaseNamespace+test9+application', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Role` VALUES (61, 'ModifyNamespace+test9+application+DEV', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Role` VALUES (62, 'ReleaseNamespace+test9+application+DEV', b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `Role` VALUES (66, 'Master+test12', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Role` VALUES (67, 'ModifyNamespace+test12+application', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Role` VALUES (68, 'ReleaseNamespace+test12+application', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Role` VALUES (69, 'ModifyNamespace+test12+application+DEV', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Role` VALUES (70, 'ReleaseNamespace+test12+application+DEV', b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `Role` VALUES (71, 'Master+test13', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Role` VALUES (72, 'ModifyNamespace+test13+application', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Role` VALUES (73, 'ReleaseNamespace+test13+application', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Role` VALUES (74, 'ModifyNamespace+test13+application+DEV', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Role` VALUES (75, 'ReleaseNamespace+test13+application+DEV', b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `Role` VALUES (76, 'Master+test15', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Role` VALUES (77, 'ModifyNamespace+test15+application', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Role` VALUES (78, 'ReleaseNamespace+test15+application', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Role` VALUES (79, 'ModifyNamespace+test15+application+DEV', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Role` VALUES (80, 'ReleaseNamespace+test15+application+DEV', b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `Role` VALUES (81, 'Master+test17', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Role` VALUES (82, 'ModifyNamespace+test17+application', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Role` VALUES (83, 'ReleaseNamespace+test17+application', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Role` VALUES (84, 'ModifyNamespace+test17+application+DEV', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Role` VALUES (85, 'ReleaseNamespace+test17+application+DEV', b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `Role` VALUES (86, 'Master+platform-sample-provider', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Role` VALUES (87, 'ModifyNamespace+platform-sample-provider+application', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Role` VALUES (88, 'ReleaseNamespace+platform-sample-provider+application', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Role` VALUES (89, 'ModifyNamespace+platform-sample-provider+application+DEV', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Role` VALUES (90, 'ReleaseNamespace+platform-sample-provider+application+DEV', b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `Role` VALUES (91, 'ModifyNamespace+platform-sample-provider+TEST1.test', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Role` VALUES (92, 'ReleaseNamespace+platform-sample-provider+TEST1.test', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Role` VALUES (93, 'ModifyNamespace+platform-sample-provider+TEST1.test+DEV', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Role` VALUES (94, 'ReleaseNamespace+platform-sample-provider+TEST1.test+DEV', b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `Role` VALUES (95, 'ModifyNamespace+platform-sample-provider+TEST1.test3', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Role` VALUES (96, 'ReleaseNamespace+platform-sample-provider+TEST1.test3', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Role` VALUES (97, 'ModifyNamespace+platform-sample-provider+TEST1.test3+DEV', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Role` VALUES (98, 'ReleaseNamespace+platform-sample-provider+TEST1.test3+DEV', b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `Role` VALUES (99, 'Master+tes16', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Role` VALUES (100, 'ModifyNamespace+tes16+application', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Role` VALUES (101, 'ReleaseNamespace+tes16+application', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Role` VALUES (102, 'ModifyNamespace+tes16+application+DEV', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `Role` VALUES (103, 'ReleaseNamespace+tes16+application+DEV', b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for RolePermission
-- ----------------------------
DROP TABLE IF EXISTS `RolePermission`;
CREATE TABLE `RolePermission` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `RoleId` int(10) unsigned DEFAULT NULL COMMENT 'Role Id',
  `PermissionId` int(10) unsigned DEFAULT NULL COMMENT 'Permission Id',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_RoleId` (`RoleId`),
  KEY `IX_PermissionId` (`PermissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和权限的绑定表';

-- ----------------------------
-- Records of RolePermission
-- ----------------------------
BEGIN;
INSERT INTO `RolePermission` VALUES (1, 1, 1, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (2, 1, 2, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (3, 1, 3, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (4, 2, 4, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (5, 3, 5, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (6, 4, 6, b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `RolePermission` VALUES (7, 5, 7, b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `RolePermission` VALUES (8, 6, 8, b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `RolePermission` VALUES (9, 7, 9, b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `RolePermission` VALUES (10, 8, 10, b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `RolePermission` VALUES (11, 9, 11, b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
INSERT INTO `RolePermission` VALUES (12, 10, 12, b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `RolePermission` VALUES (13, 11, 13, b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `RolePermission` VALUES (14, 12, 14, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (15, 12, 15, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (16, 12, 16, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (17, 13, 17, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (18, 14, 18, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (19, 15, 19, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (20, 16, 20, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `RolePermission` VALUES (21, 17, 21, b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `RolePermission` VALUES (22, 18, 22, b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `RolePermission` VALUES (23, 19, 23, b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `RolePermission` VALUES (24, 20, 24, b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `RolePermission` VALUES (25, 21, 25, b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `RolePermission` VALUES (26, 22, 26, b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `RolePermission` VALUES (27, 23, 27, b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `RolePermission` VALUES (28, 24, 28, b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `RolePermission` VALUES (29, 25, 29, b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `RolePermission` VALUES (30, 26, 30, b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `RolePermission` VALUES (31, 27, 31, b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `RolePermission` VALUES (32, 28, 32, b'0', 'apollo', '2018-11-20 11:01:18', 'apollo', '2018-11-20 11:01:18');
INSERT INTO `RolePermission` VALUES (33, 29, 33, b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `RolePermission` VALUES (34, 30, 34, b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `RolePermission` VALUES (35, 31, 35, b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `RolePermission` VALUES (36, 32, 36, b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `RolePermission` VALUES (37, 33, 37, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (38, 33, 38, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (39, 33, 39, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (40, 34, 40, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (41, 35, 41, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (42, 36, 42, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (43, 37, 43, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `RolePermission` VALUES (44, 38, 44, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (45, 38, 45, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (46, 38, 46, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (47, 39, 47, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (48, 40, 48, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (49, 41, 49, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (50, 42, 50, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `RolePermission` VALUES (51, 43, 51, b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `RolePermission` VALUES (52, 43, 52, b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `RolePermission` VALUES (53, 43, 53, b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `RolePermission` VALUES (54, 44, 54, b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `RolePermission` VALUES (55, 45, 55, b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `RolePermission` VALUES (56, 46, 56, b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `RolePermission` VALUES (57, 47, 57, b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `RolePermission` VALUES (58, 48, 58, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (59, 48, 59, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (60, 48, 60, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (61, 49, 61, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (62, 50, 62, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (63, 51, 63, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (64, 52, 64, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `RolePermission` VALUES (65, 53, 65, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (66, 53, 66, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (67, 53, 67, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (68, 54, 68, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (69, 55, 69, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (70, 56, 70, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (71, 57, 71, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `RolePermission` VALUES (72, 58, 72, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (73, 58, 73, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (74, 58, 74, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (75, 59, 75, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (76, 60, 76, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (77, 61, 77, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (78, 62, 78, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `RolePermission` VALUES (84, 66, 84, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (85, 66, 85, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (86, 66, 86, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (87, 67, 87, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (88, 68, 88, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (89, 69, 89, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (90, 70, 90, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `RolePermission` VALUES (91, 71, 91, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (92, 71, 92, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (93, 71, 93, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (94, 72, 94, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (95, 73, 95, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (96, 74, 96, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (97, 75, 97, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `RolePermission` VALUES (98, 76, 98, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (99, 76, 99, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (100, 76, 100, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (101, 77, 101, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (102, 78, 102, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (103, 79, 103, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (104, 80, 104, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `RolePermission` VALUES (105, 81, 105, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (106, 81, 106, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (107, 81, 107, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (108, 82, 108, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (109, 83, 109, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (110, 84, 110, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (111, 85, 111, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `RolePermission` VALUES (112, 86, 112, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (113, 86, 113, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (114, 86, 114, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (115, 87, 115, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (116, 88, 116, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (117, 89, 117, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (118, 90, 118, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `RolePermission` VALUES (119, 91, 119, b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `RolePermission` VALUES (120, 92, 120, b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `RolePermission` VALUES (121, 93, 121, b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `RolePermission` VALUES (122, 94, 122, b'0', 'apollo', '2018-12-03 15:07:39', 'apollo', '2018-12-03 15:07:39');
INSERT INTO `RolePermission` VALUES (123, 95, 123, b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `RolePermission` VALUES (124, 96, 124, b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `RolePermission` VALUES (125, 97, 125, b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `RolePermission` VALUES (126, 98, 126, b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `RolePermission` VALUES (127, 99, 127, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `RolePermission` VALUES (128, 99, 128, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `RolePermission` VALUES (129, 99, 129, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `RolePermission` VALUES (130, 100, 130, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `RolePermission` VALUES (131, 101, 131, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `RolePermission` VALUES (132, 102, 132, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `RolePermission` VALUES (133, 103, 133, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for ServerConfig
-- ----------------------------
DROP TABLE IF EXISTS `ServerConfig`;
CREATE TABLE `ServerConfig` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `Key` varchar(64) NOT NULL DEFAULT 'default' COMMENT '配置项Key',
  `Value` varchar(2048) NOT NULL DEFAULT 'default' COMMENT '配置项值',
  `Comment` varchar(1024) DEFAULT '' COMMENT '注释',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `Cluster` varchar(64) DEFAULT NULL COMMENT '集群',
  PRIMARY KEY (`Id`),
  KEY `IX_Key` (`Key`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='配置服务自身配置';

-- ----------------------------
-- Records of ServerConfig
-- ----------------------------
BEGIN;
INSERT INTO `ServerConfig` VALUES (1, 'apollo.portal.envs', 'dev,test,pre,prod', '可支持的环境列表', b'0', 'default', '2018-11-11 17:35:16', '', '2018-12-04 13:53:11', NULL);
INSERT INTO `ServerConfig` VALUES (2, 'organizations', '[{\"orgId\":\"TEST1\",\"orgName\":\"样例部门1\"},{\"orgId\":\"TEST2\",\"orgName\":\"样例部门2\"}]', '部门列表', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16', NULL);
INSERT INTO `ServerConfig` VALUES (3, 'superAdmin', 'apollo', 'Portal超级管理员', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16', NULL);
INSERT INTO `ServerConfig` VALUES (4, 'api.readTimeout', '10000', 'http接口read timeout', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16', NULL);
INSERT INTO `ServerConfig` VALUES (5, 'consumer.token.salt', 'someSalt', 'consumer token salt', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16', NULL);
INSERT INTO `ServerConfig` VALUES (6, 'admin.createPrivateNamespace.switch', 'true', '是否允许项目管理员创建私有namespace', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16', NULL);
INSERT INTO `ServerConfig` VALUES (7, 'eureka.service.url', 'http://localhost:8080/eureka/', 'http://localhost:8080/eureka/', b'0', 'default', '2018-11-11 17:35:16', '2018-11-11 17:34:08', '2018-12-01 23:09:16', 'Null');
INSERT INTO `ServerConfig` VALUES (8, 'namespace.lock.switch', 'false', 'false', b'0', 'default', '2018-11-11 17:35:16', '2018-11-11 17:34:08', '2018-12-01 23:09:18', 'Null');
INSERT INTO `ServerConfig` VALUES (9, 'item.value.length.limit', '20000', '20000', b'0', 'default', '2018-11-11 17:35:16', '2018-11-11 17:34:08', '2018-12-01 23:09:20', 'Null');
INSERT INTO `ServerConfig` VALUES (10, 'config-service.cache.enabled', 'false', 'false', b'0', 'default', '2018-11-11 17:35:16', '2018-11-11 17:34:08', '2018-12-01 23:09:23', 'Null');
INSERT INTO `ServerConfig` VALUES (11, 'item.key.length.limit', '128', '128', b'0', 'default', '2018-11-11 17:35:16', '2018-11-11 17:34:08', '2018-12-01 23:09:27', 'Null');
COMMIT;

-- ----------------------------
-- Table structure for UserRole
-- ----------------------------
DROP TABLE IF EXISTS `UserRole`;
CREATE TABLE `UserRole` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `UserId` varchar(128) DEFAULT '' COMMENT '用户身份标识',
  `RoleId` int(10) unsigned DEFAULT NULL COMMENT 'Role Id',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_RoleId` (`RoleId`),
  KEY `IX_UserId_RoleId` (`UserId`,`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户和role的绑定表';

-- ----------------------------
-- Records of UserRole
-- ----------------------------
BEGIN;
INSERT INTO `UserRole` VALUES (1, 'apollo', 1, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `UserRole` VALUES (2, 'apollo', 2, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `UserRole` VALUES (3, 'apollo', 3, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `UserRole` VALUES (4, 'apollo', 4, b'0', 'apollo', '2018-11-12 13:43:35', 'apollqo', '2018-11-12 13:43:35');
INSERT INTO `UserRole` VALUES (5, 'apollo', 5, b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `UserRole` VALUES (6, 'apollo', 8, b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `UserRole` VALUES (7, 'apollo', 9, b'0', 'apollo', '2018-11-12 13:47:30', 'apollo', '2018-11-12 13:47:30');
INSERT INTO `UserRole` VALUES (8, 'apollo', 12, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `UserRole` VALUES (9, 'apollo', 13, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `UserRole` VALUES (10, 'apollo', 14, b'0', 'apollo', '2018-11-14 17:22:56', 'apollo', '2018-11-14 17:22:56');
INSERT INTO `UserRole` VALUES (11, 'apollo', 17, b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `UserRole` VALUES (12, 'apollo', 18, b'0', 'apollo', '2018-11-20 09:31:28', 'apollo', '2018-11-20 09:31:28');
INSERT INTO `UserRole` VALUES (13, 'apollo', 21, b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `UserRole` VALUES (14, 'apollo', 22, b'0', 'apollo', '2018-11-20 10:44:33', 'apollo', '2018-11-20 10:44:33');
INSERT INTO `UserRole` VALUES (15, 'apollo', 29, b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `UserRole` VALUES (16, 'apollo', 30, b'0', 'apollo', '2018-11-20 11:04:53', 'apollo', '2018-11-20 11:04:53');
INSERT INTO `UserRole` VALUES (17, 'apollo', 33, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `UserRole` VALUES (18, 'apollo', 34, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `UserRole` VALUES (19, 'apollo', 35, b'0', 'apollo', '2018-11-20 11:45:04', 'apollo', '2018-11-20 11:45:04');
INSERT INTO `UserRole` VALUES (20, 'apollo', 38, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `UserRole` VALUES (21, 'apollo', 39, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `UserRole` VALUES (22, 'apollo', 40, b'0', 'apollo', '2018-11-20 11:53:26', 'apollo', '2018-11-20 11:53:26');
INSERT INTO `UserRole` VALUES (23, 'apollo', 43, b'0', 'apollo', '2018-11-20 12:09:07', 'apollo', '2018-11-20 12:09:07');
INSERT INTO `UserRole` VALUES (24, 'apollo', 44, b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `UserRole` VALUES (25, 'apollo', 45, b'0', 'apollo', '2018-11-20 12:09:08', 'apollo', '2018-11-20 12:09:08');
INSERT INTO `UserRole` VALUES (26, 'apollo', 48, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `UserRole` VALUES (27, 'apollo', 49, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `UserRole` VALUES (28, 'apollo', 50, b'0', 'apollo', '2018-11-20 12:45:18', 'apollo', '2018-11-20 12:45:18');
INSERT INTO `UserRole` VALUES (29, 'apollo', 53, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `UserRole` VALUES (30, 'apollo', 54, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `UserRole` VALUES (31, 'apollo', 55, b'0', 'apollo', '2018-11-20 12:50:41', 'apollo', '2018-11-20 12:50:41');
INSERT INTO `UserRole` VALUES (32, 'apollo', 58, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `UserRole` VALUES (33, 'apollo', 59, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `UserRole` VALUES (34, 'apollo', 60, b'0', 'apollo', '2018-11-20 13:41:06', 'apollo', '2018-11-20 13:41:06');
INSERT INTO `UserRole` VALUES (36, 'apollo', 66, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `UserRole` VALUES (37, 'apollo', 67, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `UserRole` VALUES (38, 'apollo', 68, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26');
INSERT INTO `UserRole` VALUES (39, 'apollo', 71, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `UserRole` VALUES (40, 'apollo', 72, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `UserRole` VALUES (41, 'apollo', 73, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12');
INSERT INTO `UserRole` VALUES (42, 'apollo', 76, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `UserRole` VALUES (43, 'apollo', 77, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `UserRole` VALUES (44, 'apollo', 78, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18');
INSERT INTO `UserRole` VALUES (45, 'apollo', 81, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `UserRole` VALUES (46, 'apollo', 82, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `UserRole` VALUES (47, 'apollo', 83, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47');
INSERT INTO `UserRole` VALUES (48, 'apollo', 86, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `UserRole` VALUES (49, 'apollo', 87, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `UserRole` VALUES (50, 'apollo', 88, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59');
INSERT INTO `UserRole` VALUES (51, 'apollo', 91, b'0', 'apollo', '2018-12-03 15:07:42', 'apollo', '2018-12-03 15:07:42');
INSERT INTO `UserRole` VALUES (52, 'apollo', 92, b'0', 'apollo', '2018-12-03 15:07:42', 'apollo', '2018-12-03 15:07:42');
INSERT INTO `UserRole` VALUES (53, 'apollo', 95, b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `UserRole` VALUES (54, 'apollo', 96, b'0', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-03 15:08:04');
INSERT INTO `UserRole` VALUES (55, 'apollo', 99, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `UserRole` VALUES (56, 'apollo', 100, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `UserRole` VALUES (57, 'apollo', 101, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
COMMIT;

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `Username` varchar(64) NOT NULL DEFAULT 'default' COMMENT '用户名',
  `Password` varchar(64) NOT NULL DEFAULT 'default' COMMENT '密码',
  `Email` varchar(64) NOT NULL DEFAULT 'default' COMMENT '邮箱地址',
  `Enabled` tinyint(4) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户表';

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` VALUES (1, 'apollo', '$2a$10$7r20uS.BQ9uBpf3Baj3uQOZvMVvB1RN3PYoKE94gtz2.WAOuiiwXS', 'apollo@acme.com', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
