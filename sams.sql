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
INSERT INTO `course` VALUES ('2', 'java入门基础', '3', '60', '肖兴江', '2017-02-09');
INSERT INTO `course` VALUES ('3', '计算机组成原理', '3', '60', '胡继宽', '2017-02-09');
INSERT INTO `course` VALUES ('4', '信息检索', '2', '60', '郑蔚', '2017-02-09');
INSERT INTO `course` VALUES ('5', '操作系统原理', '4', '60', '丁华峰', '2018-03-15');
INSERT INTO `course` VALUES ('6', '管理信息系统', '4', '60', '杜治国', '2019-02-11');

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
INSERT INTO `score` VALUES ('2', '170340', '张三', '计科1701', 'C++程序设计教程', '85.00', '计算机');
INSERT INTO `score` VALUES ('3', '160341', '王五', '信管1601', 'java入门基础', '62.60', '信息管理与信息系统');
INSERT INTO `score` VALUES ('4', '160341', '王五', '信管1601', 'C++程序设计教程', '85.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('5', '170340', '张三', '计科1701', '计算机组成原理', '69.00', '计算机');
INSERT INTO `score` VALUES ('6', '170340', '张三', '计科1701', '信息检索', '95.00', '计算机');
INSERT INTO `score` VALUES ('7', '170340', '张三', '计科1701', '操作系统原理', '89.00', '计算机');
INSERT INTO `score` VALUES ('8', '160341', '王五', '计科1701', 'C++程序设计教程', '95.00', '计算机');
INSERT INTO `score` VALUES ('9', '160341', '王五', '信管1601', 'java入门基础', '92.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('10', '160341', '王五', '信管1601', '计算机组成原理', '83.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('11', '170339', '李四', '计科1701', 'java入门基础', '78.20', '计算机');
INSERT INTO `score` VALUES ('12', '170339', '李四', '计科1701', '信息检索', '98.00', '计算机');
INSERT INTO `score` VALUES ('13', '170339', '李四', '计科1701', '计算机组成原理', '76.00', '计算机');
INSERT INTO `score` VALUES ('14', '170339', '李四', '计科1701', '操作系统原理', '69.80', '计算机');
INSERT INTO `score` VALUES ('15', '170339', '李四', '计科1701', 'C++程序设计教程', '89.00', '计算机');
INSERT INTO `score` VALUES ('16', '170343', '陈留', '计科1701', 'java入门基础', '80.50', '计算机');
INSERT INTO `score` VALUES ('17', '170343', '陈留', '计科1701', '计算机组成原理', '83.50', '计算机');
INSERT INTO `score` VALUES ('18', '170343', '陈留', '计科1701', 'C++程序设计教程', '82.50', '计算机');
INSERT INTO `score` VALUES ('19', '170343', '陈留', '计科1701', '操作系统原理', '80.00', '计算机');
INSERT INTO `score` VALUES ('20', '160342', '盛祎琛', '信管1602', '信息检索', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('21', '160342', '盛祎琛', '信管1602', '操作系统原理', '85.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('22', '160342', '盛祎琛', '信管1602', '计算机组成原理', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('23', '160342', '盛祎琛', '信管1602', 'java入门基础', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('24', '160343', '闫玉平', '信管1601', '信息检索', '90.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('25', '160343', '闫玉平', '信管1601', '操作系统原理', '64.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('26', '160343', '闫玉平', '信管1601', '计算机组成原理', '63.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('27', '160343', '闫玉平', '信管1601', 'java入门基础', '70.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('28', '160344', '陈淑婷', '信管1601', '信息检索', '88.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('29', '160344', '陈淑婷', '信管1601', '操作系统原理', '77.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('30', '160344', '陈淑婷', '信管1601', '计算机组成原理', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('31', '160344', '陈淑婷', '信管1601', 'java入门基础', '88.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('32', '160345', '周梦琪', '信管1601', '信息检索', '95.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('33', '160345', '周梦琪', '信管1601', '计算机组成原理', '65.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('34', '160345', '周梦琪', '信管1601', 'java入门基础', '78.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('35', '160345', '周梦琪', '信管1601', '操作系统原理', '85.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('36', '160346', '曾智', '信管1601', '信息检索', '90.90', '信息管理与信息系统');
INSERT INTO `score` VALUES ('37', '160346', '曾智', '信管1601', '计算机组成原理', '98.90', '信息管理与信息系统');
INSERT INTO `score` VALUES ('38', '160346', '曾智', '信管1601', 'java入门基础', '60.90', '信息管理与信息系统');
INSERT INTO `score` VALUES ('39', '160346', '曾智', '信管1601', '操作系统原理', '70.90', '信息管理与信息系统');
INSERT INTO `score` VALUES ('40', '160347', '百鬼丸', '信管1601', '信息检索', '85.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('41', '160347', '百鬼丸', '信管1601', '操作系统原理', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('42', '160347', '百鬼丸', '信管1601', 'java入门基础', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('43', '160347', '百鬼丸', '信管1601', '计算机组成原理', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('44', '160348', '多罗罗', '信管1601', '信息检索', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('45', '160349', '伊藤健太郎', '信管1601', '信息检索', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('46', '160350', '贺来贤人', '信管1601', '信息检索', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('47', '160351', '服部平次', '信管1601', '信息检索', '88.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('48', '160352', '柯南', '信管1601', '信息检索', '99.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('49', '170353', '时崎狂三', '计科1601', 'java入门基础', '96.50', '计算机');
INSERT INTO `score` VALUES ('50', '170354', '坂本', '计科1601', 'java入门基础', '66.50', '计算机');
INSERT INTO `score` VALUES ('51', '170355', '夏瀚宇', '计科1601', 'java入门基础', '99.00', '计算机');
INSERT INTO `score` VALUES ('52', '170356', '管栎', '计科1602', 'java入门基础', '96.00', '计算机');
INSERT INTO `score` VALUES ('53', '170357', '连淮伟', '计科1602', 'java入门基础', '76.50', '计算机');
INSERT INTO `score` VALUES ('54', '170358', '杨芸晴', '计科1603', 'java入门基础', '69.00', '计算机');
INSERT INTO `score` VALUES ('55', '170359', '赖美云', '计科1603', 'java入门基础', '88.00', '计算机');
INSERT INTO `score` VALUES ('56', '170360', '灰二', '计科1603', 'java入门基础', '96.00', '计算机');
INSERT INTO `score` VALUES ('57', '160352', '潘思言', '信管1701', '信息检索', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('58', '160352', '杨皓鹏', '信管1701', '信息检索', '90.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('59', '160352', '王子', '信管1701', '信息检索', '93.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('60', '160352', '宫崎骏', '信管1801', '信息检索', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('61', '160352', '胡春阳', '信管1801', '信息检索', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('62', '160352', '阿云嘎', '信管1801', '信息检索', '78.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('63', '160352', '吴磊', '信管1703', '信息检索', '79.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('64', '160352', '魏大勋', '信管1703', '信息检索', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('65', '160352', '白敬亭', '信管1703', '信息检索', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('66', '160352', '铃屋十造', '信管1802', '信息检索', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('67', '160348', '多罗罗', '信管1601', 'java入门基础', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('68', '160349', '伊藤健太郎', '信管1601', 'java入门基础', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('69', '160350', '贺来贤人', '信管1601', 'java入门基础', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('70', '160351', '服部平次', '信管1601', 'java入门基础', '88.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('71', '160352', '柯南', '信管1601', 'java入门基础', '99.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('72', '170353', '时崎狂三', '计科1601', '操作系统原理', '96.50', '计算机');
INSERT INTO `score` VALUES ('73', '170354', '坂本', '计科1601', '操作系统原理', '66.50', '计算机');
INSERT INTO `score` VALUES ('74', '170355', '夏瀚宇', '计科1601', '操作系统原理', '99.00', '计算机');
INSERT INTO `score` VALUES ('75', '170356', '管栎', '计科1602', '操作系统原理', '96.00', '计算机');
INSERT INTO `score` VALUES ('76', '170357', '连淮伟', '计科1602', '操作系统原理', '76.50', '计算机');
INSERT INTO `score` VALUES ('77', '170358', '杨芸晴', '计科1603', '操作系统原理', '69.00', '计算机');
INSERT INTO `score` VALUES ('78', '170359', '赖美云', '计科1603', '操作系统原理', '88.00', '计算机');
INSERT INTO `score` VALUES ('79', '170360', '灰二', '计科1603', '操作系统原理', '96.00', '计算机');
INSERT INTO `score` VALUES ('80', '160352', '潘思言', '信管1701', 'java入门基础', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('81', '160352', '杨皓鹏', '信管1701', 'java入门基础', '90.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('82', '160352', '王子', '信管1701', 'java入门基础', '93.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('83', '160352', '宫崎骏', '信管1801', 'java入门基础', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('84', '160352', '胡春阳', '信管1801', 'java入门基础', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('85', '160352', '阿云嘎', '信管1801', 'java入门基础', '78.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('86', '160352', '吴磊', '信管1703', 'java入门基础', '79.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('87', '160352', '魏大勋', '信管1703', 'java入门基础', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('88', '160352', '白敬亭', '信管1703', 'java入门基础', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('89', '160352', '铃屋十造', '信管1802', 'java入门基础', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('90', '160348', '多罗罗', '信管1601', '计算机组成原理', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('91', '160349', '伊藤健太郎', '信管1601', '计算机组成原理', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('92', '160350', '贺来贤人', '信管1601', '计算机组成原理', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('93', '160351', '服部平次', '信管1601', '计算机组成原理', '88.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('94', '160352', '柯南', '信管1601', '计算机组成原理', '99.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('95', '170353', '时崎狂三', '计科1601', 'C++程序设计教程', '96.50', '计算机');
INSERT INTO `score` VALUES ('96', '170354', '坂本', '计科1601', 'C++程序设计教程', '66.50', '计算机');
INSERT INTO `score` VALUES ('97', '170355', '夏瀚宇', '计科1601', 'C++程序设计教程', '99.00', '计算机');
INSERT INTO `score` VALUES ('98', '170356', '管栎', '计科1602', 'C++程序设计教程', '96.00', '计算机');
INSERT INTO `score` VALUES ('99', '170357', '连淮伟', '计科1602', 'C++程序设计教程', '76.50', '计算机');
INSERT INTO `score` VALUES ('100', '170358', '杨芸晴', '计科1603', 'C++程序设计教程', '69.00', '计算机');
INSERT INTO `score` VALUES ('101', '170359', '赖美云', '计科1603', 'C++程序设计教程', '88.00', '计算机');
INSERT INTO `score` VALUES ('102', '170360', '灰二', '计科1603', 'C++程序设计教程', '96.00', '计算机');
INSERT INTO `score` VALUES ('103', '160352', '潘思言', '信管1701', '计算机组成原理', '95.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('104', '160352', '杨皓鹏', '信管1701', '计算机组成原理', '90.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('105', '160352', '王子', '信管1701', '计算机组成原理', '93.50', '信息管理与信息系统');
INSERT INTO `score` VALUES ('106', '160352', '宫崎骏', '信管1801', '计算机组成原理', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('107', '160352', '胡春阳', '信管1801', '计算机组成原理', '66.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('108', '160352', '阿云嘎', '信管1801', '计算机组成原理', '78.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('109', '160352', '吴磊', '信管1703', '计算机组成原理', '79.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('110', '160352', '魏大勋', '信管1703', '计算机组成原理', '65.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('111', '160352', '白敬亭', '信管1703', '计算机组成原理', '75.00', '信息管理与信息系统');
INSERT INTO `score` VALUES ('112', '160352', '铃屋十造', '信管1802', '计算机组成原理', '65.00', '信息管理与信息系统');

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
INSERT INTO `student` VALUES ('2', '170340', '张三', '男', '20', '计科1701', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('3', '170339', '李四', '男', '20', '计科1701', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('4', '170343', '陈留', '男', '21', '计科1701', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('5', '160342', '盛祎琛', '女', '19', '信管1602', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('6', '160343', '闫玉平', '女', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('7', '160344', '陈淑婷', '女', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('8', '160345', '周梦琪', '女', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('9', '160346', '曾智', '女', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('10', '160347', '百鬼丸', '男', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('11', '160348', '多罗罗', '男', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('12', '160349', '伊藤健太郎', '男', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('13', '160350', '贺来贤人', '男', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('14', '160351', '服部平次', '男', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('15', '160352', '柯南', '男', '20', '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('16', '170353', '时崎狂三', '女', '21', '计科1601', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('17', '170354', '坂本', '男', '21', '计科1601', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('18', '170355', '夏瀚宇', '男', '21', '计科1601', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('19', '170356', '管栎', '男', '21', '计科1602', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('20', '170357', '连淮伟', '男', '21', '计科1602', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('21', '170358', '杨芸晴', '女', '21', '计科1603', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('22', '170359', '赖美云', '女', '21', '计科1603', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('23', '170360', '灰二', '男', '21', '计科1603', '计算机', '商贸学院');
INSERT INTO `student` VALUES ('24', '160352', '潘思言', '男', '20', '信管1701', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('25', '160352', '杨皓鹏', '男', '20', '信管1701', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('26', '160352', '王子', '男', '20', '信管1701', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('27', '160352', '宫崎骏', '男', '20', '信管1801', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('28', '160352', '胡春阳', '男', '20', '信管1801', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('29', '160352', '阿云嘎', '男', '20', '信管1801', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('30', '160352', '吴磊', '男', '20', '信管1703', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('31', '160352', '魏大勋', '男', '20', '信管1703', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('32', '160352', '白敬亭', '男', '19', '信管1703', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES ('33', '160352', '铃屋十造', '男', '18', '信管1802', '信息管理与信息系统', '商贸学院');

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
INSERT INTO `teacher` VALUES ('2', '1124', '汪维清', '男', '25', 'C++程序设计教程', '计算机', '商贸学院');
INSERT INTO `teacher` VALUES ('3', '1125', '胡继宽', '男', '32', '计算机组成原理', '信息管理与信息系统', '商贸学院');
INSERT INTO `teacher` VALUES ('4', '1126', '郑蔚', '女', '34', '信息检索', '信息管理与信息系统', '商贸学院');
INSERT INTO `teacher` VALUES ('5', '1127', '丁华峰', '男', '40', '操作系统原理', '计算机', '商贸学院');
INSERT INTO `teacher` VALUES ('6', '1128', '杜治国', '男', '35', '管理信息系统', '信息管理与信息系统', '商贸学院');

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
INSERT INTO `user` VALUES ('2', '170340', '张三', '22', '15869483651', '0');
INSERT INTO `user` VALUES ('3', '170339', '李四', '33', '13589462584', '0');
INSERT INTO `user` VALUES ('6', '1123', '肖兴江', '11', '17418953551', '1');
INSERT INTO `user` VALUES ('7', '1124', '汪维清', '22', '15897683584', '1');
INSERT INTO `user` VALUES ('8', '170343', '陈留', '123456', '12457891862', '0');
INSERT INTO `user` VALUES ('9', '1125', '胡继宽', '1125', '12378945862', '1');
INSERT INTO `user` VALUES ('10', '1126', '郑蔚', '1126', '13589462584', '1');
INSERT INTO `user` VALUES ('11', '1', 'admin', '123', '18179586325', '2');
INSERT INTO `user` VALUES ('12', '1127', '丁华峰', '11', '16123598785', '1');
INSERT INTO `user` VALUES ('13', '1128', '杜治国', '11', '13158794456', '1');
INSERT INTO `user` VALUES ('14', '160344', '陈淑婷', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('15', '160345', '周梦琪', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('16', '160346', '曾智', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('17', '160347', '百鬼丸', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('18', '160348', '多罗罗', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('19', '160349', '伊藤健太郎', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('20', '160350', '贺来贤人', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('21', '170358', '杨芸晴', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('22', '170359', '赖美云', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('23', '170360', '灰二', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('24', '160352', '潘思言', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('25', '160352', '杨皓鹏', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('26', '160352', '王子', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('27', '160352', '宫崎骏', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('28', '160352', '胡春阳', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('29', '160352', '阿云嘎', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('30', '160352', '吴磊', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('31', '160352', '魏大勋', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('32', '160352', '白敬亭', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('33', '160352', '铃屋十造', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('34', '160351', '服部平次', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('35', '160352', '柯南', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('36', '170353', '时崎狂三', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('37', '170354', '坂本', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('38', '170355', '夏瀚宇', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('39', '170356', '管栎', '11', '14829726746', '0');
INSERT INTO `user` VALUES ('40', '170357', '连淮伟', '11', '14829726746', '0');
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
