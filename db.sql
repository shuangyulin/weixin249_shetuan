-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmpl93x
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssmpl93x`
--

/*!40000 DROP DATABASE IF EXISTS `ssmpl93x`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmpl93x` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmpl93x`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshetuanhuodong`
--

DROP TABLE IF EXISTS `discussshetuanhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='社团活动评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshetuanhuodong`
--

LOCK TABLES `discussshetuanhuodong` WRITE;
/*!40000 ALTER TABLE `discussshetuanhuodong` DISABLE KEYS */;
INSERT INTO `discussshetuanhuodong` VALUES (111,'2022-05-07 09:18:15',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-05-07 09:18:15',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-05-07 09:18:15',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-05-07 09:18:15',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-05-07 09:18:15',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-05-07 09:18:15',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshetuanhuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshetuanxinxi`
--

DROP TABLE IF EXISTS `discussshetuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社团信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshetuanxinxi`
--

LOCK TABLES `discussshetuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussshetuanxinxi` DISABLE KEYS */;
INSERT INTO `discussshetuanxinxi` VALUES (101,'2022-05-07 09:18:15',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-05-07 09:18:15',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-05-07 09:18:15',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-05-07 09:18:15',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-05-07 09:18:15',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-05-07 09:18:15',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshetuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `baomingshuoming` longtext COMMENT '报名说明',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (61,'2022-05-07 09:18:15','活动名称1','活动类型1','活动地点1','2022-05-07 17:18:15','报名说明1','upload/huodongbaoming_huodongtupian1.jpg','社团编号1','账号1','姓名1','是','',1),(62,'2022-05-07 09:18:15','活动名称2','活动类型2','活动地点2','2022-05-07 17:18:15','报名说明2','upload/huodongbaoming_huodongtupian2.jpg','社团编号2','账号2','姓名2','是','',2),(63,'2022-05-07 09:18:15','活动名称3','活动类型3','活动地点3','2022-05-07 17:18:15','报名说明3','upload/huodongbaoming_huodongtupian3.jpg','社团编号3','账号3','姓名3','是','',3),(64,'2022-05-07 09:18:15','活动名称4','活动类型4','活动地点4','2022-05-07 17:18:15','报名说明4','upload/huodongbaoming_huodongtupian4.jpg','社团编号4','账号4','姓名4','是','',4),(65,'2022-05-07 09:18:15','活动名称5','活动类型5','活动地点5','2022-05-07 17:18:15','报名说明5','upload/huodongbaoming_huodongtupian5.jpg','社团编号5','账号5','姓名5','是','',5),(66,'2022-05-07 09:18:15','活动名称6','活动类型6','活动地点6','2022-05-07 17:18:15','报名说明6','upload/huodongbaoming_huodongtupian6.jpg','社团编号6','账号6','姓名6','是','',6);
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongfenlei`
--

DROP TABLE IF EXISTS `huodongfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='活动分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongfenlei`
--

LOCK TABLES `huodongfenlei` WRITE;
/*!40000 ALTER TABLE `huodongfenlei` DISABLE KEYS */;
INSERT INTO `huodongfenlei` VALUES (81,'2022-05-07 09:18:15','类型1'),(82,'2022-05-07 09:18:15','类型2'),(83,'2022-05-07 09:18:15','类型3'),(84,'2022-05-07 09:18:15','类型4'),(85,'2022-05-07 09:18:15','类型5'),(86,'2022-05-07 09:18:15','类型6');
/*!40000 ALTER TABLE `huodongfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuan`
--

DROP TABLE IF EXISTS `shetuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) NOT NULL COMMENT '社团编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `shetuandizhi` varchar(200) DEFAULT NULL COMMENT '社团地址',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `shetuandianhua` varchar(200) DEFAULT NULL COMMENT '社团电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shetuanbianhao` (`shetuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='社团';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuan`
--

LOCK TABLES `shetuan` WRITE;
/*!40000 ALTER TABLE `shetuan` DISABLE KEYS */;
INSERT INTO `shetuan` VALUES (21,'2022-05-07 09:18:15','社团编号1','123456','社团名称1','社团地址1','社长姓名1','13823888881'),(22,'2022-05-07 09:18:15','社团编号2','123456','社团名称2','社团地址2','社长姓名2','13823888882'),(23,'2022-05-07 09:18:15','社团编号3','123456','社团名称3','社团地址3','社长姓名3','13823888883'),(24,'2022-05-07 09:18:15','社团编号4','123456','社团名称4','社团地址4','社长姓名4','13823888884'),(25,'2022-05-07 09:18:15','社团编号5','123456','社团名称5','社团地址5','社长姓名5','13823888885'),(26,'2022-05-07 09:18:15','社团编号6','123456','社团名称6','社团地址6','社长姓名6','13823888886');
/*!40000 ALTER TABLE `shetuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanfenlei`
--

DROP TABLE IF EXISTS `shetuanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='社团分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanfenlei`
--

LOCK TABLES `shetuanfenlei` WRITE;
/*!40000 ALTER TABLE `shetuanfenlei` DISABLE KEYS */;
INSERT INTO `shetuanfenlei` VALUES (71,'2022-05-07 09:18:15','类型1'),(72,'2022-05-07 09:18:15','类型2'),(73,'2022-05-07 09:18:15','类型3'),(74,'2022-05-07 09:18:15','类型4'),(75,'2022-05-07 09:18:15','类型5'),(76,'2022-05-07 09:18:15','类型6');
/*!40000 ALTER TABLE `shetuanfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanhuodong`
--

DROP TABLE IF EXISTS `shetuanhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongzhuangtai` varchar(200) DEFAULT NULL COMMENT '活动状态',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='社团活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanhuodong`
--

LOCK TABLES `shetuanhuodong` WRITE;
/*!40000 ALTER TABLE `shetuanhuodong` DISABLE KEYS */;
INSERT INTO `shetuanhuodong` VALUES (51,'2022-05-07 09:18:15','活动名称1','活动类型1','活动地点1','活动时间1','已结束','活动内容1','upload/shetuanhuodong_huodongtupian1.jpg','社团编号1','社团名称1','是','','2022-05-07 17:18:15',1),(52,'2022-05-07 09:18:15','活动名称2','活动类型2','活动地点2','活动时间2','已结束','活动内容2','upload/shetuanhuodong_huodongtupian2.jpg','社团编号2','社团名称2','是','','2022-05-07 17:18:15',2),(53,'2022-05-07 09:18:15','活动名称3','活动类型3','活动地点3','活动时间3','已结束','活动内容3','upload/shetuanhuodong_huodongtupian3.jpg','社团编号3','社团名称3','是','','2022-05-07 17:18:15',3),(54,'2022-05-07 09:18:15','活动名称4','活动类型4','活动地点4','活动时间4','已结束','活动内容4','upload/shetuanhuodong_huodongtupian4.jpg','社团编号4','社团名称4','是','','2022-05-07 17:18:15',4),(55,'2022-05-07 09:18:15','活动名称5','活动类型5','活动地点5','活动时间5','已结束','活动内容5','upload/shetuanhuodong_huodongtupian5.jpg','社团编号5','社团名称5','是','','2022-05-07 17:18:15',5),(56,'2022-05-07 09:18:15','活动名称6','活动类型6','活动地点6','活动时间6','已结束','活动内容6','upload/shetuanhuodong_huodongtupian6.jpg','社团编号6','社团名称6','是','','2022-05-07 17:20:25',7);
/*!40000 ALTER TABLE `shetuanhuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanshenqing`
--

DROP TABLE IF EXISTS `shetuanshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shetuanleixing` varchar(200) DEFAULT NULL COMMENT '社团类型',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `shenqingshuoming` longtext COMMENT '申请说明',
  `shetuantupian` varchar(200) DEFAULT NULL COMMENT '社团图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='社团申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanshenqing`
--

LOCK TABLES `shetuanshenqing` WRITE;
/*!40000 ALTER TABLE `shetuanshenqing` DISABLE KEYS */;
INSERT INTO `shetuanshenqing` VALUES (41,'2022-05-07 09:18:15','社团编号1','社团名称1','社团类型1','2022-05-07 17:18:15','申请说明1','upload/shetuanshenqing_shetuantupian1.jpg','账号1','姓名1','是','',1),(42,'2022-05-07 09:18:15','社团编号2','社团名称2','社团类型2','2022-05-07 17:18:15','申请说明2','upload/shetuanshenqing_shetuantupian2.jpg','账号2','姓名2','是','',2),(43,'2022-05-07 09:18:15','社团编号3','社团名称3','社团类型3','2022-05-07 17:18:15','申请说明3','upload/shetuanshenqing_shetuantupian3.jpg','账号3','姓名3','是','',3),(44,'2022-05-07 09:18:15','社团编号4','社团名称4','社团类型4','2022-05-07 17:18:15','申请说明4','upload/shetuanshenqing_shetuantupian4.jpg','账号4','姓名4','是','',4),(45,'2022-05-07 09:18:15','社团编号5','社团名称5','社团类型5','2022-05-07 17:18:15','申请说明5','upload/shetuanshenqing_shetuantupian5.jpg','账号5','姓名5','是','',5),(46,'2022-05-07 09:18:15','社团编号6','社团名称6','社团类型6','2022-05-07 17:18:15','申请说明6','upload/shetuanshenqing_shetuantupian6.jpg','账号6','姓名6','是','',6);
/*!40000 ALTER TABLE `shetuanshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanxinxi`
--

DROP TABLE IF EXISTS `shetuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shetuanleixing` varchar(200) DEFAULT NULL COMMENT '社团类型',
  `shetuandizhi` varchar(200) DEFAULT NULL COMMENT '社团地址',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `shetuandianhua` varchar(200) DEFAULT NULL COMMENT '社团电话',
  `shetuanjieshao` longtext COMMENT '社团介绍',
  `shetuantupian` varchar(200) DEFAULT NULL COMMENT '社团图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='社团信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanxinxi`
--

LOCK TABLES `shetuanxinxi` WRITE;
/*!40000 ALTER TABLE `shetuanxinxi` DISABLE KEYS */;
INSERT INTO `shetuanxinxi` VALUES (31,'2022-05-07 09:18:15','社团编号1','社团名称1','社团类型1','社团地址1','社长姓名1','13823888881','社团介绍1','upload/shetuanxinxi_shetuantupian1.jpg','是','','2022-05-07 17:20:15',3),(32,'2022-05-07 09:18:15','社团编号2','社团名称2','社团类型2','社团地址2','社长姓名2','13823888882','社团介绍2','upload/shetuanxinxi_shetuantupian2.jpg','是','','2022-05-07 17:18:15',2),(33,'2022-05-07 09:18:15','社团编号3','社团名称3','社团类型3','社团地址3','社长姓名3','13823888883','社团介绍3','upload/shetuanxinxi_shetuantupian3.jpg','是','','2022-05-07 17:18:15',3),(34,'2022-05-07 09:18:15','社团编号4','社团名称4','社团类型4','社团地址4','社长姓名4','13823888884','社团介绍4','upload/shetuanxinxi_shetuantupian4.jpg','是','','2022-05-07 17:18:15',4),(35,'2022-05-07 09:18:15','社团编号5','社团名称5','社团类型5','社团地址5','社长姓名5','13823888885','社团介绍5','upload/shetuanxinxi_shetuantupian5.jpg','是','','2022-05-07 17:18:15',5),(36,'2022-05-07 09:18:15','社团编号6','社团名称6','社团类型6','社团地址6','社长姓名6','13823888886','社团介绍6','upload/shetuanxinxi_shetuantupian6.jpg','是','','2022-05-07 17:18:15',6);
/*!40000 ALTER TABLE `shetuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1651915186020,'111','yonghu','用户','ob0as3kxd0ixj6hbh0k26xudrgao74bz','2022-05-07 09:19:51','2022-05-07 10:19:51');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-07 09:18:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1651915186021 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-05-07 09:18:15','账号1','123456','姓名1','男','13823888881','upload/yonghu_touxiang1.jpg'),(12,'2022-05-07 09:18:15','账号2','123456','姓名2','男','13823888882','upload/yonghu_touxiang2.jpg'),(13,'2022-05-07 09:18:15','账号3','123456','姓名3','男','13823888883','upload/yonghu_touxiang3.jpg'),(14,'2022-05-07 09:18:15','账号4','123456','姓名4','男','13823888884','upload/yonghu_touxiang4.jpg'),(15,'2022-05-07 09:18:15','账号5','123456','姓名5','男','13823888885','upload/yonghu_touxiang5.jpg'),(16,'2022-05-07 09:18:15','账号6','123456','姓名6','男','13823888886','upload/yonghu_touxiang6.jpg'),(1651915186020,'2022-05-07 09:19:46','111','111','张三','男',NULL,NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-13 20:40:31
