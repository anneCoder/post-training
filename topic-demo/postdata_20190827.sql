/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.233.129
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 192.168.233.129:3306
 Source Schema         : postdata

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 27/08/2019 16:21:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_power_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_power_info`;
CREATE TABLE `tbl_power_info`  (
  `power_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `power_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `create_time` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`power_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_power_info
-- ----------------------------
INSERT INTO `tbl_power_info` VALUES (1, 'add user', NULL, NULL);
INSERT INTO `tbl_power_info` VALUES (2, 'update user\'s type', NULL, NULL);
INSERT INTO `tbl_power_info` VALUES (3, 'delete random topic', NULL, NULL);
INSERT INTO `tbl_power_info` VALUES (4, 'delete personal topic', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_topic_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_topic_info`;
CREATE TABLE `tbl_topic_info`  (
  `topic_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '话题ID',
  `topic_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '话题标题',
  `topic_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '话题内容',
  `user_id` bigint(10) NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_topic_reply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_topic_reply`;
CREATE TABLE `tbl_topic_reply`  (
  `reply_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '回复ID',
  `topic_id` bigint(10) NOT NULL COMMENT '话题ID',
  `reply_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复内容',
  `user_id` bigint(10) NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`reply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_info`;
CREATE TABLE `tbl_user_info`  (
  `user_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `icon_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `type_id` int(10) NOT NULL DEFAULT 3 COMMENT '用户类型ID',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `is_valid` int(5) NULL DEFAULT 0 COMMENT '是否有效，0：有效，1：封禁',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_info
-- ----------------------------
INSERT INTO `tbl_user_info` VALUES (1, 'Anne', '99999@qq.com', '/userImg/anne.jpg', 3, '123456', NULL, NULL, 0);

-- ----------------------------
-- Table structure for tbl_user_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_type`;
CREATE TABLE `tbl_user_type`  (
  `type_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户类型ID',
  `power_id_list` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户权限列表',
  `user_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型，包括普通用户、管理员、超级管理员',
  `create_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_type
-- ----------------------------
INSERT INTO `tbl_user_type` VALUES (1, '[1,2,3,4]', '超级管理员', NULL, NULL);
INSERT INTO `tbl_user_type` VALUES (2, '[3,4]', '普通管理员', NULL, NULL);
INSERT INTO `tbl_user_type` VALUES (3, '[4]', '普通用户', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
