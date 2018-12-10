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

 Date: 10/12/2018 09:14:48
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用表';

-- ----------------------------
-- Records of App
-- ----------------------------
BEGIN;
INSERT INTO `App` VALUES (1, 'test1', 'test1', 'TEST1', '样例部门1', 'apollo', 'apollo@acme.com', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='应用namespace定义';

-- ----------------------------
-- Records of AppNamespace
-- ----------------------------
BEGIN;
INSERT INTO `AppNamespace` VALUES (1, 'application', 'test1', 'properties', b'0', 'default app namespace', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `AppNamespace` VALUES (2, 'TEST1.test22', 'test1', 'properties', b'1', '', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日志审计表';

-- ----------------------------
-- Records of Audit
-- ----------------------------
BEGIN;
INSERT INTO `Audit` VALUES (1, 'Namespace', 67, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:12:57', NULL, '2018-12-10 09:12:57');
INSERT INTO `Audit` VALUES (2, 'ClusterEntity', 80, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:12:57', NULL, '2018-12-10 09:12:57');
INSERT INTO `Audit` VALUES (3, 'ClusterEntity', 81, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:12:57', NULL, '2018-12-10 09:12:57');
INSERT INTO `Audit` VALUES (4, 'ClusterEntity', 82, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:12:57', NULL, '2018-12-10 09:12:57');
INSERT INTO `Audit` VALUES (5, 'ClusterEntity', 83, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:12:57', NULL, '2018-12-10 09:12:57');
INSERT INTO `Audit` VALUES (6, 'Item', 285, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:13:21', NULL, '2018-12-10 09:13:21');
INSERT INTO `Audit` VALUES (7, 'ItemSet', NULL, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:13:21', NULL, '2018-12-10 09:13:21');
INSERT INTO `Audit` VALUES (8, 'Release', 102, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:13:24', NULL, '2018-12-10 09:13:24');
INSERT INTO `Audit` VALUES (9, 'ReleaseHistory', 1, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:13:24', NULL, '2018-12-10 09:13:24');
INSERT INTO `Audit` VALUES (10, 'Namespace', 68, 'INSERT', NULL, b'0', 'apollo', '2018-12-10 09:14:04', NULL, '2018-12-10 09:14:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='集群';

-- ----------------------------
-- Records of Cluster
-- ----------------------------
BEGIN;
INSERT INTO `Cluster` VALUES (80, 'default', 'test1', 0, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57', 'DEV');
INSERT INTO `Cluster` VALUES (81, 'default', 'test1', 0, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57', 'TEST');
INSERT INTO `Cluster` VALUES (82, 'default', 'test1', 0, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57', 'PRE');
INSERT INTO `Cluster` VALUES (83, 'default', 'test1', 0, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57', 'PROD');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='commit 历史表';

-- ----------------------------
-- Records of Commit
-- ----------------------------
BEGIN;
INSERT INTO `Commit` VALUES (55, '{\"createItems\":[{\"namespaceId\":67,\"key\":\"11\",\"value\":\"11\",\"comment\":\"\",\"lineNum\":1,\"id\":0,\"isDeleted\":false}],\"updateItems\":[],\"deleteItems\":[],\"dataChangeLastModifiedBy\":\"apollo\"}', 'test1', 'default', 'application', NULL, b'0', 'apollo', '2018-12-10 09:13:21', 'apollo', '2018-12-10 09:13:21', 'DEV');
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
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='配置项目';

-- ----------------------------
-- Records of Item
-- ----------------------------
BEGIN;
INSERT INTO `Item` VALUES (285, 67, '11', '11', '', 1, b'0', 'apollo', '2018-12-10 09:13:21', 'apollo', '2018-12-10 09:13:21', 'DEV');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='命名空间';

-- ----------------------------
-- Records of Namespace
-- ----------------------------
BEGIN;
INSERT INTO `Namespace` VALUES (67, 'test1', 'default', 'application', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Namespace` VALUES (68, 'test1', 'default', 'TEST1.test22', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='permission表';

-- ----------------------------
-- Records of Permission
-- ----------------------------
BEGIN;
INSERT INTO `Permission` VALUES (559, 'CreateCluster', 'test1', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (560, 'CreateNamespace', 'test1', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (561, 'AssignRole', 'test1', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (562, 'ModifyNamespace', 'test1+application', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (563, 'ReleaseNamespace', 'test1+application', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (564, 'ModifyNamespace', 'test1+application+DEV', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (565, 'ReleaseNamespace', 'test1+application+DEV', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (566, 'ModifyNamespace', 'test1+application+TEST', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Permission` VALUES (567, 'ReleaseNamespace', 'test1+application+TEST', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Permission` VALUES (568, 'ModifyNamespace', 'test1+application+PRE', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Permission` VALUES (569, 'ReleaseNamespace', 'test1+application+PRE', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Permission` VALUES (570, 'ModifyNamespace', 'test1+application+PROD', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Permission` VALUES (571, 'ReleaseNamespace', 'test1+application+PROD', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Permission` VALUES (572, 'ModifyNamespace', 'test1+TEST1.test22', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (573, 'ReleaseNamespace', 'test1+TEST1.test22', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (574, 'ModifyNamespace', 'test1+TEST1.test22+DEV', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (575, 'ReleaseNamespace', 'test1+TEST1.test22+DEV', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (576, 'ModifyNamespace', 'test1+TEST1.test22+TEST', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (577, 'ReleaseNamespace', 'test1+TEST1.test22+TEST', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (578, 'ModifyNamespace', 'test1+TEST1.test22+PRE', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (579, 'ReleaseNamespace', 'test1+TEST1.test22+PRE', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (580, 'ModifyNamespace', 'test1+TEST1.test22+PROD', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Permission` VALUES (581, 'ReleaseNamespace', 'test1+TEST1.test22+PROD', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布';

-- ----------------------------
-- Records of Release
-- ----------------------------
BEGIN;
INSERT INTO `Release` VALUES (102, '20181210091323-bdad8e688ffc7c5c', '20181210091322-release', '', 'test1', 'default', 'application', '{\"11\":\"11\"}', b'0', b'0', 'apollo', '2018-12-10 09:13:24', 'apollo', '2018-12-10 09:13:24', 'DEV');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布历史';

-- ----------------------------
-- Records of ReleaseHistory
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseHistory` VALUES (1, 'test1', 'default', 'application', 'default', 102, 0, 0, '{\"isEmergencyPublish\":false}', b'0', 'apollo', '2018-12-10 09:13:24', 'apollo', '2018-12-10 09:13:24', 'DEV');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发布消息';

-- ----------------------------
-- Records of ReleaseMessage
-- ----------------------------
BEGIN;
INSERT INTO `ReleaseMessage` VALUES (51, 'test1+default+application', '2018-12-10 09:13:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';

-- ----------------------------
-- Records of Role
-- ----------------------------
BEGIN;
INSERT INTO `Role` VALUES (479, 'Master+test1', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Role` VALUES (480, 'ModifyNamespace+test1+application', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Role` VALUES (481, 'ReleaseNamespace+test1+application', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Role` VALUES (482, 'ModifyNamespace+test1+application+DEV', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Role` VALUES (483, 'ReleaseNamespace+test1+application+DEV', b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `Role` VALUES (484, 'ModifyNamespace+test1+application+TEST', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Role` VALUES (485, 'ReleaseNamespace+test1+application+TEST', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Role` VALUES (486, 'ModifyNamespace+test1+application+PRE', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Role` VALUES (487, 'ReleaseNamespace+test1+application+PRE', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Role` VALUES (488, 'ModifyNamespace+test1+application+PROD', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Role` VALUES (489, 'ReleaseNamespace+test1+application+PROD', b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `Role` VALUES (490, 'ModifyNamespace+test1+TEST1.test22', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (491, 'ReleaseNamespace+test1+TEST1.test22', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (492, 'ModifyNamespace+test1+TEST1.test22+DEV', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (493, 'ReleaseNamespace+test1+TEST1.test22+DEV', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (494, 'ModifyNamespace+test1+TEST1.test22+TEST', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (495, 'ReleaseNamespace+test1+TEST1.test22+TEST', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (496, 'ModifyNamespace+test1+TEST1.test22+PRE', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (497, 'ReleaseNamespace+test1+TEST1.test22+PRE', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (498, 'ModifyNamespace+test1+TEST1.test22+PROD', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `Role` VALUES (499, 'ReleaseNamespace+test1+TEST1.test22+PROD', b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和权限的绑定表';

-- ----------------------------
-- Records of RolePermission
-- ----------------------------
BEGIN;
INSERT INTO `RolePermission` VALUES (559, 479, 559, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (560, 479, 560, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (561, 479, 561, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (562, 480, 562, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (563, 481, 563, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (564, 482, 564, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (565, 483, 565, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `RolePermission` VALUES (566, 484, 566, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `RolePermission` VALUES (567, 485, 567, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `RolePermission` VALUES (568, 486, 568, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `RolePermission` VALUES (569, 487, 569, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `RolePermission` VALUES (570, 488, 570, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `RolePermission` VALUES (571, 489, 571, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `RolePermission` VALUES (572, 490, 572, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (573, 491, 573, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (574, 492, 574, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (575, 493, 575, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (576, 494, 576, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (577, 495, 577, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (578, 496, 578, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (579, 497, 579, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (580, 498, 580, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `RolePermission` VALUES (581, 499, 581, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和role的绑定表';

-- ----------------------------
-- Records of UserRole
-- ----------------------------
BEGIN;
INSERT INTO `UserRole` VALUES (153, 'apollo', 479, b'0', 'apollo', '2018-12-10 09:12:57', 'apollo', '2018-12-10 09:12:57');
INSERT INTO `UserRole` VALUES (154, 'apollo', 480, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `UserRole` VALUES (155, 'apollo', 481, b'0', 'apollo', '2018-12-10 09:12:58', 'apollo', '2018-12-10 09:12:58');
INSERT INTO `UserRole` VALUES (156, 'apollo', 490, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
INSERT INTO `UserRole` VALUES (157, 'apollo', 491, b'0', 'apollo', '2018-12-10 09:14:04', 'apollo', '2018-12-10 09:14:04');
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
INSERT INTO `Users` VALUES (1, 'apollo', '$2a$10$7r20uS.BQ9uBpf3Baj3uQOZvMVvB1RN3PYoKE94gtz2.WAOuiiwXS', '502238410@qq.com', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
