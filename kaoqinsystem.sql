/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : kaoqinsystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-20 21:57:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classinfo`
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo` (
  `classID` varchar(6) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `tID` char(6) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `classcap` int(4) NOT NULL,
  PRIMARY KEY (`classID`),
  UNIQUE KEY `uni_cname` (`cname`) USING BTREE,
  KEY `fk_tID` (`tID`),
  KEY `fk_tname` (`tname`),
  CONSTRAINT `fk_tID` FOREIGN KEY (`tID`) REFERENCES `teacher` (`tID`),
  CONSTRAINT `fk_tname` FOREIGN KEY (`tname`) REFERENCES `teacher` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classinfo
-- ----------------------------
INSERT INTO `classinfo` VALUES ('1', '计算1班', '1', '张丽', '49');
INSERT INTO `classinfo` VALUES ('10', '数学2班', '2', '林世平', '78');
INSERT INTO `classinfo` VALUES ('11', '数学3班', '5', '吴恩达', '89');
INSERT INTO `classinfo` VALUES ('12', '运筹学', '10', '宜章', '102');
INSERT INTO `classinfo` VALUES ('2', '计算2班', '12', '池老标', '90');
INSERT INTO `classinfo` VALUES ('3', '计算3班', '11', '张爽', '89');
INSERT INTO `classinfo` VALUES ('4', '计算机技术', '3', '李刚', '45');
INSERT INTO `classinfo` VALUES ('5', '计算机应用技术', '4', '周志华', '65');
INSERT INTO `classinfo` VALUES ('6', '软件工程', '6', '张导', '45');
INSERT INTO `classinfo` VALUES ('7', '计算机体系结构', '8', '库里', '64');
INSERT INTO `classinfo` VALUES ('8', '数学1班', '9', '张继科', '67');
INSERT INTO `classinfo` VALUES ('9', '应用数学', '7', '李莉', '74');

-- ----------------------------
-- Table structure for `kaoqin`
-- ----------------------------
DROP TABLE IF EXISTS `kaoqin`;
CREATE TABLE `kaoqin` (
  `kID` varchar(6) NOT NULL,
  `ctime` date NOT NULL,
  `sID` char(9) NOT NULL,
  `sname` varchar(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `avalue` int(1) NOT NULL,
  `caddress` int(1) NOT NULL,
  PRIMARY KEY (`kID`),
  KEY `fk_skID` (`sID`),
  KEY `fk_skname` (`sname`),
  KEY `fk_skcname` (`cname`),
  KEY `fk_skcadress` (`caddress`),
  CONSTRAINT `fk_skID` FOREIGN KEY (`sID`) REFERENCES `student` (`sID`),
  CONSTRAINT `fk_skcadress` FOREIGN KEY (`caddress`) REFERENCES `timeschedule` (`caddress`),
  CONSTRAINT `fk_skcname` FOREIGN KEY (`cname`) REFERENCES `classinfo` (`cname`),
  CONSTRAINT `fk_skname` FOREIGN KEY (`sname`) REFERENCES `student` (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoqin
-- ----------------------------
INSERT INTO `kaoqin` VALUES ('170301', '2017-03-29', '1603010', '郭坤', '计算1班', '1', '1');
INSERT INTO `kaoqin` VALUES ('170302', '2017-03-29', '1603010', '李浩', '计算1班', '2', '1');
INSERT INTO `kaoqin` VALUES ('170303', '2017-03-29', '1603010', '张三', '计算1班', '1', '2');
INSERT INTO `kaoqin` VALUES ('170304', '2017-03-29', '1603010', '郭坤', '计算1班', '1', '1');
INSERT INTO `kaoqin` VALUES ('170305', '2017-04-29', '1603010', '李浩', '计算1班', '2', '1');
INSERT INTO `kaoqin` VALUES ('170306', '2017-05-29', '1603010', '张三', '计算1班', '1', '2');
INSERT INTO `kaoqin` VALUES ('170307', '2017-04-06', '1603010', '郭坤', '计算1班', '1', '1');
INSERT INTO `kaoqin` VALUES ('170308', '2017-03-29', '1603010', '李浩', '计算1班', '2', '1');
INSERT INTO `kaoqin` VALUES ('170309', '2017-04-26', '1603010', '张三', '计算1班', '1', '2');
INSERT INTO `kaoqin` VALUES ('170310', '2017-03-19', '1603010', '郭坤', '计算1班', '1', '1');

-- ----------------------------
-- Table structure for `leaveby`
-- ----------------------------
DROP TABLE IF EXISTS `leaveby`;
CREATE TABLE `leaveby` (
  `vid` varchar(6) NOT NULL,
  `vtime` date NOT NULL,
  `sID` char(9) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `vreason` text NOT NULL,
  PRIMARY KEY (`vid`),
  KEY `fk_sID` (`sID`),
  KEY `fk_cname` (`cname`),
  CONSTRAINT `fk_cname` FOREIGN KEY (`cname`) REFERENCES `classinfo` (`cname`),
  CONSTRAINT `fk_sID` FOREIGN KEY (`sID`) REFERENCES `student` (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveby
-- ----------------------------
INSERT INTO `leaveby` VALUES ('00001', '2011-02-28', '1603010', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('000010', '2011-02-28', '160308', '计算2班', '病假');
INSERT INTO `leaveby` VALUES ('00002', '2011-02-28', '160302', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('00003', '2011-02-28', '160303', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('00004', '2011-02-28', '160304', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('000045', '2011-02-28', '1603012', '计算3班', '病假');
INSERT INTO `leaveby` VALUES ('00005', '2011-02-28', '160305', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('00006', '2011-02-28', '160306', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('000068', '2011-02-28', '1603089', '计算3班', '病假');
INSERT INTO `leaveby` VALUES ('00007', '2011-02-28', '160307', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('00008', '2011-02-28', '160309', '计算1班', '病假');
INSERT INTO `leaveby` VALUES ('00009', '2011-02-28', '1603011', '计算2班', '病假');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sID` varchar(9) NOT NULL,
  `sname` varchar(10) NOT NULL,
  `ssex` char(1) NOT NULL,
  `phone` char(11) NOT NULL,
  `school` varchar(20) NOT NULL,
  `classID` varchar(6) NOT NULL,
  PRIMARY KEY (`sID`),
  UNIQUE KEY `uni_sname` (`sname`) USING BTREE,
  KEY `fk_classID` (`classID`),
  CONSTRAINT `fk_classID` FOREIGN KEY (`classID`) REFERENCES `classinfo` (`classID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1603010', '郭坤', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('1603011', '国辉', '男', '16355941126', '北京大学', '2');
INSERT INTO `student` VALUES ('1603012', '李珍妹', '男', '16355941126', '福州大学', '3');
INSERT INTO `student` VALUES ('1603013', '李茂', '男', '16355941126', '福州大学', '4');
INSERT INTO `student` VALUES ('1603014', '周觅', '男', '16355941126', '福州大学', '5');
INSERT INTO `student` VALUES ('1603015', '凌潇肃', '男', '16355941126', '福州大学', '6');
INSERT INTO `student` VALUES ('1603016', '武艺', '男', '16355941126', '福州大学', '7');
INSERT INTO `student` VALUES ('1603017', '杨俊毅', '男', '16355941126', '福州大学', '8');
INSERT INTO `student` VALUES ('1603018', '耿乐', '男', '16355941126', '福州大学', '9');
INSERT INTO `student` VALUES ('1603019', '钱泳辰', '男', '16355941126', '福州大学', '10');
INSERT INTO `student` VALUES ('160302', '李浩', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('1603020', '撒贝', '男', '16355941126', '福州大学', '11');
INSERT INTO `student` VALUES ('1603021', '徐峥', '男', '16355941126', '福州大学', '12');
INSERT INTO `student` VALUES ('1603022', '于波', '男', '16355941126', '福州大学', '4');
INSERT INTO `student` VALUES ('1603023', '高昊', '男', '16355941126', '福州大学', '5');
INSERT INTO `student` VALUES ('1603024', '李连杰', '男', '16355941126', '福州大学', '6');
INSERT INTO `student` VALUES ('1603025', '王斑', '男', '16355941126', '福州大学', '7');
INSERT INTO `student` VALUES ('1603026', '蓝雨', '男', '16355941126', '福州大学', '8');
INSERT INTO `student` VALUES ('1603027', '刘恩佑', '男', '16355941126', '福州大学', '9');
INSERT INTO `student` VALUES ('1603028', '刘冠翔', '男', '16355941126', '福州大学', '10');
INSERT INTO `student` VALUES ('1603029', '邓安奇', '男', '16355941126', '福州大学', '11');
INSERT INTO `student` VALUES ('160303', '张三', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('1603030', '印小天', '男', '16355941126', '福州大学', '12');
INSERT INTO `student` VALUES ('160304', '成发玉', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('160305', '程波领', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('160306', '张群', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('160307', '恩浩', '男', '16355941126', '北京大学', '1');
INSERT INTO `student` VALUES ('160308', '李磊', '男', '16355941126', '北京大学', '2');
INSERT INTO `student` VALUES ('1603089', '李学庆', '男', '16355941126', '福州大学', '3');
INSERT INTO `student` VALUES ('160309', '韩梅梅', '男', '16355941126', '北京大学', '1');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tID` varchar(6) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tsex` char(1) NOT NULL,
  `tclass` char(20) NOT NULL,
  PRIMARY KEY (`tID`),
  UNIQUE KEY `uni_tname` (`tname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张丽', '男', '数据库');
INSERT INTO `teacher` VALUES ('10', '宜章', '女', '统计学');
INSERT INTO `teacher` VALUES ('11', '张爽', '女', '计算机工程实践');
INSERT INTO `teacher` VALUES ('12', '池老标', '男', '智能技术');
INSERT INTO `teacher` VALUES ('2', '林世平', '男', '计算机网络');
INSERT INTO `teacher` VALUES ('3', '李刚', '女', '数学');
INSERT INTO `teacher` VALUES ('4', '周志华', '男', '机器学习');
INSERT INTO `teacher` VALUES ('5', '吴恩达', '女', '英语');
INSERT INTO `teacher` VALUES ('6', '张导', '男', '线性代数');
INSERT INTO `teacher` VALUES ('7', '李莉', '女', '中国特色社会主义');
INSERT INTO `teacher` VALUES ('8', '库里', '男', '英语教育');
INSERT INTO `teacher` VALUES ('9', '张继科', '女', '辩证法');

-- ----------------------------
-- Table structure for `timeschedule`
-- ----------------------------
DROP TABLE IF EXISTS `timeschedule`;
CREATE TABLE `timeschedule` (
  `cno` varchar(10) NOT NULL,
  `cname` varchar(15) NOT NULL,
  `pstime` date NOT NULL,
  `pEtime` date NOT NULL,
  `sstime` date NOT NULL,
  `setime` date NOT NULL,
  `ctime` int(1) NOT NULL,
  `longtime` int(1) NOT NULL,
  `caddress` int(1) NOT NULL,
  PRIMARY KEY (`cno`),
  KEY `fk_csname` (`cname`),
  KEY `pk_cadress` (`caddress`) USING BTREE,
  CONSTRAINT `fk_csname` FOREIGN KEY (`cname`) REFERENCES `classinfo` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timeschedule
-- ----------------------------
INSERT INTO `timeschedule` VALUES ('10000003', '计算机技术', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '2');
INSERT INTO `timeschedule` VALUES ('10000004', '计算机应用技术', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '1');
INSERT INTO `timeschedule` VALUES ('10000005', '软件工程', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '2');
INSERT INTO `timeschedule` VALUES ('10000006', '计算机体系结构', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '1');
INSERT INTO `timeschedule` VALUES ('10000007', '数学1班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '2');
INSERT INTO `timeschedule` VALUES ('10000008', '应用数学', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '1');
INSERT INTO `timeschedule` VALUES ('10000009', '数学2班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '2');
INSERT INTO `timeschedule` VALUES ('1000001', '计算1班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '1');
INSERT INTO `timeschedule` VALUES ('10000011', '数学3班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '1');
INSERT INTO `timeschedule` VALUES ('10000012', '运筹学', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '2');
INSERT INTO `timeschedule` VALUES ('10000013', '计算3班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '1');
INSERT INTO `timeschedule` VALUES ('1000002', '计算2班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '2');
