/*
Navicat MySQL Data Transfer

Source Server         : fire
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : property_db_copy

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2021-05-12 21:47:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `login_name` varchar(32) DEFAULT NULL COMMENT '登录后显示的名字',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码（原密码sha1加密  盐值 sha256加密，之后两个相加再进行MD5加密）',
  `salt` varchar(255) DEFAULT NULL COMMENT '加密的盐值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统管理员表 ';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('000001', 'admin', '超级管理员', 'ca9c045633b97ad28affb6ba09b2062e', 'b33cee43-c5f4-4521-aef1-0a508fed2daf');

-- ----------------------------
-- Table structure for `car_park`
-- ----------------------------
DROP TABLE IF EXISTS `car_park`;
CREATE TABLE `car_park` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `owner_name` varchar(32) DEFAULT NULL COMMENT '业主名（如果售出则不可为空）',
  `phone` varchar(32) DEFAULT NULL COMMENT '业主联系电话',
  `park_state` varchar(32) DEFAULT NULL COMMENT '车位状态（0未售出，1已售出）',
  `car_park_type` varchar(64) DEFAULT NULL COMMENT '车位类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='停车场表 ';

-- ----------------------------
-- Records of car_park
-- ----------------------------
INSERT INTO `car_park` VALUES ('000001', '张三', '15599886655', '1', '地下停车位');
INSERT INTO `car_park` VALUES ('000002', '李四', '15566889966', '1', '地下停车位');
INSERT INTO `car_park` VALUES ('000003', '', '', '0', '地下停车位');
INSERT INTO `car_park` VALUES ('000004', '', '', '0', '地下停车位');
INSERT INTO `car_park` VALUES ('000005', '', '', '0', '地下停车位');
INSERT INTO `car_park` VALUES ('000006', '', '', '0', '地下停车位');
INSERT INTO `car_park` VALUES ('000007', '', '', '0', '地面停车位');

-- ----------------------------
-- Table structure for `house_info`
-- ----------------------------
DROP TABLE IF EXISTS `house_info`;
CREATE TABLE `house_info` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `parent_building` varchar(32) DEFAULT NULL COMMENT '所属楼宇',
  `parent_unit` varchar(32) DEFAULT NULL COMMENT '所属单元',
  `parent_floor` varchar(32) DEFAULT NULL COMMENT '所属楼层',
  `house_num` varchar(32) DEFAULT NULL COMMENT '房间号',
  `house_area` varchar(32) DEFAULT NULL COMMENT '房间大小',
  `house_type` varchar(32) DEFAULT NULL COMMENT '房间户型',
  `is_sold` varchar(32) DEFAULT NULL COMMENT '是否售出：0未售出1已售出',
  `owner_name` varchar(32) DEFAULT NULL COMMENT '业主名（如果售出则不可为空）',
  `phone` varchar(32) DEFAULT NULL COMMENT '业主联系电话（如果售出则不可为空）',
  `user_id` int(11) DEFAULT NULL COMMENT '绑定的住户ID（已绑定也代表已售出）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='住房详细信息 ';

-- ----------------------------
-- Records of house_info
-- ----------------------------
INSERT INTO `house_info` VALUES ('000001', '1', '1', '1', '101', '110', '三室一厅一厨两卫', '1', '张三', '15599886655', null);
INSERT INTO `house_info` VALUES ('000002', '1', '1', '1', '102', '110', '三室一厅一厨两卫', '1', '李四', '15566889966', '2');
INSERT INTO `house_info` VALUES ('000003', '1', '1', '2', '201', '110', '三室一厅一厨两卫', '1', '牛头', '19988774455', '4');
INSERT INTO `house_info` VALUES ('000004', '1', '1', '2', '202', '110', '三室一厅一厨两卫', '1', '牛头', '19988774455', '4');
INSERT INTO `house_info` VALUES ('000005', '1', '1', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000006', '1', '1', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000007', '1', '1', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000008', '1', '1', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000009', '1', '1', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000010', '1', '1', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000011', '1', '1', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000012', '1', '1', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000013', '1', '1', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000014', '1', '1', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000015', '1', '2', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000016', '1', '2', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000017', '1', '2', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000018', '1', '2', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000019', '1', '2', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000020', '1', '2', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000021', '1', '2', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000022', '1', '2', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000023', '1', '2', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000024', '1', '2', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000025', '1', '2', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000026', '1', '2', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000027', '1', '2', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000028', '1', '2', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000029', '1', '3', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000030', '1', '3', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000031', '1', '3', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000032', '1', '3', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000033', '1', '3', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000034', '1', '3', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000035', '1', '3', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000036', '1', '3', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000037', '1', '3', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000038', '1', '3', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000039', '1', '3', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000040', '1', '3', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000041', '1', '3', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000042', '1', '3', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000043', '2', '1', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000044', '2', '1', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000045', '2', '1', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000046', '2', '1', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000047', '2', '1', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000048', '2', '1', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000049', '2', '1', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000050', '2', '1', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000051', '2', '1', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000052', '2', '1', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000053', '2', '1', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000054', '2', '1', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000055', '2', '1', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000056', '2', '1', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000057', '2', '2', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000058', '2', '2', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000059', '2', '2', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000060', '2', '2', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000061', '2', '2', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000062', '2', '2', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000063', '2', '2', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000064', '2', '2', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000065', '2', '2', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000066', '2', '2', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000067', '2', '2', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000068', '2', '2', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000069', '2', '2', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000070', '2', '2', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000071', '2', '3', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000072', '2', '3', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000073', '2', '3', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000074', '2', '3', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000075', '2', '3', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000076', '2', '3', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000077', '2', '3', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000078', '2', '3', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000079', '2', '3', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000080', '2', '3', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000081', '2', '3', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000082', '2', '3', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000083', '2', '3', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000084', '2', '3', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000085', '3', '1', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000086', '3', '1', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000087', '3', '1', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000088', '3', '1', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000089', '3', '1', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000090', '3', '1', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000091', '3', '1', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000092', '3', '1', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000093', '3', '1', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000094', '3', '1', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000095', '3', '1', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000096', '3', '1', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000097', '3', '1', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000098', '3', '1', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000099', '3', '2', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000100', '3', '2', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000101', '3', '2', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000102', '3', '2', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000103', '3', '2', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000104', '3', '2', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000105', '3', '2', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000106', '3', '2', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000107', '3', '2', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000108', '3', '2', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000109', '3', '2', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000110', '3', '2', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000111', '3', '2', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000112', '3', '2', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000113', '3', '3', '1', '101', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000114', '3', '3', '1', '102', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000115', '3', '3', '2', '201', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000116', '3', '3', '2', '202', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000117', '3', '3', '3', '301', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000118', '3', '3', '3', '302', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000119', '3', '3', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000120', '3', '3', '4', '401', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000121', '3', '3', '5', '501', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000122', '3', '3', '5', '502', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000123', '3', '3', '6', '601', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000124', '3', '3', '6', '602', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000125', '3', '3', '7', '701', '110', '三室一厅一厨两卫', '0', null, null, null);
INSERT INTO `house_info` VALUES ('000126', '3', '3', '7', '702', '110', '三室一厅一厨两卫', '0', null, null, null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `parent_id` int(6) unsigned zerofill DEFAULT NULL COMMENT '父菜单ID',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `url` varchar(512) DEFAULT NULL COMMENT '跳转地址',
  `icon_name` varchar(255) DEFAULT NULL COMMENT '图标名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('000001', null, '楼宇管理', 'building/toBuildingPage', '&#xe6fc;');
INSERT INTO `menu` VALUES ('000002', null, '住房管理', 'house/toHousePage', '&#xe6fb;');
INSERT INTO `menu` VALUES ('000005', null, '物业管理', '', '&#xe726;');
INSERT INTO `menu` VALUES ('000003', null, '车位管理', 'carPark/toCarParkPage', '&#xe6e3;');
INSERT INTO `menu` VALUES ('000051', '000005', '收费项目管理', 'propertyChargeItem/toPropertyChargeItemPage', '&#xe6ab;');
INSERT INTO `menu` VALUES ('000052', '000005', '抄表管理', 'propertyChargeVisit/toPropertyChargeVisitPage', '&#xe6a2;');
INSERT INTO `menu` VALUES ('000053', '000005', '缴费记录管理', 'propertyPayVisit/toPropertyPayVisitPage', '&#xe70c;');
INSERT INTO `menu` VALUES ('000004', null, '业主管理', 'user/toUserPage', '&#xe6b8;');
INSERT INTO `menu` VALUES ('000007', null, '投诉管理', 'userComplaint/toUserComplaintPage', '&#xe6c7;');
INSERT INTO `menu` VALUES ('000006', null, '报修管理', 'userRepair/toUserRepairPage', '&#xe6d4;');
INSERT INTO `menu` VALUES ('000011', null, '系统管理', 'adminInfo/toAdminPage', '&#xe70b;');

-- ----------------------------
-- Table structure for `menu_admin_relation`
-- ----------------------------
DROP TABLE IF EXISTS `menu_admin_relation`;
CREATE TABLE `menu_admin_relation` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` int(6) unsigned zerofill DEFAULT NULL COMMENT '管理员ID',
  `menu_id` int(6) unsigned zerofill DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='菜单与管理员管理表';

-- ----------------------------
-- Records of menu_admin_relation
-- ----------------------------
INSERT INTO `menu_admin_relation` VALUES ('000001', '000001', '000001');
INSERT INTO `menu_admin_relation` VALUES ('000002', '000001', '000002');
INSERT INTO `menu_admin_relation` VALUES ('000003', '000001', '000003');
INSERT INTO `menu_admin_relation` VALUES ('000004', '000001', '000005');
INSERT INTO `menu_admin_relation` VALUES ('000005', '000001', '000051');
INSERT INTO `menu_admin_relation` VALUES ('000006', '000001', '000052');
INSERT INTO `menu_admin_relation` VALUES ('000007', '000001', '000053');
INSERT INTO `menu_admin_relation` VALUES ('000008', '000001', '000004');
INSERT INTO `menu_admin_relation` VALUES ('000009', '000001', '000007');
INSERT INTO `menu_admin_relation` VALUES ('000010', '000001', '000006');
INSERT INTO `menu_admin_relation` VALUES ('000011', '000001', '000011');
INSERT INTO `menu_admin_relation` VALUES ('000012', '000003', '000001');
INSERT INTO `menu_admin_relation` VALUES ('000013', '000003', '000002');
INSERT INTO `menu_admin_relation` VALUES ('000014', '000003', '000005');
INSERT INTO `menu_admin_relation` VALUES ('000015', '000003', '000003');
INSERT INTO `menu_admin_relation` VALUES ('000016', '000003', '000051');
INSERT INTO `menu_admin_relation` VALUES ('000017', '000003', '000052');
INSERT INTO `menu_admin_relation` VALUES ('000018', '000003', '000053');
INSERT INTO `menu_admin_relation` VALUES ('000019', '000003', '000004');
INSERT INTO `menu_admin_relation` VALUES ('000020', '000003', '000007');
INSERT INTO `menu_admin_relation` VALUES ('000021', '000003', '000006');
INSERT INTO `menu_admin_relation` VALUES ('000022', '000003', '000011');
INSERT INTO `menu_admin_relation` VALUES ('000023', '000004', '000001');
INSERT INTO `menu_admin_relation` VALUES ('000024', '000004', '000002');
INSERT INTO `menu_admin_relation` VALUES ('000025', '000004', '000005');
INSERT INTO `menu_admin_relation` VALUES ('000026', '000004', '000003');
INSERT INTO `menu_admin_relation` VALUES ('000027', '000004', '000051');
INSERT INTO `menu_admin_relation` VALUES ('000028', '000004', '000052');
INSERT INTO `menu_admin_relation` VALUES ('000029', '000004', '000053');
INSERT INTO `menu_admin_relation` VALUES ('000030', '000004', '000004');
INSERT INTO `menu_admin_relation` VALUES ('000031', '000004', '000007');
INSERT INTO `menu_admin_relation` VALUES ('000032', '000004', '000006');
INSERT INTO `menu_admin_relation` VALUES ('000033', '000004', '000011');

-- ----------------------------
-- Table structure for `property_charge_item`
-- ----------------------------
DROP TABLE IF EXISTS `property_charge_item`;
CREATE TABLE `property_charge_item` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `charge_name` varchar(32) DEFAULT NULL COMMENT '收费项目名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `item_price` int(11) DEFAULT NULL COMMENT '项目单价',
  `price_desc` varchar(255) DEFAULT NULL COMMENT '价格描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='物业收费项目信息表 ';

-- ----------------------------
-- Records of property_charge_item
-- ----------------------------
INSERT INTO `property_charge_item` VALUES ('000001', '物业费', '2021-04-18 16:45:45', '500', '每平米0.5元');
INSERT INTO `property_charge_item` VALUES ('000002', '水费', '2021-04-18 16:47:29', '280', '每立方米2.8元');
INSERT INTO `property_charge_item` VALUES ('000003', '电费', '2021-04-18 16:47:46', '55', '每度电0.55元，无梯度增长');
INSERT INTO `property_charge_item` VALUES ('000004', '测试收费项1', '2021-04-18 16:54:05', '0', '测试数据');
INSERT INTO `property_charge_item` VALUES ('000005', '测试收费项2', '2021-04-18 16:54:09', '0', '测试数据');
INSERT INTO `property_charge_item` VALUES ('000006', '测试收费项3', '2021-04-18 16:54:14', '0', '测试数据');

-- ----------------------------
-- Table structure for `property_charge_visit`
-- ----------------------------
DROP TABLE IF EXISTS `property_charge_visit`;
CREATE TABLE `property_charge_visit` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `item_id` int(11) DEFAULT NULL COMMENT '收费项目ID',
  `item_name` varchar(64) DEFAULT NULL COMMENT '收费项名称',
  `house_id` int(11) DEFAULT NULL COMMENT '住房ID',
  `building_num` varchar(32) DEFAULT NULL COMMENT '楼宇号',
  `unit_num` varchar(32) DEFAULT NULL COMMENT '单元号',
  `house_num` varchar(32) DEFAULT NULL COMMENT '房间号',
  `user_name` varchar(32) DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '客户手机号',
  `price` int(11) DEFAULT NULL COMMENT '费用',
  `prev_month_count` int(11) DEFAULT NULL COMMENT '上月读数',
  `curr_month_count` int(11) DEFAULT NULL COMMENT '本月读数',
  `use_count` int(11) DEFAULT NULL COMMENT '本次用量',
  `visit_date` datetime DEFAULT NULL COMMENT '录入时间',
  `read_date` datetime DEFAULT NULL COMMENT '抄表时间',
  `read_name` varchar(32) DEFAULT NULL COMMENT '抄表人',
  `visit_status` varchar(32) DEFAULT NULL COMMENT '记录状态（0已缴费  1未交费）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物业收费记录信息表 ';

-- ----------------------------
-- Records of property_charge_visit
-- ----------------------------
INSERT INTO `property_charge_visit` VALUES ('000001', '1', '物业费', '1', '1', '1', '101', '张三', '15599886655', '5500', null, null, null, null, '2021-04-18 00:00:00', '测试', '0');
INSERT INTO `property_charge_visit` VALUES ('000002', '3', '电费', '1', '1', '1', '101', '张三', '15599886655', '8250', '0', '150', '150', null, '2021-04-18 00:00:00', '测试', '0');
INSERT INTO `property_charge_visit` VALUES ('000004', '2', '水费', '1', '1', '1', '101', '张三', '15599886655', '4200', '0', '15', '15', null, '2021-04-18 00:00:00', '测试', '0');
INSERT INTO `property_charge_visit` VALUES ('000005', '1', '物业费', '1', '1', '1', '101', '张三', '15599886655', '4545', null, '62', '15', null, '2021-05-01 00:00:00', 'admin', '0');
INSERT INTO `property_charge_visit` VALUES ('000006', '2', '水费', '3', '1', '1', '201', '牛头', '19988774455', '4200', '0', '15', '15', null, '2021-05-01 00:00:00', '测试', '1');
INSERT INTO `property_charge_visit` VALUES ('000007', '3', '电费', '3', '1', '1', '201', '牛头', '19988774455', '11000', '0', '200', '200', null, '2021-05-01 00:00:00', '测试', '0');
INSERT INTO `property_charge_visit` VALUES ('000008', '3', '电费', '4', '1', '1', '202', '牛头', '19988774455', '25025', '0', '455', '455', null, '2021-05-01 00:00:00', '1', '1');

-- ----------------------------
-- Table structure for `property_pay_visit`
-- ----------------------------
DROP TABLE IF EXISTS `property_pay_visit`;
CREATE TABLE `property_pay_visit` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `charge_id` int(11) NOT NULL COMMENT '对应物业收费记录表的ID',
  `building_num` varchar(32) DEFAULT NULL COMMENT '楼宇号',
  `unit_num` varchar(32) DEFAULT NULL COMMENT '单元号',
  `house_num` varchar(32) DEFAULT NULL COMMENT '房间号',
  `client_name` varchar(32) DEFAULT NULL COMMENT '客户姓名',
  `item_name` varchar(32) DEFAULT NULL COMMENT '收费项目',
  `pay_money` int(11) DEFAULT NULL COMMENT '缴费金额（单位：分）',
  `pay_type` varchar(32) DEFAULT NULL COMMENT '缴费方式',
  `charge_person` varchar(32) DEFAULT NULL COMMENT '收费人员',
  `pay_date` datetime DEFAULT NULL COMMENT '缴费时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物业缴费记录信息表 ';

-- ----------------------------
-- Records of property_pay_visit
-- ----------------------------
INSERT INTO `property_pay_visit` VALUES ('000001', '1', '1', '1', '101', '张三', '物业费', '5500', '支付宝', '测试', '2021-04-18 23:08:03');
INSERT INTO `property_pay_visit` VALUES ('000002', '7', '1', '1', '201', '牛头', '电费', '11000', '现金', '测试', '2021-05-11 14:04:00');
INSERT INTO `property_pay_visit` VALUES ('000003', '4', '1', '1', '101', '张三', '水费', '4200', '现金', '1', '2021-05-11 15:11:03');
INSERT INTO `property_pay_visit` VALUES ('000004', '5', '1', '1', '101', '张三', '物业费', '4545', '现金', '1', '2021-05-11 15:22:26');
INSERT INTO `property_pay_visit` VALUES ('000005', '2', '1', '1', '101', '张三', '电费', '8250', '现金', '1', '2021-05-11 15:25:21');

-- ----------------------------
-- Table structure for `unit_building`
-- ----------------------------
DROP TABLE IF EXISTS `unit_building`;
CREATE TABLE `unit_building` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `building_num` int(11) DEFAULT NULL COMMENT '楼宇号',
  `unit_count` int(11) DEFAULT NULL COMMENT '单元数量',
  `floor_count` int(11) DEFAULT NULL COMMENT '楼层',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='楼宇信息表 ';

-- ----------------------------
-- Records of unit_building
-- ----------------------------
INSERT INTO `unit_building` VALUES ('000001', '1', '3', '7');
INSERT INTO `unit_building` VALUES ('000002', '2', '3', '7');
INSERT INTO `unit_building` VALUES ('000003', '3', '3', '7');
INSERT INTO `unit_building` VALUES ('000004', '5', '2', '21');
INSERT INTO `unit_building` VALUES ('000005', '6', '2', '21');
INSERT INTO `unit_building` VALUES ('000007', '7', '3', '21');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(128) DEFAULT NULL COMMENT '用户姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话',
  `card_num` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `nation` varchar(32) DEFAULT NULL COMMENT '民族',
  `register_address` varchar(32) DEFAULT NULL COMMENT '户籍地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='住户信息表 ';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('000001', '张三', '15555555555', '11010519491231001X', '男', null, '北京');
INSERT INTO `user` VALUES ('000002', '李四', '17777777777', '11010519491231004X', '女', null, '北京');
INSERT INTO `user` VALUES ('000003', '张四', '16666666666', '11010519791231003X', '男', null, '北京');
INSERT INTO `user` VALUES ('000004', '牛头', '19988774455', '14010519491231005X', '男', null, '山西');
INSERT INTO `user` VALUES ('000005', '马面', '18877556633', '15010519491231004X', '女', null, '内蒙古');

-- ----------------------------
-- Table structure for `user_complaint`
-- ----------------------------
DROP TABLE IF EXISTS `user_complaint`;
CREATE TABLE `user_complaint` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(32) DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '客户电话',
  `complaint_info` varchar(32) DEFAULT NULL COMMENT '投诉信息',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `is_solve` varchar(4) DEFAULT NULL COMMENT '是否处理 0未处理 1已处理',
  `user_id` int(11) DEFAULT NULL COMMENT '对应的用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户投诉信息表 ';

-- ----------------------------
-- Records of user_complaint
-- ----------------------------
INSERT INTO `user_complaint` VALUES ('000001', '张三', '15599886655', '楼下半夜总是很吵', '2021-04-18 03:30:32', '1', '1');
INSERT INTO `user_complaint` VALUES ('000002', '张三', '15599886655', '卫生太差', '2021-04-18 14:11:37', '1', '1');
INSERT INTO `user_complaint` VALUES ('000003', '张三', '15599886655', '我要投诉卫生太差', '2021-04-18 18:08:41', '0', '1');
INSERT INTO `user_complaint` VALUES ('000004', '张三', '15599886655', 'asdasdasda', '2021-04-29 16:54:10', '0', '1');

-- ----------------------------
-- Table structure for `user_repair`
-- ----------------------------
DROP TABLE IF EXISTS `user_repair`;
CREATE TABLE `user_repair` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(32) DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '客户电话',
  `repair_info` varchar(32) DEFAULT NULL COMMENT '报修信息',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `is_solve` varchar(4) DEFAULT NULL COMMENT '是否处理 0未处理 1已处理',
  `user_id` int(11) DEFAULT NULL COMMENT '对应的用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户报修信息表 ';

-- ----------------------------
-- Records of user_repair
-- ----------------------------
INSERT INTO `user_repair` VALUES ('000003', '张三', '15599886655', '水管有点堵塞', '2021-04-18 03:53:50', '1', '1');
INSERT INTO `user_repair` VALUES ('000004', '张三', '15599886655', '暖气不热', '2021-04-18 14:12:13', '1', '1');
INSERT INTO `user_repair` VALUES ('000005', '张三', '15599886655', '下水管坏了', '2021-04-18 18:08:21', '1', '1');
INSERT INTO `user_repair` VALUES ('000006', '张三', '15599886655', '123', '2021-04-21 12:28:01', '1', '1');
INSERT INTO `user_repair` VALUES ('000007', '张三', '15599886655', 'aaaaaaaaaaaaaaaaa', '2021-04-29 16:54:00', '1', '1');
INSERT INTO `user_repair` VALUES ('000008', '张三', '15599886655', '楼塌了', '2021-05-11 13:47:48', '1', '1');

-- ----------------------------
-- Table structure for `user_unit_relation`
-- ----------------------------
DROP TABLE IF EXISTS `user_unit_relation`;
CREATE TABLE `user_unit_relation` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `unit_id` int(11) DEFAULT NULL COMMENT '住房ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `is_house_holder` varchar(4) DEFAULT NULL COMMENT '是否是户主 1是  0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户与住房关系对应表 ';

-- ----------------------------
-- Records of user_unit_relation
-- ----------------------------
INSERT INTO `user_unit_relation` VALUES ('000001', '1', '1', '2021-04-18 22:58:51', '1');
INSERT INTO `user_unit_relation` VALUES ('000002', '2', '2', '2021-04-18 21:30:19', '1');
INSERT INTO `user_unit_relation` VALUES ('000008', '3', '1', '2021-04-18 00:51:47', '0');
INSERT INTO `user_unit_relation` VALUES ('000009', '4', '3', '2021-04-29 16:14:20', '1');
INSERT INTO `user_unit_relation` VALUES ('000010', '4', '4', '2021-04-29 16:56:17', '1');
