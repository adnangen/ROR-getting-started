/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : rubydb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-09-14 16:08:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
`key`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`value`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
PRIMARY KEY (`key`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
BEGIN;
INSERT INTO `ar_internal_metadata` VALUES ('environment', 'development', '2017-09-12 13:10:54', '2017-09-12 13:10:54');
COMMIT;

-- ----------------------------
-- Table structure for blazer_audits
-- ----------------------------
DROP TABLE IF EXISTS `blazer_audits`;
CREATE TABLE `blazer_audits` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`user_id`  bigint(20) NULL DEFAULT NULL ,
`query_id`  bigint(20) NULL DEFAULT NULL ,
`statement`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`data_source`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`created_at`  timestamp NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `index_blazer_audits_on_user_id` (`user_id`) USING BTREE ,
INDEX `index_blazer_audits_on_query_id` (`query_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of blazer_audits
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for blazer_checks
-- ----------------------------
DROP TABLE IF EXISTS `blazer_checks`;
CREATE TABLE `blazer_checks` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`creator_id`  bigint(20) NULL DEFAULT NULL ,
`query_id`  bigint(20) NULL DEFAULT NULL ,
`state`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`schedule`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`emails`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`check_type`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`message`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`last_run_at`  timestamp NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
PRIMARY KEY (`id`),
INDEX `index_blazer_checks_on_creator_id` (`creator_id`) USING BTREE ,
INDEX `index_blazer_checks_on_query_id` (`query_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of blazer_checks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for blazer_dashboard_queries
-- ----------------------------
DROP TABLE IF EXISTS `blazer_dashboard_queries`;
CREATE TABLE `blazer_dashboard_queries` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`dashboard_id`  bigint(20) NULL DEFAULT NULL ,
`query_id`  bigint(20) NULL DEFAULT NULL ,
`position`  int(11) NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
PRIMARY KEY (`id`),
INDEX `index_blazer_dashboard_queries_on_dashboard_id` (`dashboard_id`) USING BTREE ,
INDEX `index_blazer_dashboard_queries_on_query_id` (`query_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of blazer_dashboard_queries
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for blazer_dashboards
-- ----------------------------
DROP TABLE IF EXISTS `blazer_dashboards`;
CREATE TABLE `blazer_dashboards` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`creator_id`  bigint(20) NULL DEFAULT NULL ,
`name`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
PRIMARY KEY (`id`),
INDEX `index_blazer_dashboards_on_creator_id` (`creator_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of blazer_dashboards
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for blazer_queries
-- ----------------------------
DROP TABLE IF EXISTS `blazer_queries`;
CREATE TABLE `blazer_queries` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`creator_id`  bigint(20) NULL DEFAULT NULL ,
`name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`description`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`statement`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`data_source`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
PRIMARY KEY (`id`),
INDEX `index_blazer_queries_on_creator_id` (`creator_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of blazer_queries
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`role`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`status`  tinyint(1) NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'user', '1', '2017-09-13 08:17:14', '2017-09-13 08:17:14'), ('2', 'tutor', '1', '2017-09-13 08:17:24', '2017-09-13 08:17:24');
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
`version`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`version`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations` VALUES ('20170912131025'), ('20170913063721'), ('20170913075415'), ('20170913080921'), ('20170913081500'), ('20170913084258'), ('20170913105541'), ('20170913112534'), ('20170914095800');
COMMIT;

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`title`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`author`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`language`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`comments`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
`userid`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of subjects
-- ----------------------------
BEGIN;
INSERT INTO `subjects` VALUES ('1', 'test sub', 'adi', 'en', 'test com', '2017-09-13 06:46:22', '2017-09-13 06:46:22', '1'), ('2', 'DB migration', 'adi', 'en', 'no com', '2017-09-13 08:46:05', '2017-09-13 08:46:05', '1');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`password_digest`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`created_at`  datetime NOT NULL ,
`updated_at`  datetime NOT NULL ,
`lastname`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`role`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`image_file_name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`image_content_type`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`image_file_size`  int(11) NULL DEFAULT NULL ,
`image_updated_at`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'adnan', '$2a$10$hNXVkX7QDYhjJIp/6MkaROTy/O./WPzwoWN8hp6BsjWtHrMdnsKPO', '2017-09-12 13:48:12', '2017-09-13 13:16:24', 'ln', '2', 'download.jpg', 'image/jpeg', '7573', '2017-09-13 13:16:24'), ('2', 'test', '$2a$10$Em0Vna0sanecVxIAgQ8lQOdPKQgIT5G3MGLao4AfCuz3fisydcSLy', '2017-09-12 14:04:07', '2017-09-12 14:04:07', 'ln', '1', null, null, null, null), ('3', 'user', '$2a$10$G/DMTVXscci55zEqt45c3.MTy8quR0jsBogjwcbSTmFG/JxVjJ15K', '2017-09-12 14:15:20', '2017-09-12 14:15:20', 'ln', '1', null, null, null, null), ('4', 'new user 1', '$2a$10$eJoq28m25EpuMthAjuReP.U0/A2mhMGD4VbulUMazp4UF.7NhVp9e', '2017-09-13 08:25:00', '2017-09-13 08:25:00', 'ln', '2', null, null, null, null), ('5', 'adfs', '$2a$10$myteGi/P16RyZotdrDyz/uJuZHkwIUPsTCFr3kQgFb8kt6m4pXldS', '2017-09-13 08:30:51', '2017-09-13 08:30:51', 'ln', '2', null, null, null, null), ('6', '234', '$2a$10$AEUWXY2PLMowNQgq/PcoGu9uowvli2NbDFnCn2wmKu3mBIEcU4Z..', '2017-09-13 08:38:25', '2017-09-13 08:38:25', 'adsf234', '1', null, null, null, null);
COMMIT;

-- ----------------------------
-- Auto increment value for blazer_audits
-- ----------------------------
ALTER TABLE `blazer_audits` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for blazer_checks
-- ----------------------------
ALTER TABLE `blazer_checks` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for blazer_dashboard_queries
-- ----------------------------
ALTER TABLE `blazer_dashboard_queries` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for blazer_dashboards
-- ----------------------------
ALTER TABLE `blazer_dashboards` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for blazer_queries
-- ----------------------------
ALTER TABLE `blazer_queries` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for roles
-- ----------------------------
ALTER TABLE `roles` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for subjects
-- ----------------------------
ALTER TABLE `subjects` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for users
-- ----------------------------
ALTER TABLE `users` AUTO_INCREMENT=7;
