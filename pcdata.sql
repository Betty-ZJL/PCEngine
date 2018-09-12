/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : pc

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-09-10 20:20:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc
-- ----------------------------
DROP TABLE IF EXISTS `pc`;
CREATE TABLE `pc` (
  `version` varchar(20) NOT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `pctype` varchar(20) DEFAULT NULL,
  `cputype` varchar(20) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `memcapacity` varchar(20) DEFAULT NULL,
  `price1` int(5) DEFAULT NULL,
  `url1` varchar(255) DEFAULT NULL,
  `price2` int(5) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `rooturl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pc
-- ----------------------------
INSERT INTO `pc` VALUES ('拯救者R720', '联想', '游戏本', 'intel i7', '15英寸', '4G独显', '7399', 'https://re.jd.com/cps/item/4163951.html?cu=true&utm_source=m.nongnet.com&utm_medium=tuiguang&utm_campaign=t_4125029_&utm_term=1691e68a1ba347d284bcf5897fb3cc24&abt=3', '7499', 'https://detail.tmall.com/item.htm?id=560634754053&clk1=17832cc9201e23b852819f26a4f51a9a&upsid=17832cc9201e23b852819f26a4f51a9a&sku_properties=5919063:6536025', 'http://www.manmanbuy.com/p_552852.aspx');
INSERT INTO `pc` VALUES ('E470c', 'ThinkPad', '娱乐办公本', 'intel i3', '14英寸', '核心显卡/集显', '2999', 'https://re.jd.com/cps/item/4422256.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=dc687b60223440e48f82617b8d3e3b91&abt=3', '2799', 'https://product.suning.com/0070113915/188793923.html?utm_source=union&utm_medium=14&utm_campaign=5355&utm_content=0', 'http://www.manmanbuy.com/p_531666.aspx');
INSERT INTO `pc` VALUES ('MMGF2CH/A', 'Apple', '娱乐办公本', 'Intel i5', '13.3英寸', '核心显卡/集显', '6380', 'http://item.gome.com.cn/A0006228831-pop8010016890.html?sid=438&wid=434&feedback=&cmpid=cps_438_434', '6499', 'https://re.jd.com/cps/item/2342601.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=6ca9926919434b2990b3a5bd2c81e9f3&abt=3', 'http://www.manmanbuy.com/p_480485.aspx');
INSERT INTO `pc` VALUES ('X1 Carbon 07CD', 'ThinkPad', '娱乐办公本', 'Intel i5', '14英寸', '核心显卡/集显', '9999', 'https://re.jd.com/cps/item/4846138.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=5d18a552135847438866e250f7a45572&abt=3', '10053', 'https://product.suning.com/0000000000/616393265.html?utm_source=union&utm_medium=14&utm_campaign=5355&utm_content=0', 'http://www.manmanbuy.com/p_541758.aspx');
INSERT INTO `pc` VALUES ('K670D-G4D1', '神舟', '游戏本', '奔腾', '15英寸', '3G独显', '4499', 'https://re.jd.com/cps/item/4422210.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=7d56ef909d8546dcaee63cb10c290d95&abt=3', '4499', 'https://detail.tmall.com/item.htm?id=544732969418&clk1=af8a1965cfab1a08a3082aae407559ec&upsid=af8a1965cfab1a08a3082aae407559ec&skuId=3447130342098', 'http://www.manmanbuy.com/p_526482.aspx');
INSERT INTO `pc` VALUES ('U4000UQ7500', '华硕', '娱乐办公本', 'intel i7', '14英寸', '2G独显', '7299', 'https://re.jd.com/cps/item/5179223.html?cu=true&utm_source=m.nongnet.com&utm_medium=tuiguang&utm_campaign=t_4125029_&utm_term=ad54e779b4d246c68d950d7163f00999&abt=3', '7199', 'https://detail.tmall.com/item.htm?id=550113086766&ali_trackid=2:mm_106215640_9762482_52290195:1513239741_220_1836242150&clk1=3383e4ee4cc1200b3fd17e1b9e40a73d&upsid=3383e4ee4cc1200b3fd17e1b9e40a73d&sku_properties=5919063:6536025', 'http://www.manmanbuy.com/p_531810.aspx');
INSERT INTO `pc` VALUES ('XPS 13-9360-1609', '戴尔', '娱乐办公本', 'intel i5', '13.3英寸', '核心显卡/集显', '7499', 'https://re.jd.com/cps/item/3240525.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=ccaa921602de4c08914ab05863ee3b26&abt=3', '8099', 'https://product.suning.com/0000000000/626052589.html?utm_source=union&utm_medium=14&utm_campaign=5355&utm_content=0', 'http://www.manmanbuy.com/p_502186.aspx');
INSERT INTO `pc` VALUES ('K680E-G6D1', '神舟', '游戏本', 'intel i5', '15英寸', '4G独显', '5788', 'https://re.jd.com/cps/item/4380850.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=f3af45f47e1e4ec992ec3a5bef85c5a6&abt=3', '6099', 'https://detail.tmall.com/item.htm?id=544668593889&clk1=52f2d845f3e7ca999c5d376760dad23e&upsid=52f2d845f3e7ca999c5d376760dad23e&skuId=3446664423244', 'http://www.manmanbuy.com/p_526485.aspx');
INSERT INTO `pc` VALUES ('Z6-KP5GT', '神舟', '游戏本', 'intel i5', '15英寸', '2G独显', '5199', 'https://re.jd.com/cps/item/3917091.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=2f5f25fb9bde49e3bcc0f0807485740c&abt=3', '5299', 'http://item.gome.com.cn/9140024070-1130020732.html?sid=438&wid=434&feedback=&cmpid=cps_438_434', 'http://www.manmanbuy.com/p_533866.aspx');
INSERT INTO `pc` VALUES ('E570', 'ThinkPad', '游戏本', 'intel i5', '15英寸', '2G独显', '4999', 'https://re.jd.com/cps/item/3541223.html?cu=true&utm_source=m.nongnet.com&utm_medium=tuiguang&utm_campaign=t_4125029_&utm_term=c95f075da1f8485caf808ffe28c446e9&abt=3', '4099', 'https://item.taobao.com/item.htm?id=552665062306&clk1=c385e8227c504a15260c3872d41db586&upsid=c385e8227c504a15260c3872d41db586', 'http://www.manmanbuy.com/p_508751.aspx');
INSERT INTO `pc` VALUES ('小新潮5000', '联想', '娱乐办公本', 'intel i5', '15英寸', '2G独显', '4599', 'https://re.jd.com/cps/item/5020872.html?cu=true&utm_source=m.nongnet.com&utm_medium=tuiguang&utm_campaign=t_4125029_&utm_term=f9797e777537425a8065b5292b83c82f&abt=3', '4599', 'https://detail.tmall.com/item.htm?id=551085292553&clk1=4e4ee0dcdc9701e4acdba5c2dd1fe962&upsid=4e4ee0dcdc9701e4acdba5c2dd1fe962', 'http://www.manmanbuy.com/p_554374.aspx');
INSERT INTO `pc` VALUES ('', '联想笔记本电脑', null, null, '15英寸', null, null, null, null, null, null);
INSERT INTO `pc` VALUES ('小新Air', '联想', '娱乐办公本', 'intel 酷睿 M', '12.2英寸', '核心显卡/集显', '3499', 'https://detail.tmall.com/item.htm?id=534610068636&clk1=8582e7b5d76ac3d55576da507da8f7b1&upsid=8582e7b5d76ac3d55576da507da8f7b1&sku_properties=5919063:6536025', '3599', 'https://re.jd.com/cps/item/3178510.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=dee676431ef34a448def2451264aad40&abt=3', 'http://www.manmanbuy.com/p_491206.aspx');
INSERT INTO `pc` VALUES ('Ideapad110-15', '联想', '娱乐办公本', 'intel i5', '15英寸', '2G独显', '3699', 'http://item.gome.com.cn/9134080855-1130025250.html?sid=438&wid=434&feedback=&cmpid=cps_438_434', '4039', 'https://product.suning.com/0000000000/660863229.html?utm_source=union&utm_medium=14&utm_campaign=5355&utm_content=0', 'http://www.manmanbuy.com/p_551955.aspx');
INSERT INTO `pc` VALUES ('Ideapad520-15', '联想', '娱乐办公本', 'intel i5', '15英寸', '2G独显', '5599', 'https://re.jd.com/cps/item/5679008.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=3f6958c2acf44454acbf4ffea5bf1775&abt=3', '4950', 'https://detail.tmall.com/item.htm?id=562484641266&ali_trackid=2:mm_106215640_9762482_52290195:1513241311_317_1748022827&clk1=049aa5f96eb30397c4ab3138906c8167&upsid=049aa5f96eb30397c4ab3138906c8167&sku_properties=1627207:4957092', 'http://www.manmanbuy.com/p_573004.aspx');
INSERT INTO `pc` VALUES ('MJLQ2CH/A', 'Apple', '娱乐办公本', 'intel i7', '15英寸', '核心显卡/集显', '11988', 'https://detail.tmall.com/item.htm?id=45770557481&ali_trackid=2:mm_106215640_9762482_52290195:1513241675_207_1012333020&clk1=307fc5348b33681f3d6c8e35dae5626b&upsid=307fc5348b33681f3d6c8e35dae5626b&sku_properties=5919063:6536025', '13188', 'http://item.gome.com.cn/9133620204-1122490102.html?sid=438&wid=434&feedback=&cmpid=cps_438_434', 'http://www.manmanbuy.com/p_351611.aspx');
INSERT INTO `pc` VALUES ('MJVP2CH/A', 'Apple', '娱乐办公本', 'intel i5', '11英寸', '核心显卡/集显', '7788', 'https://re.jd.com/cps/item/1378528.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=615d47d8380047218ab6c180b991ea01&abt=3', '0', 'null', 'http://www.manmanbuy.com/p_320190.aspx');
INSERT INTO `pc` VALUES ('MJVM2CH/A', 'Apple', '娱乐办公本', 'intel i5', '11英寸', '核心显卡/集显', '4999', 'https://re.jd.com/cps/item/1378536.html?cu=true&utm_source=m.nongnet.com&utm_medium=tuiguang&utm_campaign=t_4125029_&utm_term=e5a3b3ae75344769ba55016d72d60bc3&abt=3', '0', 'null', 'http://www.manmanbuy.com/p_320189.aspx');
INSERT INTO `pc` VALUES ('MQD42CH/A', 'Apple', '娱乐办公本', 'intel i5', '13英寸', '核心显卡/集显', '8088', 'https://detail.tmall.com/item.htm?id=553587837212&clk1=0a96cd2887cf48c2a8dc7cce1f217be4&upsid=0a96cd2887cf48c2a8dc7cce1f217be4&skuId=3402311005177', '7588', 'https://www.amazon.cn/gp/product/B071G2D6Q8?m=A1AJ19PSB66TGU&tag=manmanbuynew25962-23', 'http://www.manmanbuy.com/p_554661.aspx');
INSERT INTO `pc` VALUES ('E475', 'ThinkPad', '娱乐办公本', 'AMD', '14英寸', '核心显卡/集显', '2799', 'https://product.suning.com/0070090936/611640449.html?utm_source=union&utm_medium=14&utm_campaign=5355&utm_content=0', '2899', 'https://www.amazon.cn/gp/product/B01AJOPVQO?tag=manmanbuynew25962-23', 'http://www.manmanbuy.com/p_531667.aspx');

-- ----------------------------
-- Table structure for pcss
-- ----------------------------
DROP TABLE IF EXISTS `pcss`;
CREATE TABLE `pcss` (
  `title` varchar(150) NOT NULL,
  `price` int(5) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `CPU` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `xiancun` varchar(20) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `flag` varchar(20) DEFAULT NULL,
  `comment` varchar(20) DEFAULT NULL,
  `imgurl` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pcss
-- ----------------------------
INSERT INTO `pcss` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i5-7300HQ/8G/1T+128GSSD/GTX1050Ti 4G独显', '6049', '联想笔记本电脑', '2017年06月', '15英寸', 'intel i5', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=756144799&y=bijia', '(苏宁易购 第三方)', '88% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060008101215323.jpg');
INSERT INTO `pcss` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1050Ti 4G独显', '7399', '联想笔记本电脑', '2017年06月', '15英寸', 'intel i7', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=754456967&y=bijia', '(京东商城 自营)', '86% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060008101235818.jpg');
INSERT INTO `pcss` VALUES ('联想 小新锐7000 15.6英寸游戏本电脑 i5-7300HQ/8G/1T+128GSSD/GTX1050 2G独显', '5599', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=742349259&y=bijia', '(京东商城 自营)', '83% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050016441236214.jpg');
INSERT INTO `pcss` VALUES ('联想 小新锐7000 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1050 2G独显', '6299', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i7', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=742349271&y=bijia', '(京东商城 自营)', '82% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050016441181889.jpg');
INSERT INTO `pcss` VALUES ('联想 小新潮7000 14英寸轻薄窄边框笔记本电脑 I5-8250U/8G/1T+128GSSD/940MX 2G独显', '5699', '联想笔记本电脑', '2017年09月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=995036112&y=bijia', '(京东商城 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090009265162929.jpg');
INSERT INTO `pcss` VALUES ('联想 小新潮7000 14英寸轻薄窄边框笔记本电脑I7-8550U/8G/1T+128GSSD/940MX 2G独显', '6499', '联想笔记本电脑', '2017年09月', '14英寸', 'intel i7', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927393272&y=bijia', '(京东商城 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110015283797687.jpg');
INSERT INTO `pcss` VALUES ('联想 小新潮7000 14英寸轻薄窄边框笔记本电脑 I5-8250U/8G/256GSSD/集显', '5299', '联想笔记本电脑', '2017年09月', '14英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927397274&y=bijia', '(京东商城 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090009303274551.jpg');
INSERT INTO `pcss` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1050 2G独显', '6799', '联想笔记本电脑', '2017年09月', '15英寸', 'intel i7', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=1096538479&y=bijia', '(苏宁易购 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090008143666291.jpg');
INSERT INTO `pcss` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1060 6G独显', '8699', '联想笔记本电脑', '2017年07月', '15英寸', 'intel i7', '游戏本', '6G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=792041340&y=bijia', '(京东商城 自营)', '88% 好评', 'http://pro-img.zuyushop.com/ProPic/20177/Thumb/Thumb_2017070013260969919.jpg');
INSERT INTO `pcss` VALUES ('联想 小新潮5000 15.6英寸笔记本电脑 i5-7200U/4G/1T+128GSSD/R5 2G独显', '4599', '联想笔记本电脑', '2017年06月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770268792&y=bijia', '(京东商城 自营)', '86% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060017183834591.jpg');
INSERT INTO `pcss` VALUES ('联想 Ideapad520-15 15.6英寸笔记本电脑 i5-8250U/4G/1T+128GSSD/MX150 2G独显', '5499', '联想笔记本电脑', '2017年10月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=995036046&y=bijia', '(京东商城 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/201710/Thumb/Thumb_2017100009552833469.jpg');
INSERT INTO `pcss` VALUES ('联想 小新Air 12.2英寸笔记本电脑 M3-6Y30/4G/128GSSD/集显', '3599', '联想笔记本电脑', '2016年07月', '12英寸', 'intel 酷睿 M', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=442130703&y=bijia', '(京东商城 自营)', '82% 好评', 'http://pro.zuyushop.com:8015/ProPic/20167/Thumb/Thumb_2016070016544524364.jpg');
INSERT INTO `pcss` VALUES ('联想 Ideapad110-15 15.6英寸笔记本电脑 I5-7200U/4G/1T/2G独显', '3499', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=875686603&y=bijia', '(苏宁易购 自营)', '100% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050009422830453.jpg');
INSERT INTO `pcss` VALUES ('华硕 顽石五代FL8000UQ8550 15.6英寸游戏笔记本电脑 i7-8550U/8G/128GSSD+1T/940MX 2G独显', '5199', '华硕笔记本电脑', '2017年09月', '15英寸', 'intel i7', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927397288&y=bijia', '(京东商城 自营)', '90% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090010165440533.jpg');
INSERT INTO `pcss` VALUES ('联想 ideapad320 15.6英寸笔记本电脑 AMD-A12-9720P/4G/1T/R5 2G独显', '3699', '联想笔记本电脑', '2017年06月', '15英寸', 'AMD', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770269921&y=bijia', '(京东商城 自营)', '80% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060017183758278.jpg');
INSERT INTO `pcss` VALUES ('联想 天逸310 14英寸笔记本电脑 I5-7200U/8G/1T/R5 2G独显', '3899', '联想笔记本电脑', '2017年06月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770268958&y=bijia', '(京东商城 自营)', '81% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060017183787742.jpg');
INSERT INTO `pcss` VALUES ('联想 天逸310-15ISK 15.6英寸笔记本电脑 I5-7200U/4G/1T/2G独显', '3399', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=814268027&y=bijia', '(苏宁易购 自营)', '78% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050009525340457.jpg');
INSERT INTO `pcss` VALUES ('联想 小新潮5000 15.6英寸笔记本电脑 I5-7200U/4G/1T/R5 2G独显', '3899', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=742289202&y=bijia', '(苏宁易购 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050016441260574.jpg');
INSERT INTO `pcss` VALUES ('华硕 灵耀U4000UQ7500 14英寸笔记本电脑 i7-7500U/8G/512GSSD/GT940MX 2G独显', '7199', '华硕笔记本电脑', '2017年03月', '14英寸', 'intel i7', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=999970615&y=bijia', '(京东商城 自营)', '82% 好评', 'http://pro-img.zuyushop.com/ProPic/20173/Thumb/Thumb_2017030016063296584.jpg');
INSERT INTO `pcss` VALUES ('联想 ideapad120S 14英寸笔记本电脑 赛扬N3350/4G/128GSSD/集显', '2799', '联想笔记本电脑', '2017年08月', '14英寸', '赛扬', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=878916123&y=bijia', '(苏宁易购 自营)', '67% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110014571361269.jpg');
INSERT INTO `pcss` VALUES ('华硕 顽石五代FL8000UQ8550 15.6英寸游戏笔记本电脑 i7-8550U/8G/1T/940MX 2G独显', '4799', '华硕笔记本电脑', '2017年09月', '15英寸', 'intel i7', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927397287&y=bijia', '(京东商城 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090010165479108.jpg');
INSERT INTO `pcss` VALUES ('华硕 S4000UA7200 14英寸超轻薄笔记本电脑 i5-7200U/8G/256GSSD/集显', '4399', '华硕笔记本电脑', '2017年06月', '14英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=999971161&y=bijia', '(京东商城 自营)', '89% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060009554571140.jpg');
INSERT INTO `pcss` VALUES ('华硕 灵耀S4000UA7500 14英寸超轻薄笔记本电脑 i7-7500U/8G/256GSSD/集显', '5988', '华硕笔记本电脑', '2017年06月', '14英寸', 'intel i7', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770270196&y=bijia', '(京东商城 自营)', '84% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060009554623180.jpg');
INSERT INTO `pcss` VALUES ('华硕 顽石升级版FL5700UP 15.6英寸笔记本电脑 i7-8550U/4G/1T/R5 2G独显', '4388', '华硕笔记本电脑', '2017年12月', '15英寸', 'intel i7', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=1066235232&y=bijia', '(京东商城 自营)', '80% 好评', 'http://www.zuyushop.com/ProPic/201712/Thumb/Thumb_2017120008465999017.jpg');
INSERT INTO `pcss` VALUES ('华硕 灵耀U4000UQ7200 14英寸笔记本电脑 i5-7200U/4G/256GSSD/GT940MX 2G独显', '4999', '华硕笔记本电脑', '2017年03月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=682718688&y=bijia', '(京东商城 自营)', '80% 好评', 'http://pro-img.zuyushop.com/ProPic/20173/Thumb/Thumb_2017030016063256210.jpg');
INSERT INTO `pcss` VALUES ('华硕 飞行堡垒FX63VD7700 15.6英寸游戏笔记本电脑 i7-7700HQ/8G/1TB+128GSSD/GTX1050 4G独显', '6699', '华硕笔记本电脑', '2017年09月', '15英寸', 'intel i7', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=933924525&y=bijia', '(苏宁易购 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090014173090426.jpg');
INSERT INTO `pcss` VALUES ('华硕 R414UV7200 顽石畅玩版 14英寸笔记本电脑 i5-7200U/4G/256GSSD/GT920MX 2G独显', '4399', '华硕笔记本电脑', '2017年09月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=893707405&y=bijia', '(京东商城 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090011093723000.jpg');
INSERT INTO `pcss` VALUES ('华硕 A541UV6006 15.6英寸笔记本电脑 i3-6006U/4G/500G/920MX 2G独显', '2999', '华硕笔记本电脑', '2017年10月', '15英寸', 'intel i3', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=950766666&y=bijia', '(京东商城 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/201710/Thumb/Thumb_2017100009323435516.jpg');
INSERT INTO `pcss` VALUES ('华硕 顽石畅玩版R419UR8250 14英寸笔记本电脑 i5-8250U/4G/500G/930MX 2G独显', '4099', '华硕笔记本电脑', '2017年09月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927393314&y=bijia', '(京东商城 自营)', '88% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_201709001016567526.jpg');
INSERT INTO `pcss` VALUES ('华硕 R541UJ7200 顽石畅玩版 15.6英寸笔记本电脑 i5-7200U/4G/500G/GT920M 2G独显', '3499', '华硕笔记本电脑', '2017年03月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=708829513&y=bijia', '(京东商城 自营)', '74% 好评', 'http://pro-img.zuyushop.com/ProPic/20173/Thumb/Thumb_2017030010084278601.jpg');
INSERT INTO `pcss` VALUES ('华硕 R540UP7200 顽石畅玩版 15.6英寸笔记本电脑 i5-7200U/4G/500G/R5 2G独显', '3499', '华硕笔记本电脑', '2016年10月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=577544778&y=bijia', '(京东商城 自营)', '70% 好评', 'http://pro-img.zuyushop.com/ProPic/201610/Thumb/Thumb_2016100015412760671.jpg');
INSERT INTO `pcss` VALUES ('华硕 飞行堡垒四代FX63VD7300 15.6英寸游戏笔记本电脑 i5-7300HQ/8G/1T/GTX1050 4G独显', '5698', '华硕笔记本电脑', '2017年10月', '15英寸', 'intel i5', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=991351880&y=bijia', '(京东商城 自营)', '94% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110010291187059.jpg');
INSERT INTO `pcss` VALUES ('华硕 飞行堡垒四代FX63VD7300 15.6英寸游戏笔记本电脑 i5-7300HQ/8G/128GSSD+1T/GTX1050 4G独显', '5799', '华硕笔记本电脑', '2017年09月', '15英寸', 'intel i5', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=933372730&y=bijia', '(京东商城 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090008435123594.jpg');
INSERT INTO `pcss` VALUES ('华硕 思聪本进化版 E403NA4200 14英寸轻薄便携笔记本电脑 N4200/4G/128G/集显', '2949', '华硕笔记本电脑', '2017年09月', '14英寸', '奔腾', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=1062232572&y=bijia', '(国美 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090010165590640.jpg');
INSERT INTO `pcss` VALUES ('华硕 E203NA3350 11.6英寸笔记本电脑 Processor N3350/4GB/128GSSD/集显', '2499', '华硕笔记本电脑', '2017年09月', '11英寸', '赛扬', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=950760004&y=bijia', '(京东商城 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090009515089459.jpg');
INSERT INTO `pcss` VALUES ('华硕 思聪本K505BP9420 15.6英寸超窄边框笔记本电脑 A9-9420/8G/128GSSD+500G/R5 2G独显', '4199', '华硕笔记本电脑', '2017年09月', '15英寸', 'AMD', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=948686945&y=bijia', '(京东商城 自营)', '75% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090010165530076.jpg');
INSERT INTO `pcss` VALUES ('华硕 X400NA3450 思聪本进化版 14英寸轻薄笔记本电脑 奔腾N3450/4G/128GSSD/集显', '2999', '华硕笔记本电脑', '2017年08月', '14英寸', '奔腾', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=874136762&y=bijia', '(京东商城 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/20178/Thumb/Thumb_2017080010200122472.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Pro MJLQ2CH/A 15.4英寸 I7处理器/16G/256GSSD/集显', '12388', '苹果笔记本电脑', '2015年05月', '15英寸', 'intel i7', '娱乐办公本', '核心显卡/集显', 'http://item.tmall.com/item.htm?id=45770557481', '(天猫商城 第三方)', '89% 好评', 'http://pro.zuyushop.com:8015/ProPic/20158/Thumb/Thumb_2015080016440294637.png');
INSERT INTO `pcss` VALUES ('苹果(Apple) MPXW2CH/A MacBook Pro 13.3\"英寸笔记本电脑 i5处理器/8G/512GSSD/集显', '14578', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=775266444&y=bijia&u=%BA%DA%D2%B9', '(中国亚马逊 自营)', '91% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060015241446694.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Pro MPXV2CH/A 13.3英寸笔记本电脑 i5处理器/8G/256GSSD/集显', '12999', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774317040&y=bijia', '(新蛋网 自营)', '90% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_201706001341278923.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Pro MPXR2CH/A 13.3英寸笔记本电脑 I5处理器/8G/128GSSD/集显', '9299', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=781579024&y=bijia', '(京东商城 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412649843.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Air MJVM2CH/A 11.6英寸 I5处理器/4G/128GSSD/集显', '4499', '苹果笔记本电脑', '2015年03月', '11英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=131936751&y=bijia', '(京东商城 自营)', '89% 好评', 'http://pro.zuyushop.com:8015/ProPic/20153/Thumb/Thumb_2015030013240869192.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MJVP2CH/A 11.6英寸 I5 4G 256GSSD 非独显 轻薄便携本', '7788', '苹果笔记本电脑', '2015年03月', '11英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=131936746&y=bijia', '(京东商城 自营)', '87% 好评', 'http://pro.zuyushop.com:8015/ProPic/20153/Thumb/Thumb_201503001324090029.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MPXY2CH/A MacBook Pro 13.3\"英寸笔记本电脑 i5处理器/8G/512GSSD/集显', '14488', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=775300878&y=bijia&u=%BA%DA%D2%B9', '(中国亚马逊 自营)', '90% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060015241319576.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Pro MPXQ2CH/A 13.3英寸笔记本电脑 i5处理器/8G/128GSSD/集显', '9188', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=797098309&y=bijia', '(国美 自营)', '91% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412725173.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Pro MPXT2CH/A 13.3英寸笔记本电脑 i5处理器/8G/256GSSD/集显', '10888', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774314191&y=bijia', '(新蛋网 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412692289.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Pro MPXU2CH/A 13.3英寸笔记本电脑 I5处理器/8G/256GSSD/集显', '10888', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774317039&y=bijia', '(新蛋网 自营)', '90% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412769003.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MPXX2CH/A MacBook Pro 13.3\"英寸笔记本电脑 i5处理器/8G/256GSSD/集显', '12999', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774344244&y=bijia', '(新蛋网 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060015241391086.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Air MQD42CH/A 13.3英寸笔记本电脑 I5处理器/8G/256GSSD/集显', '7288', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774403964&y=bijia', '(新蛋网 自营)', '91% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_201706001341296032.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MPTV2CH/A MacBook Pro 15.4英寸笔记本电脑 i7处理器/16G/512GSSD/集显/Multi-Touch Bar', '19888', '苹果笔记本电脑', '2017年06月', '15英寸', 'intel i7', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774457284&y=bijia', '(新蛋网 自营)', '97% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110013483495107.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MPTT2CH/A MacBook Pro 15.4英寸笔记本电脑 i7处理器/16G/512GSSD/集显/Multi-Touch Bar', '19888', '苹果笔记本电脑', '2017年06月', '15英寸', 'intel i7', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=774457283&y=bijia', '(新蛋网 自营)', '100% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110013491526104.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Air MQD32CH/A 13.3英寸笔记本电脑 I5处理器/8G/128GSSD/集显', '5988', '苹果笔记本电脑', '2017年06月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=767877151&y=bijia', '(苏宁易购 自营)', '84% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412920546.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook MNYN2CH/A 12英寸笔记本电脑 I5处理器/8G/512GSSD/集显', '11270', '苹果笔记本电脑', '2017年06月', '12英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=775266447&y=bijia&u=%BA%DA%D2%B9', '(中国亚马逊 自营)', '90% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412833922.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook MNYJ2CH/A 12英寸笔记本电脑 I5处理器/8G/512GSSD/集显', '11348', '苹果笔记本电脑', '2017年06月', '12英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=775243976&y=bijia&u=%BA%DA%D2%B9', '(中国亚马逊 自营)', '84% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060013412796983.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) Z0TZ0003L/MacBook 12英寸笔记本电脑 i5处理器/8GB/256GSSD/集显', '10599', '苹果笔记本电脑', '2017年09月', '12英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927393360&y=bijia', '(京东商城 自营)', '100% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090011103860446.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook Air MMGF2CH/A 13.3英寸笔记本电脑 银色 i5处理器/8G/128GSSD/集显', '6380', '苹果笔记本电脑', '2016年04月', '13英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=833389311&y=bijia', '(国美 第三方)', '90% 好评', 'http://pro.zuyushop.com:8015/ProPic/20164/Thumb/Thumb_2016040009434181314.jpg');
INSERT INTO `pcss` VALUES ('苹果(Apple) MacBook MMGL2CH/A 12英寸笔记本电脑 M3处理器/8G/256GSSD/核显', '11288', '苹果笔记本电脑', '2016年04月', '12英寸', 'intel 酷睿 M', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770270213&y=bijia', '(京东商城 自营)', '91% 好评', 'http://pro.zuyushop.com:8015/ProPic/20164/Thumb/Thumb_2016040009434272577.jpg');

-- ----------------------------
-- Table structure for pcss_copy
-- ----------------------------
DROP TABLE IF EXISTS `pcss_copy`;
CREATE TABLE `pcss_copy` (
  `title` varchar(150) NOT NULL,
  `price` int(5) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `CPU` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `xiancun` varchar(20) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `flag` varchar(20) DEFAULT NULL,
  `comment` varchar(20) DEFAULT NULL,
  `imgurl` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pcss_copy
-- ----------------------------
INSERT INTO `pcss_copy` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i5-7300HQ/8G/1T+128GSSD/GTX1050Ti 4G独显', '6049', '联想笔记本电脑', '2017年06月', '15英寸', 'intel i5', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=756144799&y=bijia', '(苏宁易购 第三方)', '88% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060008101215323.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1050Ti 4G独显', '7399', '联想笔记本电脑', '2017年06月', '15英寸', 'intel i7', '游戏本', '4G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=754456967&y=bijia', '(京东商城 自营)', '86% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060008101235818.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新锐7000 15.6英寸游戏本电脑 i5-7300HQ/8G/1T+128GSSD/GTX1050 2G独显', '5599', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=742349259&y=bijia', '(京东商城 自营)', '83% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050016441236214.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新锐7000 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1050 2G独显', '6299', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i7', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=742349271&y=bijia', '(京东商城 自营)', '82% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050016441181889.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新潮7000 14英寸轻薄窄边框笔记本电脑 I5-8250U/8G/1T+128GSSD/940MX 2G独显', '5699', '联想笔记本电脑', '2017年09月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=995036112&y=bijia', '(京东商城 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090009265162929.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新潮7000 14英寸轻薄窄边框笔记本电脑I7-8550U/8G/1T+128GSSD/940MX 2G独显', '6499', '联想笔记本电脑', '2017年09月', '14英寸', 'intel i7', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927393272&y=bijia', '(京东商城 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110015283797687.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新潮7000 14英寸轻薄窄边框笔记本电脑 I5-8250U/8G/256GSSD/集显', '5299', '联想笔记本电脑', '2017年09月', '14英寸', 'intel i5', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=927397274&y=bijia', '(京东商城 自营)', '92% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090009303274551.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1050 2G独显', '6799', '联想笔记本电脑', '2017年09月', '15英寸', 'intel i7', '游戏本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=1096538479&y=bijia', '(苏宁易购 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/20179/Thumb/Thumb_2017090008143666291.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 拯救者R720 15.6英寸游戏本电脑 i7-7700HQ/8G/1T+128GSSD/GTX1060 6G独显', '8699', '联想笔记本电脑', '2017年07月', '15英寸', 'intel i7', '游戏本', '6G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=792041340&y=bijia', '(京东商城 自营)', '88% 好评', 'http://pro-img.zuyushop.com/ProPic/20177/Thumb/Thumb_2017070013260969919.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新潮5000 15.6英寸笔记本电脑 i5-7200U/4G/1T+128GSSD/R5 2G独显', '4599', '联想笔记本电脑', '2017年06月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770268792&y=bijia', '(京东商城 自营)', '86% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060017183834591.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 Ideapad520-15 15.6英寸笔记本电脑 i5-8250U/4G/1T+128GSSD/MX150 2G独显', '5499', '联想笔记本电脑', '2017年10月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=995036046&y=bijia', '(京东商城 自营)', '95% 好评', 'http://pro-img.zuyushop.com/ProPic/201710/Thumb/Thumb_2017100009552833469.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新Air 12.2英寸笔记本电脑 M3-6Y30/4G/128GSSD/集显', '3599', '联想笔记本电脑', '2016年07月', '12英寸', 'intel 酷睿 M', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=442130703&y=bijia', '(京东商城 自营)', '82% 好评', 'http://pro.zuyushop.com:8015/ProPic/20167/Thumb/Thumb_2016070016544524364.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 Ideapad110-15 15.6英寸笔记本电脑 I5-7200U/4G/1T/2G独显', '3499', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=875686603&y=bijia', '(苏宁易购 自营)', '100% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050009422830453.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 ideapad320 15.6英寸笔记本电脑 AMD-A12-9720P/4G/1T/R5 2G独显', '3699', '联想笔记本电脑', '2017年06月', '15英寸', 'AMD', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770269921&y=bijia', '(京东商城 自营)', '80% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060017183758278.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 天逸310 14英寸笔记本电脑 I5-7200U/8G/1T/R5 2G独显', '3899', '联想笔记本电脑', '2017年06月', '14英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=770268958&y=bijia', '(京东商城 自营)', '81% 好评', 'http://pro-img.zuyushop.com/ProPic/20176/Thumb/Thumb_2017060017183787742.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 天逸310-15ISK 15.6英寸笔记本电脑 I5-7200U/4G/1T/2G独显', '3399', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=814268027&y=bijia', '(苏宁易购 自营)', '78% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050009525340457.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 小新潮5000 15.6英寸笔记本电脑 I5-7200U/4G/1T/R5 2G独显', '3899', '联想笔记本电脑', '2017年05月', '15英寸', 'intel i5', '娱乐办公本', '2G独显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=742289202&y=bijia', '(苏宁易购 自营)', '93% 好评', 'http://pro-img.zuyushop.com/ProPic/20175/Thumb/Thumb_2017050016441260574.jpg');
INSERT INTO `pcss_copy` VALUES ('联想 ideapad120S 14英寸笔记本电脑 赛扬N3350/4G/128GSSD/集显', '2799', '联想笔记本电脑', '2017年08月', '14英寸', '赛扬', '娱乐办公本', '核心显卡/集显', 'http://www.manmanbuy.com/redirectUrl.aspx?bjid=878916123&y=bijia', '(苏宁易购 自营)', '67% 好评', 'http://pro-img.zuyushop.com/ProPic/201711/Thumb/Thumb_2017110014571361269.jpg');
