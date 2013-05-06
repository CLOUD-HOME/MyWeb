/*
Navicat MySQL Data Transfer

Source Server         : vmware
Source Server Version : 50162
Source Host           : localhost:10000
Source Database       : d8240767edeab4bf5a252e3658b3afa0f

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2013-05-02 11:18:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `visitor`
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `host` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of visitor
-- ----------------------------
INSERT INTO `visitor` VALUES ('1', '1', '1', '1', '1', '1');
INSERT INTO `visitor` VALUES ('2', '1', '1', '1', '1', '1');
INSERT INTO `visitor` VALUES ('3', '172.30.49.34', null, '3113', '172.30.49.34', '2013-01-22 07:07');
INSERT INTO `visitor` VALUES ('4', '172.30.49.30', null, '5859', '172.30.49.30', '2013-01-22 07:27');
INSERT INTO `visitor` VALUES ('5', '172.30.49.33', null, '3484', '172.30.49.33', '2013-01-22 07:39');
INSERT INTO `visitor` VALUES ('6', '172.30.49.24', null, '6807', '172.30.49.24', '2013-01-22 07:58');
INSERT INTO `visitor` VALUES ('7', '172.30.49.24', null, '7529', '172.30.49.24', '2013-01-22 07:46');
INSERT INTO `visitor` VALUES ('8', '172.30.49.36', null, '23518', '172.30.49.36', '2013-01-22 07:00');
INSERT INTO `visitor` VALUES ('9', '172.30.49.38', null, '40601', '172.30.49.38', '2013-01-22 07:59');
INSERT INTO `visitor` VALUES ('10', '172.30.49.39', null, '53406', '172.30.49.39', '2013-01-22 07:35');
INSERT INTO `visitor` VALUES ('11', '172.30.49.31', null, '11690', '172.30.49.31', '2013-01-22 07:16');
INSERT INTO `visitor` VALUES ('12', '172.30.49.28', null, '28265', '172.30.49.28', '2013-01-22 07:25');
INSERT INTO `visitor` VALUES ('13', '172.30.49.31', null, '12012', '172.30.49.31', '2013-01-22 07:09');
INSERT INTO `visitor` VALUES ('14', '172.30.49.33', null, '12529', '172.30.49.33', '2013-01-22 07:52');
INSERT INTO `visitor` VALUES ('15', '172.30.49.34', null, '23259', '172.30.49.34', '2013-01-22 07:55');
INSERT INTO `visitor` VALUES ('16', '172.30.49.24', null, '12588', '172.30.49.24', '2013-01-22 07:57');
INSERT INTO `visitor` VALUES ('17', '172.30.49.28', null, '28841', '172.30.49.28', '2013-01-22 07:59');
INSERT INTO `visitor` VALUES ('18', '172.30.49.34', null, '23290', '172.30.49.34', '2013-01-22 07:00');
INSERT INTO `visitor` VALUES ('19', '172.30.49.38', null, '44758', '172.30.49.38', '2013-01-22 07:02');
INSERT INTO `visitor` VALUES ('20', '172.30.49.34', null, '25815', '172.30.49.34', '2013-01-22 07:17');
INSERT INTO `visitor` VALUES ('21', '172.30.49.35', null, '52876', '172.30.49.35', '2013-01-22 07:04');
INSERT INTO `visitor` VALUES ('22', '172.30.49.33', null, '7626', '172.30.49.33', '2013-01-22 13:54');
INSERT INTO `visitor` VALUES ('23', '172.30.49.29', null, '49339', '172.30.49.29', '2013-01-22 14:41');
INSERT INTO `visitor` VALUES ('24', '172.30.49.38', null, '44935', '172.30.49.38', '2013-01-22 14:00');
INSERT INTO `visitor` VALUES ('25', '172.30.49.24', null, '41996', '172.30.49.24', '2013-01-23 02:44');
INSERT INTO `visitor` VALUES ('26', '172.30.49.31', null, '48952', '172.30.49.31', '2013-01-23 02:36');
INSERT INTO `visitor` VALUES ('27', '172.30.49.39', null, '20480', '172.30.49.39', '2013-01-23 12:14');
INSERT INTO `visitor` VALUES ('28', '172.30.49.28', null, '14962', '172.30.49.28', '2013-01-23 13:01');
INSERT INTO `visitor` VALUES ('29', '172.30.49.29', null, '58219', '172.30.49.29', '2013-01-23 13:54');
INSERT INTO `visitor` VALUES ('30', '172.30.49.39', null, '36779', '172.30.49.39', '2013-01-23 14:47');
INSERT INTO `visitor` VALUES ('31', '172.30.49.28', null, '61682', '172.30.49.28', '2013-01-23 14:07');
INSERT INTO `visitor` VALUES ('32', '172.30.49.31', null, '7941', '172.30.49.31', '2013-01-23 14:27');
INSERT INTO `visitor` VALUES ('33', '172.30.49.21', null, '59065', '172.30.49.21', '2013-01-23 14:06');
INSERT INTO `visitor` VALUES ('34', '172.30.49.21', null, '59236', '172.30.49.21', '2013-01-23 14:25');
INSERT INTO `visitor` VALUES ('35', '172.30.49.31', null, '17122', '172.30.49.31', '2013-01-23 14:34');
INSERT INTO `visitor` VALUES ('36', '172.30.49.34', null, '16798', '172.30.49.34', '2013-01-23 15:44');
INSERT INTO `visitor` VALUES ('37', '172.30.49.38', null, '43746', '172.30.49.38', '2013-01-23 15:20');
INSERT INTO `visitor` VALUES ('38', '172.30.49.35', null, '7639', '172.30.49.35', '2013-01-23 15:43');
INSERT INTO `visitor` VALUES ('39', '172.30.49.37', null, '29487', '172.30.49.37', '2013-01-23 15:53');
INSERT INTO `visitor` VALUES ('40', '172.30.49.25', null, '48460', '172.30.49.25', '2013-01-23 15:26');
INSERT INTO `visitor` VALUES ('41', '172.30.49.30', null, '33258', '172.30.49.30', '2013-01-23 20:08');
INSERT INTO `visitor` VALUES ('42', '172.30.49.24', null, '10745', '172.30.49.24', '2013-01-24 01:55');
INSERT INTO `visitor` VALUES ('43', '172.30.49.31', null, '59758', '172.30.49.31', '2013-01-24 02:05');
INSERT INTO `visitor` VALUES ('44', '172.30.49.24', null, '44254', '172.30.49.24', '2013-01-24 06:17');
INSERT INTO `visitor` VALUES ('45', '172.30.49.29', null, '29914', '172.30.49.29', '2013-01-24 06:18');
INSERT INTO `visitor` VALUES ('46', '172.30.49.33', null, '24482', '172.30.49.33', '2013-01-24 06:19');
INSERT INTO `visitor` VALUES ('47', '172.30.49.39', null, '27354', '172.30.49.39', '2013-01-24 06:33');
INSERT INTO `visitor` VALUES ('48', '172.30.49.31', null, '53300', '172.30.49.31', '2013-01-24 07:32');
INSERT INTO `visitor` VALUES ('49', '172.30.49.24', null, '6537', '172.30.49.24', '2013-01-24 12:03');
INSERT INTO `visitor` VALUES ('50', '172.30.49.39', null, '54487', '172.30.49.39', '2013-01-24 12:39');
INSERT INTO `visitor` VALUES ('51', '172.30.49.24', null, '56314', '172.30.49.24', '2013-01-25 01:21');
INSERT INTO `visitor` VALUES ('52', '172.30.49.39', null, '17392', '172.30.49.39', '2013-01-26 07:27');
INSERT INTO `visitor` VALUES ('53', '172.30.49.30', null, '44809', '172.30.49.30', '2013-01-27 06:44');
INSERT INTO `visitor` VALUES ('54', '172.30.49.38', null, '31416', '172.30.49.38', '2013-01-27 07:36');
INSERT INTO `visitor` VALUES ('55', '172.30.49.35', null, '42559', '172.30.49.35', '2013-02-05 03:47');
INSERT INTO `visitor` VALUES ('56', '172.30.49.38', null, '28729', '172.30.49.38', '2013-02-05 07:12');
INSERT INTO `visitor` VALUES ('57', '172.30.49.35', null, '62297', '172.30.49.35', '2013-02-05 19:17');
INSERT INTO `visitor` VALUES ('58', '172.30.49.32', null, '64555', '172.30.49.32', '2013-02-05 21:12');
INSERT INTO `visitor` VALUES ('59', '172.30.49.24', null, '9051', '172.30.49.24', '2013-02-06 03:19');
INSERT INTO `visitor` VALUES ('60', '172.30.49.38', null, '5066', '172.30.49.38', '2013-02-06 03:40');
INSERT INTO `visitor` VALUES ('61', '172.30.49.21', null, '26191', '172.30.49.21', '2013-02-06 10:53');
INSERT INTO `visitor` VALUES ('62', '172.30.49.24', null, '23814', '172.30.49.24', '2013-02-07 01:16');
INSERT INTO `visitor` VALUES ('63', '172.30.49.33', null, '48826', '172.30.49.33', '2013-02-09 12:45');
INSERT INTO `visitor` VALUES ('64', '172.30.49.21', null, '12308', '172.30.49.21', '2013-02-12 11:51');
INSERT INTO `visitor` VALUES ('65', '172.30.49.37', null, '40571', '172.30.49.37', '2013-02-13 02:50');
INSERT INTO `visitor` VALUES ('66', '172.30.49.39', null, '26858', '172.30.49.39', '2013-02-13 22:05');
INSERT INTO `visitor` VALUES ('67', '172.30.49.31', null, '3573', '172.30.49.31', '2013-02-13 22:50');
INSERT INTO `visitor` VALUES ('68', '172.30.49.21', null, '59464', '172.30.49.21', '2013-02-14 21:08');
INSERT INTO `visitor` VALUES ('69', '172.30.49.25', null, '57473', '172.30.49.25', '2013-02-14 22:54');
INSERT INTO `visitor` VALUES ('70', '172.30.49.35', null, '13413', '172.30.49.35', '2013-02-15 10:02');
INSERT INTO `visitor` VALUES ('71', '172.30.49.28', null, '18929', '172.30.49.28', '2013-02-15 18:35');
INSERT INTO `visitor` VALUES ('72', '172.30.49.37', null, '3815', '172.30.49.37', '2013-02-15 18:35');
INSERT INTO `visitor` VALUES ('73', '172.30.49.32', null, '30361', '172.30.49.32', '2013-02-16 01:01');
INSERT INTO `visitor` VALUES ('74', '172.30.49.33', null, '19878', '172.30.49.33', '2013-02-16 12:38');
INSERT INTO `visitor` VALUES ('75', '172.30.49.34', null, '19473', '172.30.49.34', '2013-02-17 23:03');
INSERT INTO `visitor` VALUES ('76', '172.30.49.31', null, '23304', '172.30.49.31', '2013-02-19 21:47');
INSERT INTO `visitor` VALUES ('77', '172.30.49.37', null, '11926', '172.30.49.37', '2013-02-21 05:35');
INSERT INTO `visitor` VALUES ('78', '172.30.49.29', null, '10583', '172.30.49.29', '2013-02-21 05:49');
INSERT INTO `visitor` VALUES ('79', '172.30.49.21', null, '33457', '172.30.49.21', '2013-02-21 20:09');
INSERT INTO `visitor` VALUES ('80', '172.30.49.30', null, '48169', '172.30.49.30', '2013-02-22 00:19');
INSERT INTO `visitor` VALUES ('81', '172.30.49.29', null, '49898', '172.30.49.29', '2013-02-22 03:17');
INSERT INTO `visitor` VALUES ('82', '172.30.49.29', null, '30309', '172.30.49.29', '2013-02-22 03:49');
INSERT INTO `visitor` VALUES ('83', '172.30.49.27', null, '17508', '172.30.49.27', '2013-02-22 04:15');
INSERT INTO `visitor` VALUES ('84', '172.30.49.32', null, '18055', '172.30.49.32', '2013-02-22 09:25');
INSERT INTO `visitor` VALUES ('85', '172.30.49.27', null, '21966', '172.30.49.27', '2013-02-22 17:57');
INSERT INTO `visitor` VALUES ('86', '172.30.49.28', null, '25666', '172.30.49.28', '2013-02-22 23:55');
INSERT INTO `visitor` VALUES ('87', '172.30.49.27', null, '51921', '172.30.49.27', '2013-02-23 05:25');
INSERT INTO `visitor` VALUES ('88', '172.30.49.30', null, '36332', '172.30.49.30', '2013-02-23 17:22');
INSERT INTO `visitor` VALUES ('89', '172.30.49.27', null, '13105', '172.30.49.27', '2013-02-23 20:30');
INSERT INTO `visitor` VALUES ('90', '172.30.49.30', null, '15213', '172.30.49.30', '2013-02-24 00:44');
INSERT INTO `visitor` VALUES ('91', '172.30.49.29', null, '61295', '172.30.49.29', '2013-02-24 05:26');
INSERT INTO `visitor` VALUES ('92', '172.30.49.30', null, '39957', '172.30.49.30', '2013-02-24 17:25');
INSERT INTO `visitor` VALUES ('93', '172.30.49.29', null, '30964', '172.30.49.29', '2013-02-25 05:55');
INSERT INTO `visitor` VALUES ('94', '172.30.49.30', null, '30527', '172.30.49.30', '2013-02-25 12:57');
INSERT INTO `visitor` VALUES ('95', '172.30.49.29', null, '60342', '172.30.49.29', '2013-02-25 22:25');
INSERT INTO `visitor` VALUES ('96', '172.30.49.29', null, '55221', '172.30.49.29', '2013-02-26 03:25');
INSERT INTO `visitor` VALUES ('97', '172.30.49.27', null, '3119', '172.30.49.27', '2013-02-26 17:07');
INSERT INTO `visitor` VALUES ('98', '172.30.49.28', null, '45907', '172.30.49.28', '2013-02-27 00:59');
INSERT INTO `visitor` VALUES ('99', '172.30.49.32', null, '6121', '172.30.49.32', '2013-02-27 00:52');
INSERT INTO `visitor` VALUES ('100', '172.30.49.32', null, '6122', '172.30.49.32', '2013-02-27 00:52');
INSERT INTO `visitor` VALUES ('101', '172.30.49.30', null, '14427', '172.30.49.30', '2013-02-27 01:51');
INSERT INTO `visitor` VALUES ('102', '172.30.49.28', null, '45107', '172.30.49.28', '2013-02-27 05:52');
INSERT INTO `visitor` VALUES ('103', '172.30.49.32', null, '25232', '172.30.49.32', '2013-02-27 06:30');
INSERT INTO `visitor` VALUES ('104', '172.30.49.28', null, '26462', '172.30.49.28', '2013-02-27 07:23');
INSERT INTO `visitor` VALUES ('105', '172.30.49.30', null, '8239', '172.30.49.30', '2013-02-27 18:28');
INSERT INTO `visitor` VALUES ('106', '172.30.49.32', null, '3163', '172.30.49.32', '2013-02-27 20:24');
INSERT INTO `visitor` VALUES ('107', '172.30.49.30', null, '42934', '172.30.49.30', '2013-02-28 07:22');
INSERT INTO `visitor` VALUES ('108', '172.30.49.32', null, '4263', '172.30.49.32', '2013-02-28 20:52');
INSERT INTO `visitor` VALUES ('109', '172.30.49.29', null, '23445', '172.30.49.29', '2013-02-28 23:37');
INSERT INTO `visitor` VALUES ('110', '172.30.49.27', null, '48032', '172.30.49.27', '2013-03-01 07:52');
INSERT INTO `visitor` VALUES ('111', '172.30.49.32', null, '62216', '172.30.49.32', '2013-03-02 02:47');
INSERT INTO `visitor` VALUES ('112', '172.30.49.30', null, '25100', '172.30.49.30', '2013-03-02 04:35');
INSERT INTO `visitor` VALUES ('113', '172.30.49.28', null, '56580', '172.30.49.28', '2013-03-02 08:08');
INSERT INTO `visitor` VALUES ('114', '172.30.49.30', null, '33339', '172.30.49.30', '2013-03-02 10:28');
INSERT INTO `visitor` VALUES ('115', '172.30.49.30', null, '18617', '172.30.49.30', '2013-03-02 20:55');
INSERT INTO `visitor` VALUES ('116', '172.30.49.28', null, '33194', '172.30.49.28', '2013-03-02 23:21');
INSERT INTO `visitor` VALUES ('117', '172.30.49.27', null, '14003', '172.30.49.27', '2013-03-03 06:05');
INSERT INTO `visitor` VALUES ('118', '172.30.49.28', null, '26993', '172.30.49.28', '2013-03-03 07:50');
INSERT INTO `visitor` VALUES ('119', '172.30.49.30', null, '12744', '172.30.49.30', '2013-03-03 14:17');
INSERT INTO `visitor` VALUES ('120', '172.30.49.27', null, '39869', '172.30.49.27', '2013-03-04 08:17');
INSERT INTO `visitor` VALUES ('121', '172.30.49.30', null, '18341', '172.30.49.30', '2013-03-04 11:36');
INSERT INTO `visitor` VALUES ('122', '172.30.49.29', null, '26864', '172.30.49.29', '2013-03-04 11:12');
INSERT INTO `visitor` VALUES ('123', '172.30.49.29', null, '9609', '172.30.49.29', '2013-03-04 14:42');
INSERT INTO `visitor` VALUES ('124', '172.30.49.32', null, '61310', '172.30.49.32', '2013-03-04 15:08');
INSERT INTO `visitor` VALUES ('125', '172.30.49.28', null, '25721', '172.30.49.28', '2013-03-05 05:19');
INSERT INTO `visitor` VALUES ('126', '172.30.49.30', null, '45626', '172.30.49.30', '2013-03-05 07:36');
INSERT INTO `visitor` VALUES ('127', '172.30.49.29', null, '37706', '172.30.49.29', '2013-03-07 02:10');
INSERT INTO `visitor` VALUES ('128', '172.30.49.27', null, '25637', '172.30.49.27', '2013-03-10 23:43');
INSERT INTO `visitor` VALUES ('129', '172.30.49.29', null, '53978', '172.30.49.29', '2013-03-13 03:09');
INSERT INTO `visitor` VALUES ('130', '172.30.49.29', null, '50705', '172.30.49.29', '2013-03-14 18:12');
INSERT INTO `visitor` VALUES ('131', '172.30.49.28', null, '19453', '172.30.49.28', '2013-03-15 07:45');
INSERT INTO `visitor` VALUES ('132', '172.30.49.28', null, '34644', '172.30.49.28', '2013-03-15 08:38');
INSERT INTO `visitor` VALUES ('133', '172.30.49.29', null, '18972', '172.30.49.29', '2013-03-16 01:23');
INSERT INTO `visitor` VALUES ('134', '172.30.49.32', null, '49832', '172.30.49.32', '2013-03-16 02:55');
INSERT INTO `visitor` VALUES ('135', '172.30.49.28', null, '19987', '172.30.49.28', '2013-03-23 03:08');
INSERT INTO `visitor` VALUES ('136', '172.30.49.28', null, '39992', '172.30.49.28', '2013-03-23 06:13');
INSERT INTO `visitor` VALUES ('137', '172.30.49.28', null, '9958', '172.30.49.28', '2013-03-23 06:43');
INSERT INTO `visitor` VALUES ('138', '172.30.49.28', null, '10999', '172.30.49.28', '2013-03-23 06:34');
INSERT INTO `visitor` VALUES ('139', '172.30.49.28', null, '11572', '172.30.49.28', '2013-03-23 06:59');
INSERT INTO `visitor` VALUES ('140', '172.30.49.29', null, '54382', '172.30.49.29', '2013-03-23 06:26');
INSERT INTO `visitor` VALUES ('141', '172.30.49.29', null, '61721', '172.30.49.29', '2013-03-23 07:21');
INSERT INTO `visitor` VALUES ('142', '172.30.49.32', null, '16945', '172.30.49.32', '2013-03-23 07:58');
INSERT INTO `visitor` VALUES ('143', '172.30.49.32', null, '22672', '172.30.49.32', '2013-03-23 07:27');
INSERT INTO `visitor` VALUES ('144', '172.30.49.27', null, '11002', '172.30.49.27', '2013-03-23 09:16');
INSERT INTO `visitor` VALUES ('145', '172.30.49.32', null, '64982', '172.30.49.32', '2013-03-24 11:23');
INSERT INTO `visitor` VALUES ('146', '172.30.49.27', null, '47306', '172.30.49.27', '2013-03-24 13:22');
INSERT INTO `visitor` VALUES ('147', '172.30.49.30', null, '56222', '172.30.49.30', '2013-03-25 12:26');
INSERT INTO `visitor` VALUES ('148', '172.30.49.29', null, '39823', '172.30.49.29', '2013-03-25 12:37');
INSERT INTO `visitor` VALUES ('149', '172.30.49.30', null, '3446', '172.30.49.30', '2013-03-25 12:46');
INSERT INTO `visitor` VALUES ('150', '172.30.49.30', null, '3722', '172.30.49.30', '2013-03-25 12:55');
INSERT INTO `visitor` VALUES ('151', '172.30.49.27', null, '51559', '172.30.49.27', '2013-03-25 12:13');
INSERT INTO `visitor` VALUES ('152', '172.30.49.30', null, '38820', '172.30.49.30', '2013-03-26 08:49');
INSERT INTO `visitor` VALUES ('153', '172.30.49.27', null, '12737', '172.30.49.27', '2013-03-26 13:53');
INSERT INTO `visitor` VALUES ('154', '172.30.49.28', null, '3757', '172.30.49.28', '2013-03-26 13:10');
INSERT INTO `visitor` VALUES ('155', '172.30.49.30', null, '46012', '172.30.49.30', '2013-03-26 13:28');
INSERT INTO `visitor` VALUES ('156', '172.30.49.27', null, '11024', '172.30.49.27', '2013-03-26 13:59');
INSERT INTO `visitor` VALUES ('157', '172.30.49.28', null, '18642', '172.30.49.28', '2013-03-26 13:06');
INSERT INTO `visitor` VALUES ('158', '172.30.49.32', null, '35334', '172.30.49.32', '2013-03-26 13:04');
INSERT INTO `visitor` VALUES ('159', '172.30.49.28', null, '36800', '172.30.49.28', '2013-03-26 13:10');
INSERT INTO `visitor` VALUES ('160', '172.30.49.27', null, '28177', '172.30.49.27', '2013-03-27 06:37');
INSERT INTO `visitor` VALUES ('161', '172.30.49.30', null, '1860', '172.30.49.30', '2013-03-28 02:16');
INSERT INTO `visitor` VALUES ('162', '172.30.49.32', null, '1185', '172.30.49.32', '2013-03-28 06:52');
INSERT INTO `visitor` VALUES ('163', '172.30.49.28', null, '64065', '172.30.49.28', '2013-03-28 06:27');
INSERT INTO `visitor` VALUES ('164', '172.30.49.27', null, '55863', '172.30.49.27', '2013-03-28 06:07');
INSERT INTO `visitor` VALUES ('165', '172.30.49.30', null, '27681', '172.30.49.30', '2013-03-29 02:15');
INSERT INTO `visitor` VALUES ('166', '172.30.49.30', null, '25078', '172.30.49.30', '2013-03-29 03:22');
INSERT INTO `visitor` VALUES ('167', '172.30.49.29', null, '10453', '172.30.49.29', '2013-03-29 06:09');
INSERT INTO `visitor` VALUES ('168', '172.30.49.29', null, '10310', '172.30.49.29', '2013-03-29 10:30');
INSERT INTO `visitor` VALUES ('169', '172.30.49.32', null, '33439', '172.30.49.32', '2013-03-29 16:50');
INSERT INTO `visitor` VALUES ('170', '172.30.49.27', null, '10707', '172.30.49.27', '2013-03-30 08:54');
INSERT INTO `visitor` VALUES ('171', '172.30.49.28', null, '9243', '172.30.49.28', '2013-03-30 11:43');
INSERT INTO `visitor` VALUES ('172', '172.30.49.30', null, '55185', '172.30.49.30', '2013-03-30 11:41');
INSERT INTO `visitor` VALUES ('173', '172.30.49.32', null, '18315', '172.30.49.32', '2013-03-30 12:24');
INSERT INTO `visitor` VALUES ('174', '172.30.49.27', null, '5721', '172.30.49.27', '2013-03-30 12:57');
INSERT INTO `visitor` VALUES ('175', '172.30.49.28', null, '55823', '172.30.49.28', '2013-03-31 04:11');
INSERT INTO `visitor` VALUES ('176', '172.30.49.28', null, '65146', '172.30.49.28', '2013-03-31 04:09');
INSERT INTO `visitor` VALUES ('177', '172.30.49.32', null, '2517', '172.30.49.32', '2013-03-31 04:07');
INSERT INTO `visitor` VALUES ('178', '172.30.49.32', null, '35992', '172.30.49.32', '2013-03-31 05:00');
INSERT INTO `visitor` VALUES ('179', '172.30.49.29', null, '45514', '172.30.49.29', '2013-03-31 10:24');
INSERT INTO `visitor` VALUES ('180', '172.30.49.27', null, '65526', '172.30.49.27', '2013-03-31 13:18');
INSERT INTO `visitor` VALUES ('181', '172.30.49.27', null, '9300', '172.30.49.27', '2013-04-01 06:08');
INSERT INTO `visitor` VALUES ('182', '172.30.49.29', null, '34398', '172.30.49.29', '2013-04-01 12:05');
INSERT INTO `visitor` VALUES ('183', '172.30.49.27', null, '59860', '172.30.49.27', '2013-04-01 12:00');
INSERT INTO `visitor` VALUES ('184', '172.30.49.32', null, '45488', '172.30.49.32', '2013-04-02 12:49');
INSERT INTO `visitor` VALUES ('185', '172.30.49.30', null, '53431', '172.30.49.30', '2013-04-03 02:57');
INSERT INTO `visitor` VALUES ('186', '172.30.49.29', null, '43946', '172.30.49.29', '2013-04-03 03:21');
INSERT INTO `visitor` VALUES ('187', '172.30.49.27', null, '4151', '172.30.49.27', '2013-04-03 09:57');
INSERT INTO `visitor` VALUES ('188', '172.30.49.29', null, '10812', '172.30.49.29', '2013-04-03 10:58');
INSERT INTO `visitor` VALUES ('189', '172.30.49.27', null, '54525', '172.30.49.27', '2013-04-04 01:31');
INSERT INTO `visitor` VALUES ('190', '172.30.49.30', null, '62641', '172.30.49.30', '2013-04-04 08:25');
INSERT INTO `visitor` VALUES ('191', '172.30.49.32', null, '23092', '172.30.49.32', '2013-04-04 08:50');
INSERT INTO `visitor` VALUES ('192', '172.30.49.27', null, '35199', '172.30.49.27', '2013-04-04 15:44');
INSERT INTO `visitor` VALUES ('193', '172.30.49.28', null, '3312', '172.30.49.28', '2013-04-06 09:09');
INSERT INTO `visitor` VALUES ('194', '172.30.49.30', null, '6221', '172.30.49.30', '2013-04-07 06:42');
INSERT INTO `visitor` VALUES ('195', '172.30.49.32', null, '20676', '172.30.49.32', '2013-04-08 03:30');
INSERT INTO `visitor` VALUES ('196', '172.30.49.28', null, '2219', '172.30.49.28', '2013-04-08 06:17');
INSERT INTO `visitor` VALUES ('197', '172.30.49.29', null, '53700', '172.30.49.29', '2013-04-11 04:00');
INSERT INTO `visitor` VALUES ('198', '172.30.49.28', null, '36743', '172.30.49.28', '2013-04-12 09:26');
INSERT INTO `visitor` VALUES ('199', '172.30.49.27', null, '19838', '172.30.49.27', '2013-04-13 14:05');
INSERT INTO `visitor` VALUES ('200', '172.30.49.30', null, '56962', '172.30.49.30', '2013-04-14 14:52');
INSERT INTO `visitor` VALUES ('201', '172.30.49.30', null, '59139', '172.30.49.30', '2013-04-14 14:54');
INSERT INTO `visitor` VALUES ('202', '172.30.49.32', null, '20851', '172.30.49.32', '2013-04-14 14:38');
INSERT INTO `visitor` VALUES ('203', '172.30.49.29', null, '8610', '172.30.49.29', '2013-04-16 02:05');
INSERT INTO `visitor` VALUES ('204', '172.30.49.28', null, '34568', '172.30.49.28', '2013-04-16 02:05');
INSERT INTO `visitor` VALUES ('205', '172.30.49.28', null, '44743', '172.30.49.28', '2013-04-16 03:40');
INSERT INTO `visitor` VALUES ('206', '172.30.49.29', null, '45813', '172.30.49.29', '2013-04-16 03:22');
INSERT INTO `visitor` VALUES ('207', '172.30.49.29', null, '55705', '172.30.49.29', '2013-04-16 05:42');
INSERT INTO `visitor` VALUES ('208', '172.30.49.29', null, '21497', '172.30.49.29', '2013-04-17 01:18');
INSERT INTO `visitor` VALUES ('209', '172.30.49.30', null, '61533', '172.30.49.30', '2013-04-17 08:03');
INSERT INTO `visitor` VALUES ('210', '172.30.49.29', null, '56453', '172.30.49.29', '2013-04-17 11:28');
INSERT INTO `visitor` VALUES ('211', '172.30.49.28', null, '31887', '172.30.49.28', '2013-04-17 12:49');
INSERT INTO `visitor` VALUES ('212', '172.30.49.29', null, '38998', '172.30.49.29', '2013-04-17 12:22');
INSERT INTO `visitor` VALUES ('213', '172.30.49.32', null, '5607', '172.30.49.32', '2013-04-17 13:20');
INSERT INTO `visitor` VALUES ('214', '172.30.49.32', null, '15380', '172.30.49.32', '2013-04-17 13:29');
INSERT INTO `visitor` VALUES ('215', '172.30.49.28', null, '2670', '172.30.49.28', '2013-04-17 14:21');
INSERT INTO `visitor` VALUES ('216', '172.30.49.30', null, '34920', '172.30.49.30', '2013-04-17 18:04');
INSERT INTO `visitor` VALUES ('217', '172.30.49.28', null, '33035', '172.30.49.28', '2013-04-18 01:23');
INSERT INTO `visitor` VALUES ('218', '172.30.49.29', null, '40568', '172.30.49.29', '2013-04-18 01:47');
INSERT INTO `visitor` VALUES ('219', '172.30.49.27', null, '34986', '172.30.49.27', '2013-04-18 02:38');
INSERT INTO `visitor` VALUES ('220', '172.30.49.29', null, '47485', '172.30.49.29', '2013-04-18 02:54');
INSERT INTO `visitor` VALUES ('221', '172.30.49.27', null, '20460', '172.30.49.27', '2013-04-18 02:11');
INSERT INTO `visitor` VALUES ('222', '172.30.49.30', null, '19592', '172.30.49.30', '2013-04-18 02:56');
INSERT INTO `visitor` VALUES ('223', '172.30.49.29', null, '35268', '172.30.49.29', '2013-04-18 02:58');
INSERT INTO `visitor` VALUES ('224', '172.30.49.30', null, '22787', '172.30.49.30', '2013-04-18 02:48');
INSERT INTO `visitor` VALUES ('225', '172.30.49.28', null, '38056', '172.30.49.28', '2013-04-18 02:28');
INSERT INTO `visitor` VALUES ('226', '172.30.49.32', null, '17110', '172.30.49.32', '2013-04-18 03:35');
INSERT INTO `visitor` VALUES ('227', '172.30.49.28', null, '3607', '172.30.49.28', '2013-04-18 03:50');
INSERT INTO `visitor` VALUES ('228', '172.30.49.32', null, '28773', '172.30.49.32', '2013-04-18 03:44');
INSERT INTO `visitor` VALUES ('229', '172.30.49.29', null, '31826', '172.30.49.29', '2013-04-18 03:14');
INSERT INTO `visitor` VALUES ('230', '172.30.49.29', null, '34187', '172.30.49.29', '2013-04-18 03:32');
INSERT INTO `visitor` VALUES ('231', '172.30.49.32', null, '27144', '172.30.49.32', '2013-04-18 03:50');
INSERT INTO `visitor` VALUES ('232', '172.30.49.32', null, '37475', '172.30.49.32', '2013-04-18 03:54');
INSERT INTO `visitor` VALUES ('233', '172.30.49.28', null, '26833', '172.30.49.28', '2013-04-18 05:41');
INSERT INTO `visitor` VALUES ('234', '172.30.49.29', null, '37274', '172.30.49.29', '2013-04-18 05:29');
INSERT INTO `visitor` VALUES ('235', '172.30.49.28', null, '63846', '172.30.49.28', '2013-04-18 05:33');
INSERT INTO `visitor` VALUES ('236', '172.30.49.30', null, '25109', '172.30.49.30', '2013-04-18 05:17');
INSERT INTO `visitor` VALUES ('237', '172.30.49.29', null, '44870', '172.30.49.29', '2013-04-18 05:56');
INSERT INTO `visitor` VALUES ('238', '172.30.49.29', null, '58365', '172.30.49.29', '2013-04-18 05:53');
INSERT INTO `visitor` VALUES ('239', '172.30.49.30', null, '40026', '172.30.49.30', '2013-04-18 05:11');
INSERT INTO `visitor` VALUES ('240', '172.30.49.27', null, '50025', '172.30.49.27', '2013-04-18 05:31');
INSERT INTO `visitor` VALUES ('241', '172.30.49.30', null, '59796', '172.30.49.30', '2013-04-18 05:50');
INSERT INTO `visitor` VALUES ('242', '172.30.49.28', null, '38048', '172.30.49.28', '2013-04-18 05:45');
INSERT INTO `visitor` VALUES ('243', '172.30.49.32', null, '58884', '172.30.49.32', '2013-04-18 05:49');
INSERT INTO `visitor` VALUES ('244', '172.30.49.30', null, '13278', '172.30.49.30', '2013-04-18 05:03');
INSERT INTO `visitor` VALUES ('245', '172.30.49.32', null, '44662', '172.30.49.32', '2013-04-18 06:37');
INSERT INTO `visitor` VALUES ('246', '172.30.49.27', null, '31765', '172.30.49.27', '2013-04-18 06:44');
INSERT INTO `visitor` VALUES ('247', '172.30.49.29', null, '1684', '172.30.49.29', '2013-04-18 06:27');
INSERT INTO `visitor` VALUES ('248', '172.30.49.30', null, '58256', '172.30.49.30', '2013-04-18 07:19');
INSERT INTO `visitor` VALUES ('249', '172.30.49.30', null, '34668', '172.30.49.30', '2013-04-18 07:23');
INSERT INTO `visitor` VALUES ('250', '172.30.49.30', null, '56670', '172.30.49.30', '2013-04-18 07:15');
INSERT INTO `visitor` VALUES ('251', '172.30.49.30', null, '24023', '172.30.49.30', '2013-04-18 08:46');
INSERT INTO `visitor` VALUES ('252', '172.30.49.28', null, '56120', '172.30.49.28', '2013-04-18 08:37');
INSERT INTO `visitor` VALUES ('253', '172.30.49.29', null, '60534', '172.30.49.29', '2013-04-19 01:13');
INSERT INTO `visitor` VALUES ('254', '172.30.49.30', null, '8886', '172.30.49.30', '2013-04-19 01:30');
INSERT INTO `visitor` VALUES ('255', '172.30.49.30', null, '9174', '172.30.49.30', '2013-04-19 01:40');
INSERT INTO `visitor` VALUES ('256', '172.30.49.29', null, '19049', '172.30.49.29', '2013-04-19 01:27');
INSERT INTO `visitor` VALUES ('257', '172.30.49.30', null, '25603', '172.30.49.30', '2013-04-19 01:16');
INSERT INTO `visitor` VALUES ('258', '172.30.49.28', null, '39907', '172.30.49.28', '2013-04-19 02:39');
INSERT INTO `visitor` VALUES ('259', '172.30.49.32', null, '21475', '172.30.49.32', '2013-04-19 02:52');
INSERT INTO `visitor` VALUES ('260', '172.30.49.27', null, '44460', '172.30.49.27', '2013-04-19 02:21');
INSERT INTO `visitor` VALUES ('261', '172.30.49.30', null, '9206', '172.30.49.30', '2013-04-19 02:27');
INSERT INTO `visitor` VALUES ('262', '172.30.49.28', null, '18269', '172.30.49.28', '2013-04-19 02:32');
INSERT INTO `visitor` VALUES ('263', '172.30.49.27', null, '32993', '172.30.49.27', '2013-04-19 02:51');
INSERT INTO `visitor` VALUES ('264', '172.30.49.28', null, '28966', '172.30.49.28', '2013-04-19 08:28');
INSERT INTO `visitor` VALUES ('265', '172.30.49.32', null, '12251', '172.30.49.32', '2013-04-19 10:27');
INSERT INTO `visitor` VALUES ('266', '172.30.49.29', null, '36593', '172.30.49.29', '2013-04-19 10:43');
INSERT INTO `visitor` VALUES ('267', '172.30.49.32', null, '41023', '172.30.49.32', '2013-04-19 10:56');
INSERT INTO `visitor` VALUES ('268', '172.30.49.27', null, '55670', '172.30.49.27', '2013-04-19 12:59');
INSERT INTO `visitor` VALUES ('269', '172.30.49.29', null, '56941', '172.30.49.29', '2013-04-19 12:26');
INSERT INTO `visitor` VALUES ('270', '172.30.49.27', null, '14196', '172.30.49.27', '2013-04-19 12:43');
INSERT INTO `visitor` VALUES ('271', '172.30.49.28', null, '33613', '172.30.49.28', '2013-04-20 17:24');
INSERT INTO `visitor` VALUES ('272', '172.30.49.27', null, '26846', '172.30.49.27', '2013-04-20 20:35');
INSERT INTO `visitor` VALUES ('273', '172.30.49.29', null, '46891', '172.30.49.29', '2013-04-21 08:42');
INSERT INTO `visitor` VALUES ('274', '172.30.49.28', null, '57837', '172.30.49.28', '2013-04-21 08:46');
INSERT INTO `visitor` VALUES ('275', '172.30.49.30', null, '59624', '172.30.49.30', '2013-04-21 08:27');
INSERT INTO `visitor` VALUES ('276', '172.30.49.27', null, '4159', '172.30.49.27', '2013-04-21 08:02');
INSERT INTO `visitor` VALUES ('277', '172.30.49.27', null, '13736', '172.30.49.27', '2013-04-22 01:07');
INSERT INTO `visitor` VALUES ('278', '172.30.49.30', null, '14612', '172.30.49.30', '2013-04-22 01:53');
INSERT INTO `visitor` VALUES ('279', '172.30.49.27', null, '24270', '172.30.49.27', '2013-04-22 01:59');
INSERT INTO `visitor` VALUES ('280', '172.30.49.30', null, '2645', '172.30.49.30', '2013-04-22 01:12');
INSERT INTO `visitor` VALUES ('281', '172.30.49.30', null, '42801', '172.30.49.30', '2013-04-22 01:49');
INSERT INTO `visitor` VALUES ('282', '172.30.49.27', null, '50143', '172.30.49.27', '2013-04-22 02:58');
INSERT INTO `visitor` VALUES ('283', '172.30.49.29', null, '46617', '172.30.49.29', '2013-04-22 02:24');
INSERT INTO `visitor` VALUES ('284', '172.30.49.28', null, '58680', '172.30.49.28', '2013-04-22 02:30');
INSERT INTO `visitor` VALUES ('285', '172.30.49.32', null, '43764', '172.30.49.32', '2013-04-23 05:52');
INSERT INTO `visitor` VALUES ('286', '172.30.49.30', null, '11106', '172.30.49.30', '2013-04-23 05:44');
INSERT INTO `visitor` VALUES ('287', '172.30.49.30', null, '9616', '172.30.49.30', '2013-04-23 06:38');
INSERT INTO `visitor` VALUES ('288', '172.30.49.29', null, '63366', '172.30.49.29', '2013-04-23 06:34');
INSERT INTO `visitor` VALUES ('289', '172.30.49.32', null, '6026', '172.30.49.32', '2013-04-24 03:56');
INSERT INTO `visitor` VALUES ('290', '172.30.49.30', null, '41735', '172.30.49.30', '2013-04-24 10:55');
INSERT INTO `visitor` VALUES ('291', '172.30.49.28', null, '27551', '172.30.49.28', '2013-04-25 02:36');
INSERT INTO `visitor` VALUES ('292', '172.30.49.27', null, '14482', '172.30.49.27', '2013-04-26 02:00');
INSERT INTO `visitor` VALUES ('293', '172.30.49.32', null, '7780', '172.30.49.32', '2013-04-26 05:42');
INSERT INTO `visitor` VALUES ('294', '172.30.49.29', null, '17939', '172.30.49.29', '2013-04-27 10:12');
INSERT INTO `visitor` VALUES ('295', '172.30.49.27', null, '17297', '172.30.49.27', '2013-04-28 05:19');
INSERT INTO `visitor` VALUES ('296', '172.30.49.30', null, '17933', '172.30.49.30', '2013-04-28 05:41');
INSERT INTO `visitor` VALUES ('297', '172.30.49.28', null, '36806', '172.30.49.28', '2013-04-28 05:23');
INSERT INTO `visitor` VALUES ('298', '172.30.49.28', null, '37560', '172.30.49.28', '2013-04-28 05:10');
INSERT INTO `visitor` VALUES ('299', '172.30.49.28', null, '37659', '172.30.49.28', '2013-04-28 05:17');
INSERT INTO `visitor` VALUES ('300', '172.30.49.28', null, '23667', '172.30.49.28', '2013-04-30 18:38');
INSERT INTO `visitor` VALUES ('301', '172.30.49.29', null, '50209', '172.30.49.29', '2013-05-01 03:16');
INSERT INTO `visitor` VALUES ('302', '172.30.49.29', null, '49226', '172.30.49.29', '2013-05-02 01:53');
INSERT INTO `visitor` VALUES ('303', '172.30.49.29', null, '49620', '172.30.49.29', '2013-05-02 01:25');
INSERT INTO `visitor` VALUES ('304', '172.30.49.29', null, '50519', '172.30.49.29', '2013-05-02 01:42');
INSERT INTO `visitor` VALUES ('305', '172.30.49.32', null, '60408', '172.30.49.32', '2013-05-02 01:33');
