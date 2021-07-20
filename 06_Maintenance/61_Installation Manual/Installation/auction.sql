/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : auction

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 15/05/2020 01:55:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

create database auction;
use auction;

-- ----------------------------
-- Table structure for t_bid
-- ----------------------------
DROP TABLE IF EXISTS `t_bid`;
CREATE TABLE `t_bid`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMODITY_ID` int(11) NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  `USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `DATE` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_LOG_USER_idx`(`USER_ID`) USING BTREE,
  INDEX `FK_BID_COMMODITY`(`COMMODITY_ID`) USING BTREE,
  CONSTRAINT `FK_BID_COMMODITY` FOREIGN KEY (`COMMODITY_ID`) REFERENCES `t_commodity` (`ID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_BID_USER` FOREIGN KEY (`USER_ID`) REFERENCES `t_user` (`ID`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bid
-- ----------------------------
INSERT INTO `t_bid` VALUES (119, NULL, 9, 'ccc', 101.00, '2020-05-04 13:40:48');
INSERT INTO `t_bid` VALUES (120, 29, 9, 'ccc', 101.00, '2020-05-04 13:56:01');
INSERT INTO `t_bid` VALUES (121, 2, 9, 'ccc', 2301.00, '2020-05-04 13:56:22');
INSERT INTO `t_bid` VALUES (122, 21, 9, 'ccc', 3561.00, '2020-05-04 13:56:29');
INSERT INTO `t_bid` VALUES (123, 29, 1, 'aa', 102.00, '2020-05-04 13:59:03');
INSERT INTO `t_bid` VALUES (124, 1, 1, 'aa', 13001.00, '2020-05-04 13:59:08');
INSERT INTO `t_bid` VALUES (125, 30, 1, 'aa', 101.00, '2020-05-04 13:59:12');
INSERT INTO `t_bid` VALUES (126, 22, 4, 'dd', 606.00, '2020-05-04 13:59:31');
INSERT INTO `t_bid` VALUES (127, 25, 4, 'dd', 48.00, '2020-05-04 13:59:52');
INSERT INTO `t_bid` VALUES (128, 5, 4, 'dd', 2682.00, '2020-05-04 14:03:29');
INSERT INTO `t_bid` VALUES (129, 12, 4, 'dd', 2301.00, '2020-05-04 14:03:35');
INSERT INTO `t_bid` VALUES (130, 3, 1, 'aa', 460.00, '2020-05-04 14:04:45');
INSERT INTO `t_bid` VALUES (131, 4, 1, 'aa', 2069.00, '2020-05-04 14:04:51');
INSERT INTO `t_bid` VALUES (132, 26, 1, 'aa', 101.00, '2020-05-04 14:04:57');
INSERT INTO `t_bid` VALUES (133, 28, 1, 'aa', 101.00, '2020-05-04 14:05:03');
INSERT INTO `t_bid` VALUES (134, 14, 1, 'aa', 3701.00, '2020-05-04 14:05:46');
INSERT INTO `t_bid` VALUES (135, 15, 1, 'aa', 588.00, '2020-05-04 14:05:56');
INSERT INTO `t_bid` VALUES (136, 16, 1, 'aa', 374.00, '2020-05-04 14:06:02');
INSERT INTO `t_bid` VALUES (137, 4, 9, 'ccc', 2070.00, '2020-05-04 20:28:50');
INSERT INTO `t_bid` VALUES (138, 32, 9, 'ccc', 1222.00, '2020-05-08 15:08:41');
INSERT INTO `t_bid` VALUES (139, 11, 9, 'ccc', 3000.00, '2020-05-08 18:43:15');
INSERT INTO `t_bid` VALUES (140, 11, 9, 'ccc', 3001.00, '2020-05-08 18:43:18');
INSERT INTO `t_bid` VALUES (141, 29, 9, 'ccc', 103.00, '2020-05-09 15:32:35');
INSERT INTO `t_bid` VALUES (142, 11, 9, 'ccc', 3002.00, '2020-05-09 15:32:43');
INSERT INTO `t_bid` VALUES (143, 11, 9, 'ccc', 3003.00, '2020-05-09 15:32:51');
INSERT INTO `t_bid` VALUES (144, 32, 9, 'ccc', 1223.00, '2020-05-09 15:56:20');
INSERT INTO `t_bid` VALUES (145, 32, 9, 'ccc', 1224.00, '2020-05-09 15:56:32');
INSERT INTO `t_bid` VALUES (146, 11, 9, 'ccc', 3004.00, '2020-05-13 01:04:34');
INSERT INTO `t_bid` VALUES (147, 22, 9, 'ccc', 607.00, '2020-05-13 01:05:23');
INSERT INTO `t_bid` VALUES (148, 29, 63838, 'admin', 104.00, '2020-05-13 15:00:11');
INSERT INTO `t_bid` VALUES (149, 22, 63839, 'aaaaaa', 608.00, '2020-05-14 01:59:02');
INSERT INTO `t_bid` VALUES (150, 22, 63839, 'aaaaaa', 9.00, '2020-05-14 02:01:05');
INSERT INTO `t_bid` VALUES (151, 22, 63839, 'aaaaaa', 10.00, '2020-05-14 02:01:12');
INSERT INTO `t_bid` VALUES (152, 22, 63839, 'aaaaaa', 10.00, '2020-05-14 02:01:17');
INSERT INTO `t_bid` VALUES (153, 22, 63839, 'aaaaaa', 10.01, '2020-05-14 02:04:07');
INSERT INTO `t_bid` VALUES (154, 22, 63839, 'aaaaaa', 11.01, '2020-05-14 02:07:21');
INSERT INTO `t_bid` VALUES (155, 22, 63839, 'aaaaaa', 12.01, '2020-05-14 02:07:24');
INSERT INTO `t_bid` VALUES (156, 22, 63839, 'aaaaaa', 12.01, '2020-05-14 02:07:33');
INSERT INTO `t_bid` VALUES (157, 22, 63839, 'aaaaaa', 16.01, '2020-05-14 02:14:05');
INSERT INTO `t_bid` VALUES (158, 22, 63839, 'aaaaaa', 17.01, '2020-05-14 02:15:15');
INSERT INTO `t_bid` VALUES (159, 22, 63839, 'aaaaaa', 100.00, '2020-05-14 02:15:53');
INSERT INTO `t_bid` VALUES (160, 22, 63839, 'aaaaaa', 102.00, '2020-05-14 02:16:22');
INSERT INTO `t_bid` VALUES (161, 22, 63839, 'aaaaaa', 108.00, '2020-05-14 02:16:26');
INSERT INTO `t_bid` VALUES (162, 22, 63839, 'aaaaaa', 120.00, '2020-05-14 02:17:21');
INSERT INTO `t_bid` VALUES (163, 30, 9, 'ccc', 102.00, '2020-05-14 02:37:57');
INSERT INTO `t_bid` VALUES (164, 30, 9, 'ccc', 103.00, '2020-05-14 02:45:37');
INSERT INTO `t_bid` VALUES (165, 30, 9, 'ccc', 104.00, '2020-05-14 02:46:10');
INSERT INTO `t_bid` VALUES (166, 29, 9, 'ccc', 105.00, '2020-05-14 02:47:46');
INSERT INTO `t_bid` VALUES (167, 29, 9, 'ccc', 105.10, '2020-05-14 02:49:51');
INSERT INTO `t_bid` VALUES (168, 29, 9, 'ccc', 105.20, '2020-05-14 02:50:20');
INSERT INTO `t_bid` VALUES (169, 29, 9, 'ccc', 105.21, '2020-05-14 02:50:40');
INSERT INTO `t_bid` VALUES (170, 31, 9, 'ccc', 101.00, '2020-05-14 14:08:16');
INSERT INTO `t_bid` VALUES (171, 31, 9, 'ccc', 102.02, '2020-05-14 14:08:20');
INSERT INTO `t_bid` VALUES (172, 31, 9, 'ccc', 103.02, '2020-05-14 14:08:23');
INSERT INTO `t_bid` VALUES (173, 31, 9, 'ccc', 103.03, '2020-05-14 21:36:32');
INSERT INTO `t_bid` VALUES (174, 22, 9, 'ccc', 121.00, '2020-05-14 21:44:18');
INSERT INTO `t_bid` VALUES (175, 22, 9, 'ccc', 122.00, '2020-05-14 21:44:22');
INSERT INTO `t_bid` VALUES (176, 33, 9, 'ccc', 12.00, '2020-05-15 00:56:44');

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMODITY_ID` int(11) NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  `CART_STATE` int(11) NULL DEFAULT NULL,
  `Date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_CART_COMMODITY`(`COMMODITY_ID`) USING BTREE,
  INDEX `FK_CART_USER`(`USER_ID`) USING BTREE,
  CONSTRAINT `FK_CART_COMMODITY` FOREIGN KEY (`COMMODITY_ID`) REFERENCES `t_commodity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CART_USER` FOREIGN KEY (`USER_ID`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_cart
-- ----------------------------
INSERT INTO `t_cart` VALUES (1, 31, 9, 2, '2020-05-09 01:18:57');
INSERT INTO `t_cart` VALUES (2, 30, 9, 2, '2020-05-09 01:21:20');
INSERT INTO `t_cart` VALUES (3, 32, 9, 2, '2020-05-09 01:23:13');
INSERT INTO `t_cart` VALUES (4, 30, 9, 2, '2020-05-09 15:29:05');
INSERT INTO `t_cart` VALUES (5, 29, 9, 2, '2020-05-09 15:31:16');
INSERT INTO `t_cart` VALUES (6, 29, 9, 2, '2020-05-09 15:31:41');
INSERT INTO `t_cart` VALUES (7, 11, 9, 2, '2020-05-09 15:53:29');
INSERT INTO `t_cart` VALUES (8, 32, 9, 2, '2020-05-09 15:56:20');
INSERT INTO `t_cart` VALUES (9, 32, 9, 2, '2020-05-09 15:56:32');
INSERT INTO `t_cart` VALUES (10, 21, 9, 1, '2020-05-09 15:57:36');
INSERT INTO `t_cart` VALUES (11, 30, 9, 2, '2020-05-13 01:03:23');
INSERT INTO `t_cart` VALUES (12, 32, 9, 2, '2020-05-13 01:03:30');
INSERT INTO `t_cart` VALUES (13, 4, 9, 2, '2020-05-13 01:03:33');
INSERT INTO `t_cart` VALUES (14, 13, 9, 2, '2020-05-13 01:03:37');
INSERT INTO `t_cart` VALUES (15, 22, 9, 2, '2020-05-13 01:03:39');
INSERT INTO `t_cart` VALUES (16, 11, 9, 1, '2020-05-13 01:04:34');
INSERT INTO `t_cart` VALUES (17, 22, 9, 1, '2020-05-13 01:05:23');
INSERT INTO `t_cart` VALUES (18, 29, 63838, 1, '2020-05-13 15:00:11');
INSERT INTO `t_cart` VALUES (19, 22, 63839, 1, '2020-05-14 01:59:02');
INSERT INTO `t_cart` VALUES (20, 30, 9, 1, '2020-05-14 02:37:57');
INSERT INTO `t_cart` VALUES (21, 29, 9, 1, '2020-05-14 02:47:47');
INSERT INTO `t_cart` VALUES (22, 31, 9, 1, '2020-05-14 14:08:16');
INSERT INTO `t_cart` VALUES (23, 34, 9, 1, '2020-05-15 00:56:33');
INSERT INTO `t_cart` VALUES (24, 33, 9, 1, '2020-05-15 00:56:45');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `ID` int(11) NOT NULL,
  `TYPE` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `id`(`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (1, 'TOY', 'TOY。。。。。。。。。');
INSERT INTO `t_category` VALUES (2, 'KITCHEN&STUFF', 'KITCHEN&STUFF.....');
INSERT INTO `t_category` VALUES (3, 'TOOLS', 'TOOLS。。。。。。。。');
INSERT INTO `t_category` VALUES (4, 'DECORATION', 'DECORATION.....');
INSERT INTO `t_category` VALUES (5, 'CLOTHES', 'CLOTHES.......');

-- ----------------------------
-- Table structure for t_commodity
-- ----------------------------
DROP TABLE IF EXISTS `t_commodity`;
CREATE TABLE `t_commodity`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `WINNER_ID` int(11) NULL DEFAULT NULL,
  `MAX_PRICE` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `INTRODUCE` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PICTURE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CLOSE_DATE` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `STATE` int(11) NOT NULL DEFAULT 1 COMMENT '1：表示未卖出\\n2：已卖出',
  `CATEGORY` int(10) NULL DEFAULT NULL,
  `TITLE` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PUBLISH_DATE` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  INDEX `FK_COMMODITY_USER`(`USER_ID`) USING BTREE,
  INDEX `id`(`ID`) USING BTREE,
  INDEX `FK_COMMODITY_CATEGORY`(`CATEGORY`) USING BTREE,
  INDEX `ID_2`(`ID`) USING BTREE,
  INDEX `ID_3`(`ID`) USING BTREE,
  CONSTRAINT `FK_COMMODITY_CATEGORY` FOREIGN KEY (`CATEGORY`) REFERENCES `t_category` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_COMMODITY_USER` FOREIGN KEY (`USER_ID`) REFERENCES `t_user` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_commodity
-- ----------------------------
INSERT INTO `t_commodity` VALUES (1, 1, 1, 13001.00, 13000.00, 'IWC - Da Vinci Rattrapante Perpetual Calender LIMITED - 375401 - X', 'img/watch/watch_iwc_1.PNG', '2020-05-04 14:12:00', 1, 1, 'IWC', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (2, 1, 9, 2301.00, 2300.00, 'OysterDate Precision - 6694- 1960-1969', 'img/watch/watch_rolex_1.PNG', '2020-05-04 14:13:00', 1, 1, 'WTCH', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (3, 3, 1, 460.00, 459.00, 'New Zealand will move to level 3 of lockdown from 11.59pm next Monday, April 27.\r\n\r\nAlert level 3 will be held for two weeks and then Cabinet will assess whether to move down another level.\r\n\r\nPrime Minister Jacinda Ardern made the announcement just after 4pm today.\r\n\r\nCabinet wanted to \"lock in some gains\" and the extra five days at alert level 4 would give some certainty that efforts to eliminate the virus were on track, Ardern said.\r\nNew Zealand will move to level 3 of lockdown from 11.59pm next Monday, April 27.\r\n\r\nAlert level 3 will be held for two weeks and then Cabinet will assess whether to move down another level.\r\n\r\nPrime Minister Jacinda Ardern made the announcement just after 4pm today.\r\n\r\nCabinet wanted to \"lock in some gains\" and the extra five days at alert level 4 would give some certainty that efforts to eliminate the virus were on track, Ardern said.\r\n\r\n', 'img/watch/watch_eterna_1.PNG', '2020-05-06 00:00:00', 1, 1, 'TITLE2', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (4, 3, 9, 2070.00, 2068.00, 'Rapport London - Paramount Nine Watch Winder - W409 - 中性 - 2011至现在', 'img/watch/watch_rapport_1.PNG', '2020-05-06 00:00:00', 1, 1, 'TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (5, 2, 4, 2682.00, 2681.00, 'Chopard - St Moritz Gold/Steel - 8024 - 女士 - 2000-2010', 'img/watch/watch_chopard_1.PNG', '2020-05-06 00:00:00', 1, 2, 'TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (11, 1, 9, 3004.00, 2999.00, 'Leloup,Roger - Dessin (1983)', 'img/book/book1.jpg', '2020-05-22 00:00:00', 2, 2, 'TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (12, 1, 4, 2301.00, 2300.00, 'Blake&Mortimer T4(2017)', 'img/book/book2.jpg', '2020-05-06 00:00:00', 1, 2, 'TITLE..TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (13, 2, NULL, 5423.00, 5423.00, 'Barbe Rouge T2 - Le Roi des septs mers(1962)', 'img/book/book3.jpg', '2020-05-06 00:00:00', 1, 2, 'TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (14, 2, 1, 3701.00, 3700.00, 'Asterix T2 - La Serpe(1962)', 'img/book/book4.jpg', '2020-05-06 00:00:00', 1, 2, 'TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (15, 1, 1, 588.00, 587.00, 'Evelyn Paul, D.G. Rossetti - Stories from Dante - 1910', 'img/book/book_susan_1.PNG', '2020-05-06 00:00:00', 1, 2, 'TITLE..', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (16, 2, 1, 374.00, 373.00, 'Tintin T23 - Tintin et les Picaros - Tirage Cocktail', 'img/book/book_tintin_1.PNG', '2020-05-06 00:00:00', 1, 2, 'T', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (21, 1, 9, 3561.00, 3560.00, '比利时 1869/1883 - Leopold II issue 1869 - OBP 37', 'img/stamp/stamp1.PNG', '2020-05-06 00:00:00', 1, 3, 'T', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (22, 2, 9, 122.00, 605.00, '比利时 1849 - Leopold I epaulettes - OBP 2', 'img/stamp/stamp2.PNG', '2020-05-23 05:23:00', 2, 3, 'T', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (23, 2, NULL, 85.00, 85.00, '同盟国军事占领德国(苏维埃区域） 1946 - West Saxony', 'img/stamp/stamp3.PNG', '2020-05-06 00:00:00', 1, 3, 'T', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (24, 1, NULL, 56.00, 56.00, '东德 1950/1955 - Blockausgaben, seven pieces - Michel Blok 7', 'img/stamp/stamp4.PNG', '2020-05-06 00:00:00', 3, 3, 'T', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (25, 1, 4, 48.00, 47.00, '撒丁岛 1858 - 10 cents umber - Sassone N. 14', 'img/stamp/stamp5.PNG', '2020-05-06 00:00:00', 1, 3, 'T', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (26, 9, 1, 101.00, 100.00, 'test', 'imges/45999f61-9612-4d8d-bc5f-6f019fc6928e.jpg', '2020-05-06 00:00:00', 1, 1, 'test', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (27, 9, NULL, 10000.00, 10000.00, 'test', 'imges/b18ae9a2-efab-4a98-aff1-30a71b614442.jpg', '2020-05-06 00:00:00', 1, 1, 'test2', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (28, 9, 1, 101.00, 100.00, 'SEVERE: Servlet.service() for servlet [servlet.CommodityServlet_d] in context with path [/auction] threw exception\r\njava.lang.NullPointerException\r\n	at servlet.CommodityServlet_d.doPost(CommodityServlet_d.java:94)\r\n	at servlet.CommodityServlet_d.doGet(CommodityServlet_d.java:73)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)', 'imges/7d7ce174-494d-41f1-9fca-8676cd48131c.jpg', '2020-05-06 00:00:00', 1, 1, 'test3', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (29, 63838, 9, 105.21, 100.00, 'ddddd', 'imges/f7a514b9-5710-4459-af9a-227f2aa5afe8.jpg', '2020-05-31 01:00:00', 3, 1, 'test', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (30, 63838, 9, 104.00, 100.00, 'dddd', 'imges/4662163f-5a38-40d9-9570-ce80493c1d3e.jpg', '2020-05-31 03:00:00', 2, 4, 'tttt', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (31, 63838, 9, 103.03, 100.00, 'ddddd', 'imges/8dad94e4-7d3b-4db3-985c-3e27bfd0969f.jpg', '2020-05-30 00:00:00', 2, 5, 'test', '2020-03-31 19:17:45');
INSERT INTO `t_commodity` VALUES (32, 63838, 9, 1224.00, 1221.00, 'Description', 'imges/65a7c7ef-1cdf-4a03-a171-45f27c8d9701.png', '2020-05-24 10:11:00', 2, 1, 'Title2', '2020-05-02 01:42:03');
INSERT INTO `t_commodity` VALUES (33, 63838, 9, 12.00, 11.00, 'Description222333', 'imges/c1241cbd-8193-432d-b98a-576e6122e98b.jpg', '2020-07-11 22:11:00', 2, 1, 'commodity update', '2020-05-13 17:31:52');
INSERT INTO `t_commodity` VALUES (34, 63838, NULL, 100.00, 100.00, 'bow', 'imges/08e8786a-ad8b-435e-a33a-240f4c217a48.png', '2020-06-28 12:20:00', 2, 2, 'new commodity', '2020-05-14 22:53:27');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  `USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DATE` datetime(0) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_LOG_USER`(`USER_ID`) USING BTREE,
  CONSTRAINT `FK_LOG_USER` FOREIGN KEY (`USER_ID`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMODITY_ID` int(11) NULL DEFAULT NULL,
  `WINNER_ID` int(11) NULL DEFAULT NULL,
  `PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DEAL_DATE` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CATEGORY` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PICK_UP_DATE` datetime(0) NULL DEFAULT NULL,
  `PICK_UP_STATE` int(11) NULL DEFAULT NULL,
  `MESSAGE` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `T_ORDER_COMMODITY`(`COMMODITY_ID`) USING BTREE,
  INDEX `T_ORDER_USER`(`WINNER_ID`) USING BTREE,
  CONSTRAINT `T_ORDER_COMMODITY` FOREIGN KEY (`COMMODITY_ID`) REFERENCES `t_commodity` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `T_ORDER_USER` FOREIGN KEY (`WINNER_ID`) REFERENCES `t_user` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (10, 1, 1, 13001.00, NULL, '2020-05-04 14:12:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (11, 2, 9, 2301.00, NULL, '2020-05-04 14:13:00', NULL, '2020-05-29 00:12:00', 1, 'dddddd');
INSERT INTO `t_order` VALUES (13, 3, 1, 460.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 1, NULL);
INSERT INTO `t_order` VALUES (14, 5, 4, 2682.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (15, 21, 9, 3561.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (16, 12, 4, 2301.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (17, 16, 1, 374.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (18, 15, 1, 588.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (19, 4, 9, 2070.00, NULL, '2020-05-06 00:00:00', NULL, '2020-06-02 00:00:00', 3, 'ddd');
INSERT INTO `t_order` VALUES (20, 14, 1, 3701.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (21, 25, 4, 48.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (22, 26, 1, 101.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);
INSERT INTO `t_order` VALUES (23, 28, 1, 101.00, NULL, '2020-05-06 00:00:00', NULL, NULL, 2, NULL);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADDRESS` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADMIN` int(11) NOT NULL DEFAULT 2 COMMENT '1 Admin ；2 normal user',
  `FIRST_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GENDER` int(11) NULL DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ID`(`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63845 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'aa', '123', '2113500011', '10 titiro mand', 2, 'fistnameA', 'LastNameA', 2, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (2, 'bb', '123', '2113500012', '11 titiro mand', 2, 'fistnameB', 'LastNameB', 2, 'e@mail.com', 2);
INSERT INTO `t_user` VALUES (3, 'cc', '123', '2113500013', '12 titiro mand', 2, 'fistnameC', 'LastNameC', 2, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (4, 'dd', '123', '2113500014', '13 titiro mand', 2, 'fistnameD', 'LastNameD', 1, 'e@mail.com', 2);
INSERT INTO `t_user` VALUES (5, 'ee', '123', '2113500015', '14 titiro mand', 2, 'fistnameE', 'LastNameE', 1, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (6, 'ff', '123', '2113500016', '15 titiro mand', 2, 'fistnameF', 'LastNameF', 1, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (7, 'gg', '123', '2113500017', '16 titiro mand', 2, 'fistnameG', 'LastNameG', 1, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (8, 'hh', '123', '2113500018', '17 titiro mand', 2, 'fistnameH', 'LastNameH', 1, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (9, 'ccc', '123', '0211111112233', '17 titiro mand', 2, 'ccc33', 'ccc33', 1, 'e33@mail.com', 1);
INSERT INTO `t_user` VALUES (63838, 'admin', '123', '0211350560', '17 titiro mand', 1, 'y', 'u', 2, 'e@mail.com', 1);
INSERT INTO `t_user` VALUES (63839, 'aaaaaa', '123', '0211350560', '10 Titiro Moana Rd, ,, Korokoro', 2, 'Cong', 'Shang', 1, 'shangcongvip@163.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
