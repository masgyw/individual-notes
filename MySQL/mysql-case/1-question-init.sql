/*
Navicat MySQL Data Transfer

Source Server         : mysql_5.7.19-win
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : interview

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-04-26 11:03:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` varchar(20) NOT NULL,
  `c_name` varchar(20) NOT NULL DEFAULT '',
  `t_id` varchar(20) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('01', '语文', '02');
INSERT INTO `course` VALUES ('02', '数学', '01');
INSERT INTO `course` VALUES ('03', '英语', '03');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `s_id` varchar(20) NOT NULL,
  `c_id` varchar(20) NOT NULL,
  `s_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`s_id`,`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('01', '01', '80');
INSERT INTO `score` VALUES ('01', '02', '90');
INSERT INTO `score` VALUES ('01', '03', '99');
INSERT INTO `score` VALUES ('02', '01', '70');
INSERT INTO `score` VALUES ('02', '02', '60');
INSERT INTO `score` VALUES ('02', '03', '80');
INSERT INTO `score` VALUES ('03', '01', '80');
INSERT INTO `score` VALUES ('03', '02', '80');
INSERT INTO `score` VALUES ('03', '03', '80');
INSERT INTO `score` VALUES ('04', '01', '50');
INSERT INTO `score` VALUES ('04', '02', '30');
INSERT INTO `score` VALUES ('04', '03', '20');
INSERT INTO `score` VALUES ('05', '01', '76');
INSERT INTO `score` VALUES ('05', '02', '87');
INSERT INTO `score` VALUES ('06', '01', '31');
INSERT INTO `score` VALUES ('06', '03', '34');
INSERT INTO `score` VALUES ('07', '02', '89');
INSERT INTO `score` VALUES ('07', '03', '98');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` varchar(20) NOT NULL,
  `s_name` varchar(20) NOT NULL DEFAULT '',
  `s_birth` varchar(20) NOT NULL DEFAULT '',
  `s_sex` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('01', '赵雷', '1990-01-01', '男');
INSERT INTO `student` VALUES ('02', '钱电', '1990-12-21', '男');
INSERT INTO `student` VALUES ('03', '孙风', '1990-05-20', '男');
INSERT INTO `student` VALUES ('04', '李云', '1990-08-06', '男');
INSERT INTO `student` VALUES ('05', '周梅', '1991-12-01', '女');
INSERT INTO `student` VALUES ('06', '吴兰', '1992-03-01', '女');
INSERT INTO `student` VALUES ('07', '郑竹', '1989-07-01', '女');
INSERT INTO `student` VALUES ('08', '王菊', '1990-01-20', '女');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` varchar(20) NOT NULL,
  `t_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('01', '张三');
INSERT INTO `teacher` VALUES ('02', '李四');
INSERT INTO `teacher` VALUES ('03', '王五');
