/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : zxyab_sbr_data

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-09-10 09:23:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sbr_dept_info
-- ----------------------------
DROP TABLE IF EXISTS `sbr_dept_info`;
CREATE TABLE `sbr_dept_info` (
  `dept_id` varchar(36) NOT NULL,
  `school_id` varchar(36) NOT NULL,
  `dept_name` varchar(36) NOT NULL,
  `class_room` varchar(64) DEFAULT NULL,
  `dept_info` text,
  `dept_org_type` varchar(16) NOT NULL,
  `is_active` varchar(1) NOT NULL,
  `dept_status` varchar(10) DEFAULT NULL,
  `dept_status_time` varchar(19) DEFAULT NULL,
  `create_time` varchar(19) NOT NULL,
  `creator` varchar(64) NOT NULL,
  `modify_time` varchar(19) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `grade_name` varchar(36) DEFAULT NULL COMMENT '0：大班 1：中班 2：小班 3:小小班   毕业班的原年级名称',
  `grade_id` varchar(36) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sbr_dept_info
-- ----------------------------
INSERT INTO `sbr_dept_info` VALUES ('mzycuccw', 'S95a4ba663aff4f', '初一（1）班', '', '', 'class', 'Y', '', '', '2018-10-18 15:34:19', '13539730451(b6dff32b-e03e-4055-b83f-7bb9e6bcb89b)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('mzycwogd', 'f2csl77omp10ioj', '初一（2）班', '', '', 'class', 'Y', '', '', '2018-10-18 15:34:25', '13539730451(b6dff32b-e03e-4055-b83f-7bb9e6bcb89b)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('mzyctrsr', 'f2csl77omp10ioj', '初一（3）班', '', '', 'class', 'Y', '', '', '2018-10-18 15:34:25', '13539730451(b6dff32b-e03e-4055-b83f-7bb9e6bcb89b)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ghpmjsun', 'S95a4ba663aff4f', '二年级1班', '教A-303', '问问', 'class', 'Y', '', '', '2018-10-16 10:48:48', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '', '', '', '1', 'ghpm');
INSERT INTO `sbr_dept_info` VALUES ('eaooozbx', 'S95a4ba663aff4f', '舞蹈班', '101', '11', 'interest', 'Y', '', '', '2018-05-30 15:50:37', '13539730451(b6dff32b-e03e-4055-b83f-7bb9e6bcb89b)', '', '', '', '1', 'eaoo');
INSERT INTO `sbr_dept_info` VALUES ('dohnxpsl', 'S95a4ba663aff4f', '美术班', '501', '好好学习，天天向上', 'interest', 'Y', '', '', '2018-05-24 10:00:18', '13660340227(99ca66d3-5e95-43af-826d-a1410ff71312)', '', '', '', '2', '');
INSERT INTO `sbr_dept_info` VALUES ('rpscyqvc', 'sxj6x0pgv8q8p4r', '男生宿舍311', '', '', 'class', 'Y', '', '', '2018-12-12 10:05:59', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsaqmt', 'sxj6x0pgv8q8p4r', '女生宿舍110', '', '', 'class', 'Y', '', '', '2018-12-12 10:06:19', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('rpscfsqm', 'sxj6x0pgv8q8p4r', '男生宿舍3-1', '', '', 'class', 'Y', '', '', '2018-12-12 10:06:36', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('rpscducd', 'sxj6x0pgv8q8p4r', '男生宿舍3-2', '', '', 'class', 'Y', '', '', '2018-12-12 10:06:54', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('rpschelr', 'sxj6x0pgv8q8p4r', '男生宿舍4-111', '', '', 'class', 'Y', '', '', '2018-12-12 10:07:39', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsccui', 'sxj6x0pgv8q8p4r', '女生宿舍二楼混合宿舍', '', '', 'class', 'Y', '', '', '2018-12-12 10:09:03', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('rpscqjbw', 'sxj6x0pgv8q8p4r', '男生宿舍4-201', '', '', 'class', 'Y', '', '', '2018-12-12 10:10:03', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('rpscvpoe', 'sxj6x0pgv8q8p4r', '男生宿舍4-203', '', '', 'class', 'Y', '', '', '2018-12-12 10:10:29', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsegvl', 'sxj6x0pgv8q8p4r', '女生宿舍202', '', '', 'class', 'Y', '', '', '2018-12-12 10:10:56', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '2018-12-12 10:24:31', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('rpscragr', 'sxj6x0pgv8q8p4r', '男生宿舍大宿舍', '', '', 'class', 'Y', '', '', '2018-12-12 10:11:12', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '2018-12-12 15:21:58', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqssiti', 'sxj6x0pgv8q8p4r', '女生宿舍203', '', '', 'class', 'Y', '', '', '2018-12-12 10:11:14', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsdnzs', 'sxj6x0pgv8q8p4r', '女生宿舍204', '', '', 'class', 'Y', '', '', '2018-12-12 10:11:35', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsjrds', 'sxj6x0pgv8q8p4r', '女生宿舍205', '', '', 'class', 'Y', '', '', '2018-12-12 10:12:02', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsyozw', 'sxj6x0pgv8q8p4r', '女生宿舍206', '', '', 'class', 'Y', '', '', '2018-12-12 10:12:19', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqswnmr', 'sxj6x0pgv8q8p4r', '女生宿舍207', '', '', 'class', 'Y', '', '', '2018-12-12 10:12:41', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '2018-12-12 10:12:56', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsopyp', 'sxj6x0pgv8q8p4r', '女生宿舍208', '', '', 'class', 'Y', '', '', '2018-12-12 10:13:17', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsdlhx', 'sxj6x0pgv8q8p4r', '女生宿舍209', '', '', 'class', 'Y', '', '', '2018-12-12 10:13:35', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqszrmh', 'sxj6x0pgv8q8p4r', '女生宿舍302', '', '', 'class', 'Y', '', '', '2018-12-12 10:14:56', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsytzu', 'sxj6x0pgv8q8p4r', '女生宿舍303', '', '', 'class', 'Y', '', '', '2018-12-12 10:15:14', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsilec', 'sxj6x0pgv8q8p4r', '女生宿舍304', '', '', 'class', 'Y', '', '', '2018-12-12 10:15:32', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqskime', 'sxj6x0pgv8q8p4r', '女生宿舍305', '', '', 'class', 'Y', '', '', '2018-12-12 10:15:49', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsmvfq', 'sxj6x0pgv8q8p4r', '女生宿舍306', '', '', 'class', 'Y', '', '', '2018-12-12 10:16:05', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsgzod', 'sxj6x0pgv8q8p4r', '女生宿舍307', '', '', 'class', 'Y', '', '', '2018-12-12 10:16:21', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('asdadad', 'S95a4ba663aff4f', '女生宿舍308', '', '', 'class', 'Y', '', '', '2018-12-12 10:16:44', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsjder', 'sxj6x0pgv8q8p4r', '女生宿舍309', '', '', 'class', 'Y', '', '', '2018-12-12 10:17:03', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqspfnk', 'sxj6x0pgv8q8p4r', '女生宿舍310', '', '', 'class', 'Y', '', '', '2018-12-12 10:17:22', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsijgg', 'sxj6x0pgv8q8p4r', '女生宿舍311', '', '', 'class', 'Y', '', '', '2018-12-12 10:17:43', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqscudh', 'sxj6x0pgv8q8p4r', '女生宿舍3-1', '', '', 'class', 'Y', '', '', '2018-12-12 10:19:46', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('ipqsgrqa', 'sxj6x0pgv8q8p4r', '女生宿舍3-2', '', '', 'class', 'Y', '', '', '2018-12-12 10:20:07', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '', '', '', null, '');
INSERT INTO `sbr_dept_info` VALUES ('9396', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '大班', null, null, 'grade', 'Y', null, null, '2019-02-18 18:10:09', '253388876', '2019-02-18 18:10:09', '253388876', null, '0', '9396');
INSERT INTO `sbr_dept_info` VALUES ('551a', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '中班', null, null, 'grade', 'Y', null, null, '2019-02-18 18:10:23', '253388876', '2019-02-18 18:10:23', '253388876', null, '1', '551a');
INSERT INTO `sbr_dept_info` VALUES ('4f34', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '小班', null, null, 'grade', 'Y', null, null, '2019-02-18 18:10:32', '253388876', '2019-02-18 18:10:32', '253388876', null, '2', '4f34');
INSERT INTO `sbr_dept_info` VALUES ('4f347c22', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '小班1班', '101', null, 'class', 'Y', null, null, '2019-02-18 18:11:09', '253388876', '2019-02-18 18:11:24', '253388876', null, '2', '4f34');
INSERT INTO `sbr_dept_info` VALUES ('9461', '65dea210-3462-4763-bff0-707675e7e5d2', '大班', null, null, 'grade', 'Y', null, null, '2019-02-13 13:49:20', '253388876', '2019-02-13 13:49:20', '253388876', null, '0', '9461');
INSERT INTO `sbr_dept_info` VALUES ('d736', '65dea210-3462-4763-bff0-707675e7e5d2', '中班', null, null, 'grade', 'Y', null, null, '2019-02-13 13:49:39', '253388876', '2019-02-13 13:49:39', '253388876', null, '1', 'd736');
INSERT INTO `sbr_dept_info` VALUES ('94617ac5', '65dea210-3462-4763-bff0-707675e7e5d2', '大班1班（2019毕业班）', '1', null, 'class', 'Y', 'down', null, '2019-02-13 15:16:06', '253388876', '2019-02-21 20:52:02', '253388876', null, '0', '9461');
INSERT INTO `sbr_dept_info` VALUES ('ghprjsun', '3d65rit9681l2y9', '二年级1班', '教A-303', '问问', 'class', 'Y', '', '', '2018-10-16 10:48:48', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '', '', '', '1', 'ghpr');
INSERT INTO `sbr_dept_info` VALUES ('9461a2b7', '65dea210-3462-4763-bff0-707675e7e5d2', '大班2班（2019毕业班）', '2', null, 'class', 'Y', 'down', null, '2019-02-13 15:21:14', '253388876', '2019-02-21 20:52:02', '253388876', null, '0', '9461');
INSERT INTO `sbr_dept_info` VALUES ('d736b320', '65dea210-3462-4763-bff0-707675e7e5d2', '中班1班', '3', null, 'class', 'Y', null, null, '2019-02-13 15:21:34', '253388876', '2019-02-13 15:21:34', '253388876', null, '1', 'd736');
INSERT INTO `sbr_dept_info` VALUES ('ghpmjsun2', 'S95a4ba663aff4f', '二年级2班', '教A-303', '问问', 'class', 'Y', '', '', '2018-10-16 10:48:48', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '', '', '', '1', 'ghpm');
INSERT INTO `sbr_dept_info` VALUES ('7fe2', '65dea210-3462-4763-bff0-707675e7e5d2', '小班', null, null, 'grade', 'Y', null, null, '2019-02-13 13:56:55', '253388876', '2019-02-13 13:56:55', '253388876', null, '2', '7fe2');
INSERT INTO `sbr_dept_info` VALUES ('0a77', '65dea210-3462-4763-bff0-707675e7e5d2', '小小班', null, null, 'grade', 'Y', null, null, '2019-02-13 14:11:15', '253388876', '2019-02-13 14:11:15', '253388876', null, '3', '0a77');
INSERT INTO `sbr_dept_info` VALUES ('eaoorzbx', '25yiunvy54idt1n', '舞蹈班', '101', '11', 'class', 'Y', '', '', '2018-05-30 15:50:37', '13539730451(b6dff32b-e03e-4055-b83f-7bb9e6bcb89b)', '', '', '', '1', 'eaoo');
INSERT INTO `sbr_dept_info` VALUES ('551a9406', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '中班1班', '102', null, 'class', 'Y', null, null, '2019-02-18 18:11:42', '253388876', '2019-02-18 18:11:42', '253388876', null, '1', '551a');
INSERT INTO `sbr_dept_info` VALUES ('d7365cf8', '65dea210-3462-4763-bff0-707675e7e5d2', '中班2班', '4', null, 'class', 'Y', null, null, '2019-02-13 15:21:54', '253388876', '2019-02-13 15:21:54', '253388876', null, '1', 'd736');
INSERT INTO `sbr_dept_info` VALUES ('7fe268ce', '65dea210-3462-4763-bff0-707675e7e5d2', '小班1班', '5', null, 'class', 'Y', null, null, '2019-02-13 15:22:19', '253388876', '2019-02-13 15:22:19', '253388876', null, '2', '7fe2');
INSERT INTO `sbr_dept_info` VALUES ('7fe20c2a', '65dea210-3462-4763-bff0-707675e7e5d2', '小班2班', '6', null, 'class', 'Y', null, null, '2019-02-13 15:22:43', '253388876', '2019-02-13 15:22:43', '253388876', null, '2', '7fe2');
INSERT INTO `sbr_dept_info` VALUES ('0a7736c7', '65dea210-3462-4763-bff0-707675e7e5d2', '小小班1班', '7', null, 'class', 'Y', null, null, '2019-02-13 15:23:06', '253388876', '2019-02-13 15:23:06', '253388876', null, '3', '0a77');
INSERT INTO `sbr_dept_info` VALUES ('0a77ced5', '65dea210-3462-4763-bff0-707675e7e5d2', '小小班2班', '8', null, 'class', 'Y', null, null, '2019-02-13 15:23:33', '253388876', '2019-02-13 15:23:33', '253388876', null, '3', '0a77');
INSERT INTO `sbr_dept_info` VALUES ('9396580d', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '大班1班', '103', null, 'class', 'Y', null, null, '2019-02-18 18:11:57', '253388876', '2019-02-18 18:11:57', '253388876', null, '0', '9396');
INSERT INTO `sbr_dept_info` VALUES ('9396048f', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', 'zgy发书专属班都别动', '988', null, 'class', 'Y', null, null, '2019-02-19 17:00:17', '253388876', '2019-02-19 17:00:17', '253388876', null, '0', '9396');
INSERT INTO `sbr_dept_info` VALUES ('4b78', '5be41511-3951-40a2-83aa-11c251660451', '幼儿', null, null, 'grade', 'Y', null, null, '2019-02-20 16:52:27', '253388876', '2019-02-20 16:52:27', '253388876', null, '2', '4b78');
INSERT INTO `sbr_dept_info` VALUES ('4b78e0a9', '5be41511-3951-40a2-83aa-11c251660451', '苹果班', '032', null, 'class', 'Y', null, null, '2019-02-20 16:52:51', '253388876', '2019-02-20 16:56:12', '253388876', null, '2', '4b78');
INSERT INTO `sbr_dept_info` VALUES ('4b78c6b6', '5be41511-3951-40a2-83aa-11c251660451', '香蕉班', '031', null, 'class', 'Y', null, null, '2019-02-20 16:56:50', '253388876', '2019-02-20 16:56:50', '253388876', null, '2', '4b78');
INSERT INTO `sbr_dept_info` VALUES ('5cfe', '5a37a6c4-be87-4b31-9346-d474607aa14e', '小班', null, null, 'grade', 'Y', null, null, '2019-02-22 14:46:57', '253388876', '2019-02-24 15:53:51', '253388876', null, '2', '5cfe');
INSERT INTO `sbr_dept_info` VALUES ('4b78d260', '5be41511-3951-40a2-83aa-11c251660451', '橘子班', '1', null, 'class', 'Y', null, null, '2019-02-22 22:47:32', '253388876', '2019-02-22 22:47:32', '253388876', null, '2', '4b78');
INSERT INTO `sbr_dept_info` VALUES ('8f60241e', '1aa4b258-1a8f-4945-be8d-99d52ed873e7', '小班2班', '102', null, 'class', 'Y', null, null, '2019-02-25 17:05:21', '253388876', '2019-02-25 17:05:21', '253388876', null, '2', '4f34');
INSERT INTO `sbr_dept_info` VALUES ('33e2', 'c5a8bce1-99e6-4', '大班苹果', null, null, 'grade', 'Y', null, null, '2019-03-08 11:55:55', '253388876', '2019-03-08 11:55:55', '253388876', null, '0', '33e2');
INSERT INTO `sbr_dept_info` VALUES ('8dd8', '5a37a6c4-be87-4b31-9346-d474607aa14e', '中班', null, null, 'grade', 'Y', null, null, '2019-03-02 23:15:41', '253388876', '2019-03-02 23:15:41', '253388876', null, '1', '8dd8');
INSERT INTO `sbr_dept_info` VALUES ('24fe5e2e', '5a37a6c4-be87-4b31-9346-d474607aa14e', '茄子班', '1', null, 'class', 'Y', 'up', '2019-03-02 23:45:19', '2019-03-02 23:39:34', '253388876', '2019-03-02 23:45:19', '253388876', null, '1', '5cfe');
INSERT INTO `sbr_dept_info` VALUES ('a7a7', 'c5a8bce1-99e6-4', '中苹果', null, null, 'grade', 'N', null, null, '2019-03-03 11:17:48', '253388876', '2019-03-06 18:12:04', '253388876', null, '1', 'a7a7');
INSERT INTO `sbr_dept_info` VALUES ('69d095e1', 'c5a8bce1-99e6-4', '中班苹果一班', '123', '口号测试', 'class', 'Y', 'up', '2019-03-06 06:36:23', '2019-03-03 11:30:16', '253388876', '2019-03-08 11:44:01', '253388876', null, '1', 'a7a7');
INSERT INTO `sbr_dept_info` VALUES ('79be', 'c5a8bce1-99e6-4', '小班苹果', null, null, 'grade', 'Y', null, null, '2019-03-08 11:57:33', '253388876', '2019-03-09 14:14:48', '253388876', null, '2', '79be');
INSERT INTO `sbr_dept_info` VALUES ('afd31635', 'c5a8bce1-99e6-4', '大班苹果一班', '111', '', 'class', 'Y', null, null, '2019-03-03 11:34:02', '253388876', '2019-03-09 12:53:53', '253388876', null, '0', '33e2');
INSERT INTO `sbr_dept_info` VALUES ('2d50', 'c5a8bce1-99e6-4', '小班苹果2', null, null, 'grade', 'N', null, null, '2019-03-08 11:58:04', '253388876', '2019-03-08 11:58:04', '253388876', null, '2', '2d50');
INSERT INTO `sbr_dept_info` VALUES ('d95e', 'c5a8bce1-99e6-4', '测试新增', null, null, 'grade', 'N', null, null, '2019-03-09 13:15:43', '253388876', '2019-03-09 13:19:23', '253388876', null, '0', 'd95e');

-- ----------------------------
-- Table structure for sbr_school_info
-- ----------------------------
DROP TABLE IF EXISTS `sbr_school_info`;
CREATE TABLE `sbr_school_info` (
  `school_id` varchar(36) NOT NULL,
  `school_name` varchar(64) NOT NULL,
  `school_database_id` int(11) NOT NULL,
  `school_db_name` varchar(64) NOT NULL,
  `entity_type` varchar(16) NOT NULL,
  `expire_date` varchar(10) DEFAULT NULL,
  `school_intro` text,
  `province_id` varchar(36) NOT NULL,
  `city_id` varchar(36) NOT NULL,
  `area_id` varchar(36) NOT NULL,
  `school_place` varchar(64) NOT NULL,
  `school_type` varchar(16) DEFAULT NULL,
  `school_logo` varchar(255) DEFAULT NULL,
  `school_homepage` varchar(255) DEFAULT NULL,
  `contact_person` varchar(36) NOT NULL,
  `contact_phone` varchar(36) NOT NULL,
  `user_uid` varchar(36) NOT NULL,
  `wx_mp_uid` varchar(36) NOT NULL,
  `ex_info_01` varchar(64) DEFAULT NULL,
  `ex_info_02` varchar(64) DEFAULT NULL,
  `ex_info_03` varchar(64) DEFAULT NULL,
  `ex_info_04` varchar(64) DEFAULT NULL,
  `create_time` varchar(19) NOT NULL,
  `creator` varchar(64) NOT NULL,
  `modify_time` varchar(19) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sbr_school_info
-- ----------------------------
INSERT INTO `sbr_school_info` VALUES ('25yiunvy54idt1n', 'zgy测试学校1', '1001', 'zxyab_school_data_1000', 'test', '', '大家好', '791', '797', 'are_1162', '测试地址详情', 'primary', '', '', '联系人1', '15989774098', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-05-30 11:03:37', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:54:40', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('S95a4ba663aff4f', '年华科技大学附中', '1002', 'zxyab_school_data_1000', 'test', '', '', '200', '200', 'are_1751', '测试地址', 'senior', 'http://media1.youanbao.com.cn/media/default/platform/20180607/20180607112151_184141.jpg', 'https://www.youanbao.com.cn', '测试人', '15989774099', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-05-30 11:30:58', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:53:38', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('3d65rit9681l2y9', '冠品信中学', '1003', 'zxyab_school_data_1000', 'cancel', '', '', '200', '200', 'are_1755', '23', 'junior', 'http://media1.youanbao.com.cn/media/default/platform/20180607/20180607112151_184141.jpg', '', '罗工', '18973862306', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-01 11:45:05', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:53:55', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('hcanee2ylibuw8x', 'zgy测试学校2', '1004', 'zxyab_school_data_1000', 'test', '', '555', '100', '100', 'are_1', '222', 'primary', 'http://media1.youanbao.com.cn/media/default/platform/20180601/20180601144554_542814.png', '2', '张光源', '13533683795', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-01 14:45:58', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:54:31', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('80y3pz39dl6wg23', '测试学校1Update', '1005', 'zxyab_school_data_1000', 'show', '2018-06-14', '<p>	<span style=\"font-size:18px;color:#E56600;\"><strong>测试学校简介。Update</strong></span></p><p>	<span style=\"font-size:18px;color:#E56600;\"><strong><strong><u>测试学校简介。Update</u></strong><u></u><br></strong></span></p>', '210', '210', 'are_720', '测试地址Update', 'junior', '', 'https://www.youanbao.com.cn', '联系人2', '15989774094', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-05 15:21:58', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:52:32', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('otaoweu8wfix1d3', '测试学校2', '1006', 'zxyab_school_data_1000', 'show', '2018-06-05', '<p>	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;color:#00D5FF;\"><strong><em><u>测试学校简介1</u></em></strong></span></p><p style=\"text-align:center;\">	<span style=\"font-size:24px;\">测试学校简介2</span></p>', '230', '230', 'are_2003', '测试地址2', 'primary', 'https://media5.youanbao.com.cn/media/default/platform/20181024/20181024164720_929735.jpg', 'https://www.baidu.com', '联系人3', '15989774093', '23128c68-931b-410d-832e-096a3cc08669', 'chaoxiaotongkly', '', '', '', '', '2018-06-05 15:56:05', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-24 16:47:22', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('bnvfj3ayohwind1', '高谷实验学校', '1007', 'zxyab_school_data_1000', 'test', '2018-12-20', '', '200', '200', 'are_1755', '01', 'junior', 'http://media1.youanbao.com.cn/media/default/platform/20180607/20180607113359_785866.jpg', '', '高谷', '18998066890', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-07 11:34:16', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:52:01', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('tuivcj4hdeoxqwf', '测试学校0615', '1008', 'zxyab_school_data_1000', 'test', '2018-07-07', '多大的', '100', '100', 'are_1', '333', 'primary', 'https://media4.youanbao.com.cn/media/default/platform/20180824/20180824163751_510699.png', '', '张光源1', '13533683795', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-15 18:15:23', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:52:48', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('1aa4b258-1a8f-4945-be8d-99d52ed873e7', '硕石幼儿园', '0', 'zxyab_school_data_1000', 'real', '2099-12-31', null, '791', '791', 'are_1128', '硕石', 'kindergarten', null, 'http://www.shuobaotiandi.com/', '罗小燕', '18170860241', '84a67d5f-28b5-4811-8fd2-e84d3e562d3e', 'mp_shuobao_parent', null, null, null, null, '2019-02-18 18:09:06', '253388876', '2019-03-03 14:48:45', 'd50bbe41-33e0-11e9-9f18-00163e044243', null);
INSERT INTO `sbr_school_info` VALUES ('5lismtjo7vtc2fx', '冠品信实验中学', '1010', 'zxyab_school_data_1000', 'test', '2018-12-26', '', '200', '200', 'are_1755', '02', 'senior', 'https://media4.youanbao.com.cn/media/default/platform/20180628/20180628085127_033565.jpg', '', '罗工', '18973862306', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-28 08:51:30', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:53:45', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('3xlriqy02rvookv', '洛隆县马利镇第一小学', '1011', 'zxyab_school_data_1000', 'real', '2026-06-16', '', '891', '895', 'are_2455', '西藏昌都市洛隆县马利镇', 'primary', 'https://media4.youanbao.com.cn/media/default/platform/20180702/20180702102217_981134.png', '', '杨鑫', '18989950879', 'bda62268-3769-421e-a802-ebddf718c116', 'chaoxiaotongkly', '', '', '', '', '2018-06-29 20:39:02', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:53:22', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('c5a8bce1-99e6-4', '测试幼儿园', '0', 'zxyab_school_data_1000', 'test', null, '测试幼儿园', '791', '791', 'are_1130', '学府大道', 'kindergarten', null, null, '测试联系人', '15797805704', '84a67d5f-28b5-4811-8fd2-e84d3e562d3e', 'mp_shuobao_parent', null, null, null, null, '2019-03-03 11:03:00', '253388876', '2019-03-03 11:03:36', '253388876', null);
INSERT INTO `sbr_school_info` VALUES ('a03f175a-0070-4', '联调幼儿园11', '1017', 'zxyab_school_data_1000', 'real', null, '联调幼儿园11', '791', '791', 'are_2922', '硕石', 'kindergarten', null, 'www.12306.com', '阿达萨达', '18702513822', '84a67d5f-28b5-4811-8fd2-e84d3e562d3e', 'mp_shuobao_parent', null, null, null, null, '2019-03-06 14:21:52', '253388876', '2019-03-06 14:21:52', '253388876', null);
INSERT INTO `sbr_school_info` VALUES ('5az35dypafixasw', '新华云学校', '1014', 'zxyab_school_data_1000', 'real', '', '', '791', '791', 'are_1125', '龙式大厦C座213', 'primary', 'https://media4.youanbao.com.cn/media/default/platform/20180813/20180813142357_547572.png', '', '罗小燕', '18170860241', '23128c68-931b-410d-832e-096a3cc08669', 'chaoxiaotongkly', '', '', '', '', '2018-08-06 14:24:01', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '2018-10-16 13:53:29', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('u57z0iomynxnao5', '兴义市第一中学', '1015', 'zxyab_school_data_1000', 'real', '2018-10-31', '', '851', '859', 'are_2265', '兴义一中', 'senior', '', '', '黄利君', '13985959754', '1578ebfd-6aba-4c5f-9787-ed383b3f3318', 'chaoxiaotongkly', '', '', '', '', '2018-08-14 18:16:11', 'yuyh(1578ebfd-6aba-4c5f-9787-ed383b3f3318)', '2018-10-16 13:54:02', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('5k83bqx6etomls5', '兴义市昌文小学', '1016', 'zxyab_school_data_1000', 'real', '2019-10-06', '', '851', '859', 'are_2265', '兴义市昌文小学', 'primary', '', '', '辛刚国', '18748889893', '1578ebfd-6aba-4c5f-9787-ed383b3f3318', 'chaoxiaotongkly', '', '', '', '', '2018-09-06 15:35:05', 'yuyh(1578ebfd-6aba-4c5f-9787-ed383b3f3318)', '2018-10-16 13:54:10', 'admin(9983fbe8-1d4a-486a-89cc-276cdc902166)', '新增学校信息');
INSERT INTO `sbr_school_info` VALUES ('65dea210-3462-4763-bff0-707675e7e5d2', '硕果阅享', '0', 'zxyab_school_data_1000', 'test', '', '硕果阅享', '791', '791', 'are_2922', '测试地址', 'kindergarten', null, null, '测试人', '13111111111', '9983fbe8-1d4a-486a-89cc-276cdc902166', 'mp_shuobao_teacher', null, null, null, null, '2019-02-13 13:34:14', '253388876', '2019-02-13 13:43:49', '253388876', null);
INSERT INTO `sbr_school_info` VALUES ('S95a4ba663aff5f', '智慧幼儿园', '0', 'zxyab_school_data_1000', 'real', '', '智慧幼儿园', '791', '791', 'are_2922', '智慧幼儿园', 'kindergarten', '', '', '庞枚', '15969492313', '84a67d5f-28b5-4811-8fd2-e84d3e562d3e', 'mp_shuobao_parent', '', '', '', '', '2018-11-20 17:16:33', '13985109880(cb1262ca-2814-43f8-b6b7-40406d8aa31a)', '2019-03-04 01:27:13', '253388876', '编辑学校信息');
INSERT INTO `sbr_school_info` VALUES ('92678bb5-1a3d-4', '联调幼儿园', '0', 'zxyab_school_data_1000', 'real', '2099-12-31', '联调测试', '791', '791', 'are_1128', '学府大道东', 'kindergarten', null, 'http://www.shuobaotiandi.com/', '徐南屏', '18702513822', '84a67d5f-28b5-4811-8fd2-e84d3e562d3e', 'mp_shuobao_parent', null, null, null, null, '2019-03-04 15:09:21', '253388876', '2019-03-04 15:11:14', '253388876', null);
INSERT INTO `sbr_school_info` VALUES ('5be41511-3951-40a2-83aa-11c251660451', '测试园', '0', 'zxyab_school_data_1000', 'real', null, '测试园', '200', '200', 'are_1751', '天河路52号', 'kindergarten', null, null, '冯嘉仪', '15521300897', '9983fbe8-1d4a-486a-89cc-276cdc902166', 'mp_shuobao_teacher', null, null, null, null, '2019-02-20 16:51:27', '253388876', '2019-02-20 17:41:16', '253388876', null);
INSERT INTO `sbr_school_info` VALUES ('5a37a6c4-be87-4b31-9346-d474607aa14e', '测试11', '0', 'zxyab_school_data_1000', 'real', null, '测试11', '200', '200', 'are_1748', '11', 'primary', null, 'https://www.baidu.com', 'lss', '13320188430', '9983fbe8-1d4a-486a-89cc-276cdc902166', 'mp_shuobao_parent', null, null, null, null, '2019-02-20 17:14:34', '253388876', '2019-02-22 20:49:38', '253388876', null);
