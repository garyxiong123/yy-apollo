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

 Date: 07/12/2018 19:09:56
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用表';

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
INSERT INTO `App` VALUES (16, 'test16', 'test16', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-06 22:41:54', 'apollo', '2018-12-06 22:41:54');
INSERT INTO `App` VALUES (17, 'test18', 'test18', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `App` VALUES (18, 'test19', 'test19', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `App` VALUES (19, 'test20', 'test20', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `App` VALUES (20, 'test21', 'test21', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `App` VALUES (21, 'test30', 'test30', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `App` VALUES (22, 'test31', 'test31', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `App` VALUES (26, 'test331', 'test331', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 11:36:58', 'apollo', '2018-12-07 11:36:58');
INSERT INTO `App` VALUES (27, 'TEST38', 'TEST38', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `App` VALUES (28, 'test35', 'test35', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `App` VALUES (29, 'test39', 'test39', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:15:42', 'apollo', '2018-12-07 14:15:42');
INSERT INTO `App` VALUES (30, 'test51', 'test51', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:34:39', 'apollo', '2018-12-07 14:34:39');
INSERT INTO `App` VALUES (31, 'test55', 'test55', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:36:56', 'apollo', '2018-12-07 14:36:56');
INSERT INTO `App` VALUES (32, 'test56', 'test56', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:37:35', 'apollo', '2018-12-07 14:37:35');
INSERT INTO `App` VALUES (33, 'test58', 'test58', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:40:43', 'apollo', '2018-12-07 14:40:43');
INSERT INTO `App` VALUES (34, 'test60', 'test60', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `App` VALUES (35, 'test61', 'test61', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用namespace定义';

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
INSERT INTO `AppNamespace` VALUES (25, 'TEST1.monitor1', 'platform-sample-provider', 'properties', b'1', '', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `AppNamespace` VALUES (26, 'application', 'test16', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-06 22:41:54', 'apollo', '2018-12-06 22:41:54');
INSERT INTO `AppNamespace` VALUES (27, 'application', 'test18', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `AppNamespace` VALUES (28, 'application', 'test19', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `AppNamespace` VALUES (29, 'application', 'test20', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `AppNamespace` VALUES (30, 'application', 'test21', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `AppNamespace` VALUES (31, 'TEST1.ttt1', 'test21', 'properties', b'1', '', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `AppNamespace` VALUES (32, 'application', 'test30', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `AppNamespace` VALUES (33, 'TEST1.test222', 'test30', 'properties', b'1', '111', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `AppNamespace` VALUES (34, 'application', 'test31', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `AppNamespace` VALUES (35, 'test31.test11', 'test31', 'properties', b'1', '', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `AppNamespace` VALUES (39, 'application', 'test331', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 11:36:58', 'apollo', '2018-12-07 11:36:58');
INSERT INTO `AppNamespace` VALUES (40, 'TEST1.TTT98', 'test331', 'properties', b'1', '', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `AppNamespace` VALUES (41, 'application', 'TEST38', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `AppNamespace` VALUES (42, 'TEST1.TTT981', 'TEST38', 'properties', b'1', 'TTT981', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `AppNamespace` VALUES (43, 'application', 'test35', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `AppNamespace` VALUES (44, 'application', 'test39', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:22:30', 'apollo', '2018-12-07 14:22:30');
INSERT INTO `AppNamespace` VALUES (45, 'application', 'test51', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:34:47', 'apollo', '2018-12-07 14:34:47');
INSERT INTO `AppNamespace` VALUES (46, 'application', 'test55', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:36:59', 'apollo', '2018-12-07 14:36:59');
INSERT INTO `AppNamespace` VALUES (47, 'application', 'test56', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:37:37', 'apollo', '2018-12-07 14:37:37');
INSERT INTO `AppNamespace` VALUES (48, 'application', 'test58', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:40:44', 'apollo', '2018-12-07 14:40:44');
INSERT INTO `AppNamespace` VALUES (55, 'TEST1.test11112233', 'test58', 'properties', b'1', '111', b'0', 'apollo', '2018-12-07 14:54:34', 'apollo', '2018-12-07 14:54:34');
INSERT INTO `AppNamespace` VALUES (56, 'application', 'test60', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `AppNamespace` VALUES (57, 'application', 'test61', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `AppNamespace` VALUES (58, 'TEST1.test3333', 'test61', 'properties', b'1', 'test33', b'0', 'apollo', '2018-12-07 18:58:49', 'apollo', '2018-12-07 18:58:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日志审计表';

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
INSERT INTO `Audit` VALUES (237, 'Namespace', 17, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 17:53:29', NULL, '2018-12-06 17:53:29');
INSERT INTO `Audit` VALUES (238, 'Namespace', 18, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:41:54', NULL, '2018-12-06 22:41:54');
INSERT INTO `Audit` VALUES (239, 'ClusterEntity', 8, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:41:54', NULL, '2018-12-06 22:41:54');
INSERT INTO `Audit` VALUES (240, 'Namespace', 19, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:42:42', NULL, '2018-12-06 22:42:42');
INSERT INTO `Audit` VALUES (241, 'ClusterEntity', 9, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:42:42', NULL, '2018-12-06 22:42:42');
INSERT INTO `Audit` VALUES (242, 'Namespace', 20, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:52:15', NULL, '2018-12-06 22:52:15');
INSERT INTO `Audit` VALUES (243, 'ClusterEntity', 10, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:52:15', NULL, '2018-12-06 22:52:15');
INSERT INTO `Audit` VALUES (244, 'Item', 31, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:52:50', NULL, '2018-12-06 22:52:50');
INSERT INTO `Audit` VALUES (245, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:52:50', NULL, '2018-12-06 22:52:50');
INSERT INTO `Audit` VALUES (246, 'Item', 32, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:54:44', NULL, '2018-12-06 22:54:44');
INSERT INTO `Audit` VALUES (247, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 22:54:44', NULL, '2018-12-06 22:54:44');
INSERT INTO `Audit` VALUES (248, 'Item', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 23:52:01', NULL, '2018-12-06 23:52:01');
INSERT INTO `Audit` VALUES (249, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-06 23:52:01', NULL, '2018-12-06 23:52:01');
INSERT INTO `Audit` VALUES (250, 'Item', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:00:58', NULL, '2018-12-07 00:00:58');
INSERT INTO `Audit` VALUES (251, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:00:58', NULL, '2018-12-07 00:00:58');
INSERT INTO `Audit` VALUES (252, 'Item', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:02:32', NULL, '2018-12-07 00:02:32');
INSERT INTO `Audit` VALUES (253, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:02:32', NULL, '2018-12-07 00:02:32');
INSERT INTO `Audit` VALUES (254, 'Item', 36, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:12:32', NULL, '2018-12-07 00:12:32');
INSERT INTO `Audit` VALUES (255, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:12:32', NULL, '2018-12-07 00:12:32');
INSERT INTO `Audit` VALUES (256, 'Release', 57, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:42:26', NULL, '2018-12-07 00:42:26');
INSERT INTO `Audit` VALUES (257, 'Release', 58, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:44:40', NULL, '2018-12-07 00:44:40');
INSERT INTO `Audit` VALUES (258, 'ReleaseHistory', 56, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:44:40', NULL, '2018-12-07 00:44:40');
INSERT INTO `Audit` VALUES (259, 'Namespace', 21, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:11', NULL, '2018-12-07 00:45:11');
INSERT INTO `Audit` VALUES (260, 'ClusterEntity', 11, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:11', NULL, '2018-12-07 00:45:11');
INSERT INTO `Audit` VALUES (261, 'Item', 37, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:25', NULL, '2018-12-07 00:45:25');
INSERT INTO `Audit` VALUES (262, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:25', NULL, '2018-12-07 00:45:25');
INSERT INTO `Audit` VALUES (263, 'Item', 38, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:45', NULL, '2018-12-07 00:45:45');
INSERT INTO `Audit` VALUES (264, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:45', NULL, '2018-12-07 00:45:45');
INSERT INTO `Audit` VALUES (265, 'Release', 59, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:49', NULL, '2018-12-07 00:45:49');
INSERT INTO `Audit` VALUES (266, 'ReleaseHistory', 57, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:45:49', NULL, '2018-12-07 00:45:49');
INSERT INTO `Audit` VALUES (267, 'Namespace', 26, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:46:55', NULL, '2018-12-07 00:46:55');
INSERT INTO `Audit` VALUES (268, 'ClusterEntity', 12, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:46:55', NULL, '2018-12-07 00:46:55');
INSERT INTO `Audit` VALUES (269, 'Namespace', 27, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:47:12', NULL, '2018-12-07 00:47:12');
INSERT INTO `Audit` VALUES (270, 'Namespace', 28, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:05', NULL, '2018-12-07 00:56:05');
INSERT INTO `Audit` VALUES (271, 'ClusterEntity', 17, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:05', NULL, '2018-12-07 00:56:05');
INSERT INTO `Audit` VALUES (272, 'Item', 39, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:15', NULL, '2018-12-07 00:56:15');
INSERT INTO `Audit` VALUES (273, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:15', NULL, '2018-12-07 00:56:15');
INSERT INTO `Audit` VALUES (274, 'Release', 60, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:19', NULL, '2018-12-07 00:56:19');
INSERT INTO `Audit` VALUES (275, 'ReleaseHistory', 58, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:19', NULL, '2018-12-07 00:56:19');
INSERT INTO `Audit` VALUES (276, 'Namespace', 29, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:41', NULL, '2018-12-07 00:56:41');
INSERT INTO `Audit` VALUES (277, 'Namespace', 30, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:55', NULL, '2018-12-07 00:56:55');
INSERT INTO `Audit` VALUES (278, 'ClusterEntity', 18, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:56:55', NULL, '2018-12-07 00:56:55');
INSERT INTO `Audit` VALUES (279, 'Item', 40, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:57:06', NULL, '2018-12-07 00:57:06');
INSERT INTO `Audit` VALUES (280, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:57:07', NULL, '2018-12-07 00:57:07');
INSERT INTO `Audit` VALUES (281, 'Release', 61, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:57:09', NULL, '2018-12-07 00:57:09');
INSERT INTO `Audit` VALUES (282, 'ReleaseHistory', 59, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:57:09', NULL, '2018-12-07 00:57:09');
INSERT INTO `Audit` VALUES (283, 'Namespace', 31, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 00:57:44', NULL, '2018-12-07 00:57:44');
INSERT INTO `Audit` VALUES (287, 'Namespace', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:36:58', NULL, '2018-12-07 11:36:58');
INSERT INTO `Audit` VALUES (288, 'ClusterEntity', 21, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:37:57', NULL, '2018-12-07 11:37:57');
INSERT INTO `Audit` VALUES (289, 'Item', 41, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:51:27', NULL, '2018-12-07 11:51:27');
INSERT INTO `Audit` VALUES (290, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:51:27', NULL, '2018-12-07 11:51:27');
INSERT INTO `Audit` VALUES (291, 'Release', 62, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:51:32', NULL, '2018-12-07 11:51:32');
INSERT INTO `Audit` VALUES (292, 'ReleaseHistory', 60, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:51:32', NULL, '2018-12-07 11:51:32');
INSERT INTO `Audit` VALUES (293, 'Namespace', 36, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 11:52:01', NULL, '2018-12-07 11:52:01');
INSERT INTO `Audit` VALUES (294, 'Namespace', 37, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:55:49', NULL, '2018-12-07 12:55:49');
INSERT INTO `Audit` VALUES (295, 'ClusterEntity', 28, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:55:49', NULL, '2018-12-07 12:55:49');
INSERT INTO `Audit` VALUES (296, 'Item', 42, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:56:00', NULL, '2018-12-07 12:56:00');
INSERT INTO `Audit` VALUES (297, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:56:00', NULL, '2018-12-07 12:56:00');
INSERT INTO `Audit` VALUES (298, 'Release', 63, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:56:03', NULL, '2018-12-07 12:56:03');
INSERT INTO `Audit` VALUES (299, 'ReleaseHistory', 61, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:56:03', NULL, '2018-12-07 12:56:03');
INSERT INTO `Audit` VALUES (300, 'Namespace', 38, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 12:56:17', NULL, '2018-12-07 12:56:17');
INSERT INTO `Audit` VALUES (301, 'Namespace', 39, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:11:48', NULL, '2018-12-07 14:11:48');
INSERT INTO `Audit` VALUES (302, 'ClusterEntity', 31, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:11:48', NULL, '2018-12-07 14:11:48');
INSERT INTO `Audit` VALUES (303, 'Namespace', 40, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:22:30', NULL, '2018-12-07 14:22:30');
INSERT INTO `Audit` VALUES (304, 'ClusterEntity', 32, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:22:31', NULL, '2018-12-07 14:22:31');
INSERT INTO `Audit` VALUES (305, 'Namespace', 41, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:34:50', NULL, '2018-12-07 14:34:50');
INSERT INTO `Audit` VALUES (306, 'ClusterEntity', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:34:50', NULL, '2018-12-07 14:34:50');
INSERT INTO `Audit` VALUES (307, 'ClusterEntity', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:34:50', NULL, '2018-12-07 14:34:50');
INSERT INTO `Audit` VALUES (308, 'ClusterEntity', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:34:50', NULL, '2018-12-07 14:34:50');
INSERT INTO `Audit` VALUES (309, 'ClusterEntity', 33, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:34:50', NULL, '2018-12-07 14:34:50');
INSERT INTO `Audit` VALUES (310, 'Namespace', 42, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:36:59', NULL, '2018-12-07 14:36:59');
INSERT INTO `Audit` VALUES (311, 'ClusterEntity', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:37:10', NULL, '2018-12-07 14:37:10');
INSERT INTO `Audit` VALUES (312, 'ClusterEntity', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:37:10', NULL, '2018-12-07 14:37:10');
INSERT INTO `Audit` VALUES (313, 'ClusterEntity', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:37:10', NULL, '2018-12-07 14:37:10');
INSERT INTO `Audit` VALUES (314, 'ClusterEntity', 34, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:37:10', NULL, '2018-12-07 14:37:10');
INSERT INTO `Audit` VALUES (315, 'Namespace', 43, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:37:37', NULL, '2018-12-07 14:37:37');
INSERT INTO `Audit` VALUES (316, 'ClusterEntity', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:38:03', NULL, '2018-12-07 14:38:03');
INSERT INTO `Audit` VALUES (317, 'ClusterEntity', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:39:46', NULL, '2018-12-07 14:39:46');
INSERT INTO `Audit` VALUES (318, 'ClusterEntity', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:39:47', NULL, '2018-12-07 14:39:47');
INSERT INTO `Audit` VALUES (319, 'ClusterEntity', 35, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:39:47', NULL, '2018-12-07 14:39:47');
INSERT INTO `Audit` VALUES (320, 'Namespace', 44, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:40:44', NULL, '2018-12-07 14:40:44');
INSERT INTO `Audit` VALUES (321, 'ClusterEntity', 36, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:40:46', NULL, '2018-12-07 14:40:46');
INSERT INTO `Audit` VALUES (322, 'ClusterEntity', 37, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:40:46', NULL, '2018-12-07 14:40:46');
INSERT INTO `Audit` VALUES (323, 'ClusterEntity', 38, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:40:51', NULL, '2018-12-07 14:40:51');
INSERT INTO `Audit` VALUES (324, 'ClusterEntity', 39, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:40:52', NULL, '2018-12-07 14:40:52');
INSERT INTO `Audit` VALUES (331, 'Namespace', 51, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:54:51', NULL, '2018-12-07 14:54:51');
INSERT INTO `Audit` VALUES (332, 'Namespace', 52, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:55:16', NULL, '2018-12-07 14:55:16');
INSERT INTO `Audit` VALUES (333, 'ClusterEntity', 40, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:55:16', NULL, '2018-12-07 14:55:16');
INSERT INTO `Audit` VALUES (334, 'ClusterEntity', 41, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:55:16', NULL, '2018-12-07 14:55:16');
INSERT INTO `Audit` VALUES (335, 'ClusterEntity', 42, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:55:16', NULL, '2018-12-07 14:55:16');
INSERT INTO `Audit` VALUES (336, 'ClusterEntity', 43, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 14:55:16', NULL, '2018-12-07 14:55:16');
INSERT INTO `Audit` VALUES (337, 'Item', 44, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:14:56', NULL, '2018-12-07 15:14:56');
INSERT INTO `Audit` VALUES (338, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:14:56', NULL, '2018-12-07 15:14:56');
INSERT INTO `Audit` VALUES (339, 'Item', 43, 'UPDATE', NULL, b'0', 'apollo', '2018-12-07 15:14:56', NULL, '2018-12-07 15:14:56');
INSERT INTO `Audit` VALUES (340, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-07 15:14:56', NULL, '2018-12-07 15:14:56');
INSERT INTO `Audit` VALUES (341, 'Release', 64, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:14:59', NULL, '2018-12-07 15:14:59');
INSERT INTO `Audit` VALUES (342, 'ReleaseHistory', 62, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:14:59', NULL, '2018-12-07 15:14:59');
INSERT INTO `Audit` VALUES (343, 'Release', 65, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:15:35', NULL, '2018-12-07 15:15:35');
INSERT INTO `Audit` VALUES (344, 'ReleaseHistory', 63, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:15:35', NULL, '2018-12-07 15:15:35');
INSERT INTO `Audit` VALUES (345, 'Namespace', 53, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:41:57', NULL, '2018-12-07 15:41:57');
INSERT INTO `Audit` VALUES (346, 'ClusterEntity', 44, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:41:57', NULL, '2018-12-07 15:41:57');
INSERT INTO `Audit` VALUES (347, 'ClusterEntity', 45, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:41:57', NULL, '2018-12-07 15:41:57');
INSERT INTO `Audit` VALUES (348, 'ClusterEntity', 46, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:41:57', NULL, '2018-12-07 15:41:57');
INSERT INTO `Audit` VALUES (349, 'ClusterEntity', 47, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:41:57', NULL, '2018-12-07 15:41:57');
INSERT INTO `Audit` VALUES (350, 'Item', 45, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:42:14', NULL, '2018-12-07 15:42:14');
INSERT INTO `Audit` VALUES (351, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:42:14', NULL, '2018-12-07 15:42:14');
INSERT INTO `Audit` VALUES (352, 'Release', 66, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:42:17', NULL, '2018-12-07 15:42:17');
INSERT INTO `Audit` VALUES (353, 'ReleaseHistory', 64, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 15:42:17', NULL, '2018-12-07 15:42:17');
INSERT INTO `Audit` VALUES (354, 'Item', 46, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 16:23:06', NULL, '2018-12-07 16:23:06');
INSERT INTO `Audit` VALUES (355, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 16:23:06', NULL, '2018-12-07 16:23:06');
INSERT INTO `Audit` VALUES (356, 'Release', 67, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 16:23:08', NULL, '2018-12-07 16:23:08');
INSERT INTO `Audit` VALUES (357, 'ReleaseHistory', 65, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 16:23:08', NULL, '2018-12-07 16:23:08');
INSERT INTO `Audit` VALUES (358, 'Namespace', 54, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:58:56', NULL, '2018-12-07 18:58:56');
INSERT INTO `Audit` VALUES (359, 'Item', 47, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (360, 'Item', 48, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (361, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (362, 'Item', 49, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (363, 'Item', 50, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (364, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (365, 'Item', 51, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (366, 'Item', 52, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (367, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:18', NULL, '2018-12-07 18:59:18');
INSERT INTO `Audit` VALUES (368, 'Item', 53, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (369, 'Item', 54, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (370, 'Item', 55, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (371, 'Item', 56, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (372, 'Item', 57, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (373, 'Item', 58, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (374, 'Item', 59, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (375, 'Item', 60, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (376, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:57', NULL, '2018-12-07 18:59:57');
INSERT INTO `Audit` VALUES (377, 'Item', 61, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (378, 'Item', 62, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (379, 'Item', 63, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (380, 'Item', 64, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (381, 'Item', 65, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (382, 'Item', 66, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (383, 'Item', 67, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (384, 'Item', 68, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (385, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (386, 'Item', 69, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (387, 'Item', 70, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (388, 'Item', 71, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (389, 'Item', 72, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (390, 'Item', 73, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (391, 'Item', 74, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (392, 'Item', 75, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (393, 'Item', 76, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (394, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 18:59:58', NULL, '2018-12-07 18:59:58');
INSERT INTO `Audit` VALUES (395, 'Release', 68, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:01:02', NULL, '2018-12-07 19:01:02');
INSERT INTO `Audit` VALUES (396, 'ReleaseHistory', 66, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:01:02', NULL, '2018-12-07 19:01:02');
INSERT INTO `Audit` VALUES (397, 'Item', 77, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (398, 'Item', 78, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (399, 'Item', 79, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (400, 'Item', 80, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (401, 'Item', 81, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (402, 'Item', 82, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (403, 'Item', 83, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (404, 'Item', 84, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (405, 'Item', 85, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (406, 'Item', 86, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (407, 'Item', 87, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (408, 'Item', 88, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (409, 'Item', 89, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (410, 'Item', 90, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (411, 'Item', 91, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (412, 'Item', 92, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (413, 'Item', 93, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (414, 'Item', 94, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (415, 'Item', 95, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (416, 'Item', 96, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (417, 'Item', 97, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (418, 'Item', 98, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (419, 'Item', 99, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (420, 'Item', 100, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (421, 'Item', 101, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (422, 'Item', 102, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (423, 'Item', 103, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (424, 'Item', 104, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (425, 'Item', 105, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (426, 'Item', 106, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (427, 'Item', 107, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (428, 'Item', 108, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (429, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:02:55', NULL, '2018-12-07 19:02:55');
INSERT INTO `Audit` VALUES (463, 'Item', 143, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (464, 'Item', 144, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (465, 'Item', 145, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (466, 'Item', 146, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (467, 'Item', 147, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (468, 'Item', 148, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (469, 'Item', 149, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (470, 'Item', 150, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (471, 'Item', 151, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (472, 'Item', 152, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (473, 'Item', 153, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (474, 'Item', 154, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (475, 'Item', 155, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (476, 'Item', 156, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (477, 'Item', 157, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (478, 'Item', 158, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (479, 'Item', 159, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (480, 'Item', 160, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (481, 'Item', 161, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (482, 'Item', 162, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (483, 'Item', 163, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (484, 'Item', 164, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (485, 'Item', 165, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (486, 'Item', 166, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (487, 'Item', 167, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (488, 'Item', 168, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (489, 'Item', 169, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (490, 'Item', 170, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (491, 'Item', 171, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (492, 'Item', 172, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (493, 'Item', 173, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (494, 'Item', 174, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (495, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:09', NULL, '2018-12-07 19:08:09');
INSERT INTO `Audit` VALUES (496, 'Item', 175, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (497, 'Item', 176, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (498, 'Item', 177, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (499, 'Item', 178, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (500, 'Item', 179, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (501, 'Item', 180, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (502, 'Item', 181, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (503, 'Item', 182, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (504, 'Item', 183, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (505, 'Item', 184, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (506, 'Item', 185, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (507, 'Item', 186, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (508, 'Item', 187, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (509, 'Item', 188, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (510, 'Item', 189, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (511, 'Item', 190, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (512, 'Item', 191, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (513, 'Item', 192, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (514, 'Item', 193, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (515, 'Item', 194, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (516, 'Item', 195, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (517, 'Item', 196, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (518, 'Item', 197, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (519, 'Item', 198, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (520, 'Item', 199, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (521, 'Item', 200, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (522, 'Item', 201, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (523, 'Item', 202, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (524, 'Item', 203, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (525, 'Item', 204, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (526, 'Item', 205, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (527, 'Item', 206, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (528, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (529, 'Item', 207, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (530, 'Item', 208, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (531, 'Item', 209, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (532, 'Item', 210, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (533, 'Item', 211, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (534, 'Item', 212, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (535, 'Item', 213, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (536, 'Item', 214, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (537, 'Item', 215, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (538, 'Item', 216, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (539, 'Item', 217, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (540, 'Item', 218, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (541, 'Item', 219, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (542, 'Item', 220, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (543, 'Item', 221, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (544, 'Item', 222, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (545, 'Item', 223, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (546, 'Item', 224, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (547, 'Item', 225, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (548, 'Item', 226, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (549, 'Item', 227, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (550, 'Item', 228, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (551, 'Item', 229, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (552, 'Item', 230, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (553, 'Item', 231, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (554, 'Item', 232, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (555, 'Item', 233, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (556, 'Item', 234, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (557, 'Item', 235, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (558, 'Item', 236, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (559, 'Item', 237, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (560, 'Item', 238, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (561, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:18', NULL, '2018-12-07 19:08:18');
INSERT INTO `Audit` VALUES (562, 'Release', 69, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:37', NULL, '2018-12-07 19:08:37');
INSERT INTO `Audit` VALUES (563, 'ReleaseHistory', 67, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 19:08:37', NULL, '2018-12-07 19:08:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `Env` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  KEY `IX_AppId_Name` (`AppId`,`Name`),
  KEY `IX_ParentClusterId` (`ParentClusterId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='集群';

-- ----------------------------
-- Records of Cluster
-- ----------------------------
BEGIN;
INSERT INTO `Cluster` VALUES (1, 'default', 'SampleApp', 0, b'0', '', '2018-11-11 17:34:08', '', '2018-11-16 11:10:47', NULL);
INSERT INTO `Cluster` VALUES (2, 'default', 'test12', 0, b'0', 'apollo', '2018-11-20 13:48:26', 'apollo', '2018-11-20 13:48:26', NULL);
INSERT INTO `Cluster` VALUES (3, 'default', 'test13', 0, b'0', 'apollo', '2018-11-20 14:53:12', 'apollo', '2018-11-20 14:53:12', NULL);
INSERT INTO `Cluster` VALUES (4, 'default', 'test15', 0, b'0', 'apollo', '2018-12-01 20:32:18', 'apollo', '2018-12-01 20:32:18', NULL);
INSERT INTO `Cluster` VALUES (5, 'default', 'test17', 0, b'0', 'apollo', '2018-12-02 21:01:47', 'apollo', '2018-12-02 21:01:47', NULL);
INSERT INTO `Cluster` VALUES (6, 'default', 'platform-sample-provider', 0, b'0', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-03 10:34:59', NULL);
INSERT INTO `Cluster` VALUES (7, 'default', 'tes16', 0, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02', NULL);
INSERT INTO `Cluster` VALUES (8, 'default', 'test16', 0, b'0', 'apollo', '2018-12-06 22:41:54', 'apollo', '2018-12-06 22:41:54', NULL);
INSERT INTO `Cluster` VALUES (9, 'default', 'test18', 0, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42', NULL);
INSERT INTO `Cluster` VALUES (10, 'default', 'test19', 0, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15', NULL);
INSERT INTO `Cluster` VALUES (11, 'default', 'test20', 0, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11', NULL);
INSERT INTO `Cluster` VALUES (12, 'default', 'test21', 0, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55', NULL);
INSERT INTO `Cluster` VALUES (13, 'shanghai11', 'test21', 0, b'0', 'apollo', '2018-12-07 00:54:58', 'apollo', '2018-12-07 00:54:58', NULL);
INSERT INTO `Cluster` VALUES (14, 'shanghai11', 'test21', 0, b'0', 'apollo', '2018-12-07 00:54:58', 'apollo', '2018-12-07 00:54:58', NULL);
INSERT INTO `Cluster` VALUES (15, 'shanghai11', 'test21', 0, b'0', 'apollo', '2018-12-07 00:54:58', 'apollo', '2018-12-07 00:54:58', NULL);
INSERT INTO `Cluster` VALUES (16, 'shanghai11', 'test21', 0, b'0', 'apollo', '2018-12-07 00:54:58', 'apollo', '2018-12-07 00:54:58', NULL);
INSERT INTO `Cluster` VALUES (17, 'default', 'test30', 0, b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05', NULL);
INSERT INTO `Cluster` VALUES (18, 'default', 'test31', 0, b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55', NULL);
INSERT INTO `Cluster` VALUES (19, 'shanghai11', 'test31', 0, b'0', 'apollo', '2018-12-07 00:58:01', 'apollo', '2018-12-07 10:57:43', 'DEV');
INSERT INTO `Cluster` VALUES (20, 'shanghai11', 'test31', 0, b'0', 'apollo', '2018-12-07 00:58:01', 'apollo', '2018-12-07 10:57:49', 'TEST');
INSERT INTO `Cluster` VALUES (21, 'default', 'test331', 0, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57', NULL);
INSERT INTO `Cluster` VALUES (22, 'shanghai11', 'test331', 0, b'0', 'apollo', '2018-12-07 11:52:28', 'apollo', '2018-12-07 11:52:28', 'DEV');
INSERT INTO `Cluster` VALUES (23, 'shanghai11', 'test331', 0, b'0', 'apollo', '2018-12-07 11:52:28', 'apollo', '2018-12-07 11:52:28', 'TEST');
INSERT INTO `Cluster` VALUES (24, 'BEIJING', 'test331', 0, b'0', 'apollo', '2018-12-07 12:54:53', 'apollo', '2018-12-07 12:54:53', 'PROD');
INSERT INTO `Cluster` VALUES (25, 'BEIJING', 'test331', 0, b'0', 'apollo', '2018-12-07 12:54:53', 'apollo', '2018-12-07 12:54:53', 'DEV');
INSERT INTO `Cluster` VALUES (26, 'BEIJING', 'test331', 0, b'0', 'apollo', '2018-12-07 12:54:53', 'apollo', '2018-12-07 12:54:53', 'PRE');
INSERT INTO `Cluster` VALUES (27, 'BEIJING', 'test331', 0, b'0', 'apollo', '2018-12-07 12:54:53', 'apollo', '2018-12-07 12:54:53', 'TEST');
INSERT INTO `Cluster` VALUES (28, 'default', 'TEST38', 0, b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 14:10:16', 'DEV');
INSERT INTO `Cluster` VALUES (29, 'BEIJING', 'TEST38', 0, b'0', 'apollo', '2018-12-07 12:56:33', 'apollo', '2018-12-07 12:56:33', 'DEV');
INSERT INTO `Cluster` VALUES (30, 'BEIJING', 'TEST38', 0, b'0', 'apollo', '2018-12-07 12:56:33', 'apollo', '2018-12-07 12:56:33', 'TEST');
INSERT INTO `Cluster` VALUES (31, 'default', 'test35', 0, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48', NULL);
INSERT INTO `Cluster` VALUES (32, 'default', 'test39', 0, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31', NULL);
INSERT INTO `Cluster` VALUES (33, 'default', 'test51', 0, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50', 'PROD');
INSERT INTO `Cluster` VALUES (34, 'default', 'test55', 0, b'0', 'apollo', '2018-12-07 14:37:10', 'apollo', '2018-12-07 14:37:17', 'PROD');
INSERT INTO `Cluster` VALUES (35, 'default', 'test56', 0, b'0', 'apollo', '2018-12-07 14:37:55', 'apollo', '2018-12-07 14:39:47', 'PROD');
INSERT INTO `Cluster` VALUES (36, 'default', 'test58', 0, b'0', 'apollo', '2018-12-07 14:40:46', 'apollo', '2018-12-07 14:40:46', 'DEV');
INSERT INTO `Cluster` VALUES (37, 'default', 'test58', 0, b'0', 'apollo', '2018-12-07 14:40:46', 'apollo', '2018-12-07 14:40:46', 'TEST');
INSERT INTO `Cluster` VALUES (38, 'default', 'test58', 0, b'0', 'apollo', '2018-12-07 14:40:51', 'apollo', '2018-12-07 14:40:51', 'PRE');
INSERT INTO `Cluster` VALUES (39, 'default', 'test58', 0, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52', 'PROD');
INSERT INTO `Cluster` VALUES (40, 'default', 'test60', 0, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16', 'DEV');
INSERT INTO `Cluster` VALUES (41, 'default', 'test60', 0, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16', 'TEST');
INSERT INTO `Cluster` VALUES (42, 'default', 'test60', 0, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16', 'PRE');
INSERT INTO `Cluster` VALUES (43, 'default', 'test60', 0, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16', 'PROD');
INSERT INTO `Cluster` VALUES (44, 'default', 'test61', 0, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57', 'DEV');
INSERT INTO `Cluster` VALUES (45, 'default', 'test61', 0, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57', 'TEST');
INSERT INTO `Cluster` VALUES (46, 'default', 'test61', 0, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57', 'PRE');
INSERT INTO `Cluster` VALUES (47, 'default', 'test61', 0, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57', 'PROD');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='commit 历史表';

-- ----------------------------
-- Records of Commit
-- ----------------------------
BEGIN;
INSERT INTO `Commit` VALUES (1, '{\"createItems\":[{\"namespaceId\":16,\"key\":\"999\",\"value\":\"999\",\"comment\":\"\",\"lineNum\":6,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'tes16', 'default', 'application', NULL, b'0', 'apollo', '2018-12-04 13:45:36', 'apollo', '2018-12-04 13:45:36', 'DEV');
INSERT INTO `Commit` VALUES (2, '{\"createItems\":[],\"updateItems\":[{\"namespaceId\":16,\"key\":\"999\",\"value\":\"99911\",\"comment\":\"\",\"lineNum\":6,\"id\":30,\"isDeleted\":false}],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'tes16', 'default', 'application', NULL, b'0', 'apollo', '2018-12-04 13:46:44', 'apollo', '2018-12-04 13:46:44', 'DEV');
INSERT INTO `Commit` VALUES (3, '{\"createItems\":[{\"namespaceId\":20,\"key\":\"123\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test19', 'default', 'application', NULL, b'0', 'apollo', '2018-12-06 22:52:50', 'apollo', '2018-12-06 22:52:50', 'DEV');
INSERT INTO `Commit` VALUES (4, '{\"createItems\":[{\"namespaceId\":20,\"key\":\"222\",\"value\":\"333\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test19', 'default', 'application', NULL, b'0', 'apollo', '2018-12-06 22:54:44', 'apollo', '2018-12-06 22:54:44', 'DEV');
INSERT INTO `Commit` VALUES (5, '{\"createItems\":[{\"namespaceId\":20,\"key\":\"333\",\"value\":\"555\",\"comment\":\"\",\"lineNum\":3,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test19', 'default', 'application', NULL, b'0', 'apollo', '2018-12-06 23:52:01', 'apollo', '2018-12-06 23:52:01', 'DEV');
INSERT INTO `Commit` VALUES (6, '{\"createItems\":[{\"namespaceId\":20,\"key\":\"tt\",\"value\":\"tts\",\"comment\":\"\",\"lineNum\":4,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test19', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:00:58', 'apollo', '2018-12-07 00:00:58', 'DEV');
INSERT INTO `Commit` VALUES (7, '{\"createItems\":[{\"namespaceId\":20,\"key\":\"mm\",\"value\":\"ttm\",\"comment\":\"\",\"lineNum\":5,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test19', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:02:32', 'apollo', '2018-12-07 00:02:32', 'DEV');
INSERT INTO `Commit` VALUES (8, '{\"createItems\":[{\"namespaceId\":20,\"key\":\"hh\",\"value\":\"kk\",\"comment\":\"\",\"lineNum\":6,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test19', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:12:32', 'apollo', '2018-12-07 00:12:32', 'DEV');
INSERT INTO `Commit` VALUES (9, '{\"createItems\":[{\"namespaceId\":21,\"key\":\"123\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test20', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:45:25', 'apollo', '2018-12-07 00:45:25', 'DEV');
INSERT INTO `Commit` VALUES (10, '{\"createItems\":[{\"namespaceId\":21,\"key\":\"123\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test20', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:45:45', 'apollo', '2018-12-07 00:45:45', 'TEST');
INSERT INTO `Commit` VALUES (11, '{\"createItems\":[{\"namespaceId\":28,\"key\":\"11\",\"value\":\"11\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test30', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:56:15', 'apollo', '2018-12-07 00:56:15', 'DEV');
INSERT INTO `Commit` VALUES (12, '{\"createItems\":[{\"namespaceId\":30,\"key\":\"11\",\"value\":\"11\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test31', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 00:57:07', 'apollo', '2018-12-07 00:57:07', 'DEV');
INSERT INTO `Commit` VALUES (13, '{\"createItems\":[{\"namespaceId\":35,\"key\":\"11\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test331', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 11:51:28', 'apollo', '2018-12-07 11:51:28', 'DEV');
INSERT INTO `Commit` VALUES (14, '{\"createItems\":[{\"namespaceId\":37,\"key\":\"11\",\"value\":\"112\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'TEST38', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 12:56:00', 'apollo', '2018-12-07 12:56:00', 'DEV');
INSERT INTO `Commit` VALUES (15, '{\"createItems\":[{\"namespaceId\":52,\"key\":\"122\",\"value\":\"21\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[{\"namespaceId\":52,\"key\":\"11\",\"value\":\"221\",\"comment\":\"122\",\"lineNum\":1,\"id\":43,\"isDeleted\":false}],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test60', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 15:14:56', 'apollo', '2018-12-07 15:14:56', 'DEV');
INSERT INTO `Commit` VALUES (16, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 15:42:14', 'apollo', '2018-12-07 15:42:14', 'DEV');
INSERT INTO `Commit` VALUES (17, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 16:23:06', 'apollo', '2018-12-07 16:23:06', 'DEV');
INSERT INTO `Commit` VALUES (18, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":47,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:17\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:17\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":48,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:17\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:17\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', NULL);
INSERT INTO `Commit` VALUES (19, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":49,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":50,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:18\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', NULL);
INSERT INTO `Commit` VALUES (20, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":51,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":52,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:18\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', NULL);
INSERT INTO `Commit` VALUES (21, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":53,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":54,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"DEV\",\"id\":55,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"DEV\",\"id\":56,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"DEV\",\"id\":57,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"DEV\",\"id\":58,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"DEV\",\"id\":59,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"DEV\",\"id\":60,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', NULL);
INSERT INTO `Commit` VALUES (22, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":61,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":62,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"DEV\",\"id\":63,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"DEV\",\"id\":64,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"DEV\",\"id\":65,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"DEV\",\"id\":66,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"DEV\",\"id\":67,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"DEV\",\"id\":68,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:57\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:57\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', NULL);
INSERT INTO `Commit` VALUES (23, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":69,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":70,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"DEV\",\"id\":71,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"DEV\",\"id\":72,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"DEV\",\"id\":73,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"DEV\",\"id\":74,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"DEV\",\"id\":75,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"DEV\",\"id\":76,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 18:59:58\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 18:59:58\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', NULL);
INSERT INTO `Commit` VALUES (24, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"DEV\",\"id\":77,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"DEV\",\"id\":78,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"DEV\",\"id\":79,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"DEV\",\"id\":80,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"DEV\",\"id\":81,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"DEV\",\"id\":82,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"DEV\",\"id\":83,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"DEV\",\"id\":84,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":9,\"env\":\"DEV\",\"id\":85,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":10,\"env\":\"DEV\",\"id\":86,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":11,\"env\":\"DEV\",\"id\":87,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":12,\"env\":\"DEV\",\"id\":88,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":13,\"env\":\"DEV\",\"id\":89,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":14,\"env\":\"DEV\",\"id\":90,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":15,\"env\":\"DEV\",\"id\":91,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":16,\"env\":\"DEV\",\"id\":92,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":17,\"env\":\"DEV\",\"id\":93,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":18,\"env\":\"DEV\",\"id\":94,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":19,\"env\":\"DEV\",\"id\":95,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":20,\"env\":\"DEV\",\"id\":96,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":21,\"env\":\"DEV\",\"id\":97,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":22,\"env\":\"DEV\",\"id\":98,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":23,\"env\":\"DEV\",\"id\":99,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":24,\"env\":\"DEV\",\"id\":100,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":25,\"env\":\"DEV\",\"id\":101,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:54\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":26,\"env\":\"DEV\",\"id\":102,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":27,\"env\":\"DEV\",\"id\":103,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":28,\"env\":\"DEV\",\"id\":104,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":29,\"env\":\"DEV\",\"id\":105,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":30,\"env\":\"DEV\",\"id\":106,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":31,\"env\":\"DEV\",\"id\":107,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":32,\"env\":\"DEV\",\"id\":108,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:02:55\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:02:55\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', NULL);
INSERT INTO `Commit` VALUES (25, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"TEST\",\"id\":143,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"TEST\",\"id\":144,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"TEST\",\"id\":145,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"TEST\",\"id\":146,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"TEST\",\"id\":147,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"TEST\",\"id\":148,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"TEST\",\"id\":149,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"TEST\",\"id\":150,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":9,\"env\":\"TEST\",\"id\":151,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":10,\"env\":\"TEST\",\"id\":152,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":11,\"env\":\"TEST\",\"id\":153,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":12,\"env\":\"TEST\",\"id\":154,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":13,\"env\":\"TEST\",\"id\":155,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":14,\"env\":\"TEST\",\"id\":156,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":15,\"env\":\"TEST\",\"id\":157,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":16,\"env\":\"TEST\",\"id\":158,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":17,\"env\":\"TEST\",\"id\":159,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":18,\"env\":\"TEST\",\"id\":160,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":19,\"env\":\"TEST\",\"id\":161,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":20,\"env\":\"TEST\",\"id\":162,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":21,\"env\":\"TEST\",\"id\":163,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":22,\"env\":\"TEST\",\"id\":164,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":23,\"env\":\"TEST\",\"id\":165,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":24,\"env\":\"TEST\",\"id\":166,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":25,\"env\":\"TEST\",\"id\":167,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":26,\"env\":\"TEST\",\"id\":168,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":27,\"env\":\"TEST\",\"id\":169,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":28,\"env\":\"TEST\",\"id\":170,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":29,\"env\":\"TEST\",\"id\":171,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":30,\"env\":\"TEST\",\"id\":172,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":31,\"env\":\"TEST\",\"id\":173,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":32,\"env\":\"TEST\",\"id\":174,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:09\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:09\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 19:08:10', 'apollo', '2018-12-07 19:08:10', NULL);
INSERT INTO `Commit` VALUES (26, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"PRE\",\"id\":175,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"PRE\",\"id\":176,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"PRE\",\"id\":177,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"PRE\",\"id\":178,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"PRE\",\"id\":179,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"PRE\",\"id\":180,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"PRE\",\"id\":181,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"PRE\",\"id\":182,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":9,\"env\":\"PRE\",\"id\":183,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":10,\"env\":\"PRE\",\"id\":184,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":11,\"env\":\"PRE\",\"id\":185,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":12,\"env\":\"PRE\",\"id\":186,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":13,\"env\":\"PRE\",\"id\":187,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":14,\"env\":\"PRE\",\"id\":188,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":15,\"env\":\"PRE\",\"id\":189,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":16,\"env\":\"PRE\",\"id\":190,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":17,\"env\":\"PRE\",\"id\":191,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":18,\"env\":\"PRE\",\"id\":192,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":19,\"env\":\"PRE\",\"id\":193,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":20,\"env\":\"PRE\",\"id\":194,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":21,\"env\":\"PRE\",\"id\":195,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":22,\"env\":\"PRE\",\"id\":196,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":23,\"env\":\"PRE\",\"id\":197,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":24,\"env\":\"PRE\",\"id\":198,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":25,\"env\":\"PRE\",\"id\":199,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":26,\"env\":\"PRE\",\"id\":200,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":27,\"env\":\"PRE\",\"id\":201,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":28,\"env\":\"PRE\",\"id\":202,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":29,\"env\":\"PRE\",\"id\":203,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":30,\"env\":\"PRE\",\"id\":204,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":31,\"env\":\"PRE\",\"id\":205,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":32,\"env\":\"PRE\",\"id\":206,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', NULL);
INSERT INTO `Commit` VALUES (27, '{\"createItems\":[{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":1,\"env\":\"PROD\",\"id\":207,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":2,\"env\":\"PROD\",\"id\":208,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":3,\"env\":\"PROD\",\"id\":209,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":4,\"env\":\"PROD\",\"id\":210,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":5,\"env\":\"PROD\",\"id\":211,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":6,\"env\":\"PROD\",\"id\":212,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":7,\"env\":\"PROD\",\"id\":213,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":8,\"env\":\"PROD\",\"id\":214,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":9,\"env\":\"PROD\",\"id\":215,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":10,\"env\":\"PROD\",\"id\":216,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":11,\"env\":\"PROD\",\"id\":217,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":12,\"env\":\"PROD\",\"id\":218,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":13,\"env\":\"PROD\",\"id\":219,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":14,\"env\":\"PROD\",\"id\":220,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":15,\"env\":\"PROD\",\"id\":221,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":16,\"env\":\"PROD\",\"id\":222,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":17,\"env\":\"PROD\",\"id\":223,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":18,\"env\":\"PROD\",\"id\":224,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":19,\"env\":\"PROD\",\"id\":225,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":20,\"env\":\"PROD\",\"id\":226,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":21,\"env\":\"PROD\",\"id\":227,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":22,\"env\":\"PROD\",\"id\":228,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":23,\"env\":\"PROD\",\"id\":229,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":24,\"env\":\"PROD\",\"id\":230,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":25,\"env\":\"PROD\",\"id\":231,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":26,\"env\":\"PROD\",\"id\":232,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":27,\"env\":\"PROD\",\"id\":233,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":28,\"env\":\"PROD\",\"id\":234,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":29,\"env\":\"PROD\",\"id\":235,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":30,\"env\":\"PROD\",\"id\":236,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"123\",\"value\":\"1233\",\"comment\":\"\",\"lineNum\":31,\"env\":\"PROD\",\"id\":237,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"},{\"namespaceId\":53,\"key\":\"11\",\"value\":\"12\",\"comment\":\"\",\"lineNum\":32,\"env\":\"PROD\",\"id\":238,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-07 19:08:18\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-07 19:08:18\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test61', 'default', 'application', NULL, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='开放API消费者';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='consumer审计表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='consumer和role的绑定表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='consumer token表';

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用收藏表';

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
  `Env` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_Namespace` (`AppId`,`ClusterName`,`NamespaceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='灰度规则表';

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='使用配置的应用实例';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用实例的配置信息';

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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='配置项目';

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
INSERT INTO `Item` VALUES (31, 20, '123', '123', '', 1, b'0', 'apollo', '2018-12-06 22:52:50', 'apollo', '2018-12-06 22:52:50', 'DEV');
INSERT INTO `Item` VALUES (32, 20, '222', '333', '', 2, b'0', 'apollo', '2018-12-06 22:54:44', 'apollo', '2018-12-06 22:54:44', 'DEV');
INSERT INTO `Item` VALUES (33, 20, '333', '555', '', 3, b'0', 'apollo', '2018-12-06 23:52:01', 'apollo', '2018-12-06 23:52:01', 'DEV');
INSERT INTO `Item` VALUES (34, 20, 'tt', 'tts', '', 4, b'0', 'apollo', '2018-12-07 00:00:58', 'apollo', '2018-12-07 00:00:58', 'DEV');
INSERT INTO `Item` VALUES (35, 20, 'mm', 'ttm', '', 5, b'0', 'apollo', '2018-12-07 00:02:32', 'apollo', '2018-12-07 00:02:32', 'DEV');
INSERT INTO `Item` VALUES (36, 20, 'hh', 'kk', '', 6, b'0', 'apollo', '2018-12-07 00:12:32', 'apollo', '2018-12-07 00:12:32', 'DEV');
INSERT INTO `Item` VALUES (37, 21, '123', '123', '', 1, b'0', 'apollo', '2018-12-07 00:45:25', 'apollo', '2018-12-07 00:45:25', 'DEV');
INSERT INTO `Item` VALUES (38, 21, '123', '123', '', 1, b'0', 'apollo', '2018-12-07 00:45:45', 'apollo', '2018-12-07 00:45:45', 'TEST');
INSERT INTO `Item` VALUES (39, 28, '11', '11', '', 1, b'0', 'apollo', '2018-12-07 00:56:15', 'apollo', '2018-12-07 00:56:15', 'DEV');
INSERT INTO `Item` VALUES (40, 30, '11', '11', '', 1, b'0', 'apollo', '2018-12-07 00:57:06', 'apollo', '2018-12-07 00:57:06', 'DEV');
INSERT INTO `Item` VALUES (41, 35, '11', '123', '', 1, b'0', 'apollo', '2018-12-07 11:51:27', 'apollo', '2018-12-07 11:51:27', 'DEV');
INSERT INTO `Item` VALUES (42, 37, '11', '112', '', 1, b'0', 'apollo', '2018-12-07 12:56:00', 'apollo', '2018-12-07 12:56:00', 'DEV');
INSERT INTO `Item` VALUES (43, 52, '11', '221', '122', 1, b'0', 'apollo', '2018-12-07 15:14:39', 'apollo', '2018-12-07 15:14:56', 'DEV');
INSERT INTO `Item` VALUES (44, 52, '122', '21', '', 2, b'0', 'apollo', '2018-12-07 15:14:56', 'apollo', '2018-12-07 15:14:56', 'DEV');
INSERT INTO `Item` VALUES (45, 53, '11', '12', '', 1, b'0', 'apollo', '2018-12-07 15:42:14', 'apollo', '2018-12-07 15:42:14', 'DEV');
INSERT INTO `Item` VALUES (46, 53, '123', '1233', '', 2, b'0', 'apollo', '2018-12-07 16:23:06', 'apollo', '2018-12-07 16:23:06', 'DEV');
INSERT INTO `Item` VALUES (47, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', 'DEV');
INSERT INTO `Item` VALUES (48, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', 'DEV');
INSERT INTO `Item` VALUES (49, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', 'DEV');
INSERT INTO `Item` VALUES (50, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', 'DEV');
INSERT INTO `Item` VALUES (51, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', 'DEV');
INSERT INTO `Item` VALUES (52, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 18:59:18', 'apollo', '2018-12-07 18:59:18', 'DEV');
INSERT INTO `Item` VALUES (53, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (54, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (55, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (56, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (57, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (58, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (59, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (60, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 18:59:57', 'apollo', '2018-12-07 18:59:57', 'DEV');
INSERT INTO `Item` VALUES (61, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (62, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (63, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (64, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (65, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (66, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (67, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (68, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (69, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (70, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (71, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (72, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (73, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (74, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (75, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (76, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 18:59:58', 'apollo', '2018-12-07 18:59:58', 'DEV');
INSERT INTO `Item` VALUES (77, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (78, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (79, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (80, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (81, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (82, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (83, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (84, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (85, 53, '123', '1233', '', 9, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (86, 53, '11', '12', '', 10, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (87, 53, '123', '1233', '', 11, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (88, 53, '11', '12', '', 12, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (89, 53, '123', '1233', '', 13, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (90, 53, '11', '12', '', 14, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (91, 53, '123', '1233', '', 15, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (92, 53, '11', '12', '', 16, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (93, 53, '123', '1233', '', 17, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (94, 53, '11', '12', '', 18, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (95, 53, '123', '1233', '', 19, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (96, 53, '11', '12', '', 20, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (97, 53, '123', '1233', '', 21, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (98, 53, '11', '12', '', 22, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (99, 53, '123', '1233', '', 23, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (100, 53, '11', '12', '', 24, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (101, 53, '123', '1233', '', 25, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (102, 53, '11', '12', '', 26, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (103, 53, '123', '1233', '', 27, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (104, 53, '11', '12', '', 28, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (105, 53, '123', '1233', '', 29, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (106, 53, '11', '12', '', 30, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (107, 53, '123', '1233', '', 31, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (108, 53, '11', '12', '', 32, b'0', 'apollo', '2018-12-07 19:02:55', 'apollo', '2018-12-07 19:02:55', 'DEV');
INSERT INTO `Item` VALUES (143, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (144, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (145, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (146, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (147, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (148, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (149, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (150, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (151, 53, '123', '1233', '', 9, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (152, 53, '11', '12', '', 10, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (153, 53, '123', '1233', '', 11, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (154, 53, '11', '12', '', 12, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (155, 53, '123', '1233', '', 13, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (156, 53, '11', '12', '', 14, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (157, 53, '123', '1233', '', 15, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (158, 53, '11', '12', '', 16, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (159, 53, '123', '1233', '', 17, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (160, 53, '11', '12', '', 18, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (161, 53, '123', '1233', '', 19, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (162, 53, '11', '12', '', 20, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (163, 53, '123', '1233', '', 21, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (164, 53, '11', '12', '', 22, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (165, 53, '123', '1233', '', 23, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (166, 53, '11', '12', '', 24, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (167, 53, '123', '1233', '', 25, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (168, 53, '11', '12', '', 26, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (169, 53, '123', '1233', '', 27, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (170, 53, '11', '12', '', 28, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (171, 53, '123', '1233', '', 29, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (172, 53, '11', '12', '', 30, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (173, 53, '123', '1233', '', 31, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (174, 53, '11', '12', '', 32, b'0', 'apollo', '2018-12-07 19:08:09', 'apollo', '2018-12-07 19:08:09', 'TEST');
INSERT INTO `Item` VALUES (175, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (176, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (177, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (178, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (179, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (180, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (181, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (182, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (183, 53, '123', '1233', '', 9, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (184, 53, '11', '12', '', 10, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (185, 53, '123', '1233', '', 11, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (186, 53, '11', '12', '', 12, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (187, 53, '123', '1233', '', 13, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (188, 53, '11', '12', '', 14, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (189, 53, '123', '1233', '', 15, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (190, 53, '11', '12', '', 16, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (191, 53, '123', '1233', '', 17, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (192, 53, '11', '12', '', 18, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (193, 53, '123', '1233', '', 19, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (194, 53, '11', '12', '', 20, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (195, 53, '123', '1233', '', 21, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (196, 53, '11', '12', '', 22, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (197, 53, '123', '1233', '', 23, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (198, 53, '11', '12', '', 24, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (199, 53, '123', '1233', '', 25, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (200, 53, '11', '12', '', 26, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (201, 53, '123', '1233', '', 27, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (202, 53, '11', '12', '', 28, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (203, 53, '123', '1233', '', 29, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (204, 53, '11', '12', '', 30, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (205, 53, '123', '1233', '', 31, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (206, 53, '11', '12', '', 32, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PRE');
INSERT INTO `Item` VALUES (207, 53, '123', '1233', '', 1, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (208, 53, '11', '12', '', 2, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (209, 53, '123', '1233', '', 3, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (210, 53, '11', '12', '', 4, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (211, 53, '123', '1233', '', 5, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (212, 53, '11', '12', '', 6, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (213, 53, '123', '1233', '', 7, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (214, 53, '11', '12', '', 8, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (215, 53, '123', '1233', '', 9, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (216, 53, '11', '12', '', 10, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (217, 53, '123', '1233', '', 11, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (218, 53, '11', '12', '', 12, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (219, 53, '123', '1233', '', 13, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (220, 53, '11', '12', '', 14, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (221, 53, '123', '1233', '', 15, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (222, 53, '11', '12', '', 16, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (223, 53, '123', '1233', '', 17, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (224, 53, '11', '12', '', 18, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (225, 53, '123', '1233', '', 19, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (226, 53, '11', '12', '', 20, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (227, 53, '123', '1233', '', 21, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (228, 53, '11', '12', '', 22, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (229, 53, '123', '1233', '', 23, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (230, 53, '11', '12', '', 24, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (231, 53, '123', '1233', '', 25, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (232, 53, '11', '12', '', 26, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (233, 53, '123', '1233', '', 27, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (234, 53, '11', '12', '', 28, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (235, 53, '123', '1233', '', 29, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (236, 53, '11', '12', '', 30, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (237, 53, '123', '1233', '', 31, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
INSERT INTO `Item` VALUES (238, 53, '11', '12', '', 32, b'0', 'apollo', '2018-12-07 19:08:18', 'apollo', '2018-12-07 19:08:18', 'PROD');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='命名空间';

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
INSERT INTO `Namespace` VALUES (17, 'platform-sample-provider', 'default', 'TEST1.monitor1', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Namespace` VALUES (18, 'test16', 'default', 'application', b'0', 'apollo', '2018-12-06 22:41:54', 'apollo', '2018-12-06 22:41:54');
INSERT INTO `Namespace` VALUES (19, 'test18', 'default', 'application', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Namespace` VALUES (20, 'test19', 'default', 'application', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Namespace` VALUES (21, 'test20', 'default', 'application', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Namespace` VALUES (22, 'test20', 'default', 'TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Namespace` VALUES (23, 'test20', 'default', 'TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Namespace` VALUES (24, 'test20', 'default', 'TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Namespace` VALUES (25, 'test20', 'default', 'TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Namespace` VALUES (26, 'test21', 'default', 'application', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Namespace` VALUES (27, 'test21', 'default', 'TEST1.ttt1', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Namespace` VALUES (28, 'test30', 'default', 'application', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Namespace` VALUES (29, 'test30', 'default', 'TEST1.test222', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Namespace` VALUES (30, 'test31', 'default', 'application', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `Namespace` VALUES (31, 'test31', 'default', 'test31.test11', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Namespace` VALUES (35, 'test331', 'default', 'application', b'0', 'apollo', '2018-12-07 11:36:58', 'apollo', '2018-12-07 11:36:58');
INSERT INTO `Namespace` VALUES (36, 'test331', 'default', 'TEST1.TTT98', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Namespace` VALUES (37, 'TEST38', 'default', 'application', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `Namespace` VALUES (38, 'TEST38', 'default', 'TEST1.TTT981', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Namespace` VALUES (39, 'test35', 'default', 'application', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Namespace` VALUES (40, 'test39', 'default', 'application', b'0', 'apollo', '2018-12-07 14:22:30', 'apollo', '2018-12-07 14:22:30');
INSERT INTO `Namespace` VALUES (41, 'test51', 'default', 'application', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Namespace` VALUES (42, 'test55', 'default', 'application', b'0', 'apollo', '2018-12-07 14:36:59', 'apollo', '2018-12-07 14:36:59');
INSERT INTO `Namespace` VALUES (43, 'test56', 'default', 'application', b'0', 'apollo', '2018-12-07 14:37:37', 'apollo', '2018-12-07 14:37:37');
INSERT INTO `Namespace` VALUES (44, 'test58', 'default', 'application', b'0', 'apollo', '2018-12-07 14:40:44', 'apollo', '2018-12-07 14:40:44');
INSERT INTO `Namespace` VALUES (51, 'test58', 'default', 'TEST1.test11112233', b'0', 'apollo', '2018-12-07 14:54:34', 'apollo', '2018-12-07 14:54:34');
INSERT INTO `Namespace` VALUES (52, 'test60', 'default', 'application', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Namespace` VALUES (53, 'test61', 'default', 'application', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Namespace` VALUES (54, 'test61', 'default', 'TEST1.test3333', b'0', 'apollo', '2018-12-07 18:58:49', 'apollo', '2018-12-07 18:58:49');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='namespace的编辑锁';

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
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='permission表';

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
INSERT INTO `Permission` VALUES (134, 'ModifyNamespace', 'platform-sample-provider+TEST1.monitor1', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (135, 'ReleaseNamespace', 'platform-sample-provider+TEST1.monitor1', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (136, 'ModifyNamespace', 'platform-sample-provider+TEST1.monitor1+DEV', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (137, 'ReleaseNamespace', 'platform-sample-provider+TEST1.monitor1+DEV', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (138, 'ModifyNamespace', 'platform-sample-provider+TEST1.monitor1+TEST', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (139, 'ReleaseNamespace', 'platform-sample-provider+TEST1.monitor1+TEST', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (140, 'ModifyNamespace', 'platform-sample-provider+TEST1.monitor1+PRE', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (141, 'ReleaseNamespace', 'platform-sample-provider+TEST1.monitor1+PRE', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (142, 'ModifyNamespace', 'platform-sample-provider+TEST1.monitor1+PROD', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (143, 'ReleaseNamespace', 'platform-sample-provider+TEST1.monitor1+PROD', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Permission` VALUES (144, 'CreateCluster', 'test16', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (145, 'CreateNamespace', 'test16', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (146, 'AssignRole', 'test16', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (147, 'ModifyNamespace', 'test16+application', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (148, 'ReleaseNamespace', 'test16+application', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (149, 'ModifyNamespace', 'test16+application+DEV', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (150, 'ReleaseNamespace', 'test16+application+DEV', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (151, 'ModifyNamespace', 'test16+application+TEST', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (152, 'ReleaseNamespace', 'test16+application+TEST', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (153, 'ModifyNamespace', 'test16+application+PRE', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (154, 'ReleaseNamespace', 'test16+application+PRE', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (155, 'ModifyNamespace', 'test16+application+PROD', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (156, 'ReleaseNamespace', 'test16+application+PROD', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Permission` VALUES (157, 'CreateCluster', 'test18', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (158, 'CreateNamespace', 'test18', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (159, 'AssignRole', 'test18', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (160, 'ModifyNamespace', 'test18+application', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (161, 'ReleaseNamespace', 'test18+application', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (162, 'ModifyNamespace', 'test18+application+DEV', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (163, 'ReleaseNamespace', 'test18+application+DEV', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (164, 'ModifyNamespace', 'test18+application+TEST', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (165, 'ReleaseNamespace', 'test18+application+TEST', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (166, 'ModifyNamespace', 'test18+application+PRE', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (167, 'ReleaseNamespace', 'test18+application+PRE', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (168, 'ModifyNamespace', 'test18+application+PROD', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (169, 'ReleaseNamespace', 'test18+application+PROD', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Permission` VALUES (170, 'CreateCluster', 'test19', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (171, 'CreateNamespace', 'test19', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (172, 'AssignRole', 'test19', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (173, 'ModifyNamespace', 'test19+application', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (174, 'ReleaseNamespace', 'test19+application', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (175, 'ModifyNamespace', 'test19+application+DEV', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (176, 'ReleaseNamespace', 'test19+application+DEV', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (177, 'ModifyNamespace', 'test19+application+TEST', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (178, 'ReleaseNamespace', 'test19+application+TEST', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (179, 'ModifyNamespace', 'test19+application+PRE', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (180, 'ReleaseNamespace', 'test19+application+PRE', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (181, 'ModifyNamespace', 'test19+application+PROD', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (182, 'ReleaseNamespace', 'test19+application+PROD', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Permission` VALUES (183, 'CreateCluster', 'test20', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (184, 'CreateNamespace', 'test20', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (185, 'AssignRole', 'test20', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (186, 'ModifyNamespace', 'test20+application', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (187, 'ReleaseNamespace', 'test20+application', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (188, 'ModifyNamespace', 'test20+application+DEV', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (189, 'ReleaseNamespace', 'test20+application+DEV', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (190, 'ModifyNamespace', 'test20+application+TEST', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (191, 'ReleaseNamespace', 'test20+application+TEST', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (192, 'ModifyNamespace', 'test20+application+PRE', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (193, 'ReleaseNamespace', 'test20+application+PRE', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (194, 'ModifyNamespace', 'test20+application+PROD', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (195, 'ReleaseNamespace', 'test20+application+PROD', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Permission` VALUES (196, 'ModifyNamespace', 'test20+TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (197, 'ReleaseNamespace', 'test20+TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (198, 'ModifyNamespace', 'test20+TEST1.test+DEV', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (199, 'ReleaseNamespace', 'test20+TEST1.test+DEV', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (200, 'ModifyNamespace', 'test20+TEST1.test+TEST', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (201, 'ReleaseNamespace', 'test20+TEST1.test+TEST', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (202, 'ModifyNamespace', 'test20+TEST1.test+PRE', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (203, 'ReleaseNamespace', 'test20+TEST1.test+PRE', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (204, 'ModifyNamespace', 'test20+TEST1.test+PROD', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (205, 'ReleaseNamespace', 'test20+TEST1.test+PROD', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Permission` VALUES (206, 'CreateCluster', 'test21', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (207, 'CreateNamespace', 'test21', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (208, 'AssignRole', 'test21', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (209, 'ModifyNamespace', 'test21+application', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (210, 'ReleaseNamespace', 'test21+application', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (211, 'ModifyNamespace', 'test21+application+DEV', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (212, 'ReleaseNamespace', 'test21+application+DEV', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (213, 'ModifyNamespace', 'test21+application+TEST', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (214, 'ReleaseNamespace', 'test21+application+TEST', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (215, 'ModifyNamespace', 'test21+application+PRE', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (216, 'ReleaseNamespace', 'test21+application+PRE', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (217, 'ModifyNamespace', 'test21+application+PROD', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (218, 'ReleaseNamespace', 'test21+application+PROD', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Permission` VALUES (219, 'ModifyNamespace', 'test21+TEST1.ttt1', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (220, 'ReleaseNamespace', 'test21+TEST1.ttt1', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (221, 'ModifyNamespace', 'test21+TEST1.ttt1+DEV', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (222, 'ReleaseNamespace', 'test21+TEST1.ttt1+DEV', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (223, 'ModifyNamespace', 'test21+TEST1.ttt1+TEST', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (224, 'ReleaseNamespace', 'test21+TEST1.ttt1+TEST', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (225, 'ModifyNamespace', 'test21+TEST1.ttt1+PRE', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (226, 'ReleaseNamespace', 'test21+TEST1.ttt1+PRE', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (227, 'ModifyNamespace', 'test21+TEST1.ttt1+PROD', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (228, 'ReleaseNamespace', 'test21+TEST1.ttt1+PROD', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Permission` VALUES (229, 'CreateCluster', 'test30', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Permission` VALUES (230, 'CreateNamespace', 'test30', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Permission` VALUES (231, 'AssignRole', 'test30', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Permission` VALUES (232, 'ModifyNamespace', 'test30+application', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Permission` VALUES (233, 'ReleaseNamespace', 'test30+application', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Permission` VALUES (234, 'ModifyNamespace', 'test30+application+DEV', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (235, 'ReleaseNamespace', 'test30+application+DEV', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (236, 'ModifyNamespace', 'test30+application+TEST', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (237, 'ReleaseNamespace', 'test30+application+TEST', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (238, 'ModifyNamespace', 'test30+application+PRE', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (239, 'ReleaseNamespace', 'test30+application+PRE', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (240, 'ModifyNamespace', 'test30+application+PROD', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (241, 'ReleaseNamespace', 'test30+application+PROD', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Permission` VALUES (242, 'ModifyNamespace', 'test30+TEST1.test222', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (243, 'ReleaseNamespace', 'test30+TEST1.test222', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (244, 'ModifyNamespace', 'test30+TEST1.test222+DEV', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (245, 'ReleaseNamespace', 'test30+TEST1.test222+DEV', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (246, 'ModifyNamespace', 'test30+TEST1.test222+TEST', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (247, 'ReleaseNamespace', 'test30+TEST1.test222+TEST', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (248, 'ModifyNamespace', 'test30+TEST1.test222+PRE', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (249, 'ReleaseNamespace', 'test30+TEST1.test222+PRE', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (250, 'ModifyNamespace', 'test30+TEST1.test222+PROD', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (251, 'ReleaseNamespace', 'test30+TEST1.test222+PROD', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Permission` VALUES (252, 'CreateCluster', 'test31', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `Permission` VALUES (253, 'CreateNamespace', 'test31', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `Permission` VALUES (254, 'AssignRole', 'test31', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `Permission` VALUES (255, 'ModifyNamespace', 'test31+application', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (256, 'ReleaseNamespace', 'test31+application', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (257, 'ModifyNamespace', 'test31+application+DEV', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (258, 'ReleaseNamespace', 'test31+application+DEV', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (259, 'ModifyNamespace', 'test31+application+TEST', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (260, 'ReleaseNamespace', 'test31+application+TEST', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (261, 'ModifyNamespace', 'test31+application+PRE', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (262, 'ReleaseNamespace', 'test31+application+PRE', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (263, 'ModifyNamespace', 'test31+application+PROD', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (264, 'ReleaseNamespace', 'test31+application+PROD', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Permission` VALUES (265, 'ModifyNamespace', 'test31+test31.test11', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (266, 'ReleaseNamespace', 'test31+test31.test11', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (267, 'ModifyNamespace', 'test31+test31.test11+DEV', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (268, 'ReleaseNamespace', 'test31+test31.test11+DEV', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (269, 'ModifyNamespace', 'test31+test31.test11+TEST', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (270, 'ReleaseNamespace', 'test31+test31.test11+TEST', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (271, 'ModifyNamespace', 'test31+test31.test11+PRE', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (272, 'ReleaseNamespace', 'test31+test31.test11+PRE', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (273, 'ModifyNamespace', 'test31+test31.test11+PROD', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (274, 'ReleaseNamespace', 'test31+test31.test11+PROD', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Permission` VALUES (275, 'CreateCluster', 'test331', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (276, 'CreateNamespace', 'test331', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (277, 'AssignRole', 'test331', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (278, 'ModifyNamespace', 'test331+application', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (279, 'ReleaseNamespace', 'test331+application', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (280, 'ModifyNamespace', 'test331+application+DEV', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (281, 'ReleaseNamespace', 'test331+application+DEV', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (282, 'ModifyNamespace', 'test331+application+TEST', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (283, 'ReleaseNamespace', 'test331+application+TEST', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (284, 'ModifyNamespace', 'test331+application+PRE', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (285, 'ReleaseNamespace', 'test331+application+PRE', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (286, 'ModifyNamespace', 'test331+application+PROD', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (287, 'ReleaseNamespace', 'test331+application+PROD', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Permission` VALUES (288, 'ModifyNamespace', 'test331+TEST1.TTT98', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (289, 'ReleaseNamespace', 'test331+TEST1.TTT98', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (290, 'ModifyNamespace', 'test331+TEST1.TTT98+DEV', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (291, 'ReleaseNamespace', 'test331+TEST1.TTT98+DEV', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (292, 'ModifyNamespace', 'test331+TEST1.TTT98+TEST', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (293, 'ReleaseNamespace', 'test331+TEST1.TTT98+TEST', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (294, 'ModifyNamespace', 'test331+TEST1.TTT98+PRE', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (295, 'ReleaseNamespace', 'test331+TEST1.TTT98+PRE', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (296, 'ModifyNamespace', 'test331+TEST1.TTT98+PROD', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (297, 'ReleaseNamespace', 'test331+TEST1.TTT98+PROD', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Permission` VALUES (298, 'CreateCluster', 'TEST38', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `Permission` VALUES (299, 'CreateNamespace', 'TEST38', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `Permission` VALUES (300, 'AssignRole', 'TEST38', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `Permission` VALUES (301, 'ModifyNamespace', 'TEST38+application', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (302, 'ReleaseNamespace', 'TEST38+application', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (303, 'ModifyNamespace', 'TEST38+application+DEV', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (304, 'ReleaseNamespace', 'TEST38+application+DEV', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (305, 'ModifyNamespace', 'TEST38+application+TEST', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (306, 'ReleaseNamespace', 'TEST38+application+TEST', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (307, 'ModifyNamespace', 'TEST38+application+PRE', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (308, 'ReleaseNamespace', 'TEST38+application+PRE', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (309, 'ModifyNamespace', 'TEST38+application+PROD', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (310, 'ReleaseNamespace', 'TEST38+application+PROD', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Permission` VALUES (311, 'ModifyNamespace', 'TEST38+TEST1.TTT981', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (312, 'ReleaseNamespace', 'TEST38+TEST1.TTT981', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (313, 'ModifyNamespace', 'TEST38+TEST1.TTT981+DEV', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (314, 'ReleaseNamespace', 'TEST38+TEST1.TTT981+DEV', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (315, 'ModifyNamespace', 'TEST38+TEST1.TTT981+TEST', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (316, 'ReleaseNamespace', 'TEST38+TEST1.TTT981+TEST', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (317, 'ModifyNamespace', 'TEST38+TEST1.TTT981+PRE', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (318, 'ReleaseNamespace', 'TEST38+TEST1.TTT981+PRE', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (319, 'ModifyNamespace', 'TEST38+TEST1.TTT981+PROD', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (320, 'ReleaseNamespace', 'TEST38+TEST1.TTT981+PROD', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Permission` VALUES (321, 'CreateCluster', 'test35', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (322, 'CreateNamespace', 'test35', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (323, 'AssignRole', 'test35', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (324, 'ModifyNamespace', 'test35+application', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (325, 'ReleaseNamespace', 'test35+application', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (326, 'ModifyNamespace', 'test35+application+DEV', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (327, 'ReleaseNamespace', 'test35+application+DEV', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (328, 'ModifyNamespace', 'test35+application+TEST', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (329, 'ReleaseNamespace', 'test35+application+TEST', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (330, 'ModifyNamespace', 'test35+application+PRE', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (331, 'ReleaseNamespace', 'test35+application+PRE', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (332, 'ModifyNamespace', 'test35+application+PROD', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (333, 'ReleaseNamespace', 'test35+application+PROD', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Permission` VALUES (334, 'CreateCluster', 'test39', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (335, 'CreateNamespace', 'test39', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (336, 'AssignRole', 'test39', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (337, 'ModifyNamespace', 'test39+application', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (338, 'ReleaseNamespace', 'test39+application', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (339, 'ModifyNamespace', 'test39+application+DEV', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (340, 'ReleaseNamespace', 'test39+application+DEV', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (341, 'ModifyNamespace', 'test39+application+TEST', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (342, 'ReleaseNamespace', 'test39+application+TEST', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (343, 'ModifyNamespace', 'test39+application+PRE', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (344, 'ReleaseNamespace', 'test39+application+PRE', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (345, 'ModifyNamespace', 'test39+application+PROD', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (346, 'ReleaseNamespace', 'test39+application+PROD', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Permission` VALUES (347, 'CreateCluster', 'test51', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (348, 'CreateNamespace', 'test51', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (349, 'AssignRole', 'test51', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (350, 'ModifyNamespace', 'test51+application', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (351, 'ReleaseNamespace', 'test51+application', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (352, 'ModifyNamespace', 'test51+application+DEV', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (353, 'ReleaseNamespace', 'test51+application+DEV', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (354, 'ModifyNamespace', 'test51+application+TEST', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (355, 'ReleaseNamespace', 'test51+application+TEST', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (356, 'ModifyNamespace', 'test51+application+PRE', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (357, 'ReleaseNamespace', 'test51+application+PRE', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (358, 'ModifyNamespace', 'test51+application+PROD', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (359, 'ReleaseNamespace', 'test51+application+PROD', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Permission` VALUES (360, 'CreateCluster', 'test55', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (361, 'CreateNamespace', 'test55', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (362, 'AssignRole', 'test55', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (363, 'ModifyNamespace', 'test55+application', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (364, 'ReleaseNamespace', 'test55+application', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (365, 'ModifyNamespace', 'test55+application+DEV', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (366, 'ReleaseNamespace', 'test55+application+DEV', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (367, 'ModifyNamespace', 'test55+application+TEST', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (368, 'ReleaseNamespace', 'test55+application+TEST', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (369, 'ModifyNamespace', 'test55+application+PRE', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (370, 'ReleaseNamespace', 'test55+application+PRE', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (371, 'ModifyNamespace', 'test55+application+PROD', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (372, 'ReleaseNamespace', 'test55+application+PROD', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Permission` VALUES (373, 'CreateCluster', 'test56', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (374, 'CreateNamespace', 'test56', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (375, 'AssignRole', 'test56', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (376, 'ModifyNamespace', 'test56+application', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (377, 'ReleaseNamespace', 'test56+application', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (378, 'ModifyNamespace', 'test56+application+DEV', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (379, 'ReleaseNamespace', 'test56+application+DEV', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (380, 'ModifyNamespace', 'test56+application+TEST', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (381, 'ReleaseNamespace', 'test56+application+TEST', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (382, 'ModifyNamespace', 'test56+application+PRE', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (383, 'ReleaseNamespace', 'test56+application+PRE', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (384, 'ModifyNamespace', 'test56+application+PROD', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (385, 'ReleaseNamespace', 'test56+application+PROD', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Permission` VALUES (386, 'CreateCluster', 'test58', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (387, 'CreateNamespace', 'test58', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (388, 'AssignRole', 'test58', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (389, 'ModifyNamespace', 'test58+application', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (390, 'ReleaseNamespace', 'test58+application', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (391, 'ModifyNamespace', 'test58+application+DEV', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (392, 'ReleaseNamespace', 'test58+application+DEV', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (393, 'ModifyNamespace', 'test58+application+TEST', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (394, 'ReleaseNamespace', 'test58+application+TEST', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (395, 'ModifyNamespace', 'test58+application+PRE', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (396, 'ReleaseNamespace', 'test58+application+PRE', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (397, 'ModifyNamespace', 'test58+application+PROD', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (398, 'ReleaseNamespace', 'test58+application+PROD', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Permission` VALUES (399, 'ModifyNamespace', 'test58+TEST1.test11112233', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (400, 'ReleaseNamespace', 'test58+TEST1.test11112233', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (401, 'ModifyNamespace', 'test58+TEST1.test11112233+DEV', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (402, 'ReleaseNamespace', 'test58+TEST1.test11112233+DEV', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (403, 'ModifyNamespace', 'test58+TEST1.test11112233+TEST', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (404, 'ReleaseNamespace', 'test58+TEST1.test11112233+TEST', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (405, 'ModifyNamespace', 'test58+TEST1.test11112233+PRE', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (406, 'ReleaseNamespace', 'test58+TEST1.test11112233+PRE', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (407, 'ModifyNamespace', 'test58+TEST1.test11112233+PROD', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (408, 'ReleaseNamespace', 'test58+TEST1.test11112233+PROD', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Permission` VALUES (409, 'CreateCluster', 'test60', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (410, 'CreateNamespace', 'test60', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (411, 'AssignRole', 'test60', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (412, 'ModifyNamespace', 'test60+application', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (413, 'ReleaseNamespace', 'test60+application', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (414, 'ModifyNamespace', 'test60+application+DEV', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (415, 'ReleaseNamespace', 'test60+application+DEV', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (416, 'ModifyNamespace', 'test60+application+TEST', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (417, 'ReleaseNamespace', 'test60+application+TEST', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (418, 'ModifyNamespace', 'test60+application+PRE', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (419, 'ReleaseNamespace', 'test60+application+PRE', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (420, 'ModifyNamespace', 'test60+application+PROD', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (421, 'ReleaseNamespace', 'test60+application+PROD', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Permission` VALUES (422, 'CreateCluster', 'test61', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (423, 'CreateNamespace', 'test61', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (424, 'AssignRole', 'test61', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (425, 'ModifyNamespace', 'test61+application', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (426, 'ReleaseNamespace', 'test61+application', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (427, 'ModifyNamespace', 'test61+application+DEV', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (428, 'ReleaseNamespace', 'test61+application+DEV', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (429, 'ModifyNamespace', 'test61+application+TEST', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (430, 'ReleaseNamespace', 'test61+application+TEST', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (431, 'ModifyNamespace', 'test61+application+PRE', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (432, 'ReleaseNamespace', 'test61+application+PRE', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (433, 'ModifyNamespace', 'test61+application+PROD', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (434, 'ReleaseNamespace', 'test61+application+PROD', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Permission` VALUES (435, 'ModifyNamespace', 'test61+TEST1.test3333', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (436, 'ReleaseNamespace', 'test61+TEST1.test3333', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (437, 'ModifyNamespace', 'test61+TEST1.test3333+DEV', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (438, 'ReleaseNamespace', 'test61+TEST1.test3333+DEV', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (439, 'ModifyNamespace', 'test61+TEST1.test3333+TEST', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (440, 'ReleaseNamespace', 'test61+TEST1.test3333+TEST', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (441, 'ModifyNamespace', 'test61+TEST1.test3333+PRE', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (442, 'ReleaseNamespace', 'test61+TEST1.test3333+PRE', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (443, 'ModifyNamespace', 'test61+TEST1.test3333+PROD', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Permission` VALUES (444, 'ReleaseNamespace', 'test61+TEST1.test3333+PROD', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布';

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
INSERT INTO `Release` VALUES (57, '20181207004226-33484f3745971aaf', '20181207004224-release', '', 'test19', 'default', 'application', '{\"tt\":\"tts\",\"mm\":\"ttm\",\"hh\":\"kk\",\"123\":\"123\",\"222\":\"333\",\"333\":\"555\"}', b'0', b'0', 'apollo', '2018-12-07 00:42:26', 'apollo', '2018-12-07 00:42:26', 'DEV');
INSERT INTO `Release` VALUES (58, '20181207004440-33484f3745971ab0', '20181207004224-release', '', 'test19', 'default', 'application', '{\"tt\":\"tts\",\"mm\":\"ttm\",\"hh\":\"kk\",\"123\":\"123\",\"222\":\"333\",\"333\":\"555\"}', b'0', b'0', 'apollo', '2018-12-07 00:44:40', 'apollo', '2018-12-07 00:44:40', 'DEV');
INSERT INTO `Release` VALUES (59, '20181207004548-85de4f3745971ab1', '20181207004546-release', '', 'test20', 'default', 'application', '{\"123\":\"123\"}', b'0', b'0', 'apollo', '2018-12-07 00:45:49', 'apollo', '2018-12-07 00:45:49', 'TEST');
INSERT INTO `Release` VALUES (60, '20181207005618-fa3d4f3745971ab2', '20181207005617-release', '', 'test30', 'default', 'application', '{\"11\":\"11\"}', b'0', b'0', 'apollo', '2018-12-07 00:56:19', 'apollo', '2018-12-07 00:56:19', 'DEV');
INSERT INTO `Release` VALUES (61, '20181207005708-fdfe4f3745971ab3', '20181207005707-release', '', 'test31', 'default', 'application', '{\"11\":\"11\"}', b'0', b'0', 'apollo', '2018-12-07 00:57:08', 'apollo', '2018-12-07 00:57:08', 'DEV');
INSERT INTO `Release` VALUES (62, '20181207115131-c7cd23a6bdb6b722', '20181207115130-release', '', 'test331', 'default', 'application', '{\"11\":\"123\"}', b'0', b'0', 'apollo', '2018-12-07 11:51:32', 'apollo', '2018-12-07 11:51:32', 'DEV');
INSERT INTO `Release` VALUES (63, '20181207125602-104523a6bd7a9b2d', '20181207125601-release', '', 'TEST38', 'default', 'application', '{\"11\":\"112\"}', b'0', b'0', 'apollo', '2018-12-07 12:56:03', 'apollo', '2018-12-07 12:56:03', 'DEV');
INSERT INTO `Release` VALUES (64, '20181207151459-575a23a6bd9e297f', '20181207151457-release', '', 'test60', 'default', 'application', '{\"11\":\"221\",\"122\":\"21\"}', b'0', b'0', 'apollo', '2018-12-07 15:14:59', 'apollo', '2018-12-07 15:14:59', 'DEV');
INSERT INTO `Release` VALUES (65, '20181207151534-575a23a6bd9e2980', '20181207151532-gray', '', 'test60', 'default', 'application', '{\"11\":\"221\",\"122\":\"21\"}', b'0', b'0', 'apollo', '2018-12-07 15:15:35', 'apollo', '2018-12-07 15:15:35', 'DEV');
INSERT INTO `Release` VALUES (66, '20181207154216-5b1b23a6bd9e2981', '20181207154215-release', '', 'test61', 'default', 'application', '{\"11\":\"12\"}', b'0', b'0', 'apollo', '2018-12-07 15:42:17', 'apollo', '2018-12-07 15:42:17', 'DEV');
INSERT INTO `Release` VALUES (67, '20181207162308-5b1b23a6bd9e2982', '20181207162306-release', '', 'test61', 'default', 'application', '{\"11\":\"12\",\"123\":\"1233\"}', b'0', b'0', 'apollo', '2018-12-07 16:23:08', 'apollo', '2018-12-07 16:23:08', 'DEV');
INSERT INTO `Release` VALUES (68, '20181207190102-5b1b23a6bd94ca7a', '20181207190101-release', '', 'test61', 'default', 'application', '{\"11\":\"12\",\"123\":\"1233\"}', b'0', b'0', 'apollo', '2018-12-07 19:01:02', 'apollo', '2018-12-07 19:01:02', 'DEV');
INSERT INTO `Release` VALUES (69, '20181207190836-5b1b23a6bd757bab', '20181207190834-release', '', 'test61', 'default', 'application', '{\"11\":\"12\",\"123\":\"1233\"}', b'0', b'0', 'apollo', '2018-12-07 19:08:37', 'apollo', '2018-12-07 19:08:37', 'TEST');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布历史';

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
INSERT INTO `ReleaseHistory` VALUES (56, 'test19', 'default', 'application', 'default', 58, 57, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:44:40', 'apollo', '2018-12-07 00:44:40');
INSERT INTO `ReleaseHistory` VALUES (57, 'test20', 'default', 'application', 'default', 59, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:45:49', 'apollo', '2018-12-07 00:45:49');
INSERT INTO `ReleaseHistory` VALUES (58, 'test30', 'default', 'application', 'default', 60, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:56:19', 'apollo', '2018-12-07 00:56:19');
INSERT INTO `ReleaseHistory` VALUES (59, 'test31', 'default', 'application', 'default', 61, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:57:09', 'apollo', '2018-12-07 00:57:09');
INSERT INTO `ReleaseHistory` VALUES (60, 'test331', 'default', 'application', 'default', 62, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 11:51:32', 'apollo', '2018-12-07 11:51:32');
INSERT INTO `ReleaseHistory` VALUES (61, 'TEST38', 'default', 'application', 'default', 63, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 12:56:03', 'apollo', '2018-12-07 12:56:03');
INSERT INTO `ReleaseHistory` VALUES (62, 'test60', 'default', 'application', 'default', 64, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 15:14:59', 'apollo', '2018-12-07 15:14:59');
INSERT INTO `ReleaseHistory` VALUES (63, 'test60', 'default', 'application', 'default', 65, 64, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 15:15:35', 'apollo', '2018-12-07 15:15:35');
INSERT INTO `ReleaseHistory` VALUES (64, 'test61', 'default', 'application', 'default', 66, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 15:42:17', 'apollo', '2018-12-07 15:42:17');
INSERT INTO `ReleaseHistory` VALUES (65, 'test61', 'default', 'application', 'default', 67, 66, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 16:23:08', 'apollo', '2018-12-07 16:23:08');
INSERT INTO `ReleaseHistory` VALUES (66, 'test61', 'default', 'application', 'default', 68, 67, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 19:01:02', 'apollo', '2018-12-07 19:01:02');
INSERT INTO `ReleaseHistory` VALUES (67, 'test61', 'default', 'application', 'default', 69, 68, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 19:08:37', 'apollo', '2018-12-07 19:08:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布消息';

-- ----------------------------
-- Records of ReleaseMessage
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseMessage` VALUES (3, 'platform-sample-provider+default+TEST1.test', '2018-12-04 10:57:13');
INSERT INTO `ReleaseMessage` VALUES (5, 'platform-sample-provider+default+TEST1.test3', '2018-12-04 10:57:49');
INSERT INTO `ReleaseMessage` VALUES (6, 'tes16+default+application', '2018-12-04 11:06:47');
INSERT INTO `ReleaseMessage` VALUES (7, 'tes16+default+application', '2018-12-04 13:43:23');
INSERT INTO `ReleaseMessage` VALUES (8, 'platform-sample-provider+default+application', '2018-12-05 15:44:20');
INSERT INTO `ReleaseMessage` VALUES (9, 'test19+default+application', '2018-12-07 00:44:40');
INSERT INTO `ReleaseMessage` VALUES (10, 'test20+default+application', '2018-12-07 00:45:49');
INSERT INTO `ReleaseMessage` VALUES (11, 'test30+default+application', '2018-12-07 00:56:19');
INSERT INTO `ReleaseMessage` VALUES (12, 'test31+default+application', '2018-12-07 00:57:09');
INSERT INTO `ReleaseMessage` VALUES (13, 'test331+default+application', '2018-12-07 11:51:32');
INSERT INTO `ReleaseMessage` VALUES (14, 'TEST38+default+application', '2018-12-07 12:56:03');
INSERT INTO `ReleaseMessage` VALUES (15, 'test60+default+application', '2018-12-07 15:14:59');
INSERT INTO `ReleaseMessage` VALUES (18, 'test61+default+application', '2018-12-07 19:01:02');
INSERT INTO `ReleaseMessage` VALUES (19, 'test61+default+application', '2018-12-07 19:08:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';

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
INSERT INTO `Role` VALUES (104, 'ModifyNamespace+platform-sample-provider+TEST1.monitor1', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (105, 'ReleaseNamespace+platform-sample-provider+TEST1.monitor1', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (106, 'ModifyNamespace+platform-sample-provider+TEST1.monitor1+DEV', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (107, 'ReleaseNamespace+platform-sample-provider+TEST1.monitor1+DEV', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (108, 'ModifyNamespace+platform-sample-provider+TEST1.monitor1+TEST', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (109, 'ReleaseNamespace+platform-sample-provider+TEST1.monitor1+TEST', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (110, 'ModifyNamespace+platform-sample-provider+TEST1.monitor1+PRE', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (111, 'ReleaseNamespace+platform-sample-provider+TEST1.monitor1+PRE', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (112, 'ModifyNamespace+platform-sample-provider+TEST1.monitor1+PROD', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (113, 'ReleaseNamespace+platform-sample-provider+TEST1.monitor1+PROD', b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `Role` VALUES (114, 'Master+test16', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (115, 'ModifyNamespace+test16+application', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (116, 'ReleaseNamespace+test16+application', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (117, 'ModifyNamespace+test16+application+DEV', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (118, 'ReleaseNamespace+test16+application+DEV', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (119, 'ModifyNamespace+test16+application+TEST', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (120, 'ReleaseNamespace+test16+application+TEST', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (121, 'ModifyNamespace+test16+application+PRE', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (122, 'ReleaseNamespace+test16+application+PRE', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (123, 'ModifyNamespace+test16+application+PROD', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (124, 'ReleaseNamespace+test16+application+PROD', b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `Role` VALUES (125, 'Master+test18', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (126, 'ModifyNamespace+test18+application', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (127, 'ReleaseNamespace+test18+application', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (128, 'ModifyNamespace+test18+application+DEV', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (129, 'ReleaseNamespace+test18+application+DEV', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (130, 'ModifyNamespace+test18+application+TEST', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (131, 'ReleaseNamespace+test18+application+TEST', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (132, 'ModifyNamespace+test18+application+PRE', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (133, 'ReleaseNamespace+test18+application+PRE', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (134, 'ModifyNamespace+test18+application+PROD', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (135, 'ReleaseNamespace+test18+application+PROD', b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `Role` VALUES (136, 'Master+test19', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (137, 'ModifyNamespace+test19+application', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (138, 'ReleaseNamespace+test19+application', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (139, 'ModifyNamespace+test19+application+DEV', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (140, 'ReleaseNamespace+test19+application+DEV', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (141, 'ModifyNamespace+test19+application+TEST', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (142, 'ReleaseNamespace+test19+application+TEST', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (143, 'ModifyNamespace+test19+application+PRE', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (144, 'ReleaseNamespace+test19+application+PRE', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (145, 'ModifyNamespace+test19+application+PROD', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (146, 'ReleaseNamespace+test19+application+PROD', b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `Role` VALUES (147, 'Master+test20', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (148, 'ModifyNamespace+test20+application', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (149, 'ReleaseNamespace+test20+application', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (150, 'ModifyNamespace+test20+application+DEV', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (151, 'ReleaseNamespace+test20+application+DEV', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (152, 'ModifyNamespace+test20+application+TEST', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (153, 'ReleaseNamespace+test20+application+TEST', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (154, 'ModifyNamespace+test20+application+PRE', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (155, 'ReleaseNamespace+test20+application+PRE', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (156, 'ModifyNamespace+test20+application+PROD', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (157, 'ReleaseNamespace+test20+application+PROD', b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `Role` VALUES (158, 'ModifyNamespace+test20+TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (159, 'ReleaseNamespace+test20+TEST1.test', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (160, 'ModifyNamespace+test20+TEST1.test+DEV', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (161, 'ReleaseNamespace+test20+TEST1.test+DEV', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (162, 'ModifyNamespace+test20+TEST1.test+TEST', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (163, 'ReleaseNamespace+test20+TEST1.test+TEST', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (164, 'ModifyNamespace+test20+TEST1.test+PRE', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (165, 'ReleaseNamespace+test20+TEST1.test+PRE', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (166, 'ModifyNamespace+test20+TEST1.test+PROD', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (167, 'ReleaseNamespace+test20+TEST1.test+PROD', b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `Role` VALUES (168, 'Master+test21', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (169, 'ModifyNamespace+test21+application', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (170, 'ReleaseNamespace+test21+application', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (171, 'ModifyNamespace+test21+application+DEV', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (172, 'ReleaseNamespace+test21+application+DEV', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (173, 'ModifyNamespace+test21+application+TEST', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (174, 'ReleaseNamespace+test21+application+TEST', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (175, 'ModifyNamespace+test21+application+PRE', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (176, 'ReleaseNamespace+test21+application+PRE', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (177, 'ModifyNamespace+test21+application+PROD', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (178, 'ReleaseNamespace+test21+application+PROD', b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `Role` VALUES (179, 'ModifyNamespace+test21+TEST1.ttt1', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (180, 'ReleaseNamespace+test21+TEST1.ttt1', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (181, 'ModifyNamespace+test21+TEST1.ttt1+DEV', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (182, 'ReleaseNamespace+test21+TEST1.ttt1+DEV', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (183, 'ModifyNamespace+test21+TEST1.ttt1+TEST', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (184, 'ReleaseNamespace+test21+TEST1.ttt1+TEST', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (185, 'ModifyNamespace+test21+TEST1.ttt1+PRE', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (186, 'ReleaseNamespace+test21+TEST1.ttt1+PRE', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (187, 'ModifyNamespace+test21+TEST1.ttt1+PROD', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (188, 'ReleaseNamespace+test21+TEST1.ttt1+PROD', b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `Role` VALUES (189, 'Master+test30', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Role` VALUES (190, 'ModifyNamespace+test30+application', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Role` VALUES (191, 'ReleaseNamespace+test30+application', b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `Role` VALUES (192, 'ModifyNamespace+test30+application+DEV', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (193, 'ReleaseNamespace+test30+application+DEV', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (194, 'ModifyNamespace+test30+application+TEST', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (195, 'ReleaseNamespace+test30+application+TEST', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (196, 'ModifyNamespace+test30+application+PRE', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (197, 'ReleaseNamespace+test30+application+PRE', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (198, 'ModifyNamespace+test30+application+PROD', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (199, 'ReleaseNamespace+test30+application+PROD', b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `Role` VALUES (200, 'ModifyNamespace+test30+TEST1.test222', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (201, 'ReleaseNamespace+test30+TEST1.test222', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (202, 'ModifyNamespace+test30+TEST1.test222+DEV', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (203, 'ReleaseNamespace+test30+TEST1.test222+DEV', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (204, 'ModifyNamespace+test30+TEST1.test222+TEST', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (205, 'ReleaseNamespace+test30+TEST1.test222+TEST', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (206, 'ModifyNamespace+test30+TEST1.test222+PRE', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (207, 'ReleaseNamespace+test30+TEST1.test222+PRE', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (208, 'ModifyNamespace+test30+TEST1.test222+PROD', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (209, 'ReleaseNamespace+test30+TEST1.test222+PROD', b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `Role` VALUES (210, 'Master+test31', b'0', 'apollo', '2018-12-07 00:56:55', 'apollo', '2018-12-07 00:56:55');
INSERT INTO `Role` VALUES (211, 'ModifyNamespace+test31+application', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (212, 'ReleaseNamespace+test31+application', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (213, 'ModifyNamespace+test31+application+DEV', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (214, 'ReleaseNamespace+test31+application+DEV', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (215, 'ModifyNamespace+test31+application+TEST', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (216, 'ReleaseNamespace+test31+application+TEST', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (217, 'ModifyNamespace+test31+application+PRE', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (218, 'ReleaseNamespace+test31+application+PRE', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (219, 'ModifyNamespace+test31+application+PROD', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (220, 'ReleaseNamespace+test31+application+PROD', b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `Role` VALUES (221, 'ModifyNamespace+test31+test31.test11', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (222, 'ReleaseNamespace+test31+test31.test11', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (223, 'ModifyNamespace+test31+test31.test11+DEV', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (224, 'ReleaseNamespace+test31+test31.test11+DEV', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (225, 'ModifyNamespace+test31+test31.test11+TEST', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (226, 'ReleaseNamespace+test31+test31.test11+TEST', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (227, 'ModifyNamespace+test31+test31.test11+PRE', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (228, 'ReleaseNamespace+test31+test31.test11+PRE', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (229, 'ModifyNamespace+test31+test31.test11+PROD', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (230, 'ReleaseNamespace+test31+test31.test11+PROD', b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `Role` VALUES (231, 'Master+test331', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (232, 'ModifyNamespace+test331+application', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (233, 'ReleaseNamespace+test331+application', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (234, 'ModifyNamespace+test331+application+DEV', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (235, 'ReleaseNamespace+test331+application+DEV', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (236, 'ModifyNamespace+test331+application+TEST', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (237, 'ReleaseNamespace+test331+application+TEST', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (238, 'ModifyNamespace+test331+application+PRE', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (239, 'ReleaseNamespace+test331+application+PRE', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (240, 'ModifyNamespace+test331+application+PROD', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (241, 'ReleaseNamespace+test331+application+PROD', b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `Role` VALUES (242, 'ModifyNamespace+test331+TEST1.TTT98', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (243, 'ReleaseNamespace+test331+TEST1.TTT98', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (244, 'ModifyNamespace+test331+TEST1.TTT98+DEV', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (245, 'ReleaseNamespace+test331+TEST1.TTT98+DEV', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (246, 'ModifyNamespace+test331+TEST1.TTT98+TEST', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (247, 'ReleaseNamespace+test331+TEST1.TTT98+TEST', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (248, 'ModifyNamespace+test331+TEST1.TTT98+PRE', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (249, 'ReleaseNamespace+test331+TEST1.TTT98+PRE', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (250, 'ModifyNamespace+test331+TEST1.TTT98+PROD', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (251, 'ReleaseNamespace+test331+TEST1.TTT98+PROD', b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `Role` VALUES (252, 'Master+TEST38', b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `Role` VALUES (253, 'ModifyNamespace+TEST38+application', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (254, 'ReleaseNamespace+TEST38+application', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (255, 'ModifyNamespace+TEST38+application+DEV', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (256, 'ReleaseNamespace+TEST38+application+DEV', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (257, 'ModifyNamespace+TEST38+application+TEST', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (258, 'ReleaseNamespace+TEST38+application+TEST', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (259, 'ModifyNamespace+TEST38+application+PRE', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (260, 'ReleaseNamespace+TEST38+application+PRE', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (261, 'ModifyNamespace+TEST38+application+PROD', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (262, 'ReleaseNamespace+TEST38+application+PROD', b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `Role` VALUES (263, 'ModifyNamespace+TEST38+TEST1.TTT981', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (264, 'ReleaseNamespace+TEST38+TEST1.TTT981', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (265, 'ModifyNamespace+TEST38+TEST1.TTT981+DEV', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (266, 'ReleaseNamespace+TEST38+TEST1.TTT981+DEV', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (267, 'ModifyNamespace+TEST38+TEST1.TTT981+TEST', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (268, 'ReleaseNamespace+TEST38+TEST1.TTT981+TEST', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (269, 'ModifyNamespace+TEST38+TEST1.TTT981+PRE', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (270, 'ReleaseNamespace+TEST38+TEST1.TTT981+PRE', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (271, 'ModifyNamespace+TEST38+TEST1.TTT981+PROD', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (272, 'ReleaseNamespace+TEST38+TEST1.TTT981+PROD', b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `Role` VALUES (273, 'Master+test35', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (274, 'ModifyNamespace+test35+application', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (275, 'ReleaseNamespace+test35+application', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (276, 'ModifyNamespace+test35+application+DEV', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (277, 'ReleaseNamespace+test35+application+DEV', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (278, 'ModifyNamespace+test35+application+TEST', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (279, 'ReleaseNamespace+test35+application+TEST', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (280, 'ModifyNamespace+test35+application+PRE', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (281, 'ReleaseNamespace+test35+application+PRE', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (282, 'ModifyNamespace+test35+application+PROD', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (283, 'ReleaseNamespace+test35+application+PROD', b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `Role` VALUES (284, 'Master+test39', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (285, 'ModifyNamespace+test39+application', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (286, 'ReleaseNamespace+test39+application', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (287, 'ModifyNamespace+test39+application+DEV', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (288, 'ReleaseNamespace+test39+application+DEV', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (289, 'ModifyNamespace+test39+application+TEST', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (290, 'ReleaseNamespace+test39+application+TEST', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (291, 'ModifyNamespace+test39+application+PRE', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (292, 'ReleaseNamespace+test39+application+PRE', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (293, 'ModifyNamespace+test39+application+PROD', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (294, 'ReleaseNamespace+test39+application+PROD', b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `Role` VALUES (295, 'Master+test51', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (296, 'ModifyNamespace+test51+application', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (297, 'ReleaseNamespace+test51+application', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (298, 'ModifyNamespace+test51+application+DEV', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (299, 'ReleaseNamespace+test51+application+DEV', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (300, 'ModifyNamespace+test51+application+TEST', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (301, 'ReleaseNamespace+test51+application+TEST', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (302, 'ModifyNamespace+test51+application+PRE', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (303, 'ReleaseNamespace+test51+application+PRE', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (304, 'ModifyNamespace+test51+application+PROD', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (305, 'ReleaseNamespace+test51+application+PROD', b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `Role` VALUES (306, 'Master+test55', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (307, 'ModifyNamespace+test55+application', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (308, 'ReleaseNamespace+test55+application', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (309, 'ModifyNamespace+test55+application+DEV', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (310, 'ReleaseNamespace+test55+application+DEV', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (311, 'ModifyNamespace+test55+application+TEST', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (312, 'ReleaseNamespace+test55+application+TEST', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (313, 'ModifyNamespace+test55+application+PRE', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (314, 'ReleaseNamespace+test55+application+PRE', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (315, 'ModifyNamespace+test55+application+PROD', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (316, 'ReleaseNamespace+test55+application+PROD', b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `Role` VALUES (317, 'Master+test56', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (318, 'ModifyNamespace+test56+application', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (319, 'ReleaseNamespace+test56+application', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (320, 'ModifyNamespace+test56+application+DEV', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (321, 'ReleaseNamespace+test56+application+DEV', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (322, 'ModifyNamespace+test56+application+TEST', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (323, 'ReleaseNamespace+test56+application+TEST', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (324, 'ModifyNamespace+test56+application+PRE', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (325, 'ReleaseNamespace+test56+application+PRE', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (326, 'ModifyNamespace+test56+application+PROD', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (327, 'ReleaseNamespace+test56+application+PROD', b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `Role` VALUES (328, 'Master+test58', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (329, 'ModifyNamespace+test58+application', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (330, 'ReleaseNamespace+test58+application', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (331, 'ModifyNamespace+test58+application+DEV', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (332, 'ReleaseNamespace+test58+application+DEV', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (333, 'ModifyNamespace+test58+application+TEST', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (334, 'ReleaseNamespace+test58+application+TEST', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (335, 'ModifyNamespace+test58+application+PRE', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (336, 'ReleaseNamespace+test58+application+PRE', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (337, 'ModifyNamespace+test58+application+PROD', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (338, 'ReleaseNamespace+test58+application+PROD', b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `Role` VALUES (339, 'ModifyNamespace+test58+TEST1.test11112233', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (340, 'ReleaseNamespace+test58+TEST1.test11112233', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (341, 'ModifyNamespace+test58+TEST1.test11112233+DEV', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (342, 'ReleaseNamespace+test58+TEST1.test11112233+DEV', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (343, 'ModifyNamespace+test58+TEST1.test11112233+TEST', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (344, 'ReleaseNamespace+test58+TEST1.test11112233+TEST', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (345, 'ModifyNamespace+test58+TEST1.test11112233+PRE', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (346, 'ReleaseNamespace+test58+TEST1.test11112233+PRE', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (347, 'ModifyNamespace+test58+TEST1.test11112233+PROD', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (348, 'ReleaseNamespace+test58+TEST1.test11112233+PROD', b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `Role` VALUES (349, 'Master+test60', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (350, 'ModifyNamespace+test60+application', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (351, 'ReleaseNamespace+test60+application', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (352, 'ModifyNamespace+test60+application+DEV', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (353, 'ReleaseNamespace+test60+application+DEV', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (354, 'ModifyNamespace+test60+application+TEST', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (355, 'ReleaseNamespace+test60+application+TEST', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (356, 'ModifyNamespace+test60+application+PRE', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (357, 'ReleaseNamespace+test60+application+PRE', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (358, 'ModifyNamespace+test60+application+PROD', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (359, 'ReleaseNamespace+test60+application+PROD', b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `Role` VALUES (360, 'Master+test61', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (361, 'ModifyNamespace+test61+application', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (362, 'ReleaseNamespace+test61+application', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (363, 'ModifyNamespace+test61+application+DEV', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (364, 'ReleaseNamespace+test61+application+DEV', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (365, 'ModifyNamespace+test61+application+TEST', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (366, 'ReleaseNamespace+test61+application+TEST', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (367, 'ModifyNamespace+test61+application+PRE', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (368, 'ReleaseNamespace+test61+application+PRE', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (369, 'ModifyNamespace+test61+application+PROD', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (370, 'ReleaseNamespace+test61+application+PROD', b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `Role` VALUES (371, 'ModifyNamespace+test61+TEST1.test3333', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (372, 'ReleaseNamespace+test61+TEST1.test3333', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (373, 'ModifyNamespace+test61+TEST1.test3333+DEV', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (374, 'ReleaseNamespace+test61+TEST1.test3333+DEV', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (375, 'ModifyNamespace+test61+TEST1.test3333+TEST', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (376, 'ReleaseNamespace+test61+TEST1.test3333+TEST', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (377, 'ModifyNamespace+test61+TEST1.test3333+PRE', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (378, 'ReleaseNamespace+test61+TEST1.test3333+PRE', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (379, 'ModifyNamespace+test61+TEST1.test3333+PROD', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `Role` VALUES (380, 'ReleaseNamespace+test61+TEST1.test3333+PROD', b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和权限的绑定表';

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
INSERT INTO `RolePermission` VALUES (134, 104, 134, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (135, 105, 135, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (136, 106, 136, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (137, 107, 137, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (138, 108, 138, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (139, 109, 139, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (140, 110, 140, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (141, 111, 141, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (142, 112, 142, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (143, 113, 143, b'0', 'apollo', '2018-12-06 17:53:29', 'apollo', '2018-12-06 17:53:29');
INSERT INTO `RolePermission` VALUES (144, 114, 144, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (145, 114, 145, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (146, 114, 146, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (147, 115, 147, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (148, 116, 148, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (149, 117, 149, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (150, 118, 150, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (151, 119, 151, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (152, 120, 152, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (153, 121, 153, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (154, 122, 154, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (155, 123, 155, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (156, 124, 156, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `RolePermission` VALUES (157, 125, 157, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (158, 125, 158, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (159, 125, 159, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (160, 126, 160, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (161, 127, 161, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (162, 128, 162, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (163, 129, 163, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (164, 130, 164, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (165, 131, 165, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (166, 132, 166, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (167, 133, 167, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (168, 134, 168, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (169, 135, 169, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `RolePermission` VALUES (170, 136, 170, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (171, 136, 171, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (172, 136, 172, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (173, 137, 173, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (174, 138, 174, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (175, 139, 175, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (176, 140, 176, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (177, 141, 177, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (178, 142, 178, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (179, 143, 179, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (180, 144, 180, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (181, 145, 181, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (182, 146, 182, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `RolePermission` VALUES (183, 147, 183, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (184, 147, 184, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (185, 147, 185, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (186, 148, 186, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (187, 149, 187, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (188, 150, 188, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (189, 151, 189, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (190, 152, 190, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (191, 153, 191, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (192, 154, 192, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (193, 155, 193, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (194, 156, 194, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (195, 157, 195, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `RolePermission` VALUES (196, 158, 196, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (197, 159, 197, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (198, 160, 198, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (199, 161, 199, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (200, 162, 200, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (201, 163, 201, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (202, 164, 202, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (203, 165, 203, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (204, 166, 204, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (205, 167, 205, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `RolePermission` VALUES (206, 168, 206, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (207, 168, 207, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (208, 168, 208, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (209, 169, 209, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (210, 170, 210, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (211, 171, 211, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (212, 172, 212, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (213, 173, 213, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (214, 174, 214, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (215, 175, 215, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (216, 176, 216, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (217, 177, 217, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (218, 178, 218, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `RolePermission` VALUES (219, 179, 219, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (220, 180, 220, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (221, 181, 221, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (222, 182, 222, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (223, 183, 223, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (224, 184, 224, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (225, 185, 225, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (226, 186, 226, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (227, 187, 227, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (228, 188, 228, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `RolePermission` VALUES (229, 189, 229, b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `RolePermission` VALUES (230, 189, 230, b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `RolePermission` VALUES (231, 189, 231, b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `RolePermission` VALUES (232, 190, 232, b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `RolePermission` VALUES (233, 191, 233, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (234, 192, 234, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (235, 193, 235, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (236, 194, 236, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (237, 195, 237, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (238, 196, 238, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (239, 197, 239, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (240, 198, 240, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (241, 199, 241, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `RolePermission` VALUES (242, 200, 242, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (243, 201, 243, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (244, 202, 244, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (245, 203, 245, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (246, 204, 246, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (247, 205, 247, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (248, 206, 248, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (249, 207, 249, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (250, 208, 250, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (251, 209, 251, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `RolePermission` VALUES (252, 210, 252, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (253, 210, 253, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (254, 210, 254, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (255, 211, 255, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (256, 212, 256, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (257, 213, 257, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (258, 214, 258, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (259, 215, 259, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (260, 216, 260, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (261, 217, 261, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (262, 218, 262, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (263, 219, 263, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (264, 220, 264, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `RolePermission` VALUES (265, 221, 265, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (266, 222, 266, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (267, 223, 267, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (268, 224, 268, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (269, 225, 269, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (270, 226, 270, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (271, 227, 271, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (272, 228, 272, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (273, 229, 273, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (274, 230, 274, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `RolePermission` VALUES (275, 231, 275, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (276, 231, 276, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (277, 231, 277, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (278, 232, 278, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (279, 233, 279, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (280, 234, 280, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (281, 235, 281, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (282, 236, 282, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (283, 237, 283, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (284, 238, 284, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (285, 239, 285, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (286, 240, 286, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (287, 241, 287, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `RolePermission` VALUES (288, 242, 288, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (289, 243, 289, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (290, 244, 290, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (291, 245, 291, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (292, 246, 292, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (293, 247, 293, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (294, 248, 294, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (295, 249, 295, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (296, 250, 296, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (297, 251, 297, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `RolePermission` VALUES (298, 252, 298, b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `RolePermission` VALUES (299, 252, 299, b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `RolePermission` VALUES (300, 252, 300, b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `RolePermission` VALUES (301, 253, 301, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (302, 254, 302, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (303, 255, 303, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (304, 256, 304, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (305, 257, 305, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (306, 258, 306, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (307, 259, 307, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (308, 260, 308, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (309, 261, 309, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (310, 262, 310, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `RolePermission` VALUES (311, 263, 311, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (312, 264, 312, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (313, 265, 313, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (314, 266, 314, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (315, 267, 315, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (316, 268, 316, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (317, 269, 317, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (318, 270, 318, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (319, 271, 319, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (320, 272, 320, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `RolePermission` VALUES (321, 273, 321, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (322, 273, 322, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (323, 273, 323, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (324, 274, 324, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (325, 275, 325, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (326, 276, 326, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (327, 277, 327, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (328, 278, 328, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (329, 279, 329, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (330, 280, 330, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (331, 281, 331, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (332, 282, 332, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (333, 283, 333, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `RolePermission` VALUES (334, 284, 334, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (335, 284, 335, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (336, 284, 336, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (337, 285, 337, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (338, 286, 338, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (339, 287, 339, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (340, 288, 340, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (341, 289, 341, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (342, 290, 342, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (343, 291, 343, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (344, 292, 344, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (345, 293, 345, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (346, 294, 346, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `RolePermission` VALUES (347, 295, 347, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (348, 295, 348, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (349, 295, 349, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (350, 296, 350, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (351, 297, 351, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (352, 298, 352, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (353, 299, 353, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (354, 300, 354, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (355, 301, 355, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (356, 302, 356, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (357, 303, 357, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (358, 304, 358, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (359, 305, 359, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `RolePermission` VALUES (360, 306, 360, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (361, 306, 361, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (362, 306, 362, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (363, 307, 363, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (364, 308, 364, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (365, 309, 365, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (366, 310, 366, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (367, 311, 367, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (368, 312, 368, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (369, 313, 369, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (370, 314, 370, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (371, 315, 371, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (372, 316, 372, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `RolePermission` VALUES (373, 317, 373, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (374, 317, 374, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (375, 317, 375, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (376, 318, 376, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (377, 319, 377, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (378, 320, 378, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (379, 321, 379, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (380, 322, 380, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (381, 323, 381, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (382, 324, 382, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (383, 325, 383, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (384, 326, 384, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (385, 327, 385, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `RolePermission` VALUES (386, 328, 386, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (387, 328, 387, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (388, 328, 388, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (389, 329, 389, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (390, 330, 390, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (391, 331, 391, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (392, 332, 392, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (393, 333, 393, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (394, 334, 394, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (395, 335, 395, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (396, 336, 396, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (397, 337, 397, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (398, 338, 398, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `RolePermission` VALUES (399, 339, 399, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (400, 340, 400, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (401, 341, 401, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (402, 342, 402, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (403, 343, 403, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (404, 344, 404, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (405, 345, 405, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (406, 346, 406, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (407, 347, 407, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (408, 348, 408, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `RolePermission` VALUES (409, 349, 409, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (410, 349, 410, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (411, 349, 411, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (412, 350, 412, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (413, 351, 413, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (414, 352, 414, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (415, 353, 415, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (416, 354, 416, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (417, 355, 417, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (418, 356, 418, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (419, 357, 419, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (420, 358, 420, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (421, 359, 421, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `RolePermission` VALUES (422, 360, 422, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (423, 360, 423, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (424, 360, 424, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (425, 361, 425, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (426, 362, 426, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (427, 363, 427, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (428, 364, 428, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (429, 365, 429, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (430, 366, 430, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (431, 367, 431, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (432, 368, 432, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (433, 369, 433, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (434, 370, 434, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `RolePermission` VALUES (435, 371, 435, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (436, 372, 436, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (437, 373, 437, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (438, 374, 438, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (439, 375, 439, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (440, 376, 440, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (441, 377, 441, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (442, 378, 442, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (443, 379, 443, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `RolePermission` VALUES (444, 380, 444, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='配置服务自身配置';

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和role的绑定表';

-- ----------------------------
-- Records of UserRole
-- ----------------------------
BEGIN;
INSERT INTO `UserRole` VALUES (1, 'apollo', 1, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `UserRole` VALUES (2, 'apollo', 2, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `UserRole` VALUES (3, 'apollo', 3, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `UserRole` VALUES (4, 'apollo', 4, b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
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
INSERT INTO `UserRole` VALUES (58, 'apollo', 104, b'0', 'apollo', '2018-12-06 17:53:30', 'apollo', '2018-12-06 17:53:30');
INSERT INTO `UserRole` VALUES (59, 'apollo', 105, b'0', 'apollo', '2018-12-06 17:53:30', 'apollo', '2018-12-06 17:53:30');
INSERT INTO `UserRole` VALUES (60, 'apollo', 114, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `UserRole` VALUES (61, 'apollo', 115, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `UserRole` VALUES (62, 'apollo', 116, b'0', 'apollo', '2018-12-06 22:41:55', 'apollo', '2018-12-06 22:41:55');
INSERT INTO `UserRole` VALUES (63, 'apollo', 125, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `UserRole` VALUES (64, 'apollo', 126, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `UserRole` VALUES (65, 'apollo', 127, b'0', 'apollo', '2018-12-06 22:42:42', 'apollo', '2018-12-06 22:42:42');
INSERT INTO `UserRole` VALUES (66, 'apollo', 136, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `UserRole` VALUES (67, 'apollo', 137, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `UserRole` VALUES (68, 'apollo', 138, b'0', 'apollo', '2018-12-06 22:52:15', 'apollo', '2018-12-06 22:52:15');
INSERT INTO `UserRole` VALUES (69, 'apollo', 147, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `UserRole` VALUES (70, 'apollo', 148, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `UserRole` VALUES (71, 'apollo', 149, b'0', 'apollo', '2018-12-07 00:45:11', 'apollo', '2018-12-07 00:45:11');
INSERT INTO `UserRole` VALUES (72, 'apollo', 158, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `UserRole` VALUES (73, 'apollo', 159, b'0', 'apollo', '2018-12-07 00:46:15', 'apollo', '2018-12-07 00:46:15');
INSERT INTO `UserRole` VALUES (74, 'apollo', 168, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `UserRole` VALUES (75, 'apollo', 169, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `UserRole` VALUES (76, 'apollo', 170, b'0', 'apollo', '2018-12-07 00:46:55', 'apollo', '2018-12-07 00:46:55');
INSERT INTO `UserRole` VALUES (77, 'apollo', 179, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `UserRole` VALUES (78, 'apollo', 180, b'0', 'apollo', '2018-12-07 00:47:12', 'apollo', '2018-12-07 00:47:12');
INSERT INTO `UserRole` VALUES (79, 'apollo', 189, b'0', 'apollo', '2018-12-07 00:56:05', 'apollo', '2018-12-07 00:56:05');
INSERT INTO `UserRole` VALUES (80, 'apollo', 190, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `UserRole` VALUES (81, 'apollo', 191, b'0', 'apollo', '2018-12-07 00:56:06', 'apollo', '2018-12-07 00:56:06');
INSERT INTO `UserRole` VALUES (82, 'apollo', 200, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `UserRole` VALUES (83, 'apollo', 201, b'0', 'apollo', '2018-12-07 00:56:41', 'apollo', '2018-12-07 00:56:41');
INSERT INTO `UserRole` VALUES (84, 'apollo', 210, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `UserRole` VALUES (85, 'apollo', 211, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `UserRole` VALUES (86, 'apollo', 212, b'0', 'apollo', '2018-12-07 00:56:56', 'apollo', '2018-12-07 00:56:56');
INSERT INTO `UserRole` VALUES (87, 'apollo', 221, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `UserRole` VALUES (88, 'apollo', 222, b'0', 'apollo', '2018-12-07 00:57:44', 'apollo', '2018-12-07 00:57:44');
INSERT INTO `UserRole` VALUES (89, 'apollo', 231, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `UserRole` VALUES (90, 'apollo', 232, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `UserRole` VALUES (91, 'apollo', 233, b'0', 'apollo', '2018-12-07 11:37:57', 'apollo', '2018-12-07 11:37:57');
INSERT INTO `UserRole` VALUES (92, 'apollo', 242, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `UserRole` VALUES (93, 'apollo', 243, b'0', 'apollo', '2018-12-07 11:52:01', 'apollo', '2018-12-07 11:52:01');
INSERT INTO `UserRole` VALUES (94, 'apollo', 252, b'0', 'apollo', '2018-12-07 12:55:49', 'apollo', '2018-12-07 12:55:49');
INSERT INTO `UserRole` VALUES (95, 'apollo', 253, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `UserRole` VALUES (96, 'apollo', 254, b'0', 'apollo', '2018-12-07 12:55:50', 'apollo', '2018-12-07 12:55:50');
INSERT INTO `UserRole` VALUES (97, 'apollo', 263, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `UserRole` VALUES (98, 'apollo', 264, b'0', 'apollo', '2018-12-07 12:56:17', 'apollo', '2018-12-07 12:56:17');
INSERT INTO `UserRole` VALUES (99, 'apollo', 273, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `UserRole` VALUES (100, 'apollo', 274, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `UserRole` VALUES (101, 'apollo', 275, b'0', 'apollo', '2018-12-07 14:11:48', 'apollo', '2018-12-07 14:11:48');
INSERT INTO `UserRole` VALUES (102, 'apollo', 284, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `UserRole` VALUES (103, 'apollo', 285, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `UserRole` VALUES (104, 'apollo', 286, b'0', 'apollo', '2018-12-07 14:22:31', 'apollo', '2018-12-07 14:22:31');
INSERT INTO `UserRole` VALUES (105, 'apollo', 295, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `UserRole` VALUES (106, 'apollo', 296, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `UserRole` VALUES (107, 'apollo', 297, b'0', 'apollo', '2018-12-07 14:34:50', 'apollo', '2018-12-07 14:34:50');
INSERT INTO `UserRole` VALUES (108, 'apollo', 306, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `UserRole` VALUES (109, 'apollo', 307, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `UserRole` VALUES (110, 'apollo', 308, b'0', 'apollo', '2018-12-07 14:37:17', 'apollo', '2018-12-07 14:37:17');
INSERT INTO `UserRole` VALUES (111, 'apollo', 317, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `UserRole` VALUES (112, 'apollo', 318, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `UserRole` VALUES (113, 'apollo', 319, b'0', 'apollo', '2018-12-07 14:39:47', 'apollo', '2018-12-07 14:39:47');
INSERT INTO `UserRole` VALUES (114, 'apollo', 328, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `UserRole` VALUES (115, 'apollo', 329, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `UserRole` VALUES (116, 'apollo', 330, b'0', 'apollo', '2018-12-07 14:40:52', 'apollo', '2018-12-07 14:40:52');
INSERT INTO `UserRole` VALUES (117, 'apollo', 339, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `UserRole` VALUES (118, 'apollo', 340, b'0', 'apollo', '2018-12-07 14:54:53', 'apollo', '2018-12-07 14:54:53');
INSERT INTO `UserRole` VALUES (119, 'apollo', 349, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `UserRole` VALUES (120, 'apollo', 350, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `UserRole` VALUES (121, 'apollo', 351, b'0', 'apollo', '2018-12-07 14:55:16', 'apollo', '2018-12-07 14:55:16');
INSERT INTO `UserRole` VALUES (122, 'apollo', 360, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `UserRole` VALUES (123, 'apollo', 361, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `UserRole` VALUES (124, 'apollo', 362, b'0', 'apollo', '2018-12-07 15:41:57', 'apollo', '2018-12-07 15:41:57');
INSERT INTO `UserRole` VALUES (125, 'apollo', 371, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
INSERT INTO `UserRole` VALUES (126, 'apollo', 372, b'0', 'apollo', '2018-12-07 18:58:56', 'apollo', '2018-12-07 18:58:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` VALUES (1, 'apollo', '$2a$10$7r20uS.BQ9uBpf3Baj3uQOZvMVvB1RN3PYoKE94gtz2.WAOuiiwXS', 'apollo@acme.com', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
