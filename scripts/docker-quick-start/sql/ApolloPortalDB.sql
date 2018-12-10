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

 Date: 09/12/2018 23:24:16
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用表';

-- ----------------------------
-- Records of App
-- ----------------------------
BEGIN;
INSERT INTO `App` VALUES (1, 'SampleApp', 'Sample App', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'default', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
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
INSERT INTO `App` VALUES (37, 'platform-sample-provider-biz', 'platform-sample-provider-biz', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `App` VALUES (38, 'test70', 'test70', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `App` VALUES (39, 'test72', 'test72', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `App` VALUES (40, 'test73', 'test73', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `App` VALUES (41, 'test78', 'test78', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `App` VALUES (42, 'test82', 'test82', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17');
INSERT INTO `App` VALUES (43, 'test88', 'test88', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `App` VALUES (44, 'test99', 'test99', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用namespace定义';

-- ----------------------------
-- Records of AppNamespace
-- ----------------------------
BEGIN;
INSERT INTO `AppNamespace` VALUES (1, 'application', 'SampleApp', 'properties', b'0', 'default app namespace', b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `AppNamespace` VALUES (2, 'TEST1.test', 'SampleApp', 'properties', b'1', '测试', b'0', 'apollo', '2018-11-12 13:43:35', 'apollo', '2018-11-12 13:43:35');
INSERT INTO `AppNamespace` VALUES (3, 'TEST1.aa', 'SampleApp', 'properties', b'1', 'aa', b'0', 'apollo', '2018-11-12 13:47:29', 'apollo', '2018-11-12 13:47:29');
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
INSERT INTO `AppNamespace` VALUES (60, 'application', 'platform-sample-provider-biz', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `AppNamespace` VALUES (61, 'application', 'test70', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `AppNamespace` VALUES (62, 'application', 'test72', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `AppNamespace` VALUES (63, 'application', 'test73', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `AppNamespace` VALUES (64, 'application', 'test78', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `AppNamespace` VALUES (65, 'application', 'test82', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17');
INSERT INTO `AppNamespace` VALUES (66, 'application', 'test88', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `AppNamespace` VALUES (67, 'application', 'test99', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=750 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日志审计表';

-- ----------------------------
-- Records of Audit
-- ----------------------------
BEGIN;
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
INSERT INTO `Audit` VALUES (564, 'Namespace', 55, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:38:10', NULL, '2018-12-07 23:38:10');
INSERT INTO `Audit` VALUES (565, 'ClusterEntity', 48, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:38:10', NULL, '2018-12-07 23:38:10');
INSERT INTO `Audit` VALUES (566, 'ClusterEntity', 49, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:38:10', NULL, '2018-12-07 23:38:10');
INSERT INTO `Audit` VALUES (567, 'ClusterEntity', 50, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:38:10', NULL, '2018-12-07 23:38:10');
INSERT INTO `Audit` VALUES (568, 'ClusterEntity', 51, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:38:10', NULL, '2018-12-07 23:38:10');
INSERT INTO `Audit` VALUES (569, 'Item', 239, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (570, 'Item', 240, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (571, 'Item', 241, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (572, 'Item', 242, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (573, 'Item', 243, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (574, 'Item', 244, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (575, 'Item', 245, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (576, 'Item', 246, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (577, 'Item', 247, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (578, 'Item', 248, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (579, 'Item', 249, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (580, 'Item', 250, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (581, 'Item', 251, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (582, 'Item', 252, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (583, 'Item', 253, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (584, 'Item', 254, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (585, 'Item', 255, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (586, 'Item', 256, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (587, 'Item', 257, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (588, 'Item', 258, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (589, 'Item', 259, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (590, 'Item', 260, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (591, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:32', NULL, '2018-12-07 23:40:32');
INSERT INTO `Audit` VALUES (592, 'Release', 70, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:36', NULL, '2018-12-07 23:40:36');
INSERT INTO `Audit` VALUES (593, 'ReleaseHistory', 68, 'INSERT', NULL, b'0', 'apollo', '2018-12-07 23:40:36', NULL, '2018-12-07 23:40:36');
INSERT INTO `Audit` VALUES (594, 'Namespace', 56, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:03', NULL, '2018-12-08 00:02:03');
INSERT INTO `Audit` VALUES (595, 'ClusterEntity', 52, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:03', NULL, '2018-12-08 00:02:03');
INSERT INTO `Audit` VALUES (596, 'ClusterEntity', 53, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:03', NULL, '2018-12-08 00:02:03');
INSERT INTO `Audit` VALUES (597, 'ClusterEntity', 54, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:03', NULL, '2018-12-08 00:02:03');
INSERT INTO `Audit` VALUES (598, 'ClusterEntity', 55, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:03', NULL, '2018-12-08 00:02:03');
INSERT INTO `Audit` VALUES (599, 'Item', 261, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:15', NULL, '2018-12-08 00:02:15');
INSERT INTO `Audit` VALUES (600, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:15', NULL, '2018-12-08 00:02:15');
INSERT INTO `Audit` VALUES (601, 'Release', 71, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:20', NULL, '2018-12-08 00:02:20');
INSERT INTO `Audit` VALUES (602, 'ReleaseHistory', 69, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:20', NULL, '2018-12-08 00:02:20');
INSERT INTO `Audit` VALUES (603, 'Item', 262, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:35', NULL, '2018-12-08 00:02:35');
INSERT INTO `Audit` VALUES (604, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:35', NULL, '2018-12-08 00:02:35');
INSERT INTO `Audit` VALUES (605, 'Item', 263, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:35', NULL, '2018-12-08 00:02:35');
INSERT INTO `Audit` VALUES (606, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:35', NULL, '2018-12-08 00:02:35');
INSERT INTO `Audit` VALUES (607, 'Item', 264, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:35', NULL, '2018-12-08 00:02:35');
INSERT INTO `Audit` VALUES (608, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:02:35', NULL, '2018-12-08 00:02:35');
INSERT INTO `Audit` VALUES (609, 'Item', 261, 'UPDATE', NULL, b'0', 'apollo', '2018-12-08 00:03:46', NULL, '2018-12-08 00:03:46');
INSERT INTO `Audit` VALUES (610, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-08 00:03:46', NULL, '2018-12-08 00:03:46');
INSERT INTO `Audit` VALUES (611, 'Release', 72, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:03:57', NULL, '2018-12-08 00:03:57');
INSERT INTO `Audit` VALUES (612, 'ReleaseHistory', 70, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:03:57', NULL, '2018-12-08 00:03:57');
INSERT INTO `Audit` VALUES (613, 'Item', 261, 'UPDATE', NULL, b'0', 'apollo', '2018-12-08 00:04:09', NULL, '2018-12-08 00:04:09');
INSERT INTO `Audit` VALUES (614, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-08 00:04:09', NULL, '2018-12-08 00:04:09');
INSERT INTO `Audit` VALUES (615, 'Release', 73, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:04:57', NULL, '2018-12-08 00:04:57');
INSERT INTO `Audit` VALUES (616, 'ReleaseHistory', 71, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:04:57', NULL, '2018-12-08 00:04:57');
INSERT INTO `Audit` VALUES (617, 'Release', 74, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:05:07', NULL, '2018-12-08 00:05:07');
INSERT INTO `Audit` VALUES (618, 'ReleaseHistory', 72, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:05:07', NULL, '2018-12-08 00:05:07');
INSERT INTO `Audit` VALUES (619, 'Release', 75, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:06:13', NULL, '2018-12-08 00:06:13');
INSERT INTO `Audit` VALUES (620, 'ReleaseHistory', 73, 'INSERT', NULL, b'0', 'apollo', '2018-12-08 00:06:13', NULL, '2018-12-08 00:06:13');
INSERT INTO `Audit` VALUES (621, 'Release', 76, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:26:36', NULL, '2018-12-09 14:26:36');
INSERT INTO `Audit` VALUES (622, 'ReleaseHistory', 74, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:26:36', NULL, '2018-12-09 14:26:36');
INSERT INTO `Audit` VALUES (623, 'Namespace', 57, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:27:00', NULL, '2018-12-09 14:27:00');
INSERT INTO `Audit` VALUES (624, 'ClusterEntity', 56, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:27:00', NULL, '2018-12-09 14:27:00');
INSERT INTO `Audit` VALUES (625, 'ClusterEntity', 57, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:27:00', NULL, '2018-12-09 14:27:00');
INSERT INTO `Audit` VALUES (626, 'ClusterEntity', 58, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:27:00', NULL, '2018-12-09 14:27:00');
INSERT INTO `Audit` VALUES (627, 'ClusterEntity', 59, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 14:27:00', NULL, '2018-12-09 14:27:00');
INSERT INTO `Audit` VALUES (628, 'Release', 77, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:40:37', NULL, '2018-12-09 20:40:37');
INSERT INTO `Audit` VALUES (629, 'ReleaseHistory', 75, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:40:37', NULL, '2018-12-09 20:40:37');
INSERT INTO `Audit` VALUES (630, 'Item', 265, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:03', NULL, '2018-12-09 20:41:03');
INSERT INTO `Audit` VALUES (631, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:03', NULL, '2018-12-09 20:41:03');
INSERT INTO `Audit` VALUES (632, 'Release', 78, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:06', NULL, '2018-12-09 20:41:06');
INSERT INTO `Audit` VALUES (633, 'ReleaseHistory', 76, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:06', NULL, '2018-12-09 20:41:06');
INSERT INTO `Audit` VALUES (634, 'Item', 266, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:37', NULL, '2018-12-09 20:41:37');
INSERT INTO `Audit` VALUES (635, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:37', NULL, '2018-12-09 20:41:37');
INSERT INTO `Audit` VALUES (636, 'Release', 79, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:40', NULL, '2018-12-09 20:41:40');
INSERT INTO `Audit` VALUES (637, 'ReleaseHistory', 77, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 20:41:40', NULL, '2018-12-09 20:41:40');
INSERT INTO `Audit` VALUES (638, 'Namespace', 58, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:09:21', NULL, '2018-12-09 21:09:21');
INSERT INTO `Audit` VALUES (639, 'ClusterEntity', 60, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:09:21', NULL, '2018-12-09 21:09:21');
INSERT INTO `Audit` VALUES (640, 'ClusterEntity', 61, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:09:21', NULL, '2018-12-09 21:09:21');
INSERT INTO `Audit` VALUES (641, 'ClusterEntity', 62, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:09:21', NULL, '2018-12-09 21:09:21');
INSERT INTO `Audit` VALUES (642, 'ClusterEntity', 63, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:09:21', NULL, '2018-12-09 21:09:21');
INSERT INTO `Audit` VALUES (643, 'Item', 267, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:13', NULL, '2018-12-09 21:12:13');
INSERT INTO `Audit` VALUES (644, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:13', NULL, '2018-12-09 21:12:13');
INSERT INTO `Audit` VALUES (645, 'Release', 80, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:16', NULL, '2018-12-09 21:12:16');
INSERT INTO `Audit` VALUES (646, 'ReleaseHistory', 78, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:16', NULL, '2018-12-09 21:12:16');
INSERT INTO `Audit` VALUES (647, 'Item', 268, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:38', NULL, '2018-12-09 21:12:38');
INSERT INTO `Audit` VALUES (648, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:38', NULL, '2018-12-09 21:12:38');
INSERT INTO `Audit` VALUES (649, 'Release', 81, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:40', NULL, '2018-12-09 21:12:40');
INSERT INTO `Audit` VALUES (650, 'ReleaseHistory', 79, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:12:40', NULL, '2018-12-09 21:12:40');
INSERT INTO `Audit` VALUES (651, 'ReleaseHistory', 80, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:18:58', NULL, '2018-12-09 21:18:58');
INSERT INTO `Audit` VALUES (652, 'Release', 82, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:22', NULL, '2018-12-09 21:19:22');
INSERT INTO `Audit` VALUES (653, 'ReleaseHistory', 81, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:22', NULL, '2018-12-09 21:19:22');
INSERT INTO `Audit` VALUES (654, 'Item', 269, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:29', NULL, '2018-12-09 21:19:29');
INSERT INTO `Audit` VALUES (655, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:29', NULL, '2018-12-09 21:19:29');
INSERT INTO `Audit` VALUES (656, 'Release', 83, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:32', NULL, '2018-12-09 21:19:32');
INSERT INTO `Audit` VALUES (657, 'ReleaseHistory', 82, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:32', NULL, '2018-12-09 21:19:32');
INSERT INTO `Audit` VALUES (658, 'ReleaseHistory', 83, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:45', NULL, '2018-12-09 21:19:45');
INSERT INTO `Audit` VALUES (659, 'Release', 84, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:51', NULL, '2018-12-09 21:19:51');
INSERT INTO `Audit` VALUES (660, 'ReleaseHistory', 84, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:19:51', NULL, '2018-12-09 21:19:51');
INSERT INTO `Audit` VALUES (661, 'Item', 270, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:04', NULL, '2018-12-09 21:20:04');
INSERT INTO `Audit` VALUES (662, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:04', NULL, '2018-12-09 21:20:04');
INSERT INTO `Audit` VALUES (663, 'Release', 85, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:06', NULL, '2018-12-09 21:20:06');
INSERT INTO `Audit` VALUES (664, 'ReleaseHistory', 85, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:06', NULL, '2018-12-09 21:20:06');
INSERT INTO `Audit` VALUES (665, 'Item', 271, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:30', NULL, '2018-12-09 21:20:30');
INSERT INTO `Audit` VALUES (666, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:30', NULL, '2018-12-09 21:20:30');
INSERT INTO `Audit` VALUES (667, 'Release', 86, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:34', NULL, '2018-12-09 21:20:34');
INSERT INTO `Audit` VALUES (668, 'ReleaseHistory', 86, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:20:34', NULL, '2018-12-09 21:20:34');
INSERT INTO `Audit` VALUES (669, 'Namespace', 59, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:39:32', NULL, '2018-12-09 21:39:32');
INSERT INTO `Audit` VALUES (670, 'ClusterEntity', 64, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:39:32', NULL, '2018-12-09 21:39:32');
INSERT INTO `Audit` VALUES (671, 'ClusterEntity', 65, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:39:32', NULL, '2018-12-09 21:39:32');
INSERT INTO `Audit` VALUES (672, 'ClusterEntity', 66, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:39:32', NULL, '2018-12-09 21:39:32');
INSERT INTO `Audit` VALUES (673, 'ClusterEntity', 67, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:39:32', NULL, '2018-12-09 21:39:32');
INSERT INTO `Audit` VALUES (674, 'Item', 272, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:49:14', NULL, '2018-12-09 21:49:14');
INSERT INTO `Audit` VALUES (675, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:49:14', NULL, '2018-12-09 21:49:14');
INSERT INTO `Audit` VALUES (676, 'Release', 87, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:49:33', NULL, '2018-12-09 21:49:33');
INSERT INTO `Audit` VALUES (677, 'ReleaseHistory', 87, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:49:33', NULL, '2018-12-09 21:49:33');
INSERT INTO `Audit` VALUES (678, 'Item', 273, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:49:58', NULL, '2018-12-09 21:49:58');
INSERT INTO `Audit` VALUES (679, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:49:58', NULL, '2018-12-09 21:49:58');
INSERT INTO `Audit` VALUES (680, 'Release', 88, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:50:04', NULL, '2018-12-09 21:50:04');
INSERT INTO `Audit` VALUES (681, 'ReleaseHistory', 88, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:50:05', NULL, '2018-12-09 21:50:05');
INSERT INTO `Audit` VALUES (682, 'Item', 274, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:53:00', NULL, '2018-12-09 21:53:00');
INSERT INTO `Audit` VALUES (683, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:53:00', NULL, '2018-12-09 21:53:00');
INSERT INTO `Audit` VALUES (684, 'Release', 89, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:53:20', NULL, '2018-12-09 21:53:20');
INSERT INTO `Audit` VALUES (685, 'ReleaseHistory', 89, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:53:20', NULL, '2018-12-09 21:53:20');
INSERT INTO `Audit` VALUES (686, 'Item', 275, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:53:42', NULL, '2018-12-09 21:53:42');
INSERT INTO `Audit` VALUES (687, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 21:53:42', NULL, '2018-12-09 21:53:42');
INSERT INTO `Audit` VALUES (688, 'Release', 90, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:45:35', NULL, '2018-12-09 22:45:35');
INSERT INTO `Audit` VALUES (689, 'ReleaseHistory', 90, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:45:35', NULL, '2018-12-09 22:45:35');
INSERT INTO `Audit` VALUES (690, 'Release', 91, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:48:15', NULL, '2018-12-09 22:48:15');
INSERT INTO `Audit` VALUES (691, 'ReleaseHistory', 91, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:48:15', NULL, '2018-12-09 22:48:15');
INSERT INTO `Audit` VALUES (692, 'Namespace', 60, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:17', NULL, '2018-12-09 22:54:17');
INSERT INTO `Audit` VALUES (693, 'ClusterEntity', 68, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:17', NULL, '2018-12-09 22:54:17');
INSERT INTO `Audit` VALUES (694, 'ClusterEntity', 69, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:17', NULL, '2018-12-09 22:54:17');
INSERT INTO `Audit` VALUES (695, 'ClusterEntity', 70, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:17', NULL, '2018-12-09 22:54:17');
INSERT INTO `Audit` VALUES (696, 'ClusterEntity', 71, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:17', NULL, '2018-12-09 22:54:17');
INSERT INTO `Audit` VALUES (697, 'Item', 276, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:29', NULL, '2018-12-09 22:54:29');
INSERT INTO `Audit` VALUES (698, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:29', NULL, '2018-12-09 22:54:29');
INSERT INTO `Audit` VALUES (699, 'Release', 92, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:36', NULL, '2018-12-09 22:54:36');
INSERT INTO `Audit` VALUES (700, 'ReleaseHistory', 92, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:36', NULL, '2018-12-09 22:54:36');
INSERT INTO `Audit` VALUES (701, 'Item', 277, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:45', NULL, '2018-12-09 22:54:45');
INSERT INTO `Audit` VALUES (702, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:45', NULL, '2018-12-09 22:54:45');
INSERT INTO `Audit` VALUES (703, 'Release', 93, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:47', NULL, '2018-12-09 22:54:47');
INSERT INTO `Audit` VALUES (704, 'ReleaseHistory', 93, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:47', NULL, '2018-12-09 22:54:47');
INSERT INTO `Audit` VALUES (705, 'Item', 278, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:56', NULL, '2018-12-09 22:54:56');
INSERT INTO `Audit` VALUES (706, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:56', NULL, '2018-12-09 22:54:56');
INSERT INTO `Audit` VALUES (707, 'Release', 94, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:59', NULL, '2018-12-09 22:54:59');
INSERT INTO `Audit` VALUES (708, 'ReleaseHistory', 94, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:54:59', NULL, '2018-12-09 22:54:59');
INSERT INTO `Audit` VALUES (709, 'ReleaseHistory', 95, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:55:08', NULL, '2018-12-09 22:55:08');
INSERT INTO `Audit` VALUES (710, 'Release', 95, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:55:23', NULL, '2018-12-09 22:55:23');
INSERT INTO `Audit` VALUES (711, 'ReleaseHistory', 96, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:55:23', NULL, '2018-12-09 22:55:23');
INSERT INTO `Audit` VALUES (712, 'Item', 278, 'UPDATE', NULL, b'0', 'apollo', '2018-12-09 22:55:35', NULL, '2018-12-09 22:55:35');
INSERT INTO `Audit` VALUES (713, 'ItemSet', NULL, 'UPDATE', NULL, b'0', 'apollo', '2018-12-09 22:55:35', NULL, '2018-12-09 22:55:35');
INSERT INTO `Audit` VALUES (714, 'Release', 96, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:55:38', NULL, '2018-12-09 22:55:38');
INSERT INTO `Audit` VALUES (715, 'ReleaseHistory', 97, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:55:38', NULL, '2018-12-09 22:55:38');
INSERT INTO `Audit` VALUES (716, 'Item', 279, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:56:04', NULL, '2018-12-09 22:56:04');
INSERT INTO `Audit` VALUES (717, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:56:04', NULL, '2018-12-09 22:56:04');
INSERT INTO `Audit` VALUES (718, 'Release', 97, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:56:06', NULL, '2018-12-09 22:56:06');
INSERT INTO `Audit` VALUES (719, 'ReleaseHistory', 98, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:56:06', NULL, '2018-12-09 22:56:06');
INSERT INTO `Audit` VALUES (720, 'ReleaseHistory', 99, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:56:15', NULL, '2018-12-09 22:56:15');
INSERT INTO `Audit` VALUES (721, 'ReleaseHistory', 100, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 22:56:22', NULL, '2018-12-09 22:56:22');
INSERT INTO `Audit` VALUES (722, 'Namespace', 61, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:36', NULL, '2018-12-09 23:12:36');
INSERT INTO `Audit` VALUES (723, 'ClusterEntity', 72, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:36', NULL, '2018-12-09 23:12:36');
INSERT INTO `Audit` VALUES (724, 'ClusterEntity', 73, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:36', NULL, '2018-12-09 23:12:36');
INSERT INTO `Audit` VALUES (725, 'ClusterEntity', 74, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:36', NULL, '2018-12-09 23:12:36');
INSERT INTO `Audit` VALUES (726, 'ClusterEntity', 75, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:36', NULL, '2018-12-09 23:12:36');
INSERT INTO `Audit` VALUES (727, 'Item', 280, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:45', NULL, '2018-12-09 23:12:45');
INSERT INTO `Audit` VALUES (728, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:45', NULL, '2018-12-09 23:12:45');
INSERT INTO `Audit` VALUES (729, 'Release', 98, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:49', NULL, '2018-12-09 23:12:49');
INSERT INTO `Audit` VALUES (730, 'ReleaseHistory', 101, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:49', NULL, '2018-12-09 23:12:49');
INSERT INTO `Audit` VALUES (731, 'Item', 281, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:56', NULL, '2018-12-09 23:12:56');
INSERT INTO `Audit` VALUES (732, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:56', NULL, '2018-12-09 23:12:56');
INSERT INTO `Audit` VALUES (733, 'Release', 99, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:58', NULL, '2018-12-09 23:12:58');
INSERT INTO `Audit` VALUES (734, 'ReleaseHistory', 102, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:12:58', NULL, '2018-12-09 23:12:58');
INSERT INTO `Audit` VALUES (735, 'ReleaseHistory', 103, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:13:04', NULL, '2018-12-09 23:13:04');
INSERT INTO `Audit` VALUES (736, 'Namespace', 62, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:09', NULL, '2018-12-09 23:15:09');
INSERT INTO `Audit` VALUES (737, 'ClusterEntity', 76, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:09', NULL, '2018-12-09 23:15:09');
INSERT INTO `Audit` VALUES (738, 'ClusterEntity', 77, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:09', NULL, '2018-12-09 23:15:09');
INSERT INTO `Audit` VALUES (739, 'ClusterEntity', 78, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:09', NULL, '2018-12-09 23:15:09');
INSERT INTO `Audit` VALUES (740, 'ClusterEntity', 79, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:09', NULL, '2018-12-09 23:15:09');
INSERT INTO `Audit` VALUES (741, 'Item', 282, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:22', NULL, '2018-12-09 23:15:22');
INSERT INTO `Audit` VALUES (742, 'Item', 283, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:22', NULL, '2018-12-09 23:15:22');
INSERT INTO `Audit` VALUES (743, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:22', NULL, '2018-12-09 23:15:22');
INSERT INTO `Audit` VALUES (744, 'Release', 100, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:25', NULL, '2018-12-09 23:15:25');
INSERT INTO `Audit` VALUES (745, 'ReleaseHistory', 104, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:25', NULL, '2018-12-09 23:15:25');
INSERT INTO `Audit` VALUES (746, 'Item', 284, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:36', NULL, '2018-12-09 23:15:36');
INSERT INTO `Audit` VALUES (747, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:36', NULL, '2018-12-09 23:15:36');
INSERT INTO `Audit` VALUES (748, 'Release', 101, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:38', NULL, '2018-12-09 23:15:38');
INSERT INTO `Audit` VALUES (749, 'ReleaseHistory', 105, 'INSERT', NULL, b'0', 'apollo', '2018-12-09 23:15:38', NULL, '2018-12-09 23:15:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='集群';

-- ----------------------------
-- Records of Cluster
-- ----------------------------
BEGIN;
INSERT INTO `Cluster` VALUES (1, 'default', 'SampleApp', 0, b'0', '', '2018-11-11 17:34:08', '', '2018-12-07 23:43:55', 'DEV');
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
INSERT INTO `Cluster` VALUES (48, 'default', 'platform-sample-provider-biz', 0, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10', 'DEV');
INSERT INTO `Cluster` VALUES (49, 'default', 'platform-sample-provider-biz', 0, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10', 'TEST');
INSERT INTO `Cluster` VALUES (50, 'default', 'platform-sample-provider-biz', 0, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10', 'PRE');
INSERT INTO `Cluster` VALUES (51, 'default', 'platform-sample-provider-biz', 0, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10', 'PROD');
INSERT INTO `Cluster` VALUES (52, 'default', 'test70', 0, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03', 'DEV');
INSERT INTO `Cluster` VALUES (53, 'default', 'test70', 0, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03', 'TEST');
INSERT INTO `Cluster` VALUES (54, 'default', 'test70', 0, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03', 'PRE');
INSERT INTO `Cluster` VALUES (55, 'default', 'test70', 0, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03', 'PROD');
INSERT INTO `Cluster` VALUES (56, 'default', 'test72', 0, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00', 'DEV');
INSERT INTO `Cluster` VALUES (57, 'default', 'test72', 0, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00', 'TEST');
INSERT INTO `Cluster` VALUES (58, 'default', 'test72', 0, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00', 'PRE');
INSERT INTO `Cluster` VALUES (59, 'default', 'test72', 0, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00', 'PROD');
INSERT INTO `Cluster` VALUES (60, 'default', 'test73', 0, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21', 'DEV');
INSERT INTO `Cluster` VALUES (61, 'default', 'test73', 0, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21', 'TEST');
INSERT INTO `Cluster` VALUES (62, 'default', 'test73', 0, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21', 'PRE');
INSERT INTO `Cluster` VALUES (63, 'default', 'test73', 0, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21', 'PROD');
INSERT INTO `Cluster` VALUES (64, 'default', 'test78', 0, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32', 'DEV');
INSERT INTO `Cluster` VALUES (65, 'default', 'test78', 0, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32', 'TEST');
INSERT INTO `Cluster` VALUES (66, 'default', 'test78', 0, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32', 'PRE');
INSERT INTO `Cluster` VALUES (67, 'default', 'test78', 0, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32', 'PROD');
INSERT INTO `Cluster` VALUES (68, 'default', 'test82', 0, b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17', 'DEV');
INSERT INTO `Cluster` VALUES (69, 'default', 'test82', 0, b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17', 'TEST');
INSERT INTO `Cluster` VALUES (70, 'default', 'test82', 0, b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17', 'PRE');
INSERT INTO `Cluster` VALUES (71, 'default', 'test82', 0, b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17', 'PROD');
INSERT INTO `Cluster` VALUES (72, 'default', 'test88', 0, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36', 'DEV');
INSERT INTO `Cluster` VALUES (73, 'default', 'test88', 0, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36', 'TEST');
INSERT INTO `Cluster` VALUES (74, 'default', 'test88', 0, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36', 'PRE');
INSERT INTO `Cluster` VALUES (75, 'default', 'test88', 0, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36', 'PROD');
INSERT INTO `Cluster` VALUES (76, 'default', 'test99', 0, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09', 'DEV');
INSERT INTO `Cluster` VALUES (77, 'default', 'test99', 0, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09', 'TEST');
INSERT INTO `Cluster` VALUES (78, 'default', 'test99', 0, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09', 'PRE');
INSERT INTO `Cluster` VALUES (79, 'default', 'test99', 0, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09', 'PROD');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='commit 历史表';

-- ----------------------------
-- Records of Commit
-- ----------------------------
BEGIN;
INSERT INTO `Commit` VALUES (29, '{\"createItems\":[{\"namespaceId\":56,\"key\":\"11\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test70', 'default', 'application', NULL, b'0', 'apollo', '2018-12-08 00:02:15', 'apollo', '2018-12-08 00:02:15', 'DEV');
INSERT INTO `Commit` VALUES (30, '{\"createItems\":[{\"namespaceId\":56,\"key\":\"11\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":1,\"env\":\"TEST\",\"id\":262,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-08 00:02:34\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-08 00:02:34\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test70', 'default', 'application', NULL, b'0', 'apollo', '2018-12-08 00:02:35', 'apollo', '2018-12-08 00:02:35', NULL);
INSERT INTO `Commit` VALUES (31, '{\"createItems\":[{\"namespaceId\":56,\"key\":\"11\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":1,\"env\":\"PRE\",\"id\":263,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-08 00:02:34\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-08 00:02:34\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test70', 'default', 'application', NULL, b'0', 'apollo', '2018-12-08 00:02:35', 'apollo', '2018-12-08 00:02:35', NULL);
INSERT INTO `Commit` VALUES (32, '{\"createItems\":[{\"namespaceId\":56,\"key\":\"11\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":1,\"env\":\"PROD\",\"id\":264,\"isDeleted\":false,\"dataChangeCreatedBy\":\"apollo\",\"dataChangeCreatedTime\":\"2018-12-08 00:02:34\",\"dataChangeLastModifiedBy\":\"apollo\",\"dataChangeLastModifiedTime\":\"2018-12-08 00:02:34\"}],\"updateItems\":[],\"deleteItems\":[]}', 'test70', 'default', 'application', NULL, b'0', 'apollo', '2018-12-08 00:02:35', 'apollo', '2018-12-08 00:02:35', NULL);
INSERT INTO `Commit` VALUES (33, '{\"createItems\":[],\"updateItems\":[{\"namespaceId\":56,\"key\":\"11\",\"value\":\"223311\",\"comment\":\"\",\"lineNum\":1,\"id\":261,\"isDeleted\":false}],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test70', 'default', 'application', NULL, b'0', 'apollo', '2018-12-08 00:03:46', 'apollo', '2018-12-08 00:03:46', 'DEV');
INSERT INTO `Commit` VALUES (34, '{\"createItems\":[],\"updateItems\":[{\"namespaceId\":56,\"key\":\"11\",\"value\":\"22331155\",\"comment\":\"\",\"lineNum\":1,\"id\":261,\"isDeleted\":false}],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test70', 'default', 'application', NULL, b'0', 'apollo', '2018-12-08 00:04:09', 'apollo', '2018-12-08 00:04:09', 'DEV');
INSERT INTO `Commit` VALUES (35, '{\"createItems\":[{\"namespaceId\":57,\"key\":\"111\",\"value\":\"212\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test72', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 20:41:03', 'apollo', '2018-12-09 20:41:03', 'DEV');
INSERT INTO `Commit` VALUES (36, '{\"createItems\":[{\"namespaceId\":57,\"key\":\"123\",\"value\":\"233\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test72', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 20:41:37', 'apollo', '2018-12-09 20:41:37', 'DEV');
INSERT INTO `Commit` VALUES (37, '{\"createItems\":[{\"namespaceId\":58,\"key\":\"11\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test73', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:12:13', 'apollo', '2018-12-09 21:12:13', 'DEV');
INSERT INTO `Commit` VALUES (38, '{\"createItems\":[{\"namespaceId\":58,\"key\":\"22\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test73', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:12:38', 'apollo', '2018-12-09 21:12:38', 'DEV');
INSERT INTO `Commit` VALUES (39, '{\"createItems\":[{\"namespaceId\":58,\"key\":\"33\",\"value\":\"234\",\"comment\":\"\",\"lineNum\":3,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test73', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:19:29', 'apollo', '2018-12-09 21:19:29', 'DEV');
INSERT INTO `Commit` VALUES (40, '{\"createItems\":[{\"namespaceId\":58,\"key\":\"11\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test73', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:20:04', 'apollo', '2018-12-09 21:20:04', 'TEST');
INSERT INTO `Commit` VALUES (41, '{\"createItems\":[{\"namespaceId\":58,\"key\":\"12\",\"value\":\"123\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test73', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:20:30', 'apollo', '2018-12-09 21:20:30', 'PRE');
INSERT INTO `Commit` VALUES (42, '{\"createItems\":[{\"namespaceId\":59,\"key\":\"11\",\"value\":\"33\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test78', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:49:14', 'apollo', '2018-12-09 21:49:14', 'DEV');
INSERT INTO `Commit` VALUES (43, '{\"createItems\":[{\"namespaceId\":59,\"key\":\"22\",\"value\":\"33\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test78', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:49:58', 'apollo', '2018-12-09 21:49:58', 'PROD');
INSERT INTO `Commit` VALUES (44, '{\"createItems\":[{\"namespaceId\":59,\"key\":\"88\",\"value\":\"99\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test78', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:53:00', 'apollo', '2018-12-09 21:53:00', 'PROD');
INSERT INTO `Commit` VALUES (45, '{\"createItems\":[{\"namespaceId\":59,\"key\":\"99\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":3,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test78', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 21:53:42', 'apollo', '2018-12-09 21:53:42', 'PROD');
INSERT INTO `Commit` VALUES (46, '{\"createItems\":[{\"namespaceId\":60,\"key\":\"11\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test82', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 22:54:29', 'apollo', '2018-12-09 22:54:29', 'DEV');
INSERT INTO `Commit` VALUES (47, '{\"createItems\":[{\"namespaceId\":60,\"key\":\"22\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test82', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 22:54:45', 'apollo', '2018-12-09 22:54:45', 'DEV');
INSERT INTO `Commit` VALUES (48, '{\"createItems\":[{\"namespaceId\":60,\"key\":\"33\",\"value\":\"33\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test82', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 22:54:56', 'apollo', '2018-12-09 22:54:56', 'TEST');
INSERT INTO `Commit` VALUES (49, '{\"createItems\":[],\"updateItems\":[{\"namespaceId\":60,\"key\":\"33\",\"value\":\"338\",\"comment\":\"\",\"lineNum\":1,\"id\":278,\"isDeleted\":false}],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test82', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 22:55:35', 'apollo', '2018-12-09 22:55:35', 'TEST');
INSERT INTO `Commit` VALUES (50, '{\"createItems\":[{\"namespaceId\":60,\"key\":\"11\",\"value\":\"33\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test82', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 22:56:04', 'apollo', '2018-12-09 22:56:04', 'TEST');
INSERT INTO `Commit` VALUES (51, '{\"createItems\":[{\"namespaceId\":61,\"key\":\"11\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test88', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 23:12:45', 'apollo', '2018-12-09 23:12:45', 'DEV');
INSERT INTO `Commit` VALUES (52, '{\"createItems\":[{\"namespaceId\":61,\"key\":\"22\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test88', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 23:12:56', 'apollo', '2018-12-09 23:12:56', 'DEV');
INSERT INTO `Commit` VALUES (53, '{\"createItems\":[{\"namespaceId\":62,\"key\":\"11\",\"value\":\"11\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false},{\"namespaceId\":62,\"key\":\"22\",\"value\":\"22\",\"comment\":\"\",\"lineNum\":2,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test99', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 23:15:22', 'apollo', '2018-12-09 23:15:22', 'DEV');
INSERT INTO `Commit` VALUES (54, '{\"createItems\":[{\"namespaceId\":62,\"key\":\"111\",\"value\":\"333\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test99', 'default', 'application', NULL, b'0', 'apollo', '2018-12-09 23:15:36', 'apollo', '2018-12-09 23:15:36', 'TEST');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='使用配置的应用实例';

-- ----------------------------
-- Records of Instance
-- ----------------------------
BEGIN;
INSERT INTO `Instance` VALUES (2, 'platform-sample-provider-biz', 'default', '', '192.168.1.106', '2018-12-07 23:40:48', '2018-12-07 23:40:48', 'DEV');
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='配置项目';

-- ----------------------------
-- Records of Item
-- ----------------------------
BEGIN;
INSERT INTO `Item` VALUES (1, 1, 'timeout', '100', 'sample timeout配置', 1, b'0', 'default', '2018-11-11 17:34:08', '', '2018-12-04 10:51:48', 'DEV');
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
INSERT INTO `Item` VALUES (239, 55, 'spring.datasource.name', 'datasource', '', 1, b'0', 'apollo', '2018-12-07 23:40:31', 'apollo', '2018-12-07 23:40:31', 'DEV');
INSERT INTO `Item` VALUES (240, 55, 'spring.datasource.type', 'com.alibaba.druid.pool.DruidDataSource', '', 2, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (241, 55, 'spring.datasource.driverClassName', 'com.mysql.jdbc.Driver', '', 3, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (242, 55, 'spring.datasource.filters', 'stat', '', 4, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (243, 55, 'spring.datasource.maxActive', '20', '', 5, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (244, 55, 'spring.datasource.initialSize', '1', '', 6, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (245, 55, 'spring.datasource.maxWait', '60000', '', 7, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (246, 55, 'spring.datasource.minIdle', '1', '', 8, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (247, 55, 'spring.datasource.timeBetweenEvictionRunsMillis', '60000', '', 9, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (248, 55, 'spring.datasource.minEvictableIdleTimeMillis', '300000', '', 10, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (249, 55, 'spring.datasource.validationQuery', 'select 1', '', 11, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (250, 55, 'spring.datasource.testWhileIdle', 'true', '', 12, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (251, 55, 'spring.datasource.testOnBorrow', 'false', '', 13, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (252, 55, 'spring.datasource.testOnReturn', 'false', '', 14, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (253, 55, 'spring.datasource.poolPreparedStatements', 'true', '', 15, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (254, 55, 'spring.datasource.maxOpenPreparedStatements', '20', '', 16, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (255, 55, 'mybatis.config-location', 'classpath:mybatis-config.xml', '', 17, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (256, 55, 'spring.datasource.url', 'jdbc:mysql://192.168.1.95:3306/ops-upms?useUnicode=true&amp;characterEncoding=UTF-8', '', 18, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (257, 55, 'spring.datasource.username', 'ops_upms', '', 19, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (258, 55, 'spring.datasource.password', 'ops_upms', '', 20, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (259, 55, 'server.port', '9091', '', 21, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (260, 55, 'test.name', 'liudayang11', '', 22, b'0', 'apollo', '2018-12-07 23:40:32', 'apollo', '2018-12-07 23:40:32', 'DEV');
INSERT INTO `Item` VALUES (261, 56, '11', '22331155', '', 1, b'0', 'apollo', '2018-12-08 00:02:15', 'apollo', '2018-12-08 00:04:09', 'DEV');
INSERT INTO `Item` VALUES (262, 56, '11', '22', '', 1, b'0', 'apollo', '2018-12-08 00:02:35', 'apollo', '2018-12-08 00:02:35', 'TEST');
INSERT INTO `Item` VALUES (263, 56, '11', '22', '', 1, b'0', 'apollo', '2018-12-08 00:02:35', 'apollo', '2018-12-08 00:02:35', 'PRE');
INSERT INTO `Item` VALUES (264, 56, '11', '22', '', 1, b'0', 'apollo', '2018-12-08 00:02:35', 'apollo', '2018-12-08 00:02:35', 'PROD');
INSERT INTO `Item` VALUES (265, 57, '111', '212', '', 1, b'0', 'apollo', '2018-12-09 20:41:03', 'apollo', '2018-12-09 20:41:03', 'DEV');
INSERT INTO `Item` VALUES (266, 57, '123', '233', '', 2, b'0', 'apollo', '2018-12-09 20:41:37', 'apollo', '2018-12-09 20:41:37', 'DEV');
INSERT INTO `Item` VALUES (267, 58, '11', '123', '', 1, b'0', 'apollo', '2018-12-09 21:12:13', 'apollo', '2018-12-09 21:12:13', 'DEV');
INSERT INTO `Item` VALUES (268, 58, '22', '123', '', 2, b'0', 'apollo', '2018-12-09 21:12:38', 'apollo', '2018-12-09 21:12:38', 'DEV');
INSERT INTO `Item` VALUES (269, 58, '33', '234', '', 3, b'0', 'apollo', '2018-12-09 21:19:29', 'apollo', '2018-12-09 21:19:29', 'DEV');
INSERT INTO `Item` VALUES (270, 58, '11', '123', '', 1, b'0', 'apollo', '2018-12-09 21:20:04', 'apollo', '2018-12-09 21:20:04', 'TEST');
INSERT INTO `Item` VALUES (271, 58, '12', '123', '', 1, b'0', 'apollo', '2018-12-09 21:20:29', 'apollo', '2018-12-09 21:20:29', 'PRE');
INSERT INTO `Item` VALUES (272, 59, '11', '33', '', 1, b'0', 'apollo', '2018-12-09 21:49:14', 'apollo', '2018-12-09 21:49:14', 'DEV');
INSERT INTO `Item` VALUES (273, 59, '22', '33', '', 1, b'0', 'apollo', '2018-12-09 21:49:58', 'apollo', '2018-12-09 21:49:58', 'PROD');
INSERT INTO `Item` VALUES (274, 59, '88', '99', '', 2, b'0', 'apollo', '2018-12-09 21:53:00', 'apollo', '2018-12-09 21:53:00', 'PROD');
INSERT INTO `Item` VALUES (275, 59, '99', '22', '', 3, b'0', 'apollo', '2018-12-09 21:53:41', 'apollo', '2018-12-09 21:53:41', 'PROD');
INSERT INTO `Item` VALUES (276, 60, '11', '22', '', 1, b'0', 'apollo', '2018-12-09 22:54:29', 'apollo', '2018-12-09 22:54:29', 'DEV');
INSERT INTO `Item` VALUES (277, 60, '22', '22', '', 2, b'0', 'apollo', '2018-12-09 22:54:44', 'apollo', '2018-12-09 22:54:44', 'DEV');
INSERT INTO `Item` VALUES (278, 60, '33', '338', '', 1, b'0', 'apollo', '2018-12-09 22:54:56', 'apollo', '2018-12-09 22:55:35', 'TEST');
INSERT INTO `Item` VALUES (279, 60, '11', '33', '', 2, b'0', 'apollo', '2018-12-09 22:56:03', 'apollo', '2018-12-09 22:56:03', 'TEST');
INSERT INTO `Item` VALUES (280, 61, '11', '22', '', 1, b'0', 'apollo', '2018-12-09 23:12:45', 'apollo', '2018-12-09 23:12:45', 'DEV');
INSERT INTO `Item` VALUES (281, 61, '22', '22', '', 2, b'0', 'apollo', '2018-12-09 23:12:56', 'apollo', '2018-12-09 23:12:56', 'DEV');
INSERT INTO `Item` VALUES (282, 62, '11', '11', '', 1, b'0', 'apollo', '2018-12-09 23:15:22', 'apollo', '2018-12-09 23:15:22', 'DEV');
INSERT INTO `Item` VALUES (283, 62, '22', '22', '', 2, b'0', 'apollo', '2018-12-09 23:15:22', 'apollo', '2018-12-09 23:15:22', 'DEV');
INSERT INTO `Item` VALUES (284, 62, '111', '333', '', 1, b'0', 'apollo', '2018-12-09 23:15:36', 'apollo', '2018-12-09 23:15:36', 'TEST');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='命名空间';

-- ----------------------------
-- Records of Namespace
-- ----------------------------
BEGIN;
INSERT INTO `Namespace` VALUES (1, 'SampleApp', 'default', 'application', b'0', 'default', '2018-11-11 17:34:08', '', '2018-11-11 17:34:08');
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
INSERT INTO `Namespace` VALUES (55, 'platform-sample-provider-biz', 'default', 'application', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Namespace` VALUES (56, 'test70', 'default', 'application', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Namespace` VALUES (57, 'test72', 'default', 'application', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Namespace` VALUES (58, 'test73', 'default', 'application', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Namespace` VALUES (59, 'test78', 'default', 'application', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Namespace` VALUES (60, 'test82', 'default', 'application', b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17');
INSERT INTO `Namespace` VALUES (61, 'test88', 'default', 'application', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Namespace` VALUES (62, 'test99', 'default', 'application', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='permission表';

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
INSERT INTO `Permission` VALUES (445, 'CreateCluster', 'platform-sample-provider-biz', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (446, 'CreateNamespace', 'platform-sample-provider-biz', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (447, 'AssignRole', 'platform-sample-provider-biz', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (448, 'ModifyNamespace', 'platform-sample-provider-biz+application', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (449, 'ReleaseNamespace', 'platform-sample-provider-biz+application', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (450, 'ModifyNamespace', 'platform-sample-provider-biz+application+DEV', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (451, 'ReleaseNamespace', 'platform-sample-provider-biz+application+DEV', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (452, 'ModifyNamespace', 'platform-sample-provider-biz+application+TEST', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (453, 'ReleaseNamespace', 'platform-sample-provider-biz+application+TEST', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (454, 'ModifyNamespace', 'platform-sample-provider-biz+application+PRE', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (455, 'ReleaseNamespace', 'platform-sample-provider-biz+application+PRE', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (456, 'ModifyNamespace', 'platform-sample-provider-biz+application+PROD', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (457, 'ReleaseNamespace', 'platform-sample-provider-biz+application+PROD', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Permission` VALUES (458, 'CreateCluster', 'test70', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (459, 'CreateNamespace', 'test70', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (460, 'AssignRole', 'test70', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (461, 'ModifyNamespace', 'test70+application', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (462, 'ReleaseNamespace', 'test70+application', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (463, 'ModifyNamespace', 'test70+application+DEV', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (464, 'ReleaseNamespace', 'test70+application+DEV', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (465, 'ModifyNamespace', 'test70+application+TEST', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (466, 'ReleaseNamespace', 'test70+application+TEST', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (467, 'ModifyNamespace', 'test70+application+PRE', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (468, 'ReleaseNamespace', 'test70+application+PRE', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (469, 'ModifyNamespace', 'test70+application+PROD', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (470, 'ReleaseNamespace', 'test70+application+PROD', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Permission` VALUES (471, 'CreateCluster', 'test72', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (472, 'CreateNamespace', 'test72', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (473, 'AssignRole', 'test72', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (474, 'ModifyNamespace', 'test72+application', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (475, 'ReleaseNamespace', 'test72+application', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (476, 'ModifyNamespace', 'test72+application+DEV', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (477, 'ReleaseNamespace', 'test72+application+DEV', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (478, 'ModifyNamespace', 'test72+application+TEST', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (479, 'ReleaseNamespace', 'test72+application+TEST', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (480, 'ModifyNamespace', 'test72+application+PRE', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (481, 'ReleaseNamespace', 'test72+application+PRE', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (482, 'ModifyNamespace', 'test72+application+PROD', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (483, 'ReleaseNamespace', 'test72+application+PROD', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Permission` VALUES (484, 'CreateCluster', 'test73', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (485, 'CreateNamespace', 'test73', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (486, 'AssignRole', 'test73', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (487, 'ModifyNamespace', 'test73+application', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (488, 'ReleaseNamespace', 'test73+application', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (489, 'ModifyNamespace', 'test73+application+DEV', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (490, 'ReleaseNamespace', 'test73+application+DEV', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (491, 'ModifyNamespace', 'test73+application+TEST', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (492, 'ReleaseNamespace', 'test73+application+TEST', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (493, 'ModifyNamespace', 'test73+application+PRE', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (494, 'ReleaseNamespace', 'test73+application+PRE', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (495, 'ModifyNamespace', 'test73+application+PROD', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (496, 'ReleaseNamespace', 'test73+application+PROD', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Permission` VALUES (497, 'CreateCluster', 'test78', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (498, 'CreateNamespace', 'test78', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (499, 'AssignRole', 'test78', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (500, 'ModifyNamespace', 'test78+application', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (501, 'ReleaseNamespace', 'test78+application', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (502, 'ModifyNamespace', 'test78+application+DEV', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (503, 'ReleaseNamespace', 'test78+application+DEV', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (504, 'ModifyNamespace', 'test78+application+TEST', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (505, 'ReleaseNamespace', 'test78+application+TEST', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (506, 'ModifyNamespace', 'test78+application+PRE', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (507, 'ReleaseNamespace', 'test78+application+PRE', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (508, 'ModifyNamespace', 'test78+application+PROD', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (509, 'ReleaseNamespace', 'test78+application+PROD', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Permission` VALUES (510, 'CreateCluster', 'test82', b'0', 'apollo', '2018-12-09 22:54:17', 'apollo', '2018-12-09 22:54:17');
INSERT INTO `Permission` VALUES (511, 'CreateNamespace', 'test82', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (512, 'AssignRole', 'test82', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (513, 'ModifyNamespace', 'test82+application', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (514, 'ReleaseNamespace', 'test82+application', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (515, 'ModifyNamespace', 'test82+application+DEV', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (516, 'ReleaseNamespace', 'test82+application+DEV', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (517, 'ModifyNamespace', 'test82+application+TEST', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (518, 'ReleaseNamespace', 'test82+application+TEST', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (519, 'ModifyNamespace', 'test82+application+PRE', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (520, 'ReleaseNamespace', 'test82+application+PRE', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (521, 'ModifyNamespace', 'test82+application+PROD', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (522, 'ReleaseNamespace', 'test82+application+PROD', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Permission` VALUES (523, 'CreateCluster', 'test88', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (524, 'CreateNamespace', 'test88', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (525, 'AssignRole', 'test88', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (526, 'ModifyNamespace', 'test88+application', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (527, 'ReleaseNamespace', 'test88+application', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (528, 'ModifyNamespace', 'test88+application+DEV', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (529, 'ReleaseNamespace', 'test88+application+DEV', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (530, 'ModifyNamespace', 'test88+application+TEST', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (531, 'ReleaseNamespace', 'test88+application+TEST', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (532, 'ModifyNamespace', 'test88+application+PRE', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (533, 'ReleaseNamespace', 'test88+application+PRE', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (534, 'ModifyNamespace', 'test88+application+PROD', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (535, 'ReleaseNamespace', 'test88+application+PROD', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Permission` VALUES (536, 'CreateCluster', 'test99', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (537, 'CreateNamespace', 'test99', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (538, 'AssignRole', 'test99', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (539, 'ModifyNamespace', 'test99+application', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (540, 'ReleaseNamespace', 'test99+application', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (541, 'ModifyNamespace', 'test99+application+DEV', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (542, 'ReleaseNamespace', 'test99+application+DEV', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (543, 'ModifyNamespace', 'test99+application+TEST', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (544, 'ReleaseNamespace', 'test99+application+TEST', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (545, 'ModifyNamespace', 'test99+application+PRE', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (546, 'ReleaseNamespace', 'test99+application+PRE', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (547, 'ModifyNamespace', 'test99+application+PROD', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Permission` VALUES (548, 'ReleaseNamespace', 'test99+application+PROD', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布';

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
INSERT INTO `Release` VALUES (70, '20181207234036-0dae23a6bd757bac', '20181207234033-release', '', 'platform-sample-provider-biz', 'default', 'application', '{\"spring.datasource.driverClassName\":\"com.mysql.jdbc.Driver\",\"spring.datasource.testWhileIdle\":\"true\",\"spring.datasource.maxOpenPreparedStatements\":\"20\",\"spring.datasource.name\":\"datasource\",\"spring.datasource.poolPreparedStatements\":\"true\",\"mybatis.config-location\":\"classpath:mybatis-config.xml\",\"spring.datasource.timeBetweenEvictionRunsMillis\":\"60000\",\"spring.datasource.minIdle\":\"1\",\"spring.datasource.minEvictableIdleTimeMillis\":\"300000\",\"spring.datasource.password\":\"ops_upms\",\"spring.datasource.maxActive\":\"20\",\"spring.datasource.maxWait\":\"60000\",\"spring.datasource.filters\":\"stat\",\"spring.datasource.username\":\"ops_upms\",\"spring.datasource.testOnBorrow\":\"false\",\"spring.datasource.initialSize\":\"1\",\"test.name\":\"liudayang11\",\"spring.datasource.url\":\"jdbc:mysql://192.168.1.95:3306/ops-upms?useUnicode\\u003dtrue\\u0026amp;characterEncoding\\u003dUTF-8\",\"spring.datasource.testOnReturn\":\"false\",\"server.port\":\"9091\",\"spring.datasource.validationQuery\":\"select 1\",\"spring.datasource.type\":\"com.alibaba.druid.pool.DruidDataSource\"}', b'0', b'0', 'apollo', '2018-12-07 23:40:36', 'apollo', '2018-12-07 23:40:36', 'DEV');
INSERT INTO `Release` VALUES (71, '20181208000220-cbb94f3745e05f64', '20181208000218-release', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-08 00:02:20', 'apollo', '2018-12-08 00:02:20', 'DEV');
INSERT INTO `Release` VALUES (72, '20181208000356-cbb94f3745e05f65', '20181208000354-release', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-08 00:03:57', 'apollo', '2018-12-08 00:03:57', 'DEV');
INSERT INTO `Release` VALUES (73, '20181208000456-cbb94f3745e05f66', '20181208000454-release', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-08 00:04:57', 'apollo', '2018-12-08 00:04:57', 'DEV');
INSERT INTO `Release` VALUES (74, '20181208000506-cbb94f3745e05f67', '20181208000505-release', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-08 00:05:07', 'apollo', '2018-12-08 00:05:07', 'DEV');
INSERT INTO `Release` VALUES (75, '20181208000612-cbb94f3745e05f68', '20181208000611-gray', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-08 00:06:13', 'apollo', '2018-12-08 00:06:13', 'PROD');
INSERT INTO `Release` VALUES (76, '20181209142636-cbb94f374548b93f', '20181209142634-release', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 14:26:36', 'apollo', '2018-12-09 14:26:36', 'DEV');
INSERT INTO `Release` VALUES (77, '20181209204037-cbb94f374548b940', '20181209204035-release', '', 'test70', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 20:40:37', 'apollo', '2018-12-09 20:40:37', 'DEV');
INSERT INTO `Release` VALUES (78, '20181209204106-d33b4f374548b941', '20181209204105-release', '', 'test72', 'default', 'application', '{\"111\":\"212\"}', b'0', b'0', 'apollo', '2018-12-09 20:41:06', 'apollo', '2018-12-09 20:41:06', 'DEV');
INSERT INTO `Release` VALUES (79, '20181209204140-d33b4f374548b942', '20181209204138-release', '', 'test72', 'default', 'application', '{\"111\":\"212\",\"123\":\"233\"}', b'0', b'0', 'apollo', '2018-12-09 20:41:40', 'apollo', '2018-12-09 20:41:40', 'DEV');
INSERT INTO `Release` VALUES (80, '20181209211216-d6fc8134a33f31fe', '20181209211215-release', '', 'test73', 'default', 'application', '{\"11\":\"123\"}', b'0', b'0', 'apollo', '2018-12-09 21:12:16', 'apollo', '2018-12-09 21:12:16', 'DEV');
INSERT INTO `Release` VALUES (81, '20181209211240-d6fc8134a33f31ff', '20181209211239-release', '', 'test73', 'default', 'application', '{\"11\":\"123\",\"22\":\"123\"}', b'1', b'0', 'apollo', '2018-12-09 21:12:40', 'apollo', '2018-12-09 21:18:57', 'DEV');
INSERT INTO `Release` VALUES (82, '20181209211921-d6fc8134a3176b0f', '20181209211920-release', '', 'test73', 'default', 'application', '{\"11\":\"123\",\"22\":\"123\"}', b'0', b'0', 'apollo', '2018-12-09 21:19:22', 'apollo', '2018-12-09 21:19:22', 'DEV');
INSERT INTO `Release` VALUES (83, '20181209211931-d6fc8134a3176b10', '20181209211930-release', '', 'test73', 'default', 'application', '{\"11\":\"123\",\"22\":\"123\",\"33\":\"234\"}', b'1', b'0', 'apollo', '2018-12-09 21:19:32', 'apollo', '2018-12-09 21:19:45', 'DEV');
INSERT INTO `Release` VALUES (84, '20181209211951-d6fc8134a3176b11', '20181209211950-release', '', 'test73', 'default', 'application', '{\"11\":\"123\",\"22\":\"123\",\"33\":\"234\"}', b'0', b'0', 'apollo', '2018-12-09 21:19:51', 'apollo', '2018-12-09 21:19:51', 'DEV');
INSERT INTO `Release` VALUES (85, '20181209212006-d6fc8134a3176b12', '20181209212005-release', '', 'test73', 'default', 'application', '{\"11\":\"123\",\"22\":\"123\",\"33\":\"234\"}', b'0', b'0', 'apollo', '2018-12-09 21:20:06', 'apollo', '2018-12-09 21:20:06', 'TEST');
INSERT INTO `Release` VALUES (86, '20181209212033-d6fc8134a3176b13', '20181209212030-release', '', 'test73', 'default', 'application', '{\"11\":\"123\",\"22\":\"123\",\"33\":\"234\",\"12\":\"123\"}', b'0', b'0', 'apollo', '2018-12-09 21:20:34', 'apollo', '2018-12-09 21:20:34', 'PRE');
INSERT INTO `Release` VALUES (87, '20181209214932-e9c18134a3176b14', '20181209214931-release', '', 'test78', 'default', 'application', '{\"11\":\"33\"}', b'0', b'0', 'apollo', '2018-12-09 21:49:33', 'apollo', '2018-12-09 21:49:33', 'DEV');
INSERT INTO `Release` VALUES (88, '20181209215004-e9c18134a3176b15', '20181209215003-release', '', 'test78', 'default', 'application', '{\"11\":\"33\",\"22\":\"33\"}', b'0', b'0', 'apollo', '2018-12-09 21:50:04', 'apollo', '2018-12-09 21:50:04', 'PROD');
INSERT INTO `Release` VALUES (89, '20181209215320-e9c18134a3176b16', '20181209215311-release', '', 'test78', 'default', 'application', '{\"11\":\"33\",\"22\":\"33\",\"88\":\"99\"}', b'0', b'0', 'apollo', '2018-12-09 21:53:20', 'apollo', '2018-12-09 21:53:20', 'PROD');
INSERT INTO `Release` VALUES (90, '20181209224535-e9c18134a3176b17', '20181209215343-release', '', 'test78', 'default', 'application', '{\"11\":\"33\",\"22\":\"33\",\"88\":\"99\",\"99\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 22:45:35', 'apollo', '2018-12-09 22:45:35', 'PROD');
INSERT INTO `Release` VALUES (91, '20181209224815-e9c18134a3176b18', '20181209215343-release', '', 'test78', 'default', 'application', '{\"11\":\"33\",\"22\":\"33\",\"88\":\"99\",\"99\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 22:48:15', 'apollo', '2018-12-09 22:48:15', 'PROD');
INSERT INTO `Release` VALUES (92, '20181209225436-479a8134a3263cec', '20181209225430-release', '', 'test82', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 22:54:36', 'apollo', '2018-12-09 22:54:36', 'DEV');
INSERT INTO `Release` VALUES (93, '20181209225447-479a8134a3263ced', '20181209225446-release', '', 'test82', 'default', 'application', '{\"11\":\"22\",\"22\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 22:54:47', 'apollo', '2018-12-09 22:54:47', 'DEV');
INSERT INTO `Release` VALUES (94, '20181209225458-479a8134a3263cee', '20181209225457-release', '', 'test82', 'default', 'application', '{\"33\":\"33\"}', b'1', b'0', 'apollo', '2018-12-09 22:54:59', 'apollo', '2018-12-09 22:55:07', 'TEST');
INSERT INTO `Release` VALUES (95, '20181209225523-479a8134a3263cef', '20181209225522-release', '', 'test82', 'default', 'application', '{\"33\":\"33\"}', b'0', b'0', 'apollo', '2018-12-09 22:55:23', 'apollo', '2018-12-09 22:55:23', 'TEST');
INSERT INTO `Release` VALUES (96, '20181209225537-479a8134a3263cf0', '20181209225535-release', '', 'test82', 'default', 'application', '{\"33\":\"338\"}', b'1', b'0', 'apollo', '2018-12-09 22:55:38', 'apollo', '2018-12-09 22:56:22', 'TEST');
INSERT INTO `Release` VALUES (97, '20181209225606-479a8134a3263cf1', '20181209225605-release', '', 'test82', 'default', 'application', '{\"33\":\"338\",\"11\":\"33\"}', b'1', b'0', 'apollo', '2018-12-09 22:56:06', 'apollo', '2018-12-09 22:56:14', 'TEST');
INSERT INTO `Release` VALUES (98, '20181209231248-5e208134a34604b7', '20181209231247-release', '', 'test88', 'default', 'application', '{\"11\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 23:12:49', 'apollo', '2018-12-09 23:12:49', 'DEV');
INSERT INTO `Release` VALUES (99, '20181209231257-5e208134a34604b8', '20181209231256-release', '', 'test88', 'default', 'application', '{\"11\":\"22\",\"22\":\"22\"}', b'1', b'0', 'apollo', '2018-12-09 23:12:58', 'apollo', '2018-12-09 23:13:04', 'DEV');
INSERT INTO `Release` VALUES (100, '20181209231524-d6408134a3b3b76c', '20181209231523-release', '', 'test99', 'default', 'application', '{\"11\":\"11\",\"22\":\"22\"}', b'0', b'0', 'apollo', '2018-12-09 23:15:25', 'apollo', '2018-12-09 23:15:25', 'DEV');
INSERT INTO `Release` VALUES (101, '20181209231538-d6408134a3b3b76d', '20181209231537-release', '', 'test99', 'default', 'application', '{\"111\":\"333\"}', b'0', b'0', 'apollo', '2018-12-09 23:15:38', 'apollo', '2018-12-09 23:15:38', 'TEST');
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
  `Env` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Namespace` (`AppId`,`ClusterName`,`NamespaceName`,`BranchName`),
  KEY `IX_ReleaseId` (`ReleaseId`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布历史';

-- ----------------------------
-- Records of ReleaseHistory
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseHistory` VALUES (1, 'SampleApp', 'default', 'application', 'default', 1, 0, 0, '{}', b'0', 'apollo', '2018-11-11 17:34:08', 'apollo', '2018-11-11 17:34:08', NULL);
INSERT INTO `ReleaseHistory` VALUES (2, 'SampleApp', 'default', 'application', 'default', 3, 2, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-15 14:49:26', 'apollo', '2018-11-15 14:49:26', NULL);
INSERT INTO `ReleaseHistory` VALUES (3, 'SampleApp', 'default', 'application', 'default', 4, 3, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-15 14:50:48', 'apollo', '2018-11-15 14:50:48', NULL);
INSERT INTO `ReleaseHistory` VALUES (4, 'SampleApp', 'default', 'application', 'default', 5, 4, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 13:45:16', 'apollo', '2018-11-19 13:45:16', NULL);
INSERT INTO `ReleaseHistory` VALUES (5, 'SampleApp', 'default', 'application', 'default', 6, 5, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 18:09:11', 'apollo', '2018-11-19 18:09:11', NULL);
INSERT INTO `ReleaseHistory` VALUES (6, 'SampleApp', 'default', 'application', 'default', 7, 6, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 19:53:15', 'apollo', '2018-11-19 19:53:15', NULL);
INSERT INTO `ReleaseHistory` VALUES (7, 'SampleApp', 'default', 'application', 'default', 8, 7, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-19 19:53:50', 'apollo', '2018-11-19 19:53:50', NULL);
INSERT INTO `ReleaseHistory` VALUES (8, 'SampleApp', 'default', 'TEST1.test667', 'default', 9, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 11:08:31', 'apollo', '2018-11-20 11:08:31', NULL);
INSERT INTO `ReleaseHistory` VALUES (9, 'SampleApp', 'default', 'TEST1.test667', 'default', 10, 9, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-11-20 11:09:04', 'apollo', '2018-11-20 11:09:04', NULL);
INSERT INTO `ReleaseHistory` VALUES (56, 'test19', 'default', 'application', 'default', 58, 57, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:44:40', 'apollo', '2018-12-07 00:44:40', NULL);
INSERT INTO `ReleaseHistory` VALUES (57, 'test20', 'default', 'application', 'default', 59, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:45:49', 'apollo', '2018-12-07 00:45:49', NULL);
INSERT INTO `ReleaseHistory` VALUES (58, 'test30', 'default', 'application', 'default', 60, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:56:19', 'apollo', '2018-12-07 00:56:19', NULL);
INSERT INTO `ReleaseHistory` VALUES (59, 'test31', 'default', 'application', 'default', 61, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 00:57:09', 'apollo', '2018-12-07 00:57:09', NULL);
INSERT INTO `ReleaseHistory` VALUES (60, 'test331', 'default', 'application', 'default', 62, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 11:51:32', 'apollo', '2018-12-07 11:51:32', NULL);
INSERT INTO `ReleaseHistory` VALUES (61, 'TEST38', 'default', 'application', 'default', 63, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 12:56:03', 'apollo', '2018-12-07 12:56:03', NULL);
INSERT INTO `ReleaseHistory` VALUES (62, 'test60', 'default', 'application', 'default', 64, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 15:14:59', 'apollo', '2018-12-07 15:14:59', NULL);
INSERT INTO `ReleaseHistory` VALUES (63, 'test60', 'default', 'application', 'default', 65, 64, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 15:15:35', 'apollo', '2018-12-07 15:15:35', NULL);
INSERT INTO `ReleaseHistory` VALUES (64, 'test61', 'default', 'application', 'default', 66, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 15:42:17', 'apollo', '2018-12-07 15:42:17', NULL);
INSERT INTO `ReleaseHistory` VALUES (65, 'test61', 'default', 'application', 'default', 67, 66, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 16:23:08', 'apollo', '2018-12-07 16:23:08', NULL);
INSERT INTO `ReleaseHistory` VALUES (66, 'test61', 'default', 'application', 'default', 68, 67, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 19:01:02', 'apollo', '2018-12-07 19:01:02', NULL);
INSERT INTO `ReleaseHistory` VALUES (67, 'test61', 'default', 'application', 'default', 69, 68, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 19:08:37', 'apollo', '2018-12-07 19:08:37', NULL);
INSERT INTO `ReleaseHistory` VALUES (68, 'platform-sample-provider-biz', 'default', 'application', 'default', 70, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-07 23:40:36', 'apollo', '2018-12-07 23:40:36', NULL);
INSERT INTO `ReleaseHistory` VALUES (69, 'test70', 'default', 'application', 'default', 71, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-08 00:02:20', 'apollo', '2018-12-08 00:02:20', NULL);
INSERT INTO `ReleaseHistory` VALUES (70, 'test70', 'default', 'application', 'default', 72, 71, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-08 00:03:57', 'apollo', '2018-12-08 00:03:57', NULL);
INSERT INTO `ReleaseHistory` VALUES (71, 'test70', 'default', 'application', 'default', 73, 72, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-08 00:04:57', 'apollo', '2018-12-08 00:04:57', NULL);
INSERT INTO `ReleaseHistory` VALUES (72, 'test70', 'default', 'application', 'default', 74, 73, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-08 00:05:07', 'apollo', '2018-12-08 00:05:07', NULL);
INSERT INTO `ReleaseHistory` VALUES (73, 'test70', 'default', 'application', 'default', 75, 74, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-08 00:06:13', 'apollo', '2018-12-08 00:06:13', NULL);
INSERT INTO `ReleaseHistory` VALUES (74, 'test70', 'default', 'application', 'default', 76, 75, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 14:26:36', 'apollo', '2018-12-09 14:26:36', NULL);
INSERT INTO `ReleaseHistory` VALUES (75, 'test70', 'default', 'application', 'default', 77, 76, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 20:40:37', 'apollo', '2018-12-09 20:40:37', NULL);
INSERT INTO `ReleaseHistory` VALUES (76, 'test72', 'default', 'application', 'default', 78, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 20:41:06', 'apollo', '2018-12-09 20:41:06', NULL);
INSERT INTO `ReleaseHistory` VALUES (77, 'test72', 'default', 'application', 'default', 79, 78, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 20:41:40', 'apollo', '2018-12-09 20:41:40', NULL);
INSERT INTO `ReleaseHistory` VALUES (78, 'test73', 'default', 'application', 'default', 80, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:12:16', 'apollo', '2018-12-09 21:12:16', NULL);
INSERT INTO `ReleaseHistory` VALUES (79, 'test73', 'default', 'application', 'default', 81, 80, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:12:40', 'apollo', '2018-12-09 21:12:40', NULL);
INSERT INTO `ReleaseHistory` VALUES (80, 'test73', 'default', 'application', 'default', 80, 81, 1, '{}', b'0', 'apollo', '2018-12-09 21:18:57', 'apollo', '2018-12-09 21:18:57', NULL);
INSERT INTO `ReleaseHistory` VALUES (81, 'test73', 'default', 'application', 'default', 82, 80, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:19:22', 'apollo', '2018-12-09 21:19:22', NULL);
INSERT INTO `ReleaseHistory` VALUES (82, 'test73', 'default', 'application', 'default', 83, 82, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:19:32', 'apollo', '2018-12-09 21:19:32', NULL);
INSERT INTO `ReleaseHistory` VALUES (83, 'test73', 'default', 'application', 'default', 82, 83, 1, '{}', b'0', 'apollo', '2018-12-09 21:19:45', 'apollo', '2018-12-09 21:19:45', NULL);
INSERT INTO `ReleaseHistory` VALUES (84, 'test73', 'default', 'application', 'default', 84, 82, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:19:51', 'apollo', '2018-12-09 21:19:51', NULL);
INSERT INTO `ReleaseHistory` VALUES (85, 'test73', 'default', 'application', 'default', 85, 84, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:20:06', 'apollo', '2018-12-09 21:20:06', NULL);
INSERT INTO `ReleaseHistory` VALUES (86, 'test73', 'default', 'application', 'default', 86, 85, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:20:34', 'apollo', '2018-12-09 21:20:34', NULL);
INSERT INTO `ReleaseHistory` VALUES (87, 'test78', 'default', 'application', 'default', 87, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:49:33', 'apollo', '2018-12-09 21:49:33', NULL);
INSERT INTO `ReleaseHistory` VALUES (88, 'test78', 'default', 'application', 'default', 88, 87, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:50:05', 'apollo', '2018-12-09 21:50:05', NULL);
INSERT INTO `ReleaseHistory` VALUES (89, 'test78', 'default', 'application', 'default', 89, 88, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 21:53:20', 'apollo', '2018-12-09 21:53:20', NULL);
INSERT INTO `ReleaseHistory` VALUES (90, 'test78', 'default', 'application', 'default', 90, 89, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:45:35', 'apollo', '2018-12-09 22:45:35', NULL);
INSERT INTO `ReleaseHistory` VALUES (91, 'test78', 'default', 'application', 'default', 91, 90, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:48:15', 'apollo', '2018-12-09 22:48:15', NULL);
INSERT INTO `ReleaseHistory` VALUES (92, 'test82', 'default', 'application', 'default', 92, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:54:36', 'apollo', '2018-12-09 22:54:36', NULL);
INSERT INTO `ReleaseHistory` VALUES (93, 'test82', 'default', 'application', 'default', 93, 92, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:54:47', 'apollo', '2018-12-09 22:54:47', NULL);
INSERT INTO `ReleaseHistory` VALUES (94, 'test82', 'default', 'application', 'default', 94, 93, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:54:59', 'apollo', '2018-12-09 22:54:59', NULL);
INSERT INTO `ReleaseHistory` VALUES (95, 'test82', 'default', 'application', 'default', 93, 94, 1, '{}', b'0', 'apollo', '2018-12-09 22:55:08', 'apollo', '2018-12-09 22:55:08', NULL);
INSERT INTO `ReleaseHistory` VALUES (96, 'test82', 'default', 'application', 'default', 95, 93, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:55:23', 'apollo', '2018-12-09 22:55:23', NULL);
INSERT INTO `ReleaseHistory` VALUES (97, 'test82', 'default', 'application', 'default', 96, 95, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:55:38', 'apollo', '2018-12-09 22:55:38', NULL);
INSERT INTO `ReleaseHistory` VALUES (98, 'test82', 'default', 'application', 'default', 97, 96, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 22:56:06', 'apollo', '2018-12-09 22:56:06', NULL);
INSERT INTO `ReleaseHistory` VALUES (99, 'test82', 'default', 'application', 'default', 96, 97, 1, '{}', b'0', 'apollo', '2018-12-09 22:56:15', 'apollo', '2018-12-09 22:56:15', NULL);
INSERT INTO `ReleaseHistory` VALUES (100, 'test82', 'default', 'application', 'default', 95, 96, 1, '{}', b'0', 'apollo', '2018-12-09 22:56:22', 'apollo', '2018-12-09 22:56:22', NULL);
INSERT INTO `ReleaseHistory` VALUES (101, 'test88', 'default', 'application', 'default', 98, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 23:12:49', 'apollo', '2018-12-09 23:12:49', 'DEV');
INSERT INTO `ReleaseHistory` VALUES (102, 'test88', 'default', 'application', 'default', 99, 98, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 23:12:58', 'apollo', '2018-12-09 23:12:58', 'DEV');
INSERT INTO `ReleaseHistory` VALUES (103, 'test88', 'default', 'application', 'default', 98, 99, 1, '{}', b'0', 'apollo', '2018-12-09 23:13:04', 'apollo', '2018-12-09 23:13:04', 'DEV');
INSERT INTO `ReleaseHistory` VALUES (104, 'test99', 'default', 'application', 'default', 100, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 23:15:25', 'apollo', '2018-12-09 23:15:25', 'DEV');
INSERT INTO `ReleaseHistory` VALUES (105, 'test99', 'default', 'application', 'default', 101, 100, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-09 23:15:38', 'apollo', '2018-12-09 23:15:38', 'TEST');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布消息';

-- ----------------------------
-- Records of ReleaseMessage
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseMessage` VALUES (9, 'test19+default+application', '2018-12-07 00:44:40');
INSERT INTO `ReleaseMessage` VALUES (10, 'test20+default+application', '2018-12-07 00:45:49');
INSERT INTO `ReleaseMessage` VALUES (11, 'test30+default+application', '2018-12-07 00:56:19');
INSERT INTO `ReleaseMessage` VALUES (12, 'test31+default+application', '2018-12-07 00:57:09');
INSERT INTO `ReleaseMessage` VALUES (13, 'test331+default+application', '2018-12-07 11:51:32');
INSERT INTO `ReleaseMessage` VALUES (14, 'TEST38+default+application', '2018-12-07 12:56:03');
INSERT INTO `ReleaseMessage` VALUES (15, 'test60+default+application', '2018-12-07 15:14:59');
INSERT INTO `ReleaseMessage` VALUES (18, 'test61+default+application', '2018-12-07 19:01:02');
INSERT INTO `ReleaseMessage` VALUES (19, 'test61+default+application', '2018-12-07 19:08:37');
INSERT INTO `ReleaseMessage` VALUES (20, 'platform-sample-provider-biz+default+application', '2018-12-07 23:40:36');
INSERT INTO `ReleaseMessage` VALUES (26, 'test70+default+application', '2018-12-09 20:40:37');
INSERT INTO `ReleaseMessage` VALUES (28, 'test72+default+application', '2018-12-09 20:41:40');
INSERT INTO `ReleaseMessage` VALUES (35, 'test73+default+application', '2018-12-09 21:20:34');
INSERT INTO `ReleaseMessage` VALUES (40, 'test78+default+application', '2018-12-09 22:48:15');
INSERT INTO `ReleaseMessage` VALUES (46, 'test82+default+application', '2018-12-09 22:56:06');
INSERT INTO `ReleaseMessage` VALUES (48, 'test88+default+application', '2018-12-09 23:12:58');
INSERT INTO `ReleaseMessage` VALUES (50, 'test99+default+application', '2018-12-09 23:15:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';

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
INSERT INTO `Role` VALUES (381, 'Master+platform-sample-provider-biz', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (382, 'ModifyNamespace+platform-sample-provider-biz+application', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (383, 'ReleaseNamespace+platform-sample-provider-biz+application', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (384, 'ModifyNamespace+platform-sample-provider-biz+application+DEV', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (385, 'ReleaseNamespace+platform-sample-provider-biz+application+DEV', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (386, 'ModifyNamespace+platform-sample-provider-biz+application+TEST', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (387, 'ReleaseNamespace+platform-sample-provider-biz+application+TEST', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (388, 'ModifyNamespace+platform-sample-provider-biz+application+PRE', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (389, 'ReleaseNamespace+platform-sample-provider-biz+application+PRE', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (390, 'ModifyNamespace+platform-sample-provider-biz+application+PROD', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (391, 'ReleaseNamespace+platform-sample-provider-biz+application+PROD', b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `Role` VALUES (392, 'Master+test70', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (393, 'ModifyNamespace+test70+application', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (394, 'ReleaseNamespace+test70+application', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (395, 'ModifyNamespace+test70+application+DEV', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (396, 'ReleaseNamespace+test70+application+DEV', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (397, 'ModifyNamespace+test70+application+TEST', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (398, 'ReleaseNamespace+test70+application+TEST', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (399, 'ModifyNamespace+test70+application+PRE', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (400, 'ReleaseNamespace+test70+application+PRE', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (401, 'ModifyNamespace+test70+application+PROD', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (402, 'ReleaseNamespace+test70+application+PROD', b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `Role` VALUES (403, 'Master+test72', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (404, 'ModifyNamespace+test72+application', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (405, 'ReleaseNamespace+test72+application', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (406, 'ModifyNamespace+test72+application+DEV', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (407, 'ReleaseNamespace+test72+application+DEV', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (408, 'ModifyNamespace+test72+application+TEST', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (409, 'ReleaseNamespace+test72+application+TEST', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (410, 'ModifyNamespace+test72+application+PRE', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (411, 'ReleaseNamespace+test72+application+PRE', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (412, 'ModifyNamespace+test72+application+PROD', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (413, 'ReleaseNamespace+test72+application+PROD', b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `Role` VALUES (414, 'Master+test73', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (415, 'ModifyNamespace+test73+application', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (416, 'ReleaseNamespace+test73+application', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (417, 'ModifyNamespace+test73+application+DEV', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (418, 'ReleaseNamespace+test73+application+DEV', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (419, 'ModifyNamespace+test73+application+TEST', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (420, 'ReleaseNamespace+test73+application+TEST', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (421, 'ModifyNamespace+test73+application+PRE', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (422, 'ReleaseNamespace+test73+application+PRE', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (423, 'ModifyNamespace+test73+application+PROD', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (424, 'ReleaseNamespace+test73+application+PROD', b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `Role` VALUES (425, 'Master+test78', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (426, 'ModifyNamespace+test78+application', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (427, 'ReleaseNamespace+test78+application', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (428, 'ModifyNamespace+test78+application+DEV', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (429, 'ReleaseNamespace+test78+application+DEV', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (430, 'ModifyNamespace+test78+application+TEST', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (431, 'ReleaseNamespace+test78+application+TEST', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (432, 'ModifyNamespace+test78+application+PRE', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (433, 'ReleaseNamespace+test78+application+PRE', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (434, 'ModifyNamespace+test78+application+PROD', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (435, 'ReleaseNamespace+test78+application+PROD', b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `Role` VALUES (436, 'Master+test82', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (437, 'ModifyNamespace+test82+application', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (438, 'ReleaseNamespace+test82+application', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (439, 'ModifyNamespace+test82+application+DEV', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (440, 'ReleaseNamespace+test82+application+DEV', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (441, 'ModifyNamespace+test82+application+TEST', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (442, 'ReleaseNamespace+test82+application+TEST', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (443, 'ModifyNamespace+test82+application+PRE', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (444, 'ReleaseNamespace+test82+application+PRE', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (445, 'ModifyNamespace+test82+application+PROD', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (446, 'ReleaseNamespace+test82+application+PROD', b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `Role` VALUES (447, 'Master+test88', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (448, 'ModifyNamespace+test88+application', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (449, 'ReleaseNamespace+test88+application', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (450, 'ModifyNamespace+test88+application+DEV', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (451, 'ReleaseNamespace+test88+application+DEV', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (452, 'ModifyNamespace+test88+application+TEST', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (453, 'ReleaseNamespace+test88+application+TEST', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (454, 'ModifyNamespace+test88+application+PRE', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (455, 'ReleaseNamespace+test88+application+PRE', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (456, 'ModifyNamespace+test88+application+PROD', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (457, 'ReleaseNamespace+test88+application+PROD', b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `Role` VALUES (458, 'Master+test99', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (459, 'ModifyNamespace+test99+application', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (460, 'ReleaseNamespace+test99+application', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (461, 'ModifyNamespace+test99+application+DEV', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (462, 'ReleaseNamespace+test99+application+DEV', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (463, 'ModifyNamespace+test99+application+TEST', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (464, 'ReleaseNamespace+test99+application+TEST', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (465, 'ModifyNamespace+test99+application+PRE', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (466, 'ReleaseNamespace+test99+application+PRE', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (467, 'ModifyNamespace+test99+application+PROD', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `Role` VALUES (468, 'ReleaseNamespace+test99+application+PROD', b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和权限的绑定表';

-- ----------------------------
-- Records of RolePermission
-- ----------------------------
BEGIN;
INSERT INTO `RolePermission` VALUES (1, 1, 1, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (2, 1, 2, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (3, 1, 3, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (4, 2, 4, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
INSERT INTO `RolePermission` VALUES (5, 3, 5, b'0', '', '2018-11-11 17:35:16', '', '2018-11-11 17:35:16');
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
INSERT INTO `RolePermission` VALUES (445, 381, 445, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (446, 381, 446, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (447, 381, 447, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (448, 382, 448, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (449, 383, 449, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (450, 384, 450, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (451, 385, 451, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (452, 386, 452, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (453, 387, 453, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (454, 388, 454, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (455, 389, 455, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (456, 390, 456, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (457, 391, 457, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `RolePermission` VALUES (458, 392, 458, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (459, 392, 459, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (460, 392, 460, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (461, 393, 461, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (462, 394, 462, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (463, 395, 463, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (464, 396, 464, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (465, 397, 465, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (466, 398, 466, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (467, 399, 467, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (468, 400, 468, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (469, 401, 469, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (470, 402, 470, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `RolePermission` VALUES (471, 403, 471, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (472, 403, 472, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (473, 403, 473, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (474, 404, 474, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (475, 405, 475, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (476, 406, 476, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (477, 407, 477, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (478, 408, 478, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (479, 409, 479, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (480, 410, 480, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (481, 411, 481, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (482, 412, 482, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (483, 413, 483, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `RolePermission` VALUES (484, 414, 484, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (485, 414, 485, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (486, 414, 486, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (487, 415, 487, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (488, 416, 488, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (489, 417, 489, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (490, 418, 490, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (491, 419, 491, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (492, 420, 492, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (493, 421, 493, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (494, 422, 494, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (495, 423, 495, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (496, 424, 496, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `RolePermission` VALUES (497, 425, 497, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (498, 425, 498, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (499, 425, 499, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (500, 426, 500, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (501, 427, 501, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (502, 428, 502, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (503, 429, 503, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (504, 430, 504, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (505, 431, 505, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (506, 432, 506, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (507, 433, 507, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (508, 434, 508, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (509, 435, 509, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `RolePermission` VALUES (510, 436, 510, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (511, 436, 511, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (512, 436, 512, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (513, 437, 513, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (514, 438, 514, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (515, 439, 515, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (516, 440, 516, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (517, 441, 517, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (518, 442, 518, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (519, 443, 519, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (520, 444, 520, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (521, 445, 521, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (522, 446, 522, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `RolePermission` VALUES (523, 447, 523, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (524, 447, 524, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (525, 447, 525, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (526, 448, 526, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (527, 449, 527, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (528, 450, 528, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (529, 451, 529, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (530, 452, 530, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (531, 453, 531, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (532, 454, 532, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (533, 455, 533, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (534, 456, 534, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (535, 457, 535, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `RolePermission` VALUES (536, 458, 536, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (537, 458, 537, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (538, 458, 538, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (539, 459, 539, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (540, 460, 540, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (541, 461, 541, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (542, 462, 542, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (543, 463, 543, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (544, 464, 544, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (545, 465, 545, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (546, 466, 546, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (547, 467, 547, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `RolePermission` VALUES (548, 468, 548, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和role的绑定表';

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
INSERT INTO `UserRole` VALUES (48, 'apollo', 86, b'1', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (49, 'apollo', 87, b'1', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (50, 'apollo', 88, b'1', 'apollo', '2018-12-03 10:34:59', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (51, 'apollo', 91, b'1', 'apollo', '2018-12-03 15:07:42', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (52, 'apollo', 92, b'1', 'apollo', '2018-12-03 15:07:42', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (53, 'apollo', 95, b'1', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (54, 'apollo', 96, b'1', 'apollo', '2018-12-03 15:08:04', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (55, 'apollo', 99, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `UserRole` VALUES (56, 'apollo', 100, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `UserRole` VALUES (57, 'apollo', 101, b'0', 'apollo', '2018-12-04 10:54:02', 'apollo', '2018-12-04 10:54:02');
INSERT INTO `UserRole` VALUES (58, 'apollo', 104, b'1', 'apollo', '2018-12-06 17:53:30', 'apollo', '2018-12-07 23:37:03');
INSERT INTO `UserRole` VALUES (59, 'apollo', 105, b'1', 'apollo', '2018-12-06 17:53:30', 'apollo', '2018-12-07 23:37:03');
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
INSERT INTO `UserRole` VALUES (127, 'apollo', 381, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `UserRole` VALUES (128, 'apollo', 382, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `UserRole` VALUES (129, 'apollo', 383, b'0', 'apollo', '2018-12-07 23:38:10', 'apollo', '2018-12-07 23:38:10');
INSERT INTO `UserRole` VALUES (130, 'apollo', 392, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `UserRole` VALUES (131, 'apollo', 393, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `UserRole` VALUES (132, 'apollo', 394, b'0', 'apollo', '2018-12-08 00:02:03', 'apollo', '2018-12-08 00:02:03');
INSERT INTO `UserRole` VALUES (133, 'apollo', 403, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `UserRole` VALUES (134, 'apollo', 404, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `UserRole` VALUES (135, 'apollo', 405, b'0', 'apollo', '2018-12-09 14:27:00', 'apollo', '2018-12-09 14:27:00');
INSERT INTO `UserRole` VALUES (136, 'apollo', 414, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `UserRole` VALUES (137, 'apollo', 415, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `UserRole` VALUES (138, 'apollo', 416, b'0', 'apollo', '2018-12-09 21:09:21', 'apollo', '2018-12-09 21:09:21');
INSERT INTO `UserRole` VALUES (139, 'apollo', 425, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `UserRole` VALUES (140, 'apollo', 426, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `UserRole` VALUES (141, 'apollo', 427, b'0', 'apollo', '2018-12-09 21:39:32', 'apollo', '2018-12-09 21:39:32');
INSERT INTO `UserRole` VALUES (142, 'apollo', 436, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `UserRole` VALUES (143, 'apollo', 437, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `UserRole` VALUES (144, 'apollo', 438, b'0', 'apollo', '2018-12-09 22:54:18', 'apollo', '2018-12-09 22:54:18');
INSERT INTO `UserRole` VALUES (145, 'apollo', 447, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `UserRole` VALUES (146, 'apollo', 448, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `UserRole` VALUES (147, 'apollo', 449, b'0', 'apollo', '2018-12-09 23:12:36', 'apollo', '2018-12-09 23:12:36');
INSERT INTO `UserRole` VALUES (148, 'apollo', 458, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `UserRole` VALUES (149, 'apollo', 459, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
INSERT INTO `UserRole` VALUES (150, 'apollo', 460, b'0', 'apollo', '2018-12-09 23:15:09', 'apollo', '2018-12-09 23:15:09');
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
