/*
 Navicat Premium Data Transfer

 Source Server         : Linux-Server-02
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 39.98.156.205:5160
 Source Schema         : user

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 15/07/2020 18:07:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_ssm
-- ----------------------------
DROP TABLE IF EXISTS `user_ssm`;
CREATE TABLE `user_ssm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_ssm
-- ----------------------------
INSERT INTO `user_ssm` VALUES (1, '李明', '123456', '男', '北京');
INSERT INTO `user_ssm` VALUES (2, '王刚', '123456', '男', '上海');
INSERT INTO `user_ssm` VALUES (3, '张磊', '123456', '男', '广州');

SET FOREIGN_KEY_CHECKS = 1;
