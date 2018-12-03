/*
Navicat MySQL Data Transfer

Source Server         : xz
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : aby

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-10 17:08:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aby_city
-- ----------------------------
DROP TABLE IF EXISTS `aby_city`;
CREATE TABLE `aby_city` (
  `countryid` int(11) DEFAULT NULL,
  `cityid` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cityid`),
  KEY `countryid` (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aby_city
-- ----------------------------
INSERT INTO `aby_city` VALUES ('10', '101', '重庆');
INSERT INTO `aby_city` VALUES ('10', '102', '北京');
INSERT INTO `aby_city` VALUES ('10', '103', '杭州');
INSERT INTO `aby_city` VALUES ('10', '104', '成都');
INSERT INTO `aby_city` VALUES ('10', '105', '台北');
INSERT INTO `aby_city` VALUES ('20', '201', '巴黎');
INSERT INTO `aby_city` VALUES ('20', '202', '尼斯');
INSERT INTO `aby_city` VALUES ('20', '203', '戛纳');
INSERT INTO `aby_city` VALUES ('20', '204', '里昂');
INSERT INTO `aby_city` VALUES ('30', '301', '东京');
INSERT INTO `aby_city` VALUES ('30', '302', '北海道');
INSERT INTO `aby_city` VALUES ('30', '303', '大阪');
INSERT INTO `aby_city` VALUES ('30', '304', '奈良');
INSERT INTO `aby_city` VALUES ('40', '401', '曼谷');
INSERT INTO `aby_city` VALUES ('40', '402', null);
INSERT INTO `aby_city` VALUES ('40', '403', null);
INSERT INTO `aby_city` VALUES ('40', '404', null);
INSERT INTO `aby_city` VALUES ('50', '501', '伦敦');
INSERT INTO `aby_city` VALUES ('50', '502', null);
INSERT INTO `aby_city` VALUES ('50', '503', null);
INSERT INTO `aby_city` VALUES ('50', '504', null);
INSERT INTO `aby_city` VALUES ('60', '601', '纽约');
INSERT INTO `aby_city` VALUES ('60', '602', '洛杉矶');
INSERT INTO `aby_city` VALUES ('60', '603', '旧金山');
INSERT INTO `aby_city` VALUES ('60', '604', null);

-- ----------------------------
-- Table structure for aby_country
-- ----------------------------
DROP TABLE IF EXISTS `aby_country`;
CREATE TABLE `aby_country` (
  `countryid` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aby_country
-- ----------------------------
INSERT INTO `aby_country` VALUES ('10', '中国');
INSERT INTO `aby_country` VALUES ('20', '法国');
INSERT INTO `aby_country` VALUES ('30', '日本');
INSERT INTO `aby_country` VALUES ('40', '泰国');
INSERT INTO `aby_country` VALUES ('50', '英国');
INSERT INTO `aby_country` VALUES ('60', '美国');

-- ----------------------------
-- Table structure for aby_housedetails
-- ----------------------------
DROP TABLE IF EXISTS `aby_housedetails`;
CREATE TABLE `aby_housedetails` (
  `cityid` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `family_title` varchar(255) DEFAULT NULL,
  `xiang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aby_housedetails
-- ----------------------------
INSERT INTO `aby_housedetails` VALUES ('101', 'img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg', '79', '【华夏】恒福文化区独门花园oft古典', '整间阁楼·1室1床1卫', 'touxiang/nv1.jpg');
INSERT INTO `aby_housedetails` VALUES ('101', 'img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg', '79', '【华夏】恒福文化区独门花园oft古典', '整间阁楼·1室1床1卫', 'touxiang/nv1.jpg');
INSERT INTO `aby_housedetails` VALUES ('101', 'img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg', '79', '【华夏】恒福文化区独门花园oft古典', '整间阁楼·1室1床1卫', 'touxiang/nv1.jpg');
INSERT INTO `aby_housedetails` VALUES ('101', 'img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg', '79', '【华夏】恒福文化区独门花园oft古典', '整间阁楼·1室1床1卫', 'touxiang/nv1.jpg');
INSERT INTO `aby_housedetails` VALUES ('101', 'img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg', '79', '【华夏】恒福文化区独门花园oft古典', '整间阁楼·1室1床1卫', 'touxiang/nv1.jpg');
INSERT INTO `aby_housedetails` VALUES ('101', 'img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg', '79', '【华夏】恒福文化区独门花园oft古典', '整间阁楼·1室1床1卫', 'touxiang/nv1.jpg');
INSERT INTO `aby_housedetails` VALUES ('102', 'img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg', '66', '二环里北京胡同独门独院什刹海，鼓楼都靠近中心', '独立房间·1室2床1卫', 'touxiang/nan1.jpg');
INSERT INTO `aby_housedetails` VALUES ('102', 'img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg', '66', '二环里北京胡同独门独院什刹海，鼓楼都靠近中心', '独立房间·1室2床1卫', 'touxiang/nan1.jpg');
INSERT INTO `aby_housedetails` VALUES ('102', 'img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg', '66', '二环里北京胡同独门独院什刹海，鼓楼都靠近中心', '独立房间·1室2床1卫', 'touxiang/nan1.jpg');
INSERT INTO `aby_housedetails` VALUES ('102', 'img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg', '66', '二环里北京胡同独门独院什刹海，鼓楼都靠近中心', '独立房间·1室2床1卫', 'touxiang/nan1.jpg');
INSERT INTO `aby_housedetails` VALUES ('102', 'img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg', '66', '二环里北京胡同独门独院什刹海，鼓楼都靠近中心', '独立房间·1室2床1卫', 'touxiang/nan1.jpg');
INSERT INTO `aby_housedetails` VALUES ('102', 'img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg', '66', '二环里北京胡同独门独院什刹海，鼓楼都靠近中心', '独立房间·1室2床1卫', 'touxiang/nan1.jpg');
INSERT INTO `aby_housedetails` VALUES ('103', 'img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg', '270', '西湖之巅零距离海景房|西湖、地铁站、河边走一走', '整套酒店式公寓·1室2床1卫', 'touxiang/nv2.jpg');
INSERT INTO `aby_housedetails` VALUES ('103', 'img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg', '270', '西湖之巅零距离海景房|西湖、地铁站、河边走一走', '整套酒店式公寓·1室2床1卫', 'touxiang/nv2.jpg');
INSERT INTO `aby_housedetails` VALUES ('103', 'img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg', '270', '西湖之巅零距离海景房|西湖、地铁站、河边走一走', '整套酒店式公寓·1室2床1卫', 'touxiang/nv2.jpg');
INSERT INTO `aby_housedetails` VALUES ('103', 'img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg', '270', '西湖之巅零距离海景房|西湖、地铁站、河边走一走', '整套酒店式公寓·1室2床1卫', 'touxiang/nv2.jpg');
INSERT INTO `aby_housedetails` VALUES ('103', 'img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg', '270', '西湖之巅零距离海景房|西湖、地铁站、河边走一走', '整套酒店式公寓·1室2床1卫', 'touxiang/nv2.jpg');
INSERT INTO `aby_housedetails` VALUES ('103', 'img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg', '270', '西湖之巅零距离海景房|西湖、地铁站、河边走一走', '整套酒店式公寓·1室2床1卫', 'touxiang/nv2.jpg');
INSERT INTO `aby_housedetails` VALUES ('104', 'img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg', '138', '成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有', '独立房间·1室1床1卫', 'touxiang/nan2.jpg');
INSERT INTO `aby_housedetails` VALUES ('104', 'img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg', '138', '成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有', '独立房间·1室1床1卫', 'touxiang/nan2.jpg');
INSERT INTO `aby_housedetails` VALUES ('104', 'img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg', '138', '成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有', '独立房间·1室1床1卫', 'touxiang/nan2.jpg');
INSERT INTO `aby_housedetails` VALUES ('104', 'img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg', '138', '成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有', '独立房间·1室1床1卫', 'touxiang/nan2.jpg');
INSERT INTO `aby_housedetails` VALUES ('104', 'img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg', '138', '成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有', '独立房间·1室1床1卫', 'touxiang/nan2.jpg');
INSERT INTO `aby_housedetails` VALUES ('104', 'img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg', '138', '成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有', '独立房间·1室1床1卫', 'touxiang/nan2.jpg');
INSERT INTO `aby_housedetails` VALUES ('501', 'img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg', '637', 'Stylish room /10 mins to Big Ben', '独立房间·1室1床1.5卫', 'touxiang/nv3.jpg');
INSERT INTO `aby_housedetails` VALUES ('501', 'img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg', '637', 'Stylish room /10 mins to Big Ben', '独立房间·1室1床1.5卫', 'touxiang/nv3.jpg');
INSERT INTO `aby_housedetails` VALUES ('501', 'img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg', '637', 'Stylish room /10 mins to Big Ben', '独立房间·1室1床1.5卫', 'touxiang/nv3.jpg');
INSERT INTO `aby_housedetails` VALUES ('501', 'img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg', '637', 'Stylish room /10 mins to Big Ben', '独立房间·1室1床1.5卫', 'touxiang/nv3.jpg');
INSERT INTO `aby_housedetails` VALUES ('501', 'img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg', '637', 'Stylish room /10 mins to Big Ben', '独立房间·1室1床1.5卫', 'touxiang/nv3.jpg');
INSERT INTO `aby_housedetails` VALUES ('501', 'img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg', '637', 'Stylish room /10 mins to Big Ben', '独立房间·1室1床1.5卫', 'touxiang/nv3.jpg');
INSERT INTO `aby_housedetails` VALUES ('301', 'img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg', '381', '新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!', '整套公寓·1室2床1卫', 'touxiang/couple1.jpg');
INSERT INTO `aby_housedetails` VALUES ('301', 'img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg', '381', '新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!', '整套公寓·1室2床1卫', 'touxiang/couple1.jpg');
INSERT INTO `aby_housedetails` VALUES ('301', 'img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg', '381', '新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!', '整套公寓·1室2床1卫', 'touxiang/couple1.jpg');
INSERT INTO `aby_housedetails` VALUES ('301', 'img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg', '381', '新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!', '整套公寓·1室2床1卫', 'touxiang/couple1.jpg');
INSERT INTO `aby_housedetails` VALUES ('301', 'img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg', '381', '新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!', '整套公寓·1室2床1卫', 'touxiang/couple1.jpg');
INSERT INTO `aby_housedetails` VALUES ('301', 'img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg', '381', '新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!', '整套公寓·1室2床1卫', 'touxiang/couple1.jpg');
INSERT INTO `aby_housedetails` VALUES ('201', 'img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg', '873', 'Modern Upscale Flat Eiffel Beaugrenelle', '整套公寓·1室1床1卫', 'touxiang/couple2.jpg');
INSERT INTO `aby_housedetails` VALUES ('105', 'img/f437694f-6f64-4e41-ab80-2fd734aac320.jpg', '362', 'KAWS @Taipei MRT西門站 5mins (2-3人房) free Wifi-Egg', '整间阁楼·单间1床1卫', 'touxiang/mannan.jpg');
INSERT INTO `aby_housedetails` VALUES ('105', 'img/f437694f-6f64-4e41-ab80-2fd734aac320.jpg', '362', 'KAWS @Taipei MRT西門站 5mins (2-3人房) free Wifi-Egg', '整间阁楼·单间1床1卫', 'touxiang/mannan.jpg');
INSERT INTO `aby_housedetails` VALUES ('105', 'img/f437694f-6f64-4e41-ab80-2fd734aac320.jpg', '362', 'KAWS @Taipei MRT西門站 5mins (2-3人房) free Wifi-Egg', '整间阁楼·单间1床1卫', 'touxiang/mannan.jpg');
INSERT INTO `aby_housedetails` VALUES ('105', 'img/f437694f-6f64-4e41-ab80-2fd734aac320.jpg', '362', 'KAWS @Taipei MRT西門站 5mins (2-3人房) free Wifi-Egg', '整间阁楼·单间1床1卫', 'touxiang/mannan.jpg');
INSERT INTO `aby_housedetails` VALUES ('105', 'img/f437694f-6f64-4e41-ab80-2fd734aac320.jpg', '362', 'KAWS @Taipei MRT西門站 5mins (2-3人房) free Wifi-Egg', '整间阁楼·单间1床1卫', 'touxiang/mannan.jpg');
INSERT INTO `aby_housedetails` VALUES ('105', 'img/f437694f-6f64-4e41-ab80-2fd734aac320.jpg', '362', 'KAWS @Taipei MRT西門站 5mins (2-3人房) free Wifi-Egg', '整间阁楼·单间1床1卫', 'touxiang/mannan.jpg');
INSERT INTO `aby_housedetails` VALUES ('201', 'img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg', '873', 'Modern Upscale Flat Eiffel Beaugrenelle', '整套公寓·1室1床1卫', 'touxiang/couple2.jpg');
INSERT INTO `aby_housedetails` VALUES ('201', 'img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg', '873', 'Modern Upscale Flat Eiffel Beaugrenelle', '整套公寓·1室1床1卫', 'touxiang/couple2.jpg');
INSERT INTO `aby_housedetails` VALUES ('201', 'img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg', '873', 'Modern Upscale Flat Eiffel Beaugrenelle', '整套公寓·1室1床1卫', 'touxiang/couple2.jpg');
INSERT INTO `aby_housedetails` VALUES ('201', 'img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg', '873', 'Modern Upscale Flat Eiffel Beaugrenelle', '整套公寓·1室1床1卫', 'touxiang/couple2.jpg');
INSERT INTO `aby_housedetails` VALUES ('201', 'img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg', '873', 'Modern Upscale Flat Eiffel Beaugrenelle', '整套公寓·1室1床1卫', 'touxiang/couple2.jpg');

-- ----------------------------
-- Table structure for aby_lunbo
-- ----------------------------
DROP TABLE IF EXISTS `aby_lunbo`;
CREATE TABLE `aby_lunbo` (
  `lunbo_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_lunbo` varchar(255) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `lunbo_title` varchar(255) DEFAULT NULL,
  `lunbo_family_title` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`lunbo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aby_lunbo
-- ----------------------------
INSERT INTO `aby_lunbo` VALUES ('1', 'img_house/lunbo1.jpg', '102', '北京站附近的是一套交通位置超级方便的房源公寓', '整套公寓', '498');
INSERT INTO `aby_lunbo` VALUES ('2', 'img_house/lunbo2.jpg', '102', '侨福芳草地 世贸天阶附近的风景好 美式精致公寓型住宅', '整套公寓', '727');
INSERT INTO `aby_lunbo` VALUES ('3', 'img_house/lunbo1.jpg', '102', '能量小屋中心紧邻中轴线德胜门的公寓型住宅,舒适睡眠､静心冥想､心想事成', '整套公寓', '478');
INSERT INTO `aby_lunbo` VALUES ('4', 'img_house/lunbo2.jpg', '102', '全屋新风净化､东二环朝阳门建国门附近舒适安静干净的公寓', '整套公寓', '851');
INSERT INTO `aby_lunbo` VALUES ('5', 'img_house/lunbo1.jpg', '102', '三里屯太古里附近的精品艺术民宿公寓', '整套公寓', '893');
INSERT INTO `aby_lunbo` VALUES ('6', 'img_house/lunbo2.jpg', '102', '【MAO Home】北二环内心脏位置 北锣鼓巷', '整套公寓', '727');
INSERT INTO `aby_lunbo` VALUES ('7', 'img_house/lunbo1.jpg', '102', '前门天安门崇文门王府井协和同仁医院阳光双大床房(二)', '整套公寓', '526');
INSERT INTO `aby_lunbo` VALUES ('8', 'img_house/lunbo2.jpg', '102', '入住新光大中心地铁北关大运河燃灯塔的Loft,烛光晚餐洽谈业务沟通感情闲喝茶', '整套公寓', '1149');

-- ----------------------------
-- Table structure for aby_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `aby_pinglun`;
CREATE TABLE `aby_pinglun` (
  `pinglun_id` int(11) NOT NULL AUTO_INCREMENT,
  `touxiang` varchar(255) DEFAULT NULL,
  `story` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `uname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `date` varchar(255) DEFAULT NULL COMMENT '发表日期',
  PRIMARY KEY (`pinglun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aby_pinglun
-- ----------------------------
INSERT INTO `aby_pinglun` VALUES ('1', '3', '我认为的', '担任法国东方', '2018');
INSERT INTO `aby_pinglun` VALUES ('2', null, null, '', '2018-11-07 08:40:43.561');
INSERT INTO `aby_pinglun` VALUES ('3', null, null, '', '2018-11-07 08:41:07.103');
INSERT INTO `aby_pinglun` VALUES ('4', null, null, '', '2018-11-07 08:41:07.318');
INSERT INTO `aby_pinglun` VALUES ('5', null, null, '', '2018-11-07 08:41:07.493');
INSERT INTO `aby_pinglun` VALUES ('6', null, null, '', '2018-11-07 08:41:07.669');
INSERT INTO `aby_pinglun` VALUES ('7', null, null, '', '2018-11-07 08:41:07.869');
INSERT INTO `aby_pinglun` VALUES ('8', null, null, '', '2018-11-07 08:42:28.167');
INSERT INTO `aby_pinglun` VALUES ('9', null, null, '', '2018-11-07 08:42:28.181');
INSERT INTO `aby_pinglun` VALUES ('10', null, null, '', '2018-11-07 08:42:44.918');
INSERT INTO `aby_pinglun` VALUES ('11', null, 'aaaa', 'dingding', '2018-11-07 08:59:41.676');
INSERT INTO `aby_pinglun` VALUES ('12', null, '我是女神', 'dingding', '2018-11-10 14:18:56.067');
INSERT INTO `aby_pinglun` VALUES ('13', null, '我是女神经', 'dingding', '2018-11-10 14:20:12.035');
INSERT INTO `aby_pinglun` VALUES ('14', null, '我是', 'dingding', '2018-11-10 14:21:04.722');
INSERT INTO `aby_pinglun` VALUES ('15', null, '你神经病啊', 'dingding', '2018-11-10 14:29:46.276');
INSERT INTO `aby_pinglun` VALUES ('16', null, '神经病啊', 'dingding', '2018-11-10 14:33:00.252');
INSERT INTO `aby_pinglun` VALUES ('17', null, '李张张', 'dingding', '2018-11-10 14:33:35.635');
INSERT INTO `aby_pinglun` VALUES ('18', null, '我', 'dingding', '2018-11-10 14:34:23.267');
INSERT INTO `aby_pinglun` VALUES ('19', null, '我呵呵', 'dingding', '2018-11-10 14:34:30.554');
INSERT INTO `aby_pinglun` VALUES ('20', null, 'zhangzhang', 'dingding', '2018-11-10 14:35:45.602');
INSERT INTO `aby_pinglun` VALUES ('21', null, 'wangenze', 'dingding', '2018-11-10 14:35:55.906');
INSERT INTO `aby_pinglun` VALUES ('22', null, '下', 'dingding', '2018-11-10 14:37:32.329');
INSERT INTO `aby_pinglun` VALUES ('23', null, '下', 'dingding', '2018-11-10 14:37:36.401');
INSERT INTO `aby_pinglun` VALUES ('24', null, '效率', 'dingding', '2018-11-10 14:38:13.713');
INSERT INTO `aby_pinglun` VALUES ('25', null, 'bjhgkjhi', 'dingding', '2018-11-10 14:38:46.081');
INSERT INTO `aby_pinglun` VALUES ('26', null, 'bjhgkjhi', 'dingding', '2018-11-10 14:38:51.161');
INSERT INTO `aby_pinglun` VALUES ('27', null, '63546', 'dingding', '2018-11-10 14:38:56.593');
INSERT INTO `aby_pinglun` VALUES ('28', null, 'dxgdfg', 'dingding', '2018-11-10 14:39:24.600');
INSERT INTO `aby_pinglun` VALUES ('29', null, 'dxgdfgxzfefdf', 'dingding', '2018-11-10 14:39:29.809');
INSERT INTO `aby_pinglun` VALUES ('30', null, 'kcczc', 'dingding', '2018-11-10 14:40:41.735');
INSERT INTO `aby_pinglun` VALUES ('31', null, 'kcczczcczsc', 'dingding', '2018-11-10 14:40:52.231');
INSERT INTO `aby_pinglun` VALUES ('32', null, 'aerfasdf', 'dingding', '2018-11-10 14:46:21.143');
INSERT INTO `aby_pinglun` VALUES ('33', null, 'aerfasdfasdfasdfas', 'dingding', '2018-11-10 14:46:26.644');
INSERT INTO `aby_pinglun` VALUES ('34', null, 'sacsd', 'dingding', '2018-11-10 14:51:53.784');
INSERT INTO `aby_pinglun` VALUES ('35', null, ';p[[l', 'dingding', '2018-11-10 15:00:12.414');
INSERT INTO `aby_pinglun` VALUES ('36', null, 'grgrtg', 'dingding', '2018-11-10 15:16:30.901');
INSERT INTO `aby_pinglun` VALUES ('37', null, 'grgrtg', 'dingding', '2018-11-10 15:16:32.237');
INSERT INTO `aby_pinglun` VALUES ('38', null, 'grgrtg', 'dingding', '2018-11-10 15:16:32.460');
INSERT INTO `aby_pinglun` VALUES ('39', null, 'grgrtg', 'dingding', '2018-11-10 15:16:32.636');
INSERT INTO `aby_pinglun` VALUES ('40', null, 'grgrtg', 'dingding', '2018-11-10 15:16:32.805');
INSERT INTO `aby_pinglun` VALUES ('41', null, 'grgrtg', 'dingding', '2018-11-10 15:16:35.708');
INSERT INTO `aby_pinglun` VALUES ('42', null, 'lkikhk953', 'dingding', '2018-11-10 15:18:22.220');
INSERT INTO `aby_pinglun` VALUES ('43', null, 'lkikhk953', 'dingding', '2018-11-10 15:18:24.188');
INSERT INTO `aby_pinglun` VALUES ('44', null, 'lasjdfnhjklasfd', 'dingding', '2018-11-10 15:23:07.035');
INSERT INTO `aby_pinglun` VALUES ('45', null, 'dfasdfasdf', 'dingding', '2018-11-10 15:24:24.275');
INSERT INTO `aby_pinglun` VALUES ('46', null, 'fbvdghfhgfj', 'dingding', '2018-11-10 15:41:33.529');
INSERT INTO `aby_pinglun` VALUES ('47', null, 'jhjjjj', 'dingding', '2018-11-10 15:42:35.289');
INSERT INTO `aby_pinglun` VALUES ('48', null, '1', '2', '3');
INSERT INTO `aby_pinglun` VALUES ('49', null, 'fenglin', 'dingding', '2018-11-10 15:53:48.227');
INSERT INTO `aby_pinglun` VALUES ('50', null, 'fenglin', 'dingding', '2018-11-10 15:55:20.938');
INSERT INTO `aby_pinglun` VALUES ('51', null, '7777', 'dingding', '2018-11-10 15:59:27.617');
INSERT INTO `aby_pinglun` VALUES ('52', null, '8888', 'dingding', '2018-11-10 15:59:35.335');
INSERT INTO `aby_pinglun` VALUES ('53', null, '0000', 'dingding', '2018-11-10 16:00:04.031');
INSERT INTO `aby_pinglun` VALUES ('54', null, '888', 'dingding', '2018-11-10 16:00:49.519');

-- ----------------------------
-- Table structure for aby_user
-- ----------------------------
DROP TABLE IF EXISTS `aby_user`;
CREATE TABLE `aby_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aby_user
-- ----------------------------
INSERT INTO `aby_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', '丁春秋', 'touxiang/default.png', '0');
INSERT INTO `aby_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', '当当喵', 'touxiang/default.png', '1');
INSERT INTO `aby_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', '窦志强', 'touxiang/default.png', '1');
INSERT INTO `aby_user` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', '', '', '');
INSERT INTO `aby_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', '', '', '');
INSERT INTO `aby_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', '', '', '');
INSERT INTO `aby_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', '', '', '');
INSERT INTO `aby_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', '', '', '');
INSERT INTO `aby_user` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', '', '', '');
INSERT INTO `aby_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', '', '', '');
INSERT INTO `aby_user` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', '', '', '');
INSERT INTO `aby_user` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', '', '', '');
INSERT INTO `aby_user` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', '', '', '');
INSERT INTO `aby_user` VALUES ('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', '', '', '');
INSERT INTO `aby_user` VALUES ('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', '', '', '');
INSERT INTO `aby_user` VALUES ('17', '<img>', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', '', '', '');
INSERT INTO `aby_user` VALUES ('18', '</body>', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', '', '', '');
INSERT INTO `aby_user` VALUES ('19', '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', '', '', '');
