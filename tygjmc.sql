/*
 Navicat Premium Data Transfer

 Source Server         : 天逸国际名车
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 192.168.100.11:3306
 Source Schema         : tygjmc

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 21/09/2019 09:11:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_about_we
-- ----------------------------
DROP TABLE IF EXISTS `t_about_we`;
CREATE TABLE `t_about_we`  (
  `about_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `about_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `about_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `about_eglishname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `about_no` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`about_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_about_we
-- ----------------------------
INSERT INTO `t_about_we` VALUES ('25d14c9835a64f74bcb13728435b15d2', '企业简介', '天逸凯腾汽车贸易有限公司成立于2016年，坚持\"以科学管理创效益，以优质服务求发展\"的宗旨，实行低成本、低利润、高服务的营销策略来争取用户，占领市场，针对市场找差距，找对策，对用户实施\"三满意\"政策，即\"质量满意、服务满意、价格满意\"，以客户需求为导向，制定适应市场变化的营销方针满足不同客户群体的需求。', 'Introduce', 10);
INSERT INTO `t_about_we` VALUES ('626b995089cf4b8c9822770248fcc6fa', '天逸愿景', '致力于成为中国汽车销售服务连锁行业的领跑者', 'Vision', 20);
INSERT INTO `t_about_we` VALUES ('c47552b5c9b748d3a0e952f81bd18d99', '服务宗旨', '我们不生产车，我们只是世界名车的搬运工\r\n以诚为本、服务至上，秉承形象与品牌', 'Purpose', 30);
INSERT INTO `t_about_we` VALUES ('dd65eddd4421458ba312f2bddb268dfc', '核心价值观', '精准-标准化的流程为客户提供最满意的服务\r\n诚信-正直诚信的经营我们的品牌资产\r\n团队-把供应商看作我们精英团队的一份子\r\n创新-专注于客户和公司有影响力的创新', 'Idea', 40);

-- ----------------------------
-- Table structure for t_car_problem
-- ----------------------------
DROP TABLE IF EXISTS `t_car_problem`;
CREATE TABLE `t_car_problem`  (
  `problem_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `problem_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `problem_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `problem_status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`problem_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_car_problem
-- ----------------------------
INSERT INTO `t_car_problem` VALUES ('05f459ce7cd94270b1e21afdfec0ff9a', 'aa', 'aaaaa', '1');
INSERT INTO `t_car_problem` VALUES ('759cec908fd44f04aeb98179fba00fbb', '什么是平行进口汽车\r\n\r\n什么是平行进口汽车\r\n\r\n什么是aaa', '进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利进口车简单的说，可以分为两类，一：中规进口，二：平行进口。中规进口：简单的说就是有厂商授权，并且引进到中国市场。比如说丰田中国，宾利利', '1');
INSERT INTO `t_car_problem` VALUES ('7d0dc4ee9b314ecda452d5b8a5c8c107', 'aa44', '实打实\r\n三大', '1');

-- ----------------------------
-- Table structure for t_contact_we
-- ----------------------------
DROP TABLE IF EXISTS `t_contact_we`;
CREATE TABLE `t_contact_we`  (
  `we_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `we_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `we_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `we_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `we_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `we_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `we_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`we_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_contact_we
-- ----------------------------
INSERT INTO `t_contact_we` VALUES ('0d450d0326fe4854ba3e18dd313a8fb9', '湖南天逸凯腾汽车贸易有限公司', '0731-82181033', 'postmaster@creatorblue.com', '湖南省长沙市望城区雷锋大道', '1', NULL);

-- ----------------------------
-- Table structure for t_goods_brandlog
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_brandlog`;
CREATE TABLE `t_goods_brandlog`  (
  `brand_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_goods_brandlog
-- ----------------------------
INSERT INTO `t_goods_brandlog` VALUES ('04dcaebbd9a049798a78d215397926fe', '路虎', '/upload/sign1.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('13e95e4b6b4f4933be602b153fcf88c6', '奥迪', '/upload/sign5.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('18b7002d19344311ab138b99e29750df', '奔驰', '/upload/sign11.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('23213cae7a444ea1976a1686e3408904', '玛莎拉蒂', '/upload/sign10.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('346c490a51c7417b8180189444fa2208', '英菲尼迪', '/upload/sign7.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('3ff5c8ac80e948ff8dc148d304bf7117', '大众', '/upload/sign2.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('4d2e66b8ceb34266a4e18077e67c1d12', '捷豹', '/upload/sign6.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('4f0fdb7ca3a249a9954e9f9b29d0a7cb', '宾利', '/upload/sign12.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('53a0450e960f42ef93f5b514818dc7b4', '雪佛兰', '/upload/sign15.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('61fe251437d14aebbbae362a6a6e717d', '林肯', '/upload/sign14.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('697102f5379a46619061eb628811e785', '凯迪拉克', '/upload/sign9.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('89b4068857bc48e494c375c975115026', 'mini', '/upload/sign3.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('cd2b75982e0043fa851e1c4e2b5762f3', '宝马', '/upload/sign8.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('d9df94e71b624ca182aa914064f9b1a8', '雷克萨斯', '/upload/sign13.jpg', '1');
INSERT INTO `t_goods_brandlog` VALUES ('eb665ce7b37741d0850d00db14f8f56a', '丰田', '/upload/sign4.jpg', '1');

-- ----------------------------
-- Table structure for t_goods_car
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_car`;
CREATE TABLE `t_goods_car`  (
  `car_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `car_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_price` float(10, 0) NULL DEFAULT NULL,
  `car_discountprice` float(10, 0) NULL DEFAULT NULL,
  `car_describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `car_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specifications_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_guarantee` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_createname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_updatetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_updatename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_publishtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_url1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_url2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_url3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_url4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_starprice` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_endprice` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`car_id`) USING BTREE,
  INDEX `specifications_id`(`specifications_id`) USING BTREE,
  INDEX `car_state`(`car_state`) USING BTREE,
  INDEX `brand_id`(`brand_id`) USING BTREE,
  INDEX `car_starprice`(`car_starprice`) USING BTREE,
  INDEX `car_endprice`(`car_endprice`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_goods_car
-- ----------------------------
INSERT INTO `t_goods_car` VALUES ('0a62462bddc24930a7a511e137b02727', '路虎拉斯女神', 130, 122, '越野性能超强，英国血统。', '1', '墨规', '黑色', '全国联保', '2019-09-12 15:28:19', '超级管理员', '2019-09-17 15:56:49', '超级管理员', NULL, '/upload/trending-car-img-4 - 副本.jpg', '/upload/trending-car-img-4.jpg', '/upload/trending-car-img-10 - 副本.jpg', '/upload/trending-car-img-10.jpg', '路虎', NULL, NULL);
INSERT INTO `t_goods_car` VALUES ('35d68cec89194778aa84c601e6be9bdc', 'E300顶配版', 91, 90, '豪华轿车，自动驾驶，内饰奢华，强劲动力', '1', '墨规', '黑色', '全国联保', '2019-09-12 15:26:39', '超级管理员', '2019-09-17 15:56:31', '超级管理员', NULL, '/upload/trending-car-img-5 - 副本 (2).jpg', '/upload/trending-car-img-5 - 副本 (3).jpg', '/upload/trending-car-img-5 - 副本.jpg', '/upload/trending-car-img-5.jpg', '奔驰', NULL, NULL);
INSERT INTO `t_goods_car` VALUES ('3c877f10a4b14c65a49af9456c6597eb', '揽胜', 140, 122, '路虎揽胜，巨型SUV', '1', '中规', '黑色', '全国联保', '2019-09-17 17:43:37', '超级管理员', NULL, NULL, '2019-09-17 17:43:37', '/upload/trending-car-img-4 - 副本 - 副本.jpg', '/upload/trending-car-img-4 - 副本 (2).jpg', '/upload/trending-car-img-4 - 副本.jpg', '/upload/trending-car-img-4.jpg', '路虎', '0', '10000');
INSERT INTO `t_goods_car` VALUES ('3fe94e5f348c4b67b26e665577fbdb0a', '宝马M3', 60, 45, '我单位起钉器无大青蛙多群无多群无多', '1', '欧规', '黑色', '全国联保', '2019-09-12 15:26:22', '超级管理员', '2019-09-17 15:56:14', '超级管理员', NULL, '/upload/trending-car-img-13 - 副本 (2).jpg', '/upload/trending-car-img-13 - 副本 (3).jpg', '/upload/trending-car-img-13 - 副本.jpg', '/upload/trending-car-img-13.jpg', '宝马', NULL, NULL);
INSERT INTO `t_goods_car` VALUES ('51026c6fefe04fb794c4044a42d3c235', '辉腾', 100, 98, '低调奢华，富有内涵。', '1', '墨规', '黑色', '全国联保', '2019-09-17 17:41:58', '超级管理员', '2019-09-20 20:55:09', '超级管理员', '2019-09-17 17:41:58', '/upload/trending-car-img-9.jpg', '/upload/trending-car-img-10.jpg', '/upload/trending-car-img-11.jpg', '/upload/trending-car-img-12.jpg', NULL, '0', '10000');
INSERT INTO `t_goods_car` VALUES ('5846e22cfc0d4ea99e39b9f0f8acf73b', '奥迪A6', 50, 44, '德系汽车，工匠精神。', '1', '美规', '黑色', '全国联保', '2019-09-17 15:59:16', '超级管理员', NULL, NULL, '2019-09-17 15:59:16', '/upload/53356060 - 副本.jpg', '/upload/53356060.jpg', '/upload/t015817b147fd532642 - 副本.jpg', '/upload/t015817b147fd532642.jpg', '奥迪', '0', '10000');
INSERT INTO `t_goods_car` VALUES ('b132a28916264331917927833e3cbed3', '玛莎拉蒂GT', 100, 89, '轿跑车型，自动驾驶，水晶漆面，狂暴动力。', '1', '美规', '黑色', '全国联保', '2019-09-12 15:25:58', '超级管理员', '2019-09-17 15:55:52', '超级管理员', NULL, '/upload/3836520_124525592000_2.jpg', '/upload/t01f0103dbbeb2f06f0 - 副本 (2).jpg', '/upload/t01f0103dbbeb2f06f0 - 副本.jpg', '/upload/t01f0103dbbeb2f06f0.jpg', '玛莎拉蒂', NULL, NULL);
INSERT INTO `t_goods_car` VALUES ('b31d0288ff984b369dc86bc7b5d34c12', '大黄蜂', 45, 44, '变形金刚大黄蜂原型', '1', '墨规', '黄色', '全国联保', '2019-09-17 17:39:23', '超级管理员', NULL, NULL, '2019-09-17 17:39:23', '/upload/Img313939823.jpg', '/upload/t01f9bbf6edb42f4216 - 副本.jpg', '/upload/t01f9bbf6edb42f4216.jpg', '/upload/t015e4c718ee2d4b145.jpg', '雪佛兰', '0', '10000');
INSERT INTO `t_goods_car` VALUES ('cdd0d3f2267f4a92a0cd77d1ab225208', '林肯加长', 111, 109, '美国总统专用车', '1', '美规', '黑色', '全国联保', '2019-09-17 16:00:57', '超级管理员', NULL, NULL, '2019-09-17 16:00:57', '/upload/20180719154539_81d95b0cee414d68e547f0e746acde9e_5 - 副本.jpeg', '/upload/20180719154539_81d95b0cee414d68e547f0e746acde9e_5.jpeg', '/upload/t0131bf4a7ab5c585f7 - 副本.jpg', '/upload/t0131bf4a7ab5c585f7.jpg', '林肯', '0', '10000');
INSERT INTO `t_goods_car` VALUES ('cf30b88f3d7b44b98c75126abddf1a38', '丰田', 40, 34, '中规中矩，平顺的动力。', '1', '墨规', '黑色', '全国联保', '2019-09-12 15:27:52', '超级管理员', '2019-09-17 15:55:30', '超级管理员', NULL, '/upload/744x0_1_autohomecar__ChsEoFx027qACDm7AAJ-1n6Pe9w570 - 副本 (2).jpg', '/upload/744x0_1_autohomecar__ChsEoFx027qACDm7AAJ-1n6Pe9w570 - 副本.jpg', '/upload/744x0_1_autohomecar__ChsEoFx027qACDm7AAJ-1n6Pe9w570.jpg', '/upload/trending-car-img-2.jpg', '丰田', NULL, NULL);
INSERT INTO `t_goods_car` VALUES ('d8f7eb9f94584946abe7c21c254f980b', '英菲尼迪Qa7', 79, 65, '日系豪车，全景天窗', '1', '中规', '黑色', '全国联保', '2019-09-17 16:04:46', '超级管理员', NULL, NULL, '2019-09-17 16:04:46', '/upload/7791481 - 副本.jpg', '/upload/7791481.jpg', '/upload/2010092617274546_6 - 副本.jpg', '/upload/2010092617274546_6.jpg', '英菲尼迪', '0', '10000');
INSERT INTO `t_goods_car` VALUES ('de526bad114f47fb98511acba2657ed8', '凯迪拉克ATS', 37, 31, '美系汽车，经济实惠。', '1', '美规', '红色', '全国联保', '2019-09-17 17:37:10', '超级管理员', NULL, NULL, '2019-09-17 17:37:10', '/upload/t01d47689dc09167cc7.jpg', '/upload/t01ff6dedc27b2c6d30.jpg', '/upload/t016b74e09f15f0f7bc - 副本.jpg', '/upload/t016b74e09f15f0f7bc.jpg', '凯迪拉克', '0', '10000');
INSERT INTO `t_goods_car` VALUES ('ece2df8879f347529b1351f9a8caf708', 'miniGT', 36, 34, '小巧方便，女士专用。', '1', '中规', '黑色', '全国联保', '2019-09-17 14:36:53', '超级管理员', NULL, NULL, '2019-09-17 14:36:53', '/upload/4c85759863c8c - 副本.jpg', '/upload/4c85759863c8c.jpg', '/upload/0038038041869004_b - 副本.jpg', '/upload/0038038041869004_b.jpg', 'mini', '0', '10000');

-- ----------------------------
-- Table structure for t_management_new
-- ----------------------------
DROP TABLE IF EXISTS `t_management_new`;
CREATE TABLE `t_management_new`  (
  `new_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `new_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `new_sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_createtime` datetime NULL DEFAULT NULL,
  `new_createname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_publishtime` datetime NULL DEFAULT NULL,
  `new_publishname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_brief` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻简介',
  PRIMARY KEY (`new_id`) USING BTREE,
  INDEX `new_state`(`new_state`) USING BTREE,
  INDEX `new_sort`(`new_sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_management_new
-- ----------------------------
INSERT INTO `t_management_new` VALUES ('1', '2', '2', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', '2019-09-05 20:17:41', '22', '2019-09-18 20:17:48', '232', '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('2', '232424', '<p>目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。</p>', '1', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', '2019-09-05 20:17:41', '22', '2019-09-09 14:09:29', '超级管理员', '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('2e7a77deabc44d7aa6a37ca31b709c0f', '131231', '<p>顶顶顶顶顶顶顶顶顶顶</p>', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('2e7a77deabc44d7aa6a37ca31b709c75', '说的方式的方式分', 'serif;\">4444444</span></strong></li></ol>', '1', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', '2019-09-05 20:17:41', '5572', '2019-09-05 20:17:41', '5785', '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('3f568267377849deb4acfea7e637b65a', '1231', NULL, '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('4133bc828f2b4acebfe21bb4e1ae6f1c', '131231', '<p>1111</p>', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('44ea3874c37a408ebcd1aae14584cd91', '131231', '<p>11111</p>', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('4bd15fbf329a4747940b5b0a2e3ba523', '汽车模块的撒打算', '<p>单位单位多翁多翁多翁多翁多翁regergergergergregtht<img src=\"http://localhost:8080\\upload\\attachments\\articleImages\\86006261.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">dwdwdwdwdwdwdwwwwwwwwwwwwwwwww</p>', '0', '0', '/upload/2019-09-18/15687741592634c85759863c8c - 副本.jpg', '2019-09-18 10:35:59', '超级管理员', NULL, NULL, '店内新产品，热销d');
INSERT INTO `t_management_new` VALUES ('535a5eaf8026436c9f28e0175921d66d', '255', '<ol style=\"margin-left: 60px; list-style-type: lower-alpha;\"><li><strong><span style=\"font-family: Impact,Charcoal,sans-serif;\">4444444</span></strong></li></ol>', '0', '2', '/upload/2019-09-04/1567598751468TIM图片20190714205122.jpg', '2019-09-04 20:05:51', '超级管理员', '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('6909484410c147d9b42f633badcefd06', '啊企鹅请问', '<p>大苏打撒旦</p>', '0', '2', '/upload/2019-09-04/1567598751468TIM图片20190714205122.jpg', '2019-09-04 20:26:28', '超级管理员', '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('6b3dfad495b24d05b6fa44f9b3ae6055', '131231', '<p>1222</p>', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('6b3dfad495b24d05b6fa44f9b3ae606a', '131231', '<p>1222</p>', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('6b3dfad495b24d05b6fa44f9b3ae6455', '131231', '<p>1222</p>', '1', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('7472ce14eadb494d9206eeb825ced64f', '汽车新产品', '<p>店内新产品，热销<img src=\"http://localhost:8080\\upload\\attachments\\articleImages\\76223891.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', '1', '0', '/upload/2019-09-18/1568773915972t01f0103dbbeb2f06f0.jpg', '2019-09-18 10:31:55', '超级管理员', NULL, NULL, '店内新产品，热销');
INSERT INTO `t_management_new` VALUES ('7c91f851a6ae429c9e94f5721e9786ca', '32434343', '<p>3242432424</p>', '0', '2', '/upload/2019-09-04/1567598751468TIM图片20190714205122.jpg', '2019-09-04 20:25:21', '超级管理员', '2019-09-09 08:57:08', '超级管理员', '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('856a6a1305704b6dab61e402c703087e', '123123', NULL, '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('94c552409d3a4a8e8a3009efea16df34', '131231', '<p>4444</p>', '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', '2019-09-04 19:30:27', '超级管理员', '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('97cbd71852994f6c9d9b9017d674b3b3', '12312', '<p>1234567</p>', '0', '2', '/upload/2019-09-04/1567598818897TIM图片20190714205122.jpg', '2019-09-04 20:06:58', '超级管理员', '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('9e41b39175d0415aa221940fc617359b', 'adasdasd', '<p>qweqweqeqe</p>', '1', '2', '/upload/2019-09-17/1568688384640啊啊 凤飞飞.jpg', '2019-09-17 10:46:24', '超级管理员', '2019-09-17 11:34:25', '超级管理员', '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('b38d07856ef54e55920ec9060baca55f', '123123', NULL, '0', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('b3ac1066090642128c16ae0576e6d62d', '汽车模块要加油', '<p>11111111111111111111111111111111111111111111111111<img src=\"http://localhost:8080\\upload\\attachments\\articleImages\\75711917.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib fr-shadow fr-fil\"></p>', '1', '2', '/upload/2019-09-04/1567598751468TIM图片20190714205122.jpg', '2019-09-09 08:57:38', '超级管理员', '2019-09-09 08:57:08', '超级管理员', '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('c01d3dbbbbed430686770e31044a6367', '131231', '<p>77887</p>', '1', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('c5fe09634c9f4f6f9f07e1847f1fffae', '1231231313', '<p>1313131</p>', '1', '2', '/upload/2019-09-04/1567598751468TIM图片20190714205122.jpg', '2019-09-04 20:23:40', '超级管理员', '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('d36a96895b0a4cd1b53d937305f8e4e0', '131231', '<p>4444444</p>', '1', '2', '/upload/2019-09-04/1567597027769TIM图片20190714205122.jpg', '2019-09-04 19:37:07', '超级管理员', '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');
INSERT INTO `t_management_new` VALUES ('da31b9852cdc48ec84e4bd80699ed133', '131231', '<p>132213</p>', '1', '2', '/upload/2019-09-04/1567596627178TIM图片20190702140706.jpg', NULL, NULL, '2019-09-09 08:57:08', NULL, '目前本店17款奔驰GLS450现车充足，颜色可选，17款奔驰GLS450不仅越野性能傲视群雄，公路行驶能力仍然是翘楚。');

-- ----------------------------
-- Table structure for t_mannagement_user
-- ----------------------------
DROP TABLE IF EXISTS `t_mannagement_user`;
CREATE TABLE `t_mannagement_user`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_mannagement_user
-- ----------------------------
INSERT INTO `t_mannagement_user` VALUES ('1', 'admin', '', 'admin', NULL);

-- ----------------------------
-- Table structure for t_org_user
-- ----------------------------
DROP TABLE IF EXISTS `t_org_user`;
CREATE TABLE `t_org_user`  (
  `orguser_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`orguser_id`) USING BTREE,
  INDEX `FK_T_ORG_US_REFERENCE_T_SYS_OR`(`ORG_ID`) USING BTREE,
  INDEX `FK_T_ORG_US_REFERENCE_T_SYS_US`(`USER_ID`) USING BTREE,
  CONSTRAINT `FK_T_ORG_US_REFERENCE_T_SYS_OR` FOREIGN KEY (`ORG_ID`) REFERENCES `t_sys_org` (`ORG_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_ORG_US_REFERENCE_T_SYS_US` FOREIGN KEY (`USER_ID`) REFERENCES `t_sys_userinfo` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_role_post
-- ----------------------------
DROP TABLE IF EXISTS `t_role_post`;
CREATE TABLE `t_role_post`  (
  `ROLE_POSTID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `POST_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_POSTID`) USING BTREE,
  INDEX `FK_T_ROLE_P_REFERENCE_T_SYS_RO`(`ROLE_ID`) USING BTREE,
  INDEX `FK_T_ROLE_P_REFERENCE_T_SYS_PO`(`POST_ID`) USING BTREE,
  CONSTRAINT `FK_T_ROLE_P_REFERENCE_T_SYS_PO` FOREIGN KEY (`POST_ID`) REFERENCES `t_sys_post` (`POST_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_ROLE_P_REFERENCE_T_SYS_RO` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_sys_role` (`ROLE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_site_avd
-- ----------------------------
DROP TABLE IF EXISTS `t_site_avd`;
CREATE TABLE `t_site_avd`  (
  `avd_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `item_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avd_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avd_orderno` int(11) NULL DEFAULT NULL,
  `avd_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`avd_id`) USING BTREE,
  INDEX `item_id`(`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_site_avd
-- ----------------------------
INSERT INTO `t_site_avd` VALUES ('2729722c628a4dff8cfeb4dd132c340f', '21', NULL, 123478001, '1');
INSERT INTO `t_site_avd` VALUES ('9c422e7d633d4bdb9bcc7b097d56a0b5', '21', NULL, 237, '1');

-- ----------------------------
-- Table structure for t_sys_app
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_app`;
CREATE TABLE `t_sys_app`  (
  `APP_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `APP_NAME` varchar(160) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `APP_ICON` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ORDER_NO` int(11) NULL DEFAULT NULL,
  `APP_PATH` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `APP_SHORTNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`APP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_app
-- ----------------------------
INSERT INTO `t_sys_app` VALUES ('82c786f2bfbf46398e3b495f6c7014bc', '天逸国际名车', '12', NULL, '555', 'app0');

-- ----------------------------
-- Table structure for t_sys_codebuilder
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_codebuilder`;
CREATE TABLE `t_sys_codebuilder`  (
  `CODEID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRI` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TABLENAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FIELDS` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `QUERYCONDITION` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FILL` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPT` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CONTROL` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`CODEID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_customfields
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_customfields`;
CREATE TABLE `t_sys_customfields`  (
  `CUSTOMID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `POSITION` int(11) NULL DEFAULT NULL,
  `CUTOM_TYPE` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FIELD_FORMAT` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MIN_LENGTH` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MAX_LENGTH` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `IS_REQUIRED` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEFAULT_VALUE` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_REGEXP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`CUSTOMID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_customvalues
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_customvalues`;
CREATE TABLE `t_sys_customvalues`  (
  `valueid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `customized_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `custom_field_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `field_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`valueid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_dataprivilege
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dataprivilege`;
CREATE TABLE `t_sys_dataprivilege`  (
  `ROLE_ORGID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROLE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ORGID`) USING BTREE,
  INDEX `FK_T_SYS_DA_REFERENCE_T_SYS_OR`(`ORG_ID`) USING BTREE,
  INDEX `FK_T_SYS_DA_REFERENCE_T_SYS_RO`(`ROLE_ID`) USING BTREE,
  INDEX `FK_T_SYS_DA_REFERENCE_T_SYS_US`(`USER_ID`) USING BTREE,
  CONSTRAINT `FK_T_SYS_DA_REFERENCE_T_SYS_OR` FOREIGN KEY (`ORG_ID`) REFERENCES `t_sys_org` (`ORG_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_SYS_DA_REFERENCE_T_SYS_RO` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_sys_role` (`ROLE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_SYS_DA_REFERENCE_T_SYS_US` FOREIGN KEY (`USER_ID`) REFERENCES `t_sys_userinfo` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict`;
CREATE TABLE `t_sys_dict`  (
  `DICT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DICT_TYPE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DICT_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DICT_VALUE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DICT_CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DICT_SORT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SORT_NUM` int(11) NULL DEFAULT NULL,
  `PARENT_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DISPLAY_SORT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DICT_CLASS` int(11) NULL DEFAULT NULL,
  `MULTI_TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ISDEFAULT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DICT_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_dict
-- ----------------------------
INSERT INTO `t_sys_dict` VALUES ('0436acdbd5684b83a0c9c56ffe4d151d', 'carpro', '汽车问题', '汽车问题上架', '1', NULL, NULL, 1, 'b14f611d5fa349cba5a8bb8cf97dc9a2', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('0b99c2cb86b54e5b9b75f2d56040a5fd', 'grand', '品牌', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('0cd3b4ac40c040c79d6795f7fbf5636c', 'price', '价格开始区间', '20', '0', NULL, NULL, 1, '693c58a6c81b4c34b8d451bfc220df06', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('0ed014d399bb4e4cb432c2af7f0c2163', 'itemstar', '栏目启用状态', '启用', '1', NULL, NULL, 1, '41070bbc44e14a7e90690ecf2782b7be', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('19236844084347a0ae3aabc691dee61e', 'grand', '品牌', 'mini', '2', NULL, NULL, 3, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('1b43394eaee243eda4d774b124eccf08', 'carstatus', '汽车上下架', '汽车下架', '0', NULL, NULL, 2, '32d6494e89dc4b3a9ce7d1e52c7015d3', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('1ed1d13b8db24a78b8a3699f6679fb69', 'newstatus', '新闻发布状态', '被打回', '-1', NULL, NULL, NULL, 'a0012d962b6640819cec7fa85489cc00', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('2d656bde3dfd448b968dd41028d1e0a1', 'newstatus', '新闻发布状态', '待发布', '1', NULL, NULL, 2, 'a0012d962b6640819cec7fa85489cc00', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('32a1982398ad424285769d29492bc639', 'newupdwon', '新闻上下架', '新闻上架', '1', NULL, NULL, 1, 'd24c4e5b74904fd1b36d208d6eab2a13', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('32d6494e89dc4b3a9ce7d1e52c7015d3', 'carstatus', '汽车上下架', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('3521aaa269e64c4fa8d4a3ff6949cc3e', 'grand', '品牌', '玛莎拉蒂', '9', NULL, NULL, 10, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('35fe547cbfa34543857a65e23f5dd810', 'priceend', '价格结束区间', '10000', '3', NULL, NULL, 4, '6735a5276f9641d091bbb8ce523fa2df', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('3762f6bd93e845c9bcfa703ec6eb1c04', 'itemstatus', '栏目状态', '使用', '1', NULL, NULL, 1, '6d3e488aee68499ab31beefed5b05b92', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('3eddfb2f57334851b1ffc8c84c60a7ba', 'priceend', '价格结束区间', '50', '1', NULL, NULL, 2, '6735a5276f9641d091bbb8ce523fa2df', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('41070bbc44e14a7e90690ecf2782b7be', 'item', '栏目启用禁用状态', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('42076fa3a08d4e8aa448210c0ff996bf', 'priceend', '价格结束区间', '80', '2', NULL, NULL, 3, '6735a5276f9641d091bbb8ce523fa2df', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('430a03d933fd41abaa578703c96d2195', 'weState', '联系我们启用禁用', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('46b6996bdf1f4ce199777e6ac22661a1', 'price', '价格开始区间', '40', '1', NULL, NULL, 2, '693c58a6c81b4c34b8d451bfc220df06', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('58e3f6f7178245e3ab50b40e2a04487c', 'carstatus', '汽车上下架', '汽车上架', '1', NULL, NULL, 1, '32d6494e89dc4b3a9ce7d1e52c7015d3', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('5f52d415ce684ccbbe28dfeae41ebb02', 'newsort', '新闻分类', '行业新闻', '0', NULL, NULL, 2, '7e3d9fbd07934afe972c6632cb66c03d', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('600f47db367f441295a5233f5b3af858', 'itemstatus', '栏目状态', '停用', '0', NULL, NULL, 2, '6d3e488aee68499ab31beefed5b05b92', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('60bdf282112b47ecac694eefbb89a064', 'grandicon', '品牌LOG', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, '2', NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('6735a5276f9641d091bbb8ce523fa2df', 'priceend', '价格结束区间', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('6749d86929dc4a0fad885b86891fb62c', 'newupdwon', '新闻上下架', '新闻下架', '0', NULL, NULL, 2, 'd24c4e5b74904fd1b36d208d6eab2a13', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('693c58a6c81b4c34b8d451bfc220df06', 'price', '价格开始区间', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('6d3e488aee68499ab31beefed5b05b92', 'itemstatus', '栏目状态', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('77867aa947804f2493f2a4667af66514', 'grand', '品牌', '奥迪', '4', NULL, NULL, 5, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('78d133966de14fffa8806eb8102b128c', 'weState', '联系我们启用禁用', '联系禁用', '0', NULL, NULL, 2, '430a03d933fd41abaa578703c96d2195', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('7cb4521bf6fe47ed9a697312a9ef9310', 'avd', '广告上下架状态', '上架', '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('7e3d9fbd07934afe972c6632cb66c03d', 'newsort', '新闻分类', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('826b20d146dc4b738a3c0b4ea0120f54', 'grand', '品牌', '英菲尼迪', '6', NULL, NULL, 7, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('852ac2f22b044aeaaa34c2b4ce0ec2fb', 'specs', '规格', '墨规', '4', NULL, NULL, 5, 'c88b13e8b0754642b72476752f862d35', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('87ad9470b6c2403e9bb71bf204591e2a', 'grand', '品牌', '路虎', '0', NULL, NULL, 1, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('87c5354ee4f449fa8fa0fb61dda2b35e', 'avd', '广告上下架状态', '下架', '0', NULL, NULL, 1, '7cb4521bf6fe47ed9a697312a9ef9310', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('895aba34997e4afe810d9b41fe3b14df', 'specs', '规格', '中东', '1', NULL, NULL, 2, 'c88b13e8b0754642b72476752f862d35', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('965b23e0da4743d093e39d8ac72e5a8a', 'grand', '品牌', '丰田', '3', NULL, NULL, 4, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('98ca5fad77ec4a42889a9b548c7f9e32', 'carpro', '汽车问题', '汽车问题下架', '0', NULL, NULL, 2, 'b14f611d5fa349cba5a8bb8cf97dc9a2', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('9961edd20679473d8f369af8b334d8e4', 'itemstar', '栏目启用禁用状态', '禁用', '0', NULL, NULL, 2, '41070bbc44e14a7e90690ecf2782b7be', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('a0012d962b6640819cec7fa85489cc00', 'newstatus', '新闻发布状态', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, '2', NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('a2e32c39f7ad44c2965798074cfba455', 'price', '价格开始区间', '60', '2', NULL, NULL, 3, '693c58a6c81b4c34b8d451bfc220df06', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('b14f611d5fa349cba5a8bb8cf97dc9a2', 'carpro', '汽车问题', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('b261b3e953ed42ad8e16faf8b0149ff4', 'grand', '品牌', '奔驰', '10', NULL, NULL, 11, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('b84e009361e24203a6d1b0c5be566d73', 'weState', '联系我们启用禁用', '联系启用', '1', NULL, NULL, 1, '430a03d933fd41abaa578703c96d2195', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('bc41f598c3b147959ef2cb0671279b9c', 'price', '价格开始区间', '100', '3', NULL, NULL, 4, '693c58a6c81b4c34b8d451bfc220df06', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('bfb012cd3bab4476b516f241c0d3de70', 'grand', '品牌', '林肯', '11', NULL, NULL, 12, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('c1f8d4dc3d24460893b1dbdb92aad2d5', 'avd', '广告上下架状态', '上架', '1', NULL, NULL, 1, '7cb4521bf6fe47ed9a697312a9ef9310', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('c88b13e8b0754642b72476752f862d35', 'specs', '规格', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('cb9474776c4549c18eb5012b18419af4', 'grand', '品牌', '雪佛兰', '5', NULL, NULL, 6, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('cda182c4e46e4911a78d271e69564715', 'grand', '品牌', '宝马', '7', NULL, NULL, 8, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('ce4a71038eaf45e680c28de4fedcf76b', 'specs', '规格', '加规', '5', NULL, NULL, 6, 'c88b13e8b0754642b72476752f862d35', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('d24c4e5b74904fd1b36d208d6eab2a13', 'newupdwon', '新闻上下架', NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('d5532209913546c586e8adfde7cacc3b', 'specs', '规格', '中规', '2', NULL, NULL, 3, 'c88b13e8b0754642b72476752f862d35', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('dcf711a535f541c2873d9c9265a4297e', 'newstatus', '新闻发布状态', '已发布', '2', NULL, NULL, 1, 'a0012d962b6640819cec7fa85489cc00', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('de710372e26f43ff94e6e1d251363509', 'priceend', '价格结束区间', '30', '0', NULL, NULL, 1, '6735a5276f9641d091bbb8ce523fa2df', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('e636b8e4cdaf4c2d9daf42cc0f51e3f2', 'grand', '品牌', '大众', '1', NULL, NULL, 2, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('e83b7f2053ed4f0fb816bc46fe119caf', 'grand', '品牌', '凯迪拉克', '8', NULL, NULL, 9, '0b99c2cb86b54e5b9b75f2d56040a5fd', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('ee19928c84ce473185f8355fd65da350', 'specs', '规格', '欧规', '3', NULL, NULL, 4, 'c88b13e8b0754642b72476752f862d35', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('ee3431f91422418aae82e1abb73598d9', 'newsort', '新闻分类', '公司新闻', '1', NULL, NULL, 1, '7e3d9fbd07934afe972c6632cb66c03d', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('f20bc5cab59145e3b518a875df2f1ddb', 'newstatus', '新闻发布状态', '待审核', '0', NULL, NULL, 1, 'a0012d962b6640819cec7fa85489cc00', '1', NULL, NULL, NULL, '1');
INSERT INTO `t_sys_dict` VALUES ('f3cee352292f46ffb01908bf69c07923', 'specs', '规格', '美规', '0', NULL, NULL, 1, 'c88b13e8b0754642b72476752f862d35', '1', NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for t_sys_item
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_item`;
CREATE TABLE `t_sys_item`  (
  `item_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` int(11) NULL DEFAULT NULL,
  `item_html` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `creator_man` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modify_man` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_stateid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `item_state`(`item_stateid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_item
-- ----------------------------
INSERT INTO `t_sys_item` VALUES ('0d975900e9604f249456bb36fde2e04f', '联系我们', 7, 'contact-us', '2019-08-30 00:00:00', '2019-09-04 00:00:00', '超级管理员', '超级管理员', '1');
INSERT INTO `t_sys_item` VALUES ('0d975900e9604f249b56bb36fde2e04f', '关于我们', 6, 'about-us', '2019-08-30 00:00:00', '2019-09-04 00:00:00', '超级管理员', '超级管理员', '1');
INSERT INTO `t_sys_item` VALUES ('0d975900e9604f249bf4bb36fde2e034', '新闻中心', 4, 'new-center', '2019-08-30 00:00:00', '2019-09-16 08:49:11', '超级管理员', '超级管理员', '1');
INSERT INTO `t_sys_item` VALUES ('0d975900e9604f249bf4bb36fde2e04f', '天逸名车', 1, 'index', '2019-08-30 00:00:00', '2019-09-04 00:00:00', '超级管理员', '超级管理员', '1');
INSERT INTO `t_sys_item` VALUES ('0d975900e9604f249bf4bb36fde2e054', '中规车', 3, 'parallel-car', '2019-08-30 00:00:00', '2019-09-04 00:00:00', '超级管理员', '超级管理员', '1');
INSERT INTO `t_sys_item` VALUES ('0d975900e9604f249bf4bb36fde2e056', '售后服务', 5, 'after-service', '2019-08-30 00:00:00', '2019-09-04 00:00:00', '超级管理员', '超级管理员', '1');
INSERT INTO `t_sys_item` VALUES ('ddb0cf0edbd440469e9ce0a35028f3be', '平行进口', 2, 'parallel-car', '2019-09-09 00:00:00', '2019-09-12 00:00:00', '超级管理员', '超级管理员', '1');

-- ----------------------------
-- Table structure for t_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module`;
CREATE TABLE `t_sys_module`  (
  `MODULE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `APP_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MODULE_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LINK_ADDR` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MODULE_CLASS` int(11) NULL DEFAULT NULL,
  `ICON` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MODULE_CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_MODULEID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SORT_NUM` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DISPLAY` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`) USING BTREE,
  INDEX `FK_T_SYS_MO_REFERENCE_T_SYS_AP`(`APP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_module
-- ----------------------------
INSERT INTO `t_sys_module` VALUES ('1f7f60c3d26b4650a02ccecdfcf1466b', '', 'w_栏目管理', 'itemManageContorller.do?method=list', 1, '002', '002', 'a822151f4e52444e81725149bf94f12b', 5, '111', '0');
INSERT INTO `t_sys_module` VALUES ('3bcd0992c63d41509ee3e526d1009cd1', '', '关于我们', 'TygjmcAboutController.do?method=list', 5, '1', '6', 'a822151f4e52444e81725149bf94f12b', NULL, 'll', '0');
INSERT INTO `t_sys_module` VALUES ('482211a5522b4ca1a59ad51e9aa1cde3', '', '品牌log', 'TygjmcGoodslogController.do?method=querylist', 99, '99', '99', 'a822151f4e52444e81725149bf94f12b', 99, '99', '0');
INSERT INTO `t_sys_module` VALUES ('519aa9ee79d8405891d9ee85aa3f64d3', '', '汽车管理', 'TygjmcGoodsCarController.do?method=jumplist', 66, '66', '66', 'a822151f4e52444e81725149bf94f12b', 66, '66', '0');
INSERT INTO `t_sys_module` VALUES ('687669a1059e4c8ab032d0d888711b4e', '', '问题管理', 'TygjmcCarProblemController.do?method=list', 9, '1', '11', 'a822151f4e52444e81725149bf94f12b', 6, 'll', '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e32195f6c7014bc', '82c786f2bfbf46398e3b495f6c7014bc', '配置管理', 'tsysParameterController.do?method=list', NULL, 'icon-set', NULL, '0', 20, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b49556c7014bc', NULL, '菜单管理', 'tsysModuleController.do?method=list', NULL, 'icon-account', NULL, '82c786f2bfbf46398e32195f6c7014bc', 10, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f677014bc', NULL, '机构管理', 'tsysOrgController.do?method=list', NULL, 'icon-org', 'T_SYS_ORG', '82c786f2bfbf46398e3b495f6c8814bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c701312', NULL, '角色管理', 'tsysRoleController.do?method=list', NULL, 'icon-role', 'T_SYS_ROLE', '82c786f2bfbf46398e3b495f6c8814bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c7014cd', NULL, '多应用管理', 'tsysAppController.do?method=list', NULL, 'icon-works', NULL, '82c786f2bfbf46398e32195f6c7014bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c7224bc', NULL, '用户管理', 'tsysUserinfoController.do?method=list', NULL, 'icon-boy', 'T_SYS_USER', '82c786f2bfbf46398e3b495f6c8814bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c7314bc', NULL, '岗位管理', 'tsysPostController.do?method=list', NULL, 'icon-users', NULL, '82c786f2bfbf46398e3b495f6c8814bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c7514bc', NULL, '字典管理', 'tsysDictController.do?method=list', NULL, 'icon-magic', NULL, '82c786f2bfbf46398e32195f6c7014bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c7914bc', NULL, '参数管理', 'tsysParameterController.do?method=list', NULL, 'icon-email', NULL, '82c786f2bfbf46398e32195f6c7014bc', 9, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c8814bc', '82c786f2bfbf46398e3b495f6c7014bc', '系统管理', NULL, NULL, 'icon-folder', NULL, '0', 10, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('82c786f2bfbf46398e3b495f6c9914bc', NULL, '流水号管理', 'tsysSerialnoController.do?method=list', NULL, 'icon-magic', 'T_SYS_SERIALNO', '82c786f2bfbf46398e32195f6c7014bc', 11, NULL, '0');
INSERT INTO `t_sys_module` VALUES ('911685526db44246a0edc52df01f0f89', '', 'l栏目', 'itemController.do?method=list', 1, '1', '05', 'a822151f4e52444e81725149bf94f12b', 1, 'll', '0');
INSERT INTO `t_sys_module` VALUES ('9bc4496602ad4a98ac1027772ded7620', '', '图片管理', '/AVDController.do?method=avdlist', 1, '001', '003', 'a822151f4e52444e81725149bf94f12b', NULL, '001', '0');
INSERT INTO `t_sys_module` VALUES ('a1306c6fde354702b450eb75f360d51b', '', '汽车', 'TygjmcGoodsCarController.do?method=list', 10, '1', '15', 'a822151f4e52444e81725149bf94f12b', NULL, 'll', '0');
INSERT INTO `t_sys_module` VALUES ('a822151f4e52444e81725149bf94f12b', '82c786f2bfbf46398e3b495f6c7014bc', '站点管理', '004', 4, '004', '004', '0', 4, '004', '0');
INSERT INTO `t_sys_module` VALUES ('c3b846122743436c89b61aa84838ab4f', '', '新闻管理', '/NewController.do?method=newlist', 111, '111', '111', 'a822151f4e52444e81725149bf94f12b', 111, '111', '0');
INSERT INTO `t_sys_module` VALUES ('edf83c337c4b4690b5d22cc6891733c2', '', '栏目管理', 'itemController.do?method=list', 4, '004', '005', 'a822151f4e52444e81725149bf94f12b', 4, '004', '0');
INSERT INTO `t_sys_module` VALUES ('fdd7866292c1493c88f891314ed517a4', '', '联系我们', '/ContactWeController.do?method=welist', 5, '001', '006', 'a822151f4e52444e81725149bf94f12b', NULL, '005', '0');

-- ----------------------------
-- Table structure for t_sys_moduleoperate
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_moduleoperate`;
CREATE TABLE `t_sys_moduleoperate`  (
  `OPERATE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MODULE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OPERATE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OPERATE_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`OPERATE_ID`) USING BTREE,
  INDEX `FK_T_SYS_MO_REFERENCE_T_SYS_MO`(`MODULE_ID`) USING BTREE,
  CONSTRAINT `FK_T_SYS_MO_REFERENCE_T_SYS_MO` FOREIGN KEY (`MODULE_ID`) REFERENCES `t_sys_module` (`MODULE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_moduleoperate
-- ----------------------------
INSERT INTO `t_sys_moduleoperate` VALUES ('07a7d93289274bb985a08d260ce267fb', '82c786f2bfbf46398e3b495f6c7224bc', '用户启用', 'ENABLE');
INSERT INTO `t_sys_moduleoperate` VALUES ('0bcf1362a9094ee4a93d59fcf6f33345', '82c786f2bfbf46398e3b495f6c701312', '查询', 'QUERY');
INSERT INTO `t_sys_moduleoperate` VALUES ('0bcf1362a9094ee4a93d59fcf6f333a0', '82c786f2bfbf46398e3b495f6c701312', '角色成员', 'ROLE_USER');
INSERT INTO `t_sys_moduleoperate` VALUES ('0d6563500cf3409ebad8a9bdee16c3d1', '82c786f2bfbf46398e3b495f6c7224bc', '重置', 'RELOAD');
INSERT INTO `t_sys_moduleoperate` VALUES ('108c8c644f65470b8d87ff7cc9c9b7e9', '82c786f2bfbf46398e3b495f6c7314bc', '添加', 'ADD');
INSERT INTO `t_sys_moduleoperate` VALUES ('11a07973658248bc8e676399ea321892', '82c786f2bfbf46398e3b495f6c7314bc', '修改', 'EDIT');
INSERT INTO `t_sys_moduleoperate` VALUES ('28c312016bfc499991e01cd5e557e61a', '82c786f2bfbf46398e3b495f677014bc', '删除', 'DELETE');
INSERT INTO `t_sys_moduleoperate` VALUES ('35079f097383471ebbc693ec99d45ead', '82c786f2bfbf46398e3b495f6c7224bc', '修改', 'EDIT');
INSERT INTO `t_sys_moduleoperate` VALUES ('43af91e5fda745c18d4c34fda5b86531', '82c786f2bfbf46398e3b495f677014bc', '添加', 'ADD');
INSERT INTO `t_sys_moduleoperate` VALUES ('49724f859f1446b4ad2efa00f4b46b38', '82c786f2bfbf46398e3b495f6c7314bc', '删除', 'DELETE');
INSERT INTO `t_sys_moduleoperate` VALUES ('4e79ecc2814445f59d72633f470f2af1', '82c786f2bfbf46398e3b495f677014bc', '修改', 'EDIT');
INSERT INTO `t_sys_moduleoperate` VALUES ('5e4593e5fd584408b3e135036da3ed6e', '82c786f2bfbf46398e3b495f6c7224bc', '排序', 'SORT');
INSERT INTO `t_sys_moduleoperate` VALUES ('6d939ce38b3e4138bea6a461dcd40adb', '82c786f2bfbf46398e3b495f6c7224bc', '分配角色', 'AUTH_ROLE');
INSERT INTO `t_sys_moduleoperate` VALUES ('847b01ec2c73482082da17915fb6f214', '82c786f2bfbf46398e3b495f6c701312', '修改', 'EDIT');
INSERT INTO `t_sys_moduleoperate` VALUES ('8e57726e92c34e639d4ed3a9a9151f38', '82c786f2bfbf46398e3b495f6c7224bc', '添加', 'ADD');
INSERT INTO `t_sys_moduleoperate` VALUES ('9794c516a52d401aa409cad17db4376a', '82c786f2bfbf46398e3b495f6c7314bc', '查询', 'QUERY');
INSERT INTO `t_sys_moduleoperate` VALUES ('a11fb7121b4f4bb085621d6bea319f1b', '82c786f2bfbf46398e3b495f6c7224bc', '删除', 'DELETE');
INSERT INTO `t_sys_moduleoperate` VALUES ('b6d01d35d9ad4612a93353bb534e2034', '82c786f2bfbf46398e3b495f6c7224bc', '重置密码', 'RESET');
INSERT INTO `t_sys_moduleoperate` VALUES ('b77a7288304b41198329d22331ad45c9', '82c786f2bfbf46398e3b495f677014bc', '排序', 'ORDER');
INSERT INTO `t_sys_moduleoperate` VALUES ('c319ede989894af099d9d27ca43a0b54', '82c786f2bfbf46398e3b495f6c701312', '添加', 'ADD');
INSERT INTO `t_sys_moduleoperate` VALUES ('ed3ff3eac72c457f98baf686e633d6ea', '82c786f2bfbf46398e3b495f6c7224bc', '查询', 'QUERY');
INSERT INTO `t_sys_moduleoperate` VALUES ('fc9b6c4c0eb940a5bd92058610e2b4af', '82c786f2bfbf46398e3b495f6c701312', '删除', 'DELETE');
INSERT INTO `t_sys_moduleoperate` VALUES ('fe6bcdf88b1c422fad5e147830613508', '82c786f2bfbf46398e3b495f6c7224bc', '用户停用', 'STOP');

-- ----------------------------
-- Table structure for t_sys_org
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_org`;
CREATE TABLE `t_sys_org`  (
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ORG_SN` int(11) NOT NULL,
  `ORG_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PARENT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LAYER` int(11) NULL DEFAULT NULL,
  `CREATE_DATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1',
  `REMARK` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ORG_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ADDR` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ZIP` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LEADER` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PHONE` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FAX` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MOBILE` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ORG_CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ANCESTRY` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ORG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_org
-- ----------------------------
INSERT INTO `t_sys_org` VALUES ('0003', 2, '计软Java1602', '1', NULL, '2015-12-11 16:54:21', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '430000', '.0003.1.-1.');
INSERT INTO `t_sys_org` VALUES ('1', 1, '湖南信息职业技术学院', '-1', 1, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '10000', '.1.-1.');

-- ----------------------------
-- Table structure for t_sys_parameter
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_parameter`;
CREATE TABLE `t_sys_parameter`  (
  `PARAID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ISDEFAULT` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARANAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARANO` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARA_CLASS` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARA_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARA_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARA_ORDER` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENTPARAID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DISPLAYSORT` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`PARAID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_parameter
-- ----------------------------
INSERT INTO `t_sys_parameter` VALUES ('01d6ac3f641b4a60b34450afabef974d', NULL, '数据权限范围', '5', '0', '所在部门数据', 'DATA_SCOPE', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e52670025', '1', '用户在线状态', '1', '0', '在线', 'isonline', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e52ac0028', '1', '用户在线状态', '2', '0', '不在线', 'isonline', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5b14006c', '1', '是否有子结点', '1', '0', '有子结点', 'isLeaf', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5b2a006d', '1', '是否有子结点', '2', '0', '无子结点', 'isLeaf', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5b850071', NULL, '用户状态', '4', '0', '离职', 'userState', 4, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5ba40072', NULL, '用户状态', '3', '0', '调岗', 'userState', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5bbc0073', NULL, '用户状态', '2', '0', '停用', 'userState', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5bd10074', '1', '用户状态', '1', '0', '正常', 'userState', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5e6b008c', '1', '性别', '2', '0', '女', 'sex', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5e82008d', '1', '性别', '1', '0', '男', 'sex', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5f810094', NULL, '角色类型', '2', '0', '私有', 'roleType', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e5fe50097', NULL, '角色类型', '1', '0', '公共', 'roleType', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e62e300b8', '1', '用户类型', '2', NULL, '外部用户', 'userType', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e630400b9', '1', '用户类型', '1', NULL, '内部用户', 'userType', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e634900bc', '1', '岗位类型', '4', '0', '总监', 'postType', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e635c00bd', '1', '岗位类型', '3', '0', '副总经理', 'postType', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e638d00be', '1', '岗位类型', '2', '0', '总经理', 'postType', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e63aa00bf', '1', '岗位类型', '1', '0', '主席', 'postType', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1590942b45cf6e1a0145cf6e63d700c1', NULL, '是否为开发管理员', 'devadmin', '0', 'devadmin', 'SUPER_USER', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('159e66d90e174ef6a364920957355f7f', NULL, '生成方式', '4', NULL, '每年递增', 'create_type', 4, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('160175d545a140f3bc978dcbcb6fcf68', NULL, '数据权限范围', '8', '0', '仅本人数据', 'DATA_SCOPE', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('1d5c1a784b1240d3a367f4bb25c9ebb6', NULL, '单位类型', '6', NULL, '特别行政区', 'orgType', 6, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('20fdf895aed64d2b853c537d3ac5e661', '1', '机构类型', '3', NULL, '区县级', 'orgType', 4, '1', NULL, '1');
INSERT INTO `t_sys_parameter` VALUES ('239fbfdd55fd497790b56bd95c7efd4f', NULL, '数据权限范围', '4', '0', '所在部门及以下数据', 'DATA_SCOPE', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('424887819f0043bf8d67bf3b8dbb3428', NULL, '生成方式', '5', NULL, '序列递增', 'create_type', 5, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('4a3a7fc3ec1047bbac88d0f08ee2b991', NULL, '数据权限范围', '1', '0', '所有数据', 'DATA_SCOPE', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('6b8e229dbab041beb53ac9494f224dda', NULL, '单位类型', '4', NULL, '自治区', 'orgType', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('73ce459c16ab45c59f0135e9777b6ac3', '1', '字典展现分类', '1', '0', '列表', 'dictDisplaySort', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('792dcf9990fa41b5a83e1a9511f14266', NULL, '单位类型', '5', NULL, '直辖市', 'orgType', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('898b9a7b3a6e438ca55e8776d2c7ad87', NULL, '数据权限范围', '9', '0', '按明细设置', 'DATA_SCOPE', NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('a97019497f1c455ab69557990759eb2d', NULL, '生成方式', '1', NULL, '递增', 'create_type', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('b9c5ed60083a48a1b4a57881937db733', '1', '单选或多选', '1', '0', '单选(radio)', 'dictMultiType', 1, '主要针对树形结构', NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('c8132ab5b82248ac964b6eb84a3d6be2', '1', '单选或多选', '2', '0', '多选(checkbox)', 'dictMultiType', 2, '主要针对树形结构', NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('cad8df422f134e8184db4a61778cf2e2', '1', '机构状态', '2', '0', '停用', 'state', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('d23cb3c903264e84b297d5ed0b7764eb', '1', '机构类型', '1', NULL, '省级', 'orgType', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('d4c8255c9db94f58b77a0f3a930ff5d5', NULL, '生成方式', '3', NULL, '每月递增', 'create_type', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('dc67484007414db9b7e6ec00aaa9dc79', '1', '字典展现分类', '2', '0', '树形', 'dictDisplaySort', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('e016084ab6b741ec9bc886598bfe5a97', '1', '机构状态', '1', '0', '启用', 'state', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('e6e93818d06e437491090852c8685da7', '1', '机构类型', '2', NULL, '市州级', 'orgType', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_parameter` VALUES ('eb4c2e4cb3234d528c3300c8a5b6fa84', NULL, '生成方式', '2', NULL, '每日递增', 'create_type', 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_sys_post
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_post`;
CREATE TABLE `t_sys_post`  (
  `POST_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `POST_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REMARK` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `POST_TYPE` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_POSTID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`POST_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role`  (
  `ROLE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ROLE_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_DATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DATA_SCOPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('89833d0ff0b440d386114a0b93eea2d0', '1313', '2', '', '1', 'a594d023a53d459da6435c8589f027df', '2019-09-03 16:02:49', '1');
INSERT INTO `t_sys_role` VALUES ('944f7d02801445ec9c988b5600d9dab7', '超级管理员', NULL, '超级管理员', NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for t_sys_roleprivilege
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_roleprivilege`;
CREATE TABLE `t_sys_roleprivilege`  (
  `PRIVILEGE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OPERATE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MODULE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`PRIVILEGE_ID`) USING BTREE,
  INDEX `FK_T_SYS_RO_REFERENCE_T_SYS_OP`(`OPERATE_ID`) USING BTREE,
  INDEX `FK_T_SYS_RO_REFERENCE_T_SYS_MO`(`MODULE_ID`) USING BTREE,
  INDEX `FK_T_SYS_RO_REFERENCE_T_SYS_RO`(`ROLE_ID`) USING BTREE,
  CONSTRAINT `FK_T_SYS_RO_REFERENCE_T_SYS_MO` FOREIGN KEY (`MODULE_ID`) REFERENCES `t_sys_module` (`MODULE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_SYS_RO_REFERENCE_T_SYS_OP` FOREIGN KEY (`OPERATE_ID`) REFERENCES `t_sys_moduleoperate` (`OPERATE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_SYS_RO_REFERENCE_T_SYS_RO` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_sys_role` (`ROLE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_roleprivilege
-- ----------------------------
INSERT INTO `t_sys_roleprivilege` VALUES ('0c41ed39276d481a851c16f2d473a47d', '89833d0ff0b440d386114a0b93eea2d0', NULL, 'a1306c6fde354702b450eb75f360d51b');
INSERT INTO `t_sys_roleprivilege` VALUES ('0fc88a22426941ef92809b036e640216', '89833d0ff0b440d386114a0b93eea2d0', '43af91e5fda745c18d4c34fda5b86531', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('1787a346789d4ff5bdb76e2b0539b2a2', '89833d0ff0b440d386114a0b93eea2d0', NULL, '911685526db44246a0edc52df01f0f89');
INSERT INTO `t_sys_roleprivilege` VALUES ('204152a85b464d1c8e2c23accdb3f068', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c701312');
INSERT INTO `t_sys_roleprivilege` VALUES ('2eab84db008548cc8bafcd93961e19fc', '89833d0ff0b440d386114a0b93eea2d0', NULL, 'edf83c337c4b4690b5d22cc6891733c2');
INSERT INTO `t_sys_roleprivilege` VALUES ('3162a28e46bb4d9489ec1a16773b605d', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c8814bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('31ab5b7d8b63465492e6747842621601', '89833d0ff0b440d386114a0b93eea2d0', NULL, '9bc4496602ad4a98ac1027772ded7620');
INSERT INTO `t_sys_roleprivilege` VALUES ('35c7e1e08fe1482595c5550e2683e404', '89833d0ff0b440d386114a0b93eea2d0', '6d939ce38b3e4138bea6a461dcd40adb', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('4f28283739c542558309de919d1d3111', '89833d0ff0b440d386114a0b93eea2d0', 'c319ede989894af099d9d27ca43a0b54', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('4fc329796dec4db2b95020b145cffb72', '89833d0ff0b440d386114a0b93eea2d0', '5e4593e5fd584408b3e135036da3ed6e', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('51fc00cfed3f463a952429d7a13f950f', '89833d0ff0b440d386114a0b93eea2d0', NULL, '3bcd0992c63d41509ee3e526d1009cd1');
INSERT INTO `t_sys_roleprivilege` VALUES ('5c330bf3bbe94048b091aa7329359c85', '89833d0ff0b440d386114a0b93eea2d0', '8e57726e92c34e639d4ed3a9a9151f38', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('606ecf083f48492296cc524b3d324528', '89833d0ff0b440d386114a0b93eea2d0', 'ed3ff3eac72c457f98baf686e633d6ea', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('60b9f1e3d60d460e8a86979f7f33de61', '89833d0ff0b440d386114a0b93eea2d0', '0bcf1362a9094ee4a93d59fcf6f333a0', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('68907c3a764f45ea8af53f4ec08c2c91', '89833d0ff0b440d386114a0b93eea2d0', NULL, 'a822151f4e52444e81725149bf94f12b');
INSERT INTO `t_sys_roleprivilege` VALUES ('6aa23f09e77946fa8f451c6a5561f0f1', '89833d0ff0b440d386114a0b93eea2d0', '0bcf1362a9094ee4a93d59fcf6f33345', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('6fdffdc5b3b3415da6f01eacc80919ff', '89833d0ff0b440d386114a0b93eea2d0', 'b77a7288304b41198329d22331ad45c9', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('75a7303a610b417b885641c660e09933', '89833d0ff0b440d386114a0b93eea2d0', '0d6563500cf3409ebad8a9bdee16c3d1', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('7868e4112bf4469ead5c3e49d05e0c9d', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c7014cd');
INSERT INTO `t_sys_roleprivilege` VALUES ('80a2dfe48835459484ed387363395d04', '89833d0ff0b440d386114a0b93eea2d0', 'fc9b6c4c0eb940a5bd92058610e2b4af', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('81850158ad4f480c9055c31636107a1e', '89833d0ff0b440d386114a0b93eea2d0', 'b6d01d35d9ad4612a93353bb534e2034', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('81cecfc24771414ea2877255f39e261a', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c9914bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('9d5d3647b146447596560f59faa25ad4', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c7914bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('a0ef85813c7d45d5a051a24c098f452f', '89833d0ff0b440d386114a0b93eea2d0', NULL, '519aa9ee79d8405891d9ee85aa3f64d3');
INSERT INTO `t_sys_roleprivilege` VALUES ('aed0b5fe44a543d29e12b3e0e271c559', '89833d0ff0b440d386114a0b93eea2d0', '11a07973658248bc8e676399ea321892', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('af446983f85449ef846f3dc5458947d0', '89833d0ff0b440d386114a0b93eea2d0', NULL, '687669a1059e4c8ab032d0d888711b4e');
INSERT INTO `t_sys_roleprivilege` VALUES ('b13ef329bb744d299d88c8785ca1f534', '89833d0ff0b440d386114a0b93eea2d0', '07a7d93289274bb985a08d260ce267fb', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('b4bacc5bea114248a842e3c74acbf3cb', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b49556c7014bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('b513e11325a54cf0bde8674f93263899', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c7224bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('b53b6ae5d77e4b0c98c4ff7702615ce8', '89833d0ff0b440d386114a0b93eea2d0', NULL, 'fdd7866292c1493c88f891314ed517a4');
INSERT INTO `t_sys_roleprivilege` VALUES ('c09c46d4817d47bb9a95527cf6008fd2', '89833d0ff0b440d386114a0b93eea2d0', '28c312016bfc499991e01cd5e557e61a', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('c276e62dc4d844fb81029f8a3479840a', '89833d0ff0b440d386114a0b93eea2d0', '4e79ecc2814445f59d72633f470f2af1', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('c2c247b4b69b4921bd8d8089eb6a19a6', '89833d0ff0b440d386114a0b93eea2d0', '49724f859f1446b4ad2efa00f4b46b38', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('cd2e7b0b6655406eb5e548054ba39285', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e32195f6c7014bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('d3803cc1f9f643c68feab151c23cd9fd', '89833d0ff0b440d386114a0b93eea2d0', 'a11fb7121b4f4bb085621d6bea319f1b', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('d6cf1bd2280e4c4fa5483f4c53d66473', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f677014bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('d765b7bfc6d34eabb4e58674e68d4393', '89833d0ff0b440d386114a0b93eea2d0', '108c8c644f65470b8d87ff7cc9c9b7e9', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('dab73416a0c4453ca24bee21cb61e9a3', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c7314bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('def4e72aaec344f899231f72c89b7a75', '89833d0ff0b440d386114a0b93eea2d0', 'fe6bcdf88b1c422fad5e147830613508', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('defc47f36e1a469380452b89b72dda79', '89833d0ff0b440d386114a0b93eea2d0', '35079f097383471ebbc693ec99d45ead', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('e316fd95bfc3425fa437448c444fb8a8', '89833d0ff0b440d386114a0b93eea2d0', NULL, '82c786f2bfbf46398e3b495f6c7514bc');
INSERT INTO `t_sys_roleprivilege` VALUES ('e4b81198dc2a4971a408ab64129ac860', '89833d0ff0b440d386114a0b93eea2d0', '9794c516a52d401aa409cad17db4376a', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('eb603c491ccc4cb280581c91c8495f5d', '89833d0ff0b440d386114a0b93eea2d0', NULL, '482211a5522b4ca1a59ad51e9aa1cde3');
INSERT INTO `t_sys_roleprivilege` VALUES ('f96dac1892614730af7b21dec9dda28e', '89833d0ff0b440d386114a0b93eea2d0', '847b01ec2c73482082da17915fb6f214', NULL);
INSERT INTO `t_sys_roleprivilege` VALUES ('fecb61e1a7c1426082e5909b832d1a87', '89833d0ff0b440d386114a0b93eea2d0', NULL, 'c3b846122743436c89b61aa84838ab4f');
INSERT INTO `t_sys_roleprivilege` VALUES ('ff86d6fd54c947e09f66d7f46f2e527b', '89833d0ff0b440d386114a0b93eea2d0', NULL, '1f7f60c3d26b4650a02ccecdfcf1466b');

-- ----------------------------
-- Table structure for t_sys_serialno
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_serialno`;
CREATE TABLE `t_sys_serialno`  (
  `serialno_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `serial_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `secound_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `formular_regx` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `serial_length` int(11) NULL DEFAULT NULL,
  `step` int(11) NULL DEFAULT NULL,
  `init_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `current_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tab_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SFBL` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`serialno_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_serialno
-- ----------------------------
INSERT INTO `t_sys_serialno` VALUES ('2a6e2edaf0dd4179a98fcde46fb4c848', '机构ID规则', 'oraIdRule', '{NO}', '1', 4, 1, '2', '2', NULL, 'T_SYS_ORG', NULL);

-- ----------------------------
-- Table structure for t_sys_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_userinfo`;
CREATE TABLE `t_sys_userinfo`  (
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOGIN_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_REALNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_NO` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEPT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MOBILETEL` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FAX` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ZIP` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `STATE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_LOGINCOUNT` int(11) NULL DEFAULT NULL,
  `USER_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DREDGE_TIME` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SORT_NUM` int(11) NULL DEFAULT NULL,
  `CREATE_MAN` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LOGIN_IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LOGIN_DATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_DATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_userinfo
-- ----------------------------
INSERT INTO `t_sys_userinfo` VALUES ('9228208d5983487f9778411347450088', 'aaa', '7115e2e90a868e4dd32aadc940f90530', 'aaa', NULL, '1', NULL, '男', '123123', NULL, NULL, NULL, '0', NULL, NULL, NULL, 1, '9228208d5983487f9778411347450088', NULL, NULL, '2019-09-03 16:03:18');
INSERT INTO `t_sys_userinfo` VALUES ('a594d023a53d459da6435c8589f027df', 'admin', '7115e2e90a868e4dd32aadc940f90530', '超级管理员', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', 748, NULL, NULL, NULL, NULL, '0:0:0:0:0:0:0:1', '2019-09-20 20:54:28', '2015-12-11 11:19:19');

-- ----------------------------
-- Table structure for t_sys_userprivilege
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_userprivilege`;
CREATE TABLE `t_sys_userprivilege`  (
  `USERPRVIID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USERID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MODULEID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OPERATEID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`USERPRVIID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_post
-- ----------------------------
DROP TABLE IF EXISTS `t_user_post`;
CREATE TABLE `t_user_post`  (
  `USER_JOBID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `POST_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`USER_JOBID`) USING BTREE,
  INDEX `FK_T_USER_P_REFERENCE_T_SYS_US`(`USER_ID`) USING BTREE,
  INDEX `FK_T_USER_P_REFERENCE_T_SYS_PO`(`POST_ID`) USING BTREE,
  CONSTRAINT `FK_T_USER_P_REFERENCE_T_SYS_PO` FOREIGN KEY (`POST_ID`) REFERENCES `t_sys_post` (`POST_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_USER_P_REFERENCE_T_SYS_US` FOREIGN KEY (`USER_ID`) REFERENCES `t_sys_userinfo` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `USER_ROLEID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROLE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ROLEID`) USING BTREE,
  INDEX `FK_T_USER_R_REFERENCE_T_SYS_US`(`USER_ID`) USING BTREE,
  CONSTRAINT `FK_T_USER_R_REFERENCE_T_SYS_US` FOREIGN KEY (`USER_ID`) REFERENCES `t_sys_userinfo` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('98298ce63c6f4ec8a2a7a115241b1614', 'a594d023a53d459da6435c8589f027df', '89833d0ff0b440d386114a0b93eea2d0');

SET FOREIGN_KEY_CHECKS = 1;
