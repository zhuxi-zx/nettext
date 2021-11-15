-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 172.16.29.68    Database: webtest2
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bgk_baogao`
--

DROP TABLE IF EXISTS `bgk_baogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_baogao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fujian` varchar(255) DEFAULT NULL,
  `isread` int(11) DEFAULT '0',
  `reply` text,
  `tousers` text,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_baogao`
--

LOCK TABLES `bgk_baogao` WRITE;
/*!40000 ALTER TABLE `bgk_baogao` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_baogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_caiwu`
--

DROP TABLE IF EXISTS `bgk_caiwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_caiwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `model` varchar(255) DEFAULT NULL,
  `xid` int(11) DEFAULT NULL,
  `xcode` varchar(255) DEFAULT NULL COMMENT '项目编号',
  `outin` tinyint(4) DEFAULT '1',
  `type` varchar(255) DEFAULT '',
  `type1` varchar(255) DEFAULT NULL,
  `type0` varchar(255) DEFAULT NULL,
  `money` decimal(11,2) DEFAULT '0.00',
  `content` text,
  `szfs` varchar(255) DEFAULT NULL,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `reason` varchar(255) DEFAULT '',
  `biaoji` varchar(255) DEFAULT NULL,
  `biaoji_yanse` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_caiwu`
--

LOCK TABLES `bgk_caiwu` WRITE;
/*!40000 ALTER TABLE `bgk_caiwu` DISABLE KEYS */;
INSERT INTO `bgk_caiwu` VALUES (1,1,2,'wangjiji','订单',1,'DD2021111190461',1,'订单款','订单款',NULL,1099998.00,'订单总金额2000000.00，本次收款1099998.00，订单备注尾款一月内还清',NULL,'超级管理员','超级管理员','2021-11-11 13:15:20',NULL,NULL,NULL,'',NULL,NULL,0,NULL),(2,1,2,'wangjiji','订单',2,'DD2021111174101',1,'订单款','订单款',NULL,20000000.00,'订单总金额，本次收款20000000.00，订单备注',NULL,'超级管理员','超级管理员','2021-11-11 13:17:09',NULL,NULL,NULL,'',NULL,NULL,0,NULL),(3,1,2,'wangjiji','合同',1,'HT2021111197661',1,'合同款','合同款',NULL,2000000.00,'合同总金额2000000.00，本次收款2000000.00，合同备注',NULL,'超级管理员','超级管理员','2021-11-11 13:18:43',NULL,NULL,NULL,'',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `bgk_caiwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_callrecord`
--

DROP TABLE IF EXISTS `bgk_callrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_callrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `type` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT '',
  `state` tinyint(1) DEFAULT NULL,
  `recordfile` text,
  `timing` varchar(255) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `atime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `devicename` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_callrecord`
--

LOCK TABLES `bgk_callrecord` WRITE;
/*!40000 ALTER TABLE `bgk_callrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_callrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_chanpin`
--

DROP TABLE IF EXISTS `bgk_chanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_chanpin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class1` varchar(255) DEFAULT '',
  `class2` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT '0',
  `xinghao` varchar(255) DEFAULT '0',
  `guige` varchar(255) DEFAULT NULL,
  `danwei` varchar(255) DEFAULT NULL,
  `kucun` int(11) DEFAULT NULL,
  `kucunyujing` int(11) DEFAULT NULL,
  `chengben` decimal(11,2) DEFAULT NULL,
  `shoujia` decimal(11,2) DEFAULT NULL,
  `content` text,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT '',
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `drpc` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_chanpin`
--

LOCK TABLES `bgk_chanpin` WRITE;
/*!40000 ALTER TABLE `bgk_chanpin` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_chanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_chanpin_class`
--

DROP TABLE IF EXISTS `bgk_chanpin_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_chanpin_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_chanpin_class`
--

LOCK TABLES `bgk_chanpin_class` WRITE;
/*!40000 ALTER TABLE `bgk_chanpin_class` DISABLE KEYS */;
INSERT INTO `bgk_chanpin_class` VALUES (1,0,'产品大类',0),(2,1,'产品小类',0);
/*!40000 ALTER TABLE `bgk_chanpin_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_chatgroup`
--

DROP TABLE IF EXISTS `bgk_chatgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_chatgroup` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) NOT NULL COMMENT '群名称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '群头像',
  `qunzhu` int(100) NOT NULL COMMENT '群主id',
  `chengyuan` text,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_chatgroup`
--

LOCK TABLES `bgk_chatgroup` WRITE;
/*!40000 ALTER TABLE `bgk_chatgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_chatgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_chatlog`
--

DROP TABLE IF EXISTS `bgk_chatlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_chatlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` varchar(255) NOT NULL DEFAULT 'friend' COMMENT '聊天类型',
  `idhash` varchar(255) NOT NULL COMMENT 'hash值',
  `touid` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '会话发送的id',
  `uid` mediumint(11) NOT NULL DEFAULT '0' COMMENT '消息来源用户名',
  `fromid` int(11) DEFAULT NULL,
  `content` text,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '记录时间',
  `writetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '送达时间',
  `hasview` tinyint(11) NOT NULL DEFAULT '0' COMMENT '0 为未读',
  `cid` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `touid` (`touid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_chatlog`
--

LOCK TABLES `bgk_chatlog` WRITE;
/*!40000 ALTER TABLE `bgk_chatlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_chatlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_config`
--

DROP TABLE IF EXISTS `bgk_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_config`
--

LOCK TABLES `bgk_config` WRITE;
/*!40000 ALTER TABLE `bgk_config` DISABLE KEYS */;
INSERT INTO `bgk_config` VALUES (1,'config_dom','',0),(2,'config_sqm','SLA5C0200492AE0CRID1D273E062070D03F8CE8E1994795920B127F16B108F557787EB32853B743631AE72XU0FC5A12B7A87',0),(3,'icon_support_on','1',0),(4,'bao_on','1',0),(5,'bao_gendan_on','1',0),(6,'bao_gendan_day','30',0),(7,'bao_ddht_on','1',0),(8,'bao_ddht_day','90',0),(9,'bao_tixing','1',0),(10,'bao_tixing_day','1',0),(11,'logo','',0),(12,'vision','4.0.8',0),(13,'sms_on','1',0),(14,'mail_on','0',0),(15,'sms_api','https://sms.30qe.com',0),(16,'icp','',0),(17,'zf_kehu','客户',0),(18,'zf_gendan','跟单',0),(19,'zf_dingdan','订单',0),(20,'zf_hetong','合同',0),(21,'zf_shouhou','售后',0),(22,'zf_caiwu','财务',0),(23,'zf_gonghai','公海',0),(24,'zf_chanpin','产品',0),(25,'bao_paichu_cj','否',0),(26,'show_bianhao','0',0),(27,'bao_gendan_xh','0',0),(28,'config_dom1','',0),(29,'config_sqm1','',0),(30,'logs_time','2021-11-11 13:06:46',0);
/*!40000 ALTER TABLE `bgk_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_dingdan`
--

DROP TABLE IF EXISTS `bgk_dingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `cid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `linkman` varchar(255) DEFAULT '',
  `number` varchar(255) DEFAULT '',
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `money` decimal(11,2) DEFAULT NULL,
  `ysmoney` decimal(11,2) DEFAULT NULL,
  `qkmoney` decimal(11,2) DEFAULT NULL,
  `content` text,
  `shenhe` varchar(255) DEFAULT '待审',
  `shenhebeizhu` text,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `biaoji` varchar(255) DEFAULT NULL,
  `biaoji_yanse` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_dingdan`
--

LOCK TABLES `bgk_dingdan` WRITE;
/*!40000 ALTER TABLE `bgk_dingdan` DISABLE KEYS */;
INSERT INTO `bgk_dingdan` VALUES (1,1,2,'wangjiji','','DD2021111190461','2021-10-11 00:00:00','2021-10-20 00:00:00',2000000.00,1099998.00,900002.00,'尾款一月内还清','订单有效','','超级管理员','超级管理员','2021-11-11 13:15:20',NULL,NULL,NULL,NULL,NULL,0,NULL),(2,1,2,'wangjiji','wangjiji','DD2021111174101','2021-10-28 00:00:00','2021-10-28 00:00:00',NULL,20000000.00,-20000000.00,'','订单有效','','超级管理员','超级管理员','2021-11-11 13:17:09',NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `bgk_dingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_dingdan_chanpin`
--

DROP TABLE IF EXISTS `bgk_dingdan_chanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_dingdan_chanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dingdanid` int(11) DEFAULT '0',
  `chanpinid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT NULL,
  `xinghao` varchar(255) DEFAULT NULL,
  `guige` varchar(255) DEFAULT NULL,
  `danwei` varchar(255) DEFAULT NULL,
  `nums` int(11) DEFAULT '0',
  `chengben` decimal(11,0) DEFAULT NULL,
  `shoujia` decimal(11,2) DEFAULT '0.00',
  `zhekou` decimal(11,2) DEFAULT '0.00',
  `money` decimal(11,2) DEFAULT '0.00',
  `content` text,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_dingdan_chanpin`
--

LOCK TABLES `bgk_dingdan_chanpin` WRITE;
/*!40000 ALTER TABLE `bgk_dingdan_chanpin` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_dingdan_chanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_files`
--

DROP TABLE IF EXISTS `bgk_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filepath` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `isshare` varchar(255) COLLATE utf8_unicode_ci DEFAULT '否',
  `nowuser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adduser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_files`
--

LOCK TABLES `bgk_files` WRITE;
/*!40000 ALTER TABLE `bgk_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_gendan`
--

DROP TABLE IF EXISTS `bgk_gendan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_gendan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `cid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `nexttime` datetime DEFAULT NULL,
  `remind` int(50) DEFAULT '0',
  `content` text,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `biaoji` varchar(255) DEFAULT NULL,
  `biaoji_yanse` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_gendan`
--

LOCK TABLES `bgk_gendan` WRITE;
/*!40000 ALTER TABLE `bgk_gendan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_gendan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_gonggao`
--

DROP TABLE IF EXISTS `bgk_gonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fujian` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_gonggao`
--

LOCK TABLES `bgk_gonggao` WRITE;
/*!40000 ALTER TABLE `bgk_gonggao` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_gonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_gongzi`
--

DROP TABLE IF EXISTS `bgk_gongzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_gongzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yuefen` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cq_t1` decimal(11,2) DEFAULT NULL,
  `cq_t2` decimal(11,2) DEFAULT NULL,
  `cq_t3` decimal(11,2) DEFAULT NULL,
  `cq_t4` decimal(11,2) DEFAULT NULL,
  `cq_t5` decimal(11,2) DEFAULT NULL,
  `cq_t6` decimal(11,2) DEFAULT NULL,
  `yf_t1` decimal(11,2) DEFAULT NULL,
  `yf_t2` decimal(11,2) DEFAULT NULL,
  `yf_t3` decimal(11,2) DEFAULT NULL,
  `yf_t4` decimal(11,2) DEFAULT NULL,
  `yf_t5` decimal(11,2) DEFAULT NULL,
  `yf_t6` decimal(11,2) DEFAULT NULL,
  `yf_t7` decimal(11,2) DEFAULT NULL,
  `yf_t8` decimal(11,2) DEFAULT NULL,
  `yf_t9` decimal(11,2) DEFAULT NULL,
  `yf_t10` decimal(11,2) DEFAULT NULL,
  `yk_t1` decimal(11,2) DEFAULT NULL,
  `yk_t2` decimal(11,2) DEFAULT NULL,
  `yk_t3` decimal(11,2) DEFAULT NULL,
  `yk_t4` decimal(11,2) DEFAULT NULL,
  `yk_t5` decimal(11,2) DEFAULT NULL,
  `yk_t6` decimal(11,2) DEFAULT NULL,
  `qt_t1` decimal(11,2) DEFAULT NULL,
  `qt_t2` decimal(11,2) DEFAULT NULL,
  `qt_t3` decimal(11,2) DEFAULT NULL,
  `shifa` decimal(11,2) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `upduser` varchar(255) DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_gongzi`
--

LOCK TABLES `bgk_gongzi` WRITE;
/*!40000 ALTER TABLE `bgk_gongzi` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_gongzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_hetong`
--

DROP TABLE IF EXISTS `bgk_hetong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `cid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `linkman` varchar(255) DEFAULT '',
  `number` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `money` decimal(11,2) DEFAULT NULL,
  `ysmoney` decimal(11,2) DEFAULT NULL,
  `qkmoney` decimal(11,2) DEFAULT NULL,
  `content` text,
  `fujian` text,
  `shenhe` varchar(255) DEFAULT '待审',
  `shenhebeizhu` varchar(255) DEFAULT '',
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `biaoji` varchar(255) DEFAULT NULL,
  `biaoji_yanse` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_hetong`
--

LOCK TABLES `bgk_hetong` WRITE;
/*!40000 ALTER TABLE `bgk_hetong` DISABLE KEYS */;
INSERT INTO `bgk_hetong` VALUES (1,1,2,'wangjiji','','HT2021111197661','技术','2021-10-11 00:00:00','2021-10-21 00:00:00',2000000.00,2000000.00,NULL,'','','合同有效','执行','超级管理员','超级管理员','2021-11-11 13:18:43',NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `bgk_hetong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_jiliyu`
--

DROP TABLE IF EXISTS `bgk_jiliyu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_jiliyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_jiliyu`
--

LOCK TABLES `bgk_jiliyu` WRITE;
/*!40000 ALTER TABLE `bgk_jiliyu` DISABLE KEYS */;
INSERT INTO `bgk_jiliyu` VALUES (1,NULL,'','不要轻言放弃，否则对不起自己','超级管理员','2019-07-15 00:00:00',0,NULL),(2,NULL,'','积极思考造就积极人生，消极思考造就消极人生','超级管理员','2019-07-15 00:00:00',0,NULL),(3,NULL,'','无论才能、知识多么卓越，如果缺乏热情，则无异纸上画饼充饥，无补于事','超级管理员','2019-07-15 00:00:00',0,NULL),(4,NULL,'','如果你还可以努力，可以付出，就不要轻言停止和放弃','超级管理员','2019-07-15 00:00:00',0,NULL),(5,NULL,'','顾客后还有顾客，服务的开始才是销售的开始','超级管理员','2019-07-15 00:00:00',0,NULL);
/*!40000 ALTER TABLE `bgk_jiliyu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_kehu`
--

DROP TABLE IF EXISTS `bgk_kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `chengjiao` varchar(255) DEFAULT '否',
  `type` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `content` text,
  `groupid` int(11) DEFAULT NULL,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `squser` varchar(255) DEFAULT NULL,
  `sqtime` datetime DEFAULT NULL,
  `tg_sqtime` datetime DEFAULT NULL,
  `olduser` varchar(255) DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `share_xinxi` text,
  `drpc` varchar(255) DEFAULT NULL,
  `bao` tinyint(1) DEFAULT NULL,
  `bao_start_time` datetime DEFAULT NULL,
  `last_gendan_time` datetime DEFAULT NULL,
  `last_dingdan_time` datetime DEFAULT NULL,
  `last_hetong_time` datetime DEFAULT NULL,
  `last_shouhou_time` datetime DEFAULT NULL,
  `last_caiwu_time` datetime DEFAULT NULL,
  `tixing_time1` datetime DEFAULT NULL,
  `tixing_time2` datetime DEFAULT NULL,
  `biaoji` varchar(255) DEFAULT NULL,
  `biaoji_yanse` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_kehu`
--

LOCK TABLES `bgk_kehu` WRITE;
/*!40000 ALTER TABLE `bgk_kehu` DISABLE KEYS */;
INSERT INTO `bgk_kehu` VALUES (1,1,'wangjinjin','否','A 重点客户','wangjinjin','15751666969','','','','',NULL,'超级管理员','超级管理员','2021-11-11 13:08:18','2021-11-11 13:08:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 13:08:18',NULL,NULL,NULL,NULL,NULL,'2021-12-10 13:08:18','2022-02-08 13:08:18',NULL,NULL,0,NULL),(2,1,'wangjiji','否','B 普通客户','wangjiji','15751888888','','','','',NULL,'超级管理员','超级管理员','2021-11-11 13:08:51','2021-11-11 13:18:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 13:08:51',NULL,'2021-11-11 13:17:09','2021-11-11 13:18:43',NULL,NULL,'2021-12-10 13:08:51','2022-02-08 13:08:51',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `bgk_kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_linkman`
--

DROP TABLE IF EXISTS `bgk_linkman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_linkman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `zhu` tinyint(1) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `content` text,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_linkman`
--

LOCK TABLES `bgk_linkman` WRITE;
/*!40000 ALTER TABLE `bgk_linkman` DISABLE KEYS */;
INSERT INTO `bgk_linkman` VALUES (1,1,1,1,'wangjinjin','wangjinjin',NULL,NULL,'15751666969','',NULL,NULL,NULL,'超级管理员','超级管理员','2021-11-11 13:08:18',NULL,NULL,NULL,0,NULL),(2,1,1,2,'wangjiji','wangjiji',NULL,NULL,'15751888888','',NULL,NULL,NULL,'超级管理员','超级管理员','2021-11-11 13:08:51',NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `bgk_linkman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_mail`
--

DROP TABLE IF EXISTS `bgk_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '' COMMENT '接收邮箱',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `sendtime` datetime DEFAULT NULL,
  `senduser` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_mail`
--

LOCK TABLES `bgk_mail` WRITE;
/*!40000 ALTER TABLE `bgk_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_menu`
--

DROP TABLE IF EXISTS `bgk_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `parentid` int(11) DEFAULT NULL COMMENT '上级栏目ID',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lever` int(11) DEFAULT NULL,
  `inuse` varchar(255) COLLATE utf8_unicode_ci DEFAULT '是',
  `w_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `w_class` int(11) DEFAULT NULL,
  `w_ordnum` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `ordnum` int(11) DEFAULT '50' COMMENT '排序',
  `m_inuse` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `m_class` int(11) DEFAULT NULL,
  `m_ordnum` int(11) DEFAULT NULL,
  `isicon` tinyint(1) DEFAULT NULL,
  `system` int(11) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parentId` (`parentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_menu`
--

LOCK TABLES `bgk_menu` WRITE;
/*!40000 ALTER TABLE `bgk_menu` DISABLE KEYS */;
INSERT INTO `bgk_menu` VALUES (1,0,'客户管理','fa-users','/index.php/kehu/index','#44abeb','#0cb2ff','','',1,'是','/themes/windows/images/icon/01kehu.png',1,10,2,10,'是',1,10,1,1,0),(2,1,'新增','','',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(3,1,'修改','','',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(4,1,'删除','','',NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(5,1,'共享','','',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(6,1,'转移','','',NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(7,1,'转移到公海','','/themes/free.htm',NULL,NULL,NULL,NULL,7,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(8,1,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,8,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(9,1,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,9,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(11,0,'联系人','fa-vcard-o','/index.php/linkman/index','#44abeb','#14d3af','','',11,'是','/themes/windows/images/icon/02lianxiren.png',1,20,2,20,'是',1,20,0,1,0),(12,11,'新增','','',NULL,NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(13,11,'修改','','',NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(14,11,'删除','','',NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(15,11,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,15,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(16,11,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,16,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(21,0,'跟单管理','fa-fax','/index.php/gendan/index','#44abeb','#7230cd','','',21,'是','/themes/windows/images/icon/03gendan.png',1,30,2,30,'是',1,30,1,1,0),(22,21,'新增','','',NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(23,21,'修改','','',NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(24,21,'删除','','',NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(25,21,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,25,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(26,21,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,26,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(31,0,'订单管理','fa-line-chart','/index.php/dingdan/index','#44abeb','#fda621','','',31,'是','/themes/windows/images/icon/04dingdan.png',1,40,2,40,'是',1,35,1,1,0),(32,31,'新增','','',NULL,NULL,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(33,31,'修改','','',NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(34,31,'删除','','',NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(35,31,'收款','','',NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(36,31,'审核','','',NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(37,31,'产品','','',NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(38,31,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,38,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(39,31,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,39,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(41,0,'合同管理','fa-handshake-o','/index.php/hetong/index','#44abeb','#3a91fc','','',41,'是','/themes/windows/images/icon/05hetong.png',1,50,2,50,'是',1,40,1,1,0),(42,41,'新增','','',NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(43,41,'修改','','',NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(44,41,'删除','','',NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(45,41,'收款','','',NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(46,41,'审核','','',NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(47,41,'续费','','',NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(48,41,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,48,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(49,41,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,49,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(51,0,'售后管理','fa-exclamation-triangle','/index.php/shouhou/index','#44abeb','#fc760a','','',51,'是','/themes/windows/images/icon/06shouhou.png',1,60,2,60,'是',1,50,1,1,0),(52,51,'新增','','',NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(53,51,'修改','','',NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(54,51,'删除','','',NULL,NULL,NULL,NULL,54,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(55,51,'处理','','',NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(56,51,'审核','','',NULL,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(57,51,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,57,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(58,51,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,58,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(61,0,'财务管理','fa-database','/index.php/caiwu/index','#44abeb','#3cc9b5','','',61,'是','/themes/windows/images/icon/07caiwu.png',1,70,2,70,'是',1,60,1,1,0),(62,61,'新增收入','','',NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(63,61,'新增支出','','',NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(64,61,'修改','','',NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(65,61,'删除','','',NULL,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(66,61,'审核','','',NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(67,61,'导入','','/themes/free.htm',NULL,NULL,NULL,NULL,67,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(68,61,'导出','','/themes/free.htm',NULL,NULL,NULL,NULL,68,'否',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(71,0,'客户公海','fa-user-o','/themes/free.htm','#44abeb','#008bf1','','',71,'否','/themes/windows/images/icon/08gonghai.png',1,80,2,80,'是',1,80,1,1,0),(72,71,'新增','','',NULL,NULL,NULL,NULL,72,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(73,71,'修改','','',NULL,NULL,NULL,NULL,73,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(74,71,'删除','','',NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(75,71,'申请','','',NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(76,71,'审核','','',NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(77,71,'导入','','',NULL,NULL,NULL,NULL,77,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(78,71,'导出','','',NULL,NULL,NULL,NULL,78,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(81,0,'回收站','fa-institution','/index.php/huishouzhan','#44abeb','#86a6d9','','',81,'是','/themes/windows/images/icon/09huishouzhan.png',1,90,2,90,'是',1,90,1,1,0),(82,81,'恢复数据','','',NULL,NULL,NULL,NULL,82,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(83,81,'彻底删除','','',NULL,NULL,NULL,NULL,83,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(91,0,'产品列表','fa-th','/index.php/chanpin/index','#44abeb','#bd9a69','','',91,'是','/themes/windows/images/icon/10chanpin.png',1,100,3,10,'是',3,50,1,1,0),(92,91,'新增','','',NULL,NULL,NULL,NULL,92,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(93,91,'修改','','',NULL,NULL,NULL,NULL,93,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(94,91,'删除','','',NULL,NULL,NULL,NULL,94,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(95,91,'采购','','',NULL,NULL,NULL,NULL,95,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(101,0,'产品分类','fa-cogs','/index.php/chanpin/class_','',NULL,'','',101,'是','/themes/windows/images/icon/',NULL,NULL,NULL,20,'是',3,60,1,1,0),(102,101,'新增','','',NULL,NULL,NULL,NULL,102,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(103,101,'修改','','',NULL,NULL,NULL,NULL,103,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(104,101,'删除','','',NULL,NULL,NULL,NULL,104,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(111,0,'内部公告','fa-volume-up','/index.php/gonggao','#44abeb','#ec6b77','','',111,'是','/themes/windows/images/icon/12gonggao.png',1,120,4,10,'是',2,10,1,1,0),(112,111,'新增',NULL,NULL,NULL,NULL,NULL,NULL,112,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(113,111,'修改','','',NULL,NULL,NULL,NULL,113,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(114,111,'删除','','',NULL,NULL,NULL,NULL,114,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(121,0,'工作报告','fa-flag','/themes/free.htm','#44abeb','#f47c06','','',121,'否','/themes/windows/images/icon/13baogao.png',1,130,4,20,'是',2,20,1,1,0),(122,121,'新增','','',NULL,NULL,NULL,NULL,122,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(123,121,'修改','','',NULL,NULL,NULL,NULL,123,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(124,121,'删除','','',NULL,NULL,NULL,NULL,124,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(125,121,'批注','','',NULL,NULL,NULL,NULL,125,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(131,0,'文件管理','fa-folder-open','/themes/free.htm','#44abeb','#c820fd','','',131,'否','/themes/windows/images/icon/14wenjian.png',1,140,4,40,'是',2,30,1,1,0),(132,131,'新增','','',NULL,NULL,NULL,NULL,132,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(133,131,'修改','','',NULL,NULL,NULL,NULL,133,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(134,131,'删除','','',NULL,NULL,NULL,NULL,134,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(141,0,'工资管理','fa-cny','/themes/free.htm','#44abeb','#d1997c','','',141,'否','/themes/windows/images/icon/15gongzi.png',1,150,4,50,'',0,40,1,1,1),(142,141,'个人工资','','',NULL,NULL,NULL,NULL,142,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(143,141,'所有工资',NULL,NULL,NULL,NULL,NULL,NULL,143,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(144,141,'修改数据','','',NULL,NULL,NULL,NULL,144,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(151,0,'邮件管理','fa-envelope-square','/themes/free.htm','#44abeb','#c05ed1','','',151,'否','/themes/windows/images/icon/17youjian.png',1,170,4,70,NULL,NULL,NULL,1,1,0),(152,151,'发送','','',NULL,NULL,NULL,NULL,152,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(153,151,'删除','','',NULL,NULL,NULL,NULL,153,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(161,250,'内部通讯录','fa-address-book-o','/index.php/tongxunlu','#44abeb','#78a3bf','','',161,'是','/themes/windows/images/icon/11tongxunlu.png',1,110,4,30,'是',2,50,1,1,0),(171,250,'快递查询','fa-truck','https://www.bgk100.com/users_links/kuaidi/',NULL,NULL,NULL,NULL,171,NULL,NULL,2,70,NULL,70,NULL,NULL,NULL,1,1,0),(181,0,'数据统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,181,'否',NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,0),(182,181,'数据概况','fa-pie-chart','/themes/free.htm','#44abeb','#f3c006','','',182,'否','/themes/windows/images/icon/18gaikuang.png',1,180,5,10,'是',3,70,1,1,0),(183,181,'客户统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,183,'否',NULL,NULL,NULL,5,20,NULL,NULL,NULL,1,1,0),(184,181,'跟单统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,184,'否',NULL,NULL,NULL,5,30,NULL,NULL,NULL,1,1,0),(185,181,'订单统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,185,'否',NULL,NULL,NULL,5,40,NULL,NULL,NULL,1,1,0),(186,181,'合同统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,186,'否',NULL,NULL,NULL,5,50,NULL,NULL,NULL,1,1,0),(187,181,'售后统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,187,'否',NULL,NULL,NULL,5,60,NULL,NULL,NULL,1,1,0),(188,181,'财务统计','fa-pie-chart','/themes/free.htm',NULL,NULL,NULL,NULL,188,'否',NULL,NULL,NULL,5,70,NULL,NULL,NULL,1,1,0),(191,0,'员工管理','fa-user-circle','/index.php/user/index','#44abeb','#008ff0','','',191,'是','/themes/windows/images/icon/19yuangong.png',1,190,6,10,'是',3,10,1,1,0),(192,191,'新增','','',NULL,NULL,NULL,NULL,192,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(193,191,'修改','','',NULL,NULL,NULL,NULL,193,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(194,191,'删除','','',NULL,NULL,NULL,NULL,194,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(195,191,'部门设置','fa-sitemap','/index.php/set_group',NULL,NULL,NULL,NULL,195,'是',NULL,3,30,6,20,'是',3,20,1,1,0),(196,191,'权限角色','fa-check-circle','/index.php/set_role',NULL,NULL,NULL,NULL,196,'是',NULL,3,40,6,30,'是',3,30,1,1,0),(197,191,'导入','','',NULL,NULL,NULL,NULL,197,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(198,191,'导出','','',NULL,NULL,NULL,NULL,198,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1),(201,0,'系统设置','fa-cog','/index.php/setting',NULL,NULL,'880','500',201,'是',NULL,3,10,7,10,'是',3,10,1,1,0),(202,201,'邮箱设置','fa-envelope-o','/themes/free.htm',NULL,NULL,'880','500',202,'否',NULL,3,60,7,30,NULL,NULL,NULL,1,1,0),(203,201,'短信设置','fa-commenting-o','/themes/free.htm',NULL,NULL,'880','500',203,'否',NULL,3,50,7,20,NULL,NULL,NULL,1,1,0),(204,201,'自定义菜单','fa-television','/themes/free.htm',NULL,NULL,NULL,NULL,204,'否',NULL,3,70,7,40,NULL,NULL,NULL,1,1,0),(205,204,'新增','','',NULL,NULL,NULL,NULL,205,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(206,204,'修改','','',NULL,NULL,NULL,NULL,206,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(207,204,'删除','','',NULL,NULL,NULL,NULL,207,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(208,201,'自定义字段','fa-gears','/index.php/ziduan/index',NULL,NULL,NULL,NULL,208,'是',NULL,3,80,7,50,NULL,NULL,NULL,1,1,0),(209,208,'新增','','',NULL,NULL,NULL,NULL,209,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(210,208,'修改','','',NULL,NULL,NULL,NULL,210,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(211,208,'删除','','',NULL,NULL,NULL,NULL,211,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(221,0,'控制台','fa-home','/index.php/home/work','#44abeb',NULL,'','',221,'是',NULL,NULL,NULL,1,10,NULL,NULL,NULL,1,1,0),(222,221,'消息中心','fa-commenting','/index.php/message',NULL,NULL,'880','500',222,'是',NULL,3,20,1,20,'是',2,5,1,1,0),(223,222,'新增','','',NULL,NULL,NULL,NULL,223,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(224,222,'修改','','',NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(225,222,'删除','','',NULL,NULL,NULL,NULL,225,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(226,221,'个人资料','fa-user-circle','/index.php/user/info',NULL,NULL,'880','500',226,'是',NULL,2,40,1,30,'是',3,30,1,1,0),(227,221,'登录日志','fa-file-text-o','/index.php/userloginlog',NULL,NULL,NULL,NULL,227,'是',NULL,2,50,1,40,'是',3,70,1,1,0),(228,221,'操作日志','fa-file-text-o','/index.php/userlog',NULL,NULL,NULL,NULL,228,'是',NULL,2,60,1,50,'是',3,80,1,1,0),(231,0,'帮助中心','','',NULL,NULL,NULL,NULL,231,'',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(232,231,'使用帮助','fa-info-circle','http://www.bgk100.com/users_links/bangzhu/',NULL,NULL,NULL,NULL,232,'是',NULL,2,80,8,10,NULL,NULL,NULL,1,1,0),(233,231,'问题反馈','fa-info-circle','http://www.bgk100.com/users_links/fankui/',NULL,NULL,NULL,NULL,233,'是',NULL,2,90,8,20,NULL,NULL,NULL,1,1,0),(234,NULL,'','','',NULL,NULL,NULL,NULL,234,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(235,0,'短信管理','fa-envelope-o','/themes/free.htm','#44abeb','#23ad79','','',235,'否','/themes/windows/images/icon/16duanxin.png',1,160,4,60,NULL,NULL,NULL,1,1,0),(236,235,'发送','','',NULL,NULL,NULL,NULL,236,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(237,235,'删除','','',NULL,NULL,NULL,NULL,237,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(238,235,'新增模板','','',NULL,NULL,NULL,NULL,238,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(239,235,'修改模板','','',NULL,NULL,NULL,NULL,239,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(240,235,'删除模板','','',NULL,NULL,NULL,NULL,240,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(250,0,'其它权限','','',NULL,NULL,NULL,NULL,250,'',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(268,250,'xxx','','',NULL,NULL,NULL,NULL,0,'否',NULL,NULL,NULL,NULL,50,'',NULL,NULL,NULL,NULL,0),(1001,71,'显示手机号','','',NULL,NULL,NULL,NULL,1001,'是',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,0),(1002,191,'管理范围','','',NULL,NULL,NULL,NULL,1002,'是',NULL,NULL,NULL,NULL,50,'',NULL,NULL,NULL,NULL,0),(1003,71,'分配','','',NULL,NULL,NULL,NULL,1003,'是',NULL,NULL,NULL,NULL,50,'',NULL,NULL,NULL,NULL,0),(1004,91,'导入','','',NULL,NULL,NULL,NULL,1004,'是',NULL,NULL,NULL,NULL,50,'',NULL,NULL,NULL,NULL,0),(1005,91,'导出','','',NULL,NULL,NULL,NULL,1005,'是',NULL,NULL,NULL,NULL,50,'',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `bgk_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_message`
--

DROP TABLE IF EXISTS `bgk_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `xid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL COMMENT '客户ID',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '' COMMENT '性别',
  `content` text COMMENT '职位',
  `backurl` text COMMENT '手机号',
  `showtime` datetime DEFAULT NULL,
  `show_web` tinyint(1) DEFAULT '0',
  `show_app` tinyint(1) DEFAULT '0',
  `show_dingding` tinyint(1) DEFAULT '0',
  `show_wechat` tinyint(1) DEFAULT '0',
  `isread` tinyint(1) DEFAULT '0',
  `readtime` datetime DEFAULT NULL,
  `reply` text,
  `replytime` datetime DEFAULT NULL,
  `touser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL COMMENT '税率',
  `addtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_message`
--

LOCK TABLES `bgk_message` WRITE;
/*!40000 ALTER TABLE `bgk_message` DISABLE KEYS */;
INSERT INTO `bgk_message` VALUES (1,'login',NULL,NULL,NULL,'欢迎使用帮管客CRM客户管理系统','您好，欢迎使用帮管客CRM客户管理系统，如需使用帮助，请参考https://www.kancloud.cn/a81500/bgkcrm/1201638','','2021-11-11 13:06:57',1,0,0,0,1,'2021-11-11 13:07:18',NULL,NULL,'超级管理员','超级管理员','2021-11-11 13:06:57',0,NULL),(2,'login',NULL,NULL,NULL,'欢迎使用帮管客CRM客户管理系统','您好，欢迎使用帮管客CRM客户管理系统，如需使用帮助，请参考https://www.kancloud.cn/a81500/bgkcrm/1201638','','2021-11-11 13:13:35',0,0,0,0,0,NULL,NULL,NULL,'caiwu001','超级管理员','2021-11-11 13:13:35',0,NULL),(3,'hetong',1,2,'wangjiji','【合同到期提醒】有一个合同将于5天后到期','wangjiji 的合同 HT2021111197661 将于 2021-10-21 到期！','/index.php/hetong','2021-10-16 00:00:00',0,0,0,0,0,NULL,NULL,NULL,'超级管理员','超级管理员','2021-11-11 13:18:43',0,NULL),(4,'login',NULL,NULL,NULL,'欢迎使用帮管客CRM客户管理系统','您好，欢迎使用帮管客CRM客户管理系统，如需使用帮助，请参考https://www.kancloud.cn/a81500/bgkcrm/1201638','','2021-11-11 13:56:15',1,0,0,0,1,'2021-11-11 13:56:36',NULL,NULL,'leader001','超级管理员','2021-11-11 13:56:15',0,NULL),(5,'login',NULL,NULL,NULL,'欢迎使用帮管客CRM客户管理系统','您好，欢迎使用帮管客CRM客户管理系统，如需使用帮助，请参考https://www.kancloud.cn/a81500/bgkcrm/1201638','','2021-11-11 13:58:20',1,0,0,0,1,'2021-11-11 14:00:17',NULL,NULL,'leader002','超级管理员','2021-11-11 13:58:20',0,NULL);
/*!40000 ALTER TABLE `bgk_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_set_group`
--

DROP TABLE IF EXISTS `bgk_set_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_set_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `zhuguan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_set_group`
--

LOCK TABLES `bgk_set_group` WRITE;
/*!40000 ALTER TABLE `bgk_set_group` DISABLE KEYS */;
INSERT INTO `bgk_set_group` VALUES (1,0,'总经办','',0,NULL),(2,0,'业务部','',0,NULL),(3,2,'业务一部','',0,NULL),(4,2,'业务二部','',0,NULL),(5,0,'财务部','',0,NULL),(6,0,'渠道招商部','',0,NULL),(7,0,'客服部','',0,NULL);
/*!40000 ALTER TABLE `bgk_set_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_set_role`
--

DROP TABLE IF EXISTS `bgk_set_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_set_role` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lever` text COLLATE utf8_unicode_ci,
  `right` int(11) DEFAULT '0',
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_set_role`
--

LOCK TABLES `bgk_set_role` WRITE;
/*!40000 ALTER TABLE `bgk_set_role` DISABLE KEYS */;
INSERT INTO `bgk_set_role` VALUES (1,'总经理','1,2,3,4,5,6,7,8,9,11,12,13,14,21,22,23,24,26,31,32,33,34,35,36,37,39,41,42,43,44,45,46,47,49,51,52,53,54,55,56,58,61,62,63,64,65,66,68,71,72,73,74,75,76,77,78,1001,81,82,83,91,92,93,94,95,101,102,103,104,111,112,113,114,121,122,123,124,125,131,132,133,134,151,152,153,161,171,181,182,183,184,185,186,187,188,191,192,193,194,195,196,202,203,204,208,221,222,226,227,228,231,232,233,235,236,237,238,239,240',NULL,0,NULL),(2,'部门主管','1,2,3,5,6,7,8,9,11,12,13,21,22,23,26,31,32,33,35,36,37,39,41,42,43,45,46,47,49,51,52,53,55,56,58,61,62,63,64,66,68,71,72,73,75,76,77,78,1001,81,82,91,92,93,101,102,103,111,112,113,121,122,123,125,131,132,133,151,152,161,171,181,182,183,184,185,186,187,188,191,192,221,222,226,227,228,231,232,233,235,236,238,239',0,0,NULL),(3,'销售人员','1,2,3,5,6,7,11,12,13,21,22,23,31,32,33,41,42,43,47,51,52,53,61,62,63,64,71,72,73,74,75,81,91,92,101,102,111,121,122,123,131,132,133,151,152,161,171,181,182,221,222,226,227,228,231,232,233,235,236,238',0,0,NULL),(4,'售后人员','1,2,9,21,31,41,51,52,53,54,55,56,58,61,71,72,73,74,75,76,77,78,1001,81,131,151,161,171,181,187,191,221,222,226,227,228,231,232,233,235,236,238',0,0,NULL),(5,'客服','1,2,3,9,11,12,13,21,22,31,32,41,42,51,52,61,62,63,111,112,121,122,123,131,132,161,171,181,182,183,184,185,186,187,188,221,222,226,227,228,231,232,233,235,236,238,239',0,0,NULL);
/*!40000 ALTER TABLE `bgk_set_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_shouhou`
--

DROP TABLE IF EXISTS `bgk_shouhou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_shouhou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weizhi` tinyint(4) DEFAULT '1',
  `cid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `linkman` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `content` text,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `issolve` varchar(255) DEFAULT '否',
  `solvecontent` text,
  `nowuser` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT '',
  `updtime` datetime DEFAULT NULL,
  `isshare` varchar(255) DEFAULT NULL,
  `share_users` text,
  `biaoji` varchar(255) DEFAULT NULL,
  `biaoji_yanse` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='售后服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_shouhou`
--

LOCK TABLES `bgk_shouhou` WRITE;
/*!40000 ALTER TABLE `bgk_shouhou` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_shouhou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_sms`
--

DROP TABLE IF EXISTS `bgk_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `content` text,
  `sendtime` datetime DEFAULT NULL,
  `senduser` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_sms`
--

LOCK TABLES `bgk_sms` WRITE;
/*!40000 ALTER TABLE `bgk_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_sms_log_send`
--

DROP TABLE IF EXISTS `bgk_sms_log_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_sms_log_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smsid` int(11) DEFAULT NULL,
  `smsuser` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `mobile` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `sendurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL,
  `backjson` text COLLATE utf8_unicode_ci,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_sms_log_send`
--

LOCK TABLES `bgk_sms_log_send` WRITE;
/*!40000 ALTER TABLE `bgk_sms_log_send` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_sms_log_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_sms_template`
--

DROP TABLE IF EXISTS `bgk_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mbid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `state` tinyint(1) DEFAULT '0',
  `backjson` text,
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_sms_template`
--

LOCK TABLES `bgk_sms_template` WRITE;
/*!40000 ALTER TABLE `bgk_sms_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgk_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_theme`
--

DROP TABLE IF EXISTS `bgk_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `yulan` text,
  `bgurl` text,
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='主题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_theme`
--

LOCK TABLES `bgk_theme` WRITE;
/*!40000 ALTER TABLE `bgk_theme` DISABLE KEYS */;
INSERT INTO `bgk_theme` VALUES (1,'1','/themes/windows/images/bg/bg1_yulan.jpg','/themes/windows/images/bg/bg1.jpg',0,NULL),(2,'2','/themes/windows/images/bg/bg2_yulan.jpg','/themes/windows/images/bg/bg2.jpg',0,NULL),(3,'3','/themes/windows/images/bg/bg3_yulan.jpg','/themes/windows/images/bg/bg3.jpg',0,NULL),(4,'4','/themes/windows/images/bg/bg4_yulan.jpg','/themes/windows/images/bg/bg4.jpg',0,NULL),(5,'5','/themes/windows/images/bg/bg5_yulan.jpg','/themes/windows/images/bg/bg5.jpg',0,NULL),(6,'6','/themes/windows/images/bg/bg6_yulan.jpg','/themes/windows/images/bg/bg6.jpg',0,NULL),(7,'7','/themes/windows/images/bg/bg7_yulan.jpg','/themes/windows/images/bg/bg7.jpg',0,NULL),(8,'8','/themes/windows/images/bg/bg8_yulan.jpg','/themes/windows/images/bg/bg8.jpg',0,NULL);
/*!40000 ALTER TABLE `bgk_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_todolist`
--

DROP TABLE IF EXISTS `bgk_todolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `done` tinyint(1) DEFAULT '0',
  `donetime` datetime DEFAULT NULL,
  `adduser` varchar(255) DEFAULT '',
  `addtime` datetime DEFAULT NULL,
  `updtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_todolist`
--

LOCK TABLES `bgk_todolist` WRITE;
/*!40000 ALTER TABLE `bgk_todolist` DISABLE KEYS */;
INSERT INTO `bgk_todolist` VALUES (1,'做好新的项目的支持工作',0,NULL,'超级管理员','2021-11-11 13:09:29',NULL,1),(2,'SELECT * FROM user WHERE username=\\\'admin\\\' AND password=\\\'passwd\\\'',0,NULL,'leader001','2021-11-11 14:05:09',NULL,1);
/*!40000 ALTER TABLE `bgk_todolist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_user`
--

DROP TABLE IF EXISTS `bgk_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpwd` varchar(255) DEFAULT NULL,
  `groupid` int(11) DEFAULT '0',
  `roleid` tinyint(1) DEFAULT '1',
  `lever` text,
  `manage` text,
  `iszhuguan` varchar(255) DEFAULT '0',
  `maxnum` int(11) DEFAULT '0',
  `maxnum_paichu_cj` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `avatar` text,
  `theme` varchar(255) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `desk_todolist` tinyint(1) DEFAULT NULL,
  `desk_done_last` tinyint(1) DEFAULT NULL,
  `hasim` tinyint(1) DEFAULT '1',
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `isdel` tinyint(1) DEFAULT '0',
  `deltime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_user`
--

LOCK TABLES `bgk_user` WRITE;
/*!40000 ALTER TABLE `bgk_user` DISABLE KEYS */;
INSERT INTO `bgk_user` VALUES (1,'超级管理员','admin','49308bda8b5e0ab9688ec4bedf6d572c',1,0,NULL,NULL,'0',0,NULL,'','','/themes/default/images/avatar.png',NULL,NULL,NULL,NULL,NULL,1,NULL,'2021-11-11 13:06:43',1,0,NULL),(2,'leader001','leader001','e10adc3949ba59abbe56e057f20f883e',1,2,'1,2,3,5,6,7,8,9,11,12,13,21,22,23,26,31,32,33,35,36,37,39,41,42,43,45,46,47,49,51,52,53,55,56,58,61,62,63,64,66,68,71,72,73,75,76,77,78,1001,81,82,91,92,93,101,102,103,111,112,113,121,122,123,125,131,132,133,151,152,161,171,181,182,183,184,185,186,187,188,191,192,221,222,226,227,228,231,232,233,235,236,238,239',NULL,'是',0,'是','','','/themes/default/images/avatar.png',NULL,NULL,NULL,NULL,NULL,1,NULL,'2021-11-11 13:10:50',1,0,NULL),(3,'leader002','leader002','e10adc3949ba59abbe56e057f20f883e',5,2,'1,2,3,5,6,7,8,9,11,12,13,21,22,23,26,31,32,33,35,36,37,39,41,42,43,45,46,47,49,51,52,53,55,56,58,61,62,63,64,66,68,71,72,73,75,76,77,78,1001,81,82,91,92,93,101,102,103,111,112,113,121,122,123,125,131,132,133,151,152,161,171,181,182,183,184,185,186,187,188,191,192,221,222,226,227,228,231,232,233,235,236,238,239',NULL,'是',0,'否','','','/themes/default/images/avatar.png',NULL,NULL,NULL,NULL,NULL,1,NULL,'2021-11-11 13:12:00',1,0,NULL),(4,'caiwu001','caiwu001','e10adc3949ba59abbe56e057f20f883e',5,4,'1,2,9,21,31,41,51,52,53,54,55,56,58,61,71,72,73,74,75,76,77,78,1001,81,131,151,161,171,181,187,191,221,222,226,227,228,231,232,233,235,236,238',NULL,'否',0,'否','','','/themes/default/images/avatar.png',NULL,NULL,NULL,NULL,NULL,1,NULL,'2021-11-11 13:12:45',1,0,NULL);
/*!40000 ALTER TABLE `bgk_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_userlog`
--

DROP TABLE IF EXISTS `bgk_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT '',
  `xid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `action` varchar(255) DEFAULT '',
  `reason` text,
  `ip` varchar(255) DEFAULT '',
  `adduser` varchar(255) DEFAULT '',
  `addtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_userlog`
--

LOCK TABLES `bgk_userlog` WRITE;
/*!40000 ALTER TABLE `bgk_userlog` DISABLE KEYS */;
INSERT INTO `bgk_userlog` VALUES (1,'客户',1,1,'wangjinjin','新增','备注：','172.16.29.89','超级管理员','2021-11-11 13:08:18',0),(2,'客户',2,2,'wangjiji','新增','备注：','172.16.29.89','超级管理员','2021-11-11 13:08:51',0),(3,'员工',NULL,NULL,NULL,'新增','新增员工账号：leader001 (leader001)','172.16.29.89','超级管理员','2021-11-11 13:10:50',0),(4,'员工',NULL,NULL,NULL,'新增','新增员工账号：leader002 (leader002)','172.16.29.89','超级管理员','2021-11-11 13:12:00',0),(5,'员工',NULL,NULL,NULL,'新增','新增员工账号：caiwu001 (caiwu001)','172.16.29.89','超级管理员','2021-11-11 13:12:45',0),(6,'订单',1,2,'wangjiji','新增','订单备注：尾款一月内还清','172.16.29.89','超级管理员','2021-11-11 13:15:20',0),(7,'订单',2,2,'wangjiji','新增','订单备注：','172.16.29.89','超级管理员','2021-11-11 13:17:09',0),(8,'合同',1,2,'wangjiji','新增','合同备注：','172.16.29.89','超级管理员','2021-11-11 13:18:43',0);
/*!40000 ALTER TABLE `bgk_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_userloginlog`
--

DROP TABLE IF EXISTS `bgk_userloginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_userloginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT '',
  `addtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_userloginlog`
--

LOCK TABLES `bgk_userloginlog` WRITE;
/*!40000 ALTER TABLE `bgk_userloginlog` DISABLE KEYS */;
INSERT INTO `bgk_userloginlog` VALUES (1,'172.16.29.89','pc','超级管理员','2021-11-11 13:06:57',0),(2,'172.16.29.89','pc','caiwu001','2021-11-11 13:13:35',0),(3,'172.16.29.89','pc','超级管理员','2021-11-11 13:14:10',0),(4,'172.16.29.115','pc','超级管理员','2021-11-11 13:20:40',0),(5,'172.16.29.45','pc','leader001','2021-11-11 13:56:15',0),(6,'172.16.29.115','pc','leader001','2021-11-11 13:58:17',0),(7,'172.16.29.115','pc','leader002','2021-11-11 13:58:20',0),(8,'172.16.29.115','pc','leader001','2021-11-11 13:59:22',0),(9,'172.16.29.45','pc','leader002','2021-11-11 13:59:55',0),(10,'172.16.29.45','pc','leader001','2021-11-11 14:01:13',0),(11,'172.16.29.10','pc','leader001','2021-11-11 14:03:24',0),(12,'172.16.29.10','pc','leader001','2021-11-11 14:03:24',0),(13,'172.16.29.45','pc','leader001','2021-11-11 14:04:30',0),(14,'172.16.29.146','pc','leader001','2021-11-11 14:04:33',0),(15,'172.16.29.60','pc','leader001','2021-11-11 14:07:05',0);
/*!40000 ALTER TABLE `bgk_userloginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgk_ziduan`
--

DROP TABLE IF EXISTS `bgk_ziduan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgk_ziduan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `glzd_kehu` text,
  `default_val` text,
  `tip` varchar(255) DEFAULT NULL,
  `maxlimit` int(11) DEFAULT NULL,
  `inuse` varchar(255) DEFAULT NULL,
  `xitong` tinyint(1) DEFAULT '0',
  `guding` tinyint(1) DEFAULT '0',
  `biaodan` tinyint(1) DEFAULT NULL,
  `bitian` tinyint(1) DEFAULT NULL,
  `bd_teshu` tinyint(1) DEFAULT NULL,
  `liebiao` tinyint(1) DEFAULT NULL,
  `lb_teshu` tinyint(1) DEFAULT '0',
  `sousuo` tinyint(1) DEFAULT NULL COMMENT '1 =，2 like，3 datetime',
  `ss_style` tinyint(1) DEFAULT NULL,
  `dao` tinyint(1) DEFAULT '1',
  `lie_width` int(11) DEFAULT NULL,
  `qx_lock` tinyint(4) DEFAULT '0',
  `qx_view` text,
  `qx_add` text,
  `qx_edit` text,
  `ord` int(11) DEFAULT '50',
  `adduser` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgk_ziduan`
--

LOCK TABLES `bgk_ziduan` WRITE;
/*!40000 ALTER TABLE `bgk_ziduan` DISABLE KEYS */;
INSERT INTO `bgk_ziduan` VALUES (1,'kehu','客户名称','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(2,'kehu','是否成交','chengjiao','yes','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,0,NULL,1,1,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(3,'kehu','客户分类','type','select','A 重点客户|B 普通客户|C 低质量客户|D 开发中',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(4,'kehu','联系人','linkman','text','',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(5,'kehu','手机号码','mobile','text','',NULL,NULL,'',NULL,'是',1,0,1,1,1,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(6,'kehu','电子邮箱','email','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,0,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(7,'kehu','所在地区','area','area',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(8,'kehu','详细地址','address','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,0,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(9,'kehu','备注','content','textarea','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(10,'kehu','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,1,NULL,1,3,0,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(11,'kehu','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,0,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(12,'kehu','创建者','adduser','users','',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,0,NULL,1,1,0,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(13,'kehu','业务员','nowuser','users','',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(14,'linkman','客户名称','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(15,'linkman','联系人','linkman','text',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(16,'linkman','性别','sex','select','先生|女士',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(17,'linkman','职位','job','select','老板|董事长|总经理|项目负责人|业务员|技术员|未知',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(18,'linkman','手机号','mobile','text',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,1,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(19,'linkman','邮箱','email','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(20,'linkman','QQ','qq','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(21,'linkman','生日','birthday','datetime','yyyy-MM-dd',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(22,'linkman','备注','content','textarea','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(23,'linkman','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(24,'linkman','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(25,'linkman','创建者','adduser','users','',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,0,NULL,1,1,0,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(26,'linkman','业务员','nowuser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(27,'gendan','客户名称','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(28,'gendan','跟单联系人','linkman','linkman','',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(29,'gendan','跟单方式','type','select','电话跟进|上门拜访|QQ交谈|Email邮件',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(30,'gendan','跟单进度','state','select','结束跟单|初次沟通|有意向|考虑购买',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(31,'gendan','下次联系','nexttime','datetime','yyyy-MM-dd HH:mm',NULL,NULL,NULL,NULL,'是',1,0,1,0,1,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(32,'gendan','备注','content','textarea','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(33,'gendan','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(34,'gendan','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(35,'gendan','创建者','adduser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,1,0,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(36,'gendan','业务员','nowuser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(37,'dingdan','客户名称','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(38,'dingdan','联系人','linkman','linkman','',NULL,NULL,'',NULL,'是',1,1,1,0,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(39,'dingdan','订单编号','number','text','',NULL,NULL,'',NULL,'是',1,0,1,1,1,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(40,'dingdan','下单日期','stime','datetime','yyyy-MM-dd',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(41,'dingdan','交单日期','etime','datetime','yyyy-MM-dd',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(42,'dingdan','总金额','money','money',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(43,'dingdan','已收款','ysmoney','money',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(44,'dingdan','欠款','qkmoney','money',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,1,1,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,50,NULL,NULL,0),(45,'dingdan','备注','content','textarea','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(46,'dingdan','审核','shenhe','radio','订单有效|订单无效|待审',NULL,'待审',NULL,NULL,'是',1,0,0,0,NULL,1,1,1,1,1,NULL,1,NULL,NULL,NULL,200,NULL,NULL,0),(47,'dingdan','审核备注','shenhebeizhu','textarea',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,0,NULL,1,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,200,NULL,NULL,0),(48,'dingdan','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(49,'dingdan','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(50,'dingdan','创建者','adduser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(51,'dingdan','业务员','nowuser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(52,'hetong','客户名称','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(53,'hetong','联系人','linkman','linkman','',NULL,NULL,'',NULL,'是',1,1,1,0,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(54,'hetong','合同分类','type','select','买卖|租赁|工程|技术|委托',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(55,'hetong','合同编号','number','text','',NULL,NULL,'',NULL,'是',1,0,1,1,1,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(56,'hetong','开始日期','stime','datetime','yyyy-MM-dd',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(57,'hetong','结束日期','etime','datetime','yyyy-MM-dd',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(58,'hetong','合同金额','money','money',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(59,'hetong','已收款','ysmoney','money',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(60,'hetong','欠款','qkmoney','money',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,1,1,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,50,NULL,NULL,0),(61,'hetong','备注','content','textarea','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(62,'hetong','附件','fujian','upload_file','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(63,'hetong','审核','shenhe','radio','合同有效|合同无效|待审',NULL,'待审',NULL,NULL,'是',1,0,0,1,NULL,1,1,1,1,1,NULL,1,NULL,NULL,NULL,200,NULL,NULL,0),(64,'hetong','审核备注','shenhebeizhu','text',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,200,NULL,NULL,0),(65,'hetong','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(66,'hetong','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(67,'hetong','创建者','adduser','users','',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,0,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(68,'hetong','操作员','nowuser','users','',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(69,'shouhou','客户名称','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(70,'shouhou','联系人','linkman','linkman','',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(71,'shouhou','问题分类','type','select','质量问题|操作问题|其它问题',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(72,'shouhou','反馈问题','title','text','',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(73,'shouhou','问题描述','content','textarea','',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(74,'shouhou','反馈日期','stime','datetime','yyyy-MM-dd',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,3,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(75,'shouhou','是否处理','issolve','yes',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,0,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,100,NULL,NULL,0),(76,'shouhou','处理日期','etime','datetime','yyyy-MM-dd',NULL,NULL,NULL,NULL,'是',1,0,1,0,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,100,NULL,NULL,0),(77,'shouhou','处理结果','solvecontent','textarea',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,0,NULL,1,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,100,NULL,NULL,0),(78,'shouhou','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(79,'shouhou','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(80,'shouhou','创建者','adduser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(81,'shouhou','业务员','nowuser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(82,'caiwu','关联客户','name','text','',NULL,NULL,'',NULL,'是',1,1,1,1,1,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(83,'caiwu','关联项目','model','text','',NULL,NULL,'',NULL,'是',1,1,1,0,1,1,1,NULL,NULL,0,NULL,0,NULL,NULL,NULL,30,NULL,NULL,0),(84,'caiwu','关联id','xid','text','',NULL,NULL,'',NULL,'是',1,1,1,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(85,'caiwu','收入/支出','outin','yes',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,1,1,1,1,1,1,NULL,1,NULL,NULL,NULL,50,NULL,NULL,0),(86,'caiwu','收支类别','type','text','',NULL,NULL,'',NULL,'是',1,0,1,0,0,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(87,'caiwu','收入类别','type1','select','订单款|合同款|维护费|产品续费|其它',NULL,NULL,'',NULL,'是',1,0,1,0,0,1,1,1,1,0,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(88,'caiwu','支出类别','type0','select','交通费|通讯费|餐饮住宿|赠送礼品|采购|其它',NULL,NULL,'',NULL,'是',1,0,1,0,0,1,1,1,1,0,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(89,'caiwu','收支金额','money','money',NULL,NULL,NULL,'[金额确定后无法修改]',NULL,'是',1,0,1,1,1,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(90,'caiwu','备注','content','textarea',NULL,NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(91,'caiwu','收支方式','szfs','select','现金|对公账户|支付宝|微信|其它',NULL,NULL,'',NULL,'是',1,0,1,0,0,1,1,1,1,0,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(92,'caiwu','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(93,'caiwu','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(94,'caiwu','创建者','adduser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(95,'caiwu','业务员','nowuser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(96,'chanpin','产品大类','class1','text','',NULL,NULL,'',NULL,'是',1,0,1,1,1,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,0,NULL,NULL,0),(97,'chanpin','产品小类','class2','text','',NULL,NULL,'',NULL,'是',1,0,1,1,1,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,0,NULL,NULL,0),(98,'chanpin','产品名称','name','text','',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,0,NULL,1,2,1,NULL,1,NULL,NULL,NULL,0,NULL,NULL,0),(99,'chanpin','缩略图','pic','upload_img','',NULL,NULL,'',NULL,'是',1,0,1,0,1,1,1,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(100,'chanpin','型号','xinghao','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(101,'chanpin','规格','guige','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(102,'chanpin','单位','danwei','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(103,'chanpin','库存数量','kucun','text','',NULL,NULL,'',NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(104,'chanpin','库存预警','kucunyujing','text','',NULL,NULL,'',NULL,'是',1,0,1,0,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(105,'chanpin','成本价','chengben','text','',NULL,NULL,NULL,NULL,'是',1,0,1,0,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(106,'chanpin','售价','shoujia','text','',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(107,'chanpin','备注','content','textarea','',NULL,NULL,NULL,NULL,'是',1,0,1,0,NULL,1,NULL,1,2,1,NULL,0,NULL,NULL,NULL,100,NULL,NULL,0),(108,'chanpin','录入时间','addtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,1,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(109,'chanpin','更新时间','updtime','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,3,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(110,'chanpin','创建者','adduser','users',NULL,NULL,NULL,NULL,NULL,'是',1,0,0,1,NULL,0,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(111,'chanpin','业务员','nowuser','users','',NULL,NULL,'',NULL,'是',1,0,0,1,NULL,1,NULL,1,1,1,NULL,1,NULL,NULL,NULL,999,NULL,NULL,0),(112,'caiwu','项目编号','xcode','text','',NULL,NULL,'',NULL,'是',1,1,1,0,1,1,0,1,1,1,NULL,0,NULL,NULL,NULL,40,'',NULL,0),(113,'gonggao','公告分类','class','select','公司公告|规章制度',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(114,'files','文件分类','class','select','我的文件|工作存档',NULL,NULL,NULL,NULL,'是',1,0,1,1,NULL,1,NULL,1,1,1,NULL,0,NULL,NULL,NULL,50,NULL,NULL,0),(115,'kehu','最后跟单时间','last_gendan_time','datetime','yyyy-MM-dd HH:mm:ss',NULL,NULL,NULL,NULL,'是',1,0,0,0,1,0,0,1,3,0,NULL,0,NULL,NULL,NULL,999,NULL,NULL,0);
/*!40000 ALTER TABLE `bgk_ziduan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 14:15:57
