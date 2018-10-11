/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 10/10/2018 16:50:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `userpass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `age` int(11) NULL DEFAULT NULL COMMENT '用户年龄',
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `lastLogin` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `userStatus` int(11) NULL DEFAULT NULL COMMENT '用户状态 0 正常 1 锁定 2 删除',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'damu', 'damu', '李达康', 22, 'man', '4434342', '1222@12', '2017-05-16 00:00:00', '2018-10-07 16:04:25', NULL, 0, '终于成功了。。。');
INSERT INTO `users` VALUES (3, 'houjuzhang', '123456', '侯亮平', 34, 'man', '4434342', '23@qeqre1', '2017-05-16 00:00:00', '2018-10-07 18:42:35', NULL, 0, '33');
INSERT INTO `users` VALUES (4, 'jichangping', '111111', '季昌平', 55, 'man', '4432434232', '970800@qq.com', '2017-05-16 00:00:00', '2018-10-10 14:44:34', NULL, 0, '');
INSERT INTO `users` VALUES (5, 'chenhai', '222222', '陈海', 34, 'man', '52341431', '555@555', '2017-05-16 00:00:00', '2018-10-10 14:50:56', NULL, 0, '');
INSERT INTO `users` VALUES (6, 'ajax', 'sjdifs', '赵德汉', 33, 'man', '52341431', '1222@12', NULL, '2018-10-10 14:51:08', NULL, 0, '');
INSERT INTO `users` VALUES (8, '15869937776', '123', '高小琴', 30, 'woman', '1343876887', '97082200@qq.com', '2018-10-10 14:51:47', '2018-10-10 14:51:47', '2018-10-10 14:51:47', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
