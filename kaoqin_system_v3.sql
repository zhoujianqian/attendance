/*
Navicat MySQL Data Transfer

Source Server         : 218.193.126.23
Source Server Version : 50717
Source Host           : 218.193.126.23:3306
Source Database       : kaoqin_system2

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-28 18:08:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classinfo`
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo` (
  `classID` varchar(6) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `classcap` int(4) NOT NULL,
  `school` varchar(20) NOT NULL,
  `college` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  PRIMARY KEY (`classID`),
  UNIQUE KEY `fk_cname` (`cname`),
  KEY `fk_school` (`school`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classinfo
-- ----------------------------
INSERT INTO `classinfo` VALUES ('1', '计算1班', '49', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('10', '数学2班', '78', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('11', '数学3班', '89', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('12', '运筹学', '102', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('2', '计算2班', '90', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('3', '计算3班', '89', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('4', '计算机技术', '45', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('5', '计算机应用技术', '65', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('6', '软件工程', '45', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('7', '计算机体系结构', '64', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('8', '数学1班', '67', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');
INSERT INTO `classinfo` VALUES ('9', '应用数学', '74', '福州大学', '数学与计算科学学院', '计算机', '计算机技术');

-- ----------------------------
-- Table structure for `kaoqin`
-- ----------------------------
DROP TABLE IF EXISTS `kaoqin`;
CREATE TABLE `kaoqin` (
  `kID` int(4) NOT NULL,
  `sID` varchar(9) NOT NULL,
  `sname` varchar(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `avalue` int(4) NOT NULL,
  `caddress` varchar(30) NOT NULL,
  `ctime` date NOT NULL,
  `tname` varchar(20) NOT NULL,
  PRIMARY KEY (`kID`,`sID`),
  KEY `fk_ksID` (`sID`),
  KEY `fk_ksname` (`sname`),
  KEY `fk_kcname` (`cname`),
  KEY `fk_kcaddress` (`caddress`),
  KEY `fk_tname` (`tname`),
  CONSTRAINT `fk_kcaddress` FOREIGN KEY (`caddress`) REFERENCES `schedule` (`caddress`),
  CONSTRAINT `fk_kcname` FOREIGN KEY (`cname`) REFERENCES `classinfo` (`cname`),
  CONSTRAINT `fk_ksID` FOREIGN KEY (`sID`) REFERENCES `student` (`sID`),
  CONSTRAINT `fk_ksname` FOREIGN KEY (`sname`) REFERENCES `student` (`sname`),
  CONSTRAINT `fk_tname` FOREIGN KEY (`tname`) REFERENCES `schedule` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoqin
-- ----------------------------
INSERT INTO `kaoqin` VALUES ('1', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('2', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('3', '160303', '张三', '计算1班', '1', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('4', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('5', '160305', '程波领', '计算1班', '1', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('6', '160306', '张群', '计算1班', '1', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('7', '160307', '恩浩', '计算1班', '1', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('8', '160308', '李磊', '计算2班', '1', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('9', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('10', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('11', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('12', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('13', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('14', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-03-08', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('15', '160308', '李磊', '计算2班', '1', '东2-203', '2017-03-08', '智能技术');
INSERT INTO `kaoqin` VALUES ('16', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('17', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('18', '160303', '张三', '计算1班', '1', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('19', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('20', '160305', '程波领', '计算1班', '1', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('21', '160306', '张群', '计算1班', '1', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('22', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('23', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('24', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('25', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('26', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('27', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-03-16', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('28', '160308', '李磊', '计算2班', '1', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('29', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('30', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-03-16', '智能技术');
INSERT INTO `kaoqin` VALUES ('31', '160303', '张三', '计算1班', '1', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('32', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('33', '160305', '程波领', '计算1班', '1', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('34', '160306', '张群', '计算1班', '1', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('35', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('36', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-03-24', '智能技术');
INSERT INTO `kaoqin` VALUES ('37', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-03-24', '智能技术');
INSERT INTO `kaoqin` VALUES ('38', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-03-24', '智能技术');
INSERT INTO `kaoqin` VALUES ('39', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('40', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('41', '160308', '李磊', '计算2班', '1', '东2-203', '2017-03-24', '智能技术');
INSERT INTO `kaoqin` VALUES ('42', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-03-24', '智能技术');
INSERT INTO `kaoqin` VALUES ('43', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-03-24', '智能技术');
INSERT INTO `kaoqin` VALUES ('44', '160303', '张三', '计算1班', '1', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('45', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-03-24', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('46', '160305', '程波领', '计算1班', '1', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('47', '160306', '张群', '计算1班', '1', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('48', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('49', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-03-31', '智能技术');
INSERT INTO `kaoqin` VALUES ('50', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-03-31', '智能技术');
INSERT INTO `kaoqin` VALUES ('51', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-03-31', '智能技术');
INSERT INTO `kaoqin` VALUES ('52', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('53', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('54', '160308', '李磊', '计算2班', '1', '东2-203', '2017-03-31', '智能技术');
INSERT INTO `kaoqin` VALUES ('55', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-03-31', '智能技术');
INSERT INTO `kaoqin` VALUES ('56', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-03-31', '智能技术');
INSERT INTO `kaoqin` VALUES ('57', '160303', '张三', '计算1班', '1', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('58', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('59', '160305', '程波领', '计算1班', '1', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('60', '160306', '张群', '计算1班', '1', '西1-203', '2017-03-31', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('61', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('62', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('63', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('64', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('65', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('66', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('67', '160308', '李磊', '计算2班', '1', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('68', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('69', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('70', '160303', '张三', '计算1班', '1', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('71', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('72', '160305', '程波领', '计算1班', '1', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('73', '160306', '张群', '计算1班', '1', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('74', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-04-06', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('75', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-04-06', '智能技术');
INSERT INTO `kaoqin` VALUES ('76', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('77', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('78', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('79', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('80', '160308', '李磊', '计算2班', '1', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('81', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('82', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('83', '160303', '张三', '计算1班', '1', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('84', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('85', '160305', '程波领', '计算1班', '1', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('86', '160306', '张群', '计算1班', '1', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('87', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-04-12', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('88', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('89', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('90', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-04-12', '智能技术');
INSERT INTO `kaoqin` VALUES ('91', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('92', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('93', '160308', '李磊', '计算2班', '1', '东2-203', '2017-04-20', '智能技术');
INSERT INTO `kaoqin` VALUES ('94', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-04-20', '智能技术');
INSERT INTO `kaoqin` VALUES ('95', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-04-20', '智能技术');
INSERT INTO `kaoqin` VALUES ('96', '160303', '张三', '计算1班', '1', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('97', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('98', '160305', '程波领', '计算1班', '1', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('99', '160306', '张群', '计算1班', '1', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('100', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('101', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-04-20', '智能技术');
INSERT INTO `kaoqin` VALUES ('102', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-04-20', '智能技术');
INSERT INTO `kaoqin` VALUES ('103', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-04-20', '智能技术');
INSERT INTO `kaoqin` VALUES ('104', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('105', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-04-20', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('106', '160308', '李磊', '计算2班', '1', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('107', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('108', '1603022', '于波', '计算机技术', '1', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('109', '160303', '张三', '计算1班', '1', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('110', '160304', '成发玉', '计算1班', '1', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('111', '160305', '程波领', '计算1班', '1', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('112', '160306', '张群', '计算1班', '1', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('113', '1603012', '李珍妹', '计算3班', '3', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('114', '1603011', '国辉', '计算2班', '2', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('115', '1603013', '李茂', '计算机技术', '4', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('116', '1603015', '凌潇肃', '软件工程', '2', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('117', '1603014', '周觅', '计算机应用技术', '3', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('118', '1603016', '武艺', '计算机体系结构', '3', '西1-203', '2017-04-26', '自然辩证法');
INSERT INTO `kaoqin` VALUES ('119', '160308', '李磊', '计算2班', '1', '东2-203', '2017-04-26', '智能技术');
INSERT INTO `kaoqin` VALUES ('120', '1603021', '徐峥', '运筹学', '1', '东2-203', '2017-04-26', '智能技术');

-- ----------------------------
-- Table structure for `leave`
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `vID` int(4) NOT NULL,
  `sID` varchar(9) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `vreason` text NOT NULL,
  `vtime` date NOT NULL,
  PRIMARY KEY (`vID`),
  KEY `fk_lecname` (`cname`),
  KEY `fk_lesID` (`sID`),
  CONSTRAINT `fk_lecname` FOREIGN KEY (`cname`) REFERENCES `classinfo` (`cname`),
  CONSTRAINT `fk_lesID` FOREIGN KEY (`sID`) REFERENCES `student` (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave
-- ----------------------------
INSERT INTO `leave` VALUES ('1', '1603022', '计算2班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('2', '160302', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('3', '160303', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('4', '160304', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('5', '160305', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('6', '160306', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('7', '160307', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('8', '160309', '计算1班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('9', '160303', '计算2班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('45', '1603012', '计算3班', '病假', '2017-03-07');
INSERT INTO `leave` VALUES ('68', '1603089', '计算3班', '病假', '2017-03-07');

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `cno` varchar(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `pstime` date NOT NULL,
  `petime` date NOT NULL,
  `sstime` date NOT NULL,
  `setime` date NOT NULL,
  `clong` int(4) NOT NULL,
  `xueshi` int(4) NOT NULL,
  `caddress` varchar(30) NOT NULL,
  `tname` varchar(20) NOT NULL,
  PRIMARY KEY (`cno`),
  KEY `fk_csname` (`cname`),
  KEY `fk_acddress` (`caddress`) USING BTREE,
  KEY `fk_tname` (`tname`) USING BTREE,
  CONSTRAINT `fk_csname` FOREIGN KEY (`cname`) REFERENCES `classinfo` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('100003', '计算机技术', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '东2-203', '智能技术');
INSERT INTO `schedule` VALUES ('100004', '计算机应用技术', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '西1-203', '自然辩证法');
INSERT INTO `schedule` VALUES ('100005', '软件工程', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '东2-203', '智能技术');
INSERT INTO `schedule` VALUES ('100006', '计算机体系结构', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '西1-203', '自然辩证法');
INSERT INTO `schedule` VALUES ('100007', '数学1班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '东2-203', '智能技术');
INSERT INTO `schedule` VALUES ('100008', '应用数学', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '西1-203', '自然辩证法');
INSERT INTO `schedule` VALUES ('100009', '数学2班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '东2-203', '智能技术');
INSERT INTO `schedule` VALUES ('10001', '计算1班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '西1-203', '自然辩证法');
INSERT INTO `schedule` VALUES ('100011', '数学3班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '西1-203', '自然辩证法');
INSERT INTO `schedule` VALUES ('100012', '运筹学', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '东2-203', '智能技术');
INSERT INTO `schedule` VALUES ('100013', '计算3班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '西1-203', '自然辩证法');
INSERT INTO `schedule` VALUES ('10002', '计算2班', '2017-03-03', '2017-06-30', '2017-03-23', '2017-06-14', '0', '4', '东2-203', '智能技术');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sID` varchar(9) NOT NULL,
  `sname` varchar(10) NOT NULL,
  `spwd` varchar(20) NOT NULL,
  `ssex` varchar(3) NOT NULL,
  `sphone` char(11) NOT NULL,
  `school` varchar(20) NOT NULL,
  `classID` varchar(6) NOT NULL,
  PRIMARY KEY (`sID`),
  UNIQUE KEY `sname` (`sname`) USING BTREE,
  KEY `fk_classID` (`classID`),
  KEY `fk_school` (`school`),
  CONSTRAINT `fk_classID` FOREIGN KEY (`classID`) REFERENCES `classinfo` (`classID`),
  CONSTRAINT `fk_school` FOREIGN KEY (`school`) REFERENCES `classinfo` (`school`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1603010', '郭坤', '123456', '男', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('1603011', '国辉', '123456', '男', '16355941126', '福州大学', '2');
INSERT INTO `student` VALUES ('1603012', '李珍妹', '123456', '男', '16355941126', '福州大学', '3');
INSERT INTO `student` VALUES ('1603013', '李茂', '123456', '男', '16355941126', '福州大学', '4');
INSERT INTO `student` VALUES ('1603014', '周觅', '123456', '男', '16355941126', '福州大学', '5');
INSERT INTO `student` VALUES ('1603015', '凌潇肃', '123456', '男', '16355941126', '福州大学', '6');
INSERT INTO `student` VALUES ('1603016', '武艺', '123456', '男', '16355941126', '福州大学', '7');
INSERT INTO `student` VALUES ('1603017', '杨俊毅', '123456', '男', '16355941126', '福州大学', '8');
INSERT INTO `student` VALUES ('1603018', '耿乐', '123456', '男', '16355941126', '福州大学', '9');
INSERT INTO `student` VALUES ('1603019', '钱泳辰', '123456', '男', '16355941126', '福州大学', '10');
INSERT INTO `student` VALUES ('160302', '李浩', '123456', '男', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('1603020', '撒贝', '123456', '男', '16355941126', '福州大学', '11');
INSERT INTO `student` VALUES ('1603021', '徐峥', '123456', '男', '16355941126', '福州大学', '12');
INSERT INTO `student` VALUES ('1603022', '于波', '123456', '男', '16355941126', '福州大学', '4');
INSERT INTO `student` VALUES ('1603023', '高昊', '123456', '女', '16355941126', '福州大学', '5');
INSERT INTO `student` VALUES ('1603024', '李连杰', '123456', '女', '16355941126', '福州大学', '6');
INSERT INTO `student` VALUES ('1603025', '王斑', '123456', '女', '16355941126', '福州大学', '7');
INSERT INTO `student` VALUES ('1603026', '蓝雨', '123456', '女', '16355941126', '福州大学', '8');
INSERT INTO `student` VALUES ('1603027', '刘恩佑', '123456', '女', '16355941126', '福州大学', '9');
INSERT INTO `student` VALUES ('1603028', '刘冠翔', '123456', '女', '16355941126', '福州大学', '10');
INSERT INTO `student` VALUES ('1603029', '邓安奇', '123456', '女', '16355941126', '福州大学', '11');
INSERT INTO `student` VALUES ('160303', '张三', '123456', '女', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('1603030', '印小天', '123456', '女', '16355941126', '福州大学', '12');
INSERT INTO `student` VALUES ('160304', '成发玉', '123456', '女', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('160305', '程波领', '123456', '女', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('160306', '张群', '123456', '女', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('160307', '恩浩', '123456', '女', '16355941126', '福州大学', '1');
INSERT INTO `student` VALUES ('160308', '李磊', '123456', '女', '16355941126', '福州大学', '2');
INSERT INTO `student` VALUES ('1603089', '李学庆', '123456', '女', '16355941126', '福州大学', '3');
INSERT INTO `student` VALUES ('160309', '韩梅梅', '123456', '女', '16355941126', '福州大学', '1');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tID` varchar(6) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tpwd` varchar(20) NOT NULL,
  `tsex` varchar(3) NOT NULL,
  `tphone` char(11) NOT NULL,
  `tclass` varchar(20) NOT NULL,
  `classID` varchar(6) NOT NULL,
  `school` varchar(20) NOT NULL,
  PRIMARY KEY (`tID`),
  KEY `fk_tclassID` (`classID`),
  KEY `fk_tschool` (`school`),
  CONSTRAINT `fk_tclassID` FOREIGN KEY (`classID`) REFERENCES `classinfo` (`classID`),
  CONSTRAINT `fk_tschool` FOREIGN KEY (`school`) REFERENCES `classinfo` (`school`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('093701', '张爽', '123456', '女', '13055729459', '07', '1', '福州大学');
INSERT INTO `teacher` VALUES ('093702', '池老标', '123456', '男', '13055729459', '07', '1', '福州大学');
INSERT INTO `teacher` VALUES ('093703', '张丽', '123456', '男', '13055729459', '07', '1', '福州大学');
INSERT INTO `teacher` VALUES ('093704', '宜章', '123456', '女', '13055729459', '07', '1', '福州大学');
INSERT INTO `teacher` VALUES ('093705', '林世平', '123456', '男', '13055729459', '07', '1', '福州大学');
INSERT INTO `teacher` VALUES ('093706', '李刚', '123456', '女', '13055729459', '07', '1', '福州大学');
INSERT INTO `teacher` VALUES ('093707', '周志华', '123456', '男', '13055729459', '07', '2', '福州大学');
INSERT INTO `teacher` VALUES ('093708', '吴恩达', '123456', '女', '13055729459', '07', '2', '福州大学');
INSERT INTO `teacher` VALUES ('093709', '张导', '123456', '男', '13055729459', '07', '2', '福州大学');
INSERT INTO `teacher` VALUES ('093710', '李莉', '123456', '女', '13055729459', '07', '2', '福州大学');
INSERT INTO `teacher` VALUES ('093711', '库里', '123456', '男', '13055729459', '07', '3', '福州大学');
INSERT INTO `teacher` VALUES ('093712', '张继科', '123456', '女', '13055729459', '07', '3', '福州大学');
