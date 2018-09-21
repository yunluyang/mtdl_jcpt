/*
Navicat MySQL Data Transfer

Source Server         : aerorsim
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : mcep

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2018-09-21 17:34:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `topic_id` int(11) DEFAULT NULL COMMENT '所属专题',
  `title` varchar(200) NOT NULL COMMENT '文章标题',
  `author` varchar(50) DEFAULT NULL COMMENT '文章原作者',
  `fromurl` varchar(300) DEFAULT NULL COMMENT '转载来源网址',
  `image` varchar(300) DEFAULT NULL COMMENT '封面图',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型(1:普通,2:热门...)',
  `allowcomments` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否允许评论(0:不允许,1:允许)',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(-1:不通过,0未审核,1:通过)',
  `content` mediumtext COMMENT '内容',
  `user_id` int(10) unsigned NOT NULL COMMENT '发布人id',
  `readnumber` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数量',
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '置顶等级',
  `system_id` int(11) DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) unsigned NOT NULL COMMENT '创建时间',
  `orders` bigint(20) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`article_id`),
  KEY `cms_article_orders` (`orders`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('3', '0', '中国经济标题1', '1', '1', '1', '1', '1', '1', '1', '0', '资讯内容', '1', '0', '0', '1', '1489827019528', '1489827019528');
INSERT INTO `cms_article` VALUES ('4', '0', '中国经济标题2', '2', '2', '2', '2', '2', '1', '1', '-1', '资讯内容', '1', '0', '0', '1', '1489827340870', '1489827340870');
INSERT INTO `cms_article` VALUES ('5', '0', '中国经济标题3', '3', '3', '3', '3', '3', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1489827581414', '1489827581414');
INSERT INTO `cms_article` VALUES ('8', '1', '日本从地球消失，我们倍(喜)感(大)心(普)痛(奔)', 'shuzheng', '网络', '', '日本消失,日本地震', '日本从地震中消失', '1', '1', '1', '好悲(gao)伤(xing)啊', '1', '12', '0', '1', '1489845594355', '1489845594355');
INSERT INTO `cms_article` VALUES ('9', '0', '中国经济标题4', '4', '4', '4', '4', '4', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460546198', '1490460546198');
INSERT INTO `cms_article` VALUES ('10', '0', '中国经济标题5', '5', '5', '5', '5', '5', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460567137', '1490460567137');
INSERT INTO `cms_article` VALUES ('11', '0', '中国经济标题6', '6', '6', '6', '6', '6', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460575304', '1490460575304');
INSERT INTO `cms_article` VALUES ('12', '0', '中国经济标题7', '7', '7', '7', '7', '7', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460582004', '1490460582004');
INSERT INTO `cms_article` VALUES ('13', '0', '中国经济标题8', '8', '8', '8', '8', '8', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460588840', '1490460588840');
INSERT INTO `cms_article` VALUES ('14', '0', '中国经济标题9', '9', '9', '9', '9', '9', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460596394', '1490460596394');
INSERT INTO `cms_article` VALUES ('15', '0', '中国经济标题10', '10', '10', '10', '10', '10', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460612370', '1490460612370');
INSERT INTO `cms_article` VALUES ('16', '0', '中国经济标题11', '11', '11', '11', '11', '11', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460782767', '1490460782767');
INSERT INTO `cms_article` VALUES ('17', '0', '中国经济标题12', '12', '12', '12', '12', '12', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460792501', '1490460792501');
INSERT INTO `cms_article` VALUES ('18', '0', '中国经济标题13', '13', '13', '13', '13', '13', '1', '1', '1', '资讯内容', '1', '0', '0', '1', '1490460800634', '1490460800634');
INSERT INTO `cms_article` VALUES ('19', '0', '人为什么谈恋爱？', 'test', 'test', 'test', 'test', 'test', '1', '1', '1', '人为什么谈恋爱？', '1', '0', '0', '2', '1490460800635', '1490460800635');
INSERT INTO `cms_article` VALUES ('20', '0', 'java开发笔记', 'test', 'test', 'test', 'test', 'test', '1', '1', '1', '好记性不如烂笔头', '1', '0', '0', '3', '1490460800636', '1490460800636');

-- ----------------------------
-- Table structure for cms_article_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_category`;
CREATE TABLE `cms_article_category` (
  `article_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `article_id` int(10) unsigned NOT NULL COMMENT '文章编号',
  `category_id` int(10) unsigned NOT NULL COMMENT '类目编号',
  PRIMARY KEY (`article_category_id`),
  KEY `cms_article_category_article_id` (`article_id`),
  KEY `cms_article_category_category_id` (`category_id`),
  CONSTRAINT `cms_article_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_article_category_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='文章类目关联表';

-- ----------------------------
-- Records of cms_article_category
-- ----------------------------
INSERT INTO `cms_article_category` VALUES ('1', '3', '6');
INSERT INTO `cms_article_category` VALUES ('2', '4', '6');
INSERT INTO `cms_article_category` VALUES ('3', '5', '6');
INSERT INTO `cms_article_category` VALUES ('4', '9', '6');
INSERT INTO `cms_article_category` VALUES ('5', '10', '6');
INSERT INTO `cms_article_category` VALUES ('6', '11', '6');
INSERT INTO `cms_article_category` VALUES ('7', '12', '6');
INSERT INTO `cms_article_category` VALUES ('8', '12', '6');
INSERT INTO `cms_article_category` VALUES ('9', '13', '6');
INSERT INTO `cms_article_category` VALUES ('10', '14', '6');
INSERT INTO `cms_article_category` VALUES ('11', '15', '6');
INSERT INTO `cms_article_category` VALUES ('12', '16', '6');
INSERT INTO `cms_article_category` VALUES ('13', '17', '6');
INSERT INTO `cms_article_category` VALUES ('14', '18', '6');
INSERT INTO `cms_article_category` VALUES ('15', '8', '7');
INSERT INTO `cms_article_category` VALUES ('16', '19', '8');
INSERT INTO `cms_article_category` VALUES ('17', '20', '9');

-- ----------------------------
-- Table structure for cms_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_tag`;
CREATE TABLE `cms_article_tag` (
  `article_tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `article_id` int(10) unsigned NOT NULL COMMENT '文章编号',
  `tag_id` int(10) unsigned NOT NULL COMMENT '标签编号',
  PRIMARY KEY (`article_tag_id`),
  KEY `cms_article_tag_article_id` (`article_id`),
  KEY `cms_article_tag_tag_id` (`tag_id`),
  CONSTRAINT `cms_article_tag_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_article_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `cms_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='文章标签关联表';

-- ----------------------------
-- Records of cms_article_tag
-- ----------------------------
INSERT INTO `cms_article_tag` VALUES ('1', '19', '4');
INSERT INTO `cms_article_tag` VALUES ('2', '20', '5');

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类目编号',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '上级编号',
  `level` tinyint(4) NOT NULL COMMENT '层级',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '类型(1:普通,2:热门...)',
  `alias` varchar(20) DEFAULT NULL COMMENT '别名',
  `system_id` int(11) DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) unsigned NOT NULL COMMENT '创建时间',
  `orders` bigint(255) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`category_id`),
  KEY `cms_category_orders` (`orders`),
  KEY `cms_category_pid` (`pid`),
  KEY `cms_category_alias` (`alias`),
  KEY `cms_category_level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='类目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('5', null, '1', '经济', '经济类目', '', '1', 'economic', '1', '1489590733919', '1489590733919');
INSERT INTO `cms_category` VALUES ('6', '5', '2', '中国经济', '中国经济类目', '', '1', 'chinaeconomic', '1', '1489590768989', '1489590768989');
INSERT INTO `cms_category` VALUES ('7', '5', '2', '日本经济', '日本经济类目', '', '1', 'japaneconomic', '1', '1491636586316', '1491636586316');
INSERT INTO `cms_category` VALUES ('8', null, '1', '人类', '人类问题', '', '1', 'people', '2', '1491636586317', '1491636586317');
INSERT INTO `cms_category` VALUES ('9', null, '1', '技术', '技术博文', null, '1', 'technic', '3', '1491636586318', '1491636586318');

-- ----------------------------
-- Table structure for cms_category_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_category_tag`;
CREATE TABLE `cms_category_tag` (
  `category_tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` int(10) unsigned NOT NULL COMMENT '类目编号',
  `tag_id` int(10) unsigned NOT NULL COMMENT '标签编号',
  PRIMARY KEY (`category_tag_id`),
  KEY `cms_category_tag_tag_id` (`tag_id`),
  KEY `cms_category_tag_category_id` (`category_id`),
  CONSTRAINT `cms_category_tag_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_category_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `cms_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='类目标签关联表';

-- ----------------------------
-- Records of cms_category_tag
-- ----------------------------

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '回复楼中楼编号回复楼中楼编号',
  `article_id` int(10) unsigned NOT NULL COMMENT '文章编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `content` text NOT NULL COMMENT '评论内容',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(-1:不通过,0:未审核,1:通过)',
  `ip` varchar(30) DEFAULT NULL COMMENT '评论人ip地址',
  `agent` varchar(200) DEFAULT NULL COMMENT '评论人终端信息',
  `system_id` int(11) DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`comment_id`),
  KEY `cms_comment_article_id` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES ('1', null, '8', '1', '1', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490535749413');
INSERT INTO `cms_comment` VALUES ('2', null, '8', '1', '2', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536186447');
INSERT INTO `cms_comment` VALUES ('3', null, '8', '1', '3', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536192205');
INSERT INTO `cms_comment` VALUES ('4', null, '8', '1', '4', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536460544');
INSERT INTO `cms_comment` VALUES ('5', null, '8', '1', '5', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536462182');
INSERT INTO `cms_comment` VALUES ('6', null, '8', '1', '6', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536463614');
INSERT INTO `cms_comment` VALUES ('7', null, '8', '1', '7', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536464870');
INSERT INTO `cms_comment` VALUES ('8', null, '8', '1', '8', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536465926');
INSERT INTO `cms_comment` VALUES ('9', null, '8', '1', '9', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536466853');
INSERT INTO `cms_comment` VALUES ('10', null, '8', '1', '10', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '1', '1490536467821');
INSERT INTO `cms_comment` VALUES ('11', null, '19', '1', '1', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2', '1491737900448');
INSERT INTO `cms_comment` VALUES ('12', null, '19', '1', '3', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2', '1491737902517');
INSERT INTO `cms_comment` VALUES ('13', null, '19', '1', '4', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2', '1491737903420');
INSERT INTO `cms_comment` VALUES ('14', null, '19', '1', '5', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2', '1491737904428');
INSERT INTO `cms_comment` VALUES ('15', null, '19', '1', '6', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2', '1491737905236');
INSERT INTO `cms_comment` VALUES ('16', null, '19', '1', '7', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2', '1491737905980');

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(11) DEFAULT NULL COMMENT '父菜单',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `url` varchar(100) DEFAULT NULL COMMENT '链接',
  `target` varchar(10) DEFAULT NULL COMMENT '打开方式',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='菜单';

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('1', null, '首页', '/', '_self', '1489847080380');
INSERT INTO `cms_menu` VALUES ('2', null, '问答', '/qa', '_self', '1489847186644');
INSERT INTO `cms_menu` VALUES ('3', null, '博客', '/blog', '_self', '1489847186645');
INSERT INTO `cms_menu` VALUES ('4', null, '资讯', '/news', '_self', '1489847080381');
INSERT INTO `cms_menu` VALUES ('5', null, '专题', '/topic/list', '_self', '1489847186646');
INSERT INTO `cms_menu` VALUES ('6', null, '关于', '/page/about', '_self', '1489847186647');

-- ----------------------------
-- Table structure for cms_page
-- ----------------------------
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编码',
  `pid` int(10) DEFAULT NULL COMMENT '父页面',
  `title` varchar(20) DEFAULT NULL COMMENT '标题',
  `alias` varchar(20) DEFAULT NULL COMMENT '别名',
  `content` mediumtext COMMENT '页面内容',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `description` varchar(300) DEFAULT NULL COMMENT '描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='页面';

-- ----------------------------
-- Records of cms_page
-- ----------------------------
INSERT INTO `cms_page` VALUES ('1', null, '关于', 'about', '作者：张恕征', '单页关键字', '单页描述', '1489839705049', '1489839705049');

-- ----------------------------
-- Table structure for cms_setting
-- ----------------------------
DROP TABLE IF EXISTS `cms_setting`;
CREATE TABLE `cms_setting` (
  `setting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(10) DEFAULT NULL,
  `setting_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='网站配置';

-- ----------------------------
-- Records of cms_setting
-- ----------------------------
INSERT INTO `cms_setting` VALUES ('1', 'copyright', '© 2017 Zhang Shuzheng');

-- ----------------------------
-- Table structure for cms_system
-- ----------------------------
DROP TABLE IF EXISTS `cms_system`;
CREATE TABLE `cms_system` (
  `system_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) NOT NULL COMMENT '系统名称',
  `code` varchar(20) DEFAULT NULL COMMENT '别名',
  `description` varchar(300) DEFAULT NULL COMMENT '描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='系统管理';

-- ----------------------------
-- Records of cms_system
-- ----------------------------
INSERT INTO `cms_system` VALUES ('1', '资讯', 'news', '资讯', '1', '1');
INSERT INTO `cms_system` VALUES ('2', '问答', 'qa', '问答', '2', '2');
INSERT INTO `cms_system` VALUES ('3', '博客', 'blog', '博客', '3', '3');

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签编号',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型(1:普通,2:热门...)',
  `alias` varchar(20) DEFAULT NULL COMMENT '别名',
  `system_id` int(11) DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) unsigned NOT NULL COMMENT '创建时间',
  `orders` bigint(20) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`tag_id`),
  KEY `cms_tag_orders` (`orders`),
  KEY `cms_tag_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='标签表';

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
INSERT INTO `cms_tag` VALUES ('1', 'JAVA', 'java标签', '', '1', 'java', '1', '1489585694864', '1489585694864');
INSERT INTO `cms_tag` VALUES ('2', 'Android', 'android标签', '', '1', 'android', '1', '1489585720382', '1489585720382');
INSERT INTO `cms_tag` VALUES ('3', 'zheng', 'zheng标签', '', '2', 'zheng', '1', '1489585815042', '1489585815042');
INSERT INTO `cms_tag` VALUES ('4', '谈恋爱', '谈恋爱标签', '', '1', 'love', '2', '1489585815043', '1489585815043');
INSERT INTO `cms_tag` VALUES ('5', 'java', 'java标签', '', '1', 'java', '3', '1489585815044', '1489585815044');

-- ----------------------------
-- Table structure for cms_topic
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic`;
CREATE TABLE `cms_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `description` varchar(300) DEFAULT NULL COMMENT '描述',
  `url` varchar(100) DEFAULT NULL COMMENT '链接',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='专题';

-- ----------------------------
-- Records of cms_topic
-- ----------------------------
INSERT INTO `cms_topic` VALUES ('1', '日本地震专题', '日本经历灭国性地震，彻底沉入海底', '/topic/1', '1489843484448');

-- ----------------------------
-- Table structure for ted_demo
-- ----------------------------
DROP TABLE IF EXISTS `ted_demo`;
CREATE TABLE `ted_demo` (
  `proprietor_id` int(10) NOT NULL AUTO_INCREMENT,
  `proprietor_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '业主编码',
  `proprietor_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '业主名称',
  `memo` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `state` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `contact_id` int(10) DEFAULT NULL COMMENT '联络人id',
  `credit_code` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '企业信用代码',
  `proprietor_nature` int(2) DEFAULT NULL COMMENT '0-国有独资、1-国有控股、2-中外合资、3-中外合作、4-外商独资、5-民营',
  `representative` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `registered_capital` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`proprietor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业主';

-- ----------------------------
-- Records of ted_demo
-- ----------------------------
INSERT INTO `ted_demo` VALUES ('1', '10101', '业主名称1', 'adf', null, '15', 'ff', '0', 'sfs', '3423.0000');
INSERT INTO `ted_demo` VALUES ('2', '10101', '业主名称1', 'adfadf', null, '16', '3sd', '0', 'fs', '3232.0000');
INSERT INTO `ted_demo` VALUES ('3', '10101', '业主名称3', 'sf', null, '14', '32', '0', '23', '2323.0000');
INSERT INTO `ted_demo` VALUES ('4', '10101', 'fasdfadf', 'adfadsf', null, '17', 'sdfsd', '0', 'sdfs', '3232.0000');
INSERT INTO `ted_demo` VALUES ('5', '10101', '航天恒星503所', '现在擦掉', null, '17', '12324564123254', '3', '陆阳', '5000.0000');

-- ----------------------------
-- Table structure for upms_code
-- ----------------------------
DROP TABLE IF EXISTS `upms_code`;
CREATE TABLE `upms_code` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cat_no` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '分类编码',
  `cd_no` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '取值编码',
  `cd_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '取值名称',
  `ison` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `parent_id` bigint(10) DEFAULT NULL COMMENT '上级数据id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `memo` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公共码表';

-- ----------------------------
-- Records of upms_code
-- ----------------------------
INSERT INTO `upms_code` VALUES ('42', 'Unit', 'ge', '个', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('43', 'Unit', 'ba', '把', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('44', 'Unit', 'kuai', '块', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('45', 'Unit', 'zhi', '只', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('46', 'Unit', 'pian', '片', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('47', 'Unit', 'mi', '米', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('48', 'Unit', 'tai', '台', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('49', 'Unit', 'pi', '批', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('50', 'Unit', 'ci', '次', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('51', 'Unit', 'tao', '套', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('52', 'Unit', 'tong', '桶', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('53', 'resource', 'station', '电站', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('54', 'resource', 'car', '车辆', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('55', 'resource', 'warehouse', '仓库', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('56', 'resource', 'materiel', '物资分类', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('57', 'Unit', 'xiang', '箱', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('58', '1', '20', '1', '启用', null, null, null);
INSERT INTO `upms_code` VALUES ('59', '1', '', '', '', null, null, null);

-- ----------------------------
-- Table structure for upms_code_class
-- ----------------------------
DROP TABLE IF EXISTS `upms_code_class`;
CREATE TABLE `upms_code_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_no` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '分类编码',
  `cat_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='码表分类';

-- ----------------------------
-- Records of upms_code_class
-- ----------------------------
INSERT INTO `upms_code_class` VALUES ('1', 'resource', '资源');
INSERT INTO `upms_code_class` VALUES ('2', 'Unit', '计量单位');
INSERT INTO `upms_code_class` VALUES ('3', '1', '1');

-- ----------------------------
-- Table structure for upms_company
-- ----------------------------
DROP TABLE IF EXISTS `upms_company`;
CREATE TABLE `upms_company` (
  `company_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `company_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名',
  `company_code` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '代码',
  `address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `companyname_short` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '公司短名',
  `introduction` text COLLATE utf8_bin COMMENT '介绍',
  `province` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '省份',
  `parent_id` int(10) DEFAULT NULL COMMENT '父公司id',
  `company_nature` int(2) DEFAULT NULL COMMENT '0-国有独资、1-国有控股、2-中外合资、3-中外合作、4-外商独资、5-民营',
  `representative` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '法定代表人',
  `registered_capital` float(16,4) DEFAULT NULL COMMENT '注册资本（万元）',
  `inner_or_outer` int(2) DEFAULT NULL COMMENT '1内部，2外部',
  `company_proprietor_id` int(10) DEFAULT NULL COMMENT '业主ID',
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公司表';

-- ----------------------------
-- Records of upms_company
-- ----------------------------
INSERT INTO `upms_company` VALUES ('1', '尚德（哈密）太阳能发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('2', '哈密浚鑫光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('3', '哈密恒鑫新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('4', '哈密益鑫新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('5', '哈密天宏阳光太阳能科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('6', '新疆天利恩泽太阳能科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('7', '吐鲁番联星新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('8', '吐鲁番市海鑫光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('9', '焉耆新奥太阳能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('10', '和静益鑫新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('11', '和静天宏阳光太阳能科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('12', '和静正信光伏电子有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('13', '尉犁县江阴浚鑫光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('14', '和硕恒鑫新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('15', '通威太阳能且末有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('16', '阿克苏大唐新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('17', '温宿县日月辉新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('18', '乌什龙柏电力投资有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('19', '图木舒克市荣信新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('20', '克州百事德新能源开发有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('22', '疏附县浚鑫科技光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('23', '疏附县中建材新能源光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('24', '岳普湖高科新能源发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('25', '麦盖提金坛正信新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('26', '英吉沙县融信天和新能源有限责任公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('27', '金塔万晟光电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('28', '肃南裕固族自治县中能产业园有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('29', '金昌市中科新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('30', '武威华东众合新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('31', '武威久源金属构件有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('32', '尚德（乌兰）太阳能发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('33', '海南州鑫昇新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('34', '尚德（桑日）太阳能发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('35', '平罗中电科能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('38', '阳原聚格光电科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('39', '河北苏龙光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('40', '保山长山顺风尚德新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('41', '临沂意能光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('42', '诸城鑫顺风光电科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('43', '江苏顺阳新能源产业园发展有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('45', '镇江荣顺新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('46', '无锡鼎顺新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('47', '泰兴市顺风光电新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('48', '宿迁顺风光电发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('49', '绍兴环顺光伏科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('50', '衢州兴辉新能源有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('51', '五家渠市旭阳光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('54', '桃江赛维光伏科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('55', '河北国威新能源科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('56', '河北三龙电力科技有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('57', '尚义县顺能光伏电力有限公司', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `upms_company` VALUES ('58', '青海力腾新能源投资有限公司', null, null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `upms_company` VALUES ('59', '共和协和新能源有限公司', null, null, null, null, null, null, null, null, null, null, '11');
INSERT INTO `upms_company` VALUES ('60', '贵南协和新能源有限公司', null, null, null, null, null, null, null, null, null, null, '11');
INSERT INTO `upms_company` VALUES ('61', '兴海县协和新能源有限公司 ', null, null, null, null, null, null, null, null, null, null, '11');
INSERT INTO `upms_company` VALUES ('62', '中电投青云（连云港）光伏发电有限公司 ', null, null, null, null, null, null, null, null, null, null, '12');
INSERT INTO `upms_company` VALUES ('63', '中民新能投资集团有限公司', null, null, null, null, null, null, null, null, null, null, '13');
INSERT INTO `upms_company` VALUES ('64', '博白县民衍能源投资有限公司', null, null, null, null, null, null, null, null, null, null, '13');
INSERT INTO `upms_company` VALUES ('65', '上海瀚元能源合同管理有限公司', null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `upms_company` VALUES ('66', '中民新能宁夏同心有限公司', null, null, null, null, null, null, null, null, null, null, '14');
INSERT INTO `upms_company` VALUES ('67', '中民新能淳化电力有限公司', null, null, null, null, null, null, null, null, null, null, '14');
INSERT INTO `upms_company` VALUES ('68', '余江县金余电力有限公司', null, null, null, null, null, null, null, null, null, null, '14');
INSERT INTO `upms_company` VALUES ('69', '中民阿拉善盟新能源有限公司', null, null, null, null, null, null, null, null, null, null, '14');
INSERT INTO `upms_company` VALUES ('70', '中民新能平定光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '14');
INSERT INTO `upms_company` VALUES ('71', '中民新能平山电力有限公司', null, null, null, null, null, null, null, null, null, null, '14');
INSERT INTO `upms_company` VALUES ('72', '浙江天旺智慧能源有限公司', null, null, null, null, null, null, null, null, null, null, '15');
INSERT INTO `upms_company` VALUES ('73', '精河县海润光伏发电有限公司', null, null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for upms_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_data_permission`;
CREATE TABLE `upms_data_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '数据权限id',
  `permission_id` int(10) DEFAULT NULL COMMENT '权限id',
  `resource_id` int(10) DEFAULT NULL COMMENT '资源id',
  `authorization_type` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '授权类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_data_permission
-- ----------------------------
INSERT INTO `upms_data_permission` VALUES ('1', '1', '1', '1');
INSERT INTO `upms_data_permission` VALUES ('3', '4', '4', '4');
INSERT INTO `upms_data_permission` VALUES ('4', '60', '1', '23');
INSERT INTO `upms_data_permission` VALUES ('5', '4', '3', '22');
INSERT INTO `upms_data_permission` VALUES ('6', '2', '3', '哦屁哦');

-- ----------------------------
-- Table structure for upms_file_info
-- ----------------------------
DROP TABLE IF EXISTS `upms_file_info`;
CREATE TABLE `upms_file_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '文件名',
  `file_token` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '业务表中标记',
  `file_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fastDFS的fileId',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `upload_time` date DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件信息表';

-- ----------------------------
-- Records of upms_file_info
-- ----------------------------
INSERT INTO `upms_file_info` VALUES ('1', '运维管理系统架构图.png', '8d09b29c18344bbe94bf4661cdf81246', 'group1/M00/00/00/wKgK2FpcMeOAF5UbAATgRpIjW2M047.png', '319558', '2018-01-15');
INSERT INTO `upms_file_info` VALUES ('3', '运维管理系统架构图.png', 'bd1a8c4ac3c24db89c9879eedf635ceb', 'group1/M00/00/00/wKgK2FpcNjSAS1ZLAATgRpIjW2M783.png', '319558', '2018-01-15');
INSERT INTO `upms_file_info` VALUES ('4', '运维管理系统架构图.png', 'bd1a8c4ac3c24db89c9879eedf635ceb', 'group1/M00/00/00/wKgK2FpcNjeAdriIAATgRi-SeEU330.png', '319558', '2018-01-15');
INSERT INTO `upms_file_info` VALUES ('5', 'w3.rar', '6a11dd59ef5d4b71a404e36fb403cf84', 'group1/M00/00/00/wKgK2FpgcgGAfsE1AGlB1rcHlBc025.rar', '6898134', '2018-01-18');
INSERT INTO `upms_file_info` VALUES ('6', '123.png', 'c9a750365b774ef6982af448951d344b', 'group1/M00/00/00/wKgK2Fpgdm6AUqtkAATgRpIjW2M117.png', '319558', '2018-01-18');
INSERT INTO `upms_file_info` VALUES ('7', '123_4567.png', '9d93891355814610b4bff021c681d3ec', 'group1/M00/00/00/wKgK2FpgfhuAb4xuAATgRpIjW2M747.png', '319558', '2018-01-18');
INSERT INTO `upms_file_info` VALUES ('8', '123_456567.png', '026f7e355b15467cb6bd49af38ebcad5', 'group1/M00/00/00/wKgK2FpgfleAadFKAATgRjYvIf4901.png', '319558', '2018-01-18');
INSERT INTO `upms_file_info` VALUES ('9', '123_4567.png', '28934dea970f458b8c62299d5ff05392', 'group1/M00/00/00/wKgK2Fpgfn-AV7z6AATgRpIjW2M163.png', '319558', '2018-01-18');
INSERT INTO `upms_file_info` VALUES ('13', 'activiti.sql', '467e6016ed5943f1a696c88c5a21e9f7', 'group1/M00/00/00/wKgK2FpmmJGALoeGAFK9UvprHgg845.sql', '5422418', '2018-01-23');
INSERT INTO `upms_file_info` VALUES ('14', 'MC接口.zip', '467e6016ed5943f1a696c88c5a21e9f7', 'group1/M00/00/00/wKgK2FpmmJqAf4OQAAX8-1JtT2o071.zip', '392443', '2018-01-23');
INSERT INTO `upms_file_info` VALUES ('15', '运维管理系统.docx', '0e067d2fa5f9424182deb241d6938aa1', 'group1/M00/00/00/wKgK2FpmmKOAQfzhAAAuIIo8qk853.docx', '11808', '2018-01-23');
INSERT INTO `upms_file_info` VALUES ('18', '运维管理系统.docx', '248666c8369e469eaa25a71415cff162', 'group1/M00/00/00/wKgK2FpmnIaAOrMKAAAuIIo8qk866.docx', '11808', '2018-01-23');
INSERT INTO `upms_file_info` VALUES ('19', 'KMSpicoqd.zip', '248666c8369e469eaa25a71415cff162', 'group1/M00/00/00/wKgK2Fpmnz2AH9qMAEDuecjDo-w577.zip', '4255353', '2018-01-23');
INSERT INTO `upms_file_info` VALUES ('20', 'MC接口.zip', '95248fe305c44097aeaac4e5f798ee5b', 'group1/M00/00/00/wKgK2Fpmn0aATIT-AAX8-1JtT2o286.zip', '392443', '2018-01-23');
INSERT INTO `upms_file_info` VALUES ('21', '运维管理系统.docx', 'f9060b18d40e4c0f845885c208bcfde9', 'group1/M00/00/00/wKgK2FpvzT6AEDRgAAAuIIo8qk833.docx', '11808', '2018-01-30');
INSERT INTO `upms_file_info` VALUES ('46', '发电量报告2018-02-01.doc', 'fcfe45de96a5480f8d3863c4ebc06d28', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('47', '发电量报告2018-02-01.doc', 'b879180a07a545d98befd714dac3fe8b', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('48', '发电量报告2018-02-01.doc', 'fcfe45de96a5480f8d3863c4ebc06d28', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('49', '发电量报告2018-02-01.doc', 'fcfe45de96a5480f8d3863c4ebc06d28', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('50', '发电量报告2018-02-01.doc', '5d6d4f39972a4f1b9ae226542bc2ef4e', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('51', '发电量报告2018-02-01.doc', '91bbd6feaf6c440d9b1a0aa964326fbf', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('52', '发电量报告2018-02-01.doc', '53004310da6d4682870e94d8ff32d5b4', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('53', '发电量报告2018-02-01.doc', '5d6d4f39972a4f1b9ae226542bc2ef4e', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('54', '发电量报告2018-02-01.doc', '5d6d4f39972a4f1b9ae226542bc2ef4e', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('55', '发电量报告2018-02-01.doc', '53004310da6d4682870e94d8ff32d5b4', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('56', '发电量报告2018-02-01.doc', '91bbd6feaf6c440d9b1a0aa964326fbf', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('57', '发电量报告2018-02-01.doc', '91bbd6feaf6c440d9b1a0aa964326fbf', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('58', '发电量报告2018-02-01.doc', '21d8a89660d64eb0947266ae87c3d800', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('59', '发电量报告2018-02-01.doc', 'c6d3ac56c5e44dcb9eccce00cb7ccdf9', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('60', '发电量报告2018-02-01.doc', '21d8a89660d64eb0947266ae87c3d800', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('61', '发电量报告2018-02-01.doc', 'a905654500d94e98b7f50321912887e7', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('62', '发电量报告2018-02-01.doc', '932e4e462f9b4075ae0a3ef8f959a6a1', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('63', '发电量报告2018-02-01.doc', 'a905654500d94e98b7f50321912887e7', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('64', '发电量报告2018-02-01.doc', '932e4e462f9b4075ae0a3ef8f959a6a1', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('65', '发电量报告2018-02-01.doc', '35f5591e28ba4f079d23157c5af95568', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('66', '发电量报告2018-02-01.doc', '932e4e462f9b4075ae0a3ef8f959a6a1', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('67', '发电量报告2018-02-01.doc', '35f5591e28ba4f079d23157c5af95568', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('68', '发电量报告2018-02-01.doc', 'a905654500d94e98b7f50321912887e7', null, '99177', '2018-02-01');
INSERT INTO `upms_file_info` VALUES ('69', '发电量报告2018-02-06.doc', 'd02bc160c36f4d778a587faf976e7aa9', 'group1/M00/00/00/wKgK2FpzyJCAD9BsAAGDabvu7BY211.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('70', '发电量报告2018-02-06.doc', 'd02bc160c36f4d778a587faf976e7aa9', 'group1/M00/00/00/wKgK2FpzyJaAdnM8AAGDaRoA7YQ700.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('71', '发电量报告2018-02-06.doc', 'dc5bc9b8d65846589884b616493dfaa0', 'group1/M00/00/00/wKgK2FpzyJaAQJ6KAAGDabvu7BY642.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('72', '发电量分析报告2018-02-07.doc', 'd907d0e4f7bb4cfdb42d0b8de98795f0', 'group1/M00/00/00/wKgK2FpzyvCAReCDAAGDabvu7BY571.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('73', '发电量分析报告2018-02-08.doc', '34f865629a584afea3ae80731b52a8dd', 'group1/M00/00/00/wKgK2Fpz0DqAXmgKAAGDabvu7BY283.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('74', '发电量分析报告2018-02-09.doc', 'cba42113965d45889449be7de160cf37', 'group1/M00/00/00/wKgK2Fpz0GuAeSK_AAGDabvu7BY102.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('75', '发电量分析报告2018-02-10.doc', 'de68361186c649afaea910403ddd89d6', 'group1/M00/00/00/wKgK2Fpz1EaAIoI8AAGDabvu7BY147.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('76', '发电量分析报告2018-02-11.doc', 'c32c1885873145e2b7b5467b680b89d1', 'group1/M00/00/00/wKgK2Fpz1RSANJm-AAGDabvu7BY454.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('77', '发电量分析报告2018-02-12.doc', 'e3ce3af63f8a49b78a7def4311245611', 'group1/M00/00/00/wKgK2Fpz1VuAFu_YAAGDabvu7BY709.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('78', '发电量分析报告2018-02-13.doc', '91cb9891959748a4b00807b666d004a2', 'group1/M00/00/00/wKgK2Fpz1aOAC90CAAGDabvu7BY126.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('79', '发电量分析报告2018-02-15.doc', '25ffcba81db04bad8c15a908cf7115e9', 'group1/M00/00/00/wKgK2Fpz1byAfNHMAAGDabvu7BY584.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('80', '发电量分析报告2018-02-16.doc', 'bd761f4642e24e14ba8dbe1a0e6ba874', 'group1/M00/00/00/wKgK2Fpz1cuANlCPAAGDabvu7BY026.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('81', '发电量分析报告2018-02-18.doc', 'd35b053078554f7d9f46c26a03fcd187', 'group1/M00/00/00/wKgK2Fpz1eiALkagAAGDabvu7BY100.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('82', '发电量分析报告2018-02-19.doc', '9f1472d6b7de401a8299472036a9e3f5', 'group1/M00/00/00/wKgK2Fpz1iOAK-fvAAGDabvu7BY735.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('83', '发电量分析报告2018-02-20.doc', 'c06336e119754773ae6c310cfa729603', 'group1/M00/00/00/wKgK2Fpz1lCAb6b9AAGDabvu7BY448.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('84', '发电量分析报告2018-02-21.doc', 'eacd5732fc6347cc8148b715e01e69f4', 'group1/M00/00/00/wKgK2Fpz16GABwIqAAGDabvu7BY543.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('85', '发电量分析报告2018-02-22.doc', 'e3f8473de7bb4b249f0f3a39adea7057', 'group1/M00/00/00/wKgK2Fpz17SACLx-AAGDabvu7BY226.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('86', '发电量分析报告2018-02-23.doc', '5614e2f241af4820b30c84e287bd6bb9', 'group1/M00/00/01/wKgK2Fpz2YaAcb8lAAGDabvu7BY313.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('87', '发电量分析报告2018-02-24.doc', '5658f080f84349c1ace0d00f087083df', 'group1/M00/00/01/wKgK2Fpz2fmAMKh9AAGDabvu7BY932.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('88', '发电量分析报告2018-02-25.doc', 'd8bb1dd0e5bd4dc8974c5265c159965b', 'group1/M00/00/01/wKgK2Fpz2l-ANlRVAAGDabvu7BY059.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('89', '发电量分析报告2018-02-28.doc', '51bfe637a4be434f9c397810759a523a', 'group1/M00/00/01/wKgK2Fpz2mqAUpc1AAGDabvu7BY414.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('90', '发电量分析报告2018-02-08.doc', '73fbae2062cc43b19fad5910c52b3d17', 'group1/M00/00/01/wKgK2Fpz2y-AY2pUAAGDabvu7BY249.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('91', '发电量分析报告2018-02-10.doc', 'a71ebaac80b84a62bd6275735fe38314', 'group1/M00/00/01/wKgK2Fpz22CATAojAAGDabvu7BY160.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('92', '发电量分析报告2018-02-12.doc', 'eb15931772554a39bcb7d50462ca658a', 'group1/M00/00/01/wKgK2Fpz24aAND_yAAGDabvu7BY301.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('93', '发电量分析报告2018-02-13.doc', 'a1dc87d8cb9441e4962534a93b9330e0', 'group1/M00/00/01/wKgK2Fpz25SAfEiAAAGDabvu7BY157.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('94', '发电量分析报告2018-02-22.doc', 'eec8eea7366b4ac9b0ce95108c33b898', 'group1/M00/00/01/wKgK2Fpz3HSAe_k8AAGDabvu7BY096.doc', '99177', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('95', '发电量分析报告2018-01-30.doc', 'b453786457d349d398ccd2938b1475bd', 'group1/M00/00/01/wKgK2Fp0UyqAWlW0AAGy_DLjX0E112.doc', '111356', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('96', '发电量分析报告2018-01-30.doc', 'afc00d59283445e7b51735f40cf091ed', 'group1/M00/00/01/wKgK2Fp0UyqAcOfDAAGy_DLjX0E112.doc', '111356', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('97', '发电量分析报告2018-01-30.doc', 'afd43cce03fe44c586b38754d66c6f0e', 'group1/M00/00/01/wKgK2Fp0UzGADdyCAAGy_DLjX0E903.doc', '111356', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('98', '发电量分析报告2018-01-30.doc', '9c2cb90a288245c38b8adf62c505fc3b', 'group1/M00/00/01/wKgK2Fp0VYeAFHVxAAGy42CLj7k384.doc', '111331', '2018-02-02');
INSERT INTO `upms_file_info` VALUES ('99', '发电量分析报告2018-01-30.doc', '3fe2c87ed29749619758d82cd429a06a', 'group1/M00/00/00/ag8rrlp30ASALddXAAGy7d-Nwmk794.doc', '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('100', '发电量分析报告2018-01-30.doc', 'eb8e6ae516fc4ccbb56f07f972a3b213', 'group1/M00/00/00/ag8rrlp30CaABAzQAAGy7d-Nwmk191.doc', '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('101', '发电量分析报告2018-01-30.doc', '9c176a41e63348508bd6d36137f9c2af', 'group1/M00/00/00/ag8rrlp30FuAQdxwAAGy7d-Nwmk742.doc', '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('102', '发电量分析报告2018-01-30.doc', 'f363073745354f8291c41c32b8e5813b', null, '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('103', '发电量分析报告2018-01-30.doc', 'f4da0a8b4e984830ab12f09a9fb59163', null, '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('104', '发电量分析报告2018-01-30.doc', '3c8ce566721c4aaba5dd2f1fbde814c1', null, '81918', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('105', '发电量分析报告2018-01-30.doc', '4720e7d5cd3a40dc8534faca7ef06180', null, '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('106', '发电量分析报告2018-01-30.doc', '028da474673e43fd938a874cc6be9411', 'group1/M00/00/00/ag8rrlp300eAeQttAAGy7d-Nwmk030.doc', '111341', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('107', '发电量分析报告2018-02-15.doc', '30672bde6d394e9fb657d347a0e255ca', null, '108937', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('108', '发电量分析报告2018-02-15.doc', 'e39a724019a74a8a8723212459242f77', null, '108937', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('112', 'SSOLUIControl.dll', 'eb03c7dc7578418c97cac75a5b30fdda', 'group1/M00/00/01/wKgK2Fp32OKAR6nbAAc6yGVT3J0427.dll', '473800', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('114', '发电量分析报告2018-01-29.doc', 'c873e411a6694645a9a4104d218e1ebf', 'group1/M00/00/00/ag8rrlp34HSADPolAAGoov-jk8k901.doc', '108706', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('115', '新建文本文档.txt', '74a6353931604bff96d0f6b83b8cac38', 'group1/M00/00/00/ag8rrlp3_nOAAykKAAAmx6ZINX0540.txt', '9927', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('116', '发电量分析报告2018-01-30.doc', 'cc6f76e1db894ae38b4cfe643f60f651', 'group1/M00/00/00/ag8rrlp4NImAJ0K6AAHBx3t4jgU765.doc', '115143', '2018-02-05');
INSERT INTO `upms_file_info` VALUES ('117', 'java_error_in_idea_17024.log', '70e0997d40b64d9b90957ddee10ba06e', null, '38995', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('118', 'java_error_in_idea_17024.log', '70e0997d40b64d9b90957ddee10ba06e', null, '38995', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('119', 'java_error_in_idea_17024.log', '70e0997d40b64d9b90957ddee10ba06e', null, '38995', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('120', 'java_error_in_idea_19480.log', '70e0997d40b64d9b90957ddee10ba06e', null, '38265', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('121', 'java_error_in_idea_19148.log', '70e0997d40b64d9b90957ddee10ba06e', null, '37517', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('122', 'java_error_in_idea_19480.log', '70e0997d40b64d9b90957ddee10ba06e', null, '38265', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('123', 'java_error_in_idea_19148.log', '70e0997d40b64d9b90957ddee10ba06e', null, '37517', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('124', 'java_error_in_idea_19480.log', '70e0997d40b64d9b90957ddee10ba06e', null, '38265', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('125', 'java_error_in_idea_19148.log', '70e0997d40b64d9b90957ddee10ba06e', null, '37517', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('126', 'java_error_in_idea_7864.log', '7b4456af3b4b44efa7001a1bf2af6560', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('127', 'java_error_in_idea_7864.log', '7b4456af3b4b44efa7001a1bf2af6560', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('128', 'java_error_in_idea_7864.log', '7b4456af3b4b44efa7001a1bf2af6560', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('129', 'java_error_in_idea_9764.log', '8d7e62729aed4c40b0356f377909a486', null, '38005', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('130', 'java_error_in_idea_9764.log', '8d7e62729aed4c40b0356f377909a486', null, '38005', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('131', 'java_error_in_idea_9764.log', '8d7e62729aed4c40b0356f377909a486', null, '38005', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('132', 'java_error_in_idea_7704.log', 'b6a0952ea2e1492a9e24045d25123921', null, '36909', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('133', 'java_error_in_idea_7704.log', 'b6a0952ea2e1492a9e24045d25123921', null, '36909', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('134', 'java_error_in_idea_7704.log', 'b6a0952ea2e1492a9e24045d25123921', null, '36909', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('135', 'java_error_in_idea_7864.log', '007a1ba0f82f44f9b3a6a9d42eaab9ea', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('136', 'java_error_in_idea_7864.log', '007a1ba0f82f44f9b3a6a9d42eaab9ea', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('137', 'java_error_in_idea_7864.log', '007a1ba0f82f44f9b3a6a9d42eaab9ea', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('138', 'java_error_in_idea_9764.log', '8e3ec0e9f1da4c1b93c24d37832d1583', null, '38005', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('139', 'java_error_in_idea_9764.log', '8e3ec0e9f1da4c1b93c24d37832d1583', null, '38005', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('140', 'java_error_in_idea_9764.log', '8e3ec0e9f1da4c1b93c24d37832d1583', null, '38005', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('141', 'java_error_in_idea_7864.log', '38ef505acf0a4a55932d454b17790ef5', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('142', 'java_error_in_idea_7864.log', '38ef505acf0a4a55932d454b17790ef5', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('143', 'java_error_in_idea_7864.log', '38ef505acf0a4a55932d454b17790ef5', null, '31137', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('144', 'java_error_in_idea_3324.log', '38ef505acf0a4a55932d454b17790ef5', null, '34671', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('145', 'java_error_in_idea_3324.log', '38ef505acf0a4a55932d454b17790ef5', null, '34671', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('146', 'java_error_in_idea_3324.log', '38ef505acf0a4a55932d454b17790ef5', null, '34671', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('147', 'java_error_in_idea_7704.log', '6bec952b48c849ce9787ee341f8d0257', null, '36909', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('148', 'java_error_in_idea_7704.log', '6bec952b48c849ce9787ee341f8d0257', null, '36909', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('149', 'java_error_in_idea_7704.log', '6bec952b48c849ce9787ee341f8d0257', null, '36909', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('150', 'java_error_in_idea_17108.log', '6bec952b48c849ce9787ee341f8d0257', null, '39212', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('151', 'java_error_in_idea_17108.log', '6bec952b48c849ce9787ee341f8d0257', null, '39212', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('152', 'java_error_in_idea_17108.log', '6bec952b48c849ce9787ee341f8d0257', null, '39212', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('153', 'java_error_in_idea_17024.log', 'ffb032c186a24ecb94ab7c52e8b9b669', null, '38995', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('154', 'java_error_in_idea_17024.log', 'ffb032c186a24ecb94ab7c52e8b9b669', null, '38995', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('155', 'java_error_in_idea_17024.log', 'ffb032c186a24ecb94ab7c52e8b9b669', null, '38995', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('156', 'java_error_in_idea_3324.log', '47329ccd3a6c4ee699ea22f14a273358', null, '34671', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('157', 'java_error_in_idea_3324.log', '47329ccd3a6c4ee699ea22f14a273358', null, '34671', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('158', 'java_error_in_idea_3324.log', '47329ccd3a6c4ee699ea22f14a273358', null, '34671', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('159', 'java_error_in_idea_1940.log', '47329ccd3a6c4ee699ea22f14a273358', null, '37461', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('160', 'java_error_in_idea_1940.log', '47329ccd3a6c4ee699ea22f14a273358', null, '37461', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('161', 'java_error_in_idea_1940.log', '47329ccd3a6c4ee699ea22f14a273358', null, '37461', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('162', 'java_error_in_idea_13224.log', '826d370461f346c0a120ed9f1a9ab788', null, '38258', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('163', 'java_error_in_idea_13224.log', '8235ed7ca6d34876a0f2085518cbd6e2', null, '38258', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('164', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '4b671334b2f14a70a16232b83338b3db', null, '234469', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('165', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'b132367f5b0a40d0aa2c380d4664eff5', null, '234469', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('167', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'c4ffa125661648349b0c3722133a8576', null, '234469', '2018-08-24');
INSERT INTO `upms_file_info` VALUES ('168', 'AxureRP_for_chorme_0_6_2.crx', 'a1d683d119484821bd3411068b327e1c', null, '13001', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('169', '032001500111_88360548.pdf', '33cfd5c87d0444578a8ccc11de17eba8', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('170', '83.EXE', '05600fdc71884747a612f86e5ffa250c', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('171', '032001500111_88360548.pdf', '05600fdc71884747a612f86e5ffa250c', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('172', '032001500111_88360548.pdf', '05600fdc71884747a612f86e5ffa250c', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('173', '032001500111_88360548.pdf', '05600fdc71884747a612f86e5ffa250c', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('174', '83.EXE', '41509d6951a9455e8a261067d0babc7b', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('175', '83.EXE', '41509d6951a9455e8a261067d0babc7b', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('176', '032001500111_88360548.pdf', '41509d6951a9455e8a261067d0babc7b', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('177', '032001500111_88360548.pdf', '41509d6951a9455e8a261067d0babc7b', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('178', '032001500111_88360548.pdf', '41509d6951a9455e8a261067d0babc7b', null, '48537', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('179', '83.EXE', 'b072f02f41d4457c90ecd238c0c0fe69', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('180', '83.EXE', 'fe7b495885644debada5d3883c0f40f2', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('181', '83.EXE', 'b489387e52e840e68cbbfdd559656dab', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('182', '83.EXE', '3b56de7e0c004468add35318dc6a6185', null, '32689', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('183', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '35402c607ed546e2921819e43d57d550', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('184', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '35402c607ed546e2921819e43d57d550', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('185', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '35402c607ed546e2921819e43d57d550', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('186', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '1d510ef55b2744e49e244890be0add22', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('187', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '5574b029edd842bea66dbd06bc8f234f', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('188', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '5574b029edd842bea66dbd06bc8f234f', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('189', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '4aa08324adcd4b47b08361e426489e98', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('190', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '4aa08324adcd4b47b08361e426489e98', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('191', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'aafba19e3aed4914ae10c51e6cfd2b17', null, '234469', '2018-08-26');
INSERT INTO `upms_file_info` VALUES ('192', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '918928e5b5e34785a4317a150ae78222', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('193', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '918928e5b5e34785a4317a150ae78222', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('194', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'fea5fe471aef445abe2affd8e618c451', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('195', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'fea5fe471aef445abe2affd8e618c451', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('196', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'fea5fe471aef445abe2affd8e618c451', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('197', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'a5811132fcd4444189233bd0f0d982d3', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('198', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'a5811132fcd4444189233bd0f0d982d3', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('199', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', 'a5811132fcd4444189233bd0f0d982d3', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('200', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '625ad87ef9a449b9a2763c75f3b7f274', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('201', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '625ad87ef9a449b9a2763c75f3b7f274', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('202', 'a6efce1b9d16fdfa8284a6d6b98f8c5494ee7b19.jpg', '625ad87ef9a449b9a2763c75f3b7f274', null, '234469', '2018-08-27');
INSERT INTO `upms_file_info` VALUES ('203', 'desktop.ini', 'd349e7b9efbd4607b6d788c1ef5a5f1d', null, '282', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('204', 'desktop.ini', 'd349e7b9efbd4607b6d788c1ef5a5f1d', null, '282', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('205', 'desktop.ini', 'd349e7b9efbd4607b6d788c1ef5a5f1d', null, '282', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('206', '5af660e81d9bf.jpg', 'd349e7b9efbd4607b6d788c1ef5a5f1d', null, '177910', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('207', '5af660e81d9bf.jpg', 'd349e7b9efbd4607b6d788c1ef5a5f1d', null, '177910', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('208', '5af660e81d9bf.jpg', 'd349e7b9efbd4607b6d788c1ef5a5f1d', null, '177910', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('209', '5af660e957785.jpg', '11a49b99fa204613b348348f421517a2', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('210', '5af660e957785.jpg', '11a49b99fa204613b348348f421517a2', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('211', '5af660e957785.jpg', '11a49b99fa204613b348348f421517a2', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('212', 'dilireba03.jpg', 'd2229a5359494368bb84de3b88467ccb', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('213', 'dilireba03.jpg', 'd2229a5359494368bb84de3b88467ccb', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('214', 'dilireba03.jpg', 'd2229a5359494368bb84de3b88467ccb', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('215', '5af660e957785.jpg', 'c0a983688f8e43d796f0bff72e863a67', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('216', '5af660e957785.jpg', 'c0a983688f8e43d796f0bff72e863a67', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('217', '5af660e957785.jpg', 'c0a983688f8e43d796f0bff72e863a67', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('218', 'dilireba03.jpg', 'a5f0e38158474786bd4f5d2aaea83337', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('219', 'dilireba03.jpg', 'a5f0e38158474786bd4f5d2aaea83337', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('220', '5af660e957785.jpg', '69393b5f49af4d77b4644b539bd243bc', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('221', '5af660e957785.jpg', '69393b5f49af4d77b4644b539bd243bc', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('222', '5af660e957785.jpg', '69393b5f49af4d77b4644b539bd243bc', null, '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('223', 'dilireba03.jpg', '9a190072e2ec410bb4a501799487e924', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('224', 'dilireba03.jpg', '9a190072e2ec410bb4a501799487e924', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('225', 'dilireba03.jpg', '9a190072e2ec410bb4a501799487e924', null, '197153', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('228', '5af660e81d9bf.jpg', '72693404ea3b4283a528ad4b60d8048f', 'group1/M00/00/00/wKh0gFufcG-AZIVXAAK29psHkXg742.jpg', '177910', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('229', '5af660e957785.jpg', '72693404ea3b4283a528ad4b60d8048f', 'group1/M00/00/00/wKh0gFufcmyAFeL0AAM6MOPlbrQ345.jpg', '211504', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('230', '5af660e6ee9c6.jpg', '72693404ea3b4283a528ad4b60d8048f', 'group1/M00/00/00/wKh0gFufcxSAM8diAAJbFPPonPs559.jpg', '154388', '2018-09-17');
INSERT INTO `upms_file_info` VALUES ('231', '5af660e957785.jpg', '03b05867220641c08f033c143b23f892', null, '211504', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('232', '5af660e957785.jpg', '03b05867220641c08f033c143b23f892', null, '211504', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('233', '5af660e957785.jpg', '03b05867220641c08f033c143b23f892', null, '211504', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('234', '20dc1fd5007e25d9d6e65884ad57ba38.jpg', '00ca53c39e2949db8eed10cf91a0c917', null, '323345', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('235', '20dc1fd5007e25d9d6e65884ad57ba38.jpg', '00ca53c39e2949db8eed10cf91a0c917', null, '323345', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('236', '20dc1fd5007e25d9d6e65884ad57ba38.jpg', '00ca53c39e2949db8eed10cf91a0c917', null, '323345', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('237', 'dilireba03.jpg', '79827e392d2e4f84b62cda7444d6c9f3', 'group1/M00/00/00/wKh0gFugaPyAa24EAAMCIRdKVR8614.jpg', '197153', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('238', '5af660e957785.jpg', '79827e392d2e4f84b62cda7444d6c9f3', 'group1/M00/00/00/wKh0gFugm4SAXfNUAAM6MOPlbrQ357.jpg', '211504', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('239', '054a3b33367f5aa32bb07e8e73c65dcf.jpg', '79827e392d2e4f84b62cda7444d6c9f3', 'group1/M00/00/00/wKh0gFugnS6ATkqbAANDxHKUaG4976.jpg', '213956', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('240', 'dilireba03.jpg', '6d7f05df9a884d8086d34759423f808a', 'group1/M00/00/00/wKh0gFugn4iAat1BAAMCIRdKVR8255.jpg', '197153', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('241', '5af660e81d9bf.jpg', '6d7f05df9a884d8086d34759423f808a', 'group1/M00/00/00/wKh0gFugoiGAEwyLAAK29psHkXg322.jpg', '177910', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('242', 'dilireba03.jpg', '04c7f7c2e4a840458789433044135203', 'group1/M00/00/00/wKh0gFugqSmAULpxAAMCIRdKVR8551.jpg', '197153', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('243', '5af660e957785.jpg', '9ffea80488e64af8915705e00c496ccf', 'group1/M00/00/00/wKh0gFugq2SAInSUAAM6MOPlbrQ855.jpg', '211504', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('244', 'img_1038905.jpg', '14403c1afc4a4194a3be79accc101851', null, '71547', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('245', 'img_1038905.jpg', '14403c1afc4a4194a3be79accc101851', null, '71547', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('246', 'img_1038905.jpg', '14403c1afc4a4194a3be79accc101851', null, '71547', '2018-09-18');
INSERT INTO `upms_file_info` VALUES ('247', 'img_1038905.jpg', '8bab763edee842a484a8355ed9af1a49', 'group1/M00/00/00/wKh0gFugq2SAInSUAAM6MOPlbrQ855.jpg', '71547', '2018-09-18');

-- ----------------------------
-- Table structure for upms_jobs
-- ----------------------------
DROP TABLE IF EXISTS `upms_jobs`;
CREATE TABLE `upms_jobs` (
  `jobs_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '岗位名称',
  `title` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '岗位标题',
  `description` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '岗位描述',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) NOT NULL COMMENT '排序',
  `organization_id` int(10) unsigned DEFAULT NULL COMMENT '组织id',
  PRIMARY KEY (`jobs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='岗位';

-- ----------------------------
-- Records of upms_jobs
-- ----------------------------
INSERT INTO `upms_jobs` VALUES ('1', '经理', '3', '3', '1', '1', '1');
INSERT INTO `upms_jobs` VALUES ('2', '副总', '22', '2', '2', '2', '7');
INSERT INTO `upms_jobs` VALUES ('4', '检修工程师', '333', '333', '1517047526578', '1517047526578', '1');
INSERT INTO `upms_jobs` VALUES ('5', '运维管理', '444', '444', '1517047545207', '1517047545207', '4');
INSERT INTO `upms_jobs` VALUES ('6', '档案管理员', '55', '55', '1517047572777', '1517047572777', '5');
INSERT INTO `upms_jobs` VALUES ('7', '101部长', '101部长', '101部长', '1517901149649', '1517901149649', '11');
INSERT INTO `upms_jobs` VALUES ('8', '102部长', '102部长', '102部长', '1517901286321', '1517901286321', '12');
INSERT INTO `upms_jobs` VALUES ('9', '103部长', '103部长', '103部长', '1517901297524', '1517901297524', '13');
INSERT INTO `upms_jobs` VALUES ('10', '105部长', '105部长', '105部长', '1517901311946', '1517901311946', '14');
INSERT INTO `upms_jobs` VALUES ('11', '106部长', '106部长', '106部长', '1517901323962', '1517901323962', '15');
INSERT INTO `upms_jobs` VALUES ('12', '131部长', '131部长', '131部长', '1517905114790', '1517905114790', '16');
INSERT INTO `upms_jobs` VALUES ('13', '132部长', '132部长', '132部长', '1517905919436', '1517905919436', '17');
INSERT INTO `upms_jobs` VALUES ('14', '133部长', '133部长', '133部长', '1517906059890', '1517906059890', '18');
INSERT INTO `upms_jobs` VALUES ('15', '136部长', '136部长', '136部长', '1517906078155', '1517906078155', '19');
INSERT INTO `upms_jobs` VALUES ('16', '131部主值班员', '131部主值班员', '131部主值班员', '1519455538860', '1519455538860', '16');
INSERT INTO `upms_jobs` VALUES ('17', '131部副值班员', '131部副值班员', '131部副值班员', '1519455581954', '1519455581954', '16');
INSERT INTO `upms_jobs` VALUES ('18', '132部主值班员', '132部主值班员', '132部主值班员', '1519455666204', '1519455666204', '17');
INSERT INTO `upms_jobs` VALUES ('19', '132部副值班员', '132部副值班员', '132部副值班员', '1519455697469', '1519455697469', '17');
INSERT INTO `upms_jobs` VALUES ('20', '152部安全技术主管', '152部安全技术主管', '152部安全技术主管', '1519455789969', '1519455789969', '25');
INSERT INTO `upms_jobs` VALUES ('21', '152部主值班员', '152部主值班员', '152部主值班员', '1519457681157', '1519457681157', '25');
INSERT INTO `upms_jobs` VALUES ('22', '152部副值班员', '152部副值班员', '152部副值班员', '1519457702251', '1519457702251', '25');
INSERT INTO `upms_jobs` VALUES ('23', '152部安保主管', '152部安保主管', '152部安保主管', '1519457739188', '1519457739188', '25');
INSERT INTO `upms_jobs` VALUES ('24', '152部安保员', '152部安保员', '152部安保员', '1519457760360', '1519457760360', '25');
INSERT INTO `upms_jobs` VALUES ('25', '136部主值班员', '136部主值班员', '136部主值班员', '1519457843969', '1519457843969', '19');
INSERT INTO `upms_jobs` VALUES ('26', '136部副值班员', '136部副值班员', '136部副值班员', '1519457856048', '1519457856048', '19');
INSERT INTO `upms_jobs` VALUES ('27', '137部副值班员', '137部副值班员', '137部副值班员', '1519458818454', '1519458818454', '20');
INSERT INTO `upms_jobs` VALUES ('28', '137部学习主值班员', '137部学习主值班员', '137部学习主值班员', '1519458848313', '1519458848313', '20');
INSERT INTO `upms_jobs` VALUES ('29', '137部主值班员', '137部主值班员', '137部主值班员', '1519458876657', '1519458876657', '20');
INSERT INTO `upms_jobs` VALUES ('30', '137部学员', '137部学员', '137部学员', '1519458899173', '1519458899173', '20');
INSERT INTO `upms_jobs` VALUES ('31', '157部主值班员', '157部主值班员', '157部主值班员', '1519458927110', '1519458927110', '29');
INSERT INTO `upms_jobs` VALUES ('32', '157部副值班员', '157部副值班员', '157部副值班员', '1519458939657', '1519458939657', '29');
INSERT INTO `upms_jobs` VALUES ('33', '139部安全技术主管', '139部安全技术主管', '139部安全技术主管', '1519458963423', '1519458963423', '22');
INSERT INTO `upms_jobs` VALUES ('34', '139部主值班员', '139部主值班员', '139部主值班员', '1519458992657', '1519458992657', '22');
INSERT INTO `upms_jobs` VALUES ('35', '139部副值班员', '139部副值班员', '139部副值班员', '1519459003985', '1519459003985', '21');
INSERT INTO `upms_jobs` VALUES ('36', '150部副值班员', '150部副值班员', '150部副值班员', '1519459152641', '1519459152641', '23');
INSERT INTO `upms_jobs` VALUES ('37', '151部主值班员', '151部主值班员', '151部主值班员', '1519459187454', '1519459187454', '24');
INSERT INTO `upms_jobs` VALUES ('38', '151部副值班员', '151部副值班员', '151部副值班员', '1519459201360', '1519459201360', '24');
INSERT INTO `upms_jobs` VALUES ('39', '153部副值班员', '153部副值班员', '153部副值班员', '1519459233360', '1519459233360', '26');
INSERT INTO `upms_jobs` VALUES ('40', '156部副值班员', '156部副值班员', '156部副值班员', '1519459257923', '1519459257923', '28');
INSERT INTO `upms_jobs` VALUES ('41', '155部副值班员', '155部副值班员', '155部副值班员', '1519459293329', '1519459293329', '27');
INSERT INTO `upms_jobs` VALUES ('42', '158部主值班员', '158部主值班员', '158部主值班员', '1519459339657', '1519459339657', '30');
INSERT INTO `upms_jobs` VALUES ('43', '133部主值班员', '133部主值班员', '133部主值班员', '1519459359735', '1519459359735', '18');
INSERT INTO `upms_jobs` VALUES ('44', '133部副值班员', '133部副值班员', '133部副值班员', '1519459380563', '1519459380563', '18');
INSERT INTO `upms_jobs` VALUES ('45', '138部副值班员', '138部副值班员', '138部副值班员', '1519459414501', '1519459414501', '21');
INSERT INTO `upms_jobs` VALUES ('46', '138部学员', '138部学员', '138部学员', '1519459434907', '1519459434907', '21');
INSERT INTO `upms_jobs` VALUES ('47', '运维部领料审批', '运维部领料审批', '运维部领料审批', '1522048513986', '1522048513986', '9');
INSERT INTO `upms_jobs` VALUES ('48', '技术总监', '技术总监', '技术总监', '1522307729740', '1522307729740', '8');
INSERT INTO `upms_jobs` VALUES ('49', '副总裁', '副总裁', '副总裁', '1522307794428', '1522307794428', '8');
INSERT INTO `upms_jobs` VALUES ('50', '运维管理部生产副总', '运维管理部生产副总', '运维管理部生产副总', '1522307839194', '1522307839194', '9');

-- ----------------------------
-- Table structure for upms_jobs_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_jobs_organization`;
CREATE TABLE `upms_jobs_organization` (
  `jobs_organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `organization_id` int(10) unsigned NOT NULL COMMENT '组织编号',
  `jobs_id` int(10) unsigned NOT NULL COMMENT '岗位编号',
  PRIMARY KEY (`jobs_organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_jobs_organization
-- ----------------------------
INSERT INTO `upms_jobs_organization` VALUES ('1', '4', '1');
INSERT INTO `upms_jobs_organization` VALUES ('2', '6', '1');
INSERT INTO `upms_jobs_organization` VALUES ('5', '1', '2');
INSERT INTO `upms_jobs_organization` VALUES ('6', '4', '2');
INSERT INTO `upms_jobs_organization` VALUES ('7', '7', '2');

-- ----------------------------
-- Table structure for upms_jobs_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_jobs_permission`;
CREATE TABLE `upms_jobs_permission` (
  `jobs_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `jobs_id` int(10) unsigned NOT NULL COMMENT '岗位编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`jobs_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_jobs_permission
-- ----------------------------

-- ----------------------------
-- Table structure for upms_log
-- ----------------------------
DROP TABLE IF EXISTS `upms_log`;
CREATE TABLE `upms_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `description` varchar(100) DEFAULT NULL COMMENT '操作描述',
  `username` varchar(20) DEFAULT NULL COMMENT '操作用户',
  `start_time` bigint(20) DEFAULT NULL COMMENT '操作时间',
  `spend_time` int(11) DEFAULT NULL COMMENT '消耗时间',
  `base_path` varchar(500) DEFAULT NULL COMMENT '根路径',
  `uri` varchar(500) DEFAULT NULL COMMENT 'URI',
  `url` varchar(500) DEFAULT NULL COMMENT 'URL',
  `method` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `parameter` mediumtext,
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户标识',
  `ip` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `result` mediumtext,
  `permissions` varchar(100) DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`log_id`),
  KEY `log_id` (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志';

-- ----------------------------
-- Records of upms_log
-- ----------------------------
INSERT INTO `upms_log` VALUES ('1', '登录', '', '1537348226159', '8', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', null);
INSERT INTO `upms_log` VALUES ('2', '登录', '', '1537348232159', '145', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[123456],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10104,\"data\":\"密码错误！\",\"message\":\"Password error\"}', null);
INSERT INTO `upms_log` VALUES ('3', '登录', '', '1537348237760', '18', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[123456],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10104,\"data\":\"密码错误！\",\"message\":\"Password error\"}', null);
INSERT INTO `upms_log` VALUES ('4', '登录', '', '1537348336515', '0', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', null);
INSERT INTO `upms_log` VALUES ('5', '登录', '', '1537348341104', '7', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[123456],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10104,\"data\":\"密码错误！\",\"message\":\"Password error\"}', null);
INSERT INTO `upms_log` VALUES ('6', '登录', '', '1537348346098', '9', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[123456],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10104,\"data\":\"密码错误！\",\"message\":\"Password error\"}', null);
INSERT INTO `upms_log` VALUES ('7', '登录', '', '1537348393657', '7', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[EDAFD38837FFF8DFA047452E47BD535E],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10104,\"data\":\"密码错误！\",\"message\":\"Password error\"}', null);
INSERT INTO `upms_log` VALUES ('8', '登录', 'admin', '1537348405119', '33', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[111111],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.mcep.net.cn:1111\",\"message\":\"success\"}', null);
INSERT INTO `upms_log` VALUES ('9', '登录', 'admin', '1537349053573', '0', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:/\"', null);
INSERT INTO `upms_log` VALUES ('10', '后台首页', 'admin', '1537349060075', '2535', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('11', '后台首页', 'admin', '1537349221353', '2338', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('12', '认证中心首页', 'admin', '1537349225773', '4', 'http://upms.mcep.net.cn:1111', '/sso/index', 'http://upms.mcep.net.cn:1111/sso/index', 'GET', 'appid=mcep-ted-admin&backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:/sso/login?backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex\"', null);
INSERT INTO `upms_log` VALUES ('13', '登录', 'admin', '1537349225841', '0', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', 'backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:http://ted.mcep.net.cn:6688/manage/demo/index?upms_code=91f0de43-eb40-4019-8d09-d6c0ab0a76da&upms_username=admin&upms_session_id=6a5898dd-0f44-4a9d-bd62-104ec8fc3465\"', null);
INSERT INTO `upms_log` VALUES ('14', '校验code', '', '1537349226215', '0', 'http://upms.mcep.net.cn:1111', '/sso/code', 'http://upms.mcep.net.cn:1111/sso/code', 'POST', '{code=[91f0de43-eb40-4019-8d09-d6c0ab0a76da]}', 'Apache-HttpClient/4.5.2 (Java/1.8.0_91)', '127.0.0.1', '{\"code\":1,\"data\":\"91f0de43-eb40-4019-8d09-d6c0ab0a76da\",\"message\":\"success\"}', null);
INSERT INTO `upms_log` VALUES ('15', '测试信息首页', 'admin', '1537349228912', '10', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', 'upms_code=91f0de43-eb40-4019-8d09-d6c0ab0a76da&upms_username=admin&upms_session_id=6a5898dd-0f44-4a9d-bd62-104ec8fc3465', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('16', '测试信息首页', 'admin', '1537349238378', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', 'upms_session_id=6a5898dd-0f44-4a9d-bd62-104ec8fc3465', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('17', '业主信息列表', 'admin', '1537349245833', '37', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":-1}', null);
INSERT INTO `upms_log` VALUES ('18', '用户首页', 'admin', '1537349257193', '10', 'http://upms.mcep.net.cn:1111', '/manage/user/index', 'http://upms.mcep.net.cn:1111/manage/user/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('19', '用户列表', 'admin', '1537349281045', '25', 'http://upms.mcep.net.cn:1111', '/manage/user/list', 'http://upms.mcep.net.cn:1111/manage/user/list', 'GET', 'sort=user_id&order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":427,\"rows\":[{\"approverId\":254,\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"oname\":\"运维管理部\",\"organization\":9,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"\",\"realname\":\"管理员\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"ctime\":1517897450493,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15202578286\",\"realname\":\"杨文龙\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":10,\"username\":\"131001\"},{\"ctime\":1517898646056,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18630569125\",\"realname\":\"任平安\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":12,\"username\":\"130014\"},{\"ctime\":1517898690415,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18652223629\",\"realname\":\"狄二平\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":13,\"username\":\"137001\"},{\"ctime\":1517898762290,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15852097025\",\"realname\":\"王明\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":14,\"username\":\"157001\"},{\"ctime\":1517898874603,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15863609150\",\"realname\":\"张旭\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":15,\"username\":\"150003\"},{\"ctime\":1517898918165,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"13512578803\",\"realname\":\"王玲志\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":16,\"username\":\"015003\"},{\"approverId\":17,\"ctime\":1517899668431,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18505298060\",\"realname\":\"靳帅\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":17,\"username\":\"153001\"},{\"ctime\":1517899941868,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15509097972\",\"realname\":\"刘瑞清\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":18,\"username\":\"151001\"},{\"ctime\":1517900584509,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15162131932\",\"realname\":\"褚上海\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":19,\"username\":\"116002\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('20', '后台首页', 'admin', '1537350038680', '2437', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('21', '系统首页', 'admin', '1537350049036', '6', 'http://upms.mcep.net.cn:1111', '/manage/system/index', 'http://upms.mcep.net.cn:1111/manage/system/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('22', '组织首页', 'admin', '1537350057275', '7', 'http://upms.mcep.net.cn:1111', '/manage/organization/index', 'http://upms.mcep.net.cn:1111/manage/organization/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('23', '岗位首页', 'admin', '1537350058705', '8', 'http://upms.mcep.net.cn:1111', '/manage/jobs/index', 'http://upms.mcep.net.cn:1111/manage/jobs/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/jobs/index.jsp\"', 'upms:jobs:read');
INSERT INTO `upms_log` VALUES ('24', '系统列表', 'admin', '1537350059924', '614', 'http://upms.mcep.net.cn:1111', '/manage/system/list', 'http://upms.mcep.net.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":6,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.mcep.net.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"mcep-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29a176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://upms.mcep.net.cn:3333\",\"ctime\":1511240304769,\"description\":\"运维系统\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"mcep-poms-admin\",\"orders\":1511240304769,\"status\":1,\"systemId\":7,\"theme\":\"#0c63a6\",\"title\":\"运维管理系统\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:8888\",\"ctime\":1514969005721,\"description\":\"个人代办任务处理\",\"icon\":\"zmdi zmdi-account\",\"name\":\"mcep-flow-admin\",\"orders\":1514969005721,\"status\":1,\"systemId\":8,\"theme\":\"#c2b869\",\"title\":\"流程中心\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:5555\",\"ctime\":1519968853076,\"description\":\"物资管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"mcep-mms-admin\",\"orders\":1519968853076,\"status\":1,\"systemId\":9,\"theme\":\"#7e9796\",\"title\":\"物资管理系统\"},{\"banner\":\"\",\"basepath\":\"http://ted.mcep.net.cn:6688\",\"ctime\":1537175192118,\"description\":\"检测评估平台\",\"icon\":\"zmdi zmdi-bug\",\"name\":\"mcep-ted-admin\",\"orders\":1537175192118,\"status\":1,\"systemId\":10,\"theme\":\"#bae11e\",\"title\":\"检测评估平台\"},{\"banner\":\"\",\"basepath\":\"http://uts.mcep.net.cn:4444\",\"ctime\":1537256713529,\"description\":\"\",\"icon\":\"zmdi zmdi-wrench\",\"name\":\"mcep-uts-admin\",\"orders\":1537256713529,\"status\":1,\"systemId\":11,\"theme\":\"#4f4f4f\",\"title\":\"故障检修管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('25', '角色首页', 'admin', '1537350062920', '10', 'http://upms.mcep.net.cn:1111', '/manage/role/index', 'http://upms.mcep.net.cn:1111/manage/role/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/role/index.jsp\"', 'upms:role:read');
INSERT INTO `upms_log` VALUES ('26', '用户首页', 'admin', '1537350062990', '11', 'http://upms.mcep.net.cn:1111', '/manage/user/index', 'http://upms.mcep.net.cn:1111/manage/user/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('27', '权限首页', 'admin', '1537350064895', '8', 'http://upms.mcep.net.cn:1111', '/manage/permission/index', 'http://upms.mcep.net.cn:1111/manage/permission/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('28', '资源定义首页', 'admin', '1537350066387', '9', 'http://upms.mcep.net.cn:1111', '/manage/resource/index', 'http://upms.mcep.net.cn:1111/manage/resource/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/resource/index.jsp\"', 'upms:resource:read');
INSERT INTO `upms_log` VALUES ('29', '数据权限首页', 'admin', '1537350075486', '7', 'http://upms.mcep.net.cn:1111', '/manage/dataPermission/index', 'http://upms.mcep.net.cn:1111/manage/dataPermission/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/dataPermission/index.jsp\"', 'upms:dataPermission:read');
INSERT INTO `upms_log` VALUES ('30', '会话首页', 'admin', '1537350084123', '6', 'http://upms.mcep.net.cn:1111', '/manage/session/index', 'http://upms.mcep.net.cn:1111/manage/session/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES ('31', '日志首页', 'admin', '1537350086876', '5', 'http://upms.mcep.net.cn:1111', '/manage/log/index', 'http://upms.mcep.net.cn:1111/manage/log/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/log/index.jsp\"', 'upms:log:read');
INSERT INTO `upms_log` VALUES ('32', '公共编码分类首页', 'admin', '1537350094987', '5', 'http://upms.mcep.net.cn:1111', '/manage/codeClass/index', 'http://upms.mcep.net.cn:1111/manage/codeClass/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/codeClass/index.jsp\"', 'upms:codeclass:read');
INSERT INTO `upms_log` VALUES ('33', '权限列表', 'admin', '1537350096081', '9', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":102,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('34', '组织列表', 'admin', '1537350096081', '27', 'http://upms.mcep.net.cn:1111', '/manage/organization/list', 'http://upms.mcep.net.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":32,\"rows\":[{\"abbreviation\":\"旻投电力\",\"ctime\":1517897675806,\"description\":\"总部\",\"manageLead\":\"\",\"name\":\"旻投电力发展有限公司\",\"organizationCoding\":\"\",\"organizationId\":8,\"property\":1},{\"abbreviation\":\"运维管理部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"运维管理部\",\"organizationId\":9,\"pid\":8,\"pname\":\"旻投电力发展有限公司\"},{\"abbreviation\":\"101部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"101现场运维部\",\"organizationId\":11,\"pid\":10},{\"abbreviation\":\"102部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"102现场运维部\",\"organizationId\":12,\"pid\":10},{\"abbreviation\":\"103部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"103现场运维部\",\"organizationId\":13,\"pid\":10},{\"abbreviation\":\"105部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"105现场运维部\",\"organizationId\":14,\"pid\":10},{\"abbreviation\":\"106部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"106现场运维部\",\"organizationId\":15,\"pid\":10},{\"abbreviation\":\"131部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"131现场运维部\",\"organizationId\":16,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"132部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"132现场运维部\",\"organizationId\":17,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"133部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"133现场运维部\",\"organizationId\":18,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('35', '岗位列表', 'admin', '1537350096081', '9', 'http://upms.mcep.net.cn:1111', '/manage/jobs/list', 'http://upms.mcep.net.cn:1111/manage/jobs/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":49,\"rows\":[{\"ctime\":1,\"description\":\"3\",\"jobsId\":1,\"name\":\"经理\",\"orders\":1,\"organizationId\":1,\"title\":\"3\"},{\"ctime\":2,\"description\":\"2\",\"jobsId\":2,\"name\":\"副总\",\"orders\":2,\"organizationId\":7,\"title\":\"22\"},{\"ctime\":1517047526578,\"description\":\"333\",\"jobsId\":4,\"name\":\"检修工程师\",\"orders\":1517047526578,\"organizationId\":1,\"title\":\"333\"},{\"ctime\":1517047545207,\"description\":\"444\",\"jobsId\":5,\"name\":\"运维管理\",\"orders\":1517047545207,\"organizationId\":4,\"title\":\"444\"},{\"ctime\":1517047572777,\"description\":\"55\",\"jobsId\":6,\"name\":\"档案管理员\",\"orders\":1517047572777,\"organizationId\":5,\"title\":\"55\"},{\"ctime\":1517901149649,\"description\":\"101部长\",\"jobsId\":7,\"name\":\"101部长\",\"orders\":1517901149649,\"organizationId\":11,\"pname\":\"101现场运维部\",\"title\":\"101部长\"},{\"ctime\":1517901286321,\"description\":\"102部长\",\"jobsId\":8,\"name\":\"102部长\",\"orders\":1517901286321,\"organizationId\":12,\"pname\":\"102现场运维部\",\"title\":\"102部长\"},{\"ctime\":1517901297524,\"description\":\"103部长\",\"jobsId\":9,\"name\":\"103部长\",\"orders\":1517901297524,\"organizationId\":13,\"pname\":\"103现场运维部\",\"title\":\"103部长\"},{\"ctime\":1517901311946,\"description\":\"105部长\",\"jobsId\":10,\"name\":\"105部长\",\"orders\":1517901311946,\"organizationId\":14,\"pname\":\"105现场运维部\",\"title\":\"105部长\"},{\"ctime\":1517901323962,\"description\":\"106部长\",\"jobsId\":11,\"name\":\"106部长\",\"orders\":1517901323962,\"organizationId\":15,\"pname\":\"106现场运维部\",\"title\":\"106部长\"}]}', 'upms:jobs:read');
INSERT INTO `upms_log` VALUES ('36', '会话列表', 'admin', '1537350099163', '7', 'http://upms.mcep.net.cn:1111', '/manage/session/list', 'http://upms.mcep.net.cn:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"mcep.upms.type\",\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES ('37', '角色列表', 'admin', '1537350100185', '10', 'http://upms.mcep.net.cn:1111', '/manage/role/list', 'http://upms.mcep.net.cn:1111/manage/role/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":45,\"rows\":[{\"ctime\":1,\"description\":\"拥有所有权限\",\"name\":\"super\",\"orders\":1,\"roleId\":1,\"title\":\"超级管理员\"},{\"ctime\":1487471013117,\"description\":\"停用\",\"name\":\"admin\",\"orders\":1487471013117,\"roleId\":2,\"title\":\"管理员\"},{\"ctime\":1511255773286,\"description\":\"发电量分析数据填报\",\"name\":\"日报编制岗\",\"orders\":1511255773286,\"roleId\":3,\"title\":\"日报编制岗\"},{\"ctime\":1517207787584,\"description\":\"发电量分析数据填报\",\"name\":\"日报站长审核岗\",\"orders\":1517207787584,\"roleId\":4,\"title\":\"日报站长审核岗\"},{\"ctime\":1524548724573,\"description\":\"备品备件系统\",\"name\":\"出库申请\",\"orders\":1524548724573,\"roleId\":5,\"title\":\"出库申请\"},{\"ctime\":1524548815541,\"description\":\"物资管理系统\",\"name\":\"物资出入库查询\",\"orders\":1524548815541,\"roleId\":6,\"title\":\"物资出入库查询\"},{\"ctime\":1524638356869,\"description\":\"停用\",\"name\":\"现场运维部部长\",\"orders\":1524638356869,\"roleId\":7,\"title\":\"现场运维部部长\"},{\"ctime\":1524812701729,\"description\":\"运维管理系统\",\"name\":\"集团发电量日报查询\",\"orders\":1524812701729,\"roleId\":8,\"title\":\"发电量日报查询\"},{\"ctime\":1524812721401,\"description\":\"备品备件财务专用报表接口\",\"name\":\"财务专用\",\"orders\":1524812721401,\"roleId\":9,\"title\":\"月结与财务报表\"},{\"ctime\":1524882280713,\"description\":\"\\t备品备件系统\",\"name\":\"仓库保管员\",\"orders\":1524882280713,\"roleId\":10,\"title\":\"仓库保管员\"}]}', 'upms:role:read');
INSERT INTO `upms_log` VALUES ('38', '日志列表', 'admin', '1537350100185', '19', 'http://upms.mcep.net.cn:1111', '/manage/log/list', 'http://upms.mcep.net.cn:1111/manage/log/list', 'GET', 'sort=startTime&order=desc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":36,\"rows\":[{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"会话列表\",\"ip\":\"127.0.0.1\",\"logId\":36,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":7,\"startTime\":1537350099163,\"uri\":\"/manage/session/list\",\"url\":\"http://upms.mcep.net.cn:1111/manage/session/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"权限列表\",\"ip\":\"127.0.0.1\",\"logId\":33,\"method\":\"GET\",\"permissions\":\"upms:permission:read\",\"spendTime\":9,\"startTime\":1537350096081,\"uri\":\"/manage/permission/list\",\"url\":\"http://upms.mcep.net.cn:1111/manage/permission/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"组织列表\",\"ip\":\"127.0.0.1\",\"logId\":34,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":27,\"startTime\":1537350096081,\"uri\":\"/manage/organization/list\",\"url\":\"http://upms.mcep.net.cn:1111/manage/organization/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"岗位列表\",\"ip\":\"127.0.0.1\",\"logId\":35,\"method\":\"GET\",\"permissions\":\"upms:jobs:read\",\"spendTime\":9,\"startTime\":1537350096081,\"uri\":\"/manage/jobs/list\",\"url\":\"http://upms.mcep.net.cn:1111/manage/jobs/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"公共编码分类首页\",\"ip\":\"127.0.0.1\",\"logId\":32,\"method\":\"GET\",\"permissions\":\"upms:codeclass:read\",\"spendTime\":5,\"startTime\":1537350094987,\"uri\":\"/manage/codeClass/index\",\"url\":\"http://upms.mcep.net.cn:1111/manage/codeClass/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"日志首页\",\"ip\":\"127.0.0.1\",\"logId\":31,\"method\":\"GET\",\"permissions\":\"upms:log:read\",\"spendTime\":5,\"startTime\":1537350086876,\"uri\":\"/manage/log/index\",\"url\":\"http://upms.mcep.net.cn:1111/manage/log/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":30,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":6,\"startTime\":1537350084123,\"uri\":\"/manage/session/index\",\"url\":\"http://upms.mcep.net.cn:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"数据权限首页\",\"ip\":\"127.0.0.1\",\"logId\":29,\"method\":\"GET\",\"permissions\":\"upms:dataPermission:read\",\"spendTime\":7,\"startTime\":1537350075486,\"uri\":\"/manage/dataPermission/index\",\"url\":\"http://upms.mcep.net.cn:1111/manage/dataPermission/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"资源定义首页\",\"ip\":\"127.0.0.1\",\"logId\":28,\"method\":\"GET\",\"permissions\":\"upms:resource:read\",\"spendTime\":9,\"startTime\":1537350066387,\"uri\":\"/manage/resource/index\",\"url\":\"http://upms.mcep.net.cn:1111/manage/resource/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.mcep.net.cn:1111\",\"description\":\"权限首页\",\"ip\":\"127.0.0.1\",\"logId\":27,\"method\":\"GET\",\"permissions\":\"upms:permission:read\",\"spendTime\":8,\"startTime\":1537350064895,\"uri\":\"/manage/permission/index\",\"url\":\"http://upms.mcep.net.cn:1111/manage/permission/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES ('39', '数据权限列表', 'admin', '1537350100185', '26', 'http://upms.mcep.net.cn:1111', '/manage/dataPermission/list', 'http://upms.mcep.net.cn:1111/manage/dataPermission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"authorizationType\":\"1\",\"id\":1,\"name\":\"系统组织管理\",\"permissionId\":1,\"resourceId\":1},{\"authorizationType\":\"4\",\"id\":3,\"name\":\"角色用户管理\",\"permissionId\":4,\"resourceId\":4,\"resourceName\":\"139部山东临沂意能库\"},{\"authorizationType\":\"23\",\"id\":4,\"name\":\"新增类目\",\"permissionId\":60,\"resourceId\":1},{\"authorizationType\":\"22\",\"id\":5,\"name\":\"角色用户管理\",\"permissionId\":4,\"resourceId\":3,\"resourceName\":\"103新疆哈密尚德\"},{\"authorizationType\":\"哦屁哦\",\"id\":6,\"name\":\"系统管理\",\"permissionId\":2,\"resourceId\":3,\"resourceName\":\"103新疆哈密尚德\"}]}', 'upms:dataPermission:read');
INSERT INTO `upms_log` VALUES ('40', '资源定义列表', 'admin', '1537350102775', '39', 'http://upms.mcep.net.cn:1111', '/manage/resource/list', 'http://upms.mcep.net.cn:1111/manage/resource/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":274,\"rows\":[{\"businessId\":1001,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":2,\"resourceId\":2,\"resourceName\":\"102新疆五家渠旭阳\"},{\"businessId\":1002,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":3,\"resourceId\":3,\"resourceName\":\"103新疆哈密尚德\"},{\"businessId\":1045,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":4,\"resourceId\":4,\"resourceName\":\"139部山东临沂意能库\"},{\"businessId\":1028,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":5,\"resourceId\":5,\"resourceName\":\"127部金塔万晟库\"},{\"businessId\":1029,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":6,\"resourceId\":6,\"resourceName\":\"128部肃南裕固库\"},{\"businessId\":1010,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":7,\"resourceId\":7,\"resourceName\":\"107新疆焉耆新奥\"},{\"businessId\":1043,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":8,\"resourceId\":8,\"resourceName\":\"157河北国威行唐\"},{\"businessId\":1035,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":9,\"resourceId\":9,\"resourceName\":\"133西藏桑日尚德\"},{\"businessId\":1003,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":10,\"resourceId\":10,\"resourceName\":\"103新疆哈密恒鑫\"},{\"businessId\":1004,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":11,\"resourceId\":11,\"resourceName\":\"103新疆哈密浚鑫\"}]}', 'upms:resource:read');
INSERT INTO `upms_log` VALUES ('41', '用户列表', 'admin', '1537350104498', '12', 'http://upms.mcep.net.cn:1111', '/manage/user/list', 'http://upms.mcep.net.cn:1111/manage/user/list', 'GET', 'sort=user_id&order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":427,\"rows\":[{\"approverId\":254,\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"oname\":\"运维管理部\",\"organization\":9,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"\",\"realname\":\"管理员\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"ctime\":1517897450493,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15202578286\",\"realname\":\"杨文龙\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":10,\"username\":\"131001\"},{\"ctime\":1517898646056,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18630569125\",\"realname\":\"任平安\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":12,\"username\":\"130014\"},{\"ctime\":1517898690415,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18652223629\",\"realname\":\"狄二平\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":13,\"username\":\"137001\"},{\"ctime\":1517898762290,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15852097025\",\"realname\":\"王明\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":14,\"username\":\"157001\"},{\"ctime\":1517898874603,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15863609150\",\"realname\":\"张旭\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":15,\"username\":\"150003\"},{\"ctime\":1517898918165,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"13512578803\",\"realname\":\"王玲志\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":16,\"username\":\"015003\"},{\"approverId\":17,\"ctime\":1517899668431,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18505298060\",\"realname\":\"靳帅\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":17,\"username\":\"153001\"},{\"ctime\":1517899941868,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15509097972\",\"realname\":\"刘瑞清\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":18,\"username\":\"151001\"},{\"ctime\":1517900584509,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15162131932\",\"realname\":\"褚上海\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":19,\"username\":\"116002\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('42', '公共编码分类列表', 'admin', '1537350106864', '15', 'http://upms.mcep.net.cn:1111', '/manage/codeClass/list', 'http://upms.mcep.net.cn:1111/manage/codeClass/list', 'GET', 'offset=0&limit=10&order=asc&catName=', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":3,\"rows\":[{\"catName\":\"资源\",\"catNo\":\"resource\",\"id\":1},{\"catName\":\"计量单位\",\"catNo\":\"Unit\",\"id\":2},{\"catName\":\"1\",\"catNo\":\"1\",\"id\":3}]}', 'upms:codeclass:read');
INSERT INTO `upms_log` VALUES ('43', '修改用户', 'admin', '1537350202971', '10', 'http://upms.mcep.net.cn:1111', '/manage/user/update/10', 'http://upms.mcep.net.cn:1111/manage/user/update/10', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES ('44', '用户权限', 'admin', '1537350220140', '4', 'http://upms.mcep.net.cn:1111', '/manage/user/permission/10', 'http://upms.mcep.net.cn:1111/manage/user/permission/10', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/user/permission.jsp\"', 'upms:user:permission');
INSERT INTO `upms_log` VALUES ('45', '用户权限列表', 'admin', '1537350222751', '14', 'http://upms.mcep.net.cn:1111', '/manage/permission/user/10', 'http://upms.mcep.net.cn:1111/manage/permission/user/10', 'POST', '{type=[-1]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增系统\",\"id\":24,\"open\":true},{\"name\":\"编辑系统\",\"id\":25,\"open\":true},{\"name\":\"删除系统\",\"id\":26,\"open\":true}],\"name\":\"系统管理\",\"id\":2,\"open\":true},{\"children\":[{\"name\":\"新增组织\",\"id\":27,\"open\":true},{\"name\":\"编辑组织\",\"id\":28,\"open\":true},{\"name\":\"删除组织\",\"id\":29,\"open\":true}],\"name\":\"组织管理\",\"id\":3,\"open\":true},{\"children\":[{\"name\":\"新增岗位\",\"id\":109,\"open\":true},{\"name\":\"编辑岗位\",\"id\":110,\"open\":true},{\"name\":\"删除岗位\",\"id\":111,\"open\":true},{\"name\":\"岗位组织\",\"id\":125,\"open\":true},{\"name\":\"岗位资源权限\",\"id\":131,\"open\":true}],\"name\":\"岗位管理\",\"id\":108,\"open\":true}],\"name\":\"系统组织管理\",\"id\":1,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增用户\",\"id\":30,\"open\":true},{\"name\":\"编辑用户\",\"id\":31,\"open\":true},{\"name\":\"删除用户\",\"id\":32,\"open\":true},{\"name\":\"用户权限\",\"id\":51,\"open\":true},{\"name\":\"用户组织\",\"id\":48,\"open\":true},{\"name\":\"用户角色\",\"id\":50,\"open\":true},{\"name\":\"用户岗位\",\"id\":121,\"open\":true},{\"name\":\"用户资源权限\",\"id\":132,\"open\":true},{\"name\":\"重置密码\",\"id\":312,\"open\":true}],\"name\":\"用户管理\",\"id\":6,\"open\":true},{\"children\":[{\"name\":\"新增角色\",\"id\":33,\"open\":true},{\"name\":\"编辑角色\",\"id\":34,\"open\":true},{\"name\":\"删除角色\",\"id\":35,\"open\":true},{\"name\":\"角色权限\",\"id\":46,\"open\":true},{\"name\":\"角色组织\",\"id\":116,\"open\":true},{\"name\":\"角色资源权限\",\"id\":129,\"open\":true}],\"name\":\"角色管理\",\"id\":5,\"open\":true}],\"name\":\"角色用户管理\",\"id\":4,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增权限\",\"id\":36,\"open\":true},{\"name\":\"编辑权限\",\"id\":37,\"open\":true},{\"name\":\"删除权限\",\"id\":38,\"open\":true}],\"name\":\"权限管理\",\"id\":39,\"open\":true},{\"children\":[{\"name\":\"新增资源定义\",\"id\":113,\"open\":true},{\"name\":\"编辑资源定义\",\"id\":114,\"open\":true},{\"name\":\"删除资源定义\",\"id\":115,\"open\":true},{\"name\":\"资源用户\",\"id\":122,\"open\":true},{\"name\":\"资源岗位\",\"id\":127,\"open\":true},{\"name\":\"资源角色\",\"id\":128,\"open\":true}],\"name\":\"资源定义管理\",\"id\":112,\"open\":true},{\"children\":[{\"name\":\"新增数据权限\",\"id\":118,\"open\":true},{\"name\":\"修改数据权限\",\"id\":119,\"open\":true},{\"name\":\"删除数据权限\",\"id\":120,\"open\":true}],\"name\":\"数据权限管理\",\"id\":117,\"open\":true}],\"name\":\"权限资源管理\",\"id\":7,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"强制退出\",\"id\":53,\"open\":true}],\"name\":\"会话管理\",\"id\":14,\"open\":true},{\"children\":[{\"name\":\"删除权限\",\"id\":57,\"open\":true}],\"name\":\"日志记录\",\"id\":15,\"open\":true}],\"name\":\"其他数据管理\",\"id\":12,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增公共编码\",\"id\":156,\"open\":true},{\"name\":\"编辑公共编码\",\"id\":157,\"open\":true},{\"name\":\"删除公共编码\",\"id\":158,\"open\":true}],\"name\":\"公共编码管理\",\"id\":155,\"open\":true}],\"name\":\"公共编码管理\",\"id\":154,\"open\":true}],\"name\":\"权限管理系统\",\"id\":1,\"nocheck\":true,\"open\":true},{\"name\":\"运维管理系统\",\"id\":7,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"待办任务\",\"id\":107,\"open\":true}],\"name\":\"流程管理\",\"id\":106,\"open\":true}],\"name\":\"流程中心\",\"id\":8,\"nocheck\":true,\"open\":true},{\"name\":\"物资管理系统\",\"id\":9,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增测试\",\"id\":411,\"open\":true},{\"name\":\"测试修改\",\"id\":415,\"open\":true}],\"name\":\"测试菜单\",\"id\":410,\"open\":true}],\"name\":\"测试目录\",\"id\":409,\"open\":true}],\"name\":\"检测评估平台\",\"id\":10,\"nocheck\":true,\"open\":true},{\"name\":\"故障检修管理系统\",\"id\":11,\"nocheck\":true,\"open\":true}]', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('46', '用户权限列表', 'admin', '1537350222751', '24', 'http://upms.mcep.net.cn:1111', '/manage/permission/user/10', 'http://upms.mcep.net.cn:1111/manage/permission/user/10', 'POST', '{type=[1]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增系统\",\"id\":24,\"open\":true},{\"name\":\"编辑系统\",\"id\":25,\"open\":true},{\"name\":\"删除系统\",\"id\":26,\"open\":true}],\"name\":\"系统管理\",\"id\":2,\"open\":true},{\"children\":[{\"name\":\"新增组织\",\"id\":27,\"open\":true},{\"name\":\"编辑组织\",\"id\":28,\"open\":true},{\"name\":\"删除组织\",\"id\":29,\"open\":true}],\"name\":\"组织管理\",\"id\":3,\"open\":true},{\"children\":[{\"name\":\"新增岗位\",\"id\":109,\"open\":true},{\"name\":\"编辑岗位\",\"id\":110,\"open\":true},{\"name\":\"删除岗位\",\"id\":111,\"open\":true},{\"name\":\"岗位组织\",\"id\":125,\"open\":true},{\"name\":\"岗位资源权限\",\"id\":131,\"open\":true}],\"name\":\"岗位管理\",\"id\":108,\"open\":true}],\"name\":\"系统组织管理\",\"id\":1,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增用户\",\"id\":30,\"open\":true},{\"name\":\"编辑用户\",\"id\":31,\"open\":true},{\"name\":\"删除用户\",\"id\":32,\"open\":true},{\"name\":\"用户权限\",\"id\":51,\"open\":true},{\"name\":\"用户组织\",\"id\":48,\"open\":true},{\"name\":\"用户角色\",\"id\":50,\"open\":true},{\"name\":\"用户岗位\",\"id\":121,\"open\":true},{\"name\":\"用户资源权限\",\"id\":132,\"open\":true},{\"name\":\"重置密码\",\"id\":312,\"open\":true}],\"name\":\"用户管理\",\"id\":6,\"open\":true},{\"children\":[{\"name\":\"新增角色\",\"id\":33,\"open\":true},{\"name\":\"编辑角色\",\"id\":34,\"open\":true},{\"name\":\"删除角色\",\"id\":35,\"open\":true},{\"name\":\"角色权限\",\"id\":46,\"open\":true},{\"name\":\"角色组织\",\"id\":116,\"open\":true},{\"name\":\"角色资源权限\",\"id\":129,\"open\":true}],\"name\":\"角色管理\",\"id\":5,\"open\":true}],\"name\":\"角色用户管理\",\"id\":4,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增权限\",\"id\":36,\"open\":true},{\"name\":\"编辑权限\",\"id\":37,\"open\":true},{\"name\":\"删除权限\",\"id\":38,\"open\":true}],\"name\":\"权限管理\",\"id\":39,\"open\":true},{\"children\":[{\"name\":\"新增资源定义\",\"id\":113,\"open\":true},{\"name\":\"编辑资源定义\",\"id\":114,\"open\":true},{\"name\":\"删除资源定义\",\"id\":115,\"open\":true},{\"name\":\"资源用户\",\"id\":122,\"open\":true},{\"name\":\"资源岗位\",\"id\":127,\"open\":true},{\"name\":\"资源角色\",\"id\":128,\"open\":true}],\"name\":\"资源定义管理\",\"id\":112,\"open\":true},{\"children\":[{\"name\":\"新增数据权限\",\"id\":118,\"open\":true},{\"name\":\"修改数据权限\",\"id\":119,\"open\":true},{\"name\":\"删除数据权限\",\"id\":120,\"open\":true}],\"name\":\"数据权限管理\",\"id\":117,\"open\":true}],\"name\":\"权限资源管理\",\"id\":7,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"强制退出\",\"id\":53,\"open\":true}],\"name\":\"会话管理\",\"id\":14,\"open\":true},{\"children\":[{\"name\":\"删除权限\",\"id\":57,\"open\":true}],\"name\":\"日志记录\",\"id\":15,\"open\":true}],\"name\":\"其他数据管理\",\"id\":12,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增公共编码\",\"id\":156,\"open\":true},{\"name\":\"编辑公共编码\",\"id\":157,\"open\":true},{\"name\":\"删除公共编码\",\"id\":158,\"open\":true}],\"name\":\"公共编码管理\",\"id\":155,\"open\":true}],\"name\":\"公共编码管理\",\"id\":154,\"open\":true}],\"name\":\"权限管理系统\",\"id\":1,\"nocheck\":true,\"open\":true},{\"name\":\"运维管理系统\",\"id\":7,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"待办任务\",\"checked\":true,\"id\":107,\"open\":true}],\"name\":\"流程管理\",\"checked\":true,\"id\":106,\"open\":true}],\"name\":\"流程中心\",\"id\":8,\"nocheck\":true,\"open\":true},{\"name\":\"物资管理系统\",\"id\":9,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增测试\",\"id\":411,\"open\":true},{\"name\":\"测试修改\",\"id\":415,\"open\":true}],\"name\":\"测试菜单\",\"id\":410,\"open\":true}],\"name\":\"测试目录\",\"id\":409,\"open\":true}],\"name\":\"检测评估平台\",\"id\":10,\"nocheck\":true,\"open\":true},{\"name\":\"故障检修管理系统\",\"id\":11,\"nocheck\":true,\"open\":true}]', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('47', '用户权限', 'admin', '1537350242668', '45', 'http://upms.mcep.net.cn:1111', '/manage/user/permission/10', 'http://upms.mcep.net.cn:1111/manage/user/permission/10', 'POST', '{permissionUserId=[10],datas=[[{\"id\":411,\"checked\":true,\"type\":1},{\"id\":415,\"checked\":true,\"type\":1}]]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":2,\"message\":\"success\"}', 'upms:user:permission');
INSERT INTO `upms_log` VALUES ('48', '用户权限', 'admin', '1537350244645', '27', 'http://upms.mcep.net.cn:1111', '/manage/user/permission/10', 'http://upms.mcep.net.cn:1111/manage/user/permission/10', 'POST', '{permissionUserId=[10],datas=[[{\"id\":411,\"checked\":true,\"type\":1},{\"id\":415,\"checked\":true,\"type\":1}]]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":2,\"message\":\"success\"}', 'upms:user:permission');
INSERT INTO `upms_log` VALUES ('49', '用户列表', 'admin', '1537350245141', '8', 'http://upms.mcep.net.cn:1111', '/manage/user/list', 'http://upms.mcep.net.cn:1111/manage/user/list', 'GET', 'sort=user_id&order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":427,\"rows\":[{\"approverId\":254,\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"oname\":\"运维管理部\",\"organization\":9,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"\",\"realname\":\"管理员\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"ctime\":1517897450493,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15202578286\",\"realname\":\"杨文龙\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":10,\"username\":\"131001\"},{\"ctime\":1517898646056,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18630569125\",\"realname\":\"任平安\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":12,\"username\":\"130014\"},{\"ctime\":1517898690415,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18652223629\",\"realname\":\"狄二平\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":13,\"username\":\"137001\"},{\"ctime\":1517898762290,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15852097025\",\"realname\":\"王明\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":14,\"username\":\"157001\"},{\"ctime\":1517898874603,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15863609150\",\"realname\":\"张旭\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":15,\"username\":\"150003\"},{\"ctime\":1517898918165,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"13512578803\",\"realname\":\"王玲志\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":16,\"username\":\"015003\"},{\"approverId\":17,\"ctime\":1517899668431,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18505298060\",\"realname\":\"靳帅\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":17,\"username\":\"153001\"},{\"ctime\":1517899941868,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15509097972\",\"realname\":\"刘瑞清\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":18,\"username\":\"151001\"},{\"ctime\":1517900584509,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15162131932\",\"realname\":\"褚上海\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":19,\"username\":\"116002\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('50', '用户列表', 'admin', '1537350247222', '9', 'http://upms.mcep.net.cn:1111', '/manage/user/list', 'http://upms.mcep.net.cn:1111/manage/user/list', 'GET', 'sort=user_id&order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":427,\"rows\":[{\"approverId\":254,\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"oname\":\"运维管理部\",\"organization\":9,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"\",\"realname\":\"管理员\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"ctime\":1517897450493,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15202578286\",\"realname\":\"杨文龙\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":10,\"username\":\"131001\"},{\"ctime\":1517898646056,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18630569125\",\"realname\":\"任平安\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":12,\"username\":\"130014\"},{\"ctime\":1517898690415,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18652223629\",\"realname\":\"狄二平\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":13,\"username\":\"137001\"},{\"ctime\":1517898762290,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15852097025\",\"realname\":\"王明\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":14,\"username\":\"157001\"},{\"ctime\":1517898874603,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15863609150\",\"realname\":\"张旭\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":15,\"username\":\"150003\"},{\"ctime\":1517898918165,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"13512578803\",\"realname\":\"王玲志\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":16,\"username\":\"015003\"},{\"approverId\":17,\"ctime\":1517899668431,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18505298060\",\"realname\":\"靳帅\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":17,\"username\":\"153001\"},{\"ctime\":1517899941868,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15509097972\",\"realname\":\"刘瑞清\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":18,\"username\":\"151001\"},{\"ctime\":1517900584509,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15162131932\",\"realname\":\"褚上海\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":19,\"username\":\"116002\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('51', '用户权限', 'admin', '1537350254027', '3', 'http://upms.mcep.net.cn:1111', '/manage/user/permission/10', 'http://upms.mcep.net.cn:1111/manage/user/permission/10', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/user/permission.jsp\"', 'upms:user:permission');
INSERT INTO `upms_log` VALUES ('52', '用户权限列表', 'admin', '1537350256556', '7', 'http://upms.mcep.net.cn:1111', '/manage/permission/user/10', 'http://upms.mcep.net.cn:1111/manage/permission/user/10', 'POST', '{type=[1]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增系统\",\"id\":24,\"open\":true},{\"name\":\"编辑系统\",\"id\":25,\"open\":true},{\"name\":\"删除系统\",\"id\":26,\"open\":true}],\"name\":\"系统管理\",\"id\":2,\"open\":true},{\"children\":[{\"name\":\"新增组织\",\"id\":27,\"open\":true},{\"name\":\"编辑组织\",\"id\":28,\"open\":true},{\"name\":\"删除组织\",\"id\":29,\"open\":true}],\"name\":\"组织管理\",\"id\":3,\"open\":true},{\"children\":[{\"name\":\"新增岗位\",\"id\":109,\"open\":true},{\"name\":\"编辑岗位\",\"id\":110,\"open\":true},{\"name\":\"删除岗位\",\"id\":111,\"open\":true},{\"name\":\"岗位组织\",\"id\":125,\"open\":true},{\"name\":\"岗位资源权限\",\"id\":131,\"open\":true}],\"name\":\"岗位管理\",\"id\":108,\"open\":true}],\"name\":\"系统组织管理\",\"id\":1,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增用户\",\"id\":30,\"open\":true},{\"name\":\"编辑用户\",\"id\":31,\"open\":true},{\"name\":\"删除用户\",\"id\":32,\"open\":true},{\"name\":\"用户权限\",\"id\":51,\"open\":true},{\"name\":\"用户组织\",\"id\":48,\"open\":true},{\"name\":\"用户角色\",\"id\":50,\"open\":true},{\"name\":\"用户岗位\",\"id\":121,\"open\":true},{\"name\":\"用户资源权限\",\"id\":132,\"open\":true},{\"name\":\"重置密码\",\"id\":312,\"open\":true}],\"name\":\"用户管理\",\"id\":6,\"open\":true},{\"children\":[{\"name\":\"新增角色\",\"id\":33,\"open\":true},{\"name\":\"编辑角色\",\"id\":34,\"open\":true},{\"name\":\"删除角色\",\"id\":35,\"open\":true},{\"name\":\"角色权限\",\"id\":46,\"open\":true},{\"name\":\"角色组织\",\"id\":116,\"open\":true},{\"name\":\"角色资源权限\",\"id\":129,\"open\":true}],\"name\":\"角色管理\",\"id\":5,\"open\":true}],\"name\":\"角色用户管理\",\"id\":4,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增权限\",\"id\":36,\"open\":true},{\"name\":\"编辑权限\",\"id\":37,\"open\":true},{\"name\":\"删除权限\",\"id\":38,\"open\":true}],\"name\":\"权限管理\",\"id\":39,\"open\":true},{\"children\":[{\"name\":\"新增资源定义\",\"id\":113,\"open\":true},{\"name\":\"编辑资源定义\",\"id\":114,\"open\":true},{\"name\":\"删除资源定义\",\"id\":115,\"open\":true},{\"name\":\"资源用户\",\"id\":122,\"open\":true},{\"name\":\"资源岗位\",\"id\":127,\"open\":true},{\"name\":\"资源角色\",\"id\":128,\"open\":true}],\"name\":\"资源定义管理\",\"id\":112,\"open\":true},{\"children\":[{\"name\":\"新增数据权限\",\"id\":118,\"open\":true},{\"name\":\"修改数据权限\",\"id\":119,\"open\":true},{\"name\":\"删除数据权限\",\"id\":120,\"open\":true}],\"name\":\"数据权限管理\",\"id\":117,\"open\":true}],\"name\":\"权限资源管理\",\"id\":7,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"强制退出\",\"id\":53,\"open\":true}],\"name\":\"会话管理\",\"id\":14,\"open\":true},{\"children\":[{\"name\":\"删除权限\",\"id\":57,\"open\":true}],\"name\":\"日志记录\",\"id\":15,\"open\":true}],\"name\":\"其他数据管理\",\"id\":12,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增公共编码\",\"id\":156,\"open\":true},{\"name\":\"编辑公共编码\",\"id\":157,\"open\":true},{\"name\":\"删除公共编码\",\"id\":158,\"open\":true}],\"name\":\"公共编码管理\",\"id\":155,\"open\":true}],\"name\":\"公共编码管理\",\"id\":154,\"open\":true}],\"name\":\"权限管理系统\",\"id\":1,\"nocheck\":true,\"open\":true},{\"name\":\"运维管理系统\",\"id\":7,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"待办任务\",\"checked\":true,\"id\":107,\"open\":true}],\"name\":\"流程管理\",\"checked\":true,\"id\":106,\"open\":true}],\"name\":\"流程中心\",\"id\":8,\"nocheck\":true,\"open\":true},{\"name\":\"物资管理系统\",\"id\":9,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增测试\",\"checked\":true,\"id\":411,\"open\":true},{\"name\":\"测试修改\",\"checked\":true,\"id\":415,\"open\":true}],\"name\":\"测试菜单\",\"id\":410,\"open\":true}],\"name\":\"测试目录\",\"id\":409,\"open\":true}],\"name\":\"检测评估平台\",\"id\":10,\"nocheck\":true,\"open\":true},{\"name\":\"故障检修管理系统\",\"id\":11,\"nocheck\":true,\"open\":true}]', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('53', '用户权限列表', 'admin', '1537350256556', '12', 'http://upms.mcep.net.cn:1111', '/manage/permission/user/10', 'http://upms.mcep.net.cn:1111/manage/permission/user/10', 'POST', '{type=[-1]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增系统\",\"id\":24,\"open\":true},{\"name\":\"编辑系统\",\"id\":25,\"open\":true},{\"name\":\"删除系统\",\"id\":26,\"open\":true}],\"name\":\"系统管理\",\"id\":2,\"open\":true},{\"children\":[{\"name\":\"新增组织\",\"id\":27,\"open\":true},{\"name\":\"编辑组织\",\"id\":28,\"open\":true},{\"name\":\"删除组织\",\"id\":29,\"open\":true}],\"name\":\"组织管理\",\"id\":3,\"open\":true},{\"children\":[{\"name\":\"新增岗位\",\"id\":109,\"open\":true},{\"name\":\"编辑岗位\",\"id\":110,\"open\":true},{\"name\":\"删除岗位\",\"id\":111,\"open\":true},{\"name\":\"岗位组织\",\"id\":125,\"open\":true},{\"name\":\"岗位资源权限\",\"id\":131,\"open\":true}],\"name\":\"岗位管理\",\"id\":108,\"open\":true}],\"name\":\"系统组织管理\",\"id\":1,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增用户\",\"id\":30,\"open\":true},{\"name\":\"编辑用户\",\"id\":31,\"open\":true},{\"name\":\"删除用户\",\"id\":32,\"open\":true},{\"name\":\"用户权限\",\"id\":51,\"open\":true},{\"name\":\"用户组织\",\"id\":48,\"open\":true},{\"name\":\"用户角色\",\"id\":50,\"open\":true},{\"name\":\"用户岗位\",\"id\":121,\"open\":true},{\"name\":\"用户资源权限\",\"id\":132,\"open\":true},{\"name\":\"重置密码\",\"id\":312,\"open\":true}],\"name\":\"用户管理\",\"id\":6,\"open\":true},{\"children\":[{\"name\":\"新增角色\",\"id\":33,\"open\":true},{\"name\":\"编辑角色\",\"id\":34,\"open\":true},{\"name\":\"删除角色\",\"id\":35,\"open\":true},{\"name\":\"角色权限\",\"id\":46,\"open\":true},{\"name\":\"角色组织\",\"id\":116,\"open\":true},{\"name\":\"角色资源权限\",\"id\":129,\"open\":true}],\"name\":\"角色管理\",\"id\":5,\"open\":true}],\"name\":\"角色用户管理\",\"id\":4,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增权限\",\"id\":36,\"open\":true},{\"name\":\"编辑权限\",\"id\":37,\"open\":true},{\"name\":\"删除权限\",\"id\":38,\"open\":true}],\"name\":\"权限管理\",\"id\":39,\"open\":true},{\"children\":[{\"name\":\"新增资源定义\",\"id\":113,\"open\":true},{\"name\":\"编辑资源定义\",\"id\":114,\"open\":true},{\"name\":\"删除资源定义\",\"id\":115,\"open\":true},{\"name\":\"资源用户\",\"id\":122,\"open\":true},{\"name\":\"资源岗位\",\"id\":127,\"open\":true},{\"name\":\"资源角色\",\"id\":128,\"open\":true}],\"name\":\"资源定义管理\",\"id\":112,\"open\":true},{\"children\":[{\"name\":\"新增数据权限\",\"id\":118,\"open\":true},{\"name\":\"修改数据权限\",\"id\":119,\"open\":true},{\"name\":\"删除数据权限\",\"id\":120,\"open\":true}],\"name\":\"数据权限管理\",\"id\":117,\"open\":true}],\"name\":\"权限资源管理\",\"id\":7,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"强制退出\",\"id\":53,\"open\":true}],\"name\":\"会话管理\",\"id\":14,\"open\":true},{\"children\":[{\"name\":\"删除权限\",\"id\":57,\"open\":true}],\"name\":\"日志记录\",\"id\":15,\"open\":true}],\"name\":\"其他数据管理\",\"id\":12,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"新增公共编码\",\"id\":156,\"open\":true},{\"name\":\"编辑公共编码\",\"id\":157,\"open\":true},{\"name\":\"删除公共编码\",\"id\":158,\"open\":true}],\"name\":\"公共编码管理\",\"id\":155,\"open\":true}],\"name\":\"公共编码管理\",\"id\":154,\"open\":true}],\"name\":\"权限管理系统\",\"id\":1,\"nocheck\":true,\"open\":true},{\"name\":\"运维管理系统\",\"id\":7,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"name\":\"待办任务\",\"id\":107,\"open\":true}],\"name\":\"流程管理\",\"id\":106,\"open\":true}],\"name\":\"流程中心\",\"id\":8,\"nocheck\":true,\"open\":true},{\"name\":\"物资管理系统\",\"id\":9,\"nocheck\":true,\"open\":true},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"新增测试\",\"id\":411,\"open\":true},{\"name\":\"测试修改\",\"id\":415,\"open\":true}],\"name\":\"测试菜单\",\"id\":410,\"open\":true}],\"name\":\"测试目录\",\"id\":409,\"open\":true}],\"name\":\"检测评估平台\",\"id\":10,\"nocheck\":true,\"open\":true},{\"name\":\"故障检修管理系统\",\"id\":11,\"nocheck\":true,\"open\":true}]', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('54', '登录', '', '1537511007815', '9', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', null);
INSERT INTO `upms_log` VALUES ('55', '登录', '', '1537511011604', '4', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10102,\"data\":\"密码不能为空！\",\"message\":\"Password cannot be empty\"}', null);
INSERT INTO `upms_log` VALUES ('56', '登录', 'admin', '1537511018304', '126', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[111111],rememberMe=[true],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.mcep.net.cn:1111\",\"message\":\"success\"}', null);
INSERT INTO `upms_log` VALUES ('57', '后台首页', 'admin', '1537511018510', '2380', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('58', '认证中心首页', 'admin', '1537511034084', '5', 'http://upms.mcep.net.cn:1111', '/sso/index', 'http://upms.mcep.net.cn:1111/sso/index', 'GET', 'appid=mcep-ted-admin&backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:/sso/login?backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex\"', null);
INSERT INTO `upms_log` VALUES ('59', '登录', 'admin', '1537511034138', '0', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', 'backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:http://ted.mcep.net.cn:6688/manage/demo/index?upms_code=ea0ef970-76d9-43bb-a553-58455fd363ad&upms_username=admin&upms_session_id=f420df13-d8fb-4f31-a28c-ab90f56da5c2\"', null);
INSERT INTO `upms_log` VALUES ('60', '校验code', '', '1537511034538', '0', 'http://upms.mcep.net.cn:1111', '/sso/code', 'http://upms.mcep.net.cn:1111/sso/code', 'POST', '{code=[ea0ef970-76d9-43bb-a553-58455fd363ad]}', 'Apache-HttpClient/4.5.2 (Java/1.8.0_91)', '127.0.0.1', '{\"code\":1,\"data\":\"ea0ef970-76d9-43bb-a553-58455fd363ad\",\"message\":\"success\"}', null);
INSERT INTO `upms_log` VALUES ('61', '测试信息首页', 'admin', '1537511037061', '10', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', 'upms_code=ea0ef970-76d9-43bb-a553-58455fd363ad&upms_username=admin&upms_session_id=f420df13-d8fb-4f31-a28c-ab90f56da5c2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('62', '测试信息首页', 'admin', '1537511048268', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', 'upms_session_id=f420df13-d8fb-4f31-a28c-ab90f56da5c2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('63', '业主信息列表', 'admin', '1537511055390', '208', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"}],\"total\":4}', null);
INSERT INTO `upms_log` VALUES ('64', '后台首页', 'admin', '1537513160155', '2307', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('65', '测试信息首页', 'admin', '1537513240398', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('66', '业主信息列表', 'admin', '1537513247662', '17', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"}],\"total\":4}', null);
INSERT INTO `upms_log` VALUES ('67', '业主信息列表', 'admin', '1537513424252', '10', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"}],\"total\":4}', null);
INSERT INTO `upms_log` VALUES ('68', '业主信息列表', 'admin', '1537514036267', '39', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc&search=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"}],\"total\":4}', null);
INSERT INTO `upms_log` VALUES ('69', '业主信息列表', 'admin', '1537514037491', '10', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc&search=10101', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"}],\"total\":4}', null);
INSERT INTO `upms_log` VALUES ('70', '测试信息首页', 'admin', '1537514156899', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('71', '业主信息列表', 'admin', '1537514164090', '11', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"}],\"total\":4}', null);
INSERT INTO `upms_log` VALUES ('72', '新增测试信息', 'admin', '1537514302175', '1', 'http://ted.mcep.net.cn:6688', '/manage/demo/create', 'http://ted.mcep.net.cn:6688/manage/demo/create', 'GET', 'pid=http___ted_mcep_net_cn_6688_manage_demo_index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/create.html\"', 'ted:demo:create');
INSERT INTO `upms_log` VALUES ('73', '用户列表', 'admin', '1537514320562', '49', 'http://ted.mcep.net.cn:6688', '/common/user/select', 'http://ted.mcep.net.cn:6688/common/user/select', 'GET', 'sort=user_id&order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":427,\"rows\":[{\"approverId\":254,\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"oname\":\"运维管理部\",\"organization\":9,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"\",\"realname\":\"管理员\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"ctime\":1517897450493,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15202578286\",\"realname\":\"杨文龙\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":10,\"username\":\"131001\"},{\"ctime\":1517898646056,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18630569125\",\"realname\":\"任平安\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":12,\"username\":\"130014\"},{\"ctime\":1517898690415,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18652223629\",\"realname\":\"狄二平\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":13,\"username\":\"137001\"},{\"ctime\":1517898762290,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15852097025\",\"realname\":\"王明\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":14,\"username\":\"157001\"},{\"ctime\":1517898874603,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15863609150\",\"realname\":\"张旭\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":15,\"username\":\"150003\"},{\"ctime\":1517898918165,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"13512578803\",\"realname\":\"王玲志\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":16,\"username\":\"015003\"},{\"approverId\":17,\"ctime\":1517899668431,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18505298060\",\"realname\":\"靳帅\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":17,\"username\":\"153001\"},{\"ctime\":1517899941868,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15509097972\",\"realname\":\"刘瑞清\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":18,\"username\":\"151001\"},{\"ctime\":1517900584509,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15162131932\",\"realname\":\"褚上海\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":19,\"username\":\"116002\"}]}', null);
INSERT INTO `upms_log` VALUES ('74', '用户列表', 'admin', '1537514337197', '12', 'http://ted.mcep.net.cn:6688', '/common/user/select', 'http://ted.mcep.net.cn:6688/common/user/select', 'GET', 'sort=user_id&order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":427,\"rows\":[{\"approverId\":254,\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"oname\":\"运维管理部\",\"organization\":9,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"\",\"realname\":\"管理员\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"ctime\":1517897450493,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15202578286\",\"realname\":\"杨文龙\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":10,\"username\":\"131001\"},{\"ctime\":1517898646056,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18630569125\",\"realname\":\"任平安\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":12,\"username\":\"130014\"},{\"ctime\":1517898690415,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18652223629\",\"realname\":\"狄二平\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":13,\"username\":\"137001\"},{\"ctime\":1517898762290,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15852097025\",\"realname\":\"王明\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":14,\"username\":\"157001\"},{\"ctime\":1517898874603,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15863609150\",\"realname\":\"张旭\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":15,\"username\":\"150003\"},{\"ctime\":1517898918165,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"13512578803\",\"realname\":\"王玲志\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":16,\"username\":\"015003\"},{\"approverId\":17,\"ctime\":1517899668431,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"18505298060\",\"realname\":\"靳帅\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":17,\"username\":\"153001\"},{\"ctime\":1517899941868,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15509097972\",\"realname\":\"刘瑞清\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":18,\"username\":\"151001\"},{\"ctime\":1517900584509,\"email\":\"\",\"fixPhone\":\"\",\"jobs\":0,\"locked\":0,\"organization\":0,\"password\":\"EDAFD38837FFF8DFA047452E47BD535E\",\"phone\":\"15162131932\",\"realname\":\"褚上海\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":19,\"username\":\"116002\"}]}', null);
INSERT INTO `upms_log` VALUES ('75', '新增测试信息', 'admin', '1537514402672', '148', 'http://ted.mcep.net.cn:6688', '/manage/demo/create', 'http://ted.mcep.net.cn:6688/manage/demo/create', 'POST', '{creditCode=[12324564123254],registeredCapital=[5000],contactId=[17],contactName=[靳帅],memo=[现在擦掉],proprietorNature=[3],proprietorCode=[10101],proprietorName=[航天恒星503所],representative=[陆阳]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":1,\"message\":\"success\"}', 'ted:demo:create');
INSERT INTO `upms_log` VALUES ('76', '业主信息列表', 'admin', '1537514405433', '9', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"},{\"contactId\":17,\"creditCode\":\"12324564123254\",\"memo\":\"现在擦掉\",\"proprietorCode\":\"10101\",\"proprietorId\":5,\"proprietorName\":\"航天恒星503所\",\"proprietorNature\":3,\"registeredCapital\":5000.0,\"representative\":\"陆阳\"}],\"total\":5}', null);
INSERT INTO `upms_log` VALUES ('77', '测试信息首页', 'admin', '1537514405542', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('78', '业主信息列表', 'admin', '1537514412678', '15', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"},{\"contactId\":17,\"creditCode\":\"12324564123254\",\"memo\":\"现在擦掉\",\"proprietorCode\":\"10101\",\"proprietorId\":5,\"proprietorName\":\"航天恒星503所\",\"proprietorNature\":3,\"registeredCapital\":5000.0,\"representative\":\"陆阳\"}],\"total\":5}', null);
INSERT INTO `upms_log` VALUES ('79', '修改', 'admin', '1537514430993', '4', 'http://ted.mcep.net.cn:6688', '/manage/demo/update/5', 'http://ted.mcep.net.cn:6688/manage/demo/update/5', 'GET', 'pid=http___ted_mcep_net_cn_6688_manage_demo_index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/update.html\"', 'ted:demo:update');
INSERT INTO `upms_log` VALUES ('80', '后台首页', 'admin', '1537515374524', '2337', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('81', '登录', '', '1537515390226', '0', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', null);
INSERT INTO `upms_log` VALUES ('82', '登录', '', '1537515399132', '8', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[11111],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":10104,\"data\":\"密码错误！\",\"message\":\"Password error\"}', null);
INSERT INTO `upms_log` VALUES ('83', '登录', 'admin', '1537515410316', '15', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'POST', '{password=[111111],rememberMe=[false],backurl=[],username=[admin]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.mcep.net.cn:1111\",\"message\":\"success\"}', null);
INSERT INTO `upms_log` VALUES ('84', '后台首页', 'admin', '1537515410585', '2298', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('85', '认证中心首页', 'admin', '1537515577034', '7', 'http://upms.mcep.net.cn:1111', '/sso/index', 'http://upms.mcep.net.cn:1111/sso/index', 'GET', 'appid=mcep-ted-admin&backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:/sso/login?backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex\"', null);
INSERT INTO `upms_log` VALUES ('86', '登录', 'admin', '1537515577144', '1', 'http://upms.mcep.net.cn:1111', '/sso/login', 'http://upms.mcep.net.cn:1111/sso/login', 'GET', 'backurl=http%3A%2F%2Fted.mcep.net.cn%3A6688%2Fmanage%2Fdemo%2Findex', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"redirect:http://ted.mcep.net.cn:6688/manage/demo/index?upms_code=5e90a348-c20d-4468-854f-c2178c86f5c3&upms_username=admin&upms_session_id=a554388b-a746-438d-ab18-8100a4b568a8\"', null);
INSERT INTO `upms_log` VALUES ('87', '校验code', '', '1537515577217', '0', 'http://upms.mcep.net.cn:1111', '/sso/code', 'http://upms.mcep.net.cn:1111/sso/code', 'POST', '{code=[5e90a348-c20d-4468-854f-c2178c86f5c3]}', 'Apache-HttpClient/4.5.2 (Java/1.8.0_91)', '127.0.0.1', '{\"code\":1,\"data\":\"5e90a348-c20d-4468-854f-c2178c86f5c3\",\"message\":\"success\"}', null);
INSERT INTO `upms_log` VALUES ('88', '测试信息首页', 'admin', '1537515579531', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', 'upms_code=5e90a348-c20d-4468-854f-c2178c86f5c3&upms_username=admin&upms_session_id=a554388b-a746-438d-ab18-8100a4b568a8', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('89', '测试信息首页', 'admin', '1537515588888', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', 'upms_session_id=a554388b-a746-438d-ab18-8100a4b568a8', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('90', '业主信息列表', 'admin', '1537515596315', '10', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"},{\"contactId\":17,\"creditCode\":\"12324564123254\",\"memo\":\"现在擦掉\",\"proprietorCode\":\"10101\",\"proprietorId\":5,\"proprietorName\":\"航天恒星503所\",\"proprietorNature\":3,\"registeredCapital\":5000.0,\"representative\":\"陆阳\"}],\"total\":5}', null);
INSERT INTO `upms_log` VALUES ('91', '系统首页', 'admin', '1537516470604', '14', 'http://upms.mcep.net.cn:1111', '/manage/system/index', 'http://upms.mcep.net.cn:1111/manage/system/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('92', '系统列表', 'admin', '1537516480805', '7', 'http://upms.mcep.net.cn:1111', '/manage/system/list', 'http://upms.mcep.net.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":6,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.mcep.net.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"mcep-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29a176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://upms.mcep.net.cn:3333\",\"ctime\":1511240304769,\"description\":\"运维系统\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"mcep-poms-admin\",\"orders\":1511240304769,\"status\":1,\"systemId\":7,\"theme\":\"#0c63a6\",\"title\":\"运维管理系统\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:8888\",\"ctime\":1514969005721,\"description\":\"个人代办任务处理\",\"icon\":\"zmdi zmdi-account\",\"name\":\"mcep-flow-admin\",\"orders\":1514969005721,\"status\":1,\"systemId\":8,\"theme\":\"#c2b869\",\"title\":\"流程中心\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:5555\",\"ctime\":1519968853076,\"description\":\"物资管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"mcep-mms-admin\",\"orders\":1519968853076,\"status\":1,\"systemId\":9,\"theme\":\"#7e9796\",\"title\":\"物资管理系统\"},{\"banner\":\"\",\"basepath\":\"http://ted.mcep.net.cn:6688\",\"ctime\":1537175192118,\"description\":\"检测评估平台\",\"icon\":\"zmdi zmdi-bug\",\"name\":\"mcep-ted-admin\",\"orders\":1537175192118,\"status\":1,\"systemId\":10,\"theme\":\"#bae11e\",\"title\":\"检测评估平台\"},{\"banner\":\"\",\"basepath\":\"http://uts.mcep.net.cn:4444\",\"ctime\":1537256713529,\"description\":\"\",\"icon\":\"zmdi zmdi-wrench\",\"name\":\"mcep-uts-admin\",\"orders\":1537256713529,\"status\":1,\"systemId\":11,\"theme\":\"#4f4f4f\",\"title\":\"故障检修管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('93', '修改系统', 'admin', '1537516516975', '3', 'http://upms.mcep.net.cn:1111', '/manage/system/update/10', 'http://upms.mcep.net.cn:1111/manage/system/update/10', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/system/update.jsp\"', 'upms:system:update');
INSERT INTO `upms_log` VALUES ('94', '修改系统', 'admin', '1537516535197', '103', 'http://upms.mcep.net.cn:1111', '/manage/system/update/10', 'http://upms.mcep.net.cn:1111/manage/system/update/10', 'POST', '{basepath=[http://ted.mcep.net.cn:6688],icon=[zmdi zmdi-bug],name=[mcep-ted-admin],banner=[],description=[检测评估平台],theme=[#000000],title=[检测评估平台],status=[1]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":1,\"message\":\"success\"}', 'upms:system:update');
INSERT INTO `upms_log` VALUES ('95', '系统列表', 'admin', '1537516537646', '6', 'http://upms.mcep.net.cn:1111', '/manage/system/list', 'http://upms.mcep.net.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":6,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.mcep.net.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"mcep-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29a176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://upms.mcep.net.cn:3333\",\"ctime\":1511240304769,\"description\":\"运维系统\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"mcep-poms-admin\",\"orders\":1511240304769,\"status\":1,\"systemId\":7,\"theme\":\"#0c63a6\",\"title\":\"运维管理系统\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:8888\",\"ctime\":1514969005721,\"description\":\"个人代办任务处理\",\"icon\":\"zmdi zmdi-account\",\"name\":\"mcep-flow-admin\",\"orders\":1514969005721,\"status\":1,\"systemId\":8,\"theme\":\"#c2b869\",\"title\":\"流程中心\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:5555\",\"ctime\":1519968853076,\"description\":\"物资管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"mcep-mms-admin\",\"orders\":1519968853076,\"status\":1,\"systemId\":9,\"theme\":\"#7e9796\",\"title\":\"物资管理系统\"},{\"banner\":\"\",\"basepath\":\"http://ted.mcep.net.cn:6688\",\"ctime\":1537175192118,\"description\":\"检测评估平台\",\"icon\":\"zmdi zmdi-bug\",\"name\":\"mcep-ted-admin\",\"orders\":1537175192118,\"status\":1,\"systemId\":10,\"theme\":\"#000000\",\"title\":\"检测评估平台\"},{\"banner\":\"\",\"basepath\":\"http://uts.mcep.net.cn:4444\",\"ctime\":1537256713529,\"description\":\"\",\"icon\":\"zmdi zmdi-wrench\",\"name\":\"mcep-uts-admin\",\"orders\":1537256713529,\"status\":1,\"systemId\":11,\"theme\":\"#4f4f4f\",\"title\":\"故障检修管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('96', '后台首页', 'admin', '1537516538401', '2308', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('97', '修改系统', 'admin', '1537516565582', '2', 'http://upms.mcep.net.cn:1111', '/manage/system/update/10', 'http://upms.mcep.net.cn:1111/manage/system/update/10', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/system/update.jsp\"', 'upms:system:update');
INSERT INTO `upms_log` VALUES ('98', '修改系统', 'admin', '1537516582818', '18', 'http://upms.mcep.net.cn:1111', '/manage/system/update/10', 'http://upms.mcep.net.cn:1111/manage/system/update/10', 'POST', '{basepath=[http://ted.mcep.net.cn:6688],icon=[zmdi zmdi-bug],name=[mcep-ted-admin],banner=[],description=[检测评估平台],theme=[#02def0],title=[检测评估平台],status=[1]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":1,\"message\":\"success\"}', 'upms:system:update');
INSERT INTO `upms_log` VALUES ('99', '系统列表', 'admin', '1537516585170', '9', 'http://upms.mcep.net.cn:1111', '/manage/system/list', 'http://upms.mcep.net.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":6,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.mcep.net.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"mcep-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29a176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://upms.mcep.net.cn:3333\",\"ctime\":1511240304769,\"description\":\"运维系统\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"mcep-poms-admin\",\"orders\":1511240304769,\"status\":1,\"systemId\":7,\"theme\":\"#0c63a6\",\"title\":\"运维管理系统\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:8888\",\"ctime\":1514969005721,\"description\":\"个人代办任务处理\",\"icon\":\"zmdi zmdi-account\",\"name\":\"mcep-flow-admin\",\"orders\":1514969005721,\"status\":1,\"systemId\":8,\"theme\":\"#c2b869\",\"title\":\"流程中心\"},{\"banner\":\"\",\"basepath\":\"http://upms.mcep.net.cn:5555\",\"ctime\":1519968853076,\"description\":\"物资管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"mcep-mms-admin\",\"orders\":1519968853076,\"status\":1,\"systemId\":9,\"theme\":\"#7e9796\",\"title\":\"物资管理系统\"},{\"banner\":\"\",\"basepath\":\"http://ted.mcep.net.cn:6688\",\"ctime\":1537175192118,\"description\":\"检测评估平台\",\"icon\":\"zmdi zmdi-bug\",\"name\":\"mcep-ted-admin\",\"orders\":1537175192118,\"status\":1,\"systemId\":10,\"theme\":\"#02def0\",\"title\":\"检测评估平台\"},{\"banner\":\"\",\"basepath\":\"http://uts.mcep.net.cn:4444\",\"ctime\":1537256713529,\"description\":\"\",\"icon\":\"zmdi zmdi-wrench\",\"name\":\"mcep-uts-admin\",\"orders\":1537256713529,\"status\":1,\"systemId\":11,\"theme\":\"#4f4f4f\",\"title\":\"故障检修管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('100', '后台首页', 'admin', '1537516585975', '2303', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('101', '数据权限首页', 'admin', '1537516597957', '12', 'http://upms.mcep.net.cn:1111', '/manage/dataPermission/index', 'http://upms.mcep.net.cn:1111/manage/dataPermission/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/dataPermission/index.jsp\"', 'upms:dataPermission:read');
INSERT INTO `upms_log` VALUES ('102', '数据权限列表', 'admin', '1537516607257', '16', 'http://upms.mcep.net.cn:1111', '/manage/dataPermission/list', 'http://upms.mcep.net.cn:1111/manage/dataPermission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"authorizationType\":\"1\",\"id\":1,\"name\":\"系统组织管理\",\"permissionId\":1,\"resourceId\":1},{\"authorizationType\":\"4\",\"id\":3,\"name\":\"角色用户管理\",\"permissionId\":4,\"resourceId\":4,\"resourceName\":\"139部山东临沂意能库\"},{\"authorizationType\":\"23\",\"id\":4,\"name\":\"新增类目\",\"permissionId\":60,\"resourceId\":1},{\"authorizationType\":\"22\",\"id\":5,\"name\":\"角色用户管理\",\"permissionId\":4,\"resourceId\":3,\"resourceName\":\"103新疆哈密尚德\"},{\"authorizationType\":\"哦屁哦\",\"id\":6,\"name\":\"系统管理\",\"permissionId\":2,\"resourceId\":3,\"resourceName\":\"103新疆哈密尚德\"}]}', 'upms:dataPermission:read');
INSERT INTO `upms_log` VALUES ('103', '资源定义首页', 'admin', '1537516616237', '12', 'http://upms.mcep.net.cn:1111', '/manage/resource/index', 'http://upms.mcep.net.cn:1111/manage/resource/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/resource/index.jsp\"', 'upms:resource:read');
INSERT INTO `upms_log` VALUES ('104', '资源定义列表', 'admin', '1537516632420', '14', 'http://upms.mcep.net.cn:1111', '/manage/resource/list', 'http://upms.mcep.net.cn:1111/manage/resource/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":274,\"rows\":[{\"businessId\":1001,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":2,\"resourceId\":2,\"resourceName\":\"102新疆五家渠旭阳\"},{\"businessId\":1002,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":3,\"resourceId\":3,\"resourceName\":\"103新疆哈密尚德\"},{\"businessId\":1045,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":4,\"resourceId\":4,\"resourceName\":\"139部山东临沂意能库\"},{\"businessId\":1028,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":5,\"resourceId\":5,\"resourceName\":\"127部金塔万晟库\"},{\"businessId\":1029,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":6,\"resourceId\":6,\"resourceName\":\"128部肃南裕固库\"},{\"businessId\":1010,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":7,\"resourceId\":7,\"resourceName\":\"107新疆焉耆新奥\"},{\"businessId\":1043,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":8,\"resourceId\":8,\"resourceName\":\"157河北国威行唐\"},{\"businessId\":1035,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":9,\"resourceId\":9,\"resourceName\":\"133西藏桑日尚德\"},{\"businessId\":1003,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":10,\"resourceId\":10,\"resourceName\":\"103新疆哈密恒鑫\"},{\"businessId\":1004,\"businessObject\":\"station\",\"cdName\":\"电站\",\"ctime\":1517217253570,\"orders\":11,\"resourceId\":11,\"resourceName\":\"103新疆哈密浚鑫\"}]}', 'upms:resource:read');
INSERT INTO `upms_log` VALUES ('105', '后台首页', 'admin', '1537517167422', '2284', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('106', '后台首页', 'admin', '1537517509262', '2477', 'http://upms.mcep.net.cn:1111', '/manage/index', 'http://upms.mcep.net.cn:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('107', '公共编码分类首页', 'admin', '1537517600414', '9', 'http://upms.mcep.net.cn:1111', '/manage/codeClass/index', 'http://upms.mcep.net.cn:1111/manage/codeClass/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/codeClass/index.jsp\"', 'upms:codeclass:read');
INSERT INTO `upms_log` VALUES ('108', '公共编码分类列表', 'admin', '1537517610213', '14', 'http://upms.mcep.net.cn:1111', '/manage/codeClass/list', 'http://upms.mcep.net.cn:1111/manage/codeClass/list', 'GET', 'offset=0&limit=10&order=asc&catName=', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":3,\"rows\":[{\"catName\":\"资源\",\"catNo\":\"resource\",\"id\":1},{\"catName\":\"计量单位\",\"catNo\":\"Unit\",\"id\":2},{\"catName\":\"1\",\"catNo\":\"1\",\"id\":3}]}', 'upms:codeclass:read');
INSERT INTO `upms_log` VALUES ('109', '组织首页', 'admin', '1537517618994', '9', 'http://upms.mcep.net.cn:1111', '/manage/organization/index', 'http://upms.mcep.net.cn:1111/manage/organization/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('110', '组织列表', 'admin', '1537517628451', '14', 'http://upms.mcep.net.cn:1111', '/manage/organization/list', 'http://upms.mcep.net.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":32,\"rows\":[{\"abbreviation\":\"旻投电力\",\"ctime\":1517897675806,\"description\":\"总部\",\"manageLead\":\"\",\"name\":\"旻投电力发展有限公司\",\"organizationCoding\":\"\",\"organizationId\":8,\"property\":1},{\"abbreviation\":\"运维管理部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"运维管理部\",\"organizationId\":9,\"pid\":8,\"pname\":\"旻投电力发展有限公司\"},{\"abbreviation\":\"101部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"101现场运维部\",\"organizationId\":11,\"pid\":10},{\"abbreviation\":\"102部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"102现场运维部\",\"organizationId\":12,\"pid\":10},{\"abbreviation\":\"103部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"103现场运维部\",\"organizationId\":13,\"pid\":10},{\"abbreviation\":\"105部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"105现场运维部\",\"organizationId\":14,\"pid\":10},{\"abbreviation\":\"106部\",\"ctime\":1517897675806,\"description\":\"总部\",\"name\":\"106现场运维部\",\"organizationId\":15,\"pid\":10},{\"abbreviation\":\"131部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"131现场运维部\",\"organizationId\":16,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"132部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"132现场运维部\",\"organizationId\":17,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"133部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"133现场运维部\",\"organizationId\":18,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('111', '组织列表', 'admin', '1537517636749', '10', 'http://upms.mcep.net.cn:1111', '/manage/organization/list', 'http://upms.mcep.net.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=10&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":32,\"rows\":[{\"abbreviation\":\"136部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"136现场运维部\",\"organizationId\":19,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"137部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"137现场运维部\",\"organizationId\":20,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"138部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"138现场运维部\",\"organizationId\":21,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"139部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"139现场运维部\",\"organizationId\":22,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"150部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"150现场运维部\",\"organizationId\":23,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"151部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"151现场运维部\",\"organizationId\":24,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"152部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"152现场运维部\",\"organizationId\":25,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"153部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"153现场运维部\",\"organizationId\":26,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"155部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"155现场运维部\",\"organizationId\":27,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0},{\"abbreviation\":\"156部\",\"ctime\":1517897675806,\"description\":\"总部\",\"interior\":0,\"manageLead\":\"\",\"name\":\"156现场运维部\",\"organizationId\":28,\"pid\":9,\"pname\":\"运维管理部\",\"property\":0}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('112', '权限首页', 'admin', '1537517644985', '8', 'http://upms.mcep.net.cn:1111', '/manage/permission/index', 'http://upms.mcep.net.cn:1111/manage/permission/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('113', '权限列表', 'admin', '1537517654298', '22', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":102,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('114', '权限列表', 'admin', '1537517675659', '10', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=100&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":102,\"rows\":[{\"ctime\":1537175292027,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"新增测试\",\"orders\":1537175292027,\"permissionId\":411,\"permissionValue\":\"ted:demo:create\",\"pid\":410,\"status\":1,\"systemId\":10,\"type\":4,\"uri\":\"/manage/demo/create\"},{\"ctime\":1537182809835,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试修改\",\"orders\":1537182809835,\"permissionId\":415,\"permissionValue\":\"ted:demo:update\",\"pid\":410,\"status\":1,\"systemId\":10,\"type\":4,\"uri\":\"/manage/demo/update\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('115', '修改系统', 'admin', '1537518028473', '4', 'http://upms.mcep.net.cn:1111', '/manage/system/update/10', 'http://upms.mcep.net.cn:1111/manage/system/update/10', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/system/update.jsp\"', 'upms:system:update');
INSERT INTO `upms_log` VALUES ('116', '角色首页', 'admin', '1537518048698', '9', 'http://upms.mcep.net.cn:1111', '/manage/role/index', 'http://upms.mcep.net.cn:1111/manage/role/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/role/index.jsp\"', 'upms:role:read');
INSERT INTO `upms_log` VALUES ('117', '角色列表', 'admin', '1537518065204', '12', 'http://upms.mcep.net.cn:1111', '/manage/role/list', 'http://upms.mcep.net.cn:1111/manage/role/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":45,\"rows\":[{\"ctime\":1,\"description\":\"拥有所有权限\",\"name\":\"super\",\"orders\":1,\"roleId\":1,\"title\":\"超级管理员\"},{\"ctime\":1487471013117,\"description\":\"停用\",\"name\":\"admin\",\"orders\":1487471013117,\"roleId\":2,\"title\":\"管理员\"},{\"ctime\":1511255773286,\"description\":\"发电量分析数据填报\",\"name\":\"日报编制岗\",\"orders\":1511255773286,\"roleId\":3,\"title\":\"日报编制岗\"},{\"ctime\":1517207787584,\"description\":\"发电量分析数据填报\",\"name\":\"日报站长审核岗\",\"orders\":1517207787584,\"roleId\":4,\"title\":\"日报站长审核岗\"},{\"ctime\":1524548724573,\"description\":\"备品备件系统\",\"name\":\"出库申请\",\"orders\":1524548724573,\"roleId\":5,\"title\":\"出库申请\"},{\"ctime\":1524548815541,\"description\":\"物资管理系统\",\"name\":\"物资出入库查询\",\"orders\":1524548815541,\"roleId\":6,\"title\":\"物资出入库查询\"},{\"ctime\":1524638356869,\"description\":\"停用\",\"name\":\"现场运维部部长\",\"orders\":1524638356869,\"roleId\":7,\"title\":\"现场运维部部长\"},{\"ctime\":1524812701729,\"description\":\"运维管理系统\",\"name\":\"集团发电量日报查询\",\"orders\":1524812701729,\"roleId\":8,\"title\":\"发电量日报查询\"},{\"ctime\":1524812721401,\"description\":\"备品备件财务专用报表接口\",\"name\":\"财务专用\",\"orders\":1524812721401,\"roleId\":9,\"title\":\"月结与财务报表\"},{\"ctime\":1524882280713,\"description\":\"\\t备品备件系统\",\"name\":\"仓库保管员\",\"orders\":1524882280713,\"roleId\":10,\"title\":\"仓库保管员\"}]}', 'upms:role:read');
INSERT INTO `upms_log` VALUES ('118', '测试信息首页', 'admin', '1537518094293', '0', 'http://ted.mcep.net.cn:6688', '/manage/demo/index', 'http://ted.mcep.net.cn:6688/manage/demo/index', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/index.html\"', 'ted:demo:read');
INSERT INTO `upms_log` VALUES ('119', '业主信息列表', 'admin', '1537518101661', '27', 'http://ted.mcep.net.cn:6688', '/manage/demo/list', 'http://ted.mcep.net.cn:6688/manage/demo/list', 'GET', 'offset=0&limit=10&sort=proprietorId&order=asc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"rows\":[{\"contactId\":15,\"creditCode\":\"ff\",\"memo\":\"adf\",\"proprietorCode\":\"10101\",\"proprietorId\":1,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3423.0,\"representative\":\"sfs\"},{\"contactId\":16,\"creditCode\":\"3sd\",\"memo\":\"adfadf\",\"proprietorCode\":\"10101\",\"proprietorId\":2,\"proprietorName\":\"业主名称1\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"fs\"},{\"contactId\":14,\"creditCode\":\"32\",\"memo\":\"sf\",\"proprietorCode\":\"10101\",\"proprietorId\":3,\"proprietorName\":\"业主名称3\",\"proprietorNature\":0,\"registeredCapital\":2323.0,\"representative\":\"23\"},{\"contactId\":17,\"creditCode\":\"sdfsd\",\"memo\":\"adfadsf\",\"proprietorCode\":\"10101\",\"proprietorId\":4,\"proprietorName\":\"fasdfadf\",\"proprietorNature\":0,\"registeredCapital\":3232.0,\"representative\":\"sdfs\"},{\"contactId\":17,\"creditCode\":\"12324564123254\",\"memo\":\"现在擦掉\",\"proprietorCode\":\"10101\",\"proprietorId\":5,\"proprietorName\":\"航天恒星503所\",\"proprietorNature\":3,\"registeredCapital\":5000.0,\"representative\":\"陆阳\"}],\"total\":5}', null);
INSERT INTO `upms_log` VALUES ('120', '修改', 'admin', '1537518171220', '5', 'http://ted.mcep.net.cn:6688', '/manage/demo/update/1', 'http://ted.mcep.net.cn:6688/manage/demo/update/1', 'GET', 'pid=http___ted_mcep_net_cn_6688_manage_demo_index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/demo/update.html\"', 'ted:demo:update');
INSERT INTO `upms_log` VALUES ('121', '权限列表', 'admin', '1537518434095', '7', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=90&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":102,\"rows\":[{\"ctime\":1517213406502,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"岗位资源权限\",\"orders\":1517213406502,\"permissionId\":131,\"permissionValue\":\"upms:jobs:resource\",\"pid\":108,\"status\":1,\"systemId\":1,\"type\":4,\"uri\":\"/manage/jobs/resources\"},{\"ctime\":1517215868112,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"用户资源权限\",\"orders\":1517215868112,\"permissionId\":132,\"permissionValue\":\"upms:user:resource\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":4,\"uri\":\"/manage/user/resources\"},{\"ctime\":1520474758503,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"公共编码管理\",\"orders\":1520474758503,\"permissionId\":154,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":1520474862867,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"公共编码管理\",\"orders\":1520474862867,\"permissionId\":155,\"permissionValue\":\"upms:codeClass:read\",\"pid\":154,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/codeClass/index\"},{\"ctime\":1520475938604,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"新增公共编码\",\"orders\":1520475938604,\"permissionId\":156,\"permissionValue\":\"upms:codeClass:create\",\"pid\":155,\"status\":1,\"systemId\":1,\"type\":4,\"uri\":\"/manage/codeClass/create\"},{\"ctime\":1520493470744,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"编辑公共编码\",\"orders\":1520493470744,\"permissionId\":157,\"permissionValue\":\"upms:codeClass:update\",\"pid\":155,\"status\":1,\"systemId\":1,\"type\":4,\"uri\":\"/manage/codeClass/update\"},{\"ctime\":1520498454616,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"删除公共编码\",\"orders\":1520498454616,\"permissionId\":158,\"permissionValue\":\"upms:codeClass:delete\",\"pid\":155,\"status\":1,\"systemId\":1,\"type\":4,\"uri\":\"manage/codeClass/delete\"},{\"ctime\":1531985067651,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"重置密码\",\"orders\":1531985067651,\"permissionId\":312,\"permissionValue\":\"upms:user:password\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":4,\"uri\":\"/manage/user/init\"},{\"ctime\":1537175214426,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试目录\",\"orders\":1537175214426,\"permissionId\":409,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":10,\"type\":1,\"uri\":\"\"},{\"ctime\":1537175243988,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试菜单\",\"orders\":1537175243988,\"permissionId\":410,\"permissionValue\":\"ted:demo:read\",\"pid\":409,\"status\":1,\"systemId\":10,\"type\":3,\"uri\":\"/manage/demo/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('122', '权限列表', 'admin', '1537518443752', '6', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=100&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":102,\"rows\":[{\"ctime\":1537175292027,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"新增测试\",\"orders\":1537175292027,\"permissionId\":411,\"permissionValue\":\"ted:demo:create\",\"pid\":410,\"status\":1,\"systemId\":10,\"type\":4,\"uri\":\"/manage/demo/create\"},{\"ctime\":1537182809835,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试修改\",\"orders\":1537182809835,\"permissionId\":415,\"permissionValue\":\"ted:demo:update\",\"pid\":410,\"status\":1,\"systemId\":10,\"type\":4,\"uri\":\"/manage/demo/update\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('123', '新增权限', 'admin', '1537518663271', '4', 'http://upms.mcep.net.cn:1111', '/manage/permission/create', 'http://upms.mcep.net.cn:1111/manage/permission/create', 'GET', null, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '\"/manage/permission/create.jsp\"', 'upms:permission:create');
INSERT INTO `upms_log` VALUES ('124', '权限列表', 'admin', '1537518691949', '9', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'systemId=10&type=0&limit=10000', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":4,\"rows\":[{\"ctime\":1537175214426,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试目录\",\"orders\":1537175214426,\"permissionId\":409,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":10,\"type\":1,\"uri\":\"\"},{\"ctime\":1537175243988,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试菜单\",\"orders\":1537175243988,\"permissionId\":410,\"permissionValue\":\"ted:demo:read\",\"pid\":409,\"status\":1,\"systemId\":10,\"type\":3,\"uri\":\"/manage/demo/index\"},{\"ctime\":1537175292027,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"新增测试\",\"orders\":1537175292027,\"permissionId\":411,\"permissionValue\":\"ted:demo:create\",\"pid\":410,\"status\":1,\"systemId\":10,\"type\":4,\"uri\":\"/manage/demo/create\"},{\"ctime\":1537182809835,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试修改\",\"orders\":1537182809835,\"permissionId\":415,\"permissionValue\":\"ted:demo:update\",\"pid\":410,\"status\":1,\"systemId\":10,\"type\":4,\"uri\":\"/manage/demo/update\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('125', '权限列表', 'admin', '1537518696343', '10', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'systemId=10&type=1&limit=10000', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"ctime\":1537175214426,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试目录\",\"orders\":1537175214426,\"permissionId\":409,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":10,\"type\":1,\"uri\":\"\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('126', '权限列表', 'admin', '1537518697347', '7', 'http://upms.mcep.net.cn:1111', '/manage/permission/list', 'http://upms.mcep.net.cn:1111/manage/permission/list', 'GET', 'systemId=10&type=2&limit=10000', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"ctime\":1537175214426,\"icon\":\"zmdi zmdi-widgets\",\"name\":\"测试目录\",\"orders\":1537175214426,\"permissionId\":409,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":10,\"type\":1,\"uri\":\"\"}]}', 'upms:permission:read');

-- ----------------------------
-- Table structure for upms_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_organization`;
CREATE TABLE `upms_organization` (
  `organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '组织名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '组织描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `organization_coding` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '组织机构编码',
  `property` int(10) DEFAULT NULL COMMENT '属性',
  `enact` int(20) DEFAULT NULL COMMENT '定边（有多少人）',
  `manageLead` varchar(50) DEFAULT NULL COMMENT '分管领导',
  `interior` int(10) DEFAULT NULL COMMENT '是否内部组织',
  `abbreviation` varchar(20) DEFAULT NULL COMMENT '简称',
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COMMENT='组织';

-- ----------------------------
-- Records of upms_organization
-- ----------------------------
INSERT INTO `upms_organization` VALUES ('8', null, '旻投电力发展有限公司', '总部', '1517897675806', '', '1', null, '', null, '旻投电力');
INSERT INTO `upms_organization` VALUES ('9', '8', '运维管理部', '总部', '1517897675806', null, null, null, null, null, '运维管理部');
INSERT INTO `upms_organization` VALUES ('11', '10', '101现场运维部', '总部', '1517897675806', null, null, null, null, null, '101部');
INSERT INTO `upms_organization` VALUES ('12', '10', '102现场运维部', '总部', '1517897675806', null, null, null, null, null, '102部');
INSERT INTO `upms_organization` VALUES ('13', '10', '103现场运维部', '总部', '1517897675806', null, null, null, null, null, '103部');
INSERT INTO `upms_organization` VALUES ('14', '10', '105现场运维部', '总部', '1517897675806', null, null, null, null, null, '105部');
INSERT INTO `upms_organization` VALUES ('15', '10', '106现场运维部', '总部', '1517897675806', null, null, null, null, null, '106部');
INSERT INTO `upms_organization` VALUES ('16', '9', '131现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '131部');
INSERT INTO `upms_organization` VALUES ('17', '9', '132现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '132部');
INSERT INTO `upms_organization` VALUES ('18', '9', '133现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '133部');
INSERT INTO `upms_organization` VALUES ('19', '9', '136现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '136部');
INSERT INTO `upms_organization` VALUES ('20', '9', '137现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '137部');
INSERT INTO `upms_organization` VALUES ('21', '9', '138现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '138部');
INSERT INTO `upms_organization` VALUES ('22', '9', '139现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '139部');
INSERT INTO `upms_organization` VALUES ('23', '9', '150现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '150部');
INSERT INTO `upms_organization` VALUES ('24', '9', '151现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '151部');
INSERT INTO `upms_organization` VALUES ('25', '9', '152现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '152部');
INSERT INTO `upms_organization` VALUES ('26', '9', '153现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '153部');
INSERT INTO `upms_organization` VALUES ('27', '9', '155现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '155部');
INSERT INTO `upms_organization` VALUES ('28', '9', '156现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '156部');
INSERT INTO `upms_organization` VALUES ('29', '9', '157现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '157部');
INSERT INTO `upms_organization` VALUES ('30', '9', '158现场运维部', '总部', '1517897675806', null, '0', null, '', '0', '158部');
INSERT INTO `upms_organization` VALUES ('31', '10', '159现场运维部', '总部', '1517897675806', null, null, null, null, null, '159部');
INSERT INTO `upms_organization` VALUES ('34', '0', '甘肃旻投电力发展有限公司', '分公司', '1519609448454', 'MC20180226801', '0', null, '', '1', '甘肃旻投');
INSERT INTO `upms_organization` VALUES ('35', '0', '北京旻投电力发展有限公司', '分公司', '1519609511094', 'MC20180226476', '0', null, '', '1', '北京旻投');
INSERT INTO `upms_organization` VALUES ('36', '0', '新疆旻投电力发展有限公司', '分公司', '1519609574860', 'MC20180226314', '0', null, '', '1', '新疆旻投');
INSERT INTO `upms_organization` VALUES ('37', '34', '127现场运维部', '分公司', '1519609776235', 'MC20180226892', '0', null, '', '1', '127部');
INSERT INTO `upms_organization` VALUES ('38', '34', '128现场运维部', '分公司', '1519609888813', 'MC20180226148', '0', null, '', '1', '128部');
INSERT INTO `upms_organization` VALUES ('39', '34', '129现场运维部', '分公司', '1519609931938', 'MC20180226443', '0', null, '', '1', '129部');
INSERT INTO `upms_organization` VALUES ('40', '34', '130现场运维部', '分公司', '1519609955048', 'MC20180226871', '0', null, '', '1', '130部');
INSERT INTO `upms_organization` VALUES ('41', '35', '135现场运维部', '分公司', '1519610121016', 'MC20180226370', '0', null, '', '1', '135部');
INSERT INTO `upms_organization` VALUES ('42', '0', '顺风电力', '', '1520246499016', 'MC20180305499', '0', null, '', '0', '顺风电力');

-- ----------------------------
-- Table structure for upms_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_permission`;
CREATE TABLE `upms_permission` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `system_id` int(10) unsigned NOT NULL COMMENT '所属系统',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型(1:目录,2:菜单,3:按钮)',
  `permission_value` varchar(50) DEFAULT NULL COMMENT '权限值',
  `uri` varchar(100) DEFAULT NULL COMMENT '路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4 COMMENT='权限';

-- ----------------------------
-- Records of upms_permission
-- ----------------------------
INSERT INTO `upms_permission` VALUES ('1', '1', '0', '系统组织管理', '1', '', '', 'zmdi zmdi-accounts-list', '1', '1', '1');
INSERT INTO `upms_permission` VALUES ('2', '1', '1', '系统管理', '3', 'upms:system:read', '/manage/system/index', '', '1', '2', '2');
INSERT INTO `upms_permission` VALUES ('3', '1', '1', '组织管理', '3', 'upms:organization:read', '/manage/organization/index', '', '1', '3', '3');
INSERT INTO `upms_permission` VALUES ('4', '1', '0', '角色用户管理', '1', '', '', 'zmdi zmdi-accounts', '1', '4', '4');
INSERT INTO `upms_permission` VALUES ('5', '1', '4', '角色管理', '3', 'upms:role:read', '/manage/role/index', '', '1', '6', '6');
INSERT INTO `upms_permission` VALUES ('6', '1', '4', '用户管理', '3', 'upms:user:read', '/manage/user/index', '', '1', '5', '5');
INSERT INTO `upms_permission` VALUES ('7', '1', '0', '权限资源管理', '1', '', '', 'zmdi zmdi-lock-outline', '1', '7', '7');
INSERT INTO `upms_permission` VALUES ('12', '1', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '12', '12');
INSERT INTO `upms_permission` VALUES ('14', '1', '12', '会话管理', '3', 'upms:session:read', '/manage/session/index', '', '1', '14', '14');
INSERT INTO `upms_permission` VALUES ('15', '1', '12', '日志记录', '3', 'upms:log:read', '/manage/log/index', '', '1', '15', '15');
INSERT INTO `upms_permission` VALUES ('17', '2', '0', '标签类目管理', '1', null, null, 'zmdi zmdi-menu', '1', '17', '17');
INSERT INTO `upms_permission` VALUES ('18', '2', '17', '标签管理', '3', 'cms:tag:read', '/manage/tag/index', null, '1', '18', '18');
INSERT INTO `upms_permission` VALUES ('19', '2', '17', '类目管理', '3', 'cms:category:read', '/manage/category/index', null, '1', '19', '19');
INSERT INTO `upms_permission` VALUES ('20', '2', '0', '文章评论管理', '1', null, null, 'zmdi zmdi-collection-text', '1', '20', '20');
INSERT INTO `upms_permission` VALUES ('21', '2', '20', '文章管理', '3', 'cms:article:read', '/manage/article/index', null, '1', '21', '21');
INSERT INTO `upms_permission` VALUES ('22', '2', '20', '回收管理', '4', 'cms:article:read', '/manage/article/recycle', null, '1', '22', '22');
INSERT INTO `upms_permission` VALUES ('24', '1', '2', '新增系统', '4', 'upms:system:create', '/manage/system/create', 'zmdi zmdi-plus', '1', '24', '24');
INSERT INTO `upms_permission` VALUES ('25', '1', '2', '编辑系统', '4', 'upms:system:update', '/manage/system/update', 'zmdi zmdi-edit', '1', '25', '25');
INSERT INTO `upms_permission` VALUES ('26', '1', '2', '删除系统', '4', 'upms:system:delete', '/manage/system/delete', 'zmdi zmdi-close', '1', '26', '26');
INSERT INTO `upms_permission` VALUES ('27', '1', '3', '新增组织', '4', 'upms:organization:create', '/manage/organization/create', 'zmdi zmdi-plus', '1', '27', '27');
INSERT INTO `upms_permission` VALUES ('28', '1', '3', '编辑组织', '4', 'upms:organization:update', '/manage/organization/update', 'zmdi zmdi-edit', '1', '28', '28');
INSERT INTO `upms_permission` VALUES ('29', '1', '3', '删除组织', '4', 'upms:organization:delete', '/manage/organization/delete', 'zmdi zmdi-close', '1', '29', '29');
INSERT INTO `upms_permission` VALUES ('30', '1', '6', '新增用户', '4', 'upms:user:create', '/manage/user/create', 'zmdi zmdi-plus', '1', '30', '30');
INSERT INTO `upms_permission` VALUES ('31', '1', '6', '编辑用户', '4', 'upms:user:update', '/manage/user/update', 'zmdi zmdi-edit', '1', '31', '31');
INSERT INTO `upms_permission` VALUES ('32', '1', '6', '删除用户', '4', 'upms:user:delete', '/manage/user/delete', 'zmdi zmdi-close', '1', '32', '32');
INSERT INTO `upms_permission` VALUES ('33', '1', '5', '新增角色', '4', 'upms:role:create', '/manage/role/create', 'zmdi zmdi-plus', '1', '33', '33');
INSERT INTO `upms_permission` VALUES ('34', '1', '5', '编辑角色', '4', 'upms:role:update', '/manage/role/update', 'zmdi zmdi-edit', '1', '34', '34');
INSERT INTO `upms_permission` VALUES ('35', '1', '5', '删除角色', '4', 'upms:role:delete', '/manage/role/delete', 'zmdi zmdi-close', '1', '35', '35');
INSERT INTO `upms_permission` VALUES ('36', '1', '39', '新增权限', '4', 'upms:permission:create', '/manage/permission/create', 'zmdi zmdi-plus', '1', '36', '36');
INSERT INTO `upms_permission` VALUES ('37', '1', '39', '编辑权限', '4', 'upms:permission:update', '/manage/permission/update', 'zmdi zmdi-edit', '1', '37', '37');
INSERT INTO `upms_permission` VALUES ('38', '1', '39', '删除权限', '4', 'upms:permission:delete', '/manage/permission/delete', 'zmdi zmdi-close', '1', '38', '38');
INSERT INTO `upms_permission` VALUES ('39', '1', '7', '权限管理', '3', 'upms:permission:read', '/manage/permission/index', null, '1', '39', '39');
INSERT INTO `upms_permission` VALUES ('46', '1', '5', '角色权限', '4', 'upms:role:permission', '/manage/role/permission', 'zmdi zmdi-key', '1', '1488091928257', '1488091928257');
INSERT INTO `upms_permission` VALUES ('48', '1', '6', '用户组织', '4', 'upms:user:organization', '/manage/user/organization', 'zmdi zmdi-accounts-list', '1', '1488120011165', '1488120011165');
INSERT INTO `upms_permission` VALUES ('50', '1', '6', '用户角色', '4', 'upms:user:role', '/manage/user/role', 'zmdi zmdi-accounts', '1', '1488120554175', '1488120554175');
INSERT INTO `upms_permission` VALUES ('51', '1', '6', '用户权限', '4', 'upms:user:permission', '/manage/user/permission', 'zmdi zmdi-key', '1', '1488092013302', '1488092013302');
INSERT INTO `upms_permission` VALUES ('53', '1', '14', '强制退出', '4', 'upms:session:forceout', '/manage/session/forceout', 'zmdi zmdi-run', '1', '1488379514715', '1488379514715');
INSERT INTO `upms_permission` VALUES ('54', '2', '18', '新增标签', '4', 'cms:tag:create', '/manage/tag/create', 'zmdi zmdi-plus', '1', '1489417315159', '1489417315159');
INSERT INTO `upms_permission` VALUES ('55', '2', '18', '编辑标签', '4', 'cms:tag:update', 'zmdi zmdi-edit', 'zmdi zmdi-widgets', '1', '1489417344931', '1489417344931');
INSERT INTO `upms_permission` VALUES ('56', '2', '18', '删除标签', '4', 'cms:tag:delete', '/manage/tag/delete', 'zmdi zmdi-close', '1', '1489417372114', '1489417372114');
INSERT INTO `upms_permission` VALUES ('57', '1', '15', '删除权限', '4', 'upms:log:delete', '/manage/log/delete', 'zmdi zmdi-close', '1', '1489503867909', '1489503867909');
INSERT INTO `upms_permission` VALUES ('58', '2', '19', '编辑类目', '4', 'cms:category:update', '/manage/category/update', 'zmdi zmdi-edit', '1', '1489586600462', '1489586600462');
INSERT INTO `upms_permission` VALUES ('59', '2', '19', '删除类目', '4', 'cms:category:delete', '/manage/category/delete', 'zmdi zmdi-close', '1', '1489586633059', '1489586633059');
INSERT INTO `upms_permission` VALUES ('60', '2', '19', '新增类目', '4', 'cms:category:create', '/manage/category/create', 'zmdi zmdi-plus', '1', '1489590342089', '1489590342089');
INSERT INTO `upms_permission` VALUES ('61', '2', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '1489835455359', '1489835455359');
INSERT INTO `upms_permission` VALUES ('62', '2', '20', '评论管理', '3', 'cms:comment:read', '/manage/comment/index', '', '1', '1489591408224', '1489591408224');
INSERT INTO `upms_permission` VALUES ('63', '2', '62', '删除评论', '4', 'cms:comment:delete', '/manage/comment/delete', 'zmdi zmdi-close', '1', '1489591449614', '1489591449614');
INSERT INTO `upms_permission` VALUES ('64', '2', '79', '单页管理', '3', 'cms:page:read', '/manage/page/index', '', '1', '1489591332779', '1489591332779');
INSERT INTO `upms_permission` VALUES ('65', '2', '64', '新增单页', '4', 'cms:page:create', '/manage/page/create', 'zmdi zmdi-plus', '1', '1489591614473', '1489591614473');
INSERT INTO `upms_permission` VALUES ('66', '2', '64', '编辑单页', '4', 'cms:page:update', '/manage/page/update', 'zmdi zmdi-edit', '1', '1489591653000', '1489591653000');
INSERT INTO `upms_permission` VALUES ('67', '2', '64', '删除单页', '4', 'cms:page:delete', '/manage/page/delete', 'zmdi zmdi-close', '1', '1489591683552', '1489591683552');
INSERT INTO `upms_permission` VALUES ('68', '2', '61', '菜单管理', '3', 'cms:menu:read', '/manage/menu/index', 'zmdi zmdi-widgets', '1', '1489591746846', '1489591746846');
INSERT INTO `upms_permission` VALUES ('69', '2', '68', '新增菜单', '4', 'cms:menu:create', '/manage/menu/create', 'zmdi zmdi-plus', '1', '1489591791747', '1489591791747');
INSERT INTO `upms_permission` VALUES ('70', '2', '68', '编辑菜单', '4', 'cms:menu:update', '/manage/menu/update', 'zmdi zmdi-edit', '1', '1489591831878', '1489591831878');
INSERT INTO `upms_permission` VALUES ('71', '2', '68', '删除菜单', '4', 'cms:menu:delete', '/manage/menu/delete', 'zmdi zmdi-close', '1', '1489591865454', '1489591865454');
INSERT INTO `upms_permission` VALUES ('72', '2', '61', '系统设置', '3', 'cms:setting:read', '/manage/setting/index', 'zmdi zmdi-widgets', '1', '1489591981165', '1489591981165');
INSERT INTO `upms_permission` VALUES ('73', '2', '72', '新增设置', '4', 'cms:setting:create', '/manage/setting/create', 'zmdi zmdi-plus', '1', '1489592024762', '1489592024762');
INSERT INTO `upms_permission` VALUES ('74', '2', '72', '编辑设置', '4', 'cms:setting:update', '/manage/setting/update', 'zmdi zmdi-edit', '1', '1489592052582', '1489592052582');
INSERT INTO `upms_permission` VALUES ('75', '2', '72', '删除设置', '4', 'cms:setting:delete', '/manage/setting/delete', 'zmdi zmdi-close', '1', '1489592081426', '1489592081426');
INSERT INTO `upms_permission` VALUES ('76', '2', '21', '新增文章', '4', 'cms:article:create', '/manage/article/create', 'zmdi zmdi-plus', '1', '1489820150404', '1489820150404');
INSERT INTO `upms_permission` VALUES ('77', '2', '21', '编辑文章', '4', 'cms:article:update', '/manage/article/update', 'zmdi zmdi-edit', '1', '1489820178269', '1489820178269');
INSERT INTO `upms_permission` VALUES ('78', '2', '21', '删除文章', '4', 'cms:article:delete', '/manage/article/delete', 'zmdi zmdi-close', '1', '1489820207607', '1489820207607');
INSERT INTO `upms_permission` VALUES ('79', '2', '0', '单页专题管理', '1', '', '', 'zmdi zmdi-view-web', '1', '1489835320327', '1489835320327');
INSERT INTO `upms_permission` VALUES ('80', '2', '79', '专题管理', '3', 'cms:topic:read', '/manage/topic/index', 'zmdi zmdi-widgets', '1', '1489591507566', '1489591507566');
INSERT INTO `upms_permission` VALUES ('81', '2', '80', '新增专题', '4', 'cms:topic:create', '/manage/topic/create', 'zmdi zmdi-plus', '1', '1489843327028', '1489843327028');
INSERT INTO `upms_permission` VALUES ('82', '2', '80', '编辑专题', '4', 'cms:topic:update', '/manage/topic/update', 'zmdi zmdi-edit', '1', '1489843351513', '1489843351513');
INSERT INTO `upms_permission` VALUES ('83', '2', '80', '删除专题', '4', 'cms:topic:delete', '/manage/topic/delete', 'zmdi zmdi-close', '1', '1489843379953', '1489843379953');
INSERT INTO `upms_permission` VALUES ('84', '2', '68', '上移菜单', '4', 'cms:menu:up', '/manage/menu/up', 'zmdi zmdi-long-arrow-up', '1', '1489846486548', '1489846486548');
INSERT INTO `upms_permission` VALUES ('85', '2', '68', '下移菜单', '4', 'cms:menu:down', '/manage/menu/down', 'zmdi zmdi-long-arrow-down', '1', '1489846578051', '1489846578051');
INSERT INTO `upms_permission` VALUES ('106', '8', '0', '流程管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1514370557521', '1514370557521');
INSERT INTO `upms_permission` VALUES ('107', '8', '106', '待办任务', '3', 'flow:process:read', '/manage/process/index', 'zmdi zmdi-widgets', '1', '1514370599104', '1514370599104');
INSERT INTO `upms_permission` VALUES ('108', '1', '1', '岗位管理', '3', 'upms:jobs:read', '/manage/jobs/index', 'zmdi zmdi-widgets', '1', '1516269486311', '1516269486311');
INSERT INTO `upms_permission` VALUES ('109', '1', '108', '新增岗位', '4', 'upms:jobs:create', '/manage/jobs/create', 'zmdi zmdi-widgets', '1', '1516270562613', '1516270562613');
INSERT INTO `upms_permission` VALUES ('110', '1', '108', '编辑岗位', '4', 'upms:jobs:update', '/manage/jobs/update', 'zmdi zmdi-widgets', '1', '1516270675631', '1516270675631');
INSERT INTO `upms_permission` VALUES ('111', '1', '108', '删除岗位', '4', 'upms:jobs:delete', '/manage/jobs/delete', 'zmdi zmdi-widgets', '1', '1516270727753', '1516270727753');
INSERT INTO `upms_permission` VALUES ('112', '1', '7', '资源定义管理', '3', 'upms:resource:read', '/manage/resource/index', 'zmdi zmdi-widgets', '1', '1516280950040', '1516280950040');
INSERT INTO `upms_permission` VALUES ('113', '1', '112', '新增资源定义', '4', 'upms:resource:create', '/manage/resource/create', 'zmdi zmdi-widgets', '1', '1516325590660', '1516325590660');
INSERT INTO `upms_permission` VALUES ('114', '1', '112', '编辑资源定义', '4', 'upms:resource:update', '/manage/resource/update', 'zmdi zmdi-widgets', '1', '1516325683984', '1516325683984');
INSERT INTO `upms_permission` VALUES ('115', '1', '112', '删除资源定义', '4', 'upms:resource:delete', '/manage/resource/delete', 'zmdi zmdi-widgets', '1', '1516325736605', '1516325736605');
INSERT INTO `upms_permission` VALUES ('116', '1', '5', '角色组织', '4', 'upms:role:organization', '/manage/role/organization', 'zmdi zmdi-widgets', '1', '1516331742676', '1516331742676');
INSERT INTO `upms_permission` VALUES ('117', '1', '7', '数据权限管理', '3', 'upms:dataPermission:read', '/manage/dataPermission/index', 'zmdi zmdi-widgets', '1', '1516588770346', '1516588770346');
INSERT INTO `upms_permission` VALUES ('118', '1', '117', '新增数据权限', '4', 'upms:dataPermission:create', '/manage/dataPermission/create', 'zmdi zmdi-widgets', '1', '1516589265226', '1516589265226');
INSERT INTO `upms_permission` VALUES ('119', '1', '117', '修改数据权限', '4', 'upms:dataPermission:update', '/manage/dataPermission/update', 'zmdi zmdi-widgets', '1', '1516589363410', '1516589363410');
INSERT INTO `upms_permission` VALUES ('120', '1', '117', '删除数据权限', '4', 'upms:dataPermission:delete', '/manage/dataPermission/delete', 'zmdi zmdi-widgets', '1', '1516589452148', '1516589452148');
INSERT INTO `upms_permission` VALUES ('121', '1', '6', '用户岗位', '4', 'upms:user:jobs', '/manage/user/jobs', 'zmdi zmdi-widgets', '1', '1516944593084', '1516944593084');
INSERT INTO `upms_permission` VALUES ('122', '1', '112', '资源用户', '4', 'upms:resource:user', '/manage/resource/user', 'zmdi zmdi-widgets', '1', '1516952125344', '1516952125344');
INSERT INTO `upms_permission` VALUES ('125', '1', '108', '岗位组织', '4', 'upms:jobs:organization', '/manage/jobs/organization', 'zmdi zmdi-widgets', '1', '1517035594459', '1517035594459');
INSERT INTO `upms_permission` VALUES ('127', '1', '112', '资源岗位', '4', 'upms:resource:jobs', '/manage/resource/jobs', 'zmdi zmdi-widgets', '1', '1517047362724', '1517047362724');
INSERT INTO `upms_permission` VALUES ('128', '1', '112', '资源角色', '4', 'upms:resource:role', '/manage/resource/role', 'zmdi zmdi-widgets', '1', '1517148496970', '1517148496970');
INSERT INTO `upms_permission` VALUES ('129', '1', '5', '角色资源权限', '4', 'upms:role:resource', '/manage/role/resources', 'zmdi zmdi-widgets', '1', '1517206211685', '1517206211685');
INSERT INTO `upms_permission` VALUES ('131', '1', '108', '岗位资源权限', '4', 'upms:jobs:resource', '/manage/jobs/resources', 'zmdi zmdi-widgets', '1', '1517213406502', '1517213406502');
INSERT INTO `upms_permission` VALUES ('132', '1', '6', '用户资源权限', '4', 'upms:user:resource', '/manage/user/resources', 'zmdi zmdi-widgets', '1', '1517215868112', '1517215868112');
INSERT INTO `upms_permission` VALUES ('154', '1', '0', '公共编码管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1520474758503', '1520474758503');
INSERT INTO `upms_permission` VALUES ('155', '1', '154', '公共编码管理', '3', 'upms:codeClass:read', '/manage/codeClass/index', 'zmdi zmdi-widgets', '1', '1520474862867', '1520474862867');
INSERT INTO `upms_permission` VALUES ('156', '1', '155', '新增公共编码', '4', 'upms:codeClass:create', '/manage/codeClass/create', 'zmdi zmdi-widgets', '1', '1520475938604', '1520475938604');
INSERT INTO `upms_permission` VALUES ('157', '1', '155', '编辑公共编码', '4', 'upms:codeClass:update', '/manage/codeClass/update', 'zmdi zmdi-widgets', '1', '1520493470744', '1520493470744');
INSERT INTO `upms_permission` VALUES ('158', '1', '155', '删除公共编码', '4', 'upms:codeClass:delete', 'manage/codeClass/delete', 'zmdi zmdi-widgets', '1', '1520498454616', '1520498454616');
INSERT INTO `upms_permission` VALUES ('312', '1', '6', '重置密码', '4', 'upms:user:password', '/manage/user/init', 'zmdi zmdi-widgets', '1', '1531985067651', '1531985067651');
INSERT INTO `upms_permission` VALUES ('409', '10', '0', '测试目录', '1', '', '', 'zmdi zmdi-widgets', '1', '1537175214426', '1537175214426');
INSERT INTO `upms_permission` VALUES ('410', '10', '409', '测试菜单', '3', 'ted:demo:read', '/manage/demo/index', 'zmdi zmdi-widgets', '1', '1537175243988', '1537175243988');
INSERT INTO `upms_permission` VALUES ('411', '10', '410', '新增测试', '4', 'ted:demo:create', '/manage/demo/create', 'zmdi zmdi-widgets', '1', '1537175292027', '1537175292027');
INSERT INTO `upms_permission` VALUES ('415', '10', '410', '测试修改', '4', 'ted:demo:update', '/manage/demo/update', 'zmdi zmdi-widgets', '1', '1537182809835', '1537182809835');

-- ----------------------------
-- Table structure for upms_power_station
-- ----------------------------
DROP TABLE IF EXISTS `upms_power_station`;
CREATE TABLE `upms_power_station` (
  `station_id` int(10) NOT NULL,
  `station_name` varchar(100) DEFAULT NULL COMMENT '电站名',
  `description` varchar(1024) DEFAULT NULL COMMENT '描述',
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `set_up_time` datetime DEFAULT NULL COMMENT '组建时间',
  `covering_area` float(16,4) DEFAULT NULL COMMENT '占地面积',
  `installed_capacity` float(16,4) DEFAULT NULL COMMENT '实际装机容量',
  `manage_unit` int(10) DEFAULT NULL COMMENT '运维单位',
  `possess_unit` int(10) DEFAULT NULL COMMENT '资产所属单位',
  `location_token` varchar(64) DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`station_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upms_power_station
-- ----------------------------

-- ----------------------------
-- Table structure for upms_resource
-- ----------------------------
DROP TABLE IF EXISTS `upms_resource`;
CREATE TABLE `upms_resource` (
  `resource_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `resource_name` varchar(64) DEFAULT NULL COMMENT '资源名称',
  `business_object` varchar(20) DEFAULT NULL COMMENT '业务对象',
  `business_id` int(10) DEFAULT NULL COMMENT '业务id',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) NOT NULL COMMENT '排序',
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=744 DEFAULT CHARSET=utf8mb4 COMMENT='资源定义';

-- ----------------------------
-- Records of upms_resource
-- ----------------------------
INSERT INTO `upms_resource` VALUES ('2', '102新疆五家渠旭阳', 'station', '1001', '1517217253570', '2');
INSERT INTO `upms_resource` VALUES ('3', '103新疆哈密尚德', 'station', '1002', '1517217253570', '3');
INSERT INTO `upms_resource` VALUES ('4', '139部山东临沂意能库', 'station', '1045', '1517217253570', '4');
INSERT INTO `upms_resource` VALUES ('5', '127部金塔万晟库', 'station', '1028', '1517217253570', '5');
INSERT INTO `upms_resource` VALUES ('6', '128部肃南裕固库', 'station', '1029', '1517217253570', '6');
INSERT INTO `upms_resource` VALUES ('7', '107新疆焉耆新奥', 'station', '1010', '1517217253570', '7');
INSERT INTO `upms_resource` VALUES ('8', '157河北国威行唐', 'station', '1043', '1517217253570', '8');
INSERT INTO `upms_resource` VALUES ('9', '133西藏桑日尚德', 'station', '1035', '1517217253570', '9');
INSERT INTO `upms_resource` VALUES ('10', '103新疆哈密恒鑫', 'station', '1003', '1517217253570', '10');
INSERT INTO `upms_resource` VALUES ('11', '103新疆哈密浚鑫', 'station', '1004', '1517217253570', '11');
INSERT INTO `upms_resource` VALUES ('12', '103新疆哈密天宏', 'station', '1005', '1517217253570', '12');
INSERT INTO `upms_resource` VALUES ('13', '103新疆哈密益鑫', 'station', '1006', '1517217253570', '13');
INSERT INTO `upms_resource` VALUES ('14', '105新疆吐鲁番天利', 'station', '1007', '1517217253570', '14');
INSERT INTO `upms_resource` VALUES ('15', '106新疆吐鲁番联星', 'station', '1008', '1517217253570', '15');
INSERT INTO `upms_resource` VALUES ('16', '106新疆吐鲁番海鑫', 'station', '1009', '1517217253570', '16');
INSERT INTO `upms_resource` VALUES ('18', '108新疆和静正信', 'station', '1011', '1517217253570', '18');
INSERT INTO `upms_resource` VALUES ('19', '108新疆和静天宏', 'station', '1012', '1517217253570', '19');
INSERT INTO `upms_resource` VALUES ('20', '108新疆和静益鑫', 'station', '1013', '1517217253570', '20');
INSERT INTO `upms_resource` VALUES ('21', '109新疆江阴浚鑫', 'station', '1014', '1517217253570', '21');
INSERT INTO `upms_resource` VALUES ('22', '111新疆和硕恒鑫', 'station', '1015', '1517217253570', '22');
INSERT INTO `upms_resource` VALUES ('23', '112新疆且末通威', 'station', '1016', '1517217253570', '23');
INSERT INTO `upms_resource` VALUES ('24', '113新疆阿克苏大唐', 'station', '1017', '1517217253570', '24');
INSERT INTO `upms_resource` VALUES ('25', '115新疆温宿日月辉', 'station', '1018', '1517217253570', '25');
INSERT INTO `upms_resource` VALUES ('26', '116新疆乌什龙柏', 'station', '1019', '1517217253570', '26');
INSERT INTO `upms_resource` VALUES ('27', '117新疆图木舒克荣信', 'station', '1020', '1517217253570', '27');
INSERT INTO `upms_resource` VALUES ('28', '118克州百事德一期', 'station', '1021', '1517217253570', '28');
INSERT INTO `upms_resource` VALUES ('29', '118克州百事德二期', 'station', '1022', '1517217253570', '29');
INSERT INTO `upms_resource` VALUES ('30', '121新疆疏附浚鑫', 'station', '1023', '1517217253570', '30');
INSERT INTO `upms_resource` VALUES ('31', '121新疆疏附中建材', 'station', '1024', '1517217253570', '31');
INSERT INTO `upms_resource` VALUES ('32', '123新疆岳普湖高科', 'station', '1025', '1517217253570', '32');
INSERT INTO `upms_resource` VALUES ('33', '125新疆麦盖提正信', 'station', '1026', '1517217253570', '33');
INSERT INTO `upms_resource` VALUES ('34', '126新疆英吉沙融信', 'station', '1027', '1517217253570', '34');
INSERT INTO `upms_resource` VALUES ('37', '129甘肃金昌中科', 'station', '1030', '1517217253570', '37');
INSERT INTO `upms_resource` VALUES ('38', '130甘肃武威众合', 'station', '1031', '1517217253570', '38');
INSERT INTO `upms_resource` VALUES ('39', '130甘肃武威久源', 'station', '1032', '1517217253570', '39');
INSERT INTO `upms_resource` VALUES ('40', '131青海乌兰尚德', 'station', '1033', '1517217253570', '40');
INSERT INTO `upms_resource` VALUES ('41', '132青海海南鑫昇', 'station', '1034', '1517217253570', '41');
INSERT INTO `upms_resource` VALUES ('43', '135宁夏平罗一期', 'station', '1036', '1517217253570', '43');
INSERT INTO `upms_resource` VALUES ('44', '135宁夏平罗二期', 'station', '1037', '1517217253570', '44');
INSERT INTO `upms_resource` VALUES ('45', '135宁夏平罗三期', 'station', '1038', '1517217253570', '45');
INSERT INTO `upms_resource` VALUES ('46', '136河北阳原聚格', 'station', '1039', '1517217253570', '46');
INSERT INTO `upms_resource` VALUES ('47', '137河北张北苏龙', 'station', '1040', '1517217253570', '47');
INSERT INTO `upms_resource` VALUES ('48', '137河北尚义顺能', 'station', '1041', '1517217253570', '48');
INSERT INTO `upms_resource` VALUES ('49', '137河北尚义三龙', 'station', '1042', '1517217253570', '49');
INSERT INTO `upms_resource` VALUES ('51', '138云南保山顺风', 'station', '1044', '1517217253570', '51');
INSERT INTO `upms_resource` VALUES ('53', '139山东诸城', 'station', '1046', '1517217253570', '53');
INSERT INTO `upms_resource` VALUES ('54', '139江苏连云港顺阳', 'station', '1047', '1517217253570', '54');
INSERT INTO `upms_resource` VALUES ('55', '139江苏连云港顺阳', 'station', '1048', '1517217253570', '55');
INSERT INTO `upms_resource` VALUES ('56', '151江苏泰兴顺风', 'station', '1049', '1517217253570', '56');
INSERT INTO `upms_resource` VALUES ('57', '151江苏无锡鼎顺', 'station', '1050', '1517217253570', '57');
INSERT INTO `upms_resource` VALUES ('58', '151江苏镇江荣顺', 'station', '1051', '1517217253570', '58');
INSERT INTO `upms_resource` VALUES ('59', '151江苏宿迁顺风', 'station', '1052', '1517217253570', '59');
INSERT INTO `upms_resource` VALUES ('60', '153浙江绍兴环顺', 'station', '1053', '1517217253570', '60');
INSERT INTO `upms_resource` VALUES ('61', '156浙江衢州兴辉', 'station', '1054', '1517217253570', '61');
INSERT INTO `upms_resource` VALUES ('62', '155湖南桃江赛维', 'station', '1055', '1517217253570', '62');
INSERT INTO `upms_resource` VALUES ('63', '152青海格尔木力腾', 'station', '1056', '1517217253570', '63');
INSERT INTO `upms_resource` VALUES ('64', '153海宁中民', 'station', '1057', '1517217253570', '64');
INSERT INTO `upms_resource` VALUES ('65', '158博白县民衍', 'station', '1058', '1517217253570', '65');
INSERT INTO `upms_resource` VALUES ('69', '138保山长山', 'station', '1062', '1517217253570', '69');
INSERT INTO `upms_resource` VALUES ('70', '150诸城鑫顺风', 'station', '1063', '1517217253570', '70');
INSERT INTO `upms_resource` VALUES ('71', '139中电投青云', 'station', '1064', '1517217253570', '71');
INSERT INTO `upms_resource` VALUES ('72', '139顺阳大棚', 'station', '1065', '1517217253570', '72');
INSERT INTO `upms_resource` VALUES ('73', '159兴海协和', 'station', '1066', '1517217253570', '73');
INSERT INTO `upms_resource` VALUES ('74', '131共和协和', 'station', '1067', '1517217253570', '74');
INSERT INTO `upms_resource` VALUES ('532', '131贵南协和', 'station', '9014', '1526442556104', '1526442556104');
INSERT INTO `upms_resource` VALUES ('533', '153上海瀚元', 'station', '9015', '1526448179682', '1526448179682');
INSERT INTO `upms_resource` VALUES ('535', '201部中民新能宁夏同心有限公司', 'station', '10452', '1526471566994', '1526471566994');
INSERT INTO `upms_resource` VALUES ('536', '202部中民新能淳化电力有限公司', 'station', '10453', '1526471577401', '1526471577401');
INSERT INTO `upms_resource` VALUES ('537', '203部中民新能平山电力有限公司', 'station', '10454', '1526471590885', '1526471590885');
INSERT INTO `upms_resource` VALUES ('538', '204部中民阿拉善盟新能源有限公司', 'station', '10455', '1526471599104', '1526471599104');
INSERT INTO `upms_resource` VALUES ('539', '205部中民新能平定光伏发电有限公司', 'station', '10456', '1526471607119', '1526471607119');
INSERT INTO `upms_resource` VALUES ('540', '206部余江县金余电力有限公司', 'station', '10457', '1526471614932', '1526471614932');
INSERT INTO `upms_resource` VALUES ('541', '本部库', 'warehouse', '20', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('542', '101部 精河海润库', 'warehouse', '21', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('543', '102部 五家渠旭阳库', 'warehouse', '22', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('544', '103部 尚德哈密库', 'warehouse', '23', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('545', '103部 哈密恒鑫库', 'warehouse', '24', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('546', '103部 哈密浚鑫库', 'warehouse', '25', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('547', '103部 哈密天宏库', 'warehouse', '26', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('548', '103部 哈密益鑫库', 'warehouse', '27', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('549', '105部 天利恩泽库', 'warehouse', '28', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('550', '106部 吐鲁番联星库', 'warehouse', '29', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('551', '106部 吐鲁番海鑫库', 'warehouse', '30', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('552', '101部 精河海润（业主）库', 'warehouse', '31', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('553', '102部 五家渠旭阳（业主）库', 'warehouse', '32', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('554', '103部 尚德哈密（业主）库', 'warehouse', '33', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('555', '103部 哈密恒鑫（业主）库', 'warehouse', '34', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('556', '103部 哈密浚鑫（业主）库', 'warehouse', '35', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('557', '103部 哈密天宏（业主）库', 'warehouse', '36', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('558', '103部 哈密益鑫（业主）库', 'warehouse', '37', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('559', '105部 天利恩泽（业主）库', 'warehouse', '38', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('560', '106部 吐鲁番联星（业主）库', 'warehouse', '39', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('561', '106部 吐鲁番海鑫（业主）库', 'warehouse', '40', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('562', '131部 尚德乌兰库', 'warehouse', '41', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('563', '131部 共和协和库', 'warehouse', '42', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('564', '131部 海南州鑫昇库', 'warehouse', '43', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('565', '152部 青海力腾库', 'warehouse', '44', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('566', '131部 贵南协和库', 'warehouse', '45', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('567', '131部 兴海协和库', 'warehouse', '46', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('568', '133部 尚德桑日库', 'warehouse', '47', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('569', '131部 尚德乌兰（业主）库', 'warehouse', '48', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('570', '131部 共和协和（业主）库', 'warehouse', '49', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('571', '131部 海南州鑫昇（业主）库', 'warehouse', '50', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('572', '152部 青海力腾（业主）库', 'warehouse', '51', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('573', '131部 贵南协和（业主）库', 'warehouse', '52', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('574', '131部 兴海协和（业主）库', 'warehouse', '53', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('575', '133部 尚德桑日（业主）库', 'warehouse', '54', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('576', '136部 阳原聚格库', 'warehouse', '55', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('577', '137部 河北苏龙库', 'warehouse', '56', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('578', '137部 尚义顺能库', 'warehouse', '57', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('579', '137部 河北三龙库', 'warehouse', '58', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('580', '157部 河北国威库', 'warehouse', '59', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('581', '136部 阳原聚格（业主）库', 'warehouse', '60', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('582', '137部 河北苏龙（业主）库', 'warehouse', '61', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('583', '137部 尚义顺能（业主）库', 'warehouse', '62', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('584', '137部 河北三龙（业主）库', 'warehouse', '63', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('585', '157部 河北国威（业主）库', 'warehouse', '64', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('586', '139部 顺阳大棚库', 'warehouse', '65', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('587', '139部 中电投青云库', 'warehouse', '66', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('588', '151部 泰兴顺风库', 'warehouse', '67', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('589', '151部 无锡鼎顺库', 'warehouse', '68', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('590', '151部 镇江荣顺库', 'warehouse', '69', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('591', '151部 宿迁顺风库', 'warehouse', '70', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('592', '139部 临沂意能库', 'warehouse', '71', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('593', '150部 诸城鑫顺风库', 'warehouse', '72', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('594', '153部 绍兴环顺库', 'warehouse', '73', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('595', '153部 海宁中民库', 'warehouse', '74', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('596', '156部 衢州兴辉库', 'warehouse', '75', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('597', '139部 顺阳大棚（业主）库', 'warehouse', '76', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('598', '139部 中电投青云（业主）库', 'warehouse', '77', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('599', '151部 泰兴顺风（业主）库', 'warehouse', '78', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('600', '151部 无锡鼎顺（业主）库', 'warehouse', '79', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('601', '151部 镇江荣顺（业主）库', 'warehouse', '80', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('602', '151部 宿迁顺风（业主）库', 'warehouse', '81', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('603', '139部 临沂意能（业主）库', 'warehouse', '82', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('604', '150部 诸城鑫顺风（业主）库', 'warehouse', '83', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('605', '153部 绍兴环顺（业主）库', 'warehouse', '84', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('606', '153部 海宁中民（业主）库', 'warehouse', '85', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('607', '156部 衢州兴辉（业主）库', 'warehouse', '86', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('608', '158部 博白民衍库', 'warehouse', '87', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('609', '155部 桃江赛维库', 'warehouse', '88', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('610', '138部 保山长山库', 'warehouse', '89', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('611', '158部 博白民衍（业主）库', 'warehouse', '90', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('612', '155部 桃江赛维（业主）库', 'warehouse', '91', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('613', '138部 保山长山（业主）库', 'warehouse', '92', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('614', '新疆本部库', 'warehouse', '93', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('615', '107部 焉耆新奥库', 'warehouse', '94', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('616', '108部 和静正信库', 'warehouse', '95', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('617', '108部 和静天宏库', 'warehouse', '96', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('618', '108部 和静益鑫库', 'warehouse', '97', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('619', '109部 尉犁江阴库', 'warehouse', '98', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('620', '111部 和硕恒鑫库', 'warehouse', '99', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('621', '112部 通威且末库', 'warehouse', '100', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('622', '107部 焉耆新奥（业主）库', 'warehouse', '101', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('623', '108部 和静正信（业主）库', 'warehouse', '102', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('624', '108部 和静天宏（业主）库', 'warehouse', '103', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('625', '108部 和静益鑫（业主）库', 'warehouse', '104', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('626', '109部 尉犁江阴（业主）库', 'warehouse', '105', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('627', '111部 和硕恒鑫（业主）库', 'warehouse', '106', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('628', '112部 通威且末（业主）库', 'warehouse', '107', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('629', '113部 阿克苏大唐库', 'warehouse', '108', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('630', '115部 温宿日月辉库', 'warehouse', '109', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('631', '116部 乌什龙柏电库', 'warehouse', '110', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('632', '113部 阿克苏大唐（业主）库', 'warehouse', '111', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('633', '115部 温宿日月辉（业主）库', 'warehouse', '112', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('634', '116部 乌什龙柏电（业主）库', 'warehouse', '113', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('635', '117部 图木舒克库', 'warehouse', '114', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('636', '118部 克州百事德一期库', 'warehouse', '115', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('637', '118部 克州百事德二期库', 'warehouse', '116', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('638', '121部 疏附浚鑫库', 'warehouse', '117', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('639', '121部 疏附中建材库', 'warehouse', '118', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('640', '123部 岳普湖高科库', 'warehouse', '119', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('641', '125部 麦盖提金坛库', 'warehouse', '120', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('642', '126部 融信天和库', 'warehouse', '121', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('643', '117部 图木舒克（业主）库', 'warehouse', '122', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('644', '118部 克州百事德一期（业主）库', 'warehouse', '123', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('645', '118部 克州百事德二期（业主）库', 'warehouse', '124', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('646', '121部 疏附浚鑫（业主）库', 'warehouse', '125', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('647', '121部 疏附中建材（业主）库', 'warehouse', '126', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('648', '123部 岳普湖高科（业主）库', 'warehouse', '127', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('649', '125部 麦盖提金坛（业主）库', 'warehouse', '128', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('650', '126部 融信天和（业主）库', 'warehouse', '129', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('651', '甘肃本部库', 'warehouse', '130', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('652', '127部 金塔万晟库', 'warehouse', '131', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('653', '128部 肃南裕固库', 'warehouse', '132', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('654', '129部 金昌中科库', 'warehouse', '133', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('655', '130部 武威华东库', 'warehouse', '134', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('656', '130部 武威久源库', 'warehouse', '135', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('657', '127部 金塔万晟（业主）库', 'warehouse', '136', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('658', '128部 肃南裕固（业主）库', 'warehouse', '137', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('659', '129部 金昌中科（业主）库', 'warehouse', '138', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('660', '130部 武威华东（业主）库', 'warehouse', '139', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('661', '130部 武威久源（业主）库', 'warehouse', '140', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('662', '北京本部库', 'warehouse', '141', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('663', '135部 平罗一期库', 'warehouse', '142', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('664', '135部 平罗二、三期库', 'warehouse', '143', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('665', '135部 平罗一期（业主）库', 'warehouse', '144', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('666', '135部 平罗电二、三期（业主）库', 'warehouse', '145', '1517217253570', '88');
INSERT INTO `upms_resource` VALUES ('668', 'A类物资', 'materiel', '1', '1527320856760', '1527320856760');
INSERT INTO `upms_resource` VALUES ('669', 'B类物资', 'materiel', '2', '1527320871494', '1527320871494');
INSERT INTO `upms_resource` VALUES ('670', 'C类物资', 'materiel', '3', '1527320882276', '1527320882276');
INSERT INTO `upms_resource` VALUES ('671', '161部 同心电站（业主）库', 'warehouse', '157', '1532352261245', '1532352261245');
INSERT INTO `upms_resource` VALUES ('672', '162部 陕西淳化电站（业主）库', 'warehouse', '148', '1532352609104', '1532352609104');
INSERT INTO `upms_resource` VALUES ('673', '163部 河北平山电站（业主）库', 'warehouse', '150', '1532352649870', '1532352649870');
INSERT INTO `upms_resource` VALUES ('674', '164部 敖轮布拉格（业主）库', 'warehouse', '152', '1532352715745', '1532352715745');
INSERT INTO `upms_resource` VALUES ('675', '165部 山西阳泉电站（业主）库', 'warehouse', '154', '1532352748776', '1532352748776');
INSERT INTO `upms_resource` VALUES ('676', '166部 江西余江金余电站（业主）库', 'warehouse', '156', '1532352773792', '1532352773792');
INSERT INTO `upms_resource` VALUES ('677', '华东库', 'warehouse', '162', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('678', '江浙库', 'warehouse', '173', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('679', '南京库', 'warehouse', '199', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('680', '华南库', 'warehouse', '163', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('681', '华北库', 'warehouse', '164', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('682', '华中库', 'warehouse', '165', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('683', '西南库', 'warehouse', '166', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('684', '西北库', 'warehouse', '167', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('685', '东北库', 'warehouse', '168', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('686', '新疆库', 'warehouse', '169', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('687', '甘肃库', 'warehouse', '170', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('688', '北京库', 'warehouse', '171', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('689', '青藏库', 'warehouse', '172', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('690', '河北库', 'warehouse', '174', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('691', '四川库', 'warehouse', '175', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('692', '云南库', 'warehouse', '176', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('693', '巴州库', 'warehouse', '177', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('694', '阿克苏库', 'warehouse', '178', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('695', '喀什库', 'warehouse', '179', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('696', '哈密库', 'warehouse', '180', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('697', '吐鲁番库', 'warehouse', '181', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('698', '金昌库', 'warehouse', '182', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('699', '金塔库', 'warehouse', '183', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('700', '平罗库', 'warehouse', '184', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('701', '咸阳库', 'warehouse', '185', '1532435627287', '1532435627287');
INSERT INTO `upms_resource` VALUES ('702', '巴彦淖尔库', 'warehouse', '186', '1532435697238', '1532435697238');
INSERT INTO `upms_resource` VALUES ('703', null, 'warehouse', '187', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('704', '余江库', 'warehouse', '188', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('705', '石家庄库', 'warehouse', '189', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('706', '共和库', 'warehouse', '190', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('707', '格尔木库', 'warehouse', '191', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('708', '西藏库', 'warehouse', '192', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('709', '张北库', 'warehouse', '193', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('710', '连云港库', 'warehouse', '194', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('711', '衢州库', 'warehouse', '195', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('712', '保山库', 'warehouse', '196', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('713', '桃江库', 'warehouse', '197', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('714', '博白库', 'warehouse', '198', '1532435725661', '1532435725661');
INSERT INTO `upms_resource` VALUES ('715', '废旧物资库', 'warehouse', '245', '1534930796967', '1534930796967');
INSERT INTO `upms_resource` VALUES ('716', '旻投电力', 'warehouse', '1', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('717', '总部 ', 'warehouse', '2', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('718', '新疆子公司', 'warehouse', '3', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('719', '甘肃子公司', 'warehouse', '4', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('720', '北京子公司', 'warehouse', '5', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('721', '本部', 'warehouse', '6', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('722', '北疆', 'warehouse', '7', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('723', '青藏', 'warehouse', '8', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('724', '河北', 'warehouse', '9', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('725', '华东', 'warehouse', '10', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('726', '其它', 'warehouse', '11', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('727', '新疆本部', 'warehouse', '12', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('728', '巴州地区', 'warehouse', '13', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('729', '阿克苏地区', 'warehouse', '14', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('730', '喀什地区', 'warehouse', '15', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('731', '甘肃本部', 'warehouse', '16', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('732', '甘肃', 'warehouse', '17', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('733', '北京本部', 'warehouse', '18', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('734', '宁夏', 'warehouse', '19', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('735', '陕西', 'warehouse', '147', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('736', '河北', 'warehouse', '149', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('737', '内蒙古', 'warehouse', '151', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('738', '山西', 'warehouse', '153', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('739', '江西', 'warehouse', '155', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('740', '201部 宁夏同心电站库', 'warehouse', '158', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('741', '测试101', 'warehouse', '200', '1517217253570', '99');
INSERT INTO `upms_resource` VALUES ('742', '101部精和海润', 'station', '1000', '1535976755657', '1535976755657');
INSERT INTO `upms_resource` VALUES ('743', '107部 焉耆新奥（子公司）库', null, '200', '1517217253570', '99');

-- ----------------------------
-- Table structure for upms_resource_jobs
-- ----------------------------
DROP TABLE IF EXISTS `upms_resource_jobs`;
CREATE TABLE `upms_resource_jobs` (
  `resource_jobs_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `resource_id` int(10) unsigned NOT NULL COMMENT '资源编号',
  `jobs_id` int(10) unsigned NOT NULL COMMENT '岗位编号',
  PRIMARY KEY (`resource_jobs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_resource_jobs
-- ----------------------------
INSERT INTO `upms_resource_jobs` VALUES ('10', '4', '3');
INSERT INTO `upms_resource_jobs` VALUES ('11', '1', '5');
INSERT INTO `upms_resource_jobs` VALUES ('12', '5', '5');
INSERT INTO `upms_resource_jobs` VALUES ('15', '4', '2');
INSERT INTO `upms_resource_jobs` VALUES ('16', '1', '2');
INSERT INTO `upms_resource_jobs` VALUES ('17', '1', '1');
INSERT INTO `upms_resource_jobs` VALUES ('18', '5', '1');

-- ----------------------------
-- Table structure for upms_resource_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_resource_role`;
CREATE TABLE `upms_resource_role` (
  `upms_resource_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `resource_id` int(10) unsigned NOT NULL COMMENT '资源编号',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`upms_resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_resource_role
-- ----------------------------
INSERT INTO `upms_resource_role` VALUES ('19', '670', '14');
INSERT INTO `upms_resource_role` VALUES ('20', '541', '15');
INSERT INTO `upms_resource_role` VALUES ('21', '542', '15');
INSERT INTO `upms_resource_role` VALUES ('22', '543', '15');
INSERT INTO `upms_resource_role` VALUES ('23', '544', '15');
INSERT INTO `upms_resource_role` VALUES ('24', '545', '15');
INSERT INTO `upms_resource_role` VALUES ('25', '546', '15');
INSERT INTO `upms_resource_role` VALUES ('26', '547', '15');
INSERT INTO `upms_resource_role` VALUES ('27', '548', '15');
INSERT INTO `upms_resource_role` VALUES ('28', '549', '15');
INSERT INTO `upms_resource_role` VALUES ('29', '550', '15');
INSERT INTO `upms_resource_role` VALUES ('30', '551', '15');
INSERT INTO `upms_resource_role` VALUES ('31', '552', '15');
INSERT INTO `upms_resource_role` VALUES ('32', '553', '15');
INSERT INTO `upms_resource_role` VALUES ('33', '554', '15');
INSERT INTO `upms_resource_role` VALUES ('34', '555', '15');
INSERT INTO `upms_resource_role` VALUES ('35', '556', '15');
INSERT INTO `upms_resource_role` VALUES ('36', '557', '15');
INSERT INTO `upms_resource_role` VALUES ('37', '558', '15');
INSERT INTO `upms_resource_role` VALUES ('38', '559', '15');
INSERT INTO `upms_resource_role` VALUES ('39', '560', '15');
INSERT INTO `upms_resource_role` VALUES ('40', '561', '15');
INSERT INTO `upms_resource_role` VALUES ('41', '562', '15');
INSERT INTO `upms_resource_role` VALUES ('42', '563', '15');
INSERT INTO `upms_resource_role` VALUES ('43', '564', '15');
INSERT INTO `upms_resource_role` VALUES ('44', '565', '15');
INSERT INTO `upms_resource_role` VALUES ('45', '566', '15');
INSERT INTO `upms_resource_role` VALUES ('46', '567', '15');
INSERT INTO `upms_resource_role` VALUES ('47', '568', '15');
INSERT INTO `upms_resource_role` VALUES ('48', '569', '15');
INSERT INTO `upms_resource_role` VALUES ('49', '570', '15');
INSERT INTO `upms_resource_role` VALUES ('50', '571', '15');
INSERT INTO `upms_resource_role` VALUES ('51', '572', '15');
INSERT INTO `upms_resource_role` VALUES ('52', '573', '15');
INSERT INTO `upms_resource_role` VALUES ('53', '574', '15');
INSERT INTO `upms_resource_role` VALUES ('54', '575', '15');
INSERT INTO `upms_resource_role` VALUES ('55', '576', '15');
INSERT INTO `upms_resource_role` VALUES ('56', '577', '15');
INSERT INTO `upms_resource_role` VALUES ('57', '578', '15');
INSERT INTO `upms_resource_role` VALUES ('58', '579', '15');
INSERT INTO `upms_resource_role` VALUES ('59', '580', '15');
INSERT INTO `upms_resource_role` VALUES ('60', '581', '15');
INSERT INTO `upms_resource_role` VALUES ('61', '582', '15');
INSERT INTO `upms_resource_role` VALUES ('62', '583', '15');
INSERT INTO `upms_resource_role` VALUES ('63', '584', '15');
INSERT INTO `upms_resource_role` VALUES ('64', '585', '15');
INSERT INTO `upms_resource_role` VALUES ('65', '586', '15');
INSERT INTO `upms_resource_role` VALUES ('66', '587', '15');
INSERT INTO `upms_resource_role` VALUES ('67', '588', '15');
INSERT INTO `upms_resource_role` VALUES ('68', '589', '15');
INSERT INTO `upms_resource_role` VALUES ('69', '590', '15');
INSERT INTO `upms_resource_role` VALUES ('70', '591', '15');
INSERT INTO `upms_resource_role` VALUES ('71', '592', '15');
INSERT INTO `upms_resource_role` VALUES ('72', '593', '15');
INSERT INTO `upms_resource_role` VALUES ('73', '594', '15');
INSERT INTO `upms_resource_role` VALUES ('74', '595', '15');
INSERT INTO `upms_resource_role` VALUES ('75', '596', '15');
INSERT INTO `upms_resource_role` VALUES ('76', '597', '15');
INSERT INTO `upms_resource_role` VALUES ('77', '598', '15');
INSERT INTO `upms_resource_role` VALUES ('78', '599', '15');
INSERT INTO `upms_resource_role` VALUES ('79', '600', '15');
INSERT INTO `upms_resource_role` VALUES ('80', '601', '15');
INSERT INTO `upms_resource_role` VALUES ('81', '602', '15');
INSERT INTO `upms_resource_role` VALUES ('82', '603', '15');
INSERT INTO `upms_resource_role` VALUES ('83', '604', '15');
INSERT INTO `upms_resource_role` VALUES ('84', '605', '15');
INSERT INTO `upms_resource_role` VALUES ('85', '606', '15');
INSERT INTO `upms_resource_role` VALUES ('86', '607', '15');
INSERT INTO `upms_resource_role` VALUES ('87', '608', '15');
INSERT INTO `upms_resource_role` VALUES ('88', '609', '15');
INSERT INTO `upms_resource_role` VALUES ('89', '610', '15');
INSERT INTO `upms_resource_role` VALUES ('90', '611', '15');
INSERT INTO `upms_resource_role` VALUES ('91', '612', '15');
INSERT INTO `upms_resource_role` VALUES ('92', '613', '15');
INSERT INTO `upms_resource_role` VALUES ('93', '614', '15');
INSERT INTO `upms_resource_role` VALUES ('94', '615', '15');
INSERT INTO `upms_resource_role` VALUES ('95', '616', '15');
INSERT INTO `upms_resource_role` VALUES ('96', '617', '15');
INSERT INTO `upms_resource_role` VALUES ('97', '618', '15');
INSERT INTO `upms_resource_role` VALUES ('98', '619', '15');
INSERT INTO `upms_resource_role` VALUES ('99', '620', '15');
INSERT INTO `upms_resource_role` VALUES ('100', '621', '15');
INSERT INTO `upms_resource_role` VALUES ('101', '622', '15');
INSERT INTO `upms_resource_role` VALUES ('102', '623', '15');
INSERT INTO `upms_resource_role` VALUES ('103', '624', '15');
INSERT INTO `upms_resource_role` VALUES ('104', '625', '15');
INSERT INTO `upms_resource_role` VALUES ('105', '626', '15');
INSERT INTO `upms_resource_role` VALUES ('106', '627', '15');
INSERT INTO `upms_resource_role` VALUES ('107', '628', '15');
INSERT INTO `upms_resource_role` VALUES ('108', '629', '15');
INSERT INTO `upms_resource_role` VALUES ('109', '630', '15');
INSERT INTO `upms_resource_role` VALUES ('110', '631', '15');
INSERT INTO `upms_resource_role` VALUES ('111', '632', '15');
INSERT INTO `upms_resource_role` VALUES ('112', '633', '15');
INSERT INTO `upms_resource_role` VALUES ('113', '634', '15');
INSERT INTO `upms_resource_role` VALUES ('114', '635', '15');
INSERT INTO `upms_resource_role` VALUES ('115', '636', '15');
INSERT INTO `upms_resource_role` VALUES ('116', '637', '15');
INSERT INTO `upms_resource_role` VALUES ('117', '638', '15');
INSERT INTO `upms_resource_role` VALUES ('118', '639', '15');
INSERT INTO `upms_resource_role` VALUES ('119', '640', '15');
INSERT INTO `upms_resource_role` VALUES ('120', '641', '15');
INSERT INTO `upms_resource_role` VALUES ('121', '642', '15');
INSERT INTO `upms_resource_role` VALUES ('122', '643', '15');
INSERT INTO `upms_resource_role` VALUES ('123', '644', '15');
INSERT INTO `upms_resource_role` VALUES ('124', '645', '15');
INSERT INTO `upms_resource_role` VALUES ('125', '646', '15');
INSERT INTO `upms_resource_role` VALUES ('126', '647', '15');
INSERT INTO `upms_resource_role` VALUES ('127', '648', '15');
INSERT INTO `upms_resource_role` VALUES ('128', '649', '15');
INSERT INTO `upms_resource_role` VALUES ('129', '650', '15');
INSERT INTO `upms_resource_role` VALUES ('130', '651', '15');
INSERT INTO `upms_resource_role` VALUES ('131', '652', '15');
INSERT INTO `upms_resource_role` VALUES ('132', '653', '15');
INSERT INTO `upms_resource_role` VALUES ('133', '654', '15');
INSERT INTO `upms_resource_role` VALUES ('134', '655', '15');
INSERT INTO `upms_resource_role` VALUES ('135', '656', '15');
INSERT INTO `upms_resource_role` VALUES ('136', '657', '15');
INSERT INTO `upms_resource_role` VALUES ('137', '658', '15');
INSERT INTO `upms_resource_role` VALUES ('138', '659', '15');
INSERT INTO `upms_resource_role` VALUES ('139', '660', '15');
INSERT INTO `upms_resource_role` VALUES ('140', '661', '15');
INSERT INTO `upms_resource_role` VALUES ('141', '662', '15');
INSERT INTO `upms_resource_role` VALUES ('142', '663', '15');
INSERT INTO `upms_resource_role` VALUES ('143', '664', '15');
INSERT INTO `upms_resource_role` VALUES ('144', '665', '15');
INSERT INTO `upms_resource_role` VALUES ('145', '666', '15');
INSERT INTO `upms_resource_role` VALUES ('146', '668', '15');
INSERT INTO `upms_resource_role` VALUES ('147', '669', '15');
INSERT INTO `upms_resource_role` VALUES ('148', '670', '15');
INSERT INTO `upms_resource_role` VALUES ('234', '541', '6');
INSERT INTO `upms_resource_role` VALUES ('235', '542', '6');
INSERT INTO `upms_resource_role` VALUES ('236', '543', '6');
INSERT INTO `upms_resource_role` VALUES ('237', '544', '6');
INSERT INTO `upms_resource_role` VALUES ('238', '545', '6');
INSERT INTO `upms_resource_role` VALUES ('239', '546', '6');
INSERT INTO `upms_resource_role` VALUES ('240', '547', '6');
INSERT INTO `upms_resource_role` VALUES ('241', '548', '6');
INSERT INTO `upms_resource_role` VALUES ('242', '549', '6');
INSERT INTO `upms_resource_role` VALUES ('243', '550', '6');
INSERT INTO `upms_resource_role` VALUES ('244', '551', '6');
INSERT INTO `upms_resource_role` VALUES ('245', '552', '6');
INSERT INTO `upms_resource_role` VALUES ('246', '553', '6');
INSERT INTO `upms_resource_role` VALUES ('247', '554', '6');
INSERT INTO `upms_resource_role` VALUES ('248', '555', '6');
INSERT INTO `upms_resource_role` VALUES ('249', '556', '6');
INSERT INTO `upms_resource_role` VALUES ('250', '557', '6');
INSERT INTO `upms_resource_role` VALUES ('251', '558', '6');
INSERT INTO `upms_resource_role` VALUES ('252', '559', '6');
INSERT INTO `upms_resource_role` VALUES ('253', '560', '6');
INSERT INTO `upms_resource_role` VALUES ('254', '561', '6');
INSERT INTO `upms_resource_role` VALUES ('255', '562', '6');
INSERT INTO `upms_resource_role` VALUES ('256', '563', '6');
INSERT INTO `upms_resource_role` VALUES ('257', '564', '6');
INSERT INTO `upms_resource_role` VALUES ('258', '565', '6');
INSERT INTO `upms_resource_role` VALUES ('259', '566', '6');
INSERT INTO `upms_resource_role` VALUES ('260', '567', '6');
INSERT INTO `upms_resource_role` VALUES ('261', '568', '6');
INSERT INTO `upms_resource_role` VALUES ('262', '569', '6');
INSERT INTO `upms_resource_role` VALUES ('263', '570', '6');
INSERT INTO `upms_resource_role` VALUES ('264', '571', '6');
INSERT INTO `upms_resource_role` VALUES ('265', '572', '6');
INSERT INTO `upms_resource_role` VALUES ('266', '573', '6');
INSERT INTO `upms_resource_role` VALUES ('267', '574', '6');
INSERT INTO `upms_resource_role` VALUES ('268', '575', '6');
INSERT INTO `upms_resource_role` VALUES ('269', '576', '6');
INSERT INTO `upms_resource_role` VALUES ('270', '577', '6');
INSERT INTO `upms_resource_role` VALUES ('271', '578', '6');
INSERT INTO `upms_resource_role` VALUES ('272', '579', '6');
INSERT INTO `upms_resource_role` VALUES ('273', '580', '6');
INSERT INTO `upms_resource_role` VALUES ('274', '581', '6');
INSERT INTO `upms_resource_role` VALUES ('275', '582', '6');
INSERT INTO `upms_resource_role` VALUES ('276', '583', '6');
INSERT INTO `upms_resource_role` VALUES ('277', '584', '6');
INSERT INTO `upms_resource_role` VALUES ('278', '585', '6');
INSERT INTO `upms_resource_role` VALUES ('279', '586', '6');
INSERT INTO `upms_resource_role` VALUES ('280', '587', '6');
INSERT INTO `upms_resource_role` VALUES ('281', '588', '6');
INSERT INTO `upms_resource_role` VALUES ('282', '589', '6');
INSERT INTO `upms_resource_role` VALUES ('283', '590', '6');
INSERT INTO `upms_resource_role` VALUES ('284', '591', '6');
INSERT INTO `upms_resource_role` VALUES ('285', '592', '6');
INSERT INTO `upms_resource_role` VALUES ('286', '593', '6');
INSERT INTO `upms_resource_role` VALUES ('287', '594', '6');
INSERT INTO `upms_resource_role` VALUES ('288', '595', '6');
INSERT INTO `upms_resource_role` VALUES ('289', '596', '6');
INSERT INTO `upms_resource_role` VALUES ('290', '597', '6');
INSERT INTO `upms_resource_role` VALUES ('291', '598', '6');
INSERT INTO `upms_resource_role` VALUES ('292', '599', '6');
INSERT INTO `upms_resource_role` VALUES ('293', '600', '6');
INSERT INTO `upms_resource_role` VALUES ('294', '601', '6');
INSERT INTO `upms_resource_role` VALUES ('295', '602', '6');
INSERT INTO `upms_resource_role` VALUES ('296', '603', '6');
INSERT INTO `upms_resource_role` VALUES ('297', '604', '6');
INSERT INTO `upms_resource_role` VALUES ('298', '605', '6');
INSERT INTO `upms_resource_role` VALUES ('299', '606', '6');
INSERT INTO `upms_resource_role` VALUES ('300', '607', '6');
INSERT INTO `upms_resource_role` VALUES ('301', '608', '6');
INSERT INTO `upms_resource_role` VALUES ('302', '609', '6');
INSERT INTO `upms_resource_role` VALUES ('303', '610', '6');
INSERT INTO `upms_resource_role` VALUES ('304', '611', '6');
INSERT INTO `upms_resource_role` VALUES ('305', '612', '6');
INSERT INTO `upms_resource_role` VALUES ('306', '613', '6');
INSERT INTO `upms_resource_role` VALUES ('307', '614', '6');
INSERT INTO `upms_resource_role` VALUES ('308', '615', '6');
INSERT INTO `upms_resource_role` VALUES ('309', '616', '6');
INSERT INTO `upms_resource_role` VALUES ('310', '617', '6');
INSERT INTO `upms_resource_role` VALUES ('311', '618', '6');
INSERT INTO `upms_resource_role` VALUES ('312', '619', '6');
INSERT INTO `upms_resource_role` VALUES ('313', '620', '6');
INSERT INTO `upms_resource_role` VALUES ('314', '621', '6');
INSERT INTO `upms_resource_role` VALUES ('315', '622', '6');
INSERT INTO `upms_resource_role` VALUES ('316', '623', '6');
INSERT INTO `upms_resource_role` VALUES ('317', '624', '6');
INSERT INTO `upms_resource_role` VALUES ('318', '625', '6');
INSERT INTO `upms_resource_role` VALUES ('319', '626', '6');
INSERT INTO `upms_resource_role` VALUES ('320', '627', '6');
INSERT INTO `upms_resource_role` VALUES ('321', '628', '6');
INSERT INTO `upms_resource_role` VALUES ('322', '629', '6');
INSERT INTO `upms_resource_role` VALUES ('323', '630', '6');
INSERT INTO `upms_resource_role` VALUES ('324', '631', '6');
INSERT INTO `upms_resource_role` VALUES ('325', '632', '6');
INSERT INTO `upms_resource_role` VALUES ('326', '633', '6');
INSERT INTO `upms_resource_role` VALUES ('327', '634', '6');
INSERT INTO `upms_resource_role` VALUES ('328', '635', '6');
INSERT INTO `upms_resource_role` VALUES ('329', '636', '6');
INSERT INTO `upms_resource_role` VALUES ('330', '637', '6');
INSERT INTO `upms_resource_role` VALUES ('331', '638', '6');
INSERT INTO `upms_resource_role` VALUES ('332', '639', '6');
INSERT INTO `upms_resource_role` VALUES ('333', '640', '6');
INSERT INTO `upms_resource_role` VALUES ('334', '641', '6');
INSERT INTO `upms_resource_role` VALUES ('335', '642', '6');
INSERT INTO `upms_resource_role` VALUES ('336', '643', '6');
INSERT INTO `upms_resource_role` VALUES ('337', '644', '6');
INSERT INTO `upms_resource_role` VALUES ('338', '645', '6');
INSERT INTO `upms_resource_role` VALUES ('339', '646', '6');
INSERT INTO `upms_resource_role` VALUES ('340', '647', '6');
INSERT INTO `upms_resource_role` VALUES ('341', '648', '6');
INSERT INTO `upms_resource_role` VALUES ('342', '649', '6');
INSERT INTO `upms_resource_role` VALUES ('343', '650', '6');
INSERT INTO `upms_resource_role` VALUES ('344', '651', '6');
INSERT INTO `upms_resource_role` VALUES ('345', '652', '6');
INSERT INTO `upms_resource_role` VALUES ('346', '653', '6');
INSERT INTO `upms_resource_role` VALUES ('347', '654', '6');
INSERT INTO `upms_resource_role` VALUES ('348', '655', '6');
INSERT INTO `upms_resource_role` VALUES ('349', '656', '6');
INSERT INTO `upms_resource_role` VALUES ('350', '657', '6');
INSERT INTO `upms_resource_role` VALUES ('351', '658', '6');
INSERT INTO `upms_resource_role` VALUES ('352', '659', '6');
INSERT INTO `upms_resource_role` VALUES ('353', '660', '6');
INSERT INTO `upms_resource_role` VALUES ('354', '661', '6');
INSERT INTO `upms_resource_role` VALUES ('355', '662', '6');
INSERT INTO `upms_resource_role` VALUES ('356', '663', '6');
INSERT INTO `upms_resource_role` VALUES ('357', '664', '6');
INSERT INTO `upms_resource_role` VALUES ('358', '665', '6');
INSERT INTO `upms_resource_role` VALUES ('359', '666', '6');
INSERT INTO `upms_resource_role` VALUES ('360', '669', '14');
INSERT INTO `upms_resource_role` VALUES ('361', '1', '1');
INSERT INTO `upms_resource_role` VALUES ('362', '2', '1');
INSERT INTO `upms_resource_role` VALUES ('363', '3', '1');
INSERT INTO `upms_resource_role` VALUES ('364', '542', '1');
INSERT INTO `upms_resource_role` VALUES ('365', '543', '1');
INSERT INTO `upms_resource_role` VALUES ('366', '544', '1');
INSERT INTO `upms_resource_role` VALUES ('367', '668', '1');
INSERT INTO `upms_resource_role` VALUES ('368', '669', '1');
INSERT INTO `upms_resource_role` VALUES ('369', '670', '1');
INSERT INTO `upms_resource_role` VALUES ('370', '677', '15');
INSERT INTO `upms_resource_role` VALUES ('371', '678', '15');
INSERT INTO `upms_resource_role` VALUES ('372', '679', '15');
INSERT INTO `upms_resource_role` VALUES ('374', '677', '19');
INSERT INTO `upms_resource_role` VALUES ('375', '678', '19');
INSERT INTO `upms_resource_role` VALUES ('376', '679', '19');
INSERT INTO `upms_resource_role` VALUES ('377', '677', '21');
INSERT INTO `upms_resource_role` VALUES ('378', '678', '21');
INSERT INTO `upms_resource_role` VALUES ('379', '679', '21');
INSERT INTO `upms_resource_role` VALUES ('380', '677', '23');
INSERT INTO `upms_resource_role` VALUES ('381', '678', '23');
INSERT INTO `upms_resource_role` VALUES ('382', '679', '23');
INSERT INTO `upms_resource_role` VALUES ('383', '615', '27');
INSERT INTO `upms_resource_role` VALUES ('384', '616', '27');
INSERT INTO `upms_resource_role` VALUES ('385', '617', '27');
INSERT INTO `upms_resource_role` VALUES ('386', '618', '27');
INSERT INTO `upms_resource_role` VALUES ('387', '619', '27');
INSERT INTO `upms_resource_role` VALUES ('388', '677', '27');
INSERT INTO `upms_resource_role` VALUES ('389', '678', '27');
INSERT INTO `upms_resource_role` VALUES ('390', '679', '27');
INSERT INTO `upms_resource_role` VALUES ('391', '692', '27');
INSERT INTO `upms_resource_role` VALUES ('392', '18', '32');
INSERT INTO `upms_resource_role` VALUES ('393', '19', '32');
INSERT INTO `upms_resource_role` VALUES ('394', '20', '32');
INSERT INTO `upms_resource_role` VALUES ('395', '21', '32');
INSERT INTO `upms_resource_role` VALUES ('396', '22', '32');
INSERT INTO `upms_resource_role` VALUES ('397', '23', '32');
INSERT INTO `upms_resource_role` VALUES ('398', '16', '27');
INSERT INTO `upms_resource_role` VALUES ('399', '18', '27');
INSERT INTO `upms_resource_role` VALUES ('400', '19', '27');
INSERT INTO `upms_resource_role` VALUES ('401', '20', '27');
INSERT INTO `upms_resource_role` VALUES ('402', '21', '27');
INSERT INTO `upms_resource_role` VALUES ('403', '684', '15');
INSERT INTO `upms_resource_role` VALUES ('404', '686', '15');
INSERT INTO `upms_resource_role` VALUES ('405', '693', '15');
INSERT INTO `upms_resource_role` VALUES ('406', '685', '15');
INSERT INTO `upms_resource_role` VALUES ('407', '688', '15');
INSERT INTO `upms_resource_role` VALUES ('408', '707', '15');
INSERT INTO `upms_resource_role` VALUES ('409', '685', '15');
INSERT INTO `upms_resource_role` VALUES ('410', '688', '15');
INSERT INTO `upms_resource_role` VALUES ('411', '707', '15');
INSERT INTO `upms_resource_role` VALUES ('412', '684', '21');
INSERT INTO `upms_resource_role` VALUES ('413', '685', '21');
INSERT INTO `upms_resource_role` VALUES ('414', '686', '21');
INSERT INTO `upms_resource_role` VALUES ('415', '688', '21');
INSERT INTO `upms_resource_role` VALUES ('416', '693', '21');
INSERT INTO `upms_resource_role` VALUES ('417', '707', '21');
INSERT INTO `upms_resource_role` VALUES ('418', '1', '25');
INSERT INTO `upms_resource_role` VALUES ('419', '2', '25');
INSERT INTO `upms_resource_role` VALUES ('420', '3', '25');
INSERT INTO `upms_resource_role` VALUES ('421', '4', '25');
INSERT INTO `upms_resource_role` VALUES ('422', '5', '25');
INSERT INTO `upms_resource_role` VALUES ('423', '6', '25');
INSERT INTO `upms_resource_role` VALUES ('424', '7', '25');
INSERT INTO `upms_resource_role` VALUES ('425', '8', '25');
INSERT INTO `upms_resource_role` VALUES ('426', '10', '25');
INSERT INTO `upms_resource_role` VALUES ('427', '11', '25');
INSERT INTO `upms_resource_role` VALUES ('428', '12', '25');
INSERT INTO `upms_resource_role` VALUES ('429', '13', '25');
INSERT INTO `upms_resource_role` VALUES ('430', '14', '25');
INSERT INTO `upms_resource_role` VALUES ('431', '15', '25');
INSERT INTO `upms_resource_role` VALUES ('432', '16', '25');
INSERT INTO `upms_resource_role` VALUES ('433', '18', '25');
INSERT INTO `upms_resource_role` VALUES ('434', '544', '25');
INSERT INTO `upms_resource_role` VALUES ('435', '618', '25');
INSERT INTO `upms_resource_role` VALUES ('436', '684', '25');
INSERT INTO `upms_resource_role` VALUES ('437', '685', '25');
INSERT INTO `upms_resource_role` VALUES ('438', '686', '25');
INSERT INTO `upms_resource_role` VALUES ('439', '688', '25');
INSERT INTO `upms_resource_role` VALUES ('440', '693', '25');
INSERT INTO `upms_resource_role` VALUES ('441', '707', '25');
INSERT INTO `upms_resource_role` VALUES ('442', '552', '1');
INSERT INTO `upms_resource_role` VALUES ('443', '553', '1');
INSERT INTO `upms_resource_role` VALUES ('444', '554', '1');
INSERT INTO `upms_resource_role` VALUES ('445', '555', '1');
INSERT INTO `upms_resource_role` VALUES ('446', '556', '1');
INSERT INTO `upms_resource_role` VALUES ('447', '611', '1');
INSERT INTO `upms_resource_role` VALUES ('448', '715', '1');

-- ----------------------------
-- Table structure for upms_resource_user
-- ----------------------------
DROP TABLE IF EXISTS `upms_resource_user`;
CREATE TABLE `upms_resource_user` (
  `resource_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `resource_id` int(10) unsigned NOT NULL COMMENT '资源编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  PRIMARY KEY (`resource_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2017 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_resource_user
-- ----------------------------
INSERT INTO `upms_resource_user` VALUES ('4', '2', '7');
INSERT INTO `upms_resource_user` VALUES ('5', '3', '7');
INSERT INTO `upms_resource_user` VALUES ('6', '3', '8');
INSERT INTO `upms_resource_user` VALUES ('7', '4', '7');
INSERT INTO `upms_resource_user` VALUES ('8', '4', '8');
INSERT INTO `upms_resource_user` VALUES ('10', '6', '3');
INSERT INTO `upms_resource_user` VALUES ('11', '5', '4');
INSERT INTO `upms_resource_user` VALUES ('12', '5', '3');
INSERT INTO `upms_resource_user` VALUES ('13', '5', '3');
INSERT INTO `upms_resource_user` VALUES ('14', '5', '3');
INSERT INTO `upms_resource_user` VALUES ('21', '2', '2');
INSERT INTO `upms_resource_user` VALUES ('22', '4', '2');
INSERT INTO `upms_resource_user` VALUES ('25', '2', '304');
INSERT INTO `upms_resource_user` VALUES ('26', '3', '304');
INSERT INTO `upms_resource_user` VALUES ('27', '10', '304');
INSERT INTO `upms_resource_user` VALUES ('28', '11', '304');
INSERT INTO `upms_resource_user` VALUES ('29', '12', '304');
INSERT INTO `upms_resource_user` VALUES ('30', '13', '357');
INSERT INTO `upms_resource_user` VALUES ('31', '14', '357');
INSERT INTO `upms_resource_user` VALUES ('32', '15', '190');
INSERT INTO `upms_resource_user` VALUES ('34', '16', '386');
INSERT INTO `upms_resource_user` VALUES ('35', '17', '335');
INSERT INTO `upms_resource_user` VALUES ('36', '2', '476');
INSERT INTO `upms_resource_user` VALUES ('37', '3', '256');
INSERT INTO `upms_resource_user` VALUES ('38', '18', '479');
INSERT INTO `upms_resource_user` VALUES ('39', '11', '256');
INSERT INTO `upms_resource_user` VALUES ('40', '19', '200');
INSERT INTO `upms_resource_user` VALUES ('41', '20', '206');
INSERT INTO `upms_resource_user` VALUES ('43', '10', '200');
INSERT INTO `upms_resource_user` VALUES ('44', '11', '206');
INSERT INTO `upms_resource_user` VALUES ('45', '12', '213');
INSERT INTO `upms_resource_user` VALUES ('46', '13', '215');
INSERT INTO `upms_resource_user` VALUES ('47', '15', '265');
INSERT INTO `upms_resource_user` VALUES ('48', '16', '265');
INSERT INTO `upms_resource_user` VALUES ('49', '40', '268');
INSERT INTO `upms_resource_user` VALUES ('50', '60', '17');
INSERT INTO `upms_resource_user` VALUES ('51', '64', '17');
INSERT INTO `upms_resource_user` VALUES ('52', '41', '272');
INSERT INTO `upms_resource_user` VALUES ('53', '63', '314');
INSERT INTO `upms_resource_user` VALUES ('54', '9', '479');
INSERT INTO `upms_resource_user` VALUES ('55', '46', '282');
INSERT INTO `upms_resource_user` VALUES ('56', '47', '284');
INSERT INTO `upms_resource_user` VALUES ('57', '48', '294');
INSERT INTO `upms_resource_user` VALUES ('58', '49', '294');
INSERT INTO `upms_resource_user` VALUES ('59', '8', '335');
INSERT INTO `upms_resource_user` VALUES ('60', '56', '311');
INSERT INTO `upms_resource_user` VALUES ('62', '58', '311');
INSERT INTO `upms_resource_user` VALUES ('63', '59', '313');
INSERT INTO `upms_resource_user` VALUES ('64', '4', '307');
INSERT INTO `upms_resource_user` VALUES ('65', '61', '330');
INSERT INTO `upms_resource_user` VALUES ('66', '65', '483');
INSERT INTO `upms_resource_user` VALUES ('67', '62', '325');
INSERT INTO `upms_resource_user` VALUES ('68', '7', '386');
INSERT INTO `upms_resource_user` VALUES ('69', '18', '393');
INSERT INTO `upms_resource_user` VALUES ('70', '19', '398');
INSERT INTO `upms_resource_user` VALUES ('71', '20', '403');
INSERT INTO `upms_resource_user` VALUES ('72', '22', '412');
INSERT INTO `upms_resource_user` VALUES ('73', '23', '416');
INSERT INTO `upms_resource_user` VALUES ('74', '24', '420');
INSERT INTO `upms_resource_user` VALUES ('75', '25', '424');
INSERT INTO `upms_resource_user` VALUES ('76', '26', '430');
INSERT INTO `upms_resource_user` VALUES ('77', '27', '434');
INSERT INTO `upms_resource_user` VALUES ('78', '28', '445');
INSERT INTO `upms_resource_user` VALUES ('79', '29', '445');
INSERT INTO `upms_resource_user` VALUES ('82', '32', '486');
INSERT INTO `upms_resource_user` VALUES ('83', '33', '459');
INSERT INTO `upms_resource_user` VALUES ('84', '5', '347');
INSERT INTO `upms_resource_user` VALUES ('85', '6', '350');
INSERT INTO `upms_resource_user` VALUES ('86', '37', '373');
INSERT INTO `upms_resource_user` VALUES ('87', '37', '373');
INSERT INTO `upms_resource_user` VALUES ('88', '39', '369');
INSERT INTO `upms_resource_user` VALUES ('89', '43', '243');
INSERT INTO `upms_resource_user` VALUES ('90', '44', '249');
INSERT INTO `upms_resource_user` VALUES ('91', '45', '249');
INSERT INTO `upms_resource_user` VALUES ('92', '66', '370');
INSERT INTO `upms_resource_user` VALUES ('93', '67', '462');
INSERT INTO `upms_resource_user` VALUES ('94', '68', '407');
INSERT INTO `upms_resource_user` VALUES ('95', '69', '295');
INSERT INTO `upms_resource_user` VALUES ('96', '70', '308');
INSERT INTO `upms_resource_user` VALUES ('97', '71', '307');
INSERT INTO `upms_resource_user` VALUES ('98', '72', '306');
INSERT INTO `upms_resource_user` VALUES ('99', '73', '471');
INSERT INTO `upms_resource_user` VALUES ('100', '74', '477');
INSERT INTO `upms_resource_user` VALUES ('101', '75', '259');
INSERT INTO `upms_resource_user` VALUES ('104', '2', '191');
INSERT INTO `upms_resource_user` VALUES ('105', '2', '192');
INSERT INTO `upms_resource_user` VALUES ('108', '2', '190');
INSERT INTO `upms_resource_user` VALUES ('109', '3', '255');
INSERT INTO `upms_resource_user` VALUES ('110', '10', '255');
INSERT INTO `upms_resource_user` VALUES ('111', '11', '255');
INSERT INTO `upms_resource_user` VALUES ('112', '3', '218');
INSERT INTO `upms_resource_user` VALUES ('113', '3', '219');
INSERT INTO `upms_resource_user` VALUES ('114', '3', '257');
INSERT INTO `upms_resource_user` VALUES ('115', '3', '258');
INSERT INTO `upms_resource_user` VALUES ('116', '10', '197');
INSERT INTO `upms_resource_user` VALUES ('117', '10', '198');
INSERT INTO `upms_resource_user` VALUES ('118', '10', '199');
INSERT INTO `upms_resource_user` VALUES ('119', '10', '201');
INSERT INTO `upms_resource_user` VALUES ('120', '10', '202');
INSERT INTO `upms_resource_user` VALUES ('121', '10', '203');
INSERT INTO `upms_resource_user` VALUES ('122', '11', '204');
INSERT INTO `upms_resource_user` VALUES ('123', '11', '203');
INSERT INTO `upms_resource_user` VALUES ('124', '11', '205');
INSERT INTO `upms_resource_user` VALUES ('125', '11', '207');
INSERT INTO `upms_resource_user` VALUES ('126', '65', '338');
INSERT INTO `upms_resource_user` VALUES ('127', '12', '209');
INSERT INTO `upms_resource_user` VALUES ('128', '12', '210');
INSERT INTO `upms_resource_user` VALUES ('129', '12', '211');
INSERT INTO `upms_resource_user` VALUES ('130', '12', '212');
INSERT INTO `upms_resource_user` VALUES ('131', '65', '20');
INSERT INTO `upms_resource_user` VALUES ('132', '13', '214');
INSERT INTO `upms_resource_user` VALUES ('133', '12', '196');
INSERT INTO `upms_resource_user` VALUES ('134', '13', '196');
INSERT INTO `upms_resource_user` VALUES ('135', '65', '482');
INSERT INTO `upms_resource_user` VALUES ('136', '14', '261');
INSERT INTO `upms_resource_user` VALUES ('137', '15', '261');
INSERT INTO `upms_resource_user` VALUES ('138', '16', '261');
INSERT INTO `upms_resource_user` VALUES ('139', '14', '259');
INSERT INTO `upms_resource_user` VALUES ('140', '14', '260');
INSERT INTO `upms_resource_user` VALUES ('141', '15', '262');
INSERT INTO `upms_resource_user` VALUES ('142', '15', '263');
INSERT INTO `upms_resource_user` VALUES ('143', '531', '337');
INSERT INTO `upms_resource_user` VALUES ('144', '16', '264');
INSERT INTO `upms_resource_user` VALUES ('145', '40', '10');
INSERT INTO `upms_resource_user` VALUES ('146', '41', '10');
INSERT INTO `upms_resource_user` VALUES ('147', '40', '269');
INSERT INTO `upms_resource_user` VALUES ('148', '40', '270');
INSERT INTO `upms_resource_user` VALUES ('149', '40', '271');
INSERT INTO `upms_resource_user` VALUES ('150', '531', '336');
INSERT INTO `upms_resource_user` VALUES ('151', '8', '336');
INSERT INTO `upms_resource_user` VALUES ('152', '73', '10');
INSERT INTO `upms_resource_user` VALUES ('153', '74', '10');
INSERT INTO `upms_resource_user` VALUES ('154', '532', '10');
INSERT INTO `upms_resource_user` VALUES ('155', '74', '474');
INSERT INTO `upms_resource_user` VALUES ('156', '41', '274');
INSERT INTO `upms_resource_user` VALUES ('157', '41', '275');
INSERT INTO `upms_resource_user` VALUES ('158', '9', '21');
INSERT INTO `upms_resource_user` VALUES ('159', '9', '276');
INSERT INTO `upms_resource_user` VALUES ('160', '9', '277');
INSERT INTO `upms_resource_user` VALUES ('161', '46', '279');
INSERT INTO `upms_resource_user` VALUES ('162', '46', '280');
INSERT INTO `upms_resource_user` VALUES ('163', '46', '281');
INSERT INTO `upms_resource_user` VALUES ('164', '47', '13');
INSERT INTO `upms_resource_user` VALUES ('165', '48', '13');
INSERT INTO `upms_resource_user` VALUES ('166', '49', '13');
INSERT INTO `upms_resource_user` VALUES ('167', '47', '283');
INSERT INTO `upms_resource_user` VALUES ('168', '47', '285');
INSERT INTO `upms_resource_user` VALUES ('169', '47', '286');
INSERT INTO `upms_resource_user` VALUES ('170', '48', '288');
INSERT INTO `upms_resource_user` VALUES ('171', '48', '289');
INSERT INTO `upms_resource_user` VALUES ('172', '48', '290');
INSERT INTO `upms_resource_user` VALUES ('173', '49', '291');
INSERT INTO `upms_resource_user` VALUES ('174', '49', '292');
INSERT INTO `upms_resource_user` VALUES ('175', '49', '293');
INSERT INTO `upms_resource_user` VALUES ('176', '51', '22');
INSERT INTO `upms_resource_user` VALUES ('177', '51', '295');
INSERT INTO `upms_resource_user` VALUES ('178', '51', '296');
INSERT INTO `upms_resource_user` VALUES ('179', '51', '297');
INSERT INTO `upms_resource_user` VALUES ('180', '51', '299');
INSERT INTO `upms_resource_user` VALUES ('181', '51', '300');
INSERT INTO `upms_resource_user` VALUES ('182', '51', '301');
INSERT INTO `upms_resource_user` VALUES ('183', '56', '16');
INSERT INTO `upms_resource_user` VALUES ('184', '57', '16');
INSERT INTO `upms_resource_user` VALUES ('185', '58', '16');
INSERT INTO `upms_resource_user` VALUES ('186', '59', '16');
INSERT INTO `upms_resource_user` VALUES ('187', '4', '16');
INSERT INTO `upms_resource_user` VALUES ('188', '54', '16');
INSERT INTO `upms_resource_user` VALUES ('189', '71', '16');
INSERT INTO `upms_resource_user` VALUES ('190', '54', '303');
INSERT INTO `upms_resource_user` VALUES ('191', '54', '305');
INSERT INTO `upms_resource_user` VALUES ('192', '54', '306');
INSERT INTO `upms_resource_user` VALUES ('193', '70', '15');
INSERT INTO `upms_resource_user` VALUES ('194', '70', '480');
INSERT INTO `upms_resource_user` VALUES ('195', '57', '310');
INSERT INTO `upms_resource_user` VALUES ('196', '58', '302');
INSERT INTO `upms_resource_user` VALUES ('197', '63', '478');
INSERT INTO `upms_resource_user` VALUES ('198', '63', '315');
INSERT INTO `upms_resource_user` VALUES ('199', '63', '316');
INSERT INTO `upms_resource_user` VALUES ('200', '63', '317');
INSERT INTO `upms_resource_user` VALUES ('201', '63', '318');
INSERT INTO `upms_resource_user` VALUES ('202', '63', '319');
INSERT INTO `upms_resource_user` VALUES ('203', '63', '320');
INSERT INTO `upms_resource_user` VALUES ('204', '63', '321');
INSERT INTO `upms_resource_user` VALUES ('205', '63', '489');
INSERT INTO `upms_resource_user` VALUES ('206', '533', '17');
INSERT INTO `upms_resource_user` VALUES ('207', '64', '322');
INSERT INTO `upms_resource_user` VALUES ('208', '60', '323');
INSERT INTO `upms_resource_user` VALUES ('209', '64', '333');
INSERT INTO `upms_resource_user` VALUES ('210', '64', '356');
INSERT INTO `upms_resource_user` VALUES ('211', '534', '19');
INSERT INTO `upms_resource_user` VALUES ('212', '534', '324');
INSERT INTO `upms_resource_user` VALUES ('213', '534', '327');
INSERT INTO `upms_resource_user` VALUES ('214', '61', '18');
INSERT INTO `upms_resource_user` VALUES ('215', '61', '18');
INSERT INTO `upms_resource_user` VALUES ('216', '61', '18');
INSERT INTO `upms_resource_user` VALUES ('217', '62', '19');
INSERT INTO `upms_resource_user` VALUES ('218', '62', '324');
INSERT INTO `upms_resource_user` VALUES ('219', '62', '327');
INSERT INTO `upms_resource_user` VALUES ('220', '61', '328');
INSERT INTO `upms_resource_user` VALUES ('221', '61', '329');
INSERT INTO `upms_resource_user` VALUES ('222', '61', '481');
INSERT INTO `upms_resource_user` VALUES ('223', '8', '12');
INSERT INTO `upms_resource_user` VALUES ('224', '8', '287');
INSERT INTO `upms_resource_user` VALUES ('225', '8', '331');
INSERT INTO `upms_resource_user` VALUES ('226', '8', '332');
INSERT INTO `upms_resource_user` VALUES ('227', '8', '334');
INSERT INTO `upms_resource_user` VALUES ('228', '8', '337');
INSERT INTO `upms_resource_user` VALUES ('229', '2', '187');
INSERT INTO `upms_resource_user` VALUES ('231', '2', '193');
INSERT INTO `upms_resource_user` VALUES ('232', '40', '365');
INSERT INTO `upms_resource_user` VALUES ('233', '41', '365');
INSERT INTO `upms_resource_user` VALUES ('234', '73', '365');
INSERT INTO `upms_resource_user` VALUES ('235', '74', '365');
INSERT INTO `upms_resource_user` VALUES ('236', '532', '365');
INSERT INTO `upms_resource_user` VALUES ('237', '73', '470');
INSERT INTO `upms_resource_user` VALUES ('238', '532', '475');
INSERT INTO `upms_resource_user` VALUES ('239', '46', '13');
INSERT INTO `upms_resource_user` VALUES ('240', '7', '385');
INSERT INTO `upms_resource_user` VALUES ('241', '7', '387');
INSERT INTO `upms_resource_user` VALUES ('243', '20', '400');
INSERT INTO `upms_resource_user` VALUES ('244', '20', '401');
INSERT INTO `upms_resource_user` VALUES ('245', '20', '402');
INSERT INTO `upms_resource_user` VALUES ('246', '20', '404');
INSERT INTO `upms_resource_user` VALUES ('247', '19', '395');
INSERT INTO `upms_resource_user` VALUES ('248', '19', '396');
INSERT INTO `upms_resource_user` VALUES ('249', '19', '397');
INSERT INTO `upms_resource_user` VALUES ('250', '19', '399');
INSERT INTO `upms_resource_user` VALUES ('251', '18', '390');
INSERT INTO `upms_resource_user` VALUES ('252', '18', '392');
INSERT INTO `upms_resource_user` VALUES ('253', '18', '391');
INSERT INTO `upms_resource_user` VALUES ('254', '18', '394');
INSERT INTO `upms_resource_user` VALUES ('255', '21', '405');
INSERT INTO `upms_resource_user` VALUES ('256', '21', '406');
INSERT INTO `upms_resource_user` VALUES ('257', '21', '407');
INSERT INTO `upms_resource_user` VALUES ('258', '21', '409');
INSERT INTO `upms_resource_user` VALUES ('259', '22', '410');
INSERT INTO `upms_resource_user` VALUES ('260', '22', '413');
INSERT INTO `upms_resource_user` VALUES ('261', '22', '414');
INSERT INTO `upms_resource_user` VALUES ('262', '22', '415');
INSERT INTO `upms_resource_user` VALUES ('263', '23', '454');
INSERT INTO `upms_resource_user` VALUES ('264', '23', '484');
INSERT INTO `upms_resource_user` VALUES ('265', '23', '418');
INSERT INTO `upms_resource_user` VALUES ('266', '24', '224');
INSERT INTO `upms_resource_user` VALUES ('267', '24', '419');
INSERT INTO `upms_resource_user` VALUES ('268', '24', '421');
INSERT INTO `upms_resource_user` VALUES ('270', '24', '444');
INSERT INTO `upms_resource_user` VALUES ('271', '25', '423');
INSERT INTO `upms_resource_user` VALUES ('272', '25', '425');
INSERT INTO `upms_resource_user` VALUES ('273', '25', '426');
INSERT INTO `upms_resource_user` VALUES ('274', '25', '427');
INSERT INTO `upms_resource_user` VALUES ('275', '26', '428');
INSERT INTO `upms_resource_user` VALUES ('276', '26', '429');
INSERT INTO `upms_resource_user` VALUES ('277', '26', '431');
INSERT INTO `upms_resource_user` VALUES ('278', '26', '432');
INSERT INTO `upms_resource_user` VALUES ('279', '27', '433');
INSERT INTO `upms_resource_user` VALUES ('280', '27', '435');
INSERT INTO `upms_resource_user` VALUES ('281', '27', '436');
INSERT INTO `upms_resource_user` VALUES ('282', '27', '437');
INSERT INTO `upms_resource_user` VALUES ('283', '27', '438');
INSERT INTO `upms_resource_user` VALUES ('284', '28', '439');
INSERT INTO `upms_resource_user` VALUES ('285', '28', '441');
INSERT INTO `upms_resource_user` VALUES ('286', '29', '441');
INSERT INTO `upms_resource_user` VALUES ('287', '29', '439');
INSERT INTO `upms_resource_user` VALUES ('288', '28', '442');
INSERT INTO `upms_resource_user` VALUES ('289', '29', '442');
INSERT INTO `upms_resource_user` VALUES ('290', '30', '452');
INSERT INTO `upms_resource_user` VALUES ('291', '30', '453');
INSERT INTO `upms_resource_user` VALUES ('292', '31', '446');
INSERT INTO `upms_resource_user` VALUES ('293', '31', '448');
INSERT INTO `upms_resource_user` VALUES ('294', '32', '455');
INSERT INTO `upms_resource_user` VALUES ('295', '32', '456');
INSERT INTO `upms_resource_user` VALUES ('296', '32', '457');
INSERT INTO `upms_resource_user` VALUES ('297', '33', '460');
INSERT INTO `upms_resource_user` VALUES ('298', '33', '461');
INSERT INTO `upms_resource_user` VALUES ('299', '34', '462');
INSERT INTO `upms_resource_user` VALUES ('300', '34', '464');
INSERT INTO `upms_resource_user` VALUES ('301', '34', '485');
INSERT INTO `upms_resource_user` VALUES ('302', '5', '341');
INSERT INTO `upms_resource_user` VALUES ('303', '5', '342');
INSERT INTO `upms_resource_user` VALUES ('304', '5', '344');
INSERT INTO `upms_resource_user` VALUES ('305', '5', '343');
INSERT INTO `upms_resource_user` VALUES ('306', '5', '345');
INSERT INTO `upms_resource_user` VALUES ('307', '6', '349');
INSERT INTO `upms_resource_user` VALUES ('308', '6', '351');
INSERT INTO `upms_resource_user` VALUES ('309', '6', '352');
INSERT INTO `upms_resource_user` VALUES ('310', '6', '353');
INSERT INTO `upms_resource_user` VALUES ('311', '6', '355');
INSERT INTO `upms_resource_user` VALUES ('312', '6', '346');
INSERT INTO `upms_resource_user` VALUES ('313', '37', '359');
INSERT INTO `upms_resource_user` VALUES ('314', '37', '360');
INSERT INTO `upms_resource_user` VALUES ('315', '37', '361');
INSERT INTO `upms_resource_user` VALUES ('316', '37', '362');
INSERT INTO `upms_resource_user` VALUES ('317', '37', '363');
INSERT INTO `upms_resource_user` VALUES ('318', '37', '372');
INSERT INTO `upms_resource_user` VALUES ('319', '38', '372');
INSERT INTO `upms_resource_user` VALUES ('320', '39', '364');
INSERT INTO `upms_resource_user` VALUES ('321', '39', '375');
INSERT INTO `upms_resource_user` VALUES ('322', '39', '376');
INSERT INTO `upms_resource_user` VALUES ('323', '39', '372');
INSERT INTO `upms_resource_user` VALUES ('324', '39', '371');
INSERT INTO `upms_resource_user` VALUES ('325', '39', '374');
INSERT INTO `upms_resource_user` VALUES ('326', '39', '370');
INSERT INTO `upms_resource_user` VALUES ('327', '39', '368');
INSERT INTO `upms_resource_user` VALUES ('328', '39', '366');
INSERT INTO `upms_resource_user` VALUES ('329', '38', '374');
INSERT INTO `upms_resource_user` VALUES ('330', '38', '370');
INSERT INTO `upms_resource_user` VALUES ('331', '38', '368');
INSERT INTO `upms_resource_user` VALUES ('332', '38', '366');
INSERT INTO `upms_resource_user` VALUES ('333', '38', '348');
INSERT INTO `upms_resource_user` VALUES ('334', '535', '100000009');
INSERT INTO `upms_resource_user` VALUES ('335', '535', '100000010');
INSERT INTO `upms_resource_user` VALUES ('336', '535', '100000011');
INSERT INTO `upms_resource_user` VALUES ('337', '535', '100000012');
INSERT INTO `upms_resource_user` VALUES ('338', '535', '100000013');
INSERT INTO `upms_resource_user` VALUES ('339', '535', '100000014');
INSERT INTO `upms_resource_user` VALUES ('340', '535', '100000015');
INSERT INTO `upms_resource_user` VALUES ('341', '535', '100000016');
INSERT INTO `upms_resource_user` VALUES ('342', '535', '100000017');
INSERT INTO `upms_resource_user` VALUES ('343', '535', '100000018');
INSERT INTO `upms_resource_user` VALUES ('344', '535', '100000019');
INSERT INTO `upms_resource_user` VALUES ('345', '535', '100000020');
INSERT INTO `upms_resource_user` VALUES ('346', '535', '100000021');
INSERT INTO `upms_resource_user` VALUES ('347', '535', '100000022');
INSERT INTO `upms_resource_user` VALUES ('348', '536', '100000023');
INSERT INTO `upms_resource_user` VALUES ('349', '536', '100000024');
INSERT INTO `upms_resource_user` VALUES ('350', '536', '100000025');
INSERT INTO `upms_resource_user` VALUES ('351', '537', '100000026');
INSERT INTO `upms_resource_user` VALUES ('352', '537', '100000027');
INSERT INTO `upms_resource_user` VALUES ('353', '538', '100000028');
INSERT INTO `upms_resource_user` VALUES ('354', '538', '100000029');
INSERT INTO `upms_resource_user` VALUES ('355', '538', '100000030');
INSERT INTO `upms_resource_user` VALUES ('356', '539', '100000031');
INSERT INTO `upms_resource_user` VALUES ('357', '539', '100000032');
INSERT INTO `upms_resource_user` VALUES ('358', '539', '100000033');
INSERT INTO `upms_resource_user` VALUES ('359', '540', '18');
INSERT INTO `upms_resource_user` VALUES ('360', '540', '100000034');
INSERT INTO `upms_resource_user` VALUES ('361', '540', '100000035');
INSERT INTO `upms_resource_user` VALUES ('362', '540', '100000036');
INSERT INTO `upms_resource_user` VALUES ('363', '43', '240');
INSERT INTO `upms_resource_user` VALUES ('364', '44', '240');
INSERT INTO `upms_resource_user` VALUES ('365', '45', '240');
INSERT INTO `upms_resource_user` VALUES ('366', '43', '241');
INSERT INTO `upms_resource_user` VALUES ('367', '44', '241');
INSERT INTO `upms_resource_user` VALUES ('368', '45', '241');
INSERT INTO `upms_resource_user` VALUES ('369', '43', '242');
INSERT INTO `upms_resource_user` VALUES ('370', '44', '242');
INSERT INTO `upms_resource_user` VALUES ('371', '45', '242');
INSERT INTO `upms_resource_user` VALUES ('372', '44', '243');
INSERT INTO `upms_resource_user` VALUES ('373', '45', '243');
INSERT INTO `upms_resource_user` VALUES ('374', '43', '245');
INSERT INTO `upms_resource_user` VALUES ('375', '44', '245');
INSERT INTO `upms_resource_user` VALUES ('376', '45', '245');
INSERT INTO `upms_resource_user` VALUES ('377', '43', '246');
INSERT INTO `upms_resource_user` VALUES ('378', '44', '246');
INSERT INTO `upms_resource_user` VALUES ('379', '45', '246');
INSERT INTO `upms_resource_user` VALUES ('380', '43', '247');
INSERT INTO `upms_resource_user` VALUES ('381', '44', '247');
INSERT INTO `upms_resource_user` VALUES ('382', '45', '247');
INSERT INTO `upms_resource_user` VALUES ('383', '43', '248');
INSERT INTO `upms_resource_user` VALUES ('384', '44', '248');
INSERT INTO `upms_resource_user` VALUES ('385', '45', '248');
INSERT INTO `upms_resource_user` VALUES ('386', '43', '249');
INSERT INTO `upms_resource_user` VALUES ('387', '43', '250');
INSERT INTO `upms_resource_user` VALUES ('388', '44', '250');
INSERT INTO `upms_resource_user` VALUES ('389', '45', '250');
INSERT INTO `upms_resource_user` VALUES ('390', '43', '251');
INSERT INTO `upms_resource_user` VALUES ('391', '44', '251');
INSERT INTO `upms_resource_user` VALUES ('392', '45', '251');
INSERT INTO `upms_resource_user` VALUES ('393', '43', '252');
INSERT INTO `upms_resource_user` VALUES ('394', '44', '252');
INSERT INTO `upms_resource_user` VALUES ('395', '45', '252');
INSERT INTO `upms_resource_user` VALUES ('396', '43', '253');
INSERT INTO `upms_resource_user` VALUES ('397', '44', '253');
INSERT INTO `upms_resource_user` VALUES ('398', '45', '253');
INSERT INTO `upms_resource_user` VALUES ('399', '4', '100000041');
INSERT INTO `upms_resource_user` VALUES ('400', '54', '307');
INSERT INTO `upms_resource_user` VALUES ('401', '54', '100000038');
INSERT INTO `upms_resource_user` VALUES ('402', '54', '100000039');
INSERT INTO `upms_resource_user` VALUES ('403', '54', '100000040');
INSERT INTO `upms_resource_user` VALUES ('404', '20', '390');
INSERT INTO `upms_resource_user` VALUES ('405', '19', '390');
INSERT INTO `upms_resource_user` VALUES ('406', '30', '446');
INSERT INTO `upms_resource_user` VALUES ('407', '32', '433');
INSERT INTO `upms_resource_user` VALUES ('408', '33', '433');
INSERT INTO `upms_resource_user` VALUES ('409', '535', '240');
INSERT INTO `upms_resource_user` VALUES ('410', '37', '357');
INSERT INTO `upms_resource_user` VALUES ('411', '9', '100000042');
INSERT INTO `upms_resource_user` VALUES ('412', '9', '100000043');
INSERT INTO `upms_resource_user` VALUES ('414', '58', '100000046');
INSERT INTO `upms_resource_user` VALUES ('415', '48', '293');
INSERT INTO `upms_resource_user` VALUES ('416', '49', '288');
INSERT INTO `upms_resource_user` VALUES ('417', '5', '100000047');
INSERT INTO `upms_resource_user` VALUES ('418', '5', '100000048');
INSERT INTO `upms_resource_user` VALUES ('419', '46', '100000049');
INSERT INTO `upms_resource_user` VALUES ('420', '63', '100000050');
INSERT INTO `upms_resource_user` VALUES ('421', '57', '302');
INSERT INTO `upms_resource_user` VALUES ('422', '536', '247');
INSERT INTO `upms_resource_user` VALUES ('423', '21', '100000051');
INSERT INTO `upms_resource_user` VALUES ('425', '2', '100000054');
INSERT INTO `upms_resource_user` VALUES ('426', '3', '100000054');
INSERT INTO `upms_resource_user` VALUES ('427', '4', '100000054');
INSERT INTO `upms_resource_user` VALUES ('428', '5', '100000054');
INSERT INTO `upms_resource_user` VALUES ('429', '6', '100000054');
INSERT INTO `upms_resource_user` VALUES ('430', '7', '100000054');
INSERT INTO `upms_resource_user` VALUES ('431', '8', '100000054');
INSERT INTO `upms_resource_user` VALUES ('432', '9', '100000054');
INSERT INTO `upms_resource_user` VALUES ('433', '10', '100000054');
INSERT INTO `upms_resource_user` VALUES ('434', '11', '100000054');
INSERT INTO `upms_resource_user` VALUES ('435', '12', '100000054');
INSERT INTO `upms_resource_user` VALUES ('436', '13', '100000054');
INSERT INTO `upms_resource_user` VALUES ('437', '14', '100000054');
INSERT INTO `upms_resource_user` VALUES ('438', '15', '100000054');
INSERT INTO `upms_resource_user` VALUES ('439', '16', '100000054');
INSERT INTO `upms_resource_user` VALUES ('440', '18', '100000054');
INSERT INTO `upms_resource_user` VALUES ('441', '19', '100000054');
INSERT INTO `upms_resource_user` VALUES ('442', '20', '100000054');
INSERT INTO `upms_resource_user` VALUES ('443', '21', '100000054');
INSERT INTO `upms_resource_user` VALUES ('444', '22', '100000054');
INSERT INTO `upms_resource_user` VALUES ('445', '23', '100000054');
INSERT INTO `upms_resource_user` VALUES ('446', '24', '100000054');
INSERT INTO `upms_resource_user` VALUES ('447', '25', '100000054');
INSERT INTO `upms_resource_user` VALUES ('448', '26', '100000054');
INSERT INTO `upms_resource_user` VALUES ('449', '27', '100000054');
INSERT INTO `upms_resource_user` VALUES ('450', '28', '100000054');
INSERT INTO `upms_resource_user` VALUES ('451', '29', '100000054');
INSERT INTO `upms_resource_user` VALUES ('452', '30', '100000054');
INSERT INTO `upms_resource_user` VALUES ('453', '31', '100000054');
INSERT INTO `upms_resource_user` VALUES ('454', '32', '100000054');
INSERT INTO `upms_resource_user` VALUES ('455', '33', '100000054');
INSERT INTO `upms_resource_user` VALUES ('456', '34', '100000054');
INSERT INTO `upms_resource_user` VALUES ('457', '37', '100000054');
INSERT INTO `upms_resource_user` VALUES ('458', '38', '100000054');
INSERT INTO `upms_resource_user` VALUES ('459', '39', '100000054');
INSERT INTO `upms_resource_user` VALUES ('460', '40', '100000054');
INSERT INTO `upms_resource_user` VALUES ('461', '41', '100000054');
INSERT INTO `upms_resource_user` VALUES ('462', '43', '100000054');
INSERT INTO `upms_resource_user` VALUES ('463', '44', '100000054');
INSERT INTO `upms_resource_user` VALUES ('464', '45', '100000054');
INSERT INTO `upms_resource_user` VALUES ('465', '46', '100000054');
INSERT INTO `upms_resource_user` VALUES ('466', '47', '100000054');
INSERT INTO `upms_resource_user` VALUES ('467', '48', '100000054');
INSERT INTO `upms_resource_user` VALUES ('468', '49', '100000054');
INSERT INTO `upms_resource_user` VALUES ('469', '51', '100000054');
INSERT INTO `upms_resource_user` VALUES ('470', '53', '100000054');
INSERT INTO `upms_resource_user` VALUES ('471', '54', '100000054');
INSERT INTO `upms_resource_user` VALUES ('472', '55', '100000054');
INSERT INTO `upms_resource_user` VALUES ('473', '56', '100000054');
INSERT INTO `upms_resource_user` VALUES ('474', '57', '100000054');
INSERT INTO `upms_resource_user` VALUES ('475', '58', '100000054');
INSERT INTO `upms_resource_user` VALUES ('476', '59', '100000054');
INSERT INTO `upms_resource_user` VALUES ('477', '60', '100000054');
INSERT INTO `upms_resource_user` VALUES ('478', '61', '100000054');
INSERT INTO `upms_resource_user` VALUES ('479', '62', '100000054');
INSERT INTO `upms_resource_user` VALUES ('480', '63', '100000054');
INSERT INTO `upms_resource_user` VALUES ('481', '64', '100000054');
INSERT INTO `upms_resource_user` VALUES ('482', '65', '100000054');
INSERT INTO `upms_resource_user` VALUES ('483', '66', '100000054');
INSERT INTO `upms_resource_user` VALUES ('484', '67', '100000054');
INSERT INTO `upms_resource_user` VALUES ('485', '68', '100000054');
INSERT INTO `upms_resource_user` VALUES ('486', '69', '100000054');
INSERT INTO `upms_resource_user` VALUES ('487', '70', '100000054');
INSERT INTO `upms_resource_user` VALUES ('488', '71', '100000054');
INSERT INTO `upms_resource_user` VALUES ('489', '72', '100000054');
INSERT INTO `upms_resource_user` VALUES ('490', '73', '100000054');
INSERT INTO `upms_resource_user` VALUES ('491', '74', '100000054');
INSERT INTO `upms_resource_user` VALUES ('492', '532', '100000054');
INSERT INTO `upms_resource_user` VALUES ('493', '533', '100000054');
INSERT INTO `upms_resource_user` VALUES ('494', '535', '100000054');
INSERT INTO `upms_resource_user` VALUES ('495', '536', '100000054');
INSERT INTO `upms_resource_user` VALUES ('496', '537', '100000054');
INSERT INTO `upms_resource_user` VALUES ('497', '538', '100000054');
INSERT INTO `upms_resource_user` VALUES ('498', '539', '100000054');
INSERT INTO `upms_resource_user` VALUES ('499', '540', '100000054');
INSERT INTO `upms_resource_user` VALUES ('501', '2', '100000054');
INSERT INTO `upms_resource_user` VALUES ('502', '3', '100000054');
INSERT INTO `upms_resource_user` VALUES ('503', '4', '100000054');
INSERT INTO `upms_resource_user` VALUES ('504', '5', '100000054');
INSERT INTO `upms_resource_user` VALUES ('505', '6', '100000054');
INSERT INTO `upms_resource_user` VALUES ('506', '7', '100000054');
INSERT INTO `upms_resource_user` VALUES ('507', '8', '100000054');
INSERT INTO `upms_resource_user` VALUES ('508', '9', '100000054');
INSERT INTO `upms_resource_user` VALUES ('509', '10', '100000054');
INSERT INTO `upms_resource_user` VALUES ('510', '11', '100000054');
INSERT INTO `upms_resource_user` VALUES ('511', '12', '100000054');
INSERT INTO `upms_resource_user` VALUES ('512', '13', '100000054');
INSERT INTO `upms_resource_user` VALUES ('513', '14', '100000054');
INSERT INTO `upms_resource_user` VALUES ('514', '15', '100000054');
INSERT INTO `upms_resource_user` VALUES ('515', '16', '100000054');
INSERT INTO `upms_resource_user` VALUES ('516', '18', '100000054');
INSERT INTO `upms_resource_user` VALUES ('517', '19', '100000054');
INSERT INTO `upms_resource_user` VALUES ('518', '20', '100000054');
INSERT INTO `upms_resource_user` VALUES ('519', '21', '100000054');
INSERT INTO `upms_resource_user` VALUES ('520', '22', '100000054');
INSERT INTO `upms_resource_user` VALUES ('521', '23', '100000054');
INSERT INTO `upms_resource_user` VALUES ('522', '24', '100000054');
INSERT INTO `upms_resource_user` VALUES ('523', '25', '100000054');
INSERT INTO `upms_resource_user` VALUES ('524', '26', '100000054');
INSERT INTO `upms_resource_user` VALUES ('525', '27', '100000054');
INSERT INTO `upms_resource_user` VALUES ('526', '28', '100000054');
INSERT INTO `upms_resource_user` VALUES ('527', '29', '100000054');
INSERT INTO `upms_resource_user` VALUES ('528', '30', '100000054');
INSERT INTO `upms_resource_user` VALUES ('529', '31', '100000054');
INSERT INTO `upms_resource_user` VALUES ('530', '32', '100000054');
INSERT INTO `upms_resource_user` VALUES ('531', '33', '100000054');
INSERT INTO `upms_resource_user` VALUES ('532', '34', '100000054');
INSERT INTO `upms_resource_user` VALUES ('533', '37', '100000054');
INSERT INTO `upms_resource_user` VALUES ('534', '38', '100000054');
INSERT INTO `upms_resource_user` VALUES ('535', '39', '100000054');
INSERT INTO `upms_resource_user` VALUES ('536', '40', '100000054');
INSERT INTO `upms_resource_user` VALUES ('537', '41', '100000054');
INSERT INTO `upms_resource_user` VALUES ('538', '43', '100000054');
INSERT INTO `upms_resource_user` VALUES ('539', '44', '100000054');
INSERT INTO `upms_resource_user` VALUES ('540', '45', '100000054');
INSERT INTO `upms_resource_user` VALUES ('541', '46', '100000054');
INSERT INTO `upms_resource_user` VALUES ('542', '47', '100000054');
INSERT INTO `upms_resource_user` VALUES ('543', '48', '100000054');
INSERT INTO `upms_resource_user` VALUES ('544', '49', '100000054');
INSERT INTO `upms_resource_user` VALUES ('545', '51', '100000054');
INSERT INTO `upms_resource_user` VALUES ('546', '53', '100000054');
INSERT INTO `upms_resource_user` VALUES ('547', '54', '100000054');
INSERT INTO `upms_resource_user` VALUES ('548', '55', '100000054');
INSERT INTO `upms_resource_user` VALUES ('549', '56', '100000054');
INSERT INTO `upms_resource_user` VALUES ('550', '57', '100000054');
INSERT INTO `upms_resource_user` VALUES ('551', '58', '100000054');
INSERT INTO `upms_resource_user` VALUES ('552', '59', '100000054');
INSERT INTO `upms_resource_user` VALUES ('553', '60', '100000054');
INSERT INTO `upms_resource_user` VALUES ('554', '61', '100000054');
INSERT INTO `upms_resource_user` VALUES ('555', '62', '100000054');
INSERT INTO `upms_resource_user` VALUES ('556', '63', '100000054');
INSERT INTO `upms_resource_user` VALUES ('557', '64', '100000054');
INSERT INTO `upms_resource_user` VALUES ('558', '65', '100000054');
INSERT INTO `upms_resource_user` VALUES ('559', '66', '100000054');
INSERT INTO `upms_resource_user` VALUES ('560', '67', '100000054');
INSERT INTO `upms_resource_user` VALUES ('561', '68', '100000054');
INSERT INTO `upms_resource_user` VALUES ('562', '69', '100000054');
INSERT INTO `upms_resource_user` VALUES ('563', '70', '100000054');
INSERT INTO `upms_resource_user` VALUES ('564', '71', '100000054');
INSERT INTO `upms_resource_user` VALUES ('565', '72', '100000054');
INSERT INTO `upms_resource_user` VALUES ('566', '73', '100000054');
INSERT INTO `upms_resource_user` VALUES ('567', '74', '100000054');
INSERT INTO `upms_resource_user` VALUES ('568', '532', '100000054');
INSERT INTO `upms_resource_user` VALUES ('569', '533', '100000054');
INSERT INTO `upms_resource_user` VALUES ('570', '535', '100000054');
INSERT INTO `upms_resource_user` VALUES ('571', '536', '100000054');
INSERT INTO `upms_resource_user` VALUES ('572', '537', '100000054');
INSERT INTO `upms_resource_user` VALUES ('573', '538', '100000054');
INSERT INTO `upms_resource_user` VALUES ('574', '539', '100000054');
INSERT INTO `upms_resource_user` VALUES ('575', '540', '100000054');
INSERT INTO `upms_resource_user` VALUES ('578', '542', '190');
INSERT INTO `upms_resource_user` VALUES ('579', '543', '190');
INSERT INTO `upms_resource_user` VALUES ('580', '552', '190');
INSERT INTO `upms_resource_user` VALUES ('581', '553', '190');
INSERT INTO `upms_resource_user` VALUES ('582', '547', '196');
INSERT INTO `upms_resource_user` VALUES ('583', '548', '196');
INSERT INTO `upms_resource_user` VALUES ('584', '557', '196');
INSERT INTO `upms_resource_user` VALUES ('585', '558', '196');
INSERT INTO `upms_resource_user` VALUES ('586', '670', '196');
INSERT INTO `upms_resource_user` VALUES ('587', '670', '190');
INSERT INTO `upms_resource_user` VALUES ('588', '544', '255');
INSERT INTO `upms_resource_user` VALUES ('589', '545', '255');
INSERT INTO `upms_resource_user` VALUES ('590', '546', '255');
INSERT INTO `upms_resource_user` VALUES ('591', '554', '255');
INSERT INTO `upms_resource_user` VALUES ('592', '555', '255');
INSERT INTO `upms_resource_user` VALUES ('593', '556', '255');
INSERT INTO `upms_resource_user` VALUES ('594', '670', '255');
INSERT INTO `upms_resource_user` VALUES ('595', '544', '255');
INSERT INTO `upms_resource_user` VALUES ('596', '545', '255');
INSERT INTO `upms_resource_user` VALUES ('597', '546', '255');
INSERT INTO `upms_resource_user` VALUES ('598', '554', '255');
INSERT INTO `upms_resource_user` VALUES ('599', '555', '255');
INSERT INTO `upms_resource_user` VALUES ('600', '556', '255');
INSERT INTO `upms_resource_user` VALUES ('601', '670', '255');
INSERT INTO `upms_resource_user` VALUES ('602', '549', '261');
INSERT INTO `upms_resource_user` VALUES ('603', '550', '261');
INSERT INTO `upms_resource_user` VALUES ('604', '551', '261');
INSERT INTO `upms_resource_user` VALUES ('605', '559', '261');
INSERT INTO `upms_resource_user` VALUES ('606', '560', '261');
INSERT INTO `upms_resource_user` VALUES ('607', '561', '261');
INSERT INTO `upms_resource_user` VALUES ('608', '670', '261');
INSERT INTO `upms_resource_user` VALUES ('609', '562', '10');
INSERT INTO `upms_resource_user` VALUES ('610', '563', '10');
INSERT INTO `upms_resource_user` VALUES ('611', '569', '10');
INSERT INTO `upms_resource_user` VALUES ('612', '570', '10');
INSERT INTO `upms_resource_user` VALUES ('613', '670', '10');
INSERT INTO `upms_resource_user` VALUES ('614', '568', '21');
INSERT INTO `upms_resource_user` VALUES ('615', '575', '21');
INSERT INTO `upms_resource_user` VALUES ('616', '670', '21');
INSERT INTO `upms_resource_user` VALUES ('617', '576', '13');
INSERT INTO `upms_resource_user` VALUES ('618', '577', '13');
INSERT INTO `upms_resource_user` VALUES ('619', '578', '13');
INSERT INTO `upms_resource_user` VALUES ('620', '579', '13');
INSERT INTO `upms_resource_user` VALUES ('621', '581', '13');
INSERT INTO `upms_resource_user` VALUES ('622', '582', '13');
INSERT INTO `upms_resource_user` VALUES ('623', '583', '13');
INSERT INTO `upms_resource_user` VALUES ('624', '584', '13');
INSERT INTO `upms_resource_user` VALUES ('625', '670', '13');
INSERT INTO `upms_resource_user` VALUES ('626', '610', '22');
INSERT INTO `upms_resource_user` VALUES ('627', '613', '22');
INSERT INTO `upms_resource_user` VALUES ('628', '670', '22');
INSERT INTO `upms_resource_user` VALUES ('629', '586', '16');
INSERT INTO `upms_resource_user` VALUES ('630', '587', '16');
INSERT INTO `upms_resource_user` VALUES ('631', '588', '16');
INSERT INTO `upms_resource_user` VALUES ('632', '589', '16');
INSERT INTO `upms_resource_user` VALUES ('633', '590', '16');
INSERT INTO `upms_resource_user` VALUES ('634', '591', '16');
INSERT INTO `upms_resource_user` VALUES ('635', '592', '16');
INSERT INTO `upms_resource_user` VALUES ('636', '597', '16');
INSERT INTO `upms_resource_user` VALUES ('637', '598', '16');
INSERT INTO `upms_resource_user` VALUES ('638', '599', '16');
INSERT INTO `upms_resource_user` VALUES ('639', '600', '16');
INSERT INTO `upms_resource_user` VALUES ('640', '601', '16');
INSERT INTO `upms_resource_user` VALUES ('641', '602', '16');
INSERT INTO `upms_resource_user` VALUES ('642', '670', '16');
INSERT INTO `upms_resource_user` VALUES ('643', '593', '15');
INSERT INTO `upms_resource_user` VALUES ('644', '604', '15');
INSERT INTO `upms_resource_user` VALUES ('645', '670', '15');
INSERT INTO `upms_resource_user` VALUES ('646', '565', '478');
INSERT INTO `upms_resource_user` VALUES ('647', '572', '478');
INSERT INTO `upms_resource_user` VALUES ('648', '670', '478');
INSERT INTO `upms_resource_user` VALUES ('649', '594', '17');
INSERT INTO `upms_resource_user` VALUES ('650', '595', '17');
INSERT INTO `upms_resource_user` VALUES ('651', '605', '17');
INSERT INTO `upms_resource_user` VALUES ('652', '606', '17');
INSERT INTO `upms_resource_user` VALUES ('653', '670', '17');
INSERT INTO `upms_resource_user` VALUES ('654', '609', '19');
INSERT INTO `upms_resource_user` VALUES ('655', '612', '19');
INSERT INTO `upms_resource_user` VALUES ('656', '670', '19');
INSERT INTO `upms_resource_user` VALUES ('657', '596', '18');
INSERT INTO `upms_resource_user` VALUES ('658', '607', '18');
INSERT INTO `upms_resource_user` VALUES ('659', '670', '18');
INSERT INTO `upms_resource_user` VALUES ('660', '580', '12');
INSERT INTO `upms_resource_user` VALUES ('661', '585', '12');
INSERT INTO `upms_resource_user` VALUES ('662', '670', '12');
INSERT INTO `upms_resource_user` VALUES ('663', '608', '20');
INSERT INTO `upms_resource_user` VALUES ('664', '611', '20');
INSERT INTO `upms_resource_user` VALUES ('665', '670', '20');
INSERT INTO `upms_resource_user` VALUES ('666', '615', '385');
INSERT INTO `upms_resource_user` VALUES ('667', '622', '385');
INSERT INTO `upms_resource_user` VALUES ('668', '670', '385');
INSERT INTO `upms_resource_user` VALUES ('669', '616', '390');
INSERT INTO `upms_resource_user` VALUES ('670', '617', '390');
INSERT INTO `upms_resource_user` VALUES ('671', '618', '390');
INSERT INTO `upms_resource_user` VALUES ('672', '623', '390');
INSERT INTO `upms_resource_user` VALUES ('673', '624', '390');
INSERT INTO `upms_resource_user` VALUES ('674', '625', '390');
INSERT INTO `upms_resource_user` VALUES ('675', '670', '390');
INSERT INTO `upms_resource_user` VALUES ('676', '619', '405');
INSERT INTO `upms_resource_user` VALUES ('677', '626', '405');
INSERT INTO `upms_resource_user` VALUES ('678', '670', '405');
INSERT INTO `upms_resource_user` VALUES ('679', '620', '410');
INSERT INTO `upms_resource_user` VALUES ('680', '627', '410');
INSERT INTO `upms_resource_user` VALUES ('681', '670', '410');
INSERT INTO `upms_resource_user` VALUES ('682', '621', '454');
INSERT INTO `upms_resource_user` VALUES ('683', '628', '454');
INSERT INTO `upms_resource_user` VALUES ('684', '670', '454');
INSERT INTO `upms_resource_user` VALUES ('685', '629', '224');
INSERT INTO `upms_resource_user` VALUES ('686', '630', '224');
INSERT INTO `upms_resource_user` VALUES ('687', '631', '224');
INSERT INTO `upms_resource_user` VALUES ('688', '632', '224');
INSERT INTO `upms_resource_user` VALUES ('689', '633', '224');
INSERT INTO `upms_resource_user` VALUES ('690', '634', '224');
INSERT INTO `upms_resource_user` VALUES ('691', '670', '224');
INSERT INTO `upms_resource_user` VALUES ('692', '635', '433');
INSERT INTO `upms_resource_user` VALUES ('693', '643', '433');
INSERT INTO `upms_resource_user` VALUES ('694', '670', '433');
INSERT INTO `upms_resource_user` VALUES ('695', '637', '446');
INSERT INTO `upms_resource_user` VALUES ('696', '639', '446');
INSERT INTO `upms_resource_user` VALUES ('697', '645', '446');
INSERT INTO `upms_resource_user` VALUES ('698', '647', '446');
INSERT INTO `upms_resource_user` VALUES ('699', '670', '446');
INSERT INTO `upms_resource_user` VALUES ('700', '642', '446');
INSERT INTO `upms_resource_user` VALUES ('701', '650', '446');
INSERT INTO `upms_resource_user` VALUES ('702', '663', '240');
INSERT INTO `upms_resource_user` VALUES ('703', '664', '240');
INSERT INTO `upms_resource_user` VALUES ('704', '665', '240');
INSERT INTO `upms_resource_user` VALUES ('705', '666', '240');
INSERT INTO `upms_resource_user` VALUES ('706', '670', '240');
INSERT INTO `upms_resource_user` VALUES ('707', '652', '341');
INSERT INTO `upms_resource_user` VALUES ('708', '657', '341');
INSERT INTO `upms_resource_user` VALUES ('709', '670', '341');
INSERT INTO `upms_resource_user` VALUES ('710', '653', '349');
INSERT INTO `upms_resource_user` VALUES ('711', '658', '349');
INSERT INTO `upms_resource_user` VALUES ('712', '670', '349');
INSERT INTO `upms_resource_user` VALUES ('713', '654', '357');
INSERT INTO `upms_resource_user` VALUES ('714', '659', '357');
INSERT INTO `upms_resource_user` VALUES ('715', '670', '357');
INSERT INTO `upms_resource_user` VALUES ('716', '655', '372');
INSERT INTO `upms_resource_user` VALUES ('717', '656', '372');
INSERT INTO `upms_resource_user` VALUES ('718', '660', '372');
INSERT INTO `upms_resource_user` VALUES ('719', '661', '372');
INSERT INTO `upms_resource_user` VALUES ('720', '670', '372');
INSERT INTO `upms_resource_user` VALUES ('721', '562', '365');
INSERT INTO `upms_resource_user` VALUES ('722', '563', '365');
INSERT INTO `upms_resource_user` VALUES ('723', '569', '365');
INSERT INTO `upms_resource_user` VALUES ('724', '570', '365');
INSERT INTO `upms_resource_user` VALUES ('726', '2', '228');
INSERT INTO `upms_resource_user` VALUES ('727', '3', '228');
INSERT INTO `upms_resource_user` VALUES ('728', '4', '228');
INSERT INTO `upms_resource_user` VALUES ('729', '5', '228');
INSERT INTO `upms_resource_user` VALUES ('730', '6', '228');
INSERT INTO `upms_resource_user` VALUES ('731', '7', '228');
INSERT INTO `upms_resource_user` VALUES ('732', '8', '228');
INSERT INTO `upms_resource_user` VALUES ('733', '9', '228');
INSERT INTO `upms_resource_user` VALUES ('734', '10', '228');
INSERT INTO `upms_resource_user` VALUES ('735', '11', '228');
INSERT INTO `upms_resource_user` VALUES ('736', '12', '228');
INSERT INTO `upms_resource_user` VALUES ('737', '13', '228');
INSERT INTO `upms_resource_user` VALUES ('738', '14', '228');
INSERT INTO `upms_resource_user` VALUES ('739', '15', '228');
INSERT INTO `upms_resource_user` VALUES ('740', '16', '228');
INSERT INTO `upms_resource_user` VALUES ('741', '18', '228');
INSERT INTO `upms_resource_user` VALUES ('742', '19', '228');
INSERT INTO `upms_resource_user` VALUES ('743', '20', '228');
INSERT INTO `upms_resource_user` VALUES ('744', '21', '228');
INSERT INTO `upms_resource_user` VALUES ('745', '22', '228');
INSERT INTO `upms_resource_user` VALUES ('746', '23', '228');
INSERT INTO `upms_resource_user` VALUES ('747', '24', '228');
INSERT INTO `upms_resource_user` VALUES ('748', '25', '228');
INSERT INTO `upms_resource_user` VALUES ('749', '26', '228');
INSERT INTO `upms_resource_user` VALUES ('750', '27', '228');
INSERT INTO `upms_resource_user` VALUES ('751', '28', '228');
INSERT INTO `upms_resource_user` VALUES ('752', '29', '228');
INSERT INTO `upms_resource_user` VALUES ('753', '30', '228');
INSERT INTO `upms_resource_user` VALUES ('754', '31', '228');
INSERT INTO `upms_resource_user` VALUES ('755', '32', '228');
INSERT INTO `upms_resource_user` VALUES ('756', '33', '228');
INSERT INTO `upms_resource_user` VALUES ('757', '34', '228');
INSERT INTO `upms_resource_user` VALUES ('758', '37', '228');
INSERT INTO `upms_resource_user` VALUES ('759', '38', '228');
INSERT INTO `upms_resource_user` VALUES ('760', '39', '228');
INSERT INTO `upms_resource_user` VALUES ('761', '40', '228');
INSERT INTO `upms_resource_user` VALUES ('762', '41', '228');
INSERT INTO `upms_resource_user` VALUES ('763', '43', '228');
INSERT INTO `upms_resource_user` VALUES ('764', '44', '228');
INSERT INTO `upms_resource_user` VALUES ('765', '45', '228');
INSERT INTO `upms_resource_user` VALUES ('766', '46', '228');
INSERT INTO `upms_resource_user` VALUES ('767', '47', '228');
INSERT INTO `upms_resource_user` VALUES ('768', '48', '228');
INSERT INTO `upms_resource_user` VALUES ('769', '49', '228');
INSERT INTO `upms_resource_user` VALUES ('770', '51', '228');
INSERT INTO `upms_resource_user` VALUES ('771', '53', '228');
INSERT INTO `upms_resource_user` VALUES ('772', '54', '228');
INSERT INTO `upms_resource_user` VALUES ('773', '55', '228');
INSERT INTO `upms_resource_user` VALUES ('774', '56', '228');
INSERT INTO `upms_resource_user` VALUES ('775', '57', '228');
INSERT INTO `upms_resource_user` VALUES ('776', '58', '228');
INSERT INTO `upms_resource_user` VALUES ('777', '59', '228');
INSERT INTO `upms_resource_user` VALUES ('778', '60', '228');
INSERT INTO `upms_resource_user` VALUES ('779', '61', '228');
INSERT INTO `upms_resource_user` VALUES ('780', '62', '228');
INSERT INTO `upms_resource_user` VALUES ('781', '63', '228');
INSERT INTO `upms_resource_user` VALUES ('782', '64', '228');
INSERT INTO `upms_resource_user` VALUES ('783', '65', '228');
INSERT INTO `upms_resource_user` VALUES ('784', '66', '228');
INSERT INTO `upms_resource_user` VALUES ('785', '67', '228');
INSERT INTO `upms_resource_user` VALUES ('786', '68', '228');
INSERT INTO `upms_resource_user` VALUES ('787', '69', '228');
INSERT INTO `upms_resource_user` VALUES ('788', '70', '228');
INSERT INTO `upms_resource_user` VALUES ('789', '71', '228');
INSERT INTO `upms_resource_user` VALUES ('790', '72', '228');
INSERT INTO `upms_resource_user` VALUES ('791', '73', '228');
INSERT INTO `upms_resource_user` VALUES ('792', '74', '228');
INSERT INTO `upms_resource_user` VALUES ('793', '532', '228');
INSERT INTO `upms_resource_user` VALUES ('794', '533', '228');
INSERT INTO `upms_resource_user` VALUES ('795', '535', '228');
INSERT INTO `upms_resource_user` VALUES ('796', '536', '228');
INSERT INTO `upms_resource_user` VALUES ('797', '537', '228');
INSERT INTO `upms_resource_user` VALUES ('798', '538', '228');
INSERT INTO `upms_resource_user` VALUES ('799', '539', '228');
INSERT INTO `upms_resource_user` VALUES ('800', '540', '228');
INSERT INTO `upms_resource_user` VALUES ('801', '541', '228');
INSERT INTO `upms_resource_user` VALUES ('802', '542', '228');
INSERT INTO `upms_resource_user` VALUES ('803', '543', '228');
INSERT INTO `upms_resource_user` VALUES ('804', '544', '228');
INSERT INTO `upms_resource_user` VALUES ('805', '545', '228');
INSERT INTO `upms_resource_user` VALUES ('806', '546', '228');
INSERT INTO `upms_resource_user` VALUES ('807', '547', '228');
INSERT INTO `upms_resource_user` VALUES ('808', '548', '228');
INSERT INTO `upms_resource_user` VALUES ('809', '549', '228');
INSERT INTO `upms_resource_user` VALUES ('810', '550', '228');
INSERT INTO `upms_resource_user` VALUES ('811', '551', '228');
INSERT INTO `upms_resource_user` VALUES ('812', '552', '228');
INSERT INTO `upms_resource_user` VALUES ('813', '553', '228');
INSERT INTO `upms_resource_user` VALUES ('814', '554', '228');
INSERT INTO `upms_resource_user` VALUES ('815', '555', '228');
INSERT INTO `upms_resource_user` VALUES ('816', '556', '228');
INSERT INTO `upms_resource_user` VALUES ('817', '557', '228');
INSERT INTO `upms_resource_user` VALUES ('818', '558', '228');
INSERT INTO `upms_resource_user` VALUES ('819', '559', '228');
INSERT INTO `upms_resource_user` VALUES ('820', '560', '228');
INSERT INTO `upms_resource_user` VALUES ('821', '561', '228');
INSERT INTO `upms_resource_user` VALUES ('822', '562', '228');
INSERT INTO `upms_resource_user` VALUES ('823', '563', '228');
INSERT INTO `upms_resource_user` VALUES ('824', '564', '228');
INSERT INTO `upms_resource_user` VALUES ('825', '565', '228');
INSERT INTO `upms_resource_user` VALUES ('826', '566', '228');
INSERT INTO `upms_resource_user` VALUES ('827', '567', '228');
INSERT INTO `upms_resource_user` VALUES ('828', '568', '228');
INSERT INTO `upms_resource_user` VALUES ('829', '569', '228');
INSERT INTO `upms_resource_user` VALUES ('830', '570', '228');
INSERT INTO `upms_resource_user` VALUES ('831', '571', '228');
INSERT INTO `upms_resource_user` VALUES ('832', '572', '228');
INSERT INTO `upms_resource_user` VALUES ('833', '573', '228');
INSERT INTO `upms_resource_user` VALUES ('834', '574', '228');
INSERT INTO `upms_resource_user` VALUES ('835', '575', '228');
INSERT INTO `upms_resource_user` VALUES ('836', '576', '228');
INSERT INTO `upms_resource_user` VALUES ('837', '577', '228');
INSERT INTO `upms_resource_user` VALUES ('838', '578', '228');
INSERT INTO `upms_resource_user` VALUES ('839', '579', '228');
INSERT INTO `upms_resource_user` VALUES ('840', '580', '228');
INSERT INTO `upms_resource_user` VALUES ('841', '581', '228');
INSERT INTO `upms_resource_user` VALUES ('842', '582', '228');
INSERT INTO `upms_resource_user` VALUES ('843', '583', '228');
INSERT INTO `upms_resource_user` VALUES ('844', '584', '228');
INSERT INTO `upms_resource_user` VALUES ('845', '585', '228');
INSERT INTO `upms_resource_user` VALUES ('846', '586', '228');
INSERT INTO `upms_resource_user` VALUES ('847', '587', '228');
INSERT INTO `upms_resource_user` VALUES ('848', '588', '228');
INSERT INTO `upms_resource_user` VALUES ('849', '589', '228');
INSERT INTO `upms_resource_user` VALUES ('850', '590', '228');
INSERT INTO `upms_resource_user` VALUES ('851', '591', '228');
INSERT INTO `upms_resource_user` VALUES ('852', '592', '228');
INSERT INTO `upms_resource_user` VALUES ('853', '593', '228');
INSERT INTO `upms_resource_user` VALUES ('854', '594', '228');
INSERT INTO `upms_resource_user` VALUES ('855', '595', '228');
INSERT INTO `upms_resource_user` VALUES ('856', '596', '228');
INSERT INTO `upms_resource_user` VALUES ('857', '597', '228');
INSERT INTO `upms_resource_user` VALUES ('858', '598', '228');
INSERT INTO `upms_resource_user` VALUES ('859', '599', '228');
INSERT INTO `upms_resource_user` VALUES ('860', '600', '228');
INSERT INTO `upms_resource_user` VALUES ('861', '601', '228');
INSERT INTO `upms_resource_user` VALUES ('862', '602', '228');
INSERT INTO `upms_resource_user` VALUES ('863', '603', '228');
INSERT INTO `upms_resource_user` VALUES ('864', '604', '228');
INSERT INTO `upms_resource_user` VALUES ('865', '605', '228');
INSERT INTO `upms_resource_user` VALUES ('866', '606', '228');
INSERT INTO `upms_resource_user` VALUES ('867', '607', '228');
INSERT INTO `upms_resource_user` VALUES ('868', '608', '228');
INSERT INTO `upms_resource_user` VALUES ('869', '609', '228');
INSERT INTO `upms_resource_user` VALUES ('870', '610', '228');
INSERT INTO `upms_resource_user` VALUES ('871', '611', '228');
INSERT INTO `upms_resource_user` VALUES ('872', '612', '228');
INSERT INTO `upms_resource_user` VALUES ('873', '613', '228');
INSERT INTO `upms_resource_user` VALUES ('874', '614', '228');
INSERT INTO `upms_resource_user` VALUES ('875', '615', '228');
INSERT INTO `upms_resource_user` VALUES ('876', '616', '228');
INSERT INTO `upms_resource_user` VALUES ('877', '617', '228');
INSERT INTO `upms_resource_user` VALUES ('878', '618', '228');
INSERT INTO `upms_resource_user` VALUES ('879', '619', '228');
INSERT INTO `upms_resource_user` VALUES ('880', '620', '228');
INSERT INTO `upms_resource_user` VALUES ('881', '621', '228');
INSERT INTO `upms_resource_user` VALUES ('882', '622', '228');
INSERT INTO `upms_resource_user` VALUES ('883', '623', '228');
INSERT INTO `upms_resource_user` VALUES ('884', '624', '228');
INSERT INTO `upms_resource_user` VALUES ('885', '625', '228');
INSERT INTO `upms_resource_user` VALUES ('886', '626', '228');
INSERT INTO `upms_resource_user` VALUES ('887', '627', '228');
INSERT INTO `upms_resource_user` VALUES ('888', '628', '228');
INSERT INTO `upms_resource_user` VALUES ('889', '629', '228');
INSERT INTO `upms_resource_user` VALUES ('890', '630', '228');
INSERT INTO `upms_resource_user` VALUES ('891', '631', '228');
INSERT INTO `upms_resource_user` VALUES ('892', '632', '228');
INSERT INTO `upms_resource_user` VALUES ('893', '633', '228');
INSERT INTO `upms_resource_user` VALUES ('894', '634', '228');
INSERT INTO `upms_resource_user` VALUES ('895', '635', '228');
INSERT INTO `upms_resource_user` VALUES ('896', '636', '228');
INSERT INTO `upms_resource_user` VALUES ('897', '637', '228');
INSERT INTO `upms_resource_user` VALUES ('898', '638', '228');
INSERT INTO `upms_resource_user` VALUES ('899', '639', '228');
INSERT INTO `upms_resource_user` VALUES ('900', '640', '228');
INSERT INTO `upms_resource_user` VALUES ('901', '641', '228');
INSERT INTO `upms_resource_user` VALUES ('902', '642', '228');
INSERT INTO `upms_resource_user` VALUES ('903', '643', '228');
INSERT INTO `upms_resource_user` VALUES ('904', '644', '228');
INSERT INTO `upms_resource_user` VALUES ('905', '645', '228');
INSERT INTO `upms_resource_user` VALUES ('906', '646', '228');
INSERT INTO `upms_resource_user` VALUES ('907', '647', '228');
INSERT INTO `upms_resource_user` VALUES ('908', '648', '228');
INSERT INTO `upms_resource_user` VALUES ('909', '649', '228');
INSERT INTO `upms_resource_user` VALUES ('910', '650', '228');
INSERT INTO `upms_resource_user` VALUES ('911', '651', '228');
INSERT INTO `upms_resource_user` VALUES ('912', '652', '228');
INSERT INTO `upms_resource_user` VALUES ('913', '653', '228');
INSERT INTO `upms_resource_user` VALUES ('914', '654', '228');
INSERT INTO `upms_resource_user` VALUES ('915', '655', '228');
INSERT INTO `upms_resource_user` VALUES ('916', '656', '228');
INSERT INTO `upms_resource_user` VALUES ('917', '657', '228');
INSERT INTO `upms_resource_user` VALUES ('918', '658', '228');
INSERT INTO `upms_resource_user` VALUES ('919', '659', '228');
INSERT INTO `upms_resource_user` VALUES ('920', '660', '228');
INSERT INTO `upms_resource_user` VALUES ('921', '661', '228');
INSERT INTO `upms_resource_user` VALUES ('922', '662', '228');
INSERT INTO `upms_resource_user` VALUES ('923', '663', '228');
INSERT INTO `upms_resource_user` VALUES ('924', '664', '228');
INSERT INTO `upms_resource_user` VALUES ('925', '665', '228');
INSERT INTO `upms_resource_user` VALUES ('926', '666', '228');
INSERT INTO `upms_resource_user` VALUES ('927', '668', '228');
INSERT INTO `upms_resource_user` VALUES ('928', '669', '228');
INSERT INTO `upms_resource_user` VALUES ('929', '670', '228');
INSERT INTO `upms_resource_user` VALUES ('931', '73', '100000055');
INSERT INTO `upms_resource_user` VALUES ('934', '48', '292');
INSERT INTO `upms_resource_user` VALUES ('935', '578', '292');
INSERT INTO `upms_resource_user` VALUES ('936', '579', '292');
INSERT INTO `upms_resource_user` VALUES ('937', '583', '292');
INSERT INTO `upms_resource_user` VALUES ('938', '584', '292');
INSERT INTO `upms_resource_user` VALUES ('939', '670', '292');
INSERT INTO `upms_resource_user` VALUES ('947', '1', '188');
INSERT INTO `upms_resource_user` VALUES ('948', '1', '254');
INSERT INTO `upms_resource_user` VALUES ('949', '1', '100000054');
INSERT INTO `upms_resource_user` VALUES ('950', '1', '190');
INSERT INTO `upms_resource_user` VALUES ('951', '1', '189');
INSERT INTO `upms_resource_user` VALUES ('952', '29', '447');
INSERT INTO `upms_resource_user` VALUES ('953', '1', '100001');
INSERT INTO `upms_resource_user` VALUES ('954', '2', '100001');
INSERT INTO `upms_resource_user` VALUES ('955', '3', '100001');
INSERT INTO `upms_resource_user` VALUES ('956', '4', '100001');
INSERT INTO `upms_resource_user` VALUES ('957', '5', '100001');
INSERT INTO `upms_resource_user` VALUES ('958', '6', '100001');
INSERT INTO `upms_resource_user` VALUES ('959', '7', '100001');
INSERT INTO `upms_resource_user` VALUES ('960', '8', '100001');
INSERT INTO `upms_resource_user` VALUES ('961', '9', '100001');
INSERT INTO `upms_resource_user` VALUES ('962', '10', '100001');
INSERT INTO `upms_resource_user` VALUES ('963', '11', '100001');
INSERT INTO `upms_resource_user` VALUES ('964', '12', '100001');
INSERT INTO `upms_resource_user` VALUES ('965', '13', '100001');
INSERT INTO `upms_resource_user` VALUES ('966', '14', '100001');
INSERT INTO `upms_resource_user` VALUES ('967', '15', '100001');
INSERT INTO `upms_resource_user` VALUES ('968', '16', '100001');
INSERT INTO `upms_resource_user` VALUES ('969', '18', '100001');
INSERT INTO `upms_resource_user` VALUES ('970', '19', '100001');
INSERT INTO `upms_resource_user` VALUES ('971', '20', '100001');
INSERT INTO `upms_resource_user` VALUES ('972', '21', '100001');
INSERT INTO `upms_resource_user` VALUES ('973', '22', '100001');
INSERT INTO `upms_resource_user` VALUES ('974', '23', '100001');
INSERT INTO `upms_resource_user` VALUES ('975', '24', '100001');
INSERT INTO `upms_resource_user` VALUES ('976', '25', '100001');
INSERT INTO `upms_resource_user` VALUES ('977', '26', '100001');
INSERT INTO `upms_resource_user` VALUES ('978', '27', '100001');
INSERT INTO `upms_resource_user` VALUES ('979', '28', '100001');
INSERT INTO `upms_resource_user` VALUES ('980', '29', '100001');
INSERT INTO `upms_resource_user` VALUES ('981', '30', '100001');
INSERT INTO `upms_resource_user` VALUES ('982', '31', '100001');
INSERT INTO `upms_resource_user` VALUES ('983', '32', '100001');
INSERT INTO `upms_resource_user` VALUES ('984', '33', '100001');
INSERT INTO `upms_resource_user` VALUES ('985', '34', '100001');
INSERT INTO `upms_resource_user` VALUES ('986', '37', '100001');
INSERT INTO `upms_resource_user` VALUES ('987', '38', '100001');
INSERT INTO `upms_resource_user` VALUES ('988', '39', '100001');
INSERT INTO `upms_resource_user` VALUES ('989', '40', '100001');
INSERT INTO `upms_resource_user` VALUES ('990', '41', '100001');
INSERT INTO `upms_resource_user` VALUES ('991', '43', '100001');
INSERT INTO `upms_resource_user` VALUES ('992', '44', '100001');
INSERT INTO `upms_resource_user` VALUES ('993', '45', '100001');
INSERT INTO `upms_resource_user` VALUES ('994', '46', '100001');
INSERT INTO `upms_resource_user` VALUES ('995', '47', '100001');
INSERT INTO `upms_resource_user` VALUES ('996', '48', '100001');
INSERT INTO `upms_resource_user` VALUES ('997', '49', '100001');
INSERT INTO `upms_resource_user` VALUES ('998', '51', '100001');
INSERT INTO `upms_resource_user` VALUES ('999', '53', '100001');
INSERT INTO `upms_resource_user` VALUES ('1000', '54', '100001');
INSERT INTO `upms_resource_user` VALUES ('1001', '55', '100001');
INSERT INTO `upms_resource_user` VALUES ('1002', '56', '100001');
INSERT INTO `upms_resource_user` VALUES ('1003', '57', '100001');
INSERT INTO `upms_resource_user` VALUES ('1004', '58', '100001');
INSERT INTO `upms_resource_user` VALUES ('1005', '59', '100001');
INSERT INTO `upms_resource_user` VALUES ('1006', '60', '100001');
INSERT INTO `upms_resource_user` VALUES ('1007', '61', '100001');
INSERT INTO `upms_resource_user` VALUES ('1008', '62', '100001');
INSERT INTO `upms_resource_user` VALUES ('1009', '63', '100001');
INSERT INTO `upms_resource_user` VALUES ('1010', '64', '100001');
INSERT INTO `upms_resource_user` VALUES ('1011', '65', '100001');
INSERT INTO `upms_resource_user` VALUES ('1012', '66', '100001');
INSERT INTO `upms_resource_user` VALUES ('1013', '67', '100001');
INSERT INTO `upms_resource_user` VALUES ('1014', '68', '100001');
INSERT INTO `upms_resource_user` VALUES ('1015', '69', '100001');
INSERT INTO `upms_resource_user` VALUES ('1016', '70', '100001');
INSERT INTO `upms_resource_user` VALUES ('1017', '71', '100001');
INSERT INTO `upms_resource_user` VALUES ('1018', '72', '100001');
INSERT INTO `upms_resource_user` VALUES ('1019', '73', '100001');
INSERT INTO `upms_resource_user` VALUES ('1020', '74', '100001');
INSERT INTO `upms_resource_user` VALUES ('1021', '532', '100001');
INSERT INTO `upms_resource_user` VALUES ('1022', '533', '100001');
INSERT INTO `upms_resource_user` VALUES ('1023', '535', '100001');
INSERT INTO `upms_resource_user` VALUES ('1024', '536', '100001');
INSERT INTO `upms_resource_user` VALUES ('1025', '537', '100001');
INSERT INTO `upms_resource_user` VALUES ('1026', '538', '100001');
INSERT INTO `upms_resource_user` VALUES ('1027', '539', '100001');
INSERT INTO `upms_resource_user` VALUES ('1028', '540', '100001');
INSERT INTO `upms_resource_user` VALUES ('1029', '541', '100001');
INSERT INTO `upms_resource_user` VALUES ('1030', '542', '100001');
INSERT INTO `upms_resource_user` VALUES ('1031', '543', '100001');
INSERT INTO `upms_resource_user` VALUES ('1032', '544', '100001');
INSERT INTO `upms_resource_user` VALUES ('1033', '545', '100001');
INSERT INTO `upms_resource_user` VALUES ('1034', '546', '100001');
INSERT INTO `upms_resource_user` VALUES ('1035', '547', '100001');
INSERT INTO `upms_resource_user` VALUES ('1036', '548', '100001');
INSERT INTO `upms_resource_user` VALUES ('1037', '549', '100001');
INSERT INTO `upms_resource_user` VALUES ('1038', '550', '100001');
INSERT INTO `upms_resource_user` VALUES ('1039', '551', '100001');
INSERT INTO `upms_resource_user` VALUES ('1040', '552', '100001');
INSERT INTO `upms_resource_user` VALUES ('1041', '553', '100001');
INSERT INTO `upms_resource_user` VALUES ('1042', '554', '100001');
INSERT INTO `upms_resource_user` VALUES ('1043', '555', '100001');
INSERT INTO `upms_resource_user` VALUES ('1044', '556', '100001');
INSERT INTO `upms_resource_user` VALUES ('1045', '557', '100001');
INSERT INTO `upms_resource_user` VALUES ('1046', '558', '100001');
INSERT INTO `upms_resource_user` VALUES ('1047', '559', '100001');
INSERT INTO `upms_resource_user` VALUES ('1048', '560', '100001');
INSERT INTO `upms_resource_user` VALUES ('1049', '561', '100001');
INSERT INTO `upms_resource_user` VALUES ('1050', '562', '100001');
INSERT INTO `upms_resource_user` VALUES ('1051', '563', '100001');
INSERT INTO `upms_resource_user` VALUES ('1052', '564', '100001');
INSERT INTO `upms_resource_user` VALUES ('1053', '565', '100001');
INSERT INTO `upms_resource_user` VALUES ('1054', '566', '100001');
INSERT INTO `upms_resource_user` VALUES ('1055', '567', '100001');
INSERT INTO `upms_resource_user` VALUES ('1056', '568', '100001');
INSERT INTO `upms_resource_user` VALUES ('1057', '569', '100001');
INSERT INTO `upms_resource_user` VALUES ('1058', '570', '100001');
INSERT INTO `upms_resource_user` VALUES ('1059', '571', '100001');
INSERT INTO `upms_resource_user` VALUES ('1060', '572', '100001');
INSERT INTO `upms_resource_user` VALUES ('1061', '573', '100001');
INSERT INTO `upms_resource_user` VALUES ('1062', '574', '100001');
INSERT INTO `upms_resource_user` VALUES ('1063', '575', '100001');
INSERT INTO `upms_resource_user` VALUES ('1064', '576', '100001');
INSERT INTO `upms_resource_user` VALUES ('1065', '577', '100001');
INSERT INTO `upms_resource_user` VALUES ('1066', '578', '100001');
INSERT INTO `upms_resource_user` VALUES ('1067', '579', '100001');
INSERT INTO `upms_resource_user` VALUES ('1068', '580', '100001');
INSERT INTO `upms_resource_user` VALUES ('1069', '581', '100001');
INSERT INTO `upms_resource_user` VALUES ('1070', '582', '100001');
INSERT INTO `upms_resource_user` VALUES ('1071', '583', '100001');
INSERT INTO `upms_resource_user` VALUES ('1072', '584', '100001');
INSERT INTO `upms_resource_user` VALUES ('1073', '585', '100001');
INSERT INTO `upms_resource_user` VALUES ('1074', '586', '100001');
INSERT INTO `upms_resource_user` VALUES ('1075', '587', '100001');
INSERT INTO `upms_resource_user` VALUES ('1076', '588', '100001');
INSERT INTO `upms_resource_user` VALUES ('1077', '589', '100001');
INSERT INTO `upms_resource_user` VALUES ('1078', '590', '100001');
INSERT INTO `upms_resource_user` VALUES ('1079', '591', '100001');
INSERT INTO `upms_resource_user` VALUES ('1080', '592', '100001');
INSERT INTO `upms_resource_user` VALUES ('1081', '593', '100001');
INSERT INTO `upms_resource_user` VALUES ('1082', '594', '100001');
INSERT INTO `upms_resource_user` VALUES ('1083', '595', '100001');
INSERT INTO `upms_resource_user` VALUES ('1084', '596', '100001');
INSERT INTO `upms_resource_user` VALUES ('1085', '597', '100001');
INSERT INTO `upms_resource_user` VALUES ('1086', '598', '100001');
INSERT INTO `upms_resource_user` VALUES ('1087', '599', '100001');
INSERT INTO `upms_resource_user` VALUES ('1088', '600', '100001');
INSERT INTO `upms_resource_user` VALUES ('1089', '601', '100001');
INSERT INTO `upms_resource_user` VALUES ('1090', '602', '100001');
INSERT INTO `upms_resource_user` VALUES ('1091', '603', '100001');
INSERT INTO `upms_resource_user` VALUES ('1092', '604', '100001');
INSERT INTO `upms_resource_user` VALUES ('1093', '605', '100001');
INSERT INTO `upms_resource_user` VALUES ('1094', '606', '100001');
INSERT INTO `upms_resource_user` VALUES ('1095', '607', '100001');
INSERT INTO `upms_resource_user` VALUES ('1096', '608', '100001');
INSERT INTO `upms_resource_user` VALUES ('1097', '609', '100001');
INSERT INTO `upms_resource_user` VALUES ('1098', '610', '100001');
INSERT INTO `upms_resource_user` VALUES ('1099', '611', '100001');
INSERT INTO `upms_resource_user` VALUES ('1100', '612', '100001');
INSERT INTO `upms_resource_user` VALUES ('1101', '613', '100001');
INSERT INTO `upms_resource_user` VALUES ('1102', '614', '100001');
INSERT INTO `upms_resource_user` VALUES ('1103', '615', '100001');
INSERT INTO `upms_resource_user` VALUES ('1104', '616', '100001');
INSERT INTO `upms_resource_user` VALUES ('1105', '617', '100001');
INSERT INTO `upms_resource_user` VALUES ('1106', '618', '100001');
INSERT INTO `upms_resource_user` VALUES ('1107', '619', '100001');
INSERT INTO `upms_resource_user` VALUES ('1108', '620', '100001');
INSERT INTO `upms_resource_user` VALUES ('1109', '621', '100001');
INSERT INTO `upms_resource_user` VALUES ('1110', '622', '100001');
INSERT INTO `upms_resource_user` VALUES ('1111', '623', '100001');
INSERT INTO `upms_resource_user` VALUES ('1112', '624', '100001');
INSERT INTO `upms_resource_user` VALUES ('1113', '625', '100001');
INSERT INTO `upms_resource_user` VALUES ('1114', '626', '100001');
INSERT INTO `upms_resource_user` VALUES ('1115', '627', '100001');
INSERT INTO `upms_resource_user` VALUES ('1116', '628', '100001');
INSERT INTO `upms_resource_user` VALUES ('1117', '629', '100001');
INSERT INTO `upms_resource_user` VALUES ('1118', '630', '100001');
INSERT INTO `upms_resource_user` VALUES ('1119', '631', '100001');
INSERT INTO `upms_resource_user` VALUES ('1120', '632', '100001');
INSERT INTO `upms_resource_user` VALUES ('1121', '633', '100001');
INSERT INTO `upms_resource_user` VALUES ('1122', '634', '100001');
INSERT INTO `upms_resource_user` VALUES ('1123', '635', '100001');
INSERT INTO `upms_resource_user` VALUES ('1124', '636', '100001');
INSERT INTO `upms_resource_user` VALUES ('1125', '637', '100001');
INSERT INTO `upms_resource_user` VALUES ('1126', '638', '100001');
INSERT INTO `upms_resource_user` VALUES ('1127', '639', '100001');
INSERT INTO `upms_resource_user` VALUES ('1128', '640', '100001');
INSERT INTO `upms_resource_user` VALUES ('1129', '641', '100001');
INSERT INTO `upms_resource_user` VALUES ('1130', '642', '100001');
INSERT INTO `upms_resource_user` VALUES ('1131', '643', '100001');
INSERT INTO `upms_resource_user` VALUES ('1132', '644', '100001');
INSERT INTO `upms_resource_user` VALUES ('1133', '645', '100001');
INSERT INTO `upms_resource_user` VALUES ('1134', '646', '100001');
INSERT INTO `upms_resource_user` VALUES ('1135', '647', '100001');
INSERT INTO `upms_resource_user` VALUES ('1136', '648', '100001');
INSERT INTO `upms_resource_user` VALUES ('1137', '649', '100001');
INSERT INTO `upms_resource_user` VALUES ('1138', '650', '100001');
INSERT INTO `upms_resource_user` VALUES ('1139', '651', '100001');
INSERT INTO `upms_resource_user` VALUES ('1140', '652', '100001');
INSERT INTO `upms_resource_user` VALUES ('1141', '653', '100001');
INSERT INTO `upms_resource_user` VALUES ('1142', '654', '100001');
INSERT INTO `upms_resource_user` VALUES ('1143', '655', '100001');
INSERT INTO `upms_resource_user` VALUES ('1144', '656', '100001');
INSERT INTO `upms_resource_user` VALUES ('1145', '657', '100001');
INSERT INTO `upms_resource_user` VALUES ('1146', '658', '100001');
INSERT INTO `upms_resource_user` VALUES ('1147', '659', '100001');
INSERT INTO `upms_resource_user` VALUES ('1148', '660', '100001');
INSERT INTO `upms_resource_user` VALUES ('1149', '661', '100001');
INSERT INTO `upms_resource_user` VALUES ('1150', '662', '100001');
INSERT INTO `upms_resource_user` VALUES ('1151', '663', '100001');
INSERT INTO `upms_resource_user` VALUES ('1152', '664', '100001');
INSERT INTO `upms_resource_user` VALUES ('1153', '665', '100001');
INSERT INTO `upms_resource_user` VALUES ('1154', '666', '100001');
INSERT INTO `upms_resource_user` VALUES ('1155', '668', '100001');
INSERT INTO `upms_resource_user` VALUES ('1156', '669', '100001');
INSERT INTO `upms_resource_user` VALUES ('1157', '670', '100001');
INSERT INTO `upms_resource_user` VALUES ('1158', '1', '1');
INSERT INTO `upms_resource_user` VALUES ('1159', '2', '1');
INSERT INTO `upms_resource_user` VALUES ('1160', '3', '1');
INSERT INTO `upms_resource_user` VALUES ('1161', '4', '1');
INSERT INTO `upms_resource_user` VALUES ('1162', '5', '1');
INSERT INTO `upms_resource_user` VALUES ('1163', '6', '1');
INSERT INTO `upms_resource_user` VALUES ('1164', '7', '1');
INSERT INTO `upms_resource_user` VALUES ('1165', '8', '1');
INSERT INTO `upms_resource_user` VALUES ('1166', '9', '1');
INSERT INTO `upms_resource_user` VALUES ('1167', '10', '1');
INSERT INTO `upms_resource_user` VALUES ('1168', '11', '1');
INSERT INTO `upms_resource_user` VALUES ('1169', '12', '1');
INSERT INTO `upms_resource_user` VALUES ('1170', '13', '1');
INSERT INTO `upms_resource_user` VALUES ('1171', '14', '1');
INSERT INTO `upms_resource_user` VALUES ('1172', '15', '1');
INSERT INTO `upms_resource_user` VALUES ('1173', '16', '1');
INSERT INTO `upms_resource_user` VALUES ('1174', '18', '1');
INSERT INTO `upms_resource_user` VALUES ('1175', '19', '1');
INSERT INTO `upms_resource_user` VALUES ('1176', '20', '1');
INSERT INTO `upms_resource_user` VALUES ('1177', '21', '1');
INSERT INTO `upms_resource_user` VALUES ('1178', '22', '1');
INSERT INTO `upms_resource_user` VALUES ('1179', '23', '1');
INSERT INTO `upms_resource_user` VALUES ('1180', '24', '1');
INSERT INTO `upms_resource_user` VALUES ('1181', '25', '1');
INSERT INTO `upms_resource_user` VALUES ('1182', '26', '1');
INSERT INTO `upms_resource_user` VALUES ('1183', '27', '1');
INSERT INTO `upms_resource_user` VALUES ('1184', '28', '1');
INSERT INTO `upms_resource_user` VALUES ('1185', '29', '1');
INSERT INTO `upms_resource_user` VALUES ('1186', '30', '1');
INSERT INTO `upms_resource_user` VALUES ('1187', '31', '1');
INSERT INTO `upms_resource_user` VALUES ('1188', '32', '1');
INSERT INTO `upms_resource_user` VALUES ('1189', '33', '1');
INSERT INTO `upms_resource_user` VALUES ('1190', '34', '1');
INSERT INTO `upms_resource_user` VALUES ('1191', '37', '1');
INSERT INTO `upms_resource_user` VALUES ('1192', '38', '1');
INSERT INTO `upms_resource_user` VALUES ('1193', '39', '1');
INSERT INTO `upms_resource_user` VALUES ('1194', '40', '1');
INSERT INTO `upms_resource_user` VALUES ('1195', '41', '1');
INSERT INTO `upms_resource_user` VALUES ('1196', '43', '1');
INSERT INTO `upms_resource_user` VALUES ('1197', '44', '1');
INSERT INTO `upms_resource_user` VALUES ('1198', '45', '1');
INSERT INTO `upms_resource_user` VALUES ('1199', '46', '1');
INSERT INTO `upms_resource_user` VALUES ('1200', '47', '1');
INSERT INTO `upms_resource_user` VALUES ('1201', '48', '1');
INSERT INTO `upms_resource_user` VALUES ('1202', '49', '1');
INSERT INTO `upms_resource_user` VALUES ('1203', '51', '1');
INSERT INTO `upms_resource_user` VALUES ('1204', '53', '1');
INSERT INTO `upms_resource_user` VALUES ('1205', '54', '1');
INSERT INTO `upms_resource_user` VALUES ('1206', '55', '1');
INSERT INTO `upms_resource_user` VALUES ('1207', '56', '1');
INSERT INTO `upms_resource_user` VALUES ('1208', '57', '1');
INSERT INTO `upms_resource_user` VALUES ('1209', '58', '1');
INSERT INTO `upms_resource_user` VALUES ('1210', '59', '1');
INSERT INTO `upms_resource_user` VALUES ('1211', '60', '1');
INSERT INTO `upms_resource_user` VALUES ('1212', '61', '1');
INSERT INTO `upms_resource_user` VALUES ('1213', '62', '1');
INSERT INTO `upms_resource_user` VALUES ('1214', '63', '1');
INSERT INTO `upms_resource_user` VALUES ('1215', '64', '1');
INSERT INTO `upms_resource_user` VALUES ('1216', '65', '1');
INSERT INTO `upms_resource_user` VALUES ('1217', '66', '1');
INSERT INTO `upms_resource_user` VALUES ('1218', '67', '1');
INSERT INTO `upms_resource_user` VALUES ('1219', '68', '1');
INSERT INTO `upms_resource_user` VALUES ('1220', '69', '1');
INSERT INTO `upms_resource_user` VALUES ('1221', '70', '1');
INSERT INTO `upms_resource_user` VALUES ('1222', '71', '1');
INSERT INTO `upms_resource_user` VALUES ('1223', '72', '1');
INSERT INTO `upms_resource_user` VALUES ('1224', '73', '1');
INSERT INTO `upms_resource_user` VALUES ('1225', '74', '1');
INSERT INTO `upms_resource_user` VALUES ('1226', '532', '1');
INSERT INTO `upms_resource_user` VALUES ('1227', '533', '1');
INSERT INTO `upms_resource_user` VALUES ('1228', '535', '1');
INSERT INTO `upms_resource_user` VALUES ('1229', '536', '1');
INSERT INTO `upms_resource_user` VALUES ('1230', '537', '1');
INSERT INTO `upms_resource_user` VALUES ('1231', '538', '1');
INSERT INTO `upms_resource_user` VALUES ('1232', '539', '1');
INSERT INTO `upms_resource_user` VALUES ('1233', '540', '1');
INSERT INTO `upms_resource_user` VALUES ('1234', '1', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1235', '2', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1236', '3', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1237', '4', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1238', '5', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1239', '6', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1240', '7', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1241', '8', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1242', '9', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1243', '10', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1244', '11', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1245', '12', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1246', '13', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1247', '14', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1248', '15', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1249', '16', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1250', '18', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1251', '19', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1252', '20', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1253', '21', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1254', '22', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1255', '23', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1256', '24', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1257', '25', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1258', '26', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1259', '27', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1260', '28', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1261', '29', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1262', '30', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1263', '31', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1264', '32', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1265', '33', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1266', '34', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1267', '37', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1268', '38', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1269', '39', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1270', '40', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1271', '41', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1272', '43', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1273', '44', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1274', '45', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1275', '46', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1276', '47', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1277', '48', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1278', '49', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1279', '51', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1280', '53', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1281', '54', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1282', '55', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1283', '56', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1284', '57', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1285', '58', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1286', '59', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1287', '60', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1288', '61', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1289', '62', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1290', '63', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1291', '64', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1292', '65', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1293', '66', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1294', '67', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1295', '68', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1296', '69', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1297', '70', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1298', '71', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1299', '72', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1300', '73', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1301', '74', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1302', '532', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1303', '533', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1304', '535', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1305', '536', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1306', '537', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1307', '538', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1308', '539', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1309', '540', '100000062');
INSERT INTO `upms_resource_user` VALUES ('1310', '28', '447');
INSERT INTO `upms_resource_user` VALUES ('1311', '5', '340');
INSERT INTO `upms_resource_user` VALUES ('1312', '6', '340');
INSERT INTO `upms_resource_user` VALUES ('1313', '37', '340');
INSERT INTO `upms_resource_user` VALUES ('1314', '38', '340');
INSERT INTO `upms_resource_user` VALUES ('1315', '39', '340');
INSERT INTO `upms_resource_user` VALUES ('1316', '1', '220');
INSERT INTO `upms_resource_user` VALUES ('1317', '2', '220');
INSERT INTO `upms_resource_user` VALUES ('1318', '3', '220');
INSERT INTO `upms_resource_user` VALUES ('1319', '4', '220');
INSERT INTO `upms_resource_user` VALUES ('1320', '5', '220');
INSERT INTO `upms_resource_user` VALUES ('1321', '6', '220');
INSERT INTO `upms_resource_user` VALUES ('1322', '7', '220');
INSERT INTO `upms_resource_user` VALUES ('1323', '8', '220');
INSERT INTO `upms_resource_user` VALUES ('1324', '9', '220');
INSERT INTO `upms_resource_user` VALUES ('1325', '10', '220');
INSERT INTO `upms_resource_user` VALUES ('1326', '11', '220');
INSERT INTO `upms_resource_user` VALUES ('1327', '12', '220');
INSERT INTO `upms_resource_user` VALUES ('1328', '13', '220');
INSERT INTO `upms_resource_user` VALUES ('1329', '14', '220');
INSERT INTO `upms_resource_user` VALUES ('1330', '15', '220');
INSERT INTO `upms_resource_user` VALUES ('1331', '16', '220');
INSERT INTO `upms_resource_user` VALUES ('1332', '18', '220');
INSERT INTO `upms_resource_user` VALUES ('1333', '19', '220');
INSERT INTO `upms_resource_user` VALUES ('1334', '20', '220');
INSERT INTO `upms_resource_user` VALUES ('1335', '21', '220');
INSERT INTO `upms_resource_user` VALUES ('1336', '22', '220');
INSERT INTO `upms_resource_user` VALUES ('1337', '23', '220');
INSERT INTO `upms_resource_user` VALUES ('1338', '24', '220');
INSERT INTO `upms_resource_user` VALUES ('1339', '25', '220');
INSERT INTO `upms_resource_user` VALUES ('1340', '26', '220');
INSERT INTO `upms_resource_user` VALUES ('1341', '27', '220');
INSERT INTO `upms_resource_user` VALUES ('1342', '28', '220');
INSERT INTO `upms_resource_user` VALUES ('1343', '29', '220');
INSERT INTO `upms_resource_user` VALUES ('1344', '30', '220');
INSERT INTO `upms_resource_user` VALUES ('1345', '31', '220');
INSERT INTO `upms_resource_user` VALUES ('1346', '32', '220');
INSERT INTO `upms_resource_user` VALUES ('1347', '33', '220');
INSERT INTO `upms_resource_user` VALUES ('1348', '34', '220');
INSERT INTO `upms_resource_user` VALUES ('1349', '37', '220');
INSERT INTO `upms_resource_user` VALUES ('1350', '38', '220');
INSERT INTO `upms_resource_user` VALUES ('1351', '39', '220');
INSERT INTO `upms_resource_user` VALUES ('1352', '40', '220');
INSERT INTO `upms_resource_user` VALUES ('1353', '41', '220');
INSERT INTO `upms_resource_user` VALUES ('1354', '43', '220');
INSERT INTO `upms_resource_user` VALUES ('1355', '44', '220');
INSERT INTO `upms_resource_user` VALUES ('1356', '45', '220');
INSERT INTO `upms_resource_user` VALUES ('1357', '46', '220');
INSERT INTO `upms_resource_user` VALUES ('1358', '47', '220');
INSERT INTO `upms_resource_user` VALUES ('1359', '48', '220');
INSERT INTO `upms_resource_user` VALUES ('1360', '49', '220');
INSERT INTO `upms_resource_user` VALUES ('1361', '51', '220');
INSERT INTO `upms_resource_user` VALUES ('1362', '53', '220');
INSERT INTO `upms_resource_user` VALUES ('1363', '54', '220');
INSERT INTO `upms_resource_user` VALUES ('1364', '55', '220');
INSERT INTO `upms_resource_user` VALUES ('1365', '56', '220');
INSERT INTO `upms_resource_user` VALUES ('1366', '57', '220');
INSERT INTO `upms_resource_user` VALUES ('1367', '58', '220');
INSERT INTO `upms_resource_user` VALUES ('1368', '59', '220');
INSERT INTO `upms_resource_user` VALUES ('1369', '60', '220');
INSERT INTO `upms_resource_user` VALUES ('1370', '61', '220');
INSERT INTO `upms_resource_user` VALUES ('1371', '62', '220');
INSERT INTO `upms_resource_user` VALUES ('1372', '63', '220');
INSERT INTO `upms_resource_user` VALUES ('1373', '64', '220');
INSERT INTO `upms_resource_user` VALUES ('1374', '65', '220');
INSERT INTO `upms_resource_user` VALUES ('1375', '66', '220');
INSERT INTO `upms_resource_user` VALUES ('1376', '67', '220');
INSERT INTO `upms_resource_user` VALUES ('1377', '68', '220');
INSERT INTO `upms_resource_user` VALUES ('1378', '69', '220');
INSERT INTO `upms_resource_user` VALUES ('1379', '70', '220');
INSERT INTO `upms_resource_user` VALUES ('1380', '71', '220');
INSERT INTO `upms_resource_user` VALUES ('1381', '72', '220');
INSERT INTO `upms_resource_user` VALUES ('1382', '73', '220');
INSERT INTO `upms_resource_user` VALUES ('1383', '74', '220');
INSERT INTO `upms_resource_user` VALUES ('1384', '532', '220');
INSERT INTO `upms_resource_user` VALUES ('1385', '533', '220');
INSERT INTO `upms_resource_user` VALUES ('1386', '535', '220');
INSERT INTO `upms_resource_user` VALUES ('1387', '536', '220');
INSERT INTO `upms_resource_user` VALUES ('1388', '537', '220');
INSERT INTO `upms_resource_user` VALUES ('1389', '538', '220');
INSERT INTO `upms_resource_user` VALUES ('1390', '539', '220');
INSERT INTO `upms_resource_user` VALUES ('1391', '540', '220');
INSERT INTO `upms_resource_user` VALUES ('1392', '668', '490');
INSERT INTO `upms_resource_user` VALUES ('1393', '669', '490');
INSERT INTO `upms_resource_user` VALUES ('1394', '670', '490');
INSERT INTO `upms_resource_user` VALUES ('1395', '1', '410');
INSERT INTO `upms_resource_user` VALUES ('1396', '2', '410');
INSERT INTO `upms_resource_user` VALUES ('1397', '3', '410');
INSERT INTO `upms_resource_user` VALUES ('1398', '7', '410');
INSERT INTO `upms_resource_user` VALUES ('1399', '10', '410');
INSERT INTO `upms_resource_user` VALUES ('1400', '11', '410');
INSERT INTO `upms_resource_user` VALUES ('1401', '12', '410');
INSERT INTO `upms_resource_user` VALUES ('1402', '13', '410');
INSERT INTO `upms_resource_user` VALUES ('1403', '14', '410');
INSERT INTO `upms_resource_user` VALUES ('1404', '15', '410');
INSERT INTO `upms_resource_user` VALUES ('1405', '16', '410');
INSERT INTO `upms_resource_user` VALUES ('1406', '18', '410');
INSERT INTO `upms_resource_user` VALUES ('1407', '19', '410');
INSERT INTO `upms_resource_user` VALUES ('1408', '20', '410');
INSERT INTO `upms_resource_user` VALUES ('1409', '21', '410');
INSERT INTO `upms_resource_user` VALUES ('1410', '23', '410');
INSERT INTO `upms_resource_user` VALUES ('1411', '24', '410');
INSERT INTO `upms_resource_user` VALUES ('1412', '25', '410');
INSERT INTO `upms_resource_user` VALUES ('1413', '26', '410');
INSERT INTO `upms_resource_user` VALUES ('1414', '27', '410');
INSERT INTO `upms_resource_user` VALUES ('1415', '28', '410');
INSERT INTO `upms_resource_user` VALUES ('1416', '29', '410');
INSERT INTO `upms_resource_user` VALUES ('1417', '30', '410');
INSERT INTO `upms_resource_user` VALUES ('1418', '31', '410');
INSERT INTO `upms_resource_user` VALUES ('1419', '32', '410');
INSERT INTO `upms_resource_user` VALUES ('1420', '33', '410');
INSERT INTO `upms_resource_user` VALUES ('1421', '34', '410');
INSERT INTO `upms_resource_user` VALUES ('1422', '1', '100000058');
INSERT INTO `upms_resource_user` VALUES ('1423', '1', '164');
INSERT INTO `upms_resource_user` VALUES ('1424', '2', '164');
INSERT INTO `upms_resource_user` VALUES ('1425', '3', '164');
INSERT INTO `upms_resource_user` VALUES ('1426', '4', '164');
INSERT INTO `upms_resource_user` VALUES ('1427', '5', '164');
INSERT INTO `upms_resource_user` VALUES ('1428', '6', '164');
INSERT INTO `upms_resource_user` VALUES ('1429', '7', '164');
INSERT INTO `upms_resource_user` VALUES ('1430', '8', '164');
INSERT INTO `upms_resource_user` VALUES ('1431', '9', '164');
INSERT INTO `upms_resource_user` VALUES ('1432', '10', '164');
INSERT INTO `upms_resource_user` VALUES ('1433', '11', '164');
INSERT INTO `upms_resource_user` VALUES ('1434', '12', '164');
INSERT INTO `upms_resource_user` VALUES ('1435', '13', '164');
INSERT INTO `upms_resource_user` VALUES ('1436', '14', '164');
INSERT INTO `upms_resource_user` VALUES ('1437', '15', '164');
INSERT INTO `upms_resource_user` VALUES ('1438', '16', '164');
INSERT INTO `upms_resource_user` VALUES ('1439', '18', '164');
INSERT INTO `upms_resource_user` VALUES ('1440', '19', '164');
INSERT INTO `upms_resource_user` VALUES ('1441', '20', '164');
INSERT INTO `upms_resource_user` VALUES ('1442', '21', '164');
INSERT INTO `upms_resource_user` VALUES ('1443', '22', '164');
INSERT INTO `upms_resource_user` VALUES ('1444', '23', '164');
INSERT INTO `upms_resource_user` VALUES ('1445', '24', '164');
INSERT INTO `upms_resource_user` VALUES ('1446', '25', '164');
INSERT INTO `upms_resource_user` VALUES ('1447', '26', '164');
INSERT INTO `upms_resource_user` VALUES ('1448', '27', '164');
INSERT INTO `upms_resource_user` VALUES ('1449', '28', '164');
INSERT INTO `upms_resource_user` VALUES ('1450', '29', '164');
INSERT INTO `upms_resource_user` VALUES ('1451', '30', '164');
INSERT INTO `upms_resource_user` VALUES ('1452', '31', '164');
INSERT INTO `upms_resource_user` VALUES ('1453', '32', '164');
INSERT INTO `upms_resource_user` VALUES ('1454', '33', '164');
INSERT INTO `upms_resource_user` VALUES ('1455', '34', '164');
INSERT INTO `upms_resource_user` VALUES ('1456', '37', '164');
INSERT INTO `upms_resource_user` VALUES ('1457', '38', '164');
INSERT INTO `upms_resource_user` VALUES ('1458', '39', '164');
INSERT INTO `upms_resource_user` VALUES ('1459', '40', '164');
INSERT INTO `upms_resource_user` VALUES ('1460', '41', '164');
INSERT INTO `upms_resource_user` VALUES ('1461', '43', '164');
INSERT INTO `upms_resource_user` VALUES ('1462', '44', '164');
INSERT INTO `upms_resource_user` VALUES ('1463', '45', '164');
INSERT INTO `upms_resource_user` VALUES ('1464', '46', '164');
INSERT INTO `upms_resource_user` VALUES ('1465', '47', '164');
INSERT INTO `upms_resource_user` VALUES ('1466', '48', '164');
INSERT INTO `upms_resource_user` VALUES ('1467', '49', '164');
INSERT INTO `upms_resource_user` VALUES ('1468', '51', '164');
INSERT INTO `upms_resource_user` VALUES ('1469', '53', '164');
INSERT INTO `upms_resource_user` VALUES ('1470', '54', '164');
INSERT INTO `upms_resource_user` VALUES ('1471', '55', '164');
INSERT INTO `upms_resource_user` VALUES ('1472', '56', '164');
INSERT INTO `upms_resource_user` VALUES ('1473', '57', '164');
INSERT INTO `upms_resource_user` VALUES ('1474', '58', '164');
INSERT INTO `upms_resource_user` VALUES ('1475', '59', '164');
INSERT INTO `upms_resource_user` VALUES ('1476', '60', '164');
INSERT INTO `upms_resource_user` VALUES ('1477', '61', '164');
INSERT INTO `upms_resource_user` VALUES ('1478', '62', '164');
INSERT INTO `upms_resource_user` VALUES ('1479', '63', '164');
INSERT INTO `upms_resource_user` VALUES ('1480', '64', '164');
INSERT INTO `upms_resource_user` VALUES ('1481', '65', '164');
INSERT INTO `upms_resource_user` VALUES ('1482', '66', '164');
INSERT INTO `upms_resource_user` VALUES ('1483', '67', '164');
INSERT INTO `upms_resource_user` VALUES ('1484', '68', '164');
INSERT INTO `upms_resource_user` VALUES ('1485', '69', '164');
INSERT INTO `upms_resource_user` VALUES ('1486', '70', '164');
INSERT INTO `upms_resource_user` VALUES ('1487', '71', '164');
INSERT INTO `upms_resource_user` VALUES ('1488', '72', '164');
INSERT INTO `upms_resource_user` VALUES ('1489', '73', '164');
INSERT INTO `upms_resource_user` VALUES ('1490', '74', '164');
INSERT INTO `upms_resource_user` VALUES ('1491', '532', '164');
INSERT INTO `upms_resource_user` VALUES ('1492', '533', '164');
INSERT INTO `upms_resource_user` VALUES ('1493', '535', '164');
INSERT INTO `upms_resource_user` VALUES ('1494', '536', '164');
INSERT INTO `upms_resource_user` VALUES ('1495', '537', '164');
INSERT INTO `upms_resource_user` VALUES ('1496', '538', '164');
INSERT INTO `upms_resource_user` VALUES ('1497', '539', '164');
INSERT INTO `upms_resource_user` VALUES ('1498', '540', '164');
INSERT INTO `upms_resource_user` VALUES ('1499', '1', '14');
INSERT INTO `upms_resource_user` VALUES ('1500', '2', '14');
INSERT INTO `upms_resource_user` VALUES ('1501', '3', '14');
INSERT INTO `upms_resource_user` VALUES ('1502', '4', '14');
INSERT INTO `upms_resource_user` VALUES ('1503', '5', '14');
INSERT INTO `upms_resource_user` VALUES ('1504', '6', '14');
INSERT INTO `upms_resource_user` VALUES ('1505', '7', '14');
INSERT INTO `upms_resource_user` VALUES ('1506', '8', '14');
INSERT INTO `upms_resource_user` VALUES ('1507', '9', '14');
INSERT INTO `upms_resource_user` VALUES ('1508', '10', '14');
INSERT INTO `upms_resource_user` VALUES ('1509', '11', '14');
INSERT INTO `upms_resource_user` VALUES ('1510', '12', '14');
INSERT INTO `upms_resource_user` VALUES ('1511', '13', '14');
INSERT INTO `upms_resource_user` VALUES ('1512', '14', '14');
INSERT INTO `upms_resource_user` VALUES ('1513', '15', '14');
INSERT INTO `upms_resource_user` VALUES ('1514', '16', '14');
INSERT INTO `upms_resource_user` VALUES ('1515', '18', '14');
INSERT INTO `upms_resource_user` VALUES ('1516', '19', '14');
INSERT INTO `upms_resource_user` VALUES ('1517', '20', '14');
INSERT INTO `upms_resource_user` VALUES ('1518', '21', '14');
INSERT INTO `upms_resource_user` VALUES ('1519', '22', '14');
INSERT INTO `upms_resource_user` VALUES ('1520', '23', '14');
INSERT INTO `upms_resource_user` VALUES ('1521', '24', '14');
INSERT INTO `upms_resource_user` VALUES ('1522', '25', '14');
INSERT INTO `upms_resource_user` VALUES ('1523', '26', '14');
INSERT INTO `upms_resource_user` VALUES ('1524', '27', '14');
INSERT INTO `upms_resource_user` VALUES ('1525', '28', '14');
INSERT INTO `upms_resource_user` VALUES ('1526', '29', '14');
INSERT INTO `upms_resource_user` VALUES ('1527', '30', '14');
INSERT INTO `upms_resource_user` VALUES ('1528', '31', '14');
INSERT INTO `upms_resource_user` VALUES ('1529', '32', '14');
INSERT INTO `upms_resource_user` VALUES ('1530', '33', '14');
INSERT INTO `upms_resource_user` VALUES ('1531', '34', '14');
INSERT INTO `upms_resource_user` VALUES ('1532', '37', '14');
INSERT INTO `upms_resource_user` VALUES ('1533', '38', '14');
INSERT INTO `upms_resource_user` VALUES ('1534', '39', '14');
INSERT INTO `upms_resource_user` VALUES ('1535', '40', '14');
INSERT INTO `upms_resource_user` VALUES ('1536', '41', '14');
INSERT INTO `upms_resource_user` VALUES ('1537', '43', '14');
INSERT INTO `upms_resource_user` VALUES ('1538', '44', '14');
INSERT INTO `upms_resource_user` VALUES ('1539', '45', '14');
INSERT INTO `upms_resource_user` VALUES ('1540', '46', '14');
INSERT INTO `upms_resource_user` VALUES ('1541', '47', '14');
INSERT INTO `upms_resource_user` VALUES ('1542', '48', '14');
INSERT INTO `upms_resource_user` VALUES ('1543', '49', '14');
INSERT INTO `upms_resource_user` VALUES ('1544', '51', '14');
INSERT INTO `upms_resource_user` VALUES ('1545', '53', '14');
INSERT INTO `upms_resource_user` VALUES ('1546', '54', '14');
INSERT INTO `upms_resource_user` VALUES ('1547', '55', '14');
INSERT INTO `upms_resource_user` VALUES ('1548', '56', '14');
INSERT INTO `upms_resource_user` VALUES ('1549', '57', '14');
INSERT INTO `upms_resource_user` VALUES ('1550', '58', '14');
INSERT INTO `upms_resource_user` VALUES ('1551', '59', '14');
INSERT INTO `upms_resource_user` VALUES ('1552', '60', '14');
INSERT INTO `upms_resource_user` VALUES ('1553', '61', '14');
INSERT INTO `upms_resource_user` VALUES ('1554', '62', '14');
INSERT INTO `upms_resource_user` VALUES ('1555', '63', '14');
INSERT INTO `upms_resource_user` VALUES ('1556', '64', '14');
INSERT INTO `upms_resource_user` VALUES ('1557', '65', '14');
INSERT INTO `upms_resource_user` VALUES ('1558', '66', '14');
INSERT INTO `upms_resource_user` VALUES ('1559', '67', '14');
INSERT INTO `upms_resource_user` VALUES ('1560', '68', '14');
INSERT INTO `upms_resource_user` VALUES ('1561', '69', '14');
INSERT INTO `upms_resource_user` VALUES ('1562', '70', '14');
INSERT INTO `upms_resource_user` VALUES ('1563', '71', '14');
INSERT INTO `upms_resource_user` VALUES ('1564', '72', '14');
INSERT INTO `upms_resource_user` VALUES ('1565', '73', '14');
INSERT INTO `upms_resource_user` VALUES ('1566', '74', '14');
INSERT INTO `upms_resource_user` VALUES ('1567', '532', '14');
INSERT INTO `upms_resource_user` VALUES ('1568', '533', '14');
INSERT INTO `upms_resource_user` VALUES ('1569', '535', '14');
INSERT INTO `upms_resource_user` VALUES ('1570', '536', '14');
INSERT INTO `upms_resource_user` VALUES ('1571', '537', '14');
INSERT INTO `upms_resource_user` VALUES ('1572', '538', '14');
INSERT INTO `upms_resource_user` VALUES ('1573', '539', '14');
INSERT INTO `upms_resource_user` VALUES ('1574', '540', '14');
INSERT INTO `upms_resource_user` VALUES ('1575', '21', '388');
INSERT INTO `upms_resource_user` VALUES ('1576', '21', '388');
INSERT INTO `upms_resource_user` VALUES ('1577', '21', '422');
INSERT INTO `upms_resource_user` VALUES ('1578', '1', '490');
INSERT INTO `upms_resource_user` VALUES ('1579', '2', '490');
INSERT INTO `upms_resource_user` VALUES ('1580', '3', '490');
INSERT INTO `upms_resource_user` VALUES ('1581', '4', '490');
INSERT INTO `upms_resource_user` VALUES ('1582', '5', '490');
INSERT INTO `upms_resource_user` VALUES ('1583', '6', '490');
INSERT INTO `upms_resource_user` VALUES ('1584', '7', '490');
INSERT INTO `upms_resource_user` VALUES ('1585', '8', '490');
INSERT INTO `upms_resource_user` VALUES ('1586', '9', '490');
INSERT INTO `upms_resource_user` VALUES ('1587', '10', '490');
INSERT INTO `upms_resource_user` VALUES ('1588', '11', '490');
INSERT INTO `upms_resource_user` VALUES ('1589', '12', '490');
INSERT INTO `upms_resource_user` VALUES ('1590', '13', '490');
INSERT INTO `upms_resource_user` VALUES ('1591', '14', '490');
INSERT INTO `upms_resource_user` VALUES ('1592', '15', '490');
INSERT INTO `upms_resource_user` VALUES ('1593', '16', '490');
INSERT INTO `upms_resource_user` VALUES ('1594', '18', '490');
INSERT INTO `upms_resource_user` VALUES ('1595', '19', '490');
INSERT INTO `upms_resource_user` VALUES ('1596', '20', '490');
INSERT INTO `upms_resource_user` VALUES ('1597', '21', '490');
INSERT INTO `upms_resource_user` VALUES ('1598', '22', '490');
INSERT INTO `upms_resource_user` VALUES ('1599', '23', '490');
INSERT INTO `upms_resource_user` VALUES ('1600', '24', '490');
INSERT INTO `upms_resource_user` VALUES ('1601', '25', '490');
INSERT INTO `upms_resource_user` VALUES ('1602', '26', '490');
INSERT INTO `upms_resource_user` VALUES ('1603', '27', '490');
INSERT INTO `upms_resource_user` VALUES ('1604', '28', '490');
INSERT INTO `upms_resource_user` VALUES ('1605', '29', '490');
INSERT INTO `upms_resource_user` VALUES ('1606', '30', '490');
INSERT INTO `upms_resource_user` VALUES ('1607', '31', '490');
INSERT INTO `upms_resource_user` VALUES ('1608', '32', '490');
INSERT INTO `upms_resource_user` VALUES ('1609', '33', '490');
INSERT INTO `upms_resource_user` VALUES ('1610', '34', '490');
INSERT INTO `upms_resource_user` VALUES ('1611', '37', '490');
INSERT INTO `upms_resource_user` VALUES ('1612', '38', '490');
INSERT INTO `upms_resource_user` VALUES ('1613', '39', '490');
INSERT INTO `upms_resource_user` VALUES ('1614', '40', '490');
INSERT INTO `upms_resource_user` VALUES ('1615', '41', '490');
INSERT INTO `upms_resource_user` VALUES ('1616', '43', '490');
INSERT INTO `upms_resource_user` VALUES ('1617', '44', '490');
INSERT INTO `upms_resource_user` VALUES ('1618', '45', '490');
INSERT INTO `upms_resource_user` VALUES ('1619', '46', '490');
INSERT INTO `upms_resource_user` VALUES ('1620', '47', '490');
INSERT INTO `upms_resource_user` VALUES ('1621', '48', '490');
INSERT INTO `upms_resource_user` VALUES ('1622', '49', '490');
INSERT INTO `upms_resource_user` VALUES ('1623', '51', '490');
INSERT INTO `upms_resource_user` VALUES ('1624', '53', '490');
INSERT INTO `upms_resource_user` VALUES ('1625', '54', '490');
INSERT INTO `upms_resource_user` VALUES ('1626', '55', '490');
INSERT INTO `upms_resource_user` VALUES ('1627', '56', '490');
INSERT INTO `upms_resource_user` VALUES ('1628', '57', '490');
INSERT INTO `upms_resource_user` VALUES ('1629', '58', '490');
INSERT INTO `upms_resource_user` VALUES ('1630', '59', '490');
INSERT INTO `upms_resource_user` VALUES ('1631', '60', '490');
INSERT INTO `upms_resource_user` VALUES ('1632', '61', '490');
INSERT INTO `upms_resource_user` VALUES ('1633', '62', '490');
INSERT INTO `upms_resource_user` VALUES ('1634', '63', '490');
INSERT INTO `upms_resource_user` VALUES ('1635', '64', '490');
INSERT INTO `upms_resource_user` VALUES ('1636', '65', '490');
INSERT INTO `upms_resource_user` VALUES ('1637', '66', '490');
INSERT INTO `upms_resource_user` VALUES ('1638', '67', '490');
INSERT INTO `upms_resource_user` VALUES ('1639', '68', '490');
INSERT INTO `upms_resource_user` VALUES ('1640', '69', '490');
INSERT INTO `upms_resource_user` VALUES ('1641', '70', '490');
INSERT INTO `upms_resource_user` VALUES ('1642', '71', '490');
INSERT INTO `upms_resource_user` VALUES ('1643', '72', '490');
INSERT INTO `upms_resource_user` VALUES ('1644', '73', '490');
INSERT INTO `upms_resource_user` VALUES ('1645', '74', '490');
INSERT INTO `upms_resource_user` VALUES ('1646', '532', '490');
INSERT INTO `upms_resource_user` VALUES ('1647', '533', '490');
INSERT INTO `upms_resource_user` VALUES ('1648', '535', '490');
INSERT INTO `upms_resource_user` VALUES ('1649', '536', '490');
INSERT INTO `upms_resource_user` VALUES ('1650', '537', '490');
INSERT INTO `upms_resource_user` VALUES ('1651', '538', '490');
INSERT INTO `upms_resource_user` VALUES ('1652', '539', '490');
INSERT INTO `upms_resource_user` VALUES ('1653', '540', '490');
INSERT INTO `upms_resource_user` VALUES ('1654', '31', '453');
INSERT INTO `upms_resource_user` VALUES ('1655', '670', '340');
INSERT INTO `upms_resource_user` VALUES ('1656', '670', '334');
INSERT INTO `upms_resource_user` VALUES ('1657', '580', '334');
INSERT INTO `upms_resource_user` VALUES ('1658', '618', '403');
INSERT INTO `upms_resource_user` VALUES ('1659', '1', '351');
INSERT INTO `upms_resource_user` VALUES ('1660', '2', '351');
INSERT INTO `upms_resource_user` VALUES ('1661', '3', '351');
INSERT INTO `upms_resource_user` VALUES ('1662', '4', '351');
INSERT INTO `upms_resource_user` VALUES ('1663', '5', '351');
INSERT INTO `upms_resource_user` VALUES ('1664', '7', '351');
INSERT INTO `upms_resource_user` VALUES ('1665', '8', '351');
INSERT INTO `upms_resource_user` VALUES ('1666', '9', '351');
INSERT INTO `upms_resource_user` VALUES ('1667', '10', '351');
INSERT INTO `upms_resource_user` VALUES ('1668', '11', '351');
INSERT INTO `upms_resource_user` VALUES ('1669', '12', '351');
INSERT INTO `upms_resource_user` VALUES ('1670', '13', '351');
INSERT INTO `upms_resource_user` VALUES ('1671', '14', '351');
INSERT INTO `upms_resource_user` VALUES ('1672', '15', '351');
INSERT INTO `upms_resource_user` VALUES ('1673', '16', '351');
INSERT INTO `upms_resource_user` VALUES ('1674', '18', '351');
INSERT INTO `upms_resource_user` VALUES ('1675', '19', '351');
INSERT INTO `upms_resource_user` VALUES ('1676', '20', '351');
INSERT INTO `upms_resource_user` VALUES ('1677', '21', '351');
INSERT INTO `upms_resource_user` VALUES ('1678', '22', '351');
INSERT INTO `upms_resource_user` VALUES ('1679', '23', '351');
INSERT INTO `upms_resource_user` VALUES ('1680', '24', '351');
INSERT INTO `upms_resource_user` VALUES ('1681', '25', '351');
INSERT INTO `upms_resource_user` VALUES ('1682', '26', '351');
INSERT INTO `upms_resource_user` VALUES ('1683', '27', '351');
INSERT INTO `upms_resource_user` VALUES ('1684', '28', '351');
INSERT INTO `upms_resource_user` VALUES ('1685', '29', '351');
INSERT INTO `upms_resource_user` VALUES ('1686', '30', '351');
INSERT INTO `upms_resource_user` VALUES ('1687', '31', '351');
INSERT INTO `upms_resource_user` VALUES ('1688', '32', '351');
INSERT INTO `upms_resource_user` VALUES ('1689', '33', '351');
INSERT INTO `upms_resource_user` VALUES ('1690', '34', '351');
INSERT INTO `upms_resource_user` VALUES ('1691', '37', '351');
INSERT INTO `upms_resource_user` VALUES ('1692', '38', '351');
INSERT INTO `upms_resource_user` VALUES ('1693', '39', '351');
INSERT INTO `upms_resource_user` VALUES ('1694', '40', '351');
INSERT INTO `upms_resource_user` VALUES ('1695', '41', '351');
INSERT INTO `upms_resource_user` VALUES ('1696', '43', '351');
INSERT INTO `upms_resource_user` VALUES ('1697', '44', '351');
INSERT INTO `upms_resource_user` VALUES ('1698', '45', '351');
INSERT INTO `upms_resource_user` VALUES ('1699', '46', '351');
INSERT INTO `upms_resource_user` VALUES ('1700', '47', '351');
INSERT INTO `upms_resource_user` VALUES ('1701', '48', '351');
INSERT INTO `upms_resource_user` VALUES ('1702', '49', '351');
INSERT INTO `upms_resource_user` VALUES ('1703', '51', '351');
INSERT INTO `upms_resource_user` VALUES ('1704', '53', '351');
INSERT INTO `upms_resource_user` VALUES ('1705', '54', '351');
INSERT INTO `upms_resource_user` VALUES ('1706', '55', '351');
INSERT INTO `upms_resource_user` VALUES ('1707', '56', '351');
INSERT INTO `upms_resource_user` VALUES ('1708', '57', '351');
INSERT INTO `upms_resource_user` VALUES ('1709', '58', '351');
INSERT INTO `upms_resource_user` VALUES ('1710', '59', '351');
INSERT INTO `upms_resource_user` VALUES ('1711', '60', '351');
INSERT INTO `upms_resource_user` VALUES ('1712', '61', '351');
INSERT INTO `upms_resource_user` VALUES ('1713', '62', '351');
INSERT INTO `upms_resource_user` VALUES ('1714', '63', '351');
INSERT INTO `upms_resource_user` VALUES ('1715', '64', '351');
INSERT INTO `upms_resource_user` VALUES ('1716', '65', '351');
INSERT INTO `upms_resource_user` VALUES ('1717', '66', '351');
INSERT INTO `upms_resource_user` VALUES ('1718', '67', '351');
INSERT INTO `upms_resource_user` VALUES ('1719', '68', '351');
INSERT INTO `upms_resource_user` VALUES ('1720', '69', '351');
INSERT INTO `upms_resource_user` VALUES ('1721', '70', '351');
INSERT INTO `upms_resource_user` VALUES ('1722', '71', '351');
INSERT INTO `upms_resource_user` VALUES ('1723', '72', '351');
INSERT INTO `upms_resource_user` VALUES ('1724', '73', '351');
INSERT INTO `upms_resource_user` VALUES ('1725', '74', '351');
INSERT INTO `upms_resource_user` VALUES ('1726', '532', '351');
INSERT INTO `upms_resource_user` VALUES ('1727', '533', '351');
INSERT INTO `upms_resource_user` VALUES ('1728', '535', '351');
INSERT INTO `upms_resource_user` VALUES ('1729', '536', '351');
INSERT INTO `upms_resource_user` VALUES ('1730', '537', '351');
INSERT INTO `upms_resource_user` VALUES ('1731', '538', '351');
INSERT INTO `upms_resource_user` VALUES ('1732', '539', '351');
INSERT INTO `upms_resource_user` VALUES ('1733', '540', '351');
INSERT INTO `upms_resource_user` VALUES ('1734', '651', '367');
INSERT INTO `upms_resource_user` VALUES ('1735', '668', '367');
INSERT INTO `upms_resource_user` VALUES ('1736', '669', '367');
INSERT INTO `upms_resource_user` VALUES ('1737', '670', '367');
INSERT INTO `upms_resource_user` VALUES ('1738', '1', '378');
INSERT INTO `upms_resource_user` VALUES ('1739', '2', '378');
INSERT INTO `upms_resource_user` VALUES ('1740', '3', '378');
INSERT INTO `upms_resource_user` VALUES ('1741', '7', '378');
INSERT INTO `upms_resource_user` VALUES ('1742', '10', '378');
INSERT INTO `upms_resource_user` VALUES ('1743', '11', '378');
INSERT INTO `upms_resource_user` VALUES ('1744', '12', '378');
INSERT INTO `upms_resource_user` VALUES ('1745', '13', '378');
INSERT INTO `upms_resource_user` VALUES ('1746', '14', '378');
INSERT INTO `upms_resource_user` VALUES ('1747', '15', '378');
INSERT INTO `upms_resource_user` VALUES ('1748', '16', '378');
INSERT INTO `upms_resource_user` VALUES ('1749', '18', '378');
INSERT INTO `upms_resource_user` VALUES ('1750', '19', '378');
INSERT INTO `upms_resource_user` VALUES ('1751', '20', '378');
INSERT INTO `upms_resource_user` VALUES ('1752', '21', '378');
INSERT INTO `upms_resource_user` VALUES ('1753', '22', '378');
INSERT INTO `upms_resource_user` VALUES ('1754', '23', '378');
INSERT INTO `upms_resource_user` VALUES ('1755', '24', '378');
INSERT INTO `upms_resource_user` VALUES ('1756', '25', '378');
INSERT INTO `upms_resource_user` VALUES ('1757', '26', '378');
INSERT INTO `upms_resource_user` VALUES ('1758', '27', '378');
INSERT INTO `upms_resource_user` VALUES ('1759', '28', '378');
INSERT INTO `upms_resource_user` VALUES ('1760', '29', '378');
INSERT INTO `upms_resource_user` VALUES ('1761', '30', '378');
INSERT INTO `upms_resource_user` VALUES ('1762', '31', '378');
INSERT INTO `upms_resource_user` VALUES ('1763', '32', '378');
INSERT INTO `upms_resource_user` VALUES ('1764', '33', '378');
INSERT INTO `upms_resource_user` VALUES ('1765', '34', '378');
INSERT INTO `upms_resource_user` VALUES ('1766', '30', '451');
INSERT INTO `upms_resource_user` VALUES ('1767', '31', '451');
INSERT INTO `upms_resource_user` VALUES ('1768', '27', '405');
INSERT INTO `upms_resource_user` VALUES ('1769', '32', '423');
INSERT INTO `upms_resource_user` VALUES ('1770', '33', '438');
INSERT INTO `upms_resource_user` VALUES ('1771', '25', '432');
INSERT INTO `upms_resource_user` VALUES ('1772', '28', '100000069');
INSERT INTO `upms_resource_user` VALUES ('1773', '29', '100000069');
INSERT INTO `upms_resource_user` VALUES ('1774', '28', '100000070');
INSERT INTO `upms_resource_user` VALUES ('1775', '29', '100000070');
INSERT INTO `upms_resource_user` VALUES ('1776', '31', '100000071');
INSERT INTO `upms_resource_user` VALUES ('1777', '34', '100000072');
INSERT INTO `upms_resource_user` VALUES ('1778', '34', '100000073');
INSERT INTO `upms_resource_user` VALUES ('1779', '26', '100000074');
INSERT INTO `upms_resource_user` VALUES ('1780', '544', '256');
INSERT INTO `upms_resource_user` VALUES ('1781', '577', '284');
INSERT INTO `upms_resource_user` VALUES ('1782', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1783', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1784', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1785', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1786', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1787', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1788', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1789', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1790', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1791', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1792', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1793', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1794', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1795', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1796', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1797', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1798', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1799', '579', '291');
INSERT INTO `upms_resource_user` VALUES ('1800', '578', '291');
INSERT INTO `upms_resource_user` VALUES ('1801', '550', '265');
INSERT INTO `upms_resource_user` VALUES ('1802', '551', '265');
INSERT INTO `upms_resource_user` VALUES ('1803', '652', '347');
INSERT INTO `upms_resource_user` VALUES ('1804', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1805', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1806', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1807', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1808', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1809', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1810', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1811', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1812', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1813', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1814', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1815', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1816', '583', '291');
INSERT INTO `upms_resource_user` VALUES ('1817', '584', '291');
INSERT INTO `upms_resource_user` VALUES ('1818', '609', '325');
INSERT INTO `upms_resource_user` VALUES ('1819', '576', '282');
INSERT INTO `upms_resource_user` VALUES ('1820', '581', '282');
INSERT INTO `upms_resource_user` VALUES ('1821', '532', '166');
INSERT INTO `upms_resource_user` VALUES ('1822', '616', '393');
INSERT INTO `upms_resource_user` VALUES ('1823', '623', '393');
INSERT INTO `upms_resource_user` VALUES ('1824', '542', '188');
INSERT INTO `upms_resource_user` VALUES ('1826', '552', '188');
INSERT INTO `upms_resource_user` VALUES ('1827', '619', '388');
INSERT INTO `upms_resource_user` VALUES ('1828', '626', '388');
INSERT INTO `upms_resource_user` VALUES ('1829', '620', '414');
INSERT INTO `upms_resource_user` VALUES ('1830', '627', '414');
INSERT INTO `upms_resource_user` VALUES ('1831', '615', '386');
INSERT INTO `upms_resource_user` VALUES ('1832', '622', '386');
INSERT INTO `upms_resource_user` VALUES ('1833', '621', '416');
INSERT INTO `upms_resource_user` VALUES ('1834', '628', '416');
INSERT INTO `upms_resource_user` VALUES ('1835', '629', '420');
INSERT INTO `upms_resource_user` VALUES ('1836', '632', '420');
INSERT INTO `upms_resource_user` VALUES ('1837', '630', '425');
INSERT INTO `upms_resource_user` VALUES ('1838', '633', '425');
INSERT INTO `upms_resource_user` VALUES ('1839', '631', '430');
INSERT INTO `upms_resource_user` VALUES ('1840', '634', '430');
INSERT INTO `upms_resource_user` VALUES ('1841', '635', '435');
INSERT INTO `upms_resource_user` VALUES ('1842', '643', '435');
INSERT INTO `upms_resource_user` VALUES ('1843', '636', '445');
INSERT INTO `upms_resource_user` VALUES ('1844', '637', '445');
INSERT INTO `upms_resource_user` VALUES ('1845', '644', '445');
INSERT INTO `upms_resource_user` VALUES ('1846', '645', '445');
INSERT INTO `upms_resource_user` VALUES ('1847', '638', '453');
INSERT INTO `upms_resource_user` VALUES ('1848', '639', '453');
INSERT INTO `upms_resource_user` VALUES ('1849', '646', '453');
INSERT INTO `upms_resource_user` VALUES ('1850', '647', '453');
INSERT INTO `upms_resource_user` VALUES ('1851', '640', '456');
INSERT INTO `upms_resource_user` VALUES ('1852', '648', '456');
INSERT INTO `upms_resource_user` VALUES ('1853', '641', '461');
INSERT INTO `upms_resource_user` VALUES ('1854', '649', '461');
INSERT INTO `upms_resource_user` VALUES ('1855', '657', '347');
INSERT INTO `upms_resource_user` VALUES ('1856', '653', '350');
INSERT INTO `upms_resource_user` VALUES ('1857', '658', '350');
INSERT INTO `upms_resource_user` VALUES ('1858', '654', '362');
INSERT INTO `upms_resource_user` VALUES ('1859', '659', '362');
INSERT INTO `upms_resource_user` VALUES ('1860', '655', '368');
INSERT INTO `upms_resource_user` VALUES ('1861', '660', '368');
INSERT INTO `upms_resource_user` VALUES ('1862', '656', '369');
INSERT INTO `upms_resource_user` VALUES ('1863', '661', '369');
INSERT INTO `upms_resource_user` VALUES ('1864', '562', '270');
INSERT INTO `upms_resource_user` VALUES ('1865', '569', '270');
INSERT INTO `upms_resource_user` VALUES ('1866', '563', '477');
INSERT INTO `upms_resource_user` VALUES ('1867', '570', '477');
INSERT INTO `upms_resource_user` VALUES ('1868', '567', '471');
INSERT INTO `upms_resource_user` VALUES ('1869', '574', '471');
INSERT INTO `upms_resource_user` VALUES ('1870', '566', '100000056');
INSERT INTO `upms_resource_user` VALUES ('1871', '573', '100000056');
INSERT INTO `upms_resource_user` VALUES ('1872', '564', '272');
INSERT INTO `upms_resource_user` VALUES ('1873', '571', '272');
INSERT INTO `upms_resource_user` VALUES ('1874', '568', '277');
INSERT INTO `upms_resource_user` VALUES ('1875', '575', '277');
INSERT INTO `upms_resource_user` VALUES ('1876', '663', '245');
INSERT INTO `upms_resource_user` VALUES ('1877', '665', '245');
INSERT INTO `upms_resource_user` VALUES ('1878', '664', '252');
INSERT INTO `upms_resource_user` VALUES ('1879', '666', '252');
INSERT INTO `upms_resource_user` VALUES ('1880', '582', '284');
INSERT INTO `upms_resource_user` VALUES ('1881', '610', '296');
INSERT INTO `upms_resource_user` VALUES ('1882', '613', '296');
INSERT INTO `upms_resource_user` VALUES ('1883', '592', '100000040');
INSERT INTO `upms_resource_user` VALUES ('1884', '603', '100000040');
INSERT INTO `upms_resource_user` VALUES ('1885', '586', '304');
INSERT INTO `upms_resource_user` VALUES ('1886', '597', '304');
INSERT INTO `upms_resource_user` VALUES ('1887', '587', '307');
INSERT INTO `upms_resource_user` VALUES ('1888', '598', '307');
INSERT INTO `upms_resource_user` VALUES ('1889', '593', '480');
INSERT INTO `upms_resource_user` VALUES ('1890', '604', '480');
INSERT INTO `upms_resource_user` VALUES ('1891', '588', '311');
INSERT INTO `upms_resource_user` VALUES ('1892', '599', '311');
INSERT INTO `upms_resource_user` VALUES ('1893', '589', '302');
INSERT INTO `upms_resource_user` VALUES ('1894', '600', '302');
INSERT INTO `upms_resource_user` VALUES ('1895', '591', '313');
INSERT INTO `upms_resource_user` VALUES ('1896', '602', '313');
INSERT INTO `upms_resource_user` VALUES ('1897', '590', '100000046');
INSERT INTO `upms_resource_user` VALUES ('1898', '601', '100000046');
INSERT INTO `upms_resource_user` VALUES ('1899', '565', '489');
INSERT INTO `upms_resource_user` VALUES ('1900', '572', '489');
INSERT INTO `upms_resource_user` VALUES ('1901', '612', '325');
INSERT INTO `upms_resource_user` VALUES ('1902', '596', '330');
INSERT INTO `upms_resource_user` VALUES ('1903', '607', '330');
INSERT INTO `upms_resource_user` VALUES ('1904', '585', '334');
INSERT INTO `upms_resource_user` VALUES ('1905', '608', '483');
INSERT INTO `upms_resource_user` VALUES ('1906', '611', '483');
INSERT INTO `upms_resource_user` VALUES ('1907', '671', '100000009');
INSERT INTO `upms_resource_user` VALUES ('1908', '672', '100000025');
INSERT INTO `upms_resource_user` VALUES ('1909', '673', '100000027');
INSERT INTO `upms_resource_user` VALUES ('1910', '674', '100000029');
INSERT INTO `upms_resource_user` VALUES ('1911', '675', '100000032');
INSERT INTO `upms_resource_user` VALUES ('1912', '676', '100000035');
INSERT INTO `upms_resource_user` VALUES ('1913', '615', '188');
INSERT INTO `upms_resource_user` VALUES ('1914', '677', '188');
INSERT INTO `upms_resource_user` VALUES ('1915', '678', '188');
INSERT INTO `upms_resource_user` VALUES ('1916', '679', '188');
INSERT INTO `upms_resource_user` VALUES ('1917', '677', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1918', '678', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1919', '679', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1920', '542', '351');
INSERT INTO `upms_resource_user` VALUES ('1921', '543', '351');
INSERT INTO `upms_resource_user` VALUES ('1922', '544', '351');
INSERT INTO `upms_resource_user` VALUES ('1923', '545', '351');
INSERT INTO `upms_resource_user` VALUES ('1924', '546', '351');
INSERT INTO `upms_resource_user` VALUES ('1925', '547', '351');
INSERT INTO `upms_resource_user` VALUES ('1926', '548', '351');
INSERT INTO `upms_resource_user` VALUES ('1927', '549', '351');
INSERT INTO `upms_resource_user` VALUES ('1928', '550', '351');
INSERT INTO `upms_resource_user` VALUES ('1929', '551', '351');
INSERT INTO `upms_resource_user` VALUES ('1930', '692', '351');
INSERT INTO `upms_resource_user` VALUES ('1931', '692', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1932', '595', '351');
INSERT INTO `upms_resource_user` VALUES ('1933', '596', '351');
INSERT INTO `upms_resource_user` VALUES ('1934', '597', '351');
INSERT INTO `upms_resource_user` VALUES ('1935', '598', '351');
INSERT INTO `upms_resource_user` VALUES ('1936', '599', '351');
INSERT INTO `upms_resource_user` VALUES ('1937', '600', '351');
INSERT INTO `upms_resource_user` VALUES ('1938', '601', '351');
INSERT INTO `upms_resource_user` VALUES ('1939', '684', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1940', '686', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1941', '693', '100000057');
INSERT INTO `upms_resource_user` VALUES ('1942', '684', '100000052');
INSERT INTO `upms_resource_user` VALUES ('1943', '686', '100000052');
INSERT INTO `upms_resource_user` VALUES ('1944', '693', '100000052');
INSERT INTO `upms_resource_user` VALUES ('1945', '684', '100000052');
INSERT INTO `upms_resource_user` VALUES ('1946', '686', '100000052');
INSERT INTO `upms_resource_user` VALUES ('1947', '693', '100000052');
INSERT INTO `upms_resource_user` VALUES ('1948', '693', '256');
INSERT INTO `upms_resource_user` VALUES ('1949', '707', '256');
INSERT INTO `upms_resource_user` VALUES ('1950', '693', '350');
INSERT INTO `upms_resource_user` VALUES ('1951', '707', '350');
INSERT INTO `upms_resource_user` VALUES ('1952', '653', '1');
INSERT INTO `upms_resource_user` VALUES ('1953', '544', '188');
INSERT INTO `upms_resource_user` VALUES ('1954', '1', '10');
INSERT INTO `upms_resource_user` VALUES ('1955', '2', '10');
INSERT INTO `upms_resource_user` VALUES ('1956', '1', '12');
INSERT INTO `upms_resource_user` VALUES ('1958', '542', '1');
INSERT INTO `upms_resource_user` VALUES ('1959', '543', '1');
INSERT INTO `upms_resource_user` VALUES ('1960', '544', '1');
INSERT INTO `upms_resource_user` VALUES ('1961', '545', '1');
INSERT INTO `upms_resource_user` VALUES ('1962', '552', '1');
INSERT INTO `upms_resource_user` VALUES ('1963', '553', '1');
INSERT INTO `upms_resource_user` VALUES ('1964', '742', '1');
INSERT INTO `upms_resource_user` VALUES ('1965', '3', '10');
INSERT INTO `upms_resource_user` VALUES ('1966', '4', '10');
INSERT INTO `upms_resource_user` VALUES ('1967', '5', '10');
INSERT INTO `upms_resource_user` VALUES ('1968', '6', '10');
INSERT INTO `upms_resource_user` VALUES ('1969', '7', '10');
INSERT INTO `upms_resource_user` VALUES ('1970', '8', '10');
INSERT INTO `upms_resource_user` VALUES ('1971', '9', '10');
INSERT INTO `upms_resource_user` VALUES ('1972', '10', '10');
INSERT INTO `upms_resource_user` VALUES ('1973', '11', '10');
INSERT INTO `upms_resource_user` VALUES ('1974', '12', '10');
INSERT INTO `upms_resource_user` VALUES ('1975', '13', '10');
INSERT INTO `upms_resource_user` VALUES ('1976', '14', '10');
INSERT INTO `upms_resource_user` VALUES ('1977', '15', '10');
INSERT INTO `upms_resource_user` VALUES ('1978', '16', '10');
INSERT INTO `upms_resource_user` VALUES ('1979', '18', '10');
INSERT INTO `upms_resource_user` VALUES ('1980', '19', '10');
INSERT INTO `upms_resource_user` VALUES ('1981', '62', '10');
INSERT INTO `upms_resource_user` VALUES ('1982', '63', '10');
INSERT INTO `upms_resource_user` VALUES ('1983', '64', '10');
INSERT INTO `upms_resource_user` VALUES ('1984', '536', '10');
INSERT INTO `upms_resource_user` VALUES ('1985', '537', '10');
INSERT INTO `upms_resource_user` VALUES ('1986', '538', '10');
INSERT INTO `upms_resource_user` VALUES ('1987', '539', '10');
INSERT INTO `upms_resource_user` VALUES ('1988', '540', '10');
INSERT INTO `upms_resource_user` VALUES ('1989', '742', '10');
INSERT INTO `upms_resource_user` VALUES ('1990', '715', '1');
INSERT INTO `upms_resource_user` VALUES ('1991', '10', '12');
INSERT INTO `upms_resource_user` VALUES ('1992', '11', '12');
INSERT INTO `upms_resource_user` VALUES ('1993', '12', '12');
INSERT INTO `upms_resource_user` VALUES ('1994', '13', '12');
INSERT INTO `upms_resource_user` VALUES ('1995', '14', '12');
INSERT INTO `upms_resource_user` VALUES ('1996', '10', '13');
INSERT INTO `upms_resource_user` VALUES ('1997', '11', '13');
INSERT INTO `upms_resource_user` VALUES ('1998', '12', '13');
INSERT INTO `upms_resource_user` VALUES ('1999', '13', '13');
INSERT INTO `upms_resource_user` VALUES ('2000', '14', '13');
INSERT INTO `upms_resource_user` VALUES ('2001', '15', '13');
INSERT INTO `upms_resource_user` VALUES ('2002', '2', '12');
INSERT INTO `upms_resource_user` VALUES ('2003', '3', '12');
INSERT INTO `upms_resource_user` VALUES ('2004', '4', '12');
INSERT INTO `upms_resource_user` VALUES ('2005', '5', '12');
INSERT INTO `upms_resource_user` VALUES ('2006', '6', '12');
INSERT INTO `upms_resource_user` VALUES ('2007', '7', '12');
INSERT INTO `upms_resource_user` VALUES ('2008', '9', '12');
INSERT INTO `upms_resource_user` VALUES ('2009', '15', '12');
INSERT INTO `upms_resource_user` VALUES ('2010', '16', '12');
INSERT INTO `upms_resource_user` VALUES ('2011', '18', '12');
INSERT INTO `upms_resource_user` VALUES ('2012', '19', '12');
INSERT INTO `upms_resource_user` VALUES ('2013', '20', '12');
INSERT INTO `upms_resource_user` VALUES ('2014', '21', '12');
INSERT INTO `upms_resource_user` VALUES ('2015', '742', '12');
INSERT INTO `upms_resource_user` VALUES ('2016', '2', '13');

-- ----------------------------
-- Table structure for upms_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_role`;
CREATE TABLE `upms_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `title` varchar(20) DEFAULT NULL COMMENT '角色标题',
  `description` varchar(1000) DEFAULT NULL COMMENT '角色描述',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) NOT NULL COMMENT '排序',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COMMENT='角色';

-- ----------------------------
-- Records of upms_role
-- ----------------------------
INSERT INTO `upms_role` VALUES ('1', 'super', '超级管理员', '拥有所有权限', '1', '1');
INSERT INTO `upms_role` VALUES ('2', 'admin', '管理员', '停用', '1487471013117', '1487471013117');
INSERT INTO `upms_role` VALUES ('3', '日报编制岗', '日报编制岗', '发电量分析数据填报', '1511255773286', '1511255773286');
INSERT INTO `upms_role` VALUES ('4', '日报站长审核岗', '日报站长审核岗', '发电量分析数据填报', '1517207787584', '1517207787584');
INSERT INTO `upms_role` VALUES ('5', '出库申请', '出库申请', '备品备件系统', '1524548724573', '1524548724573');
INSERT INTO `upms_role` VALUES ('6', '物资出入库查询', '物资出入库查询', '物资管理系统', '1524548815541', '1524548815541');
INSERT INTO `upms_role` VALUES ('7', '现场运维部部长', '现场运维部部长', '停用', '1524638356869', '1524638356869');
INSERT INTO `upms_role` VALUES ('8', '集团发电量日报查询', '发电量日报查询', '运维管理系统', '1524812701729', '1524812701729');
INSERT INTO `upms_role` VALUES ('9', '财务专用', '月结与财务报表', '备品备件财务专用报表接口', '1524812721401', '1524812721401');
INSERT INTO `upms_role` VALUES ('10', '仓库保管员', '仓库保管员', '	备品备件系统', '1524882280713', '1524882280713');
INSERT INTO `upms_role` VALUES ('11', '备品备件管理员', '备品备件管理员', '备品备件系统', '1525225692291', '1525225692291');
INSERT INTO `upms_role` VALUES ('12', '日报总部审核岗', '日报总部审核岗', '发电量分析数据填报', '1526374901416', '1526374901416');
INSERT INTO `upms_role` VALUES ('13', '备品备件采购员', '备品备件采购员', '备品备件采购', '1526887244809', '1526887244809');
INSERT INTO `upms_role` VALUES ('14', '电站入库申请人', '电站入库申请人', '备品备件 C类物资站上人员入库', '1527932991948', '1527932991948');
INSERT INTO `upms_role` VALUES ('15', '总部物资入库员', '总部物资入库员', '备品备件 所有物资站上人员入库', '1528075693901', '1528075693901');
INSERT INTO `upms_role` VALUES ('19', '现场运维部（子公司）领料', '现场运维部（子公司）领料', '', '1532313038245', '1532313038245');
INSERT INTO `upms_role` VALUES ('20', '现场运维部（总公司）领料', '现场运维部（总公司）领料', '', '1532310348245', '1532310348245');
INSERT INTO `upms_role` VALUES ('21', '检修部领料', '检修部领料', '', '1532310367698', '1532310367698');
INSERT INTO `upms_role` VALUES ('22', '检修部审批', '检修部审批', '检修部领料审批，对应角色21', '1532310403823', '1532310403823');
INSERT INTO `upms_role` VALUES ('23', '运维部领料', '运维部领料', '', '1532310418760', '1532310418760');
INSERT INTO `upms_role` VALUES ('24', '运维部审批', '运维部审批', '运维部领料审批，对应角色23', '1532310442635', '1532310442635');
INSERT INTO `upms_role` VALUES ('25', '子公司（新疆）检修部领料', '子公司（新疆）检修部领料', '', '1532310522557', '1532310522557');
INSERT INTO `upms_role` VALUES ('26', '子公司（新疆）检修部审批', '子公司（新疆）检修部审批', '对应角色25', '1532310537838', '1532310537838');
INSERT INTO `upms_role` VALUES ('27', '子公司（新疆）运维部领料', '子公司（新疆）运维部领料', '', '1532310576948', '1532310576948');
INSERT INTO `upms_role` VALUES ('28', '子公司（新疆）运维部审批', '子公司（新疆）运维部审批', '', '1532310587276', '1532310587276');
INSERT INTO `upms_role` VALUES ('29', '子公司（新疆）审批', '子公司（新疆）审批', '', '1532310617479', '1532310617479');
INSERT INTO `upms_role` VALUES ('30', '子公司（甘肃）检修部领料', '子公司（甘肃）检修部领料', '', '1532310646838', '1532310646838');
INSERT INTO `upms_role` VALUES ('31', '子公司（甘肃）检修部审批', '子公司（甘肃）检修部审批', '', '1532310669338', '1532310669338');
INSERT INTO `upms_role` VALUES ('32', '子公司（甘肃）运维部领料', '子公司（甘肃）运维部领料', '', '1532310693807', '1532310693807');
INSERT INTO `upms_role` VALUES ('33', '子公司（甘肃）运维部审批', '子公司（甘肃）运维部审批', '', '1532310733229', '1532310733229');
INSERT INTO `upms_role` VALUES ('34', '子公司（甘肃）审批', '子公司（甘肃）审批', '', '1532310751401', '1532310751401');
INSERT INTO `upms_role` VALUES ('35', '子公司（北京）检修部领料', '子公司（北京）检修部领料', '', '1532310784760', '1532310784760');
INSERT INTO `upms_role` VALUES ('36', '子公司（北京）检修部审批', '子公司（北京）检修部审批', '', '1532310856885', '1532310856885');
INSERT INTO `upms_role` VALUES ('37', '子公司（北京）运维部领料', '子公司（北京）运维部领料', '', '1532310891166', '1532310891166');
INSERT INTO `upms_role` VALUES ('38', '子公司（北京）运维部审批', '子公司（北京）运维部审批', '', '1532310902245', '1532310902245');
INSERT INTO `upms_role` VALUES ('39', '子公司（北京）审批', '子公司（北京）审批', '', '1532310929916', '1532310929916');
INSERT INTO `upms_role` VALUES ('41', '分管领导1', '分管领导-运维部', '运维部及现场运维部分管-吴颖超', '1532397030432', '1532397030432');
INSERT INTO `upms_role` VALUES ('42', '分管领导2', '分管领导-检修部', '检修部分管-文庭荣', '1532397051120', '1532397051120');
INSERT INTO `upms_role` VALUES ('43', '常务副总裁', '常务副总裁', '', '1532415362432', '1532415362432');
INSERT INTO `upms_role` VALUES ('44', '运维部业务员', '运维部业务员', '运维部业务员', '1532672374350', '1532672374350');
INSERT INTO `upms_role` VALUES ('45', '运维部总经理', '运维部总经理', '运维部总经理', '1532672465328', '1532672465328');
INSERT INTO `upms_role` VALUES ('46', '运维部分管副总', '运维部分管副总', '运维部分管副总', '1532672513825', '1532672513825');
INSERT INTO `upms_role` VALUES ('48', '电站负责人', '电站负责人', '电站负责人', '1533974105458', '1533974105458');
INSERT INTO `upms_role` VALUES ('49', '当班负责人', '当班负责人', '当班负责人', '1534208752224', '1534208752224');
INSERT INTO `upms_role` VALUES ('50', '运维部仓库盘点审批专员', '运维部仓库盘点审批专员', '运维部仓库盘点审批专员', '1534926587254', '1534926587254');

-- ----------------------------
-- Table structure for upms_role_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_role_organization`;
CREATE TABLE `upms_role_organization` (
  `role_organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色编号',
  `organization_id` int(10) unsigned NOT NULL COMMENT '组织编号',
  PRIMARY KEY (`role_organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_role_organization
-- ----------------------------
INSERT INTO `upms_role_organization` VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for upms_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_role_permission`;
CREATE TABLE `upms_role_permission` (
  `role_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`role_permission_id`),
  KEY `FK_Reference_23` (`role_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`role_id`) REFERENCES `upms_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=949 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of upms_role_permission
-- ----------------------------
INSERT INTO `upms_role_permission` VALUES ('1', '1', '1');
INSERT INTO `upms_role_permission` VALUES ('2', '1', '2');
INSERT INTO `upms_role_permission` VALUES ('3', '1', '3');
INSERT INTO `upms_role_permission` VALUES ('4', '1', '4');
INSERT INTO `upms_role_permission` VALUES ('5', '1', '5');
INSERT INTO `upms_role_permission` VALUES ('6', '1', '6');
INSERT INTO `upms_role_permission` VALUES ('7', '1', '7');
INSERT INTO `upms_role_permission` VALUES ('8', '1', '39');
INSERT INTO `upms_role_permission` VALUES ('12', '1', '12');
INSERT INTO `upms_role_permission` VALUES ('14', '1', '14');
INSERT INTO `upms_role_permission` VALUES ('15', '1', '15');
INSERT INTO `upms_role_permission` VALUES ('17', '1', '17');
INSERT INTO `upms_role_permission` VALUES ('19', '1', '19');
INSERT INTO `upms_role_permission` VALUES ('20', '1', '20');
INSERT INTO `upms_role_permission` VALUES ('21', '1', '21');
INSERT INTO `upms_role_permission` VALUES ('24', '1', '24');
INSERT INTO `upms_role_permission` VALUES ('27', '1', '27');
INSERT INTO `upms_role_permission` VALUES ('28', '1', '28');
INSERT INTO `upms_role_permission` VALUES ('29', '1', '29');
INSERT INTO `upms_role_permission` VALUES ('30', '1', '30');
INSERT INTO `upms_role_permission` VALUES ('31', '1', '31');
INSERT INTO `upms_role_permission` VALUES ('32', '1', '32');
INSERT INTO `upms_role_permission` VALUES ('33', '1', '33');
INSERT INTO `upms_role_permission` VALUES ('34', '1', '34');
INSERT INTO `upms_role_permission` VALUES ('35', '1', '35');
INSERT INTO `upms_role_permission` VALUES ('36', '1', '36');
INSERT INTO `upms_role_permission` VALUES ('37', '1', '37');
INSERT INTO `upms_role_permission` VALUES ('38', '1', '38');
INSERT INTO `upms_role_permission` VALUES ('39', '1', '46');
INSERT INTO `upms_role_permission` VALUES ('40', '1', '51');
INSERT INTO `upms_role_permission` VALUES ('44', '1', '48');
INSERT INTO `upms_role_permission` VALUES ('45', '1', '50');
INSERT INTO `upms_role_permission` VALUES ('47', '1', '53');
INSERT INTO `upms_role_permission` VALUES ('48', '1', '18');
INSERT INTO `upms_role_permission` VALUES ('49', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('50', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('51', '1', '55');
INSERT INTO `upms_role_permission` VALUES ('52', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('53', '1', '55');
INSERT INTO `upms_role_permission` VALUES ('54', '1', '56');
INSERT INTO `upms_role_permission` VALUES ('55', '1', '57');
INSERT INTO `upms_role_permission` VALUES ('56', '1', '58');
INSERT INTO `upms_role_permission` VALUES ('57', '1', '58');
INSERT INTO `upms_role_permission` VALUES ('58', '1', '59');
INSERT INTO `upms_role_permission` VALUES ('59', '1', '60');
INSERT INTO `upms_role_permission` VALUES ('60', '1', '61');
INSERT INTO `upms_role_permission` VALUES ('61', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('62', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('63', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('64', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('65', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('66', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('67', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('68', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('69', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('70', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('71', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('72', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('73', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('74', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('75', '1', '66');
INSERT INTO `upms_role_permission` VALUES ('76', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('77', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('78', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('79', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('80', '1', '66');
INSERT INTO `upms_role_permission` VALUES ('81', '1', '67');
INSERT INTO `upms_role_permission` VALUES ('82', '1', '68');
INSERT INTO `upms_role_permission` VALUES ('83', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('84', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('85', '1', '70');
INSERT INTO `upms_role_permission` VALUES ('86', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('87', '1', '70');
INSERT INTO `upms_role_permission` VALUES ('88', '1', '71');
INSERT INTO `upms_role_permission` VALUES ('89', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('90', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('91', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('92', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('93', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('94', '1', '74');
INSERT INTO `upms_role_permission` VALUES ('95', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('96', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('97', '1', '74');
INSERT INTO `upms_role_permission` VALUES ('98', '1', '75');
INSERT INTO `upms_role_permission` VALUES ('99', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('100', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('101', '1', '77');
INSERT INTO `upms_role_permission` VALUES ('102', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('103', '1', '77');
INSERT INTO `upms_role_permission` VALUES ('105', '1', '79');
INSERT INTO `upms_role_permission` VALUES ('106', '1', '80');
INSERT INTO `upms_role_permission` VALUES ('107', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('108', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('109', '1', '82');
INSERT INTO `upms_role_permission` VALUES ('110', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('111', '1', '82');
INSERT INTO `upms_role_permission` VALUES ('112', '1', '83');
INSERT INTO `upms_role_permission` VALUES ('113', '1', '84');
INSERT INTO `upms_role_permission` VALUES ('114', '1', '84');
INSERT INTO `upms_role_permission` VALUES ('115', '1', '85');
INSERT INTO `upms_role_permission` VALUES ('121', '1', '78');
INSERT INTO `upms_role_permission` VALUES ('122', '1', '78');
INSERT INTO `upms_role_permission` VALUES ('124', '1', '25');
INSERT INTO `upms_role_permission` VALUES ('125', '1', '26');
INSERT INTO `upms_role_permission` VALUES ('141', '3', '17');
INSERT INTO `upms_role_permission` VALUES ('142', '3', '18');
INSERT INTO `upms_role_permission` VALUES ('143', '3', '55');
INSERT INTO `upms_role_permission` VALUES ('144', '3', '19');
INSERT INTO `upms_role_permission` VALUES ('145', '3', '58');
INSERT INTO `upms_role_permission` VALUES ('146', '3', '20');
INSERT INTO `upms_role_permission` VALUES ('147', '3', '21');
INSERT INTO `upms_role_permission` VALUES ('148', '3', '77');
INSERT INTO `upms_role_permission` VALUES ('149', '3', '79');
INSERT INTO `upms_role_permission` VALUES ('150', '3', '64');
INSERT INTO `upms_role_permission` VALUES ('151', '3', '66');
INSERT INTO `upms_role_permission` VALUES ('152', '3', '80');
INSERT INTO `upms_role_permission` VALUES ('153', '3', '82');
INSERT INTO `upms_role_permission` VALUES ('154', '3', '61');
INSERT INTO `upms_role_permission` VALUES ('155', '3', '68');
INSERT INTO `upms_role_permission` VALUES ('156', '3', '70');
INSERT INTO `upms_role_permission` VALUES ('157', '3', '72');
INSERT INTO `upms_role_permission` VALUES ('158', '3', '74');
INSERT INTO `upms_role_permission` VALUES ('163', '1', '90');
INSERT INTO `upms_role_permission` VALUES ('164', '1', '91');
INSERT INTO `upms_role_permission` VALUES ('165', '1', '92');
INSERT INTO `upms_role_permission` VALUES ('166', '1', '93');
INSERT INTO `upms_role_permission` VALUES ('167', '1', '94');
INSERT INTO `upms_role_permission` VALUES ('168', '1', '95');
INSERT INTO `upms_role_permission` VALUES ('169', '1', '96');
INSERT INTO `upms_role_permission` VALUES ('170', '1', '97');
INSERT INTO `upms_role_permission` VALUES ('171', '1', '98');
INSERT INTO `upms_role_permission` VALUES ('172', '1', '99');
INSERT INTO `upms_role_permission` VALUES ('175', '1', '102');
INSERT INTO `upms_role_permission` VALUES ('176', '1', '103');
INSERT INTO `upms_role_permission` VALUES ('179', '1', '106');
INSERT INTO `upms_role_permission` VALUES ('180', '1', '107');
INSERT INTO `upms_role_permission` VALUES ('181', '1', '108');
INSERT INTO `upms_role_permission` VALUES ('182', '1', '109');
INSERT INTO `upms_role_permission` VALUES ('183', '1', '110');
INSERT INTO `upms_role_permission` VALUES ('184', '1', '111');
INSERT INTO `upms_role_permission` VALUES ('185', '1', '112');
INSERT INTO `upms_role_permission` VALUES ('186', '1', '113');
INSERT INTO `upms_role_permission` VALUES ('187', '1', '114');
INSERT INTO `upms_role_permission` VALUES ('188', '1', '115');
INSERT INTO `upms_role_permission` VALUES ('190', '1', '117');
INSERT INTO `upms_role_permission` VALUES ('191', '1', '118');
INSERT INTO `upms_role_permission` VALUES ('192', '1', '119');
INSERT INTO `upms_role_permission` VALUES ('193', '1', '120');
INSERT INTO `upms_role_permission` VALUES ('194', '1', '121');
INSERT INTO `upms_role_permission` VALUES ('196', '1', '123');
INSERT INTO `upms_role_permission` VALUES ('197', '1', '124');
INSERT INTO `upms_role_permission` VALUES ('199', '1', '126');
INSERT INTO `upms_role_permission` VALUES ('205', '3', '106');
INSERT INTO `upms_role_permission` VALUES ('206', '3', '107');
INSERT INTO `upms_role_permission` VALUES ('207', '1', '129');
INSERT INTO `upms_role_permission` VALUES ('209', '1', '131');
INSERT INTO `upms_role_permission` VALUES ('210', '1', '132');
INSERT INTO `upms_role_permission` VALUES ('211', '1', '133');
INSERT INTO `upms_role_permission` VALUES ('212', '1', '134');
INSERT INTO `upms_role_permission` VALUES ('213', '1', '135');
INSERT INTO `upms_role_permission` VALUES ('214', '1', '136');
INSERT INTO `upms_role_permission` VALUES ('215', '1', '130');
INSERT INTO `upms_role_permission` VALUES ('216', '1', '137');
INSERT INTO `upms_role_permission` VALUES ('217', '1', '138');
INSERT INTO `upms_role_permission` VALUES ('221', '3', '94');
INSERT INTO `upms_role_permission` VALUES ('222', '3', '95');
INSERT INTO `upms_role_permission` VALUES ('223', '1', '139');
INSERT INTO `upms_role_permission` VALUES ('225', '1', '150');
INSERT INTO `upms_role_permission` VALUES ('226', '1', '151');
INSERT INTO `upms_role_permission` VALUES ('227', '1', '152');
INSERT INTO `upms_role_permission` VALUES ('229', '1', '160');
INSERT INTO `upms_role_permission` VALUES ('230', '1', '161');
INSERT INTO `upms_role_permission` VALUES ('231', '1', '162');
INSERT INTO `upms_role_permission` VALUES ('233', '1', '166');
INSERT INTO `upms_role_permission` VALUES ('234', '1', '167');
INSERT INTO `upms_role_permission` VALUES ('235', '1', '168');
INSERT INTO `upms_role_permission` VALUES ('237', '1', '170');
INSERT INTO `upms_role_permission` VALUES ('238', '1', '171');
INSERT INTO `upms_role_permission` VALUES ('239', '1', '172');
INSERT INTO `upms_role_permission` VALUES ('242', '1', '154');
INSERT INTO `upms_role_permission` VALUES ('243', '1', '155');
INSERT INTO `upms_role_permission` VALUES ('244', '1', '156');
INSERT INTO `upms_role_permission` VALUES ('245', '1', '157');
INSERT INTO `upms_role_permission` VALUES ('246', '1', '158');
INSERT INTO `upms_role_permission` VALUES ('247', '1', '177');
INSERT INTO `upms_role_permission` VALUES ('248', '1', '178');
INSERT INTO `upms_role_permission` VALUES ('251', '1', '181');
INSERT INTO `upms_role_permission` VALUES ('252', '1', '182');
INSERT INTO `upms_role_permission` VALUES ('253', '1', '183');
INSERT INTO `upms_role_permission` VALUES ('255', '1', '185');
INSERT INTO `upms_role_permission` VALUES ('256', '1', '186');
INSERT INTO `upms_role_permission` VALUES ('257', '1', '187');
INSERT INTO `upms_role_permission` VALUES ('263', '1', '164');
INSERT INTO `upms_role_permission` VALUES ('264', '1', '165');
INSERT INTO `upms_role_permission` VALUES ('265', '1', '173');
INSERT INTO `upms_role_permission` VALUES ('267', '1', '193');
INSERT INTO `upms_role_permission` VALUES ('268', '1', '194');
INSERT INTO `upms_role_permission` VALUES ('269', '1', '195');
INSERT INTO `upms_role_permission` VALUES ('270', '1', '198');
INSERT INTO `upms_role_permission` VALUES ('271', '1', '199');
INSERT INTO `upms_role_permission` VALUES ('272', '1', '196');
INSERT INTO `upms_role_permission` VALUES ('273', '1', '197');
INSERT INTO `upms_role_permission` VALUES ('274', '1', '203');
INSERT INTO `upms_role_permission` VALUES ('275', '1', '204');
INSERT INTO `upms_role_permission` VALUES ('276', '1', '205');
INSERT INTO `upms_role_permission` VALUES ('277', '1', '206');
INSERT INTO `upms_role_permission` VALUES ('278', '1', '207');
INSERT INTO `upms_role_permission` VALUES ('279', '1', '208');
INSERT INTO `upms_role_permission` VALUES ('280', '1', '209');
INSERT INTO `upms_role_permission` VALUES ('281', '1', '210');
INSERT INTO `upms_role_permission` VALUES ('282', '1', '211');
INSERT INTO `upms_role_permission` VALUES ('283', '1', '212');
INSERT INTO `upms_role_permission` VALUES ('284', '1', '213');
INSERT INTO `upms_role_permission` VALUES ('285', '1', '214');
INSERT INTO `upms_role_permission` VALUES ('286', '1', '215');
INSERT INTO `upms_role_permission` VALUES ('287', '1', '216');
INSERT INTO `upms_role_permission` VALUES ('293', '1', '223');
INSERT INTO `upms_role_permission` VALUES ('294', '1', '224');
INSERT INTO `upms_role_permission` VALUES ('295', '1', '226');
INSERT INTO `upms_role_permission` VALUES ('296', '1', '225');
INSERT INTO `upms_role_permission` VALUES ('297', '1', '143');
INSERT INTO `upms_role_permission` VALUES ('298', '1', '227');
INSERT INTO `upms_role_permission` VALUES ('299', '1', '228');
INSERT INTO `upms_role_permission` VALUES ('300', '1', '229');
INSERT INTO `upms_role_permission` VALUES ('301', '1', '230');
INSERT INTO `upms_role_permission` VALUES ('302', '1', '149');
INSERT INTO `upms_role_permission` VALUES ('303', '1', '189');
INSERT INTO `upms_role_permission` VALUES ('304', '1', '190');
INSERT INTO `upms_role_permission` VALUES ('305', '1', '191');
INSERT INTO `upms_role_permission` VALUES ('307', '1', '153');
INSERT INTO `upms_role_permission` VALUES ('308', '1', '234');
INSERT INTO `upms_role_permission` VALUES ('309', '1', '235');
INSERT INTO `upms_role_permission` VALUES ('310', '1', '236');
INSERT INTO `upms_role_permission` VALUES ('311', '4', '106');
INSERT INTO `upms_role_permission` VALUES ('312', '4', '107');
INSERT INTO `upms_role_permission` VALUES ('313', '4', '143');
INSERT INTO `upms_role_permission` VALUES ('314', '1', '239');
INSERT INTO `upms_role_permission` VALUES ('315', '1', '240');
INSERT INTO `upms_role_permission` VALUES ('316', '1', '241');
INSERT INTO `upms_role_permission` VALUES ('317', '1', '238');
INSERT INTO `upms_role_permission` VALUES ('318', '1', '242');
INSERT INTO `upms_role_permission` VALUES ('319', '1', '237');
INSERT INTO `upms_role_permission` VALUES ('320', '1', '243');
INSERT INTO `upms_role_permission` VALUES ('321', '1', '244');
INSERT INTO `upms_role_permission` VALUES ('322', '1', '245');
INSERT INTO `upms_role_permission` VALUES ('323', '1', '246');
INSERT INTO `upms_role_permission` VALUES ('324', '1', '248');
INSERT INTO `upms_role_permission` VALUES ('333', '1', '231');
INSERT INTO `upms_role_permission` VALUES ('334', '1', '232');
INSERT INTO `upms_role_permission` VALUES ('338', '5', '210');
INSERT INTO `upms_role_permission` VALUES ('339', '5', '211');
INSERT INTO `upms_role_permission` VALUES ('340', '5', '212');
INSERT INTO `upms_role_permission` VALUES ('341', '5', '213');
INSERT INTO `upms_role_permission` VALUES ('350', '10', '106');
INSERT INTO `upms_role_permission` VALUES ('351', '10', '107');
INSERT INTO `upms_role_permission` VALUES ('352', '10', '143');
INSERT INTO `upms_role_permission` VALUES ('353', '10', '210');
INSERT INTO `upms_role_permission` VALUES ('354', '10', '211');
INSERT INTO `upms_role_permission` VALUES ('355', '10', '212');
INSERT INTO `upms_role_permission` VALUES ('356', '10', '213');
INSERT INTO `upms_role_permission` VALUES ('357', '5', '106');
INSERT INTO `upms_role_permission` VALUES ('358', '5', '107');
INSERT INTO `upms_role_permission` VALUES ('359', '5', '143');
INSERT INTO `upms_role_permission` VALUES ('360', '11', '106');
INSERT INTO `upms_role_permission` VALUES ('361', '11', '107');
INSERT INTO `upms_role_permission` VALUES ('362', '11', '143');
INSERT INTO `upms_role_permission` VALUES ('363', '11', '223');
INSERT INTO `upms_role_permission` VALUES ('364', '11', '224');
INSERT INTO `upms_role_permission` VALUES ('365', '11', '160');
INSERT INTO `upms_role_permission` VALUES ('366', '11', '161');
INSERT INTO `upms_role_permission` VALUES ('367', '11', '162');
INSERT INTO `upms_role_permission` VALUES ('369', '11', '166');
INSERT INTO `upms_role_permission` VALUES ('370', '11', '167');
INSERT INTO `upms_role_permission` VALUES ('371', '11', '168');
INSERT INTO `upms_role_permission` VALUES ('373', '11', '203');
INSERT INTO `upms_role_permission` VALUES ('374', '11', '204');
INSERT INTO `upms_role_permission` VALUES ('375', '11', '205');
INSERT INTO `upms_role_permission` VALUES ('376', '11', '206');
INSERT INTO `upms_role_permission` VALUES ('377', '11', '225');
INSERT INTO `upms_role_permission` VALUES ('378', '11', '150');
INSERT INTO `upms_role_permission` VALUES ('379', '11', '151');
INSERT INTO `upms_role_permission` VALUES ('380', '11', '152');
INSERT INTO `upms_role_permission` VALUES ('382', '11', '170');
INSERT INTO `upms_role_permission` VALUES ('383', '11', '171');
INSERT INTO `upms_role_permission` VALUES ('384', '11', '172');
INSERT INTO `upms_role_permission` VALUES ('387', '11', '181');
INSERT INTO `upms_role_permission` VALUES ('388', '11', '182');
INSERT INTO `upms_role_permission` VALUES ('389', '11', '183');
INSERT INTO `upms_role_permission` VALUES ('391', '11', '185');
INSERT INTO `upms_role_permission` VALUES ('392', '11', '186');
INSERT INTO `upms_role_permission` VALUES ('393', '11', '187');
INSERT INTO `upms_role_permission` VALUES ('395', '11', '226');
INSERT INTO `upms_role_permission` VALUES ('396', '11', '227');
INSERT INTO `upms_role_permission` VALUES ('397', '11', '229');
INSERT INTO `upms_role_permission` VALUES ('398', '11', '230');
INSERT INTO `upms_role_permission` VALUES ('399', '11', '238');
INSERT INTO `upms_role_permission` VALUES ('400', '11', '242');
INSERT INTO `upms_role_permission` VALUES ('401', '11', '246');
INSERT INTO `upms_role_permission` VALUES ('402', '11', '177');
INSERT INTO `upms_role_permission` VALUES ('403', '11', '178');
INSERT INTO `upms_role_permission` VALUES ('404', '11', '235');
INSERT INTO `upms_role_permission` VALUES ('405', '11', '236');
INSERT INTO `upms_role_permission` VALUES ('406', '11', '237');
INSERT INTO `upms_role_permission` VALUES ('407', '11', '193');
INSERT INTO `upms_role_permission` VALUES ('408', '11', '243');
INSERT INTO `upms_role_permission` VALUES ('409', '11', '189');
INSERT INTO `upms_role_permission` VALUES ('410', '11', '190');
INSERT INTO `upms_role_permission` VALUES ('411', '11', '191');
INSERT INTO `upms_role_permission` VALUES ('413', '11', '239');
INSERT INTO `upms_role_permission` VALUES ('414', '11', '240');
INSERT INTO `upms_role_permission` VALUES ('415', '11', '241');
INSERT INTO `upms_role_permission` VALUES ('416', '11', '244');
INSERT INTO `upms_role_permission` VALUES ('417', '11', '195');
INSERT INTO `upms_role_permission` VALUES ('418', '11', '194');
INSERT INTO `upms_role_permission` VALUES ('419', '11', '245');
INSERT INTO `upms_role_permission` VALUES ('420', '11', '199');
INSERT INTO `upms_role_permission` VALUES ('421', '11', '198');
INSERT INTO `upms_role_permission` VALUES ('422', '11', '164');
INSERT INTO `upms_role_permission` VALUES ('423', '11', '165');
INSERT INTO `upms_role_permission` VALUES ('424', '11', '248');
INSERT INTO `upms_role_permission` VALUES ('425', '11', '173');
INSERT INTO `upms_role_permission` VALUES ('426', '11', '174');
INSERT INTO `upms_role_permission` VALUES ('427', '11', '215');
INSERT INTO `upms_role_permission` VALUES ('428', '11', '196');
INSERT INTO `upms_role_permission` VALUES ('429', '11', '197');
INSERT INTO `upms_role_permission` VALUES ('430', '11', '216');
INSERT INTO `upms_role_permission` VALUES ('431', '11', '210');
INSERT INTO `upms_role_permission` VALUES ('432', '11', '211');
INSERT INTO `upms_role_permission` VALUES ('433', '11', '212');
INSERT INTO `upms_role_permission` VALUES ('434', '11', '213');
INSERT INTO `upms_role_permission` VALUES ('435', '11', '251');
INSERT INTO `upms_role_permission` VALUES ('436', '11', '200');
INSERT INTO `upms_role_permission` VALUES ('437', '11', '201');
INSERT INTO `upms_role_permission` VALUES ('438', '11', '252');
INSERT INTO `upms_role_permission` VALUES ('439', '11', '253');
INSERT INTO `upms_role_permission` VALUES ('440', '1', '252');
INSERT INTO `upms_role_permission` VALUES ('441', '1', '253');
INSERT INTO `upms_role_permission` VALUES ('442', '1', '254');
INSERT INTO `upms_role_permission` VALUES ('443', '11', '254');
INSERT INTO `upms_role_permission` VALUES ('444', '4', '94');
INSERT INTO `upms_role_permission` VALUES ('445', '4', '95');
INSERT INTO `upms_role_permission` VALUES ('448', '3', '256');
INSERT INTO `upms_role_permission` VALUES ('451', '3', '99');
INSERT INTO `upms_role_permission` VALUES ('452', '3', '133');
INSERT INTO `upms_role_permission` VALUES ('453', '3', '134');
INSERT INTO `upms_role_permission` VALUES ('454', '3', '136');
INSERT INTO `upms_role_permission` VALUES ('455', '3', '143');
INSERT INTO `upms_role_permission` VALUES ('456', '4', '99');
INSERT INTO `upms_role_permission` VALUES ('457', '4', '133');
INSERT INTO `upms_role_permission` VALUES ('458', '4', '255');
INSERT INTO `upms_role_permission` VALUES ('459', '12', '94');
INSERT INTO `upms_role_permission` VALUES ('460', '12', '95');
INSERT INTO `upms_role_permission` VALUES ('461', '12', '256');
INSERT INTO `upms_role_permission` VALUES ('462', '12', '99');
INSERT INTO `upms_role_permission` VALUES ('463', '12', '133');
INSERT INTO `upms_role_permission` VALUES ('464', '12', '255');
INSERT INTO `upms_role_permission` VALUES ('465', '12', '106');
INSERT INTO `upms_role_permission` VALUES ('466', '12', '107');
INSERT INTO `upms_role_permission` VALUES ('467', '12', '143');
INSERT INTO `upms_role_permission` VALUES ('469', '4', '256');
INSERT INTO `upms_role_permission` VALUES ('472', '1', '256');
INSERT INTO `upms_role_permission` VALUES ('473', '1', '257');
INSERT INTO `upms_role_permission` VALUES ('474', '1', '258');
INSERT INTO `upms_role_permission` VALUES ('475', '1', '267');
INSERT INTO `upms_role_permission` VALUES ('476', '1', '268');
INSERT INTO `upms_role_permission` VALUES ('477', '1', '269');
INSERT INTO `upms_role_permission` VALUES ('478', '1', '260');
INSERT INTO `upms_role_permission` VALUES ('479', '1', '261');
INSERT INTO `upms_role_permission` VALUES ('480', '1', '262');
INSERT INTO `upms_role_permission` VALUES ('481', '1', '263');
INSERT INTO `upms_role_permission` VALUES ('482', '1', '264');
INSERT INTO `upms_role_permission` VALUES ('483', '1', '265');
INSERT INTO `upms_role_permission` VALUES ('484', '1', '266');
INSERT INTO `upms_role_permission` VALUES ('485', '11', '260');
INSERT INTO `upms_role_permission` VALUES ('486', '11', '261');
INSERT INTO `upms_role_permission` VALUES ('487', '11', '262');
INSERT INTO `upms_role_permission` VALUES ('488', '11', '263');
INSERT INTO `upms_role_permission` VALUES ('489', '11', '264');
INSERT INTO `upms_role_permission` VALUES ('490', '11', '265');
INSERT INTO `upms_role_permission` VALUES ('491', '11', '266');
INSERT INTO `upms_role_permission` VALUES ('492', '1', '270');
INSERT INTO `upms_role_permission` VALUES ('493', '1', '251');
INSERT INTO `upms_role_permission` VALUES ('494', '1', '200');
INSERT INTO `upms_role_permission` VALUES ('495', '1', '201');
INSERT INTO `upms_role_permission` VALUES ('496', '1', '274');
INSERT INTO `upms_role_permission` VALUES ('497', '14', '173');
INSERT INTO `upms_role_permission` VALUES ('498', '14', '174');
INSERT INTO `upms_role_permission` VALUES ('499', '14', '215');
INSERT INTO `upms_role_permission` VALUES ('500', '15', '173');
INSERT INTO `upms_role_permission` VALUES ('501', '15', '174');
INSERT INTO `upms_role_permission` VALUES ('502', '15', '215');
INSERT INTO `upms_role_permission` VALUES ('503', '15', '274');
INSERT INTO `upms_role_permission` VALUES ('504', '15', '210');
INSERT INTO `upms_role_permission` VALUES ('505', '15', '211');
INSERT INTO `upms_role_permission` VALUES ('506', '15', '212');
INSERT INTO `upms_role_permission` VALUES ('507', '1', '271');
INSERT INTO `upms_role_permission` VALUES ('511', '15', '213');
INSERT INTO `upms_role_permission` VALUES ('519', '5', '196');
INSERT INTO `upms_role_permission` VALUES ('520', '5', '197');
INSERT INTO `upms_role_permission` VALUES ('521', '5', '216');
INSERT INTO `upms_role_permission` VALUES ('522', '15', '106');
INSERT INTO `upms_role_permission` VALUES ('523', '15', '107');
INSERT INTO `upms_role_permission` VALUES ('524', '15', '143');
INSERT INTO `upms_role_permission` VALUES ('525', '15', '278');
INSERT INTO `upms_role_permission` VALUES ('526', '15', '279');
INSERT INTO `upms_role_permission` VALUES ('527', '1', '278');
INSERT INTO `upms_role_permission` VALUES ('528', '1', '279');
INSERT INTO `upms_role_permission` VALUES ('529', '1', '273');
INSERT INTO `upms_role_permission` VALUES ('530', '1', '275');
INSERT INTO `upms_role_permission` VALUES ('531', '1', '259');
INSERT INTO `upms_role_permission` VALUES ('532', '1', '277');
INSERT INTO `upms_role_permission` VALUES ('533', '1', '255');
INSERT INTO `upms_role_permission` VALUES ('534', '6', '210');
INSERT INTO `upms_role_permission` VALUES ('535', '6', '211');
INSERT INTO `upms_role_permission` VALUES ('536', '6', '212');
INSERT INTO `upms_role_permission` VALUES ('537', '6', '213');
INSERT INTO `upms_role_permission` VALUES ('538', '6', '252');
INSERT INTO `upms_role_permission` VALUES ('539', '6', '253');
INSERT INTO `upms_role_permission` VALUES ('540', '6', '254');
INSERT INTO `upms_role_permission` VALUES ('541', '6', '268');
INSERT INTO `upms_role_permission` VALUES ('542', '6', '269');
INSERT INTO `upms_role_permission` VALUES ('543', '6', '271');
INSERT INTO `upms_role_permission` VALUES ('544', '6', '260');
INSERT INTO `upms_role_permission` VALUES ('545', '6', '261');
INSERT INTO `upms_role_permission` VALUES ('546', '6', '262');
INSERT INTO `upms_role_permission` VALUES ('547', '6', '263');
INSERT INTO `upms_role_permission` VALUES ('548', '6', '264');
INSERT INTO `upms_role_permission` VALUES ('549', '6', '265');
INSERT INTO `upms_role_permission` VALUES ('550', '6', '266');
INSERT INTO `upms_role_permission` VALUES ('551', '8', '99');
INSERT INTO `upms_role_permission` VALUES ('552', '8', '133');
INSERT INTO `upms_role_permission` VALUES ('553', '1', '287');
INSERT INTO `upms_role_permission` VALUES ('554', '1', '292');
INSERT INTO `upms_role_permission` VALUES ('555', '1', '282');
INSERT INTO `upms_role_permission` VALUES ('556', '1', '280');
INSERT INTO `upms_role_permission` VALUES ('557', '1', '281');
INSERT INTO `upms_role_permission` VALUES ('558', '1', '283');
INSERT INTO `upms_role_permission` VALUES ('559', '1', '284');
INSERT INTO `upms_role_permission` VALUES ('560', '1', '285');
INSERT INTO `upms_role_permission` VALUES ('561', '1', '286');
INSERT INTO `upms_role_permission` VALUES ('562', '1', '288');
INSERT INTO `upms_role_permission` VALUES ('563', '1', '289');
INSERT INTO `upms_role_permission` VALUES ('564', '1', '290');
INSERT INTO `upms_role_permission` VALUES ('565', '1', '291');
INSERT INTO `upms_role_permission` VALUES ('566', '15', '287');
INSERT INTO `upms_role_permission` VALUES ('567', '15', '292');
INSERT INTO `upms_role_permission` VALUES ('568', '1', '293');
INSERT INTO `upms_role_permission` VALUES ('569', '12', '207');
INSERT INTO `upms_role_permission` VALUES ('570', '12', '293');
INSERT INTO `upms_role_permission` VALUES ('571', '8', '207');
INSERT INTO `upms_role_permission` VALUES ('572', '8', '208');
INSERT INTO `upms_role_permission` VALUES ('573', '8', '209');
INSERT INTO `upms_role_permission` VALUES ('574', '8', '214');
INSERT INTO `upms_role_permission` VALUES ('575', '8', '217');
INSERT INTO `upms_role_permission` VALUES ('576', '8', '293');
INSERT INTO `upms_role_permission` VALUES ('577', '8', '207');
INSERT INTO `upms_role_permission` VALUES ('578', '8', '208');
INSERT INTO `upms_role_permission` VALUES ('579', '8', '209');
INSERT INTO `upms_role_permission` VALUES ('580', '8', '214');
INSERT INTO `upms_role_permission` VALUES ('581', '8', '217');
INSERT INTO `upms_role_permission` VALUES ('582', '8', '293');
INSERT INTO `upms_role_permission` VALUES ('583', '1', '294');
INSERT INTO `upms_role_permission` VALUES ('584', '1', '295');
INSERT INTO `upms_role_permission` VALUES ('585', '1', '296');
INSERT INTO `upms_role_permission` VALUES ('586', '1', '297');
INSERT INTO `upms_role_permission` VALUES ('587', '1', '298');
INSERT INTO `upms_role_permission` VALUES ('588', '12', '298');
INSERT INTO `upms_role_permission` VALUES ('589', '8', '94');
INSERT INTO `upms_role_permission` VALUES ('590', '8', '95');
INSERT INTO `upms_role_permission` VALUES ('591', '8', '256');
INSERT INTO `upms_role_permission` VALUES ('592', '8', '298');
INSERT INTO `upms_role_permission` VALUES ('593', '3', '299');
INSERT INTO `upms_role_permission` VALUES ('594', '3', '300');
INSERT INTO `upms_role_permission` VALUES ('595', '4', '299');
INSERT INTO `upms_role_permission` VALUES ('596', '4', '300');
INSERT INTO `upms_role_permission` VALUES ('597', '12', '299');
INSERT INTO `upms_role_permission` VALUES ('598', '12', '300');
INSERT INTO `upms_role_permission` VALUES ('599', '12', '301');
INSERT INTO `upms_role_permission` VALUES ('600', '9', '288');
INSERT INTO `upms_role_permission` VALUES ('601', '9', '289');
INSERT INTO `upms_role_permission` VALUES ('602', '9', '290');
INSERT INTO `upms_role_permission` VALUES ('603', '9', '291');
INSERT INTO `upms_role_permission` VALUES ('604', '9', '294');
INSERT INTO `upms_role_permission` VALUES ('605', '9', '295');
INSERT INTO `upms_role_permission` VALUES ('606', '9', '296');
INSERT INTO `upms_role_permission` VALUES ('607', '9', '297');
INSERT INTO `upms_role_permission` VALUES ('608', '9', '288');
INSERT INTO `upms_role_permission` VALUES ('609', '9', '289');
INSERT INTO `upms_role_permission` VALUES ('610', '9', '290');
INSERT INTO `upms_role_permission` VALUES ('611', '9', '291');
INSERT INTO `upms_role_permission` VALUES ('612', '9', '294');
INSERT INTO `upms_role_permission` VALUES ('613', '9', '295');
INSERT INTO `upms_role_permission` VALUES ('614', '9', '296');
INSERT INTO `upms_role_permission` VALUES ('615', '9', '297');
INSERT INTO `upms_role_permission` VALUES ('616', '9', '288');
INSERT INTO `upms_role_permission` VALUES ('617', '9', '289');
INSERT INTO `upms_role_permission` VALUES ('618', '9', '288');
INSERT INTO `upms_role_permission` VALUES ('619', '9', '290');
INSERT INTO `upms_role_permission` VALUES ('620', '9', '291');
INSERT INTO `upms_role_permission` VALUES ('621', '9', '289');
INSERT INTO `upms_role_permission` VALUES ('622', '9', '294');
INSERT INTO `upms_role_permission` VALUES ('623', '9', '290');
INSERT INTO `upms_role_permission` VALUES ('624', '9', '295');
INSERT INTO `upms_role_permission` VALUES ('625', '9', '291');
INSERT INTO `upms_role_permission` VALUES ('626', '9', '294');
INSERT INTO `upms_role_permission` VALUES ('627', '9', '296');
INSERT INTO `upms_role_permission` VALUES ('628', '9', '297');
INSERT INTO `upms_role_permission` VALUES ('629', '9', '295');
INSERT INTO `upms_role_permission` VALUES ('630', '9', '296');
INSERT INTO `upms_role_permission` VALUES ('631', '9', '297');
INSERT INTO `upms_role_permission` VALUES ('632', '9', '288');
INSERT INTO `upms_role_permission` VALUES ('633', '9', '289');
INSERT INTO `upms_role_permission` VALUES ('634', '9', '290');
INSERT INTO `upms_role_permission` VALUES ('635', '9', '291');
INSERT INTO `upms_role_permission` VALUES ('636', '9', '294');
INSERT INTO `upms_role_permission` VALUES ('637', '9', '295');
INSERT INTO `upms_role_permission` VALUES ('638', '9', '296');
INSERT INTO `upms_role_permission` VALUES ('639', '9', '297');
INSERT INTO `upms_role_permission` VALUES ('640', '15', '294');
INSERT INTO `upms_role_permission` VALUES ('641', '15', '297');
INSERT INTO `upms_role_permission` VALUES ('653', '14', '278');
INSERT INTO `upms_role_permission` VALUES ('654', '14', '287');
INSERT INTO `upms_role_permission` VALUES ('655', '14', '279');
INSERT INTO `upms_role_permission` VALUES ('656', '14', '210');
INSERT INTO `upms_role_permission` VALUES ('657', '14', '211');
INSERT INTO `upms_role_permission` VALUES ('658', '14', '212');
INSERT INTO `upms_role_permission` VALUES ('659', '4', '207');
INSERT INTO `upms_role_permission` VALUES ('660', '4', '293');
INSERT INTO `upms_role_permission` VALUES ('661', '4', '298');
INSERT INTO `upms_role_permission` VALUES ('662', '3', '207');
INSERT INTO `upms_role_permission` VALUES ('663', '3', '293');
INSERT INTO `upms_role_permission` VALUES ('664', '3', '298');
INSERT INTO `upms_role_permission` VALUES ('665', '1', '303');
INSERT INTO `upms_role_permission` VALUES ('666', '1', '302');
INSERT INTO `upms_role_permission` VALUES ('667', '1', '304');
INSERT INTO `upms_role_permission` VALUES ('668', '1', '305');
INSERT INTO `upms_role_permission` VALUES ('669', '1', '306');
INSERT INTO `upms_role_permission` VALUES ('670', '1', '303');
INSERT INTO `upms_role_permission` VALUES ('671', '1', '302');
INSERT INTO `upms_role_permission` VALUES ('672', '1', '304');
INSERT INTO `upms_role_permission` VALUES ('673', '1', '305');
INSERT INTO `upms_role_permission` VALUES ('674', '1', '306');
INSERT INTO `upms_role_permission` VALUES ('675', '13', '106');
INSERT INTO `upms_role_permission` VALUES ('676', '13', '107');
INSERT INTO `upms_role_permission` VALUES ('677', '13', '143');
INSERT INTO `upms_role_permission` VALUES ('678', '13', '210');
INSERT INTO `upms_role_permission` VALUES ('679', '13', '254');
INSERT INTO `upms_role_permission` VALUES ('680', '13', '294');
INSERT INTO `upms_role_permission` VALUES ('681', '13', '297');
INSERT INTO `upms_role_permission` VALUES ('682', '14', '106');
INSERT INTO `upms_role_permission` VALUES ('683', '14', '107');
INSERT INTO `upms_role_permission` VALUES ('684', '14', '143');
INSERT INTO `upms_role_permission` VALUES ('685', '1', '312');
INSERT INTO `upms_role_permission` VALUES ('686', '19', '106');
INSERT INTO `upms_role_permission` VALUES ('687', '19', '107');
INSERT INTO `upms_role_permission` VALUES ('688', '19', '143');
INSERT INTO `upms_role_permission` VALUES ('764', '20', '106');
INSERT INTO `upms_role_permission` VALUES ('765', '20', '107');
INSERT INTO `upms_role_permission` VALUES ('766', '20', '143');
INSERT INTO `upms_role_permission` VALUES ('767', '20', '173');
INSERT INTO `upms_role_permission` VALUES ('768', '20', '174');
INSERT INTO `upms_role_permission` VALUES ('769', '20', '215');
INSERT INTO `upms_role_permission` VALUES ('770', '20', '278');
INSERT INTO `upms_role_permission` VALUES ('771', '20', '287');
INSERT INTO `upms_role_permission` VALUES ('772', '20', '279');
INSERT INTO `upms_role_permission` VALUES ('773', '20', '292');
INSERT INTO `upms_role_permission` VALUES ('774', '20', '308');
INSERT INTO `upms_role_permission` VALUES ('775', '20', '309');
INSERT INTO `upms_role_permission` VALUES ('776', '20', '310');
INSERT INTO `upms_role_permission` VALUES ('777', '20', '196');
INSERT INTO `upms_role_permission` VALUES ('778', '20', '197');
INSERT INTO `upms_role_permission` VALUES ('779', '20', '216');
INSERT INTO `upms_role_permission` VALUES ('780', '20', '311');
INSERT INTO `upms_role_permission` VALUES ('781', '20', '322');
INSERT INTO `upms_role_permission` VALUES ('782', '20', '328');
INSERT INTO `upms_role_permission` VALUES ('783', '20', '327');
INSERT INTO `upms_role_permission` VALUES ('784', '20', '329');
INSERT INTO `upms_role_permission` VALUES ('785', '1', '323');
INSERT INTO `upms_role_permission` VALUES ('786', '1', '324');
INSERT INTO `upms_role_permission` VALUES ('787', '1', '325');
INSERT INTO `upms_role_permission` VALUES ('788', '1', '326');
INSERT INTO `upms_role_permission` VALUES ('789', '1', '307');
INSERT INTO `upms_role_permission` VALUES ('790', '1', '327');
INSERT INTO `upms_role_permission` VALUES ('791', '1', '308');
INSERT INTO `upms_role_permission` VALUES ('792', '1', '309');
INSERT INTO `upms_role_permission` VALUES ('793', '1', '310');
INSERT INTO `upms_role_permission` VALUES ('794', '1', '329');
INSERT INTO `upms_role_permission` VALUES ('795', '1', '322');
INSERT INTO `upms_role_permission` VALUES ('796', '1', '311');
INSERT INTO `upms_role_permission` VALUES ('797', '1', '328');
INSERT INTO `upms_role_permission` VALUES ('798', '1', '330');
INSERT INTO `upms_role_permission` VALUES ('799', '1', '331');
INSERT INTO `upms_role_permission` VALUES ('800', '15', '327');
INSERT INTO `upms_role_permission` VALUES ('801', '15', '308');
INSERT INTO `upms_role_permission` VALUES ('802', '15', '309');
INSERT INTO `upms_role_permission` VALUES ('803', '15', '310');
INSERT INTO `upms_role_permission` VALUES ('804', '15', '329');
INSERT INTO `upms_role_permission` VALUES ('805', '19', '173');
INSERT INTO `upms_role_permission` VALUES ('806', '19', '174');
INSERT INTO `upms_role_permission` VALUES ('807', '19', '215');
INSERT INTO `upms_role_permission` VALUES ('808', '19', '278');
INSERT INTO `upms_role_permission` VALUES ('809', '19', '287');
INSERT INTO `upms_role_permission` VALUES ('810', '19', '279');
INSERT INTO `upms_role_permission` VALUES ('811', '19', '292');
INSERT INTO `upms_role_permission` VALUES ('812', '19', '327');
INSERT INTO `upms_role_permission` VALUES ('813', '19', '308');
INSERT INTO `upms_role_permission` VALUES ('814', '19', '309');
INSERT INTO `upms_role_permission` VALUES ('815', '19', '310');
INSERT INTO `upms_role_permission` VALUES ('816', '19', '329');
INSERT INTO `upms_role_permission` VALUES ('817', '19', '196');
INSERT INTO `upms_role_permission` VALUES ('818', '19', '197');
INSERT INTO `upms_role_permission` VALUES ('819', '19', '216');
INSERT INTO `upms_role_permission` VALUES ('820', '19', '322');
INSERT INTO `upms_role_permission` VALUES ('821', '19', '311');
INSERT INTO `upms_role_permission` VALUES ('822', '19', '328');
INSERT INTO `upms_role_permission` VALUES ('823', '21', '106');
INSERT INTO `upms_role_permission` VALUES ('824', '21', '107');
INSERT INTO `upms_role_permission` VALUES ('825', '21', '143');
INSERT INTO `upms_role_permission` VALUES ('826', '21', '196');
INSERT INTO `upms_role_permission` VALUES ('827', '21', '322');
INSERT INTO `upms_role_permission` VALUES ('828', '21', '311');
INSERT INTO `upms_role_permission` VALUES ('829', '21', '328');
INSERT INTO `upms_role_permission` VALUES ('830', '1', '332');
INSERT INTO `upms_role_permission` VALUES ('831', '1', '333');
INSERT INTO `upms_role_permission` VALUES ('832', '23', '196');
INSERT INTO `upms_role_permission` VALUES ('833', '23', '322');
INSERT INTO `upms_role_permission` VALUES ('834', '23', '311');
INSERT INTO `upms_role_permission` VALUES ('835', '23', '328');
INSERT INTO `upms_role_permission` VALUES ('836', '23', '332');
INSERT INTO `upms_role_permission` VALUES ('837', '23', '333');
INSERT INTO `upms_role_permission` VALUES ('838', '25', '106');
INSERT INTO `upms_role_permission` VALUES ('839', '25', '107');
INSERT INTO `upms_role_permission` VALUES ('840', '25', '143');
INSERT INTO `upms_role_permission` VALUES ('841', '25', '196');
INSERT INTO `upms_role_permission` VALUES ('842', '25', '311');
INSERT INTO `upms_role_permission` VALUES ('843', '25', '328');
INSERT INTO `upms_role_permission` VALUES ('844', '27', '106');
INSERT INTO `upms_role_permission` VALUES ('845', '27', '107');
INSERT INTO `upms_role_permission` VALUES ('846', '27', '143');
INSERT INTO `upms_role_permission` VALUES ('847', '27', '196');
INSERT INTO `upms_role_permission` VALUES ('848', '27', '311');
INSERT INTO `upms_role_permission` VALUES ('849', '27', '328');
INSERT INTO `upms_role_permission` VALUES ('850', '19', '332');
INSERT INTO `upms_role_permission` VALUES ('851', '19', '333');
INSERT INTO `upms_role_permission` VALUES ('852', '1', '334');
INSERT INTO `upms_role_permission` VALUES ('853', '1', '335');
INSERT INTO `upms_role_permission` VALUES ('854', '26', '106');
INSERT INTO `upms_role_permission` VALUES ('855', '26', '107');
INSERT INTO `upms_role_permission` VALUES ('856', '26', '143');
INSERT INTO `upms_role_permission` VALUES ('857', '44', '94');
INSERT INTO `upms_role_permission` VALUES ('858', '44', '336');
INSERT INTO `upms_role_permission` VALUES ('859', '44', '337');
INSERT INTO `upms_role_permission` VALUES ('860', '44', '339');
INSERT INTO `upms_role_permission` VALUES ('861', '44', '341');
INSERT INTO `upms_role_permission` VALUES ('862', '45', '94');
INSERT INTO `upms_role_permission` VALUES ('863', '45', '336');
INSERT INTO `upms_role_permission` VALUES ('864', '45', '338');
INSERT INTO `upms_role_permission` VALUES ('865', '45', '339');
INSERT INTO `upms_role_permission` VALUES ('866', '45', '342');
INSERT INTO `upms_role_permission` VALUES ('867', '46', '94');
INSERT INTO `upms_role_permission` VALUES ('868', '46', '336');
INSERT INTO `upms_role_permission` VALUES ('869', '46', '338');
INSERT INTO `upms_role_permission` VALUES ('870', '46', '339');
INSERT INTO `upms_role_permission` VALUES ('871', '46', '342');
INSERT INTO `upms_role_permission` VALUES ('872', '2', '94');
INSERT INTO `upms_role_permission` VALUES ('873', '2', '336');
INSERT INTO `upms_role_permission` VALUES ('874', '2', '337');
INSERT INTO `upms_role_permission` VALUES ('875', '2', '338');
INSERT INTO `upms_role_permission` VALUES ('876', '2', '339');
INSERT INTO `upms_role_permission` VALUES ('877', '2', '341');
INSERT INTO `upms_role_permission` VALUES ('878', '2', '342');
INSERT INTO `upms_role_permission` VALUES ('879', '1', '343');
INSERT INTO `upms_role_permission` VALUES ('880', '1', '344');
INSERT INTO `upms_role_permission` VALUES ('881', '1', '345');
INSERT INTO `upms_role_permission` VALUES ('882', '1', '346');
INSERT INTO `upms_role_permission` VALUES ('883', '15', '343');
INSERT INTO `upms_role_permission` VALUES ('884', '15', '344');
INSERT INTO `upms_role_permission` VALUES ('885', '15', '345');
INSERT INTO `upms_role_permission` VALUES ('886', '15', '346');
INSERT INTO `upms_role_permission` VALUES ('887', '15', '343');
INSERT INTO `upms_role_permission` VALUES ('888', '15', '344');
INSERT INTO `upms_role_permission` VALUES ('889', '15', '345');
INSERT INTO `upms_role_permission` VALUES ('890', '15', '346');
INSERT INTO `upms_role_permission` VALUES ('891', '15', '343');
INSERT INTO `upms_role_permission` VALUES ('892', '15', '344');
INSERT INTO `upms_role_permission` VALUES ('893', '15', '345');
INSERT INTO `upms_role_permission` VALUES ('894', '15', '346');
INSERT INTO `upms_role_permission` VALUES ('895', '15', '343');
INSERT INTO `upms_role_permission` VALUES ('896', '15', '344');
INSERT INTO `upms_role_permission` VALUES ('897', '15', '345');
INSERT INTO `upms_role_permission` VALUES ('898', '15', '346');
INSERT INTO `upms_role_permission` VALUES ('899', '14', '343');
INSERT INTO `upms_role_permission` VALUES ('900', '14', '344');
INSERT INTO `upms_role_permission` VALUES ('901', '14', '345');
INSERT INTO `upms_role_permission` VALUES ('902', '14', '346');
INSERT INTO `upms_role_permission` VALUES ('903', '20', '332');
INSERT INTO `upms_role_permission` VALUES ('904', '20', '333');
INSERT INTO `upms_role_permission` VALUES ('905', '1', '347');
INSERT INTO `upms_role_permission` VALUES ('906', '1', '348');
INSERT INTO `upms_role_permission` VALUES ('907', '1', '349');
INSERT INTO `upms_role_permission` VALUES ('909', '1', '355');
INSERT INTO `upms_role_permission` VALUES ('910', '1', '356');
INSERT INTO `upms_role_permission` VALUES ('911', '1', '357');
INSERT INTO `upms_role_permission` VALUES ('913', '1', '358');
INSERT INTO `upms_role_permission` VALUES ('914', '1', '367');
INSERT INTO `upms_role_permission` VALUES ('915', '48', '356');
INSERT INTO `upms_role_permission` VALUES ('916', '48', '357');
INSERT INTO `upms_role_permission` VALUES ('917', '48', '370');
INSERT INTO `upms_role_permission` VALUES ('918', '49', '356');
INSERT INTO `upms_role_permission` VALUES ('919', '49', '357');
INSERT INTO `upms_role_permission` VALUES ('920', '49', '368');
INSERT INTO `upms_role_permission` VALUES ('921', '49', '369');
INSERT INTO `upms_role_permission` VALUES ('922', '49', '370');
INSERT INTO `upms_role_permission` VALUES ('923', '1', '371');
INSERT INTO `upms_role_permission` VALUES ('924', '1', '372');
INSERT INTO `upms_role_permission` VALUES ('925', '48', '231');
INSERT INTO `upms_role_permission` VALUES ('926', '48', '373');
INSERT INTO `upms_role_permission` VALUES ('927', '1', '174');
INSERT INTO `upms_role_permission` VALUES ('928', '1', '380');
INSERT INTO `upms_role_permission` VALUES ('929', '1', '381');
INSERT INTO `upms_role_permission` VALUES ('930', '1', '384');
INSERT INTO `upms_role_permission` VALUES ('931', '1', '389');
INSERT INTO `upms_role_permission` VALUES ('932', '1', '391');
INSERT INTO `upms_role_permission` VALUES ('933', '49', '94');
INSERT INTO `upms_role_permission` VALUES ('934', '49', '95');
INSERT INTO `upms_role_permission` VALUES ('935', '49', '96');
INSERT INTO `upms_role_permission` VALUES ('936', '49', '98');
INSERT INTO `upms_role_permission` VALUES ('937', '1', '399');
INSERT INTO `upms_role_permission` VALUES ('938', '1', '400');
INSERT INTO `upms_role_permission` VALUES ('939', '1', '402');
INSERT INTO `upms_role_permission` VALUES ('940', '1', '403');
INSERT INTO `upms_role_permission` VALUES ('941', '1', '409');
INSERT INTO `upms_role_permission` VALUES ('942', '1', '410');
INSERT INTO `upms_role_permission` VALUES ('943', '1', '411');
INSERT INTO `upms_role_permission` VALUES ('944', '1', '415');
INSERT INTO `upms_role_permission` VALUES ('945', '1', '416');
INSERT INTO `upms_role_permission` VALUES ('946', '1', '417');
INSERT INTO `upms_role_permission` VALUES ('947', '2', '419');
INSERT INTO `upms_role_permission` VALUES ('948', '2', '420');

-- ----------------------------
-- Table structure for upms_station_location
-- ----------------------------
DROP TABLE IF EXISTS `upms_station_location`;
CREATE TABLE `upms_station_location` (
  `guid` varchar(64) DEFAULT NULL,
  `location_token` varchar(64) DEFAULT NULL COMMENT '外键',
  `province` varchar(50) DEFAULT NULL COMMENT '省',
  `city` varchar(50) DEFAULT NULL COMMENT '市',
  `county` varchar(50) DEFAULT NULL COMMENT '区县',
  `detailed_address` varchar(200) DEFAULT NULL COMMENT '详细地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upms_station_location
-- ----------------------------

-- ----------------------------
-- Table structure for upms_system
-- ----------------------------
DROP TABLE IF EXISTS `upms_system`;
CREATE TABLE `upms_system` (
  `system_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `banner` varchar(150) DEFAULT NULL COMMENT '背景',
  `theme` varchar(50) DEFAULT NULL COMMENT '主题',
  `basepath` varchar(100) DEFAULT NULL COMMENT '根目录',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(-1:黑名单,1:正常)',
  `name` varchar(20) DEFAULT NULL COMMENT '系统名称',
  `title` varchar(20) DEFAULT NULL COMMENT '系统标题',
  `description` varchar(300) DEFAULT NULL COMMENT '系统描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='系统';

-- ----------------------------
-- Records of upms_system
-- ----------------------------
INSERT INTO `upms_system` VALUES ('1', 'zmdi zmdi-shield-security', '/resources/zheng-admin/images/zheng-upms.png', '#29a176', 'http://upms.mcep.net.cn:1111', '1', 'mcep-upms-server', '权限管理系统', '用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）', '1', '1');
INSERT INTO `upms_system` VALUES ('7', 'zmdi zmdi-wikipedia', '/resources/zheng-admin/images/zheng-cms.png', '#0c63a6', 'http://upms.mcep.net.cn:3333', '1', 'mcep-poms-admin', '运维管理系统', '运维系统', '1511240304769', '1511240304769');
INSERT INTO `upms_system` VALUES ('8', 'zmdi zmdi-account', '', '#c2b869', 'http://upms.mcep.net.cn:8888', '1', 'mcep-flow-admin', '流程中心', '个人代办任务处理', '1514969005721', '1514969005721');
INSERT INTO `upms_system` VALUES ('9', 'zmdi zmdi-paypal-alt', '', '#7e9796', 'http://upms.mcep.net.cn:5555', '1', 'mcep-mms-admin', '物资管理系统', '物资管理系统', '1519968853076', '1519968853076');
INSERT INTO `upms_system` VALUES ('10', 'zmdi zmdi-bug', '', '#02def0', 'http://ted.mcep.net.cn:6688', '1', 'mcep-ted-admin', '检测评估平台', '检测评估平台', '1537175192118', '1537175192118');
INSERT INTO `upms_system` VALUES ('11', 'zmdi zmdi-wrench', '', '#4f4f4f', 'http://uts.mcep.net.cn:4444', '1', 'mcep-uts-admin', '故障检修管理系统', '', '1537256713529', '1537256713529');

-- ----------------------------
-- Table structure for upms_user
-- ----------------------------
DROP TABLE IF EXISTS `upms_user`;
CREATE TABLE `upms_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) NOT NULL COMMENT '帐号',
  `password` varchar(32) NOT NULL COMMENT '密码MD5(密码+盐)',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐',
  `realname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(150) DEFAULT NULL COMMENT '头像',
  `phone` varchar(40) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `locked` tinyint(4) DEFAULT NULL COMMENT '状态(0:正常,1:锁定)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `fix_phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `jobs` int(20) unsigned zerofill DEFAULT NULL COMMENT '岗位',
  `organization` int(20) DEFAULT NULL COMMENT '组织',
  `approver_id` int(10) DEFAULT NULL COMMENT '业务审批人',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000075 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of upms_user
-- ----------------------------
INSERT INTO `upms_user` VALUES ('1', 'admin', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '管理员', '/resources/zheng-admin/images/avatar.jpg', '', '469741414@qq.com', '1', '0', '1', '', '00000000000000000000', '9', '254');
INSERT INTO `upms_user` VALUES ('10', '131001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨文龙', null, '15202578286', '', '1', '0', '1517897450493', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('12', '130014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '任平安', null, '18630569125', '', '1', '0', '1517898646056', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('13', '137001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '狄二平', null, '18652223629', '', '1', '0', '1517898690415', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('14', '157001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王明', null, '15852097025', '', '1', '0', '1517898762290', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('15', '150003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张旭', null, '15863609150', '', '1', '0', '1517898874603', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('16', '015003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王玲志', null, '13512578803', '', '1', '0', '1517898918165', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('17', '153001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '靳帅', null, '18505298060', '', '1', '0', '1517899668431', '', '00000000000000000000', '0', '17');
INSERT INTO `upms_user` VALUES ('18', '151001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘瑞清', null, '15509097972', '', '1', '0', '1517899941868', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('19', '116002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '褚上海', null, '15162131932', '', '1', '0', '1517900584509', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('20', '123001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '薛超', null, '18260787509', '', '1', '0', '1517900716040', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('21', '133001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曾楷康', null, '13684088246', '', '1', '0', '1517900747431', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('22', '138001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李德昆', null, '18290610636', '', '1', '0', '1517900777290', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('142', '012004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘慧中', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('147', '011011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '莫少林', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('148', '011002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '单思源', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('149', '011008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '宋瑞臻', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('150', '011009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘欣', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('151', '011012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王飞玲', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('152', '011013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王建', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('153', '011017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱晓玲', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('154', '013007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '眭琰昊', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('155', '012003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '莫蓉蓉', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('156', '012006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '黄秋梅', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('157', '012007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨炳', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('158', '012008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '宗莉丽', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('159', '012009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱雅娜', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('160', '013005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '罗焱', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('161', '013006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴雨清', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('162', '013009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴丹', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('163', '011001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马梦杰', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('164', '015009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘林端', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('165', '015010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘锋', null, '', '', null, '0', null, '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('166', '011003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王森庭', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('167', '011006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '顾天艺', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('168', '013004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郑朝霞', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('169', '015005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周倩男', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('170', '015007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王海风', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('171', '015008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张峰', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('172', '016003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李晓红', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('173', '011010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李雪晶', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('174', '011015', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '胡晓晴', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('175', '011016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '徐云', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('176', '018001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '殷志龙', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('177', '014001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '尚大武', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('178', '018003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴格非', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('179', '018004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '史伟', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('180', '019001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王敏', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('181', '014004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '滕亮', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('182', '019002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈聪', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('183', '019003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨建刚', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('184', '011014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '唐璐', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('185', '017002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '钱惠民', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('186', '017003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '苏品才', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('187', '101006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李伟', null, '18109371284', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('188', '101007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '邓俊波', null, '15899257695', null, null, '0', null, null, '00000000000000000000', '0', '190');
INSERT INTO `upms_user` VALUES ('189', '101008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '任祥闯', null, '13999771107', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('190', '102002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李昊霖', null, '13899655157', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('191', '102003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '魏万东', null, '15160887002', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('192', '102004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '章瑞阳', null, '13899811524', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('194', '102008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘博', null, '13070485701', '', null, '1', null, '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('195', '102009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘清泉', null, '13079929369', '', null, '1', null, '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('196', '103022', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李静', null, '15935029927', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('197', '103002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '邵斌', null, '18399873901', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('198', '103003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王玉洁', null, '18799666124', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('199', '103004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '祖努·莫合买提', null, '18799666267', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('200', '103005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '帕如克·赛买提', null, '18690205774', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('201', '103006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李飞', null, '18299367197', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('202', '103007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '牛勇', null, '18309053696', null, null, '0', null, null, '00000000000000000000', '0', '255');
INSERT INTO `upms_user` VALUES ('203', '103008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '唐彬', null, '15026116815', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('204', '103009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '程杰', null, '15199563193', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('205', '103010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘同杰', null, '18299947829', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('206', '103012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '于光峰', null, '15022816682', null, null, '0', null, null, '00000000000000000000', '0', '255');
INSERT INTO `upms_user` VALUES ('207', '103013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '玛尔江·沙依兰别克', null, '13399028714', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('208', '103014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张荩', null, '15299135215', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('209', '103017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '巩薇', null, '18690131545', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('210', '103018', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曹海军', null, '13379710459', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('211', '103019', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张彦雄', null, '13201078689', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('212', '103020', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王建林', null, '15389921534', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('213', '103021', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '别子龙', null, '13379712878', null, null, '0', null, null, '00000000000000000000', '0', '196');
INSERT INTO `upms_user` VALUES ('214', '103023', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张宏生', null, '15276907897', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('215', '103024', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘克', null, '13040522149', null, null, '0', null, null, '00000000000000000000', '0', '196');
INSERT INTO `upms_user` VALUES ('216', '103025', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郭仲毅', null, '18097567224', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('217', '103026', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '姚斐斐', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('218', '103028', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '约赛尹·玉苏普', null, '18299332030', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('219', '103029', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '阿不都拉·尕依提', null, '18209028793', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('220', '100001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴颖超', null, null, null, null, '0', null, null, '00000000000000000048', '0', null);
INSERT INTO `upms_user` VALUES ('221', '100002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '冯云', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('222', '100003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '董晓英', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('223', '103027', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙云龙', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('224', '103016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '毕圣晖', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('225', '018002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张宇佳', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('226', '015013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙莉莉', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('227', '020001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '芮成浩', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('228', '015014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张玲', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('229', '012010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '卢昊', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('230', '000000', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '蒋倩', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('231', '000001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘龙1', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('232', '500001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘社利', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('233', '500002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '袁晓莉', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('234', '500003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李红英', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('235', '500004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '冯雪娇', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('236', '500005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '袁晓兰', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('237', '500006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王立凡', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('238', '200001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张靖涛', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('239', '215001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张小雷', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('240', '135001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '牛杜金', null, '13245380579', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('241', '135002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '韩国军', null, '18295482503', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('242', '135003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '石波', null, '15109629637', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('243', '135004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '许龙', null, '13639516931', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('244', '135005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张斌', null, '18995225685', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('245', '135006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '魏鑫', null, '18295620027', null, null, '0', null, null, '00000000000000000000', '0', '241');
INSERT INTO `upms_user` VALUES ('246', '135007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马婷燕', null, '18095489905', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('247', '135016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '白宽', null, '13992011507', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('248', '135010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马好志', null, '15809650619', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('249', '135011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张伟东', null, '13995374468', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('250', '135012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨勇强', null, '13909529112', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('251', '135015', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '邓艳青', null, '18219616466', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('252', '135017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张国进', null, '14709591288', null, null, '0', null, null, '00000000000000000000', '0', '241');
INSERT INTO `upms_user` VALUES ('253', '135018', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '翟鹏飞', null, '18730821201', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('254', '150002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '薛尚', null, '15052088101', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('255', '106001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王海峰', null, '13677587860', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('256', '103030', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '艾可拜·阿不利孜', null, '15299785721', null, null, '0', null, null, '00000000000000000000', '0', '255');
INSERT INTO `upms_user` VALUES ('257', '103031', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '龚虎虎', null, '18399179969', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('258', '103032', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '牟杰丽', null, '15276907828', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('259', '105003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张政辉', null, '13201041058', null, null, '0', null, null, '00000000000000000000', '0', '261');
INSERT INTO `upms_user` VALUES ('260', '105004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '寇付春', null, '13565718546', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('261', '106003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王理想', null, '18609953039 、15150055417', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('262', '106002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '西尔艾力·艾合买提', null, '18196041004', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('263', '106005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱文宇', null, '13779360653', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('264', '106007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '艾比布拉·司拉义', null, '13699901753', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('265', '106009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王伟', null, '13779651043', null, null, '0', null, null, '00000000000000000000', '0', '261');
INSERT INTO `upms_user` VALUES ('266', '106011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '韩卫明', null, '‭15199086725‬', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('267', '106012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '于子琦', null, '13201313277', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('268', '131003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马洪林', null, '18597083825', '', '1', '0', null, '', '00000000000000000016', '16', null);
INSERT INTO `upms_user` VALUES ('269', '131004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李吉民', null, '13897241400 、13897776824', '', '1', '0', null, '', '00000000000000000017', '16', null);
INSERT INTO `upms_user` VALUES ('270', '131005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '谢承媛', null, '13897517606', '', null, '0', null, '', '00000000000000000017', '16', '10');
INSERT INTO `upms_user` VALUES ('271', '131008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨永寿', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('272', '132002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王庆华', null, '15597228805', '', null, '0', null, '', '00000000000000000019', '17', '10');
INSERT INTO `upms_user` VALUES ('273', '132006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '冯战宏', null, '15111767268', '', null, '0', null, '', '00000000000000000018', '17', null);
INSERT INTO `upms_user` VALUES ('274', '132007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张启胜', null, '15597465705', '', null, '0', null, '', '00000000000000000019', '17', null);
INSERT INTO `upms_user` VALUES ('276', '133006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马秋', null, '18689031773', '', null, '0', null, '', '00000000000000000044', '18', null);
INSERT INTO `upms_user` VALUES ('277', '133007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '蒋伦', null, '18030848756', '', null, '0', null, '', '00000000000000000044', '18', '100000043');
INSERT INTO `upms_user` VALUES ('278', '133008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '祁继杨', null, '13893361251', '', null, '0', null, '', '00000000000000000044', '18', null);
INSERT INTO `upms_user` VALUES ('279', '136002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李腾', null, '13313131015', '', null, '0', null, '', '00000000000000000026', '19', null);
INSERT INTO `upms_user` VALUES ('280', '136003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴晓南', null, '13833375560', '', null, '0', null, '', '00000000000000000026', '19', null);
INSERT INTO `upms_user` VALUES ('281', '136004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李春辉', null, '18401208900', '', null, '0', null, '', '00000000000000000026', '19', null);
INSERT INTO `upms_user` VALUES ('282', '136006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '冯慧渊', null, '17732730373', '', null, '0', null, '', '00000000000000000026', '19', '13');
INSERT INTO `upms_user` VALUES ('283', '137002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王飞', null, '13582431727', '', null, '0', null, '', '00000000000000000029', '20', null);
INSERT INTO `upms_user` VALUES ('284', '137003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨润', null, '18313326626', '', null, '0', null, '', '00000000000000000027', '20', '13');
INSERT INTO `upms_user` VALUES ('285', '137004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '田昀', null, '15832395077', '', null, '0', null, '', '00000000000000000027', '20', null);
INSERT INTO `upms_user` VALUES ('286', '137005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张秀林', null, '13653134743', '', null, '0', null, '', '00000000000000000027', '20', null);
INSERT INTO `upms_user` VALUES ('287', '137006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '高立斌', null, '18731135757', '', null, '0', null, '', '00000000000000000027', '20', null);
INSERT INTO `upms_user` VALUES ('288', '137007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '蒋伟杰', null, '15831336813', '', null, '0', null, '', '00000000000000000029', '20', null);
INSERT INTO `upms_user` VALUES ('289', '137008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张博', null, '13582832703', '', null, '0', null, '', '00000000000000000030', '20', null);
INSERT INTO `upms_user` VALUES ('290', '137009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '齐彦飞', null, '15598478166', '', null, '0', null, '', '00000000000000000030', '20', null);
INSERT INTO `upms_user` VALUES ('291', '137011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '梁志鹏', null, '18879018953', '', null, '0', null, '', '00000000000000000027', '20', '13');
INSERT INTO `upms_user` VALUES ('292', '137012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '史家兴', null, '15030388001', '', null, '0', null, '', '00000000000000000027', '20', '13');
INSERT INTO `upms_user` VALUES ('293', '137013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '袁向佳', null, '18231351190', '', null, '0', null, '', '00000000000000000028', '20', null);
INSERT INTO `upms_user` VALUES ('294', '137014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙博武', null, '15297321568', '', null, '0', null, '', '00000000000000000028', '20', null);
INSERT INTO `upms_user` VALUES ('295', '138005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王新武', null, '15912481503', '', null, '0', null, '', '00000000000000000045', '21', null);
INSERT INTO `upms_user` VALUES ('296', '138007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘家富', null, '15974967828', '', null, '0', null, '', '00000000000000000045', '21', '22');
INSERT INTO `upms_user` VALUES ('297', '138010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杜增富', null, '18287512302', '', null, '0', null, '', '00000000000000000045', '21', null);
INSERT INTO `upms_user` VALUES ('298', '138011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘田伟', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('299', '138012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵俊', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('300', '138013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '宝常龙', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('301', '138014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李玥明', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('302', '135009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '解文', null, '18799682957', '', null, '0', null, '', '00000000000000000033', '22', '16');
INSERT INTO `upms_user` VALUES ('303', '139002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王大平', null, '15251280899', '', null, '0', null, '', '00000000000000000034', '22', null);
INSERT INTO `upms_user` VALUES ('304', '139003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曹广利', null, '18661265606', '', null, '0', null, '', '00000000000000000035', '22', '16');
INSERT INTO `upms_user` VALUES ('305', '139004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱维国', null, '13805128105', '', null, '0', null, '', '00000000000000000035', '22', null);
INSERT INTO `upms_user` VALUES ('306', '139005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '樊明声', null, '13338998896', '', null, '0', null, '', '00000000000000000034', '22', null);
INSERT INTO `upms_user` VALUES ('307', '139008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李一聪', null, '17768106549', '', null, '0', null, '', '00000000000000000035', '22', '16');
INSERT INTO `upms_user` VALUES ('308', '150004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王坤', null, '15095143383', '', null, '0', null, '', '00000000000000000036', '23', null);
INSERT INTO `upms_user` VALUES ('309', '151002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '韩岩', null, '18620175508', '', null, '0', null, '', '00000000000000000037', '24', null);
INSERT INTO `upms_user` VALUES ('310', '151003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '黄坚', null, '18168910003', '', null, '0', null, '', '00000000000000000037', '24', null);
INSERT INTO `upms_user` VALUES ('311', '151004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张后田', null, '15962273746', '', null, '0', null, '', '00000000000000000037', '24', '16');
INSERT INTO `upms_user` VALUES ('312', '151005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张念群', null, '15250580251', '', null, '0', null, '', '00000000000000000038', '24', null);
INSERT INTO `upms_user` VALUES ('313', '151006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵维', null, null, null, null, '0', null, null, '00000000000000000000', '0', '16');
INSERT INTO `upms_user` VALUES ('314', '152003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '何玉德', null, '13997496965', '', null, '0', null, '', '00000000000000000020', '25', null);
INSERT INTO `upms_user` VALUES ('315', '152006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '卢义', null, '13897098318', '', null, '0', null, '', '00000000000000000022', '25', null);
INSERT INTO `upms_user` VALUES ('316', '152007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马辉青', null, '13619787368', '', null, '0', null, '', '00000000000000000022', '25', null);
INSERT INTO `upms_user` VALUES ('317', '152008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '麻宏图', null, '13897199531', '', null, '0', null, '', '00000000000000000022', '25', null);
INSERT INTO `upms_user` VALUES ('318', '152009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨业', null, '18709704396', '', null, '0', null, '', '00000000000000000022', '25', null);
INSERT INTO `upms_user` VALUES ('319', '152010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李军', null, '13109589578', '', null, '0', null, '', '00000000000000000023', '25', null);
INSERT INTO `upms_user` VALUES ('320', '152011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '万钢', null, '15297262097', '', null, '0', null, '', '00000000000000000024', '25', null);
INSERT INTO `upms_user` VALUES ('321', '152013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郭振宇', null, '13997149181', '', null, '0', null, '', '00000000000000000024', '25', null);
INSERT INTO `upms_user` VALUES ('322', '153002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈实', null, '13721155954', '', null, '0', null, '', '00000000000000000039', '26', null);
INSERT INTO `upms_user` VALUES ('323', '153003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '谢飞', null, '18358541020', '', null, '0', null, '', '00000000000000000039', '26', null);
INSERT INTO `upms_user` VALUES ('324', '155003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '鲁翔', null, '15197716657', '', null, '0', null, '', '00000000000000000041', '27', null);
INSERT INTO `upms_user` VALUES ('325', '155004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周锷', null, '15073758096', '', null, '0', null, '', '00000000000000000041', '27', '19');
INSERT INTO `upms_user` VALUES ('326', '155005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李念', null, '18973738357', '', null, '0', null, '', '00000000000000000041', '27', null);
INSERT INTO `upms_user` VALUES ('327', '155006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周浪', null, '13637407985', '', null, '0', null, '', '00000000000000000041', '27', null);
INSERT INTO `upms_user` VALUES ('328', '156006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李阳', null, '18505702735', '', null, '0', null, '', '00000000000000000040', '28', null);
INSERT INTO `upms_user` VALUES ('329', '156007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王新', null, '14762122438', '', null, '0', null, '', '00000000000000000040', '28', null);
INSERT INTO `upms_user` VALUES ('330', '156008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '甘霖', null, '15857049230', '', null, '0', null, '', '00000000000000000040', '28', '18');
INSERT INTO `upms_user` VALUES ('331', '157002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李泽明', null, '18330251662', '', null, '0', null, '', '00000000000000000032', '29', null);
INSERT INTO `upms_user` VALUES ('332', '157003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孟双进', null, '13613118189', '', null, '0', null, '', '00000000000000000032', '29', null);
INSERT INTO `upms_user` VALUES ('333', '157004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '林德海', null, '13291058676', '', null, '0', null, '', '00000000000000000031', '29', null);
INSERT INTO `upms_user` VALUES ('334', '157005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李航', null, '18731104533', '', null, '0', null, '', '00000000000000000032', '29', '12');
INSERT INTO `upms_user` VALUES ('335', '157006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘开', null, '15369123586', '', null, '0', null, '', '00000000000000000032', '29', null);
INSERT INTO `upms_user` VALUES ('336', '157007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵登辉', null, '15097365874', '', null, '0', null, '', '00000000000000000032', '29', null);
INSERT INTO `upms_user` VALUES ('337', '157009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙文金', null, '15262026564', '', null, '0', null, '', '00000000000000000032', '29', null);
INSERT INTO `upms_user` VALUES ('338', '158001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱炎', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('339', '128001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曹永红', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('340', '129001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '窦永亮', null, '18809370869', null, null, '0', null, null, '00000000000000000000', '0', '367');
INSERT INTO `upms_user` VALUES ('341', '127006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘明佳', null, '15293773701', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('342', '129004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨振', null, '15593538550', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('343', '127010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '倪泽明', null, '15593739268', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('344', '127004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '唐棠', null, '13893768112', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('345', '127011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '蔺常多', null, '18693738842', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('346', '127012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '魏志亮', null, '18919450509', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('347', '127013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '任雪瓶', null, '18139794231', null, null, '0', null, null, '00000000000000000000', '0', '341');
INSERT INTO `upms_user` VALUES ('348', '127014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '罗尔伟', null, '18419868460', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('349', '128002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱振东', null, '13519365623', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('350', '128006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '柴波', null, '18293632537', null, null, '0', null, null, '00000000000000000000', '0', '349');
INSERT INTO `upms_user` VALUES ('351', '128004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '管永善', null, '15569981999', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('352', '128003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周玉', null, '18293614296', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('353', '128012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '宋学让', null, '18298563282', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('354', '130009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘昭翠', null, '15709369885', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('355', '128013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '白文肖', null, '15309477240', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('356', '128014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴颖进', null, '18015231186', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('357', '129002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '卢吉民', null, '18193503538', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('358', '130008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '高万福', null, '18294167962', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('359', '129003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '龚叶', null, '13649351972', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('360', '129005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '常盛', null, '13830527887', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('361', '129007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李强', null, '18093503004', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('362', '129008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王槐', null, '18919350805', null, null, '0', null, null, '00000000000000000000', '0', '357');
INSERT INTO `upms_user` VALUES ('363', '129009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李云峰', null, '15193424046', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('364', '130004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵光泽', null, '15682732360', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('365', '130016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘立晨', null, '18294167963', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('366', '130002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '侯伟敏', null, '18693510192', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('367', '130010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨兴玲', null, '18294177486', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('368', '130003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '靳海', null, '18693515240', null, null, '0', null, null, '00000000000000000000', '0', '372');
INSERT INTO `upms_user` VALUES ('369', '130013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '许洁', null, '18293504945', null, null, '0', null, null, '00000000000000000000', '0', '372');
INSERT INTO `upms_user` VALUES ('370', '129006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '董小妹', null, '18993516633', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('371', '130005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '高旭东', null, '15095638208', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('372', '130007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周海年', null, '18294167965', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('373', '130011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘秀峰', null, '18294170776', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('374', '130017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈思岩', null, '18697891733', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('375', '130012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴天斌', null, '18993575122', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('376', '135013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈亮', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('377', '300001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '江山', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('378', '300002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴楠', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('379', '300003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郭青松', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('380', '300004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘建萍', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('381', '300005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '冷静', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('382', '300006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '邓婷', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('383', '300007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘雪', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('384', '300008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周丽', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('385', '107001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '宗义昌', null, '15195327707', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('386', '107004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨江峰', null, '15899009591', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('387', '107005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '苏鹏飞', null, '18699666011', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('388', '109004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '丁胜刚', null, '18699668364', null, null, '0', null, null, '00000000000000000000', '0', '422');
INSERT INTO `upms_user` VALUES ('389', '107006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曹燕', null, '18094813723', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('390', '116001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曹君峰', null, '15809076579', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('391', '108018', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '范吉奎', null, '13565034935', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('392', '108014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘雷', null, '18096871360', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('393', '108015', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '魏晓竑', null, '18196265713', null, null, '0', null, null, '00000000000000000000', '0', '392');
INSERT INTO `upms_user` VALUES ('394', '108017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵俊岭', null, '15899011488', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('395', '108003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '魏栋', null, '13899070939', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('396', '108005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘超', null, '18999797791', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('397', '108002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱晓春', null, '18699612354', null, null, '0', null, null, '00000000000000000000', '0', '433');
INSERT INTO `upms_user` VALUES ('398', '108007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王军礼', null, '18096887907', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('399', '108006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '梁新慧', null, '13319779002', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('400', '108008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵新', null, '13619959267', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('401', '108009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孟石磊', null, '13309960470', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('402', '108013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘洁泽', null, '18699660413', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('403', '108012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '曹桢', null, '18699652918', null, null, '0', null, null, '00000000000000000000', '0', '402');
INSERT INTO `upms_user` VALUES ('404', '108019', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴应东', null, '13565032692', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('405', '113001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王忠虎', null, '15770032919', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('406', '109002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵青山', null, '13325503233', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('407', '109003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨昆', null, '18196270100', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('408', '109006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '沈万里', null, '17709962052', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('409', '113003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王宁', null, '15770031990', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('410', '111003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘新吉', null, '13779042369', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('411', '111004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郭峰', null, '15099267568', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('412', '111007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '段成云', null, '13667512129', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('413', '111002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张永斌', null, '15001574135', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('414', '111006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '祁重阳', null, '15739396233', null, null, '0', null, null, '00000000000000000000', '0', '413');
INSERT INTO `upms_user` VALUES ('415', '111008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '徐江波', null, '15899048659', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('416', '112002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '丁晓辉', null, '18799819570', null, null, '0', null, null, '00000000000000000000', '0', '454');
INSERT INTO `upms_user` VALUES ('417', '118006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王旭升', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('418', '112003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘强', null, '17699245270', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('419', '113002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杭金伟', null, '18799936167', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('420', '113004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '汪涛', null, '18609973924', null, null, '0', null, null, '00000000000000000000', '0', '224');
INSERT INTO `upms_user` VALUES ('421', '113005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王磊', null, '13779797846', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('422', '109005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李起瑞', null, '13667556690', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('423', '115001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王守柱', null, '15199917685', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('424', '115002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '卢文东', null, '13565138009', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('425', '115003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王鹏', null, '18742621112', null, null, '0', null, null, '00000000000000000000', '0', '224');
INSERT INTO `upms_user` VALUES ('426', '115005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '葛瑞宁', null, '15899341001', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('427', '115006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨勇', null, '15569379171', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('428', '118004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙景波', null, '18260356745', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('429', '116004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '苟正声', null, '15292548916', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('430', '116003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '魏涛', null, '13565133702', null, null, '0', null, null, '00000000000000000000', '0', '224');
INSERT INTO `upms_user` VALUES ('431', '116005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨文涛', null, '15886850878', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('432', '116006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郭永辉', null, '15276212016', '', null, '0', null, '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('433', '117001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李浩', null, '13912037759', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('434', '117005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周康', null, '15922490575', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('435', '117006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '时翰林', null, '13382451981', null, null, '0', null, null, '00000000000000000000', '0', '405');
INSERT INTO `upms_user` VALUES ('436', '117007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '来立军', null, '13199981345', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('437', '117008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵春辉', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('438', '117009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李雷', null, '15099191188', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('439', '121004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈新炜', null, '15109058456', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('440', '118003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '贾红涛', null, '15599834166', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('441', '118005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '黄江', null, '15292912455', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('442', '118010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘海龙', null, '15199835680', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('443', '118007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙运宝', null, '15199879003', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('444', '118009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '谢城', null, '15062122352', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('445', '126003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吴国庆', null, '18097968760', null, null, '0', null, null, '00000000000000000000', '0', '447');
INSERT INTO `upms_user` VALUES ('446', '121006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈保', null, '18361219414', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('447', '121008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '何海龙', null, '15199300564', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('448', '121009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵绿山', null, '17399277657', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('449', '121010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '饶航', null, '18799502875', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('450', '121011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '闫明鑫', null, '13565376665', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('451', '121002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '亚森江·阿巴拜科日', null, '18399582524', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('452', '121003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '迪丽拜·阿布力米提', null, '18799518717', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('453', '121005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '白亚萍', null, '18799864093', null, null, '0', null, null, '00000000000000000000', '0', '451');
INSERT INTO `upms_user` VALUES ('454', '108001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '苏长飞', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('455', '123002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '毛兰江·艾尼万尔', null, '13999639753', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('456', '123003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '阿卜杜许库尔·阿卜力孜', null, '13095157149', null, null, '0', null, null, '00000000000000000000', '0', '423');
INSERT INTO `upms_user` VALUES ('457', '123005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '裴永魁', null, '15599927988', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('458', '125002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '卢振豹', null, '15150061569', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('459', '117003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '冯加平', null, '13912037759', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('460', '125003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '全晓东', null, '18399338823', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('461', '125006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '艾尼瓦尔·吐拉丁', null, '18609985598', null, null, '0', null, null, '00000000000000000000', '0', '438');
INSERT INTO `upms_user` VALUES ('462', '126006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '何辉', null, '18709989629', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('463', '126001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘龙', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('464', '126007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '任承鹏', null, '13239985316', null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('465', 'sd100002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱德启', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('466', 'sd100003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '潘波', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('467', 'sd100004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '郑应欢', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('468', 'sd100005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马远光', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('469', '159001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李文君', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('470', '159002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张兴龙', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('471', '159003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王双全', null, null, null, null, '0', null, null, '00000000000000000000', '0', '10');
INSERT INTO `upms_user` VALUES ('473', '159005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '祁国良', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('474', '131009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张国龙', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('476', '102010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '夏鑫', null, null, null, null, '0', null, null, '00000000000000000000', '0', '190');
INSERT INTO `upms_user` VALUES ('477', '131010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨伟', null, null, null, null, '0', null, null, '00000000000000000000', '0', '10');
INSERT INTO `upms_user` VALUES ('478', '159007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨文鹏', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('479', '133010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张文军', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('480', '150005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '常煜光', null, null, null, null, '0', null, null, '00000000000000000000', '0', '15');
INSERT INTO `upms_user` VALUES ('481', '156009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '钟文华', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('482', '158004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '甘毅', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('483', '158003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '梁家棋', null, null, null, null, '0', null, null, '00000000000000000000', '0', '20');
INSERT INTO `upms_user` VALUES ('484', '112004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵霞东', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('485', '126008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '贾仕江', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('486', '123006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '史志强', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('487', '100006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '何成斐', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('488', '100005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张敏', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('489', '152016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王正龙', null, null, null, '1', '0', '1511255835574', null, '00000000000000000000', '0', '478');
INSERT INTO `upms_user` VALUES ('490', '015019', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '尤虎', null, null, null, '1', '0', '1524201716604', null, '00000000000000000001', '1', null);
INSERT INTO `upms_user` VALUES ('100001', '010001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '莫继才', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100002', '010002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈亮', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100003', '010003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '文庭荣', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100004', '010005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '孙翔', null, null, null, null, '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000003', 'yang', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', 'yang', '', '', '', '1', '0', '1511255835574', null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000004', '015004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张玲', null, '', '', '0', '0', '1524201716604', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000005', '019099', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '莫少华', null, '', '', '1', '0', '1524548684213', '', '00000000000000000000', '8', null);
INSERT INTO `upms_user` VALUES ('100000006', 'jhhr', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '精河', null, '', '', '1', '0', '1524637796744', '', '00000000000000000007', '11', null);
INSERT INTO `upms_user` VALUES ('100000007', '015015', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '俞成家', null, '', '', '1', '0', '1526002715510', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000009', '161001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '侯超', null, '', '', '1', '0', null, '', '00000000000000000000', '8', null);
INSERT INTO `upms_user` VALUES ('100000010', '161002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张峻毅', null, '', '', '1', '0', null, '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000012', '201003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张喜胜', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000013', '201004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '康骏', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000014', '201005', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈金辉', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000015', '201006', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马占成', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000016', '201007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张建华', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000017', '201008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '鲍江峰', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000018', '201009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '黄媛玉', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000019', '201010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '马莉', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000020', '201011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '顾玉明', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000021', '201012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '董生瑛', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000022', '201013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱琦', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000023', '162001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李勋', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000024', '162002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王晶', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000025', '162003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨勇', null, null, null, '1', '0', null, null, '00000000000000000000', '0', '100000023');
INSERT INTO `upms_user` VALUES ('100000026', '163001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘江生', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000027', '163002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张会勇', null, null, null, '1', '0', null, null, '00000000000000000000', '0', '100000027');
INSERT INTO `upms_user` VALUES ('100000028', '164001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '姜锋', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000029', '164002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张野', null, null, null, '1', '0', null, null, '00000000000000000000', '0', '100000028');
INSERT INTO `upms_user` VALUES ('100000030', '164003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '徐永强', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000031', '165001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '段佳辉', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000032', '165002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘贺', null, null, null, '1', '0', null, null, '00000000000000000000', '0', '100000031');
INSERT INTO `upms_user` VALUES ('100000033', '165003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '陈一凡', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000034', '166001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '汪尚文', null, '', '', '1', '0', null, '', '00000000000000000000', '8', null);
INSERT INTO `upms_user` VALUES ('100000035', '166002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李小强', null, '', '', '1', '0', null, '', '00000000000000000000', '8', '18');
INSERT INTO `upms_user` VALUES ('100000036', '206003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '熊甫进', null, '', '', '1', '0', null, '', '00000000000000000000', '8', null);
INSERT INTO `upms_user` VALUES ('100000037', '139008\r\n', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李一聪\r\n', null, null, null, '1', '0', null, null, '00000000000000000000', '0', '16');
INSERT INTO `upms_user` VALUES ('100000038', '139009\r\n', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李璨\r\n', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000039', '139011\r\n', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '石远博\r\n', null, null, null, '1', '0', null, null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000040', '139012\r\n', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '朱维政\r\n', null, null, null, '1', '0', null, null, '00000000000000000000', '0', '16');
INSERT INTO `upms_user` VALUES ('100000042', '133012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨再敏', null, '', '', '1', '0', '1526475277182', '', '00000000000000000044', '18', null);
INSERT INTO `upms_user` VALUES ('100000043', '133013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '谭正友', null, '', '', '1', '0', '1526475334729', '', '00000000000000000044', '18', null);
INSERT INTO `upms_user` VALUES ('100000044', '133011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨勇', null, '', '', '1', '0', '1526475352182', '', '00000000000000000044', '18', null);
INSERT INTO `upms_user` VALUES ('100000045', '133009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '赵佳志', null, '', '', '1', '1', '1526475392307', '', '00000000000000000044', '18', null);
INSERT INTO `upms_user` VALUES ('100000046', '151007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '童晨霞', null, '', '', '1', '0', '1526479248635', '', '00000000000000000038', '24', '16');
INSERT INTO `upms_user` VALUES ('100000047', '127017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张延升', null, '', '', '1', '0', '1526479816448', '', '00000000000000000000', '37', null);
INSERT INTO `upms_user` VALUES ('100000048', '127016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '万占斌', null, '', '', '1', '0', '1526480003994', '', '00000000000000000000', '37', null);
INSERT INTO `upms_user` VALUES ('100000049', '136007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨刚', null, '', '', '1', '0', '1526480111166', '', '00000000000000000025', '19', null);
INSERT INTO `upms_user` VALUES ('100000050', '152017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '鄂明西', null, '', '', '1', '0', '1526480233026', '', '00000000000000000022', '25', null);
INSERT INTO `upms_user` VALUES ('100000051', '109007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '田龙', null, '', '', '1', '0', '1526483954885', '', '00000000000000000000', '36', null);
INSERT INTO `upms_user` VALUES ('100000052', '023001', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张君', null, null, null, '1', '0', '1526483954885', null, '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000053', '023002', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '吕圣香', null, '', '', '1', '1', '1526483954885', '', '00000000000000000000', '0', null);
INSERT INTO `upms_user` VALUES ('100000054', '015025', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨旭', null, '', '', '1', '0', '1526615178962', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000055', '131012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '董占学', null, '', '', '1', '1', '1526902720083', '', '00000000000000000016', '16', null);
INSERT INTO `upms_user` VALUES ('100000056', '131013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李玉', null, '', '', '1', '1', '1526902749530', '', '00000000000000000017', '16', '365');
INSERT INTO `upms_user` VALUES ('100000057', '023003', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '倪俊', null, null, null, '1', '0', '1526902749530', null, null, null, null);
INSERT INTO `upms_user` VALUES ('100000058', '102011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '李元杰', null, '', '', '1', '0', '1528191830510', '', '00000000000000000000', '12', null);
INSERT INTO `upms_user` VALUES ('100000059', '131014', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '山永升', null, '', '', '1', '0', '1528191887698', '', null, '16', null);
INSERT INTO `upms_user` VALUES ('100000060', '131015', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '喇启云', null, '', '', '1', '0', '1528191991010', '', '00000000000000000000', '16', null);
INSERT INTO `upms_user` VALUES ('100000061', '015016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杜雨轩', null, '', '', '0', '0', '1529024476057', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000062', '015099', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '刘昭', null, '', '', '1', '0', '1529388750260', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000063', '109008', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨晓文', null, '', '', '1', '0', '1530682401588', '', '00000000000000000000', '9', '386');
INSERT INTO `upms_user` VALUES ('100000064', '023004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '张竞文', null, '', '', '0', '0', '1530760486916', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000065', '133016', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '杨茂', null, '', '', '1', '0', '1531358985854', '', '00000000000000000043', '18', null);
INSERT INTO `upms_user` VALUES ('100000066', '133017', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '络绒志玛', null, '', '', '1', '0', '1531359352557', '', '00000000000000000000', '18', null);
INSERT INTO `upms_user` VALUES ('100000067', '153004', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '王府成', null, '', '', '1', '0', '1531378623682', '', '00000000000000000039', '26', null);
INSERT INTO `upms_user` VALUES ('100000068', '015027', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '欧俊秀', null, '', '', '1', '0', '1531881987292', '', '00000000000000000000', '9', null);
INSERT INTO `upms_user` VALUES ('100000069', '118011', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '柏东方', null, '18599070063', '', '1', '0', '1531991153932', '', '00000000000000000000', '11', null);
INSERT INTO `upms_user` VALUES ('100000070', '121012', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '钟胤', null, '', '', '1', '0', '1531991295963', '', '00000000000000000000', '11', null);
INSERT INTO `upms_user` VALUES ('100000071', '121013', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '白瑞兴', null, '', '', '1', '0', '1531991548338', '', null, '11', null);
INSERT INTO `upms_user` VALUES ('100000072', '126009', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '麦麦提·穆合塔尔', null, '', '', '1', '0', '1531991967979', '', '00000000000000000000', '11', null);
INSERT INTO `upms_user` VALUES ('100000073', '126010', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '周立德', null, '', '', '1', '0', '1531992022479', '', '00000000000000000000', '11', null);
INSERT INTO `upms_user` VALUES ('100000074', '116007', 'EDAFD38837FFF8DFA047452E47BD535E', '66f1b370c660445a8657bf8bf1794486', '龚明理', null, '', '', '1', '0', '1531992149120', '', '00000000000000000000', '11', null);

-- ----------------------------
-- Table structure for upms_user_jobs
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_jobs`;
CREATE TABLE `upms_user_jobs` (
  `user_jobs_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `jobs_id` int(10) unsigned NOT NULL COMMENT '岗位编号',
  PRIMARY KEY (`user_jobs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upms_user_jobs
-- ----------------------------
INSERT INTO `upms_user_jobs` VALUES ('9', '1', '3');
INSERT INTO `upms_user_jobs` VALUES ('13', '7', '1');
INSERT INTO `upms_user_jobs` VALUES ('14', '7', '2');
INSERT INTO `upms_user_jobs` VALUES ('15', '7', '4');
INSERT INTO `upms_user_jobs` VALUES ('16', '7', '5');
INSERT INTO `upms_user_jobs` VALUES ('17', '7', '6');
INSERT INTO `upms_user_jobs` VALUES ('18', '8', '4');
INSERT INTO `upms_user_jobs` VALUES ('19', '8', '5');
INSERT INTO `upms_user_jobs` VALUES ('20', '8', '6');
INSERT INTO `upms_user_jobs` VALUES ('21', '10', '12');
INSERT INTO `upms_user_jobs` VALUES ('22', '11', '13');
INSERT INTO `upms_user_jobs` VALUES ('23', '12', '15');
INSERT INTO `upms_user_jobs` VALUES ('24', '476', '25');
INSERT INTO `upms_user_jobs` VALUES ('29', '474', '43');
INSERT INTO `upms_user_jobs` VALUES ('30', '100000000', '0');
INSERT INTO `upms_user_jobs` VALUES ('34', '100000004', '0');
INSERT INTO `upms_user_jobs` VALUES ('35', '100000005', '0');
INSERT INTO `upms_user_jobs` VALUES ('36', '100000006', '7');
INSERT INTO `upms_user_jobs` VALUES ('40', '11', '0');
INSERT INTO `upms_user_jobs` VALUES ('44', '100000042', '44');
INSERT INTO `upms_user_jobs` VALUES ('45', '100000043', '44');
INSERT INTO `upms_user_jobs` VALUES ('46', '100000044', '44');
INSERT INTO `upms_user_jobs` VALUES ('49', '100000046', '38');
INSERT INTO `upms_user_jobs` VALUES ('50', '100000047', '0');
INSERT INTO `upms_user_jobs` VALUES ('51', '100000048', '0');
INSERT INTO `upms_user_jobs` VALUES ('52', '100000049', '25');
INSERT INTO `upms_user_jobs` VALUES ('53', '100000050', '22');
INSERT INTO `upms_user_jobs` VALUES ('54', '100000051', '0');
INSERT INTO `upms_user_jobs` VALUES ('55', '100000034', '0');
INSERT INTO `upms_user_jobs` VALUES ('56', '100000035', '0');
INSERT INTO `upms_user_jobs` VALUES ('57', '100000036', '0');
INSERT INTO `upms_user_jobs` VALUES ('58', '100000054', '0');
INSERT INTO `upms_user_jobs` VALUES ('61', '193', '0');
INSERT INTO `upms_user_jobs` VALUES ('63', '472', '0');
INSERT INTO `upms_user_jobs` VALUES ('64', '475', '0');
INSERT INTO `upms_user_jobs` VALUES ('65', '100000058', '0');
INSERT INTO `upms_user_jobs` VALUES ('66', '100000060', '0');
INSERT INTO `upms_user_jobs` VALUES ('70', '14', '50');
INSERT INTO `upms_user_jobs` VALUES ('73', '100000061', '0');
INSERT INTO `upms_user_jobs` VALUES ('74', '165', '0');
INSERT INTO `upms_user_jobs` VALUES ('75', '220', '48');
INSERT INTO `upms_user_jobs` VALUES ('76', '100000062', '0');
INSERT INTO `upms_user_jobs` VALUES ('77', '100004', '49');
INSERT INTO `upms_user_jobs` VALUES ('78', '194', '0');
INSERT INTO `upms_user_jobs` VALUES ('79', '195', '0');
INSERT INTO `upms_user_jobs` VALUES ('81', '100000063', '0');
INSERT INTO `upms_user_jobs` VALUES ('82', '100000064', '0');
INSERT INTO `upms_user_jobs` VALUES ('83', '100000055', '16');
INSERT INTO `upms_user_jobs` VALUES ('84', '100000065', '43');
INSERT INTO `upms_user_jobs` VALUES ('85', '100000066', '0');
INSERT INTO `upms_user_jobs` VALUES ('86', '100000053', '0');
INSERT INTO `upms_user_jobs` VALUES ('87', '100000067', '39');
INSERT INTO `upms_user_jobs` VALUES ('88', '100000010', '0');
INSERT INTO `upms_user_jobs` VALUES ('89', '100000068', '0');
INSERT INTO `upms_user_jobs` VALUES ('90', '100000069', '0');
INSERT INTO `upms_user_jobs` VALUES ('91', '100000070', '0');
INSERT INTO `upms_user_jobs` VALUES ('92', '100000072', '0');
INSERT INTO `upms_user_jobs` VALUES ('93', '100000073', '0');
INSERT INTO `upms_user_jobs` VALUES ('94', '100000074', '0');
INSERT INTO `upms_user_jobs` VALUES ('95', '432', '0');
INSERT INTO `upms_user_jobs` VALUES ('96', '100000056', '17');

-- ----------------------------
-- Table structure for upms_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_organization`;
CREATE TABLE `upms_user_organization` (
  `user_organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `organization_id` int(10) unsigned NOT NULL COMMENT '组织编号',
  PRIMARY KEY (`user_organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='角色组织关联表';

-- ----------------------------
-- Records of upms_user_organization
-- ----------------------------
INSERT INTO `upms_user_organization` VALUES ('19', '1', '1');
INSERT INTO `upms_user_organization` VALUES ('20', '1', '4');
INSERT INTO `upms_user_organization` VALUES ('21', '1', '5');
INSERT INTO `upms_user_organization` VALUES ('22', '1', '6');
INSERT INTO `upms_user_organization` VALUES ('23', '1', '7');
INSERT INTO `upms_user_organization` VALUES ('24', '3', '5');
INSERT INTO `upms_user_organization` VALUES ('25', '16', '24');
INSERT INTO `upms_user_organization` VALUES ('26', '15', '23');
INSERT INTO `upms_user_organization` VALUES ('27', '14', '29');
INSERT INTO `upms_user_organization` VALUES ('29', '12', '19');
INSERT INTO `upms_user_organization` VALUES ('32', '11', '17');
INSERT INTO `upms_user_organization` VALUES ('33', '11', '25');
INSERT INTO `upms_user_organization` VALUES ('34', '10', '16');
INSERT INTO `upms_user_organization` VALUES ('35', '17', '26');
INSERT INTO `upms_user_organization` VALUES ('36', '18', '28');
INSERT INTO `upms_user_organization` VALUES ('37', '19', '27');
INSERT INTO `upms_user_organization` VALUES ('38', '20', '30');
INSERT INTO `upms_user_organization` VALUES ('39', '21', '18');
INSERT INTO `upms_user_organization` VALUES ('40', '22', '21');
INSERT INTO `upms_user_organization` VALUES ('41', '476', '28');
INSERT INTO `upms_user_organization` VALUES ('42', '477', '9');
INSERT INTO `upms_user_organization` VALUES ('43', '477', '9');
INSERT INTO `upms_user_organization` VALUES ('46', '13', '20');
INSERT INTO `upms_user_organization` VALUES ('47', '100000000', '9');
INSERT INTO `upms_user_organization` VALUES ('48', '100000004', '9');
INSERT INTO `upms_user_organization` VALUES ('49', '100000005', '8');
INSERT INTO `upms_user_organization` VALUES ('50', '100000006', '11');
INSERT INTO `upms_user_organization` VALUES ('51', '11', '0');
INSERT INTO `upms_user_organization` VALUES ('52', '100000009', '8');
INSERT INTO `upms_user_organization` VALUES ('53', '100000010', '8');
INSERT INTO `upms_user_organization` VALUES ('54', '100000010', '8');
INSERT INTO `upms_user_organization` VALUES ('55', '100000042', '18');
INSERT INTO `upms_user_organization` VALUES ('56', '100000043', '18');
INSERT INTO `upms_user_organization` VALUES ('57', '100000044', '18');
INSERT INTO `upms_user_organization` VALUES ('59', '100000041', '22');
INSERT INTO `upms_user_organization` VALUES ('60', '100000046', '24');
INSERT INTO `upms_user_organization` VALUES ('61', '100000047', '37');
INSERT INTO `upms_user_organization` VALUES ('62', '100000048', '37');
INSERT INTO `upms_user_organization` VALUES ('63', '100000049', '19');
INSERT INTO `upms_user_organization` VALUES ('64', '100000050', '25');
INSERT INTO `upms_user_organization` VALUES ('65', '100000051', '36');
INSERT INTO `upms_user_organization` VALUES ('66', '100000034', '8');
INSERT INTO `upms_user_organization` VALUES ('67', '100000035', '8');
INSERT INTO `upms_user_organization` VALUES ('68', '100000036', '8');
INSERT INTO `upms_user_organization` VALUES ('69', '100000054', '9');
INSERT INTO `upms_user_organization` VALUES ('70', '100000055', '16');
INSERT INTO `upms_user_organization` VALUES ('71', '100000056', '16');
INSERT INTO `upms_user_organization` VALUES ('72', '193', '0');
INSERT INTO `upms_user_organization` VALUES ('73', '275', '17');
INSERT INTO `upms_user_organization` VALUES ('74', '472', '0');
INSERT INTO `upms_user_organization` VALUES ('75', '475', '0');
INSERT INTO `upms_user_organization` VALUES ('76', '100000058', '12');
INSERT INTO `upms_user_organization` VALUES ('77', '100000060', '16');
INSERT INTO `upms_user_organization` VALUES ('78', '100000041', '22');
INSERT INTO `upms_user_organization` VALUES ('79', '100000061', '9');
INSERT INTO `upms_user_organization` VALUES ('80', '165', '0');
INSERT INTO `upms_user_organization` VALUES ('81', '100000062', '9');
INSERT INTO `upms_user_organization` VALUES ('82', '194', '0');
INSERT INTO `upms_user_organization` VALUES ('83', '195', '0');
INSERT INTO `upms_user_organization` VALUES ('85', '100000063', '9');
INSERT INTO `upms_user_organization` VALUES ('87', '100000055', '16');
INSERT INTO `upms_user_organization` VALUES ('88', '100000065', '18');
INSERT INTO `upms_user_organization` VALUES ('89', '100000066', '18');
INSERT INTO `upms_user_organization` VALUES ('90', '100000053', '0');
INSERT INTO `upms_user_organization` VALUES ('91', '100000067', '26');
INSERT INTO `upms_user_organization` VALUES ('92', '100000010', '0');
INSERT INTO `upms_user_organization` VALUES ('93', '100000068', '9');
INSERT INTO `upms_user_organization` VALUES ('94', '100000069', '11');
INSERT INTO `upms_user_organization` VALUES ('95', '100000070', '11');
INSERT INTO `upms_user_organization` VALUES ('96', '100000072', '11');
INSERT INTO `upms_user_organization` VALUES ('97', '100000073', '11');
INSERT INTO `upms_user_organization` VALUES ('98', '100000074', '11');
INSERT INTO `upms_user_organization` VALUES ('99', '432', '0');
INSERT INTO `upms_user_organization` VALUES ('100', '100000056', '16');

-- ----------------------------
-- Table structure for upms_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_permission`;
CREATE TABLE `upms_user_permission` (
  `user_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  `type` tinyint(4) NOT NULL COMMENT '权限类型(-1:减权限,1:增权限)',
  PRIMARY KEY (`user_permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=768 DEFAULT CHARSET=utf8mb4 COMMENT='用户权限关联表';

-- ----------------------------
-- Records of upms_user_permission
-- ----------------------------
INSERT INTO `upms_user_permission` VALUES ('3', '1', '22', '-1');
INSERT INTO `upms_user_permission` VALUES ('4', '1', '22', '1');
INSERT INTO `upms_user_permission` VALUES ('5', '2', '24', '-1');
INSERT INTO `upms_user_permission` VALUES ('6', '2', '26', '-1');
INSERT INTO `upms_user_permission` VALUES ('7', '2', '27', '-1');
INSERT INTO `upms_user_permission` VALUES ('8', '2', '29', '-1');
INSERT INTO `upms_user_permission` VALUES ('9', '2', '32', '-1');
INSERT INTO `upms_user_permission` VALUES ('10', '2', '51', '-1');
INSERT INTO `upms_user_permission` VALUES ('11', '2', '48', '-1');
INSERT INTO `upms_user_permission` VALUES ('12', '2', '50', '-1');
INSERT INTO `upms_user_permission` VALUES ('13', '2', '35', '-1');
INSERT INTO `upms_user_permission` VALUES ('14', '2', '46', '-1');
INSERT INTO `upms_user_permission` VALUES ('15', '2', '37', '-1');
INSERT INTO `upms_user_permission` VALUES ('16', '2', '38', '-1');
INSERT INTO `upms_user_permission` VALUES ('17', '2', '57', '-1');
INSERT INTO `upms_user_permission` VALUES ('18', '2', '56', '-1');
INSERT INTO `upms_user_permission` VALUES ('19', '2', '59', '-1');
INSERT INTO `upms_user_permission` VALUES ('20', '2', '78', '-1');
INSERT INTO `upms_user_permission` VALUES ('21', '2', '67', '-1');
INSERT INTO `upms_user_permission` VALUES ('22', '2', '83', '-1');
INSERT INTO `upms_user_permission` VALUES ('23', '2', '71', '-1');
INSERT INTO `upms_user_permission` VALUES ('24', '2', '75', '-1');
INSERT INTO `upms_user_permission` VALUES ('29', '1', '2', '1');
INSERT INTO `upms_user_permission` VALUES ('30', '1', '24', '1');
INSERT INTO `upms_user_permission` VALUES ('31', '1', '25', '1');
INSERT INTO `upms_user_permission` VALUES ('32', '1', '26', '1');
INSERT INTO `upms_user_permission` VALUES ('33', '1', '3', '1');
INSERT INTO `upms_user_permission` VALUES ('34', '1', '27', '1');
INSERT INTO `upms_user_permission` VALUES ('35', '1', '28', '1');
INSERT INTO `upms_user_permission` VALUES ('36', '1', '29', '1');
INSERT INTO `upms_user_permission` VALUES ('37', '378', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('38', '378', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('39', '390', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('40', '390', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('41', '390', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('42', '165', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('43', '165', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('44', '165', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('45', '100003', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('46', '100003', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('47', '11', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('48', '11', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('49', '318', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('50', '318', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('51', '170', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('52', '170', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('53', '170', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('54', '11', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('55', '257', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('56', '257', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('57', '257', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('75', '257', '192', '1');
INSERT INTO `upms_user_permission` VALUES ('87', '257', '1', '1');
INSERT INTO `upms_user_permission` VALUES ('88', '257', '112', '1');
INSERT INTO `upms_user_permission` VALUES ('89', '257', '113', '1');
INSERT INTO `upms_user_permission` VALUES ('90', '257', '114', '1');
INSERT INTO `upms_user_permission` VALUES ('91', '257', '115', '1');
INSERT INTO `upms_user_permission` VALUES ('92', '257', '154', '1');
INSERT INTO `upms_user_permission` VALUES ('93', '257', '155', '1');
INSERT INTO `upms_user_permission` VALUES ('94', '257', '156', '1');
INSERT INTO `upms_user_permission` VALUES ('95', '257', '157', '1');
INSERT INTO `upms_user_permission` VALUES ('96', '257', '158', '1');
INSERT INTO `upms_user_permission` VALUES ('178', '100003', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('183', '100000005', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('184', '100000005', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('185', '100000005', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('190', '14', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('191', '14', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('192', '14', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('197', '373', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('198', '373', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('199', '373', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('200', '220', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('201', '220', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('202', '220', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('203', '168', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('204', '168', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('205', '168', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('211', '100000007', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('212', '100000007', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('213', '100000007', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('217', '490', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('218', '490', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('219', '490', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('227', '340', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('228', '340', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('229', '340', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('255', '15', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('256', '15', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('257', '15', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('258', '100000053', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('259', '100000053', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('260', '100000053', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('261', '490', '223', '1');
INSERT INTO `upms_user_permission` VALUES ('263', '490', '225', '1');
INSERT INTO `upms_user_permission` VALUES ('264', '490', '150', '1');
INSERT INTO `upms_user_permission` VALUES ('265', '490', '151', '1');
INSERT INTO `upms_user_permission` VALUES ('266', '490', '152', '1');
INSERT INTO `upms_user_permission` VALUES ('267', '490', '170', '1');
INSERT INTO `upms_user_permission` VALUES ('268', '490', '171', '1');
INSERT INTO `upms_user_permission` VALUES ('269', '490', '172', '1');
INSERT INTO `upms_user_permission` VALUES ('270', '490', '226', '1');
INSERT INTO `upms_user_permission` VALUES ('271', '490', '229', '1');
INSERT INTO `upms_user_permission` VALUES ('276', '490', '237', '1');
INSERT INTO `upms_user_permission` VALUES ('277', '490', '181', '1');
INSERT INTO `upms_user_permission` VALUES ('278', '490', '182', '1');
INSERT INTO `upms_user_permission` VALUES ('279', '490', '183', '1');
INSERT INTO `upms_user_permission` VALUES ('280', '378', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('281', '239', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('282', '239', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('283', '239', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('284', '100000053', '268', '1');
INSERT INTO `upms_user_permission` VALUES ('285', '100000053', '269', '1');
INSERT INTO `upms_user_permission` VALUES ('286', '100000053', '271', '1');
INSERT INTO `upms_user_permission` VALUES ('294', '164', '268', '1');
INSERT INTO `upms_user_permission` VALUES ('295', '164', '269', '1');
INSERT INTO `upms_user_permission` VALUES ('296', '164', '271', '1');
INSERT INTO `upms_user_permission` VALUES ('297', '164', '260', '1');
INSERT INTO `upms_user_permission` VALUES ('298', '164', '261', '1');
INSERT INTO `upms_user_permission` VALUES ('299', '164', '262', '1');
INSERT INTO `upms_user_permission` VALUES ('300', '164', '263', '1');
INSERT INTO `upms_user_permission` VALUES ('301', '164', '264', '1');
INSERT INTO `upms_user_permission` VALUES ('302', '164', '265', '1');
INSERT INTO `upms_user_permission` VALUES ('303', '164', '266', '1');
INSERT INTO `upms_user_permission` VALUES ('304', '228', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('305', '228', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('306', '228', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('314', '490', '164', '1');
INSERT INTO `upms_user_permission` VALUES ('315', '490', '165', '1');
INSERT INTO `upms_user_permission` VALUES ('316', '490', '248', '1');
INSERT INTO `upms_user_permission` VALUES ('317', '165', '210', '1');
INSERT INTO `upms_user_permission` VALUES ('318', '165', '211', '1');
INSERT INTO `upms_user_permission` VALUES ('319', '165', '212', '1');
INSERT INTO `upms_user_permission` VALUES ('320', '165', '213', '1');
INSERT INTO `upms_user_permission` VALUES ('321', '165', '244', '1');
INSERT INTO `upms_user_permission` VALUES ('322', '165', '195', '1');
INSERT INTO `upms_user_permission` VALUES ('323', '165', '194', '1');
INSERT INTO `upms_user_permission` VALUES ('324', '165', '245', '1');
INSERT INTO `upms_user_permission` VALUES ('325', '165', '199', '1');
INSERT INTO `upms_user_permission` VALUES ('326', '165', '198', '1');
INSERT INTO `upms_user_permission` VALUES ('327', '165', '251', '1');
INSERT INTO `upms_user_permission` VALUES ('328', '165', '200', '1');
INSERT INTO `upms_user_permission` VALUES ('329', '165', '201', '1');
INSERT INTO `upms_user_permission` VALUES ('330', '165', '193', '1');
INSERT INTO `upms_user_permission` VALUES ('334', '100001', '1', '1');
INSERT INTO `upms_user_permission` VALUES ('335', '100001', '2', '1');
INSERT INTO `upms_user_permission` VALUES ('336', '100001', '24', '1');
INSERT INTO `upms_user_permission` VALUES ('337', '100001', '25', '1');
INSERT INTO `upms_user_permission` VALUES ('338', '100001', '26', '1');
INSERT INTO `upms_user_permission` VALUES ('339', '100001', '3', '1');
INSERT INTO `upms_user_permission` VALUES ('340', '100001', '27', '1');
INSERT INTO `upms_user_permission` VALUES ('341', '100001', '28', '1');
INSERT INTO `upms_user_permission` VALUES ('342', '100001', '29', '1');
INSERT INTO `upms_user_permission` VALUES ('343', '100001', '108', '1');
INSERT INTO `upms_user_permission` VALUES ('344', '100001', '109', '1');
INSERT INTO `upms_user_permission` VALUES ('345', '100001', '110', '1');
INSERT INTO `upms_user_permission` VALUES ('346', '100001', '111', '1');
INSERT INTO `upms_user_permission` VALUES ('347', '100001', '131', '1');
INSERT INTO `upms_user_permission` VALUES ('348', '100001', '233', '1');
INSERT INTO `upms_user_permission` VALUES ('349', '100001', '4', '1');
INSERT INTO `upms_user_permission` VALUES ('350', '100001', '6', '1');
INSERT INTO `upms_user_permission` VALUES ('351', '100001', '30', '1');
INSERT INTO `upms_user_permission` VALUES ('352', '100001', '31', '1');
INSERT INTO `upms_user_permission` VALUES ('353', '100001', '32', '1');
INSERT INTO `upms_user_permission` VALUES ('354', '100001', '51', '1');
INSERT INTO `upms_user_permission` VALUES ('355', '100001', '48', '1');
INSERT INTO `upms_user_permission` VALUES ('356', '100001', '50', '1');
INSERT INTO `upms_user_permission` VALUES ('357', '100001', '121', '1');
INSERT INTO `upms_user_permission` VALUES ('358', '100001', '132', '1');
INSERT INTO `upms_user_permission` VALUES ('359', '100001', '5', '1');
INSERT INTO `upms_user_permission` VALUES ('360', '100001', '33', '1');
INSERT INTO `upms_user_permission` VALUES ('361', '100001', '34', '1');
INSERT INTO `upms_user_permission` VALUES ('362', '100001', '35', '1');
INSERT INTO `upms_user_permission` VALUES ('363', '100001', '46', '1');
INSERT INTO `upms_user_permission` VALUES ('364', '100001', '116', '1');
INSERT INTO `upms_user_permission` VALUES ('365', '100001', '129', '1');
INSERT INTO `upms_user_permission` VALUES ('366', '100001', '7', '1');
INSERT INTO `upms_user_permission` VALUES ('367', '100001', '39', '1');
INSERT INTO `upms_user_permission` VALUES ('368', '100001', '36', '1');
INSERT INTO `upms_user_permission` VALUES ('369', '100001', '37', '1');
INSERT INTO `upms_user_permission` VALUES ('370', '100001', '38', '1');
INSERT INTO `upms_user_permission` VALUES ('371', '100001', '112', '1');
INSERT INTO `upms_user_permission` VALUES ('372', '100001', '113', '1');
INSERT INTO `upms_user_permission` VALUES ('373', '100001', '114', '1');
INSERT INTO `upms_user_permission` VALUES ('374', '100001', '115', '1');
INSERT INTO `upms_user_permission` VALUES ('375', '100001', '117', '1');
INSERT INTO `upms_user_permission` VALUES ('376', '100001', '118', '1');
INSERT INTO `upms_user_permission` VALUES ('377', '100001', '119', '1');
INSERT INTO `upms_user_permission` VALUES ('378', '100001', '120', '1');
INSERT INTO `upms_user_permission` VALUES ('379', '100001', '12', '1');
INSERT INTO `upms_user_permission` VALUES ('380', '100001', '14', '1');
INSERT INTO `upms_user_permission` VALUES ('381', '100001', '53', '1');
INSERT INTO `upms_user_permission` VALUES ('382', '100001', '15', '1');
INSERT INTO `upms_user_permission` VALUES ('383', '100001', '57', '1');
INSERT INTO `upms_user_permission` VALUES ('384', '100001', '154', '1');
INSERT INTO `upms_user_permission` VALUES ('385', '100001', '155', '1');
INSERT INTO `upms_user_permission` VALUES ('386', '100001', '156', '1');
INSERT INTO `upms_user_permission` VALUES ('387', '100001', '157', '1');
INSERT INTO `upms_user_permission` VALUES ('388', '100001', '158', '1');
INSERT INTO `upms_user_permission` VALUES ('414', '100001', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('415', '100001', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('416', '100001', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('417', '100001', '223', '1');
INSERT INTO `upms_user_permission` VALUES ('418', '100001', '224', '1');
INSERT INTO `upms_user_permission` VALUES ('419', '100001', '160', '1');
INSERT INTO `upms_user_permission` VALUES ('420', '100001', '161', '1');
INSERT INTO `upms_user_permission` VALUES ('421', '100001', '162', '1');
INSERT INTO `upms_user_permission` VALUES ('422', '100001', '166', '1');
INSERT INTO `upms_user_permission` VALUES ('423', '100001', '167', '1');
INSERT INTO `upms_user_permission` VALUES ('424', '100001', '168', '1');
INSERT INTO `upms_user_permission` VALUES ('426', '100001', '204', '1');
INSERT INTO `upms_user_permission` VALUES ('427', '100001', '205', '1');
INSERT INTO `upms_user_permission` VALUES ('428', '100001', '206', '1');
INSERT INTO `upms_user_permission` VALUES ('429', '100001', '225', '1');
INSERT INTO `upms_user_permission` VALUES ('430', '100001', '150', '1');
INSERT INTO `upms_user_permission` VALUES ('431', '100001', '151', '1');
INSERT INTO `upms_user_permission` VALUES ('432', '100001', '152', '1');
INSERT INTO `upms_user_permission` VALUES ('433', '100001', '170', '1');
INSERT INTO `upms_user_permission` VALUES ('434', '100001', '171', '1');
INSERT INTO `upms_user_permission` VALUES ('435', '100001', '172', '1');
INSERT INTO `upms_user_permission` VALUES ('436', '100001', '181', '1');
INSERT INTO `upms_user_permission` VALUES ('437', '100001', '182', '1');
INSERT INTO `upms_user_permission` VALUES ('438', '100001', '183', '1');
INSERT INTO `upms_user_permission` VALUES ('439', '100001', '185', '1');
INSERT INTO `upms_user_permission` VALUES ('440', '100001', '186', '1');
INSERT INTO `upms_user_permission` VALUES ('441', '100001', '187', '1');
INSERT INTO `upms_user_permission` VALUES ('442', '100001', '226', '1');
INSERT INTO `upms_user_permission` VALUES ('443', '100001', '227', '1');
INSERT INTO `upms_user_permission` VALUES ('444', '100001', '229', '1');
INSERT INTO `upms_user_permission` VALUES ('445', '100001', '230', '1');
INSERT INTO `upms_user_permission` VALUES ('446', '100001', '238', '1');
INSERT INTO `upms_user_permission` VALUES ('447', '100001', '242', '1');
INSERT INTO `upms_user_permission` VALUES ('448', '100001', '246', '1');
INSERT INTO `upms_user_permission` VALUES ('449', '100001', '177', '1');
INSERT INTO `upms_user_permission` VALUES ('450', '100001', '178', '1');
INSERT INTO `upms_user_permission` VALUES ('451', '100001', '235', '1');
INSERT INTO `upms_user_permission` VALUES ('452', '100001', '236', '1');
INSERT INTO `upms_user_permission` VALUES ('453', '100001', '193', '1');
INSERT INTO `upms_user_permission` VALUES ('454', '100001', '243', '1');
INSERT INTO `upms_user_permission` VALUES ('455', '100001', '189', '1');
INSERT INTO `upms_user_permission` VALUES ('456', '100001', '190', '1');
INSERT INTO `upms_user_permission` VALUES ('457', '100001', '191', '1');
INSERT INTO `upms_user_permission` VALUES ('458', '100001', '239', '1');
INSERT INTO `upms_user_permission` VALUES ('459', '100001', '240', '1');
INSERT INTO `upms_user_permission` VALUES ('460', '100001', '241', '1');
INSERT INTO `upms_user_permission` VALUES ('461', '100001', '244', '1');
INSERT INTO `upms_user_permission` VALUES ('462', '100001', '195', '1');
INSERT INTO `upms_user_permission` VALUES ('463', '100001', '194', '1');
INSERT INTO `upms_user_permission` VALUES ('464', '100001', '245', '1');
INSERT INTO `upms_user_permission` VALUES ('465', '100001', '199', '1');
INSERT INTO `upms_user_permission` VALUES ('466', '100001', '198', '1');
INSERT INTO `upms_user_permission` VALUES ('467', '100001', '251', '1');
INSERT INTO `upms_user_permission` VALUES ('468', '100001', '200', '1');
INSERT INTO `upms_user_permission` VALUES ('469', '100001', '201', '1');
INSERT INTO `upms_user_permission` VALUES ('470', '100001', '164', '1');
INSERT INTO `upms_user_permission` VALUES ('471', '100001', '165', '1');
INSERT INTO `upms_user_permission` VALUES ('472', '100001', '248', '1');
INSERT INTO `upms_user_permission` VALUES ('474', '100001', '174', '1');
INSERT INTO `upms_user_permission` VALUES ('475', '100001', '215', '1');
INSERT INTO `upms_user_permission` VALUES ('476', '100001', '274', '1');
INSERT INTO `upms_user_permission` VALUES ('477', '100001', '278', '1');
INSERT INTO `upms_user_permission` VALUES ('478', '100001', '279', '1');
INSERT INTO `upms_user_permission` VALUES ('479', '100001', '196', '1');
INSERT INTO `upms_user_permission` VALUES ('480', '100001', '197', '1');
INSERT INTO `upms_user_permission` VALUES ('481', '100001', '216', '1');
INSERT INTO `upms_user_permission` VALUES ('482', '100001', '210', '1');
INSERT INTO `upms_user_permission` VALUES ('483', '100001', '211', '1');
INSERT INTO `upms_user_permission` VALUES ('484', '100001', '212', '1');
INSERT INTO `upms_user_permission` VALUES ('485', '100001', '213', '1');
INSERT INTO `upms_user_permission` VALUES ('486', '100001', '252', '1');
INSERT INTO `upms_user_permission` VALUES ('487', '100001', '253', '1');
INSERT INTO `upms_user_permission` VALUES ('488', '100001', '254', '1');
INSERT INTO `upms_user_permission` VALUES ('489', '100001', '268', '1');
INSERT INTO `upms_user_permission` VALUES ('490', '100001', '269', '1');
INSERT INTO `upms_user_permission` VALUES ('491', '100001', '271', '1');
INSERT INTO `upms_user_permission` VALUES ('492', '100001', '260', '1');
INSERT INTO `upms_user_permission` VALUES ('493', '100001', '261', '1');
INSERT INTO `upms_user_permission` VALUES ('494', '100001', '262', '1');
INSERT INTO `upms_user_permission` VALUES ('495', '100001', '263', '1');
INSERT INTO `upms_user_permission` VALUES ('496', '100001', '264', '1');
INSERT INTO `upms_user_permission` VALUES ('497', '100001', '265', '1');
INSERT INTO `upms_user_permission` VALUES ('498', '100001', '266', '1');
INSERT INTO `upms_user_permission` VALUES ('499', '490', '230', '1');
INSERT INTO `upms_user_permission` VALUES ('500', '490', '246', '1');
INSERT INTO `upms_user_permission` VALUES ('501', '490', '177', '1');
INSERT INTO `upms_user_permission` VALUES ('502', '490', '235', '1');
INSERT INTO `upms_user_permission` VALUES ('550', '220', '99', '1');
INSERT INTO `upms_user_permission` VALUES ('551', '220', '133', '1');
INSERT INTO `upms_user_permission` VALUES ('552', '340', '133', '1');
INSERT INTO `upms_user_permission` VALUES ('553', '340', '133', '1');
INSERT INTO `upms_user_permission` VALUES ('554', '340', '99', '1');
INSERT INTO `upms_user_permission` VALUES ('555', '490', '203', '1');
INSERT INTO `upms_user_permission` VALUES ('556', '100000052', '223', '1');
INSERT INTO `upms_user_permission` VALUES ('557', '100000052', '226', '1');
INSERT INTO `upms_user_permission` VALUES ('558', '100000052', '227', '1');
INSERT INTO `upms_user_permission` VALUES ('559', '100000052', '210', '1');
INSERT INTO `upms_user_permission` VALUES ('560', '100000052', '211', '1');
INSERT INTO `upms_user_permission` VALUES ('561', '100000052', '212', '1');
INSERT INTO `upms_user_permission` VALUES ('562', '100000052', '213', '1');
INSERT INTO `upms_user_permission` VALUES ('563', '100000052', '252', '1');
INSERT INTO `upms_user_permission` VALUES ('564', '100000052', '253', '1');
INSERT INTO `upms_user_permission` VALUES ('565', '100000052', '254', '1');
INSERT INTO `upms_user_permission` VALUES ('566', '100000052', '268', '1');
INSERT INTO `upms_user_permission` VALUES ('567', '100000052', '269', '1');
INSERT INTO `upms_user_permission` VALUES ('568', '100000052', '271', '1');
INSERT INTO `upms_user_permission` VALUES ('569', '100004', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('570', '100004', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('571', '100004', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('572', '164', '293', '1');
INSERT INTO `upms_user_permission` VALUES ('573', '164', '207', '1');
INSERT INTO `upms_user_permission` VALUES ('574', '164', '208', '1');
INSERT INTO `upms_user_permission` VALUES ('575', '164', '209', '1');
INSERT INTO `upms_user_permission` VALUES ('576', '164', '214', '1');
INSERT INTO `upms_user_permission` VALUES ('577', '164', '217', '1');
INSERT INTO `upms_user_permission` VALUES ('578', '164', '207', '1');
INSERT INTO `upms_user_permission` VALUES ('579', '164', '208', '1');
INSERT INTO `upms_user_permission` VALUES ('580', '164', '209', '1');
INSERT INTO `upms_user_permission` VALUES ('581', '164', '214', '1');
INSERT INTO `upms_user_permission` VALUES ('582', '164', '217', '1');
INSERT INTO `upms_user_permission` VALUES ('583', '157', '288', '1');
INSERT INTO `upms_user_permission` VALUES ('584', '157', '289', '1');
INSERT INTO `upms_user_permission` VALUES ('585', '157', '290', '1');
INSERT INTO `upms_user_permission` VALUES ('586', '157', '291', '1');
INSERT INTO `upms_user_permission` VALUES ('587', '157', '294', '1');
INSERT INTO `upms_user_permission` VALUES ('588', '157', '295', '1');
INSERT INTO `upms_user_permission` VALUES ('589', '157', '296', '1');
INSERT INTO `upms_user_permission` VALUES ('590', '157', '297', '1');
INSERT INTO `upms_user_permission` VALUES ('591', '100000057', '294', '1');
INSERT INTO `upms_user_permission` VALUES ('592', '100000057', '297', '1');
INSERT INTO `upms_user_permission` VALUES ('593', '490', '294', '1');
INSERT INTO `upms_user_permission` VALUES ('594', '490', '296', '1');
INSERT INTO `upms_user_permission` VALUES ('595', '490', '294', '1');
INSERT INTO `upms_user_permission` VALUES ('596', '490', '296', '1');
INSERT INTO `upms_user_permission` VALUES ('597', '451', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('598', '451', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('599', '451', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('600', '228', '225', '1');
INSERT INTO `upms_user_permission` VALUES ('601', '228', '150', '1');
INSERT INTO `upms_user_permission` VALUES ('602', '228', '151', '1');
INSERT INTO `upms_user_permission` VALUES ('603', '228', '152', '1');
INSERT INTO `upms_user_permission` VALUES ('604', '228', '153', '1');
INSERT INTO `upms_user_permission` VALUES ('605', '228', '170', '1');
INSERT INTO `upms_user_permission` VALUES ('606', '228', '171', '1');
INSERT INTO `upms_user_permission` VALUES ('607', '228', '172', '1');
INSERT INTO `upms_user_permission` VALUES ('608', '228', '175', '1');
INSERT INTO `upms_user_permission` VALUES ('609', '228', '234', '1');
INSERT INTO `upms_user_permission` VALUES ('610', '228', '246', '1');
INSERT INTO `upms_user_permission` VALUES ('611', '228', '177', '1');
INSERT INTO `upms_user_permission` VALUES ('612', '228', '178', '1');
INSERT INTO `upms_user_permission` VALUES ('613', '228', '225', '1');
INSERT INTO `upms_user_permission` VALUES ('614', '228', '150', '1');
INSERT INTO `upms_user_permission` VALUES ('615', '228', '151', '1');
INSERT INTO `upms_user_permission` VALUES ('616', '228', '152', '1');
INSERT INTO `upms_user_permission` VALUES ('617', '228', '153', '1');
INSERT INTO `upms_user_permission` VALUES ('618', '228', '170', '1');
INSERT INTO `upms_user_permission` VALUES ('619', '228', '171', '1');
INSERT INTO `upms_user_permission` VALUES ('620', '228', '172', '1');
INSERT INTO `upms_user_permission` VALUES ('621', '228', '175', '1');
INSERT INTO `upms_user_permission` VALUES ('622', '228', '234', '1');
INSERT INTO `upms_user_permission` VALUES ('623', '228', '246', '1');
INSERT INTO `upms_user_permission` VALUES ('624', '228', '177', '1');
INSERT INTO `upms_user_permission` VALUES ('625', '228', '178', '1');
INSERT INTO `upms_user_permission` VALUES ('626', '228', '223', '1');
INSERT INTO `upms_user_permission` VALUES ('628', '100000068', '215', '1');
INSERT INTO `upms_user_permission` VALUES ('629', '100000068', '279', '1');
INSERT INTO `upms_user_permission` VALUES ('630', '100000068', '196', '1');
INSERT INTO `upms_user_permission` VALUES ('631', '100000068', '216', '1');
INSERT INTO `upms_user_permission` VALUES ('632', '100000068', '211', '1');
INSERT INTO `upms_user_permission` VALUES ('633', '100000068', '212', '1');
INSERT INTO `upms_user_permission` VALUES ('634', '100000068', '296', '1');
INSERT INTO `upms_user_permission` VALUES ('635', '100000068', '297', '1');
INSERT INTO `upms_user_permission` VALUES ('636', '228', '181', '1');
INSERT INTO `upms_user_permission` VALUES ('637', '228', '182', '1');
INSERT INTO `upms_user_permission` VALUES ('638', '228', '183', '1');
INSERT INTO `upms_user_permission` VALUES ('639', '228', '184', '1');
INSERT INTO `upms_user_permission` VALUES ('640', '228', '303', '1');
INSERT INTO `upms_user_permission` VALUES ('641', '228', '302', '1');
INSERT INTO `upms_user_permission` VALUES ('642', '228', '304', '1');
INSERT INTO `upms_user_permission` VALUES ('643', '228', '305', '1');
INSERT INTO `upms_user_permission` VALUES ('644', '228', '306', '1');
INSERT INTO `upms_user_permission` VALUES ('645', '228', '307', '1');
INSERT INTO `upms_user_permission` VALUES ('646', '228', '210', '1');
INSERT INTO `upms_user_permission` VALUES ('647', '228', '254', '1');
INSERT INTO `upms_user_permission` VALUES ('648', '100001', '95', '1');
INSERT INTO `upms_user_permission` VALUES ('649', '100001', '273', '1');
INSERT INTO `upms_user_permission` VALUES ('650', '100001', '275', '1');
INSERT INTO `upms_user_permission` VALUES ('651', '100001', '258', '1');
INSERT INTO `upms_user_permission` VALUES ('652', '100001', '277', '1');
INSERT INTO `upms_user_permission` VALUES ('653', '100001', '293', '1');
INSERT INTO `upms_user_permission` VALUES ('654', '100001', '298', '1');
INSERT INTO `upms_user_permission` VALUES ('655', '228', '226', '1');
INSERT INTO `upms_user_permission` VALUES ('656', '228', '229', '1');
INSERT INTO `upms_user_permission` VALUES ('657', '228', '238', '1');
INSERT INTO `upms_user_permission` VALUES ('658', '228', '203', '1');
INSERT INTO `upms_user_permission` VALUES ('659', '351', '328', '1');
INSERT INTO `upms_user_permission` VALUES ('660', '351', '328', '1');
INSERT INTO `upms_user_permission` VALUES ('661', '351', '196', '1');
INSERT INTO `upms_user_permission` VALUES ('662', '351', '332', '1');
INSERT INTO `upms_user_permission` VALUES ('663', '351', '215', '1');
INSERT INTO `upms_user_permission` VALUES ('665', '228', '332', '1');
INSERT INTO `upms_user_permission` VALUES ('666', '228', '196', '1');
INSERT INTO `upms_user_permission` VALUES ('667', '183', '350', '1');
INSERT INTO `upms_user_permission` VALUES ('668', '1', '350', '1');
INSERT INTO `upms_user_permission` VALUES ('669', '1', '351', '1');
INSERT INTO `upms_user_permission` VALUES ('670', '1', '352', '1');
INSERT INTO `upms_user_permission` VALUES ('671', '1', '353', '1');
INSERT INTO `upms_user_permission` VALUES ('672', '1', '354', '1');
INSERT INTO `upms_user_permission` VALUES ('673', '10', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('674', '10', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('675', '10', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('676', '12', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('677', '12', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('678', '12', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('679', '13', '106', '1');
INSERT INTO `upms_user_permission` VALUES ('680', '13', '107', '1');
INSERT INTO `upms_user_permission` VALUES ('681', '13', '143', '1');
INSERT INTO `upms_user_permission` VALUES ('682', '10', '356', '1');
INSERT INTO `upms_user_permission` VALUES ('683', '10', '357', '1');
INSERT INTO `upms_user_permission` VALUES ('684', '1', '374', '1');
INSERT INTO `upms_user_permission` VALUES ('685', '1', '375', '1');
INSERT INTO `upms_user_permission` VALUES ('686', '1', '376', '1');
INSERT INTO `upms_user_permission` VALUES ('687', '1', '323', '1');
INSERT INTO `upms_user_permission` VALUES ('688', '1', '324', '1');
INSERT INTO `upms_user_permission` VALUES ('689', '1', '325', '1');
INSERT INTO `upms_user_permission` VALUES ('690', '1', '326', '1');
INSERT INTO `upms_user_permission` VALUES ('691', '1', '377', '1');
INSERT INTO `upms_user_permission` VALUES ('692', '1', '378', '1');
INSERT INTO `upms_user_permission` VALUES ('693', '1', '379', '1');
INSERT INTO `upms_user_permission` VALUES ('694', '1', '382', '1');
INSERT INTO `upms_user_permission` VALUES ('695', '1', '383', '1');
INSERT INTO `upms_user_permission` VALUES ('696', '1', '384', '1');
INSERT INTO `upms_user_permission` VALUES ('697', '1', '299', '1');
INSERT INTO `upms_user_permission` VALUES ('698', '1', '300', '1');
INSERT INTO `upms_user_permission` VALUES ('699', '1', '301', '1');
INSERT INTO `upms_user_permission` VALUES ('700', '1', '385', '1');
INSERT INTO `upms_user_permission` VALUES ('703', '1', '388', '1');
INSERT INTO `upms_user_permission` VALUES ('704', '1', '390', '1');
INSERT INTO `upms_user_permission` VALUES ('705', '1', '392', '1');
INSERT INTO `upms_user_permission` VALUES ('706', '1', '393', '1');
INSERT INTO `upms_user_permission` VALUES ('707', '1', '394', '1');
INSERT INTO `upms_user_permission` VALUES ('708', '1', '395', '1');
INSERT INTO `upms_user_permission` VALUES ('709', '1', '396', '1');
INSERT INTO `upms_user_permission` VALUES ('710', '10', '96', '1');
INSERT INTO `upms_user_permission` VALUES ('711', '10', '98', '1');
INSERT INTO `upms_user_permission` VALUES ('712', '10', '385', '1');
INSERT INTO `upms_user_permission` VALUES ('713', '1', '397', '1');
INSERT INTO `upms_user_permission` VALUES ('716', '10', '374', '1');
INSERT INTO `upms_user_permission` VALUES ('717', '10', '210', '1');
INSERT INTO `upms_user_permission` VALUES ('718', '1', '404', '1');
INSERT INTO `upms_user_permission` VALUES ('719', '1', '405', '1');
INSERT INTO `upms_user_permission` VALUES ('720', '1', '406', '1');
INSERT INTO `upms_user_permission` VALUES ('721', '1', '407', '1');
INSERT INTO `upms_user_permission` VALUES ('722', '10', '404', '1');
INSERT INTO `upms_user_permission` VALUES ('723', '10', '405', '1');
INSERT INTO `upms_user_permission` VALUES ('724', '10', '406', '1');
INSERT INTO `upms_user_permission` VALUES ('725', '10', '407', '1');
INSERT INTO `upms_user_permission` VALUES ('730', '13', '385', '1');
INSERT INTO `upms_user_permission` VALUES ('731', '13', '404', '1');
INSERT INTO `upms_user_permission` VALUES ('732', '13', '405', '1');
INSERT INTO `upms_user_permission` VALUES ('733', '13', '406', '1');
INSERT INTO `upms_user_permission` VALUES ('734', '13', '407', '1');
INSERT INTO `upms_user_permission` VALUES ('739', '12', '404', '1');
INSERT INTO `upms_user_permission` VALUES ('740', '12', '405', '1');
INSERT INTO `upms_user_permission` VALUES ('741', '12', '406', '1');
INSERT INTO `upms_user_permission` VALUES ('742', '12', '407', '1');
INSERT INTO `upms_user_permission` VALUES ('747', '1', '386', '1');
INSERT INTO `upms_user_permission` VALUES ('748', '1', '387', '1');
INSERT INTO `upms_user_permission` VALUES ('749', '1', '398', '1');
INSERT INTO `upms_user_permission` VALUES ('750', '1', '401', '1');
INSERT INTO `upms_user_permission` VALUES ('751', '12', '385', '1');
INSERT INTO `upms_user_permission` VALUES ('752', '1', '399', '1');
INSERT INTO `upms_user_permission` VALUES ('753', '1', '400', '1');
INSERT INTO `upms_user_permission` VALUES ('754', '1', '402', '1');
INSERT INTO `upms_user_permission` VALUES ('755', '1', '403', '1');
INSERT INTO `upms_user_permission` VALUES ('756', '1', '408', '1');
INSERT INTO `upms_user_permission` VALUES ('757', '1', '412', '1');
INSERT INTO `upms_user_permission` VALUES ('758', '1', '413', '1');
INSERT INTO `upms_user_permission` VALUES ('759', '1', '414', '1');
INSERT INTO `upms_user_permission` VALUES ('760', '1', '421', '1');
INSERT INTO `upms_user_permission` VALUES ('761', '1', '422', '1');
INSERT INTO `upms_user_permission` VALUES ('762', '1', '423', '1');
INSERT INTO `upms_user_permission` VALUES ('763', '1', '424', '1');
INSERT INTO `upms_user_permission` VALUES ('764', '10', '411', '1');
INSERT INTO `upms_user_permission` VALUES ('765', '10', '415', '1');
INSERT INTO `upms_user_permission` VALUES ('766', '10', '411', '1');
INSERT INTO `upms_user_permission` VALUES ('767', '10', '415', '1');

-- ----------------------------
-- Table structure for upms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_role`;
CREATE TABLE `upms_user_role` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `role_id` int(10) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1480 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of upms_user_role
-- ----------------------------
INSERT INTO `upms_user_role` VALUES ('10', '100000003', '3');
INSERT INTO `upms_user_role` VALUES ('13', '100001', '1');
INSERT INTO `upms_user_role` VALUES ('25', '100000004', '4');
INSERT INTO `upms_user_role` VALUES ('46', '169', '1');
INSERT INTO `upms_user_role` VALUES ('224', '187', '3');
INSERT INTO `upms_user_role` VALUES ('227', '189', '3');
INSERT INTO `upms_user_role` VALUES ('228', '191', '3');
INSERT INTO `upms_user_role` VALUES ('229', '191', '10');
INSERT INTO `upms_user_role` VALUES ('230', '192', '3');
INSERT INTO `upms_user_role` VALUES ('235', '254', '3');
INSERT INTO `upms_user_role` VALUES ('236', '254', '10');
INSERT INTO `upms_user_role` VALUES ('237', '218', '3');
INSERT INTO `upms_user_role` VALUES ('238', '219', '3');
INSERT INTO `upms_user_role` VALUES ('239', '257', '3');
INSERT INTO `upms_user_role` VALUES ('240', '257', '10');
INSERT INTO `upms_user_role` VALUES ('241', '258', '3');
INSERT INTO `upms_user_role` VALUES ('242', '197', '3');
INSERT INTO `upms_user_role` VALUES ('243', '198', '3');
INSERT INTO `upms_user_role` VALUES ('244', '199', '3');
INSERT INTO `upms_user_role` VALUES ('245', '201', '3');
INSERT INTO `upms_user_role` VALUES ('248', '203', '3');
INSERT INTO `upms_user_role` VALUES ('249', '204', '3');
INSERT INTO `upms_user_role` VALUES ('250', '204', '10');
INSERT INTO `upms_user_role` VALUES ('251', '482', '3');
INSERT INTO `upms_user_role` VALUES ('252', '482', '10');
INSERT INTO `upms_user_role` VALUES ('255', '205', '3');
INSERT INTO `upms_user_role` VALUES ('260', '207', '3');
INSERT INTO `upms_user_role` VALUES ('261', '209', '3');
INSERT INTO `upms_user_role` VALUES ('262', '210', '3');
INSERT INTO `upms_user_role` VALUES ('263', '210', '10');
INSERT INTO `upms_user_role` VALUES ('265', '211', '3');
INSERT INTO `upms_user_role` VALUES ('266', '212', '3');
INSERT INTO `upms_user_role` VALUES ('269', '214', '3');
INSERT INTO `upms_user_role` VALUES ('270', '214', '10');
INSERT INTO `upms_user_role` VALUES ('277', '260', '3');
INSERT INTO `upms_user_role` VALUES ('278', '260', '10');
INSERT INTO `upms_user_role` VALUES ('279', '262', '3');
INSERT INTO `upms_user_role` VALUES ('280', '263', '3');
INSERT INTO `upms_user_role` VALUES ('281', '263', '10');
INSERT INTO `upms_user_role` VALUES ('288', '269', '3');
INSERT INTO `upms_user_role` VALUES ('291', '271', '3');
INSERT INTO `upms_user_role` VALUES ('293', '336', '3');
INSERT INTO `upms_user_role` VALUES ('294', '474', '3');
INSERT INTO `upms_user_role` VALUES ('295', '474', '10');
INSERT INTO `upms_user_role` VALUES ('302', '276', '3');
INSERT INTO `upms_user_role` VALUES ('304', '279', '3');
INSERT INTO `upms_user_role` VALUES ('305', '280', '3');
INSERT INTO `upms_user_role` VALUES ('306', '280', '10');
INSERT INTO `upms_user_role` VALUES ('307', '281', '3');
INSERT INTO `upms_user_role` VALUES ('314', '285', '3');
INSERT INTO `upms_user_role` VALUES ('315', '286', '3');
INSERT INTO `upms_user_role` VALUES ('316', '286', '10');
INSERT INTO `upms_user_role` VALUES ('318', '289', '3');
INSERT INTO `upms_user_role` VALUES ('319', '290', '3');
INSERT INTO `upms_user_role` VALUES ('323', '293', '3');
INSERT INTO `upms_user_role` VALUES ('329', '297', '3');
INSERT INTO `upms_user_role` VALUES ('330', '299', '3');
INSERT INTO `upms_user_role` VALUES ('331', '300', '3');
INSERT INTO `upms_user_role` VALUES ('332', '301', '3');
INSERT INTO `upms_user_role` VALUES ('334', '303', '3');
INSERT INTO `upms_user_role` VALUES ('335', '305', '3');
INSERT INTO `upms_user_role` VALUES ('343', '310', '3');
INSERT INTO `upms_user_role` VALUES ('344', '310', '10');
INSERT INTO `upms_user_role` VALUES ('349', '315', '3');
INSERT INTO `upms_user_role` VALUES ('350', '316', '3');
INSERT INTO `upms_user_role` VALUES ('351', '317', '3');
INSERT INTO `upms_user_role` VALUES ('352', '318', '3');
INSERT INTO `upms_user_role` VALUES ('353', '318', '10');
INSERT INTO `upms_user_role` VALUES ('354', '319', '3');
INSERT INTO `upms_user_role` VALUES ('355', '320', '3');
INSERT INTO `upms_user_role` VALUES ('356', '321', '3');
INSERT INTO `upms_user_role` VALUES ('361', '322', '3');
INSERT INTO `upms_user_role` VALUES ('362', '322', '10');
INSERT INTO `upms_user_role` VALUES ('363', '323', '3');
INSERT INTO `upms_user_role` VALUES ('364', '323', '10');
INSERT INTO `upms_user_role` VALUES ('365', '333', '3');
INSERT INTO `upms_user_role` VALUES ('366', '356', '3');
INSERT INTO `upms_user_role` VALUES ('368', '324', '3');
INSERT INTO `upms_user_role` VALUES ('369', '324', '10');
INSERT INTO `upms_user_role` VALUES ('370', '327', '3');
INSERT INTO `upms_user_role` VALUES ('373', '329', '3');
INSERT INTO `upms_user_role` VALUES ('376', '481', '3');
INSERT INTO `upms_user_role` VALUES ('377', '481', '10');
INSERT INTO `upms_user_role` VALUES ('384', '287', '3');
INSERT INTO `upms_user_role` VALUES ('385', '331', '3');
INSERT INTO `upms_user_role` VALUES ('390', '337', '3');
INSERT INTO `upms_user_role` VALUES ('393', '470', '3');
INSERT INTO `upms_user_role` VALUES ('394', '470', '10');
INSERT INTO `upms_user_role` VALUES ('400', '387', '3');
INSERT INTO `upms_user_role` VALUES ('401', '387', '10');
INSERT INTO `upms_user_role` VALUES ('403', '400', '3');
INSERT INTO `upms_user_role` VALUES ('408', '404', '3');
INSERT INTO `upms_user_role` VALUES ('409', '404', '10');
INSERT INTO `upms_user_role` VALUES ('411', '396', '3');
INSERT INTO `upms_user_role` VALUES ('414', '398', '3');
INSERT INTO `upms_user_role` VALUES ('415', '398', '5');
INSERT INTO `upms_user_role` VALUES ('416', '399', '3');
INSERT INTO `upms_user_role` VALUES ('419', '392', '3');
INSERT INTO `upms_user_role` VALUES ('420', '391', '3');
INSERT INTO `upms_user_role` VALUES ('423', '394', '3');
INSERT INTO `upms_user_role` VALUES ('424', '394', '10');
INSERT INTO `upms_user_role` VALUES ('426', '406', '3');
INSERT INTO `upms_user_role` VALUES ('427', '406', '10');
INSERT INTO `upms_user_role` VALUES ('430', '409', '3');
INSERT INTO `upms_user_role` VALUES ('434', '413', '3');
INSERT INTO `upms_user_role` VALUES ('436', '415', '3');
INSERT INTO `upms_user_role` VALUES ('437', '415', '10');
INSERT INTO `upms_user_role` VALUES ('441', '484', '3');
INSERT INTO `upms_user_role` VALUES ('442', '484', '10');
INSERT INTO `upms_user_role` VALUES ('443', '418', '3');
INSERT INTO `upms_user_role` VALUES ('448', '421', '3');
INSERT INTO `upms_user_role` VALUES ('449', '421', '10');
INSERT INTO `upms_user_role` VALUES ('451', '444', '3');
INSERT INTO `upms_user_role` VALUES ('452', '423', '4');
INSERT INTO `upms_user_role` VALUES ('457', '426', '3');
INSERT INTO `upms_user_role` VALUES ('461', '428', '4');
INSERT INTO `upms_user_role` VALUES ('465', '431', '3');
INSERT INTO `upms_user_role` VALUES ('469', '434', '3');
INSERT INTO `upms_user_role` VALUES ('470', '434', '5');
INSERT INTO `upms_user_role` VALUES ('472', '436', '3');
INSERT INTO `upms_user_role` VALUES ('473', '436', '10');
INSERT INTO `upms_user_role` VALUES ('474', '437', '3');
INSERT INTO `upms_user_role` VALUES ('476', '441', '3');
INSERT INTO `upms_user_role` VALUES ('479', '442', '3');
INSERT INTO `upms_user_role` VALUES ('480', '442', '10');
INSERT INTO `upms_user_role` VALUES ('481', '452', '3');
INSERT INTO `upms_user_role` VALUES ('485', '448', '3');
INSERT INTO `upms_user_role` VALUES ('486', '448', '10');
INSERT INTO `upms_user_role` VALUES ('487', '455', '3');
INSERT INTO `upms_user_role` VALUES ('489', '486', '3');
INSERT INTO `upms_user_role` VALUES ('490', '486', '5');
INSERT INTO `upms_user_role` VALUES ('493', '460', '3');
INSERT INTO `upms_user_role` VALUES ('494', '460', '10');
INSERT INTO `upms_user_role` VALUES ('496', '462', '4');
INSERT INTO `upms_user_role` VALUES ('497', '462', '5');
INSERT INTO `upms_user_role` VALUES ('498', '464', '3');
INSERT INTO `upms_user_role` VALUES ('499', '485', '3');
INSERT INTO `upms_user_role` VALUES ('500', '485', '10');
INSERT INTO `upms_user_role` VALUES ('504', '344', '3');
INSERT INTO `upms_user_role` VALUES ('507', '345', '3');
INSERT INTO `upms_user_role` VALUES ('515', '352', '3');
INSERT INTO `upms_user_role` VALUES ('516', '353', '3');
INSERT INTO `upms_user_role` VALUES ('517', '355', '3');
INSERT INTO `upms_user_role` VALUES ('518', '346', '3');
INSERT INTO `upms_user_role` VALUES ('519', '359', '3');
INSERT INTO `upms_user_role` VALUES ('520', '359', '10');
INSERT INTO `upms_user_role` VALUES ('521', '360', '3');
INSERT INTO `upms_user_role` VALUES ('522', '361', '3');
INSERT INTO `upms_user_role` VALUES ('525', '363', '3');
INSERT INTO `upms_user_role` VALUES ('527', '364', '3');
INSERT INTO `upms_user_role` VALUES ('528', '375', '3');
INSERT INTO `upms_user_role` VALUES ('529', '375', '10');
INSERT INTO `upms_user_role` VALUES ('532', '376', '3');
INSERT INTO `upms_user_role` VALUES ('539', '366', '3');
INSERT INTO `upms_user_role` VALUES ('540', '348', '3');
INSERT INTO `upms_user_role` VALUES ('543', '100000011', '3');
INSERT INTO `upms_user_role` VALUES ('544', '100000012', '3');
INSERT INTO `upms_user_role` VALUES ('545', '100000013', '3');
INSERT INTO `upms_user_role` VALUES ('546', '100000014', '3');
INSERT INTO `upms_user_role` VALUES ('547', '100000015', '3');
INSERT INTO `upms_user_role` VALUES ('548', '100000016', '3');
INSERT INTO `upms_user_role` VALUES ('549', '100000017', '3');
INSERT INTO `upms_user_role` VALUES ('551', '100000019', '3');
INSERT INTO `upms_user_role` VALUES ('552', '100000020', '3');
INSERT INTO `upms_user_role` VALUES ('553', '100000021', '3');
INSERT INTO `upms_user_role` VALUES ('554', '100000022', '3');
INSERT INTO `upms_user_role` VALUES ('568', '100000036', '3');
INSERT INTO `upms_user_role` VALUES ('571', '242', '3');
INSERT INTO `upms_user_role` VALUES ('572', '242', '10');
INSERT INTO `upms_user_role` VALUES ('573', '243', '3');
INSERT INTO `upms_user_role` VALUES ('575', '246', '3');
INSERT INTO `upms_user_role` VALUES ('576', '247', '3');
INSERT INTO `upms_user_role` VALUES ('577', '248', '3');
INSERT INTO `upms_user_role` VALUES ('578', '248', '10');
INSERT INTO `upms_user_role` VALUES ('579', '249', '3');
INSERT INTO `upms_user_role` VALUES ('580', '249', '5');
INSERT INTO `upms_user_role` VALUES ('581', '250', '3');
INSERT INTO `upms_user_role` VALUES ('582', '251', '3');
INSERT INTO `upms_user_role` VALUES ('584', '253', '3');
INSERT INTO `upms_user_role` VALUES ('588', '100000038', '3');
INSERT INTO `upms_user_role` VALUES ('589', '100000039', '3');
INSERT INTO `upms_user_role` VALUES ('593', '241', '4');
INSERT INTO `upms_user_role` VALUES ('594', '100000023', '4');
INSERT INTO `upms_user_role` VALUES ('596', '100000028', '4');
INSERT INTO `upms_user_role` VALUES ('597', '100000031', '4');
INSERT INTO `upms_user_role` VALUES ('602', '479', '3');
INSERT INTO `upms_user_role` VALUES ('603', '479', '5');
INSERT INTO `upms_user_role` VALUES ('605', '100000043', '3');
INSERT INTO `upms_user_role` VALUES ('612', '100000047', '3');
INSERT INTO `upms_user_role` VALUES ('613', '100000048', '3');
INSERT INTO `upms_user_role` VALUES ('614', '100000049', '3');
INSERT INTO `upms_user_role` VALUES ('615', '100000050', '3');
INSERT INTO `upms_user_role` VALUES ('620', '100000051', '3');
INSERT INTO `upms_user_role` VALUES ('622', '100000054', '12');
INSERT INTO `upms_user_role` VALUES ('628', '100000044', '3');
INSERT INTO `upms_user_role` VALUES ('629', '100000044', '10');
INSERT INTO `upms_user_role` VALUES ('630', '427', '3');
INSERT INTO `upms_user_role` VALUES ('631', '427', '10');
INSERT INTO `upms_user_role` VALUES ('634', '100000018', '3');
INSERT INTO `upms_user_role` VALUES ('635', '100000018', '10');
INSERT INTO `upms_user_role` VALUES ('638', '100000024', '3');
INSERT INTO `upms_user_role` VALUES ('639', '100000024', '10');
INSERT INTO `upms_user_role` VALUES ('640', '100000026', '3');
INSERT INTO `upms_user_role` VALUES ('641', '100000026', '10');
INSERT INTO `upms_user_role` VALUES ('648', '100000033', '3');
INSERT INTO `upms_user_role` VALUES ('649', '100000033', '10');
INSERT INTO `upms_user_role` VALUES ('652', '100000034', '3');
INSERT INTO `upms_user_role` VALUES ('653', '100000034', '10');
INSERT INTO `upms_user_role` VALUES ('662', '274', '3');
INSERT INTO `upms_user_role` VALUES ('663', '274', '10');
INSERT INTO `upms_user_role` VALUES ('666', '371', '3');
INSERT INTO `upms_user_role` VALUES ('670', '196', '4');
INSERT INTO `upms_user_role` VALUES ('671', '196', '14');
INSERT INTO `upms_user_role` VALUES ('672', '255', '4');
INSERT INTO `upms_user_role` VALUES ('673', '255', '14');
INSERT INTO `upms_user_role` VALUES ('674', '261', '4');
INSERT INTO `upms_user_role` VALUES ('675', '261', '14');
INSERT INTO `upms_user_role` VALUES ('679', '21', '4');
INSERT INTO `upms_user_role` VALUES ('680', '21', '14');
INSERT INTO `upms_user_role` VALUES ('683', '22', '4');
INSERT INTO `upms_user_role` VALUES ('684', '22', '14');
INSERT INTO `upms_user_role` VALUES ('685', '16', '4');
INSERT INTO `upms_user_role` VALUES ('686', '16', '14');
INSERT INTO `upms_user_role` VALUES ('687', '15', '4');
INSERT INTO `upms_user_role` VALUES ('688', '15', '14');
INSERT INTO `upms_user_role` VALUES ('689', '478', '4');
INSERT INTO `upms_user_role` VALUES ('690', '478', '14');
INSERT INTO `upms_user_role` VALUES ('694', '19', '4');
INSERT INTO `upms_user_role` VALUES ('695', '19', '14');
INSERT INTO `upms_user_role` VALUES ('696', '18', '4');
INSERT INTO `upms_user_role` VALUES ('697', '18', '14');
INSERT INTO `upms_user_role` VALUES ('700', '20', '4');
INSERT INTO `upms_user_role` VALUES ('701', '20', '14');
INSERT INTO `upms_user_role` VALUES ('702', '171', '14');
INSERT INTO `upms_user_role` VALUES ('703', '385', '4');
INSERT INTO `upms_user_role` VALUES ('704', '385', '14');
INSERT INTO `upms_user_role` VALUES ('705', '390', '4');
INSERT INTO `upms_user_role` VALUES ('706', '390', '14');
INSERT INTO `upms_user_role` VALUES ('707', '405', '4');
INSERT INTO `upms_user_role` VALUES ('708', '405', '14');
INSERT INTO `upms_user_role` VALUES ('711', '454', '4');
INSERT INTO `upms_user_role` VALUES ('712', '454', '14');
INSERT INTO `upms_user_role` VALUES ('713', '224', '4');
INSERT INTO `upms_user_role` VALUES ('714', '224', '14');
INSERT INTO `upms_user_role` VALUES ('717', '446', '4');
INSERT INTO `upms_user_role` VALUES ('718', '446', '14');
INSERT INTO `upms_user_role` VALUES ('719', '240', '4');
INSERT INTO `upms_user_role` VALUES ('720', '240', '14');
INSERT INTO `upms_user_role` VALUES ('721', '341', '4');
INSERT INTO `upms_user_role` VALUES ('722', '341', '14');
INSERT INTO `upms_user_role` VALUES ('723', '349', '4');
INSERT INTO `upms_user_role` VALUES ('724', '349', '14');
INSERT INTO `upms_user_role` VALUES ('725', '357', '4');
INSERT INTO `upms_user_role` VALUES ('726', '357', '14');
INSERT INTO `upms_user_role` VALUES ('727', '372', '4');
INSERT INTO `upms_user_role` VALUES ('728', '372', '14');
INSERT INTO `upms_user_role` VALUES ('729', '365', '4');
INSERT INTO `upms_user_role` VALUES ('730', '365', '14');
INSERT INTO `upms_user_role` VALUES ('731', '100000053', '15');
INSERT INTO `upms_user_role` VALUES ('732', '168', '11');
INSERT INTO `upms_user_role` VALUES ('733', '168', '13');
INSERT INTO `upms_user_role` VALUES ('734', '168', '15');
INSERT INTO `upms_user_role` VALUES ('743', '100000061', '10');
INSERT INTO `upms_user_role` VALUES ('746', '292', '3');
INSERT INTO `upms_user_role` VALUES ('747', '292', '5');
INSERT INTO `upms_user_role` VALUES ('748', '447', '4');
INSERT INTO `upms_user_role` VALUES ('749', '447', '5');
INSERT INTO `upms_user_role` VALUES ('753', '100000062', '12');
INSERT INTO `upms_user_role` VALUES ('754', '157', '6');
INSERT INTO `upms_user_role` VALUES ('755', '156', '6');
INSERT INTO `upms_user_role` VALUES ('757', '155', '6');
INSERT INTO `upms_user_role` VALUES ('758', '159', '6');
INSERT INTO `upms_user_role` VALUES ('759', '229', '6');
INSERT INTO `upms_user_role` VALUES ('761', '419', '3');
INSERT INTO `upms_user_role` VALUES ('762', '419', '10');
INSERT INTO `upms_user_role` VALUES ('773', '200', '5');
INSERT INTO `upms_user_role` VALUES ('774', '200', '10');
INSERT INTO `upms_user_role` VALUES ('775', '395', '3');
INSERT INTO `upms_user_role` VALUES ('776', '395', '10');
INSERT INTO `upms_user_role` VALUES ('779', '401', '3');
INSERT INTO `upms_user_role` VALUES ('780', '401', '10');
INSERT INTO `upms_user_role` VALUES ('781', '412', '3');
INSERT INTO `upms_user_role` VALUES ('782', '412', '10');
INSERT INTO `upms_user_role` VALUES ('785', '424', '3');
INSERT INTO `upms_user_role` VALUES ('786', '424', '10');
INSERT INTO `upms_user_role` VALUES ('789', '429', '3');
INSERT INTO `upms_user_role` VALUES ('790', '429', '10');
INSERT INTO `upms_user_role` VALUES ('799', '342', '3');
INSERT INTO `upms_user_role` VALUES ('800', '342', '10');
INSERT INTO `upms_user_role` VALUES ('805', '370', '3');
INSERT INTO `upms_user_role` VALUES ('806', '370', '10');
INSERT INTO `upms_user_role` VALUES ('807', '374', '3');
INSERT INTO `upms_user_role` VALUES ('808', '374', '10');
INSERT INTO `upms_user_role` VALUES ('809', '268', '3');
INSERT INTO `upms_user_role` VALUES ('810', '268', '10');
INSERT INTO `upms_user_role` VALUES ('813', '373', '10');
INSERT INTO `upms_user_role` VALUES ('814', '100000042', '3');
INSERT INTO `upms_user_role` VALUES ('815', '100000042', '10');
INSERT INTO `upms_user_role` VALUES ('822', '294', '10');
INSERT INTO `upms_user_role` VALUES ('823', '288', '3');
INSERT INTO `upms_user_role` VALUES ('824', '288', '10');
INSERT INTO `upms_user_role` VALUES ('827', '283', '3');
INSERT INTO `upms_user_role` VALUES ('828', '283', '10');
INSERT INTO `upms_user_role` VALUES ('829', '295', '3');
INSERT INTO `upms_user_role` VALUES ('830', '295', '10');
INSERT INTO `upms_user_role` VALUES ('833', '306', '3');
INSERT INTO `upms_user_role` VALUES ('834', '306', '10');
INSERT INTO `upms_user_role` VALUES ('838', '308', '3');
INSERT INTO `upms_user_role` VALUES ('839', '308', '10');
INSERT INTO `upms_user_role` VALUES ('842', '314', '3');
INSERT INTO `upms_user_role` VALUES ('843', '314', '10');
INSERT INTO `upms_user_role` VALUES ('844', '328', '3');
INSERT INTO `upms_user_role` VALUES ('845', '328', '10');
INSERT INTO `upms_user_role` VALUES ('846', '335', '3');
INSERT INTO `upms_user_role` VALUES ('847', '335', '10');
INSERT INTO `upms_user_role` VALUES ('850', '338', '3');
INSERT INTO `upms_user_role` VALUES ('851', '338', '10');
INSERT INTO `upms_user_role` VALUES ('852', '100000010', '3');
INSERT INTO `upms_user_role` VALUES ('853', '100000010', '10');
INSERT INTO `upms_user_role` VALUES ('854', '100000030', '3');
INSERT INTO `upms_user_role` VALUES ('855', '100000030', '10');
INSERT INTO `upms_user_role` VALUES ('858', '407', '3');
INSERT INTO `upms_user_role` VALUES ('859', '407', '10');
INSERT INTO `upms_user_role` VALUES ('860', '100000058', '3');
INSERT INTO `upms_user_role` VALUES ('868', '422', '4');
INSERT INTO `upms_user_role` VALUES ('870', '163', '6');
INSERT INTO `upms_user_role` VALUES ('873', '164', '8');
INSERT INTO `upms_user_role` VALUES ('874', '164', '11');
INSERT INTO `upms_user_role` VALUES ('880', '158', '6');
INSERT INTO `upms_user_role` VALUES ('881', '158', '9');
INSERT INTO `upms_user_role` VALUES ('882', '100000066', '3');
INSERT INTO `upms_user_role` VALUES ('883', '433', '3');
INSERT INTO `upms_user_role` VALUES ('884', '433', '14');
INSERT INTO `upms_user_role` VALUES ('885', '100000065', '3');
INSERT INTO `upms_user_role` VALUES ('887', '457', '3');
INSERT INTO `upms_user_role` VALUES ('888', '457', '10');
INSERT INTO `upms_user_role` VALUES ('895', '340', '6');
INSERT INTO `upms_user_role` VALUES ('896', '340', '8');
INSERT INTO `upms_user_role` VALUES ('897', '340', '14');
INSERT INTO `upms_user_role` VALUES ('922', '265', '3');
INSERT INTO `upms_user_role` VALUES ('923', '265', '5');
INSERT INTO `upms_user_role` VALUES ('924', '265', '14');
INSERT INTO `upms_user_role` VALUES ('925', '100000063', '5');
INSERT INTO `upms_user_role` VALUES ('926', '100000063', '14');
INSERT INTO `upms_user_role` VALUES ('969', '343', '3');
INSERT INTO `upms_user_role` VALUES ('970', '343', '5');
INSERT INTO `upms_user_role` VALUES ('971', '343', '14');
INSERT INTO `upms_user_role` VALUES ('1068', '402', '4');
INSERT INTO `upms_user_role` VALUES ('1071', '367', '10');
INSERT INTO `upms_user_role` VALUES ('1072', '100000057', '13');
INSERT INTO `upms_user_role` VALUES ('1073', '100000057', '15');
INSERT INTO `upms_user_role` VALUES ('1074', '100000052', '13');
INSERT INTO `upms_user_role` VALUES ('1075', '100000052', '15');
INSERT INTO `upms_user_role` VALUES ('1076', '100000064', '13');
INSERT INTO `upms_user_role` VALUES ('1077', '100000064', '15');
INSERT INTO `upms_user_role` VALUES ('1078', '100000070', '3');
INSERT INTO `upms_user_role` VALUES ('1079', '100000069', '3');
INSERT INTO `upms_user_role` VALUES ('1080', '100000072', '3');
INSERT INTO `upms_user_role` VALUES ('1081', '100000073', '3');
INSERT INTO `upms_user_role` VALUES ('1082', '100000074', '3');
INSERT INTO `upms_user_role` VALUES ('1083', '432', '4');
INSERT INTO `upms_user_role` VALUES ('1084', '432', '10');
INSERT INTO `upms_user_role` VALUES ('1085', '438', '4');
INSERT INTO `upms_user_role` VALUES ('1092', '166', '3');
INSERT INTO `upms_user_role` VALUES ('1093', '166', '10');
INSERT INTO `upms_user_role` VALUES ('1094', '165', '22');
INSERT INTO `upms_user_role` VALUES ('1095', '14', '8');
INSERT INTO `upms_user_role` VALUES ('1096', '14', '24');
INSERT INTO `upms_user_role` VALUES ('1097', '188', '3');
INSERT INTO `upms_user_role` VALUES ('1098', '188', '5');
INSERT INTO `upms_user_role` VALUES ('1099', '188', '14');
INSERT INTO `upms_user_role` VALUES ('1100', '188', '20');
INSERT INTO `upms_user_role` VALUES ('1101', '476', '3');
INSERT INTO `upms_user_role` VALUES ('1102', '476', '5');
INSERT INTO `upms_user_role` VALUES ('1103', '476', '14');
INSERT INTO `upms_user_role` VALUES ('1104', '476', '20');
INSERT INTO `upms_user_role` VALUES ('1105', '202', '3');
INSERT INTO `upms_user_role` VALUES ('1106', '202', '5');
INSERT INTO `upms_user_role` VALUES ('1107', '202', '14');
INSERT INTO `upms_user_role` VALUES ('1108', '202', '20');
INSERT INTO `upms_user_role` VALUES ('1109', '206', '5');
INSERT INTO `upms_user_role` VALUES ('1110', '206', '14');
INSERT INTO `upms_user_role` VALUES ('1111', '206', '20');
INSERT INTO `upms_user_role` VALUES ('1112', '256', '5');
INSERT INTO `upms_user_role` VALUES ('1113', '256', '14');
INSERT INTO `upms_user_role` VALUES ('1114', '256', '20');
INSERT INTO `upms_user_role` VALUES ('1115', '213', '3');
INSERT INTO `upms_user_role` VALUES ('1116', '213', '5');
INSERT INTO `upms_user_role` VALUES ('1117', '213', '14');
INSERT INTO `upms_user_role` VALUES ('1118', '213', '20');
INSERT INTO `upms_user_role` VALUES ('1119', '215', '3');
INSERT INTO `upms_user_role` VALUES ('1120', '215', '5');
INSERT INTO `upms_user_role` VALUES ('1121', '215', '14');
INSERT INTO `upms_user_role` VALUES ('1122', '215', '20');
INSERT INTO `upms_user_role` VALUES ('1123', '259', '3');
INSERT INTO `upms_user_role` VALUES ('1124', '259', '5');
INSERT INTO `upms_user_role` VALUES ('1125', '259', '14');
INSERT INTO `upms_user_role` VALUES ('1126', '259', '20');
INSERT INTO `upms_user_role` VALUES ('1127', '264', '3');
INSERT INTO `upms_user_role` VALUES ('1128', '264', '20');
INSERT INTO `upms_user_role` VALUES ('1151', '414', '3');
INSERT INTO `upms_user_role` VALUES ('1152', '414', '5');
INSERT INTO `upms_user_role` VALUES ('1153', '414', '14');
INSERT INTO `upms_user_role` VALUES ('1154', '414', '19');
INSERT INTO `upms_user_role` VALUES ('1155', '388', '3');
INSERT INTO `upms_user_role` VALUES ('1156', '388', '5');
INSERT INTO `upms_user_role` VALUES ('1157', '388', '14');
INSERT INTO `upms_user_role` VALUES ('1158', '388', '19');
INSERT INTO `upms_user_role` VALUES ('1159', '393', '3');
INSERT INTO `upms_user_role` VALUES ('1160', '393', '5');
INSERT INTO `upms_user_role` VALUES ('1161', '393', '14');
INSERT INTO `upms_user_role` VALUES ('1162', '393', '19');
INSERT INTO `upms_user_role` VALUES ('1163', '403', '3');
INSERT INTO `upms_user_role` VALUES ('1164', '403', '5');
INSERT INTO `upms_user_role` VALUES ('1165', '403', '14');
INSERT INTO `upms_user_role` VALUES ('1166', '403', '19');
INSERT INTO `upms_user_role` VALUES ('1167', '397', '3');
INSERT INTO `upms_user_role` VALUES ('1168', '397', '5');
INSERT INTO `upms_user_role` VALUES ('1169', '397', '14');
INSERT INTO `upms_user_role` VALUES ('1170', '397', '19');
INSERT INTO `upms_user_role` VALUES ('1171', '386', '5');
INSERT INTO `upms_user_role` VALUES ('1172', '386', '19');
INSERT INTO `upms_user_role` VALUES ('1173', '416', '3');
INSERT INTO `upms_user_role` VALUES ('1174', '416', '5');
INSERT INTO `upms_user_role` VALUES ('1175', '416', '14');
INSERT INTO `upms_user_role` VALUES ('1176', '416', '19');
INSERT INTO `upms_user_role` VALUES ('1177', '420', '3');
INSERT INTO `upms_user_role` VALUES ('1178', '420', '5');
INSERT INTO `upms_user_role` VALUES ('1179', '420', '14');
INSERT INTO `upms_user_role` VALUES ('1180', '420', '19');
INSERT INTO `upms_user_role` VALUES ('1181', '425', '3');
INSERT INTO `upms_user_role` VALUES ('1182', '425', '5');
INSERT INTO `upms_user_role` VALUES ('1183', '425', '14');
INSERT INTO `upms_user_role` VALUES ('1184', '425', '19');
INSERT INTO `upms_user_role` VALUES ('1185', '430', '3');
INSERT INTO `upms_user_role` VALUES ('1186', '430', '5');
INSERT INTO `upms_user_role` VALUES ('1187', '430', '14');
INSERT INTO `upms_user_role` VALUES ('1188', '430', '19');
INSERT INTO `upms_user_role` VALUES ('1189', '435', '3');
INSERT INTO `upms_user_role` VALUES ('1190', '435', '5');
INSERT INTO `upms_user_role` VALUES ('1191', '435', '14');
INSERT INTO `upms_user_role` VALUES ('1192', '435', '19');
INSERT INTO `upms_user_role` VALUES ('1193', '445', '3');
INSERT INTO `upms_user_role` VALUES ('1194', '445', '5');
INSERT INTO `upms_user_role` VALUES ('1195', '445', '14');
INSERT INTO `upms_user_role` VALUES ('1196', '445', '19');
INSERT INTO `upms_user_role` VALUES ('1197', '453', '3');
INSERT INTO `upms_user_role` VALUES ('1198', '453', '5');
INSERT INTO `upms_user_role` VALUES ('1199', '453', '14');
INSERT INTO `upms_user_role` VALUES ('1200', '453', '19');
INSERT INTO `upms_user_role` VALUES ('1201', '456', '3');
INSERT INTO `upms_user_role` VALUES ('1202', '456', '5');
INSERT INTO `upms_user_role` VALUES ('1203', '456', '14');
INSERT INTO `upms_user_role` VALUES ('1204', '456', '19');
INSERT INTO `upms_user_role` VALUES ('1205', '461', '3');
INSERT INTO `upms_user_role` VALUES ('1206', '461', '5');
INSERT INTO `upms_user_role` VALUES ('1207', '461', '14');
INSERT INTO `upms_user_role` VALUES ('1208', '461', '19');
INSERT INTO `upms_user_role` VALUES ('1209', '347', '3');
INSERT INTO `upms_user_role` VALUES ('1210', '347', '5');
INSERT INTO `upms_user_role` VALUES ('1211', '347', '14');
INSERT INTO `upms_user_role` VALUES ('1212', '347', '19');
INSERT INTO `upms_user_role` VALUES ('1213', '350', '3');
INSERT INTO `upms_user_role` VALUES ('1214', '350', '5');
INSERT INTO `upms_user_role` VALUES ('1215', '350', '14');
INSERT INTO `upms_user_role` VALUES ('1216', '350', '19');
INSERT INTO `upms_user_role` VALUES ('1217', '362', '3');
INSERT INTO `upms_user_role` VALUES ('1218', '362', '5');
INSERT INTO `upms_user_role` VALUES ('1219', '362', '14');
INSERT INTO `upms_user_role` VALUES ('1220', '362', '19');
INSERT INTO `upms_user_role` VALUES ('1221', '368', '3');
INSERT INTO `upms_user_role` VALUES ('1222', '368', '5');
INSERT INTO `upms_user_role` VALUES ('1223', '368', '14');
INSERT INTO `upms_user_role` VALUES ('1224', '368', '19');
INSERT INTO `upms_user_role` VALUES ('1225', '369', '3');
INSERT INTO `upms_user_role` VALUES ('1226', '369', '5');
INSERT INTO `upms_user_role` VALUES ('1227', '369', '14');
INSERT INTO `upms_user_role` VALUES ('1228', '369', '19');
INSERT INTO `upms_user_role` VALUES ('1233', '270', '3');
INSERT INTO `upms_user_role` VALUES ('1234', '270', '5');
INSERT INTO `upms_user_role` VALUES ('1235', '270', '14');
INSERT INTO `upms_user_role` VALUES ('1236', '270', '20');
INSERT INTO `upms_user_role` VALUES ('1237', '477', '3');
INSERT INTO `upms_user_role` VALUES ('1238', '477', '5');
INSERT INTO `upms_user_role` VALUES ('1239', '477', '14');
INSERT INTO `upms_user_role` VALUES ('1240', '477', '20');
INSERT INTO `upms_user_role` VALUES ('1241', '471', '3');
INSERT INTO `upms_user_role` VALUES ('1242', '471', '5');
INSERT INTO `upms_user_role` VALUES ('1243', '471', '14');
INSERT INTO `upms_user_role` VALUES ('1244', '471', '20');
INSERT INTO `upms_user_role` VALUES ('1246', '100000056', '20');
INSERT INTO `upms_user_role` VALUES ('1247', '272', '5');
INSERT INTO `upms_user_role` VALUES ('1248', '272', '14');
INSERT INTO `upms_user_role` VALUES ('1249', '272', '20');
INSERT INTO `upms_user_role` VALUES ('1250', '277', '3');
INSERT INTO `upms_user_role` VALUES ('1251', '277', '5');
INSERT INTO `upms_user_role` VALUES ('1252', '277', '14');
INSERT INTO `upms_user_role` VALUES ('1253', '277', '20');
INSERT INTO `upms_user_role` VALUES ('1254', '245', '3');
INSERT INTO `upms_user_role` VALUES ('1255', '245', '5');
INSERT INTO `upms_user_role` VALUES ('1256', '245', '14');
INSERT INTO `upms_user_role` VALUES ('1257', '245', '19');
INSERT INTO `upms_user_role` VALUES ('1258', '252', '3');
INSERT INTO `upms_user_role` VALUES ('1259', '252', '5');
INSERT INTO `upms_user_role` VALUES ('1260', '252', '14');
INSERT INTO `upms_user_role` VALUES ('1261', '252', '19');
INSERT INTO `upms_user_role` VALUES ('1262', '282', '3');
INSERT INTO `upms_user_role` VALUES ('1263', '282', '5');
INSERT INTO `upms_user_role` VALUES ('1264', '282', '14');
INSERT INTO `upms_user_role` VALUES ('1265', '282', '20');
INSERT INTO `upms_user_role` VALUES ('1266', '291', '3');
INSERT INTO `upms_user_role` VALUES ('1267', '291', '5');
INSERT INTO `upms_user_role` VALUES ('1268', '291', '14');
INSERT INTO `upms_user_role` VALUES ('1269', '291', '20');
INSERT INTO `upms_user_role` VALUES ('1270', '284', '3');
INSERT INTO `upms_user_role` VALUES ('1271', '284', '5');
INSERT INTO `upms_user_role` VALUES ('1272', '284', '14');
INSERT INTO `upms_user_role` VALUES ('1273', '284', '20');
INSERT INTO `upms_user_role` VALUES ('1274', '296', '3');
INSERT INTO `upms_user_role` VALUES ('1275', '296', '5');
INSERT INTO `upms_user_role` VALUES ('1276', '296', '14');
INSERT INTO `upms_user_role` VALUES ('1277', '296', '20');
INSERT INTO `upms_user_role` VALUES ('1278', '100000040', '3');
INSERT INTO `upms_user_role` VALUES ('1279', '100000040', '5');
INSERT INTO `upms_user_role` VALUES ('1280', '100000040', '14');
INSERT INTO `upms_user_role` VALUES ('1281', '100000040', '20');
INSERT INTO `upms_user_role` VALUES ('1282', '304', '5');
INSERT INTO `upms_user_role` VALUES ('1283', '304', '14');
INSERT INTO `upms_user_role` VALUES ('1284', '304', '20');
INSERT INTO `upms_user_role` VALUES ('1285', '307', '3');
INSERT INTO `upms_user_role` VALUES ('1286', '307', '5');
INSERT INTO `upms_user_role` VALUES ('1287', '307', '14');
INSERT INTO `upms_user_role` VALUES ('1288', '307', '20');
INSERT INTO `upms_user_role` VALUES ('1289', '480', '3');
INSERT INTO `upms_user_role` VALUES ('1290', '480', '5');
INSERT INTO `upms_user_role` VALUES ('1291', '480', '14');
INSERT INTO `upms_user_role` VALUES ('1292', '480', '20');
INSERT INTO `upms_user_role` VALUES ('1293', '311', '3');
INSERT INTO `upms_user_role` VALUES ('1294', '311', '5');
INSERT INTO `upms_user_role` VALUES ('1295', '311', '14');
INSERT INTO `upms_user_role` VALUES ('1296', '311', '20');
INSERT INTO `upms_user_role` VALUES ('1297', '302', '3');
INSERT INTO `upms_user_role` VALUES ('1298', '302', '5');
INSERT INTO `upms_user_role` VALUES ('1299', '302', '14');
INSERT INTO `upms_user_role` VALUES ('1300', '302', '20');
INSERT INTO `upms_user_role` VALUES ('1301', '313', '3');
INSERT INTO `upms_user_role` VALUES ('1302', '313', '5');
INSERT INTO `upms_user_role` VALUES ('1303', '313', '14');
INSERT INTO `upms_user_role` VALUES ('1304', '313', '20');
INSERT INTO `upms_user_role` VALUES ('1305', '100000046', '3');
INSERT INTO `upms_user_role` VALUES ('1306', '100000046', '5');
INSERT INTO `upms_user_role` VALUES ('1307', '100000046', '14');
INSERT INTO `upms_user_role` VALUES ('1308', '100000046', '20');
INSERT INTO `upms_user_role` VALUES ('1309', '489', '3');
INSERT INTO `upms_user_role` VALUES ('1310', '489', '5');
INSERT INTO `upms_user_role` VALUES ('1311', '489', '14');
INSERT INTO `upms_user_role` VALUES ('1312', '489', '20');
INSERT INTO `upms_user_role` VALUES ('1313', '17', '4');
INSERT INTO `upms_user_role` VALUES ('1314', '17', '5');
INSERT INTO `upms_user_role` VALUES ('1315', '17', '14');
INSERT INTO `upms_user_role` VALUES ('1316', '17', '20');
INSERT INTO `upms_user_role` VALUES ('1317', '325', '5');
INSERT INTO `upms_user_role` VALUES ('1318', '325', '14');
INSERT INTO `upms_user_role` VALUES ('1319', '325', '20');
INSERT INTO `upms_user_role` VALUES ('1320', '330', '3');
INSERT INTO `upms_user_role` VALUES ('1321', '330', '5');
INSERT INTO `upms_user_role` VALUES ('1322', '330', '14');
INSERT INTO `upms_user_role` VALUES ('1323', '330', '20');
INSERT INTO `upms_user_role` VALUES ('1324', '334', '3');
INSERT INTO `upms_user_role` VALUES ('1325', '334', '5');
INSERT INTO `upms_user_role` VALUES ('1326', '334', '14');
INSERT INTO `upms_user_role` VALUES ('1327', '334', '20');
INSERT INTO `upms_user_role` VALUES ('1328', '483', '3');
INSERT INTO `upms_user_role` VALUES ('1329', '483', '5');
INSERT INTO `upms_user_role` VALUES ('1330', '483', '14');
INSERT INTO `upms_user_role` VALUES ('1331', '483', '20');
INSERT INTO `upms_user_role` VALUES ('1332', '100000009', '3');
INSERT INTO `upms_user_role` VALUES ('1333', '100000009', '5');
INSERT INTO `upms_user_role` VALUES ('1334', '100000009', '19');
INSERT INTO `upms_user_role` VALUES ('1335', '100000025', '3');
INSERT INTO `upms_user_role` VALUES ('1336', '100000025', '5');
INSERT INTO `upms_user_role` VALUES ('1337', '100000025', '14');
INSERT INTO `upms_user_role` VALUES ('1338', '100000025', '19');
INSERT INTO `upms_user_role` VALUES ('1339', '100000027', '4');
INSERT INTO `upms_user_role` VALUES ('1340', '100000027', '5');
INSERT INTO `upms_user_role` VALUES ('1341', '100000027', '14');
INSERT INTO `upms_user_role` VALUES ('1342', '100000027', '19');
INSERT INTO `upms_user_role` VALUES ('1343', '100000029', '3');
INSERT INTO `upms_user_role` VALUES ('1344', '100000029', '5');
INSERT INTO `upms_user_role` VALUES ('1345', '100000029', '14');
INSERT INTO `upms_user_role` VALUES ('1346', '100000029', '19');
INSERT INTO `upms_user_role` VALUES ('1347', '100000032', '3');
INSERT INTO `upms_user_role` VALUES ('1348', '100000032', '5');
INSERT INTO `upms_user_role` VALUES ('1349', '100000032', '14');
INSERT INTO `upms_user_role` VALUES ('1350', '100000032', '19');
INSERT INTO `upms_user_role` VALUES ('1351', '100000035', '3');
INSERT INTO `upms_user_role` VALUES ('1352', '100000035', '5');
INSERT INTO `upms_user_role` VALUES ('1353', '100000035', '14');
INSERT INTO `upms_user_role` VALUES ('1354', '100000035', '19');
INSERT INTO `upms_user_role` VALUES ('1355', '490', '5');
INSERT INTO `upms_user_role` VALUES ('1356', '490', '8');
INSERT INTO `upms_user_role` VALUES ('1357', '490', '23');
INSERT INTO `upms_user_role` VALUES ('1358', '228', '5');
INSERT INTO `upms_user_role` VALUES ('1359', '228', '21');
INSERT INTO `upms_user_role` VALUES ('1360', '100003', '42');
INSERT INTO `upms_user_role` VALUES ('1362', '100004', '6');
INSERT INTO `upms_user_role` VALUES ('1363', '100004', '43');
INSERT INTO `upms_user_role` VALUES ('1369', '351', '8');
INSERT INTO `upms_user_role` VALUES ('1370', '351', '10');
INSERT INTO `upms_user_role` VALUES ('1371', '351', '23');
INSERT INTO `upms_user_role` VALUES ('1372', '384', '27');
INSERT INTO `upms_user_role` VALUES ('1373', '410', '4');
INSERT INTO `upms_user_role` VALUES ('1374', '410', '14');
INSERT INTO `upms_user_role` VALUES ('1375', '410', '28');
INSERT INTO `upms_user_role` VALUES ('1376', '378', '29');
INSERT INTO `upms_user_role` VALUES ('1377', '459', '4');
INSERT INTO `upms_user_role` VALUES ('1378', '459', '5');
INSERT INTO `upms_user_role` VALUES ('1379', '459', '25');
INSERT INTO `upms_user_role` VALUES ('1380', '439', '4');
INSERT INTO `upms_user_role` VALUES ('1381', '439', '26');
INSERT INTO `upms_user_role` VALUES ('1392', '220', '34');
INSERT INTO `upms_user_role` VALUES ('1393', '220', '41');
INSERT INTO `upms_user_role` VALUES ('1401', '183', '1');
INSERT INTO `upms_user_role` VALUES ('1405', '183', null);
INSERT INTO `upms_user_role` VALUES ('1407', '183', null);
INSERT INTO `upms_user_role` VALUES ('1409', '183', null);
INSERT INTO `upms_user_role` VALUES ('1411', '183', null);
INSERT INTO `upms_user_role` VALUES ('1413', '183', null);
INSERT INTO `upms_user_role` VALUES ('1415', '183', null);
INSERT INTO `upms_user_role` VALUES ('1417', '183', null);
INSERT INTO `upms_user_role` VALUES ('1419', '183', null);
INSERT INTO `upms_user_role` VALUES ('1421', '183', null);
INSERT INTO `upms_user_role` VALUES ('1435', '190', '1');
INSERT INTO `upms_user_role` VALUES ('1436', '190', '45');
INSERT INTO `upms_user_role` VALUES ('1437', '190', '46');
INSERT INTO `upms_user_role` VALUES ('1438', '10', '48');
INSERT INTO `upms_user_role` VALUES ('1440', '13', '48');
INSERT INTO `upms_user_role` VALUES ('1444', '12', '49');
INSERT INTO `upms_user_role` VALUES ('1460', '183', '50');
INSERT INTO `upms_user_role` VALUES ('1470', '1', '1');
INSERT INTO `upms_user_role` VALUES ('1471', '1', '2');
INSERT INTO `upms_user_role` VALUES ('1472', '1', '4');
INSERT INTO `upms_user_role` VALUES ('1473', '1', '12');
INSERT INTO `upms_user_role` VALUES ('1474', '1', '21');
INSERT INTO `upms_user_role` VALUES ('1475', '1', '44');
INSERT INTO `upms_user_role` VALUES ('1476', '1', '45');
INSERT INTO `upms_user_role` VALUES ('1477', '1', '46');
INSERT INTO `upms_user_role` VALUES ('1478', '1', '48');
INSERT INTO `upms_user_role` VALUES ('1479', '1', '49');
