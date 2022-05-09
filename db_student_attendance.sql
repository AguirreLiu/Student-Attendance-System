/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : db_student_attendance

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2022-05-09 15:56:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_banji`
-- ----------------------------
DROP TABLE IF EXISTS `t_banji`;
CREATE TABLE `t_banji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banjiname` varchar(255) DEFAULT NULL,
  `banjinum` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `yuanxi` varchar(255) DEFAULT NULL,
  `zhuanye` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_banji
-- ----------------------------
INSERT INTO `t_banji` VALUES ('1', '软件1102', 'ruanjian001', '2018-05-24 09:59:18', '计算机学院', '软件工程');
INSERT INTO `t_banji` VALUES ('2', '计算机1102', 'jisuanji001', '2018-05-24 09:59:44', '计算机学院', '计算机科学与技术');
INSERT INTO `t_banji` VALUES ('4', '信安1101', 'xinan001', '2018-05-24 10:01:32', '信息学院', '信息安全');
INSERT INTO `t_banji` VALUES ('5', '机械1101', 'jixie001', '2018-05-24 10:01:56', '机械学院', '机械设计');
INSERT INTO `t_banji` VALUES ('8', 'IT101', '10001', '2022-05-08 22:01:45', 'IT', 'IT1');
INSERT INTO `t_banji` VALUES ('9', 'Art01', '10002', '2022-05-09 04:42:04', 'Art', 'Ar1');
INSERT INTO `t_banji` VALUES ('10', 'Inf101', '10003', '2022-05-09 09:57:10', 'Information', 'Inf1');
INSERT INTO `t_banji` VALUES ('11', '123', '123', '2022-05-09 15:27:15', '123', '123');

-- ----------------------------
-- Table structure for `t_kaoqinlog`
-- ----------------------------
DROP TABLE IF EXISTS `t_kaoqinlog`;
CREATE TABLE `t_kaoqinlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banjinum` varchar(255) DEFAULT NULL,
  `codenum` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `iskuangke` int(11) NOT NULL,
  `kechengname` varchar(255) DEFAULT NULL,
  `kuangkenum` int(11) NOT NULL,
  `riqi` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kaoqinlog
-- ----------------------------
INSERT INTO `t_kaoqinlog` VALUES ('1', 'ruanjian001', '张三', '2018-05-24 13:58:02', '1', '计算机理论', '1', '2018-05-24', '张老师');
INSERT INTO `t_kaoqinlog` VALUES ('2', 'ruanjian001', '张三', '2018-05-24 13:58:35', '1', '大学数学', '1', '2018-05-24', '张老师');
INSERT INTO `t_kaoqinlog` VALUES ('4', 'jisuanji001', '李四', '2018-05-24 14:16:48', '1', '马克思', '1', '2018-05-17', '李老师');
INSERT INTO `t_kaoqinlog` VALUES ('5', 'jisuanji001', '李四', '2018-05-24 14:17:25', '1', '计算机理论', '3', '2018-05-19', '李老师');
INSERT INTO `t_kaoqinlog` VALUES ('7', 'jisuanji001', '王麻子', '2018-05-24 15:00:59', '1', '大学英语', '1', '2018-05-11', '李老师');
INSERT INTO `t_kaoqinlog` VALUES ('8', '10001', 'James', '2022-05-09 10:07:33', '0', 'Academic English', '1', '2022-05-11', 'zz');
INSERT INTO `t_kaoqinlog` VALUES ('9', '10001', 'James', '2022-05-09 12:44:07', '1', 'AI', '1', '2022-05-09', 'Teacherzhang');

-- ----------------------------
-- Table structure for `t_kecheng`
-- ----------------------------
DROP TABLE IF EXISTS `t_kecheng`;
CREATE TABLE `t_kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banji` varchar(255) DEFAULT NULL,
  `banjinum` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `kechenglock` int(11) NOT NULL,
  `kechengname1` varchar(255) DEFAULT NULL,
  `kechengname2` varchar(255) DEFAULT NULL,
  `kechengname3` varchar(255) DEFAULT NULL,
  `kechengname4` varchar(255) DEFAULT NULL,
  `kechengname5` varchar(255) DEFAULT NULL,
  `kechengname6` varchar(255) DEFAULT NULL,
  `kechengname7` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kecheng
-- ----------------------------
INSERT INTO `t_kecheng` VALUES ('1', null, 'ruanjian001', '2018-05-24 10:11:05', '1', '大学英语', '大学数学', '计算机理论', 'Java', '汇编', '', '');
INSERT INTO `t_kecheng` VALUES ('3', null, 'ruanjian001', '2018-05-24 10:12:47', '2', 'Music', 'IT', 'Academi English', 'AI', 'Math', '', '');
INSERT INTO `t_kecheng` VALUES ('4', null, 'jisuanji001', '2018-05-24 11:12:30', '3', '大学数学', '大学英语', '计算机', '马克思', '物理', 'it', 'it');
INSERT INTO `t_kecheng` VALUES ('5', null, '10001', '2022-05-09 10:00:48', '4', 'IT', 'Math', 'Art', 'Music', 'Swimming', '', '');
INSERT INTO `t_kecheng` VALUES ('6', null, '10003', '2022-05-09 10:04:02', '5', 'test', 'test', 'test', 'test', 'test', 'test', 'test');
INSERT INTO `t_kecheng` VALUES ('7', null, '10002', '2022-05-09 10:04:48', '6', '123', '123', '123', '123', '123', '123', '');
INSERT INTO `t_kecheng` VALUES ('8', null, '10001', '2022-05-09 12:49:44', '8', 'IT', '', 'Art', 'AI', '', '', '');

-- ----------------------------
-- Table structure for `t_qingjiadan`
-- ----------------------------
DROP TABLE IF EXISTS `t_qingjiadan`;
CREATE TABLE `t_qingjiadan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banjinum` varchar(255) DEFAULT NULL,
  `codenum` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `qjtime1` varchar(255) DEFAULT NULL,
  `qjtime2` varchar(255) DEFAULT NULL,
  `shenhe` varchar(255) DEFAULT NULL,
  `shenhecontent` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_qingjiadan
-- ----------------------------
INSERT INTO `t_qingjiadan` VALUES ('7', 'ruanjian001', '张三', '2018-05-24 14:33:19', '2018-05-09 14:33:12', '2018-05-10 14:33:15', '不通过', '胆子太大了，一直请假！', '张三');
INSERT INTO `t_qingjiadan` VALUES ('8', 'ruanjian001', '张三', '2018-05-24 14:33:40', '2018-05-16 00:00:00', '2018-05-26 14:33:37', '通过', '可以', '张三');
INSERT INTO `t_qingjiadan` VALUES ('9', 'jisuanji001', '李四', '2018-05-24 14:58:12', '2018-05-11 14:58:06', '2018-05-19 00:00:00', '通过', '同意', '李四');
INSERT INTO `t_qingjiadan` VALUES ('10', 'jisuanji001', '王麻子', '2018-05-24 15:00:05', '2018-05-17 14:59:59', '2018-05-25 15:00:03', '不通过', '好好学习', '王麻子');
INSERT INTO `t_qingjiadan` VALUES ('11', 'ruanjian001', '张三', '2022-05-07 17:49:57', '2022-05-14 17:49:51', '2022-05-21 17:49:55', '审核中', null, '张三');
INSERT INTO `t_qingjiadan` VALUES ('12', 'ruanjian001', '张三', '2022-05-08 16:38:03', '2022-05-08 16:37:57', '2022-05-08 16:38:00', '审核中', null, '张三');
INSERT INTO `t_qingjiadan` VALUES ('13', 'ruanjian001', null, '2022-05-08 16:50:24', '2022-05-02 00:00:00', '2022-05-20 16:50:22', 'Under Review', null, '张老师');
INSERT INTO `t_qingjiadan` VALUES ('14', '10002', 'Lily', '2022-05-09 04:43:24', '2022-05-11 04:43:17', '2022-05-18 04:43:21', 'Under Review', null, 'Lily');
INSERT INTO `t_qingjiadan` VALUES ('15', '10002', 'Lily', '2022-05-09 04:43:38', '2022-05-03 04:43:35', '2022-05-26 00:00:00', 'Under Review', null, 'Lily');
INSERT INTO `t_qingjiadan` VALUES ('16', '10001', null, '2022-05-09 10:08:10', '2022-05-11 00:00:00', '2022-05-19 10:08:07', 'Approved', 'you can leave from this lecture', 'James');
INSERT INTO `t_qingjiadan` VALUES ('17', '10001', 'James', '2022-05-09 12:57:38', '2022-05-10 00:00:00', '2022-05-05 00:00:00', 'Disapproved', 'qwe', 'James');
INSERT INTO `t_qingjiadan` VALUES ('18', '10001', null, '2022-05-09 15:43:50', '2022-05-10 15:43:47', '2022-05-12 15:43:48', 'Under Review', null, '1');

-- ----------------------------
-- Table structure for `t_subject`
-- ----------------------------
DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime DEFAULT NULL,
  `subjectname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_subject
