/*
 Navicat Premium Data Transfer

 Source Server         : xdm721914408_db
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : xdm721914408.my3w.com:3306
 Source Schema         : xdm721914408_db

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 11/11/2022 08:53:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 医嘱表
-- ----------------------------
DROP TABLE IF EXISTS `医嘱表`;
CREATE TABLE `医嘱表`  (
  `病人` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `开嘱时间` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `停嘱时间` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `开嘱工号` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `医嘱科室` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `医嘱病区` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `复核工号` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `复核时间` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `医嘱名称` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `单价` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `数量` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `单位` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `使用频次` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `药品用法` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 医嘱表
-- ----------------------------
INSERT INTO `医嘱表` VALUES ('李四', '2022年11月9日 星期三', '2022年11月9日 星期三', '0001', '门诊科室', '1', '0003', '2022年11月9日 星期三', '韵宝（调经种子丸）', '58', '1', '盒', 'bid', '口服');
INSERT INTO `医嘱表` VALUES ('张三', '2022年11月9日 星期三', '2022年11月9日 星期三', '0001', '门诊科室', '1', '0001', '2022年11月9日 星期三', '韵宝（调经种子丸）', '58', '1', '盒', 'bid', '口服');
INSERT INTO `医嘱表` VALUES ('唐西澳', '2022年11月9日 星期三', '2022年11月9日 星期三', '0002', '门诊科室', '1', '0003', '2022年11月9日 星期三', '0.9%氯化钠注射液', '0.4', '1', '支', 'bid', '静注');
INSERT INTO `医嘱表` VALUES ('汤丽文', '2022年11月9日 星期三', '2022年11月9日 星期三', '0001', '住院外科', '2', '0002', '2022年11月9日 星期三', '0.9%氯化钠注射液', '0.4', '1', '支', 'bid', '静注');
INSERT INTO `医嘱表` VALUES ('项小小', '2022年11月9日 星期三', '2022年11月9日 星期三', '0001', '住院外科', '3', '0002', '2022年11月9日 星期三', '0.9%氯化钠注射液', '0.4000', '1', '支', 'bid', '静注');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `admin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `passward` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码(MD5加密)',
  `rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '汤丽文', '123456', '1');
INSERT INTO `admin` VALUES (2, '项小敏', '1234567', '1');
INSERT INTO `admin` VALUES (3, '沈薇薇', '12345678', '1');
INSERT INTO `admin` VALUES (4, '徐铭洁', '123456789', '1');
INSERT INTO `admin` VALUES (6, '', '', '');
INSERT INTO `admin` VALUES (7, '', '', '');

-- ----------------------------
-- Table structure for adusers
-- ----------------------------
DROP TABLE IF EXISTS `adusers`;
CREATE TABLE `adusers`  (
  `adminid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员编号',
  `userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adusers
-- ----------------------------
INSERT INTO `adusers` VALUES ('1', '5');
INSERT INTO `adusers` VALUES ('2', '2');
INSERT INTO `adusers` VALUES ('3', '3');
INSERT INTO `adusers` VALUES ('4', '4');
INSERT INTO `adusers` VALUES ('1', '5');

-- ----------------------------
-- Table structure for brda
-- ----------------------------
DROP TABLE IF EXISTS `brda`;
CREATE TABLE `brda`  (
  `病人ID` int(11) NULL DEFAULT 0,
  `住院号码` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `姓名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `性别` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `年龄` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `地区` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `科室` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `病区` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `床位` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `入院日期` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `出院日期` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `入院诊断` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `出院诊断` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `收治医生` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `病人状态` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `操作员` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `预交金卡号` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `预交金可用余额` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `预交金额` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `交款方式` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `交款时间` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brda
-- ----------------------------
INSERT INTO `brda` VALUES (1, '20201021', '张三', '男', '20', '江苏', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '张三', '201914010129', '5000', '3000', '微信', '2022.11.6');
INSERT INTO `brda` VALUES (2, '20201008', '汤丽文', '女', '22', '江苏省宜兴市万石镇西园新村2期', '消化科', '1', '1', '20201008', '', '胃疼', '', '张三', '不佳', '张三', '201914010130', '5000', '3000', '微信', '2022.11.6');
INSERT INTO `brda` VALUES (3, '20221020', '项小小', '女', '22', '徐州市徐州医科大学', '消化科', '1', '1', '20221020', '', '呼吸不畅', '', '张三', '不佳', '李四', '201914010131', '2200', NULL, NULL, NULL);
INSERT INTO `brda` VALUES (4, '20201008', '张三', '女', '19', '江苏省', '消化科', '1', '1', '', '', '达到', '', '电灯的', '达到', '达到', '201914010132', '2000', NULL, NULL, NULL);
INSERT INTO `brda` VALUES (5, '202211', '唐西澳', '女', '40', '江苏省徐州市', '口腔科', '5', '2', '2022.11.6', '', '口腔溃疡', '', '张三', '良好', '1', '', '3000', '3000', '微信', '2022年11月10日 星期四');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `categoryid` int(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大类名',
  PRIMARY KEY (`categoryid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (2, '小说');
INSERT INTO `category` VALUES (3, '文艺');
INSERT INTO `category` VALUES (4, '童书');
INSERT INTO `category` VALUES (5, '人文社科');
INSERT INTO `category` VALUES (6, '经管');
INSERT INTO `category` VALUES (7, '生活');
INSERT INTO `category` VALUES (8, '科技');
INSERT INTO `category` VALUES (9, '成功/励志');
INSERT INTO `category` VALUES (23, '教育');

-- ----------------------------
-- Table structure for cwsz
-- ----------------------------
DROP TABLE IF EXISTS `cwsz`;
CREATE TABLE `cwsz`  (
  `cwdm` int(255) NOT NULL AUTO_INCREMENT COMMENT '床位编号',
  `ksdm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室编号',
  `ssbq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属病区',
  `hzbh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者编号',
  `sqrq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请日期',
  `ghrq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归还日期',
  `sprbh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人编号',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用状态',
  PRIMARY KEY (`cwdm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cwsz
-- ----------------------------
INSERT INTO `cwsz` VALUES (1, '普内科', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `cwsz` VALUES (2, '普内科', '1', NULL, NULL, NULL, NULL, '0');
INSERT INTO `cwsz` VALUES (3, '普内科', '1', NULL, NULL, NULL, NULL, '0');
INSERT INTO `cwsz` VALUES (4, '普外科', '2', NULL, NULL, NULL, NULL, '0');
INSERT INTO `cwsz` VALUES (5, '泌尿科', '3', NULL, NULL, NULL, NULL, '0');
INSERT INTO `cwsz` VALUES (6, '妇产科', '4', NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `deliveryid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送货/汇款方式名',
  `deliveryidorder` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顺序',
  `fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价钱',
  `method` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`deliveryid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES ('1', '三体', '1', '47', NULL);
INSERT INTO `delivery` VALUES ('2', '天才在左，疯子在右', '2', '25', NULL);
INSERT INTO `delivery` VALUES ('3', '小王子', '3', '20', NULL);
INSERT INTO `delivery` VALUES ('4', '云边有个小卖部', '4', '20', NULL);
INSERT INTO `delivery` VALUES ('5', '追风筝的人', '5', '25', NULL);
INSERT INTO `delivery` VALUES ('6', '生活蒙太奇', '6', '55', NULL);
INSERT INTO `delivery` VALUES ('7', '非暴力沟通', '7', '48', NULL);
INSERT INTO `delivery` VALUES ('8', '生死疲劳', '8', '35', NULL);

-- ----------------------------
-- Table structure for jbbm
-- ----------------------------
DROP TABLE IF EXISTS `jbbm`;
CREATE TABLE `jbbm`  (
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dmlb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pydm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lcd9` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qtxm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fjbm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jbbm
-- ----------------------------
INSERT INTO `jbbm` VALUES ('8258', '10', '继发肿瘤', 'JFZL', NULL, NULL, NULL);
INSERT INTO `jbbm` VALUES ('8259', '10', '恶性肿瘤', 'EXZL', NULL, NULL, NULL);
INSERT INTO `jbbm` VALUES ('8260', '10', '溃疡癌变', 'KYAB', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ksdm
-- ----------------------------
DROP TABLE IF EXISTS `ksdm`;
CREATE TABLE `ksdm`  (
  `ksdm` int(255) NOT NULL AUTO_INCREMENT,
  `ksmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pydm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ksdm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ksdm
-- ----------------------------
INSERT INTO `ksdm` VALUES (1, '门诊科室', 'MZ');
INSERT INTO `ksdm` VALUES (2, '病区科室', 'BQ');
INSERT INTO `ksdm` VALUES (3, '医技科室', 'YJ');
INSERT INTO `ksdm` VALUES (4, '住院内科', 'ZYNK');
INSERT INTO `ksdm` VALUES (5, '住院外科', 'ZYWK');
INSERT INTO `ksdm` VALUES (6, '主演妇科', 'ZYFK');
INSERT INTO `ksdm` VALUES (7, '住院产科', 'ZYCK');
INSERT INTO `ksdm` VALUES (8, '药剂科', 'YJK');
INSERT INTO `ksdm` VALUES (9, '普内科', 'PNK');
INSERT INTO `ksdm` VALUES (10, '普外科', 'PWK');
INSERT INTO `ksdm` VALUES (11, '泌尿科', 'MNK');
INSERT INTO `ksdm` VALUES (12, '妇产科', 'FCK');
INSERT INTO `ksdm` VALUES (13, '口腔科', 'KQK');
INSERT INTO `ksdm` VALUES (14, '康复科', NULL);
INSERT INTO `ksdm` VALUES (15, '肛肠科', NULL);
INSERT INTO `ksdm` VALUES (16, '中医科', NULL);
INSERT INTO `ksdm` VALUES (17, '儿科', NULL);
INSERT INTO `ksdm` VALUES (18, '激光科', NULL);
INSERT INTO `ksdm` VALUES (19, '急诊科', NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `actionid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usertel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useremail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`actionid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2, 'tangliwen', '1', '汤丽文', '女', '19826361219', '2575594576@qq.email', '1', '天才在左，疯子在右', '徐州医科大学主校区', '20');
INSERT INTO `orders` VALUES (5, 'zhaowen', '2', '赵文', '女', '13182387617', '777777@qq.email', '2', '三体', '徐州医科大学主校区', '30');
INSERT INTO `orders` VALUES (24, NULL, NULL, '', '', '', NULL, NULL, NULL, '', NULL);
INSERT INTO `orders` VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '天才在左，疯子在右', NULL, NULL);
INSERT INTO `orders` VALUES (26, NULL, NULL, '汤丽文', '女', '19826361219', NULL, NULL, NULL, '江苏省宜兴市', NULL);

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package`  (
  `packageid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amounts` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`packageid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of package
-- ----------------------------
INSERT INTO `package` VALUES ('1', '7', '1', '汤丽文', '1');
INSERT INTO `package` VALUES ('2', '3', '5', '赵文', '1');
INSERT INTO `package` VALUES ('3', '4', '10', '王敏', '5');
INSERT INTO `package` VALUES ('4', '5', '12', '张立', '1');
INSERT INTO `package` VALUES ('5', '9', '18', '刘雯', '1');
INSERT INTO `package` VALUES ('6', '8', '15', '李勇', '6');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书籍ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书名',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `mark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `productdate` date NULL DEFAULT NULL COMMENT '出版日期',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简介',
  `price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格',
  `categoryid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '大类ID',
  `sortsid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小类ID',
  `professional` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为专业书籍，1为专业书籍，2为非专业书籍，0为无所谓',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '三体', '刘慈欣', '科幻世界', '2006-05-01', '作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖', '47', '2', '9', '1');
INSERT INTO `product` VALUES (2, '我与地坛', '史铁生', '人民文学出版社', '2002-05-01', '《我与地坛》是一篇长篇哲思抒情散文，中国当代作家史铁生著。这部作品是史铁生文学作品中，充满哲思又极为人性化的代表作之一。其前第一段和第二段被纳入人民教育出版社的高一教材中。是作者十五年来摇着轮椅在地坛思索的结晶。散文中饱含作者对人生的种种感悟，对亲情的深情讴歌。地坛只是一个载体，而文章的本质却是一个绝望的人寻求希望的过程，以及对母亲的思念。', '20', '3', '11', '2');
INSERT INTO `product` VALUES (3, '傲慢与偏见', '简·奥斯汀', '外语教学与研究出版社', '2012-03-01', '小说描写了小乡绅班纳特五个待字闺中的千金，主角是二女儿伊丽莎白。她在舞会上认识了达西，但是耳闻他为人傲慢，一直对他心生排斥，经历一番周折，伊丽莎白解除了对达西的偏见，达西也放下傲慢，有情人终成眷属。', '20', '3', '10', '2');
INSERT INTO `product` VALUES (4, '浮生六记', '沈复', '人民文学出版社', '1999-01-01', '《浮生六记》是清代沈复所作的自传体散文，原书六卷，其二已佚，今仅存四卷。作者以纯美的文字，记叙了自己大半生的生活经历，内容朴实无华，真切动人。沈复与妻子陈芸琴瑟相和、伉俪情深，两人诗酒琴茶、布衣蔬食的生活情趣和追求心灵自由的人生态度，是浮世生活的诗意写照；书中所展现的动乱忧患、悲欢离合等浮生况味，更道出了浮世生活的另一真面目。本书“乐而不淫，哀而不伤”，在清代笔记体文学中占有相当重要的位置，流传至今，已成经典。', '20', '3', '11', '2');
INSERT INTO `product` VALUES (5, '天才在左，疯子在右', '高铭', '北京联合出版公司', '2010-02-01', '该书以访谈录的形式记载了生活在另一个角落的人群（精神病患者、心理障碍者等边缘人）深刻、视角独特的所思所想，让人们可以了解到疯子亦或是天才真正的内心世界。内容涉及生理学、心理学、佛学、宗教、量子物理、符号学以及玛雅文明和预言等众多领域。', '25', '5', '26', '1');
INSERT INTO `product` VALUES (7, '杀死一只知更鸟', '哈珀·李', '译林出版社', '2012-01-01', '该小说讲述一个名叫汤姆·鲁滨逊的年轻人，被人诬告犯了强奸罪后，只是因为是一个黑人，辩护律师阿蒂克斯·芬奇尽管握有汤姆不是强奸犯的证据，都无法阻止陪审团给出汤姆有罪的结论。此一妄加之罪，导致汤姆死于乱枪之下。 [1]  虽然故事题材涉及种族不平等与强暴等严肃议题，其文风仍温暖风趣。小说以第一人称著成，叙述者的父亲阿提克斯·芬奇在书中为道德端正的角色，亦是正直律师的典范。', '30', '2', '10', '2');
INSERT INTO `product` VALUES (8, '围城', '钱钟书', '人民文学出版社', '1991-02-01', '《围城》是钱钟书所著的长篇小说，是中国现代文学史上一部风格独特的讽刺小说。被誉为“新儒林外史”。第一版于1947年由上海晨光出版公司出版。故事主要写抗战初期知识分子的群像。', '20', '2', '42', '2');
INSERT INTO `product` VALUES (9, '基督山伯爵', '大仲马', '西安交通大学出版社', '2017-08-01', '故事讲述19世纪法国皇帝拿破仑“百日王朝”时期，法老号大副爱德蒙·唐泰斯受船长委托，为拿破仑党人送了一封信，遭到两个卑鄙小人和法官的陷害，被打入黑牢。期间狱友法利亚神甫向他传授各种知识，并在临终前把埋于基督山岛上的一批宝藏的秘密告诉了他。被陷害入狱十四年后，唐泰斯越狱后找到了宝藏，成为巨富，从此化名基督山伯爵（水手辛巴德、布索尼神父、威尔莫勋爵），经过精心策划，报答了恩人，惩罚了仇人。', '50', '2', '10', '1');
INSERT INTO `product` VALUES (10, '小王子', '安托万·德·圣-埃克苏佩里', '浙江工商大学出版社', '2018-07-19', '《小王子》是法国作家安托万·德·圣-埃克苏佩里于1942年写成的著名儿童文学短篇小说。本书的主人公是来自外星球的小王子。书中以一位飞行员作为故事叙述者，讲述了小王子从自己星球出发前往地球的过程中，所经历的各种历险。', '20', '4', '16', '2');
INSERT INTO `product` VALUES (11, '云边有个小卖部', '张嘉佳', '湖南文艺出版社', '2018-07-01', '该小说讲述小镇青年刘十三回到表面平静却暗潮涌动的小镇，与外婆和几位发小所发生的一连串悲欢离合的故事。该小说表达了对故乡、对亲情的衷心倾诉。外婆王莺莺的乐观坚韧和无限包容，程霜像一道光一样短暂又永恒，刘十三的奋斗与卑微，云边镇迷人的自然风景、悠然的生活节奏，共同构成了云边故乡的美好意境。', '20', '2', '4', '2');
INSERT INTO `product` VALUES (12, '追风筝的人', '卡勒德·胡赛尼', '上海人民出版社', '2006-05-01', '全书围绕风筝与阿富汗的两个少年之间展开，一个富家少年与家中仆人关于风筝的故事，关于人性的背叛与救赎。', '25', '2', '8', '2');
INSERT INTO `product` VALUES (13, '狂人日记', '鲁迅', '天津人民出版社', '2019-12-01', '小说通过被迫害者“狂人”的形象以及“狂人”的自述式的描写，揭示了封建礼教的“吃人”本质，表现了作者对以封建礼教为主体内涵的中国封建文化的反抗；也表现了作者深刻的忏悔意识。作者以彻底的“革命民主主义”的立场对中国的文化进行了深刻的反思，同时对中国的甚至是人类的前途表达了深广的忧愤。', '20', '2', '42', '2');
INSERT INTO `product` VALUES (14, '生活蒙太奇', '天然', '湖南文艺出版社', '2020-07-01', '那些在普通人看来平淡无奇的日子：晒在午后三点的阳光下，雨天一个人读书，抬头遇见初雪……作者把这些单独静止的画面，通过独特想象力和洞察力的艺术加工，画成可以阅读的，充满故事感的连续绘画作品，仿佛一部生活电影的蒙太奇（通过对生活片段的拼接，产生独特意义）。', '55', '3', '13', '2');
INSERT INTO `product` VALUES (15, '人类简史', '尤瓦尔·赫拉利', '中信出版社', '2017-01-01', '作者讲述了人类从石器时代至21世纪的演化与发展史，并将人类历史分为四个阶段：认知革命、农业革命、人类的融合统一与科学革命。', '40', '5', '19', '1');
INSERT INTO `product` VALUES (16, '飘', '玛格丽特·米切尔', '时代文艺出版社', '2017-12-01', '小说以亚特兰大以及附近的一个种植园为故事场景，描绘了内战前后美国南方人的生活。作品刻画了那个时代的许多南方人的形象，占中心位置的斯嘉丽、瑞德、艾希礼、梅兰妮等人是其中的典型代表。他们的习俗礼仪、言行举止、精神观念、政治态度，通过对斯嘉丽·奥哈拉与白瑞德的爱情纠缠为主线，成功地再现了林肯时期的南北战争以及美国南方地区的社会生活。', '42', '2', '10', '2');
INSERT INTO `product` VALUES (17, '了不起的盖茨比', '弗朗西斯·斯科特·基·菲茨杰拉德', '时代文艺出版社', '2018-01-15', '主人公詹姆斯·卡兹本是北达科他州的一个贫穷的农家子弟，自幼梦想做个出人头地的大人物。经过一番努力，他终于步步高升，并更名为杰伊·盖茨比。他在一个军训营里任中尉时，爱上了南方的大家闺秀黛茜·费。可是当他戴着军功勋章在战争结束后从海外归来时，黛茜已嫁给一位来自芝加哥的、体格健壮、富有但举止粗鲁的纨绔子弟汤姆·布坎农，沉醉于爱情梦幻中的盖茨比艰苦创业，由一个贫穷的军官奋斗成为百万富翁。他在长岛西端买下了一幢豪华别墅，与住在东端的布坎农夫妇隔海湾相望。他的府第每晚灯火通明，成群的宾客饮酒纵乐。他唯一的愿望是希望看', '20', '2', '10', '2');
INSERT INTO `product` VALUES (18, '非暴力沟通', '马歇尔·卢森堡 ', '华夏出版社', '2021-09-01', 'NVC相信，人的天性是友善的，暴力的方式是后天习得的。NVC还认为，我们所有人有共同的、基本的需要，人的行为是满足一种或多种需要的策略。', '48', '9', '43', '1');
INSERT INTO `product` VALUES (19, '不能承受的生命之轻', '米兰·昆德拉', '上海译文出版社', '2017-01-01', '该小说描写了托马斯与特丽莎、萨丽娜之间的感情生活。但它不是一个男人和两个女人的三角性爱故事，它是一部哲理小说，小说从“永恒轮回”的讨论开始，把读者带入了对一系列问题的思考中，比如轻与重、灵与肉。', '20', '2', '10', '2');
INSERT INTO `product` VALUES (20, '生死疲劳', '莫言', '浙江文艺出版社', '2022-01-01', '在《生死疲劳》小说中，一个被冤杀的地主经历了六道轮回，变成驴、牛、猪、狗、猴，最后终于又转生为一个带着先天性不可治愈疾病的大头婴儿；这个大头婴儿滔滔不绝地讲述着他身为畜牲时的种种奇特感受，以及地主西门闹一家和农民蓝解放一家半个多世纪生死疲劳的悲欢故事。小说透过各种动物的眼睛，观照并体味了五十多年来中国乡村社会的庞杂喧哗、充满苦难的蜕变历史。', '35', '2', '4', '1');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `reviewid` int(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `id` int(20) NULL DEFAULT NULL COMMENT '对应产品编号',
  `reviewdate` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `reviewcontent` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `shenpi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`reviewid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (1, 1, '2022-06-13 00:43:34', '差评', '快递不更新', '');
INSERT INTO `review` VALUES (3, 2, '2022-06-07 00:47:07', '好评', '书是正品', NULL);
INSERT INTO `review` VALUES (4, 3, '2022-06-10 10:04:02', '好评', '书的包装很好看', NULL);
INSERT INTO `review` VALUES (5, 4, '2022-05-30 10:06:34', '好评', '很好，是正品，物流很快', NULL);
INSERT INTO `review` VALUES (6, 5, '2022-05-26 10:07:02', '差评', '有小瑕疵，书的角被撞了一点', NULL);
INSERT INTO `review` VALUES (7, 6, '2022-06-02 10:08:15', '好评', '质量、外观、内容都很不错', NULL);
INSERT INTO `review` VALUES (8, 7, '2022-06-04 10:09:01', '好评', '插图和书签都很精美', NULL);

-- ----------------------------
-- Table structure for sorts
-- ----------------------------
DROP TABLE IF EXISTS `sorts`;
CREATE TABLE `sorts`  (
  `sortid` int(20) NOT NULL AUTO_INCREMENT,
  `sorts` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sortid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sorts
-- ----------------------------
INSERT INTO `sorts` VALUES (2, '工具书', '1');
INSERT INTO `sorts` VALUES (3, '考试用书', '1');
INSERT INTO `sorts` VALUES (4, '中国当代小说', '2');
INSERT INTO `sorts` VALUES (5, '中国近代小说', '2');
INSERT INTO `sorts` VALUES (6, '中国古典小说', '2');
INSERT INTO `sorts` VALUES (7, '四大名著', '2');
INSERT INTO `sorts` VALUES (8, '外国小说', '2');
INSERT INTO `sorts` VALUES (9, '科幻小说', '2');
INSERT INTO `sorts` VALUES (10, '世界名著', '2');
INSERT INTO `sorts` VALUES (11, '文学', '3');
INSERT INTO `sorts` VALUES (12, '传记', '3');
INSERT INTO `sorts` VALUES (13, '艺术', '3');
INSERT INTO `sorts` VALUES (14, '摄影', '3');
INSERT INTO `sorts` VALUES (15, '科普/百科', '4');
INSERT INTO `sorts` VALUES (16, '外国儿童文学', '4');
INSERT INTO `sorts` VALUES (17, '绘本', '4');
INSERT INTO `sorts` VALUES (18, '中国儿童文学', '4');
INSERT INTO `sorts` VALUES (19, '历史', '5');
INSERT INTO `sorts` VALUES (20, '古籍', '5');
INSERT INTO `sorts` VALUES (21, '哲学/宗教', '5');
INSERT INTO `sorts` VALUES (22, '文化', '5');
INSERT INTO `sorts` VALUES (23, '政治/军事', '5');
INSERT INTO `sorts` VALUES (24, '法律', '5');
INSERT INTO `sorts` VALUES (25, '社会科学', '5');
INSERT INTO `sorts` VALUES (26, '心理学', '5');
INSERT INTO `sorts` VALUES (27, '经济', '6');
INSERT INTO `sorts` VALUES (28, '管理', '6');
INSERT INTO `sorts` VALUES (29, '投资理财', '6');
INSERT INTO `sorts` VALUES (30, '亲子/家教', '7');
INSERT INTO `sorts` VALUES (31, '美食', '7');
INSERT INTO `sorts` VALUES (32, '手工', '7');
INSERT INTO `sorts` VALUES (33, '旅游', '7');
INSERT INTO `sorts` VALUES (34, '体育/运动', '7');
INSERT INTO `sorts` VALUES (35, '科普', '8');
INSERT INTO `sorts` VALUES (36, '建筑', '8');
INSERT INTO `sorts` VALUES (37, '医学', '8');
INSERT INTO `sorts` VALUES (38, '农林', '8');
INSERT INTO `sorts` VALUES (39, '自然科学', '8');
INSERT INTO `sorts` VALUES (40, '工业', '8');
INSERT INTO `sorts` VALUES (41, '计算机', '8');
INSERT INTO `sorts` VALUES (42, '社会小说', '2');
INSERT INTO `sorts` VALUES (43, '人际交往', '9');
INSERT INTO `sorts` VALUES (44, '教材', '1');

-- ----------------------------
-- Table structure for sypc
-- ----------------------------
DROP TABLE IF EXISTS `sypc`;
CREATE TABLE `sypc`  (
  `code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mrcs` decimal(2, 0) NULL DEFAULT NULL,
  `mzcs` decimal(2, 0) NULL DEFAULT NULL,
  `yfbm` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sypc
-- ----------------------------
INSERT INTO `sypc` VALUES ('bid', 'bid', 2, 0, '0816');
INSERT INTO `sypc` VALUES ('biw', 'biw', 2, 0, '4950');
INSERT INTO `sypc` VALUES ('ls', 'ls', 1, 0, '99');
INSERT INTO `sypc` VALUES ('q12h', 'q12h', 2, 0, '0813');
INSERT INTO `sypc` VALUES ('q1h', 'q1h', 24, 0, '010203040506070809101112131415161718192021222324');
INSERT INTO `sypc` VALUES ('q2h', 'q2h', 12, 0, '010305070911131517192123');
INSERT INTO `sypc` VALUES ('q3h', 'q3h', 8, 0, '0104071013161922');
INSERT INTO `sypc` VALUES ('q4h', 'q4h', 6, 0, '010509141822');
INSERT INTO `sypc` VALUES ('q6h', 'q6h', 4, 0, '07101419');
INSERT INTO `sypc` VALUES ('q8h', 'q8h', 3, 0, '08116');
INSERT INTO `sypc` VALUES ('qd', 'qd', 1, 0, '12');
INSERT INTO `sypc` VALUES ('qid', 'qid', 4, 0, '08111417');
INSERT INTO `sypc` VALUES ('qod', 'qod', 1, 0, '49');
INSERT INTO `sypc` VALUES ('qw', 'qw', 1, 1, '49');
INSERT INTO `sypc` VALUES ('st', 'st', 1, 0, '49');
INSERT INTO `sypc` VALUES ('tid', 'tid', 3, 0, '081217');
INSERT INTO `sypc` VALUES ('tiw', 'tiw', 1, 3, '49');
INSERT INTO `sypc` VALUES ('zcg', 'zcg', 2, 0, '4950');

-- ----------------------------
-- Table structure for typk
-- ----------------------------
DROP TABLE IF EXISTS `typk`;
CREATE TABLE `typk`  (
  `YPXH` decimal(6, 0) NULL DEFAULT NULL,
  `XTSB` decimal(2, 0) NULL DEFAULT NULL,
  `YPMC` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `YPGG` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `YPSX` decimal(4, 0) NULL DEFAULT NULL,
  `YPDW` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of typk
-- ----------------------------
INSERT INTO `typk` VALUES (1, 1, '0.9%氯化钠注射液', '10ml*90mg', 11, '支');
INSERT INTO `typk` VALUES (2, 1, '0.9%氯化钠注射液', '100ml*0.9mg', 21, '瓶');
INSERT INTO `typk` VALUES (3, 1, '韵宝（调经种子丸）', '4.5g', 92, '盒');
INSERT INTO `typk` VALUES (4, 1, '再克（头孢克洛干混悬剂）', '0.25g*6#', 93, '盒');
INSERT INTO `typk` VALUES (5, 1, '马来酸依那普利片', '5mg×16', 55, '盒');
INSERT INTO `typk` VALUES (6, 1, '盐酸地尔硫卓片', '30mg×40', 80, '盒');
INSERT INTO `typk` VALUES (7, 1, '培哚普利片', '4mg×30', 60, '盒');
INSERT INTO `typk` VALUES (8, 1, '苯磺酸氨氯地平片', '5mg×7', 70, '盒');
INSERT INTO `typk` VALUES (9, 1, '吉非罗齐胶囊', '0.3g×30', 50, '盒');
INSERT INTO `typk` VALUES (10, 1, '盐酸甲氯芬酯胶囊', '0.1g×36', 85, '盒');
INSERT INTO `typk` VALUES (11, 1, '拉西地平片', '4mg×30', 40, '瓶');
INSERT INTO `typk` VALUES (12, 1, '盐酸普罗帕酮片', '50mg×100', 25, '瓶');
INSERT INTO `typk` VALUES (13, 1, '硝苯地平片', '10mg×100', 65, '瓶');
INSERT INTO `typk` VALUES (14, 1, '双氢麦角毒碱片', '1mg×50', 40, '盒');
INSERT INTO `typk` VALUES (15, 1, '吡贝地尔缓释片', '50mg×15', 30, '瓶');
INSERT INTO `typk` VALUES (16, 1, '复方溴咖片', '30片', 50, '瓶');
INSERT INTO `typk` VALUES (17, 1, '单硝酸异山梨酯缓释片', '60mg×7', 40, '盒');
INSERT INTO `typk` VALUES (18, 1, '藻酸双酯钠片', '50mg×100', 60, '盒');
INSERT INTO `typk` VALUES (19, 1, '盐酸普奈洛尔片', '10mg×100', 100, '盒');
INSERT INTO `typk` VALUES (20, 1, '醋酸去氨加压素片', '100mg×30', 30, '瓶');
INSERT INTO `typk` VALUES (21, 1, '罗红霉素胶囊', '150mg×12', 200, '盒');
INSERT INTO `typk` VALUES (22, 1, '多潘立酮片', '10mg×30', 50, '瓶');
INSERT INTO `typk` VALUES (23, 1, '枸橼酸铋钾颗粒', '56袋', 70, '袋');
INSERT INTO `typk` VALUES (24, 1, '酚酞片', '100mg×100', 30, '瓶');
INSERT INTO `typk` VALUES (25, 1, '牛黄解毒片', '270mg×10', 20, '盒');
INSERT INTO `typk` VALUES (26, 1, '对乙酰氨基酚片', '500mg×12', 50, '盒');
INSERT INTO `typk` VALUES (27, 1, '双氯芬酸钠肠溶片', '25mg×30', 60, '瓶');
INSERT INTO `typk` VALUES (28, 1, '氨氛伪麻美芬II/氨麻苯美片', '10粒', 50, '盒');
INSERT INTO `typk` VALUES (29, 1, '甲巯咪唑片', '5mg×100', 20, '盒');
INSERT INTO `typk` VALUES (30, 1, '盐酸普罗帕酮针', '70mg', 100, '支');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名(登录时用)',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `passward` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码(MD5加密)',
  `useremail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'EMAIL',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `userqq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `receipt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `postcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `vip` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否VIP用户，1为是，0为否'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1234', '1234', '1234', '1234', '1234', '1234', '1234', '江苏徐州', '江苏徐州', '221000', '1');
INSERT INTO `user` VALUES ('2', '12345', '12345', '12345', '12345', '12345', '12345', '12345', '湖北武汉', '湖北武汉', '430000', '1');
INSERT INTO `user` VALUES ('3', 'zhaowen', '赵文', '123456', '123456', '123456', '123456', '赵文', '上海浦东新区', '上海浦东新区', '200120', '1');
INSERT INTO `user` VALUES ('4  ', 'wangmin', '王敏', '1234567', '1234567', '1234567', '1234567', '王敏', '四川成都', '四川成都', '610000', '1');
INSERT INTO `user` VALUES ('5', 'zhangli', '张立', '12345678', '12345678', '12345678', '12345678', '张立', '重庆渝中区', '重庆渝中区', '400010', '1');
INSERT INTO `user` VALUES ('', '', '', '123456', '', 'zhaowen', '', NULL, NULL, NULL, NULL, '1');
INSERT INTO `user` VALUES ('', 'tangliwen', '汤丽文', '1234567', '2575594576@qq.com', '19826361219', '2575594576', NULL, NULL, NULL, NULL, '1');
INSERT INTO `user` VALUES ('8', 'liyong', '李勇', '123456', '1111112222', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `user` VALUES ('9', 'liuwen', '刘雯', '347686', '2343657', '1383454366', '134357656', '刘雯', '浙江温州', '浙江温州', NULL, '');
INSERT INTO `user` VALUES ('', 'tangliwen', '汤丽文', '123456', '2575594576@qq.com', '19826361219', '2575594576', NULL, NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for yflb
-- ----------------------------
DROP TABLE IF EXISTS `yflb`;
CREATE TABLE `yflb`  (
  `YFSB` decimal(2, 0) NULL DEFAULT NULL,
  `YFMC` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `XTSB` decimal(2, 0) NULL DEFAULT NULL,
  `BZLB` decimal(1, 0) NULL DEFAULT NULL,
  `XYQX` decimal(1, 0) NULL DEFAULT NULL,
  `ZYQX` decimal(1, 0) NULL DEFAULT NULL,
  `CYQX` decimal(1, 0) NULL DEFAULT NULL,
  `PTFY` decimal(1, 0) NULL DEFAULT NULL,
  `CYDY` decimal(1, 0) NULL DEFAULT NULL,
  `JZYY` decimal(1, 0) NULL DEFAULT NULL,
  `YJFY` decimal(1, 0) NULL DEFAULT NULL,
  `XYLYFS` decimal(4, 0) NULL DEFAULT NULL,
  `ZYLYFS` decimal(4, 0) NULL DEFAULT NULL,
  `SJGLBZ` decimal(1, 0) NULL DEFAULT NULL,
  `TPN` decimal(1, 0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yflb
-- ----------------------------
INSERT INTO `yflb` VALUES (1, '西药房', 3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0);
INSERT INTO `yflb` VALUES (2, '中药方', 4, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0);
INSERT INTO `yflb` VALUES (3, '药房【西】', 3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0);
INSERT INTO `yflb` VALUES (4, '药房【中】', 3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0);

-- ----------------------------
-- Table structure for ygdm
-- ----------------------------
DROP TABLE IF EXISTS `ygdm`;
CREATE TABLE `ygdm`  (
  `ygdm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ksdm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ygxm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ygdm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ygdm
-- ----------------------------
INSERT INTO `ygdm` VALUES ('0001', '普内科', '李斯', '123456');
INSERT INTO `ygdm` VALUES ('0002', '普外科', '李四', '333');
INSERT INTO `ygdm` VALUES ('0003', '泌尿科', '张三', '222');
INSERT INTO `ygdm` VALUES ('0004', '妇产科', '汤丽文', '111');
INSERT INTO `ygdm` VALUES ('0005', '消化科', '王建', '123');
INSERT INTO `ygdm` VALUES ('0006', '呼吸科', '陶文文', '222');
INSERT INTO `ygdm` VALUES ('0007', '神经外科', '张立', '4567');
INSERT INTO `ygdm` VALUES ('0008', '心内科', '唐涛', '2323');
INSERT INTO `ygdm` VALUES ('0009', '心外科', '许丽', '12345');
INSERT INTO `ygdm` VALUES ('0010', '口腔科', '陈志宏', '55555');
INSERT INTO `ygdm` VALUES ('0011', '康复科', '刘佳雨', '6666');
INSERT INTO `ygdm` VALUES ('0012', '检验科', '杨怡君', '777');
INSERT INTO `ygdm` VALUES ('0013', '急诊科', '张博海', '88888');
INSERT INTO `ygdm` VALUES ('0014', '体检科', '周白芷', '90909');
INSERT INTO `ygdm` VALUES ('0015', '护理部', '林雅南', '00000');
INSERT INTO `ygdm` VALUES ('0016', '肛肠科', '阮建安', '11111');
INSERT INTO `ygdm` VALUES ('0017', '药剂科', '邓诗涵', '12121');
INSERT INTO `ygdm` VALUES ('0018', '中医科', '沈俊君', '2233');

-- ----------------------------
-- Table structure for ypcd
-- ----------------------------
DROP TABLE IF EXISTS `ypcd`;
CREATE TABLE `ypcd`  (
  `YPXH` decimal(6, 0) NULL DEFAULT NULL,
  `YPCD` decimal(4, 0) NULL DEFAULT NULL,
  `JHJG` decimal(12, 4) NULL DEFAULT NULL,
  `LSJG` decimal(12, 4) NULL DEFAULT NULL,
  `PFJG` decimal(12, 4) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ypcd
-- ----------------------------
INSERT INTO `ypcd` VALUES (1, 483, 0.1400, 0.4000, 0.4000);
INSERT INTO `ypcd` VALUES (2, 320, 0.0000, 3.5000, 1.0800);
INSERT INTO `ypcd` VALUES (3, 12, 0.0000, 58.0000, 58.0000);
INSERT INTO `ypcd` VALUES (4, 23, 0.0000, 15.0000, 15.0000);

-- ----------------------------
-- Table structure for ypyf
-- ----------------------------
DROP TABLE IF EXISTS `ypyf`;
CREATE TABLE `ypyf`  (
  `code` decimal(4, 0) NULL DEFAULT NULL,
  `pydm` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lb` decimal(2, 0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ypyf
-- ----------------------------
INSERT INTO `ypyf` VALUES (1, '01', '口服', 2);
INSERT INTO `ypyf` VALUES (2, '02', '肌注', 3);
INSERT INTO `ypyf` VALUES (3, '03', '静滴', 4);
INSERT INTO `ypyf` VALUES (4, '04', '外用', 9);
INSERT INTO `ypyf` VALUES (5, '05', '灌肠', 9);
INSERT INTO `ypyf` VALUES (6, '06', '塞肛', 9);
INSERT INTO `ypyf` VALUES (7, '07', '静注', 4);
INSERT INTO `ypyf` VALUES (8, '08', '皮下', 3);
INSERT INTO `ypyf` VALUES (9, '09', '局封', 9);
INSERT INTO `ypyf` VALUES (10, '10', '皮内', 3);
INSERT INTO `ypyf` VALUES (11, '11', '静推', 4);
INSERT INTO `ypyf` VALUES (12, '12', '雾吸', 1);
INSERT INTO `ypyf` VALUES (15, '13', '消毒', 9);
INSERT INTO `ypyf` VALUES (17, '15', '滴眼', 9);
INSERT INTO `ypyf` VALUES (18, '16', '滴鼻', 1);

SET FOREIGN_KEY_CHECKS = 1;
