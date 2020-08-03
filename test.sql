/*
Navicat MySQL Data Transfer

Source Server         : aa
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2019-06-02 20:57:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '123456');

-- ----------------------------
-- Table structure for checkresult
-- ----------------------------
DROP TABLE IF EXISTS `checkresult`;
CREATE TABLE `checkresult` (
  `bc` varchar(255) DEFAULT NULL,
  `lf` varchar(255) DEFAULT NULL,
  `ft` varchar(255) DEFAULT NULL,
  `td` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkresult
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `student_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `final_grades` int(5) DEFAULT NULL,
  `comprehensive_assessment` int(5) DEFAULT NULL,
  `competition_add` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `activity_add` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `cadres_add` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `picture_prove` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_flag` int(2) DEFAULT NULL,
  `admin_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class` (`student_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1740128000', '张三', '8000', '信工2班', '10', '87', '0', '0', '0', null, '1', '1');
INSERT INTO `student` VALUES ('1740128001', '李四', '8001', '信工2班', '17', '56', '0', '0', '0', null, '0', '1');
INSERT INTO `student` VALUES ('1740128002', '王五', '8002', '信工6班', '85', '87', '0', '0', '0', null, '1', '1');
INSERT INTO `student` VALUES ('1740128003', '赵六', '8003', '信工6班', '86', '45', '0', '0', '0', null, '1', '1');
INSERT INTO `student` VALUES ('1740128004', '王小二', '8004', '信工6班', '86', '56', '12', '20', '60', null, '0', '0');
INSERT INTO `student` VALUES ('1740128005', '田小七', '8005', '信工6班', '35', '76', '60', '80', '80', null, '0', '0');
INSERT INTO `student` VALUES ('1740128006', '陈小八', '8006', '信工6班', '88', '87', '0', '0', '0', null, '0', '0');
INSERT INTO `student` VALUES ('1740128208', '江广源', '8208', '信工2班', '85', '78', '80', '55', '54', null, '0', '0');
INSERT INTO `student` VALUES ('1740128221', '杨党裕', '8221', '信工2班', '95', '94', '90', '90', '90', null, '1', '1');
INSERT INTO `student` VALUES ('1740128223', '黄杰焕', '8223', '信工2班', '85', '56', '0', '0', '0', null, '0', '0');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_key` (`student_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1183', '1183', '邹立杰', '信工6班');
INSERT INTO `teacher` VALUES ('1459', '1459', '王红勤', '信工2班');

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `username` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user1
-- ----------------------------
INSERT INTO `user1` VALUES ('1740128000', '8000', 'student');
INSERT INTO `user1` VALUES ('1740128001', '8001', 'student');
INSERT INTO `user1` VALUES ('1740128002', '8002', 'student');
INSERT INTO `user1` VALUES ('1740128003', '8003', 'student');
INSERT INTO `user1` VALUES ('1740128004', '8004', 'student');
INSERT INTO `user1` VALUES ('1740128005', '8005', 'student');
INSERT INTO `user1` VALUES ('1740128006', '8006', 'student');
INSERT INTO `user1` VALUES ('1740128208', '8208', 'student');
INSERT INTO `user1` VALUES ('1740128221', '8221', 'student');
INSERT INTO `user1` VALUES ('1740128223', '8223', 'student');
INSERT INTO `user1` VALUES ('1183', '1183', 'teacher');
INSERT INTO `user1` VALUES ('1459', '1459', 'teacher');