-- ----------------------------
INSERT INTO `t_subject` VALUES ('1', '2018-05-24 10:03:01', '计算机理论');
INSERT INTO `t_subject` VALUES ('2', '2018-05-24 10:03:17', '大学数学');
INSERT INTO `t_subject` VALUES ('3', '2018-05-24 10:03:25', '大学英语');
INSERT INTO `t_subject` VALUES ('5', '2018-05-24 10:37:19', '概率论');
INSERT INTO `t_subject` VALUES ('6', '2018-05-24 10:37:25', '马克思');
INSERT INTO `t_subject` VALUES ('7', '2018-05-24 10:37:50', 'AI');
INSERT INTO `t_subject` VALUES ('8', '2018-05-24 10:38:00', '原子弹');
INSERT INTO `t_subject` VALUES ('9', '2022-05-08 22:01:56', 'IT');
INSERT INTO `t_subject` VALUES ('10', '2022-05-09 04:00:04', 'Academic English');
INSERT INTO `t_subject` VALUES ('11', '2022-05-09 04:42:21', 'Classic Art');
INSERT INTO `t_subject` VALUES ('12', '2022-05-09 09:55:37', 'Music');
INSERT INTO `t_subject` VALUES ('13', '2022-05-09 09:55:53', 'Football');
INSERT INTO `t_subject` VALUES ('14', '2022-05-09 09:56:00', 'Swimming');
INSERT INTO `t_subject` VALUES ('15', '2022-05-09 09:56:21', 'Math');
INSERT INTO `t_subject` VALUES ('16', '2022-05-09 10:01:19', 'Computer');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `banjinum` varchar(255) DEFAULT NULL,
  `codenum` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `userlock` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '', null, 'admin', null, '21232f297a57a5a743894a0e4a801fc3', '', '0', '', '0', 'admin');
