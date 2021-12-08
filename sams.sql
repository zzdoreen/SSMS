/*
Navicat MySQL Data Transfer

Source Server         : sams
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : sams

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-26 11:15:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `course_name` varchar(20) NOT NULL COMMENT '课程名',
  `course_credit` int(11) NOT NULL COMMENT '学分',
  `course_hours` int(11) NOT NULL COMMENT '学时',
  `course_teacher` varchar(30) NOT NULL COMMENT '任课教师',
  `coursedate` date NOT NULL COMMENT '开课时间',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'C++程序设计教程', '3', '60', '汪维清', '2017-03-02');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `role_info` varchar(50) NOT NULL COMMENT '角色信息',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0', '学生', '学生查看成绩');
INSERT INTO `role` VALUES ('1', '教师', '教师操作');
INSERT INTO `role` VALUES ('2', '管理员', '管理员操作');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩编号',
  `stu_num` varchar(20) NOT NULL COMMENT '学号',
  `stu_name` varchar(30) NOT NULL COMMENT '姓名',
  `stu_class` varchar(20) NOT NULL COMMENT '班级',
  `course_name` varchar(20) NOT NULL COMMENT '科目',
  `score_grade` double(11,2) NOT NULL COMMENT '成绩',
  `major` varchar(20) NOT NULL COMMENT '专业',
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '170340', '张三', '计科1701', 'java入门基础', '96.50', '计算机');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stu_num` varchar(20) NOT NULL COMMENT '账号',
  `stu_name` varchar(30) NOT NULL COMMENT '姓名',
  `stu_sex` varchar(10) NOT NULL COMMENT '性别',
  `stu_age` int(11) NOT NULL COMMENT '年龄',
  `stu_class` varchar(20) NOT NULL COMMENT '班级',
  `major` varchar(20) NOT NULL COMMENT '专业',
  `department` varchar(20) NOT NULL COMMENT '院系',
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '160341', '王五', '女', '21', '信管1601', '信息管理与信息系统', '商贸学院');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tea_num` varchar(20) NOT NULL COMMENT '工号',
  `tea_name` varchar(30) NOT NULL COMMENT '姓名',
  `tea_sex` varchar(10) NOT NULL COMMENT '性别',
  `tea_age` int(11) NOT NULL COMMENT '年龄',
  `tea_course` varchar(20) NOT NULL COMMENT '所任课程',
  `major` varchar(20) NOT NULL COMMENT '专业',
  `department` varchar(20) NOT NULL COMMENT '院系',
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '1123', '肖兴江', '男', '30', 'java入门基础', '计算机', '商贸学院');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_num` varchar(20) NOT NULL COMMENT '用户账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `phone` varchar(20) NOT NULL COMMENT '用户电话',
  `role_id` int(11) NOT NULL COMMENT '角色编号（外键）',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '160341', '王五', '11', '14829726746', '0');
DELIMITER ;;
CREATE TRIGGER `stuLogin` AFTER DELETE ON `student` FOR EACH ROW begin 
delete from user where user_num=old.stu_num;
end
;;
DELIMITER ;
DELIMITER ;;
CREATE TRIGGER `teaLogin` AFTER DELETE ON `teacher` FOR EACH ROW begin
delete from user where user_num=old.tea_num;
end
;;
DELIMITER ;