INSERT INTO `t_user` VALUES ('7', '123', 'ruanjian001', '张老师', '2018-05-24 11:06:44', '14e1b600b1fd579f47433b88e8d85291', '13565656888', '3', '123', '0', '张老师');
INSERT INTO `t_user` VALUES ('8', '韩国首尔', 'jisuanji001', '李老师', '2018-05-24 11:07:04', 'e10adc3949ba59abbe56e057f20f883e', '18888888888', '3', '33宿舍', '0', '李老师');
INSERT INTO `t_user` VALUES ('9', '北京三里屯', 'ruanjian001', '张三', '2018-05-24 11:07:46', 'e10adc3949ba59abbe56e057f20f883e', '13656565666', '4', '3宿舍', '0', '张三');
INSERT INTO `t_user` VALUES ('10', '上海市浦东新区幻林东路', '10003', '李四', '2018-05-24 14:51:18', '14e1b600b1fd579f47433b88e8d85291', '13565656888', '4', '我问问', '0', '李四');
INSERT INTO `t_user` VALUES ('11', '上海市浦东新区幻林东路', '10001', '王麻子', '2018-05-24 14:59:41', 'c4ca4238a0b923820dcc509a6f75849b', '13565656888', '4', '的', '0', '王麻子');
INSERT INTO `t_user` VALUES ('12', '111', '10001', '王五', '2022-05-07 22:48:10', 'c56d0e9a7ccec67b4ea131655038d604', '1111', '4', '1111', '0', '王五');
INSERT INTO `t_user` VALUES ('13', '123', '10001', 'James', '2022-05-08 22:02:44', 'e10adc3949ba59abbe56e057f20f883e', '123', '4', '123', '0', 'James');
INSERT INTO `t_user` VALUES ('14', '123', '10002', 'Lily', '2022-05-09 04:42:55', 'e10adc3949ba59abbe56e057f20f883e', '123', '4', '123qwe', '0', 'Lily');
INSERT INTO `t_user` VALUES ('15', '132', '10001', 'Teacherzhang', '2022-05-09 10:06:33', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', '3', '123', '0', 'Teacherzhang');
INSERT INTO `t_user` VALUES ('16', '123', '10001', '123', '2022-05-09 15:28:03', '202cb962ac59075b964b07152d234b70', '123', '0', '123', '0', '123');
