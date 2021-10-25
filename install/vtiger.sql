-- MySQL dump 10.11
--
-- Host: localhost    Database: vtigercrm6
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

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
-- Current Database: `vtigercrm6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `vtigercrm6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vtigercrm6`;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attachment` (
  `attachment_id` bigint(20) NOT NULL auto_increment,
  `subject` varchar(255) default '',
  `invokes` int(11) default NULL,
  `location` varchar(255) default '',
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) default NULL,
  `attachment` varchar(255) NOT NULL,
  `reftbl` varchar(50) default NULL,
  `refid` bigint(20) default NULL,
  `type` tinyint(3) unsigned NOT NULL default '0' COMMENT '1为图片',
  `typeStr` varchar(100) default 'file',
  `description` text,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`attachment_id`),
  KEY `reftbl` (`reftbl`,`refid`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (1,'',1,'114.382012,30.553143','Signature_6178_20191020_023343319.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_023343319.jpg','vtiger_projecttask',2,1,'image',NULL,3,'2019-10-20 10:33:44',3,'2019-10-20 10:33:44'),(2,'',1,'114.382012,30.553143','Signature_6178_20191020_023750592.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_023750592.jpg','vtiger_projecttask',2,1,'image','',3,'2019-10-20 10:37:51',3,'2019-10-20 10:37:51'),(3,'dsfafa',1,'114.382012,30.553143','Signature_6178_20191020_023821711.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_023821711.jpg','vtiger_projecttask',2,1,'image','fasdfasfafa',3,'2019-10-20 10:38:22',3,'2019-10-20 10:38:22'),(4,'dsfafa',1,'114.382012,30.553143','Signature_6178_20191020_024414652.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_024414652.jpg','vtiger_projecttask',2,1,'image','fdsafafafa ',3,'2019-10-20 10:44:16',3,'2019-10-20 10:44:16'),(5,'fdsfsafsaf',1,'114.382012,30.553143','Signature_6178_20191020_024623821.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_024623821.jpg','vtiger_projecttask',3,1,'image','fdsafafasfa ',3,'2019-10-20 10:46:25',3,'2019-10-20 10:46:25'),(6,'fdsfsafsaf',1,'114.382012,30.553143','Signature_6178_20191020_024826552.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_024826552.jpg','vtiger_projecttask',3,1,'image','fdsafafasfa ',3,'2019-10-20 10:48:28',3,'2019-10-20 10:48:28'),(7,'dfasfaf',1,'114.382012,30.553143','Signature_6178_20191020_030151694.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_030151694.jpg','vtiger_projecttask',3,1,'image','fadsfasfa',3,'2019-10-20 11:01:54',3,'2019-10-20 11:01:54'),(8,'fasdfa',1,'114.382012,30.553143','Signature_6178_20191020_030314376.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_030314376.jpg','vtiger_projecttask',3,1,'image','fasdfasfa',3,'2019-10-20 11:03:17',3,'2019-10-20 11:03:17'),(9,'dfasdfa',1,'114.382012,30.553143','video1571541111235.MP4','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/video1571541111235.MP4','vtiger_projecttask',2,2,'video','fasfasfdafa ',3,'2019-10-20 11:12:03',3,'2019-10-20 11:12:03'),(10,'到场',1,'114.382012,30.553143','Signature_6178_20191020_070923421.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_070923421.jpg','vtiger_projecttask',2,1,'image','',3,'2019-10-20 15:09:40',3,'2019-10-20 15:09:40'),(11,'到场',1,'114.382012,30.553143','Signature_6178_20191020_074425889.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_074425889.jpg','vtiger_projecttask',2,1,'image','',3,'2019-10-20 15:48:04',3,'2019-10-20 15:48:04'),(12,'现场',1,'114.382012,30.553143','Signature_6178_20191020_074608548.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_074608548.jpg','vtiger_projecttask',2,1,'image','',3,'2019-10-20 15:49:48',3,'2019-10-20 15:49:48'),(13,'到场',1,'114.382012,30.553143','Signature_6178_20191020_082914904.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_082914904.jpg','vtiger_projecttask',1,1,'image','dd',3,'2019-10-20 16:33:02',3,'2019-10-20 16:33:02'),(14,'',1,'114.382012,30.553143','Signature_6178_20191020_082914904.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_082914904.jpg','vtiger_projecttask',1,1,'image','',3,'2019-10-21 10:08:01',3,'2019-10-21 10:08:01'),(15,'到场',1,'114.382012,30.553143','Signature_1477098954845.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_1477098954845.jpg','vtiger_projecttask',1,1,'image','gg',3,'2019-10-21 10:36:47',3,'2019-10-21 10:36:47'),(16,'到场',1,'114.382012,30.553143','Signature_6178_20191020_024414652.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_024414652.jpg','vtiger_projecttask',1,1,'image','Large ',3,'2019-10-21 14:21:09',3,'2019-10-21 14:21:09'),(17,'现场',1,'114.382012,30.553143','Img1571555065615.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Img1571555065615.jpg','vtiger_projecttask',1,1,'image','4jmt ',3,'2019-10-21 14:28:16',3,'2019-10-21 14:28:16'),(18,'现场',1,'114.382012,30.553143','Signature_6178_20191020_030314376.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_030314376.jpg','vtiger_projecttask',1,1,'image','.a4jmt ',3,'2019-10-21 14:30:18',3,'2019-10-21 14:30:18'),(19,'现场',1,'114.382012,30.553143','Signature_6178_20191020_030151694.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Signature_6178_20191020_030151694.jpg','vtiger_projecttask',1,1,'image','admj',3,'2019-10-21 14:35:44',3,'2019-10-21 14:35:44'),(20,'现场',1,'114.382012,30.553143','Img1571639942934.jpg','file/prj/prj19101600001/3/','file/prj/prj19101600001/3/Img1571639942934.jpg','vtiger_projecttask',1,1,'image','getbootstrap ',3,'2019-10-21 14:39:35',3,'2019-10-21 14:39:35'),(21,'到场',1,'114.382012,30.553143','Img1571640195504.jpg','file/prj/prj19101600001//','file/prj/prj19101600001//Img1571640195504.jpg','vtiger_projecttask',1,1,'image','access ',3,'2019-10-21 14:43:47',3,'2019-10-21 14:43:47'),(22,'到场',1,'114.382012,30.553143','Img1571640459416.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571640459416.jpg','vtiger_projecttask',1,1,'image','ajar ',3,'2019-10-21 14:48:12',3,'2019-10-21 14:48:12'),(23,'到场',1,'114.382012,30.553143','Img1571640817026.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571640817026.jpg','vtiger_projecttask',3,1,'image','ajar ',3,'2019-10-21 14:54:11',3,'2019-10-21 14:54:11'),(24,'到场',1,'114.382012,30.553143','Img1571640831178.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571640831178.jpg','vtiger_projecttask',3,1,'image','yyyajar ',3,'2019-10-21 14:54:26',3,'2019-10-21 14:54:26'),(25,'现场',1,'114.382012,30.553143','Img1571640900142.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571640900142.jpg','vtiger_projecttask',3,1,'image','national ',3,'2019-10-21 14:55:35',3,'2019-10-21 14:55:35'),(26,'现场',1,'114.382012,30.553143','Img1571641033453.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571641033453.jpg','vtiger_projecttask',3,1,'image','open ',3,'2019-10-21 14:57:48',3,'2019-10-21 14:57:48'),(27,'现场',1,'114.382012,30.553143','Signature_6178_20191020_023821711.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Signature_6178_20191020_023821711.jpg','vtiger_projecttask',3,1,'image','Gj ',3,'2019-10-21 15:04:40',3,'2019-10-21 15:04:40'),(28,'现场',1,'114.382012,30.553143','Img1571642173873.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571642173873.jpg','vtiger_projecttask',1,1,'image','glossary ',3,'2019-10-21 15:16:55',3,'2019-10-21 15:16:55'),(29,'现场',1,'114.382012,30.553143','Img1571715000574.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Img1571715000574.jpg','vtiger_projecttask',1,1,'image','know ',3,'2019-10-22 11:30:23',3,'2019-10-22 11:30:23'),(30,'到场',1,'114.382012,30.553143','','','','vtiger_projecttask',1,0,'','dsfasfa',0,'2019-10-22 11:49:30',0,'2019-10-22 11:49:30'),(31,'现场',1,'114.382012,30.553143','Signature_6178_20191020_074608548.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Signature_6178_20191020_074608548.jpg','vtiger_projecttask',1,1,'image','Gj ',3,'2019-10-22 11:54:31',3,'2019-10-22 11:54:31'),(32,'到场',1,'114.382012,30.553143','Signature_6178_20191020_082914904.jpg','file/prj/prj19102300001/6178/','file/prj/prj19102300001/6178/Signature_6178_20191020_082914904.jpg','vtiger_projecttask',4,1,'image','JM ',3,'2019-10-23 10:52:04',3,'2019-10-23 10:52:04'),(33,'到场',1,'114.382012,30.553143','Signature_6178_20191020_074608548.jpg','file/prj/prj19102300001/6178/','file/prj/prj19102300001/6178/Signature_6178_20191020_074608548.jpg','vtiger_projecttask',4,1,'image','JM ',3,'2019-10-23 11:03:30',3,'2019-10-23 11:03:30'),(34,'现场',1,'114.382012,30.553143','Signature_6178_20191020_023343319.jpg','file/prj/prj19102300001/6178/','file/prj/prj19102300001/6178/Signature_6178_20191020_023343319.jpg','vtiger_projecttask',4,1,'image','Gj ',3,'2019-10-23 11:04:47',3,'2019-10-23 11:04:47'),(35,'现场',1,'114.382012,30.553143','Signature_6178_20191020_070923421.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Signature_6178_20191020_070923421.jpg','vtiger_projecttask',1,1,'image','jm',3,'2019-10-23 11:09:11',3,'2019-10-23 11:09:11'),(36,'到场',1,'114.382012,30.553143','Signature_6178_20191020_024623821.jpg','file/prj/prj19101600001/6178/','file/prj/prj19101600001/6178/Signature_6178_20191020_024623821.jpg','vtiger_projecttask',1,1,'image','news ',3,'2019-10-23 11:14:57',3,'2019-10-23 11:14:57'),(37,'到场',1,'114.382012,30.553143','Signature_6178_20191020_070923421.jpg','file/prj/prj19102300002/6178/','file/prj/prj19102300002/6178/Signature_6178_20191020_070923421.jpg','vtiger_projecttask',5,1,'image','1212331',3,'2019-10-23 13:19:18',3,'2019-10-23 13:19:18'),(38,'离场',1,'114.382012,30.553143','Signature_6178_20191023_051952770.jpg','file/prj/prj19102300002/6178/','file/prj/prj19102300002/6178/Signature_6178_20191023_051952770.jpg','vtiger_projecttask',5,1,'image','1212331',3,'2019-10-23 13:19:53',3,'2019-10-23 13:19:53'),(39,'到场',1,'114.382012,30.553143','Signature_6178_20191020_023343319.jpg','file/prj/prj19102300003/6178/','file/prj/prj19102300003/6178/Signature_6178_20191020_023343319.jpg','vtiger_projecttask',6,1,'image','po_3_5 ',3,'2019-10-23 14:14:53',3,'2019-10-23 14:14:53'),(40,'到场',1,'114.382012,30.553143','Signature_6178_20191020_023750592.jpg','file/prj/prj19102300004/6178/','file/prj/prj19102300004/6178/Signature_6178_20191020_023750592.jpg','vtiger_projecttask',7,1,'image','org ',3,'2019-10-23 14:44:20',3,'2019-10-23 14:44:20'),(41,'到场',1,'114.382012,30.553143','Signature_1477101201466.jpg','file/prj/prj19102300004/6178/','file/prj/prj19102300004/6178/Signature_1477101201466.jpg','vtiger_projecttask',8,1,'image','org ',3,'2019-10-23 14:55:57',3,'2019-10-23 14:55:57'),(42,'到场',2,'','Signature_6178_20191023_051952770.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/Signature_6178_20191023_051952770.jpg','vtiger_projecttask',9,1,'图片','3',3,'2019-11-02 10:18:44',3,'2019-11-02 10:18:44'),(43,'现场',7,'','Signature_6178_20191020_070923421.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/Signature_6178_20191020_070923421.jpg','vtiger_projecttask',9,1,'图片','fkhhjgg kgkgk hgkg ghgkgk  ',3,'2019-11-02 10:51:04',3,'2019-11-02 10:51:04'),(44,'现场',2,'','20191102_030333.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_030333.jpg','vtiger_projecttask',9,1,'图片','fadsfafaf ',3,'2019-11-02 11:03:58',3,'2019-11-02 11:03:58'),(45,'现场',3,'','Signature_6178_20191023_051952770.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/Signature_6178_20191023_051952770.jpg','vtiger_projecttask',9,1,'图片','fafaf ',3,'2019-11-02 11:08:01',3,'2019-11-02 11:08:01'),(46,'现场',3,'','20191102_030837.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_030837.jpg','vtiger_projecttask',9,1,'图片','fafaf ',3,'2019-11-02 11:09:06',3,'2019-11-02 11:09:06'),(47,'现场',3,'','Signature_1477099341284.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/Signature_1477099341284.jpg','vtiger_projecttask',9,1,'图片','fafaf ',3,'2019-11-02 11:18:24',3,'2019-11-02 11:18:24'),(48,'现场',3,'','20191102_033124.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_033124.jpg','vtiger_projecttask',9,1,'图片','da',3,'2019-11-02 11:32:01',3,'2019-11-02 11:32:01'),(49,'现场',3,'','20191102_055958.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_055958.jpg','vtiger_projecttask',9,1,'图片','afads',3,'2019-11-02 14:00:03',3,'2019-11-02 14:00:03'),(50,'现场',5,'','20191102_060249.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_060249.jpg','vtiger_projecttask',9,1,'图片','56',3,'2019-11-02 14:04:11',3,'2019-11-02 14:04:11'),(51,'现场',5,'','20191102_060446.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_060446.jpg','vtiger_projecttask',9,1,'图片','56',3,'2019-11-02 14:06:15',3,'2019-11-02 14:06:15'),(52,'现场',5,'','20191102_060624.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_060624.jpg','vtiger_projecttask',9,1,'图片','56',3,'2019-11-02 14:08:27',3,'2019-11-02 14:08:27'),(53,'现场',6,'','20191102_061215.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_061215.jpg','vtiger_projecttask',9,1,'图片','dhdhd',3,'2019-11-02 14:12:33',3,'2019-11-02 14:12:33'),(54,'现场',6,'','20191102_061521.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_061521.jpg','vtiger_projecttask',9,1,'图片','dhdhd',3,'2019-11-02 14:15:36',3,'2019-11-02 14:15:36'),(55,'现场',1,'','20191102_062111.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_062111.jpg','vtiger_projecttask',9,1,'图片','3444',3,'2019-11-02 14:21:23',3,'2019-11-02 14:21:23'),(56,'现场',4,'','20191102_063319.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_063319.jpg','vtiger_projecttask',9,1,'图片','4rghg',3,'2019-11-02 14:33:45',3,'2019-11-02 14:33:45'),(57,'现场',5,'','20191102_064513.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_064513.jpg','vtiger_projecttask',9,1,'图片','gsgs',3,'2019-11-02 14:45:36',3,'2019-11-02 14:45:36'),(58,'现场',2,'','20191102_065648.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_065648.jpg','vtiger_projecttask',9,1,'图片','ddddd',3,'2019-11-02 14:57:35',3,'2019-11-02 14:57:35'),(59,'现场',3,'','20191102_070231.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_070231.jpg','vtiger_projecttask',9,1,'图片','3sfsa',3,'2019-11-02 15:03:00',3,'2019-11-02 15:03:00'),(60,'现场',4,'','20191102_071018.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_071018.jpg','vtiger_projecttask',9,1,'图片','r',3,'2019-11-02 15:10:51',3,'2019-11-02 15:10:51'),(61,'现场',2,'','20191102_071717.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_071717.jpg','vtiger_projecttask',9,1,'图片','eeff',3,'2019-11-02 15:17:54',3,'2019-11-02 15:17:54'),(62,'现场',1,'','20191102_072335.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_072335.jpg','vtiger_projecttask',9,1,'图片','56ds',3,'2019-11-02 15:24:14',3,'2019-11-02 15:24:14'),(63,'现场',1,'','20191102_073027.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_073027.jpg','vtiger_projecttask',9,1,'图片','3dfs',3,'2019-11-02 15:31:10',3,'2019-11-02 15:31:10'),(64,'现场',1,'','20191102_073359.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_073359.jpg','vtiger_projecttask',9,1,'图片','222w',3,'2019-11-02 15:34:43',3,'2019-11-02 15:34:43'),(65,'现场',1,'','20191102_073807.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_073807.jpg','vtiger_projecttask',9,1,'图片','erafasf',3,'2019-11-02 15:38:54',3,'2019-11-02 15:38:54'),(66,'现场',1,'','20191102_074353.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_074353.jpg','vtiger_projecttask',9,1,'图片','gp',3,'2019-11-02 15:46:28',3,'2019-11-02 15:46:28'),(67,'现场',2,'','20191102_075430.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_075430.jpg','vtiger_projecttask',9,1,'图片','df',3,'2019-11-02 15:55:31',3,'2019-11-02 15:55:31'),(68,'现场',2,'','20191102_075923.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_075923.jpg','vtiger_projecttask',9,1,'图片','sfsd',3,'2019-11-02 16:00:29',3,'2019-11-02 16:00:29'),(69,'现场',1,'','20191102_080728.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191102_080728.jpg','vtiger_projecttask',9,1,'图片','sdfg',3,'2019-11-02 16:08:43',3,'2019-11-02 16:08:43'),(70,'现场',1,'','20191103_010817.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191103_010817.jpg','vtiger_projecttask',9,1,'图片','g',3,'2019-11-03 09:08:22',3,'2019-11-03 09:08:22'),(71,'现场',1,'','20191103_011729.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191103_011729.jpg','vtiger_projecttask',9,1,'图片','gjpt',3,'2019-11-03 09:17:37',3,'2019-11-03 09:17:37'),(72,'现场',1,'','20191103_013432.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191103_013432.jpg','vtiger_projecttask',9,1,'图片','fdf',3,'2019-11-03 09:34:44',3,'2019-11-03 09:34:44'),(73,'现场',1,'','20191103_013443.jpg','file/prj/prj19102600001/6178/','file/prj/prj19102600001/6178/20191103_013443.jpg','vtiger_projecttask',9,1,'图片','fdf',3,'2019-11-03 09:34:55',3,'2019-11-03 09:34:55'),(74,'到场',1,'location does not support!','01.png','file/prj/PRJ21040600001/6176/','file/prj/PRJ21040600001/6176/01.png','vtiger_projecttask',13,1,'图片','ffff',2,'2021-04-07 09:19:10',2,'2021-04-07 09:19:10'),(75,'',NULL,'','3uACD.exe','file/3/','file/3/3uACD.exe','vtiger_projecttask',12,1,'image',NULL,3,'2021-04-22 18:39:18',3,'2021-04-22 18:39:18'),(76,'',NULL,'','36.txt','file/3/','file/3/36.txt','vtiger_projecttask',12,0,'file',NULL,3,'2021-04-22 18:45:43',3,'2021-04-22 18:45:43'),(77,'',NULL,'','36.txt','file/3/','file/3/36.txt','vtiger_projecttask',12,0,'file','fsdfafa',3,'2021-04-22 18:48:25',3,'2021-04-22 18:48:25'),(78,'',NULL,'','logdebug.txt','file/3/','file/3/logdebug.txt','vtiger_projecttask',12,0,'file','fdfafasfa',3,'2021-04-22 19:03:27',3,'2021-04-22 19:03:27'),(79,'',NULL,'','36.txt','file/3/','file/3/36.txt','vtiger_projecttask',12,0,'file','gdffafa',3,'2021-04-22 19:06:03',3,'2021-04-22 19:06:03'),(80,'',NULL,'','36.txt','file/3/','file/3/36.txt','vtiger_projecttask',12,0,'file','fdsafafa',3,'2021-04-22 19:07:05',3,'2021-04-22 19:07:05'),(81,'',NULL,'','','','','vtiger_project',7,0,'','fsfafafafas',2,'2021-05-22 10:13:57',2,'2021-05-22 10:13:57'),(82,'',NULL,'','','','','vtiger_project',7,0,'','发射点发生',2,'2021-05-22 10:15:04',2,'2021-05-22 10:15:04'),(83,'',NULL,'','726.jpg','file/2/','file/2/726.jpg','vtiger_projecttask',65,0,'file','dsfasdfafafa',2,'2021-05-22 10:57:54',2,'2021-05-22 10:57:54'),(84,'',NULL,'','','','','vtiger_project',57,0,'','proc memo',2,'2021-05-23 09:58:33',2,'2021-05-23 09:58:33'),(85,'',NULL,'','','','','vtiger_project',56,0,'','proc memo 2',2,'2021-05-23 09:59:08',2,'2021-05-23 09:59:08'),(86,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','adsfasfa',2,'2021-05-23 10:12:53',2,'2021-05-23 10:12:53'),(87,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','dfafa2',2,'2021-05-23 10:45:18',2,'2021-05-23 10:45:18'),(88,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafa',2,'2021-05-23 10:46:58',2,'2021-05-23 10:46:58'),(89,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafa',2,'2021-05-23 10:50:02',2,'2021-05-23 10:50:02'),(90,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 10:50:56',2,'2021-05-23 10:50:56'),(91,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 11:41:03',2,'2021-05-23 11:41:03'),(92,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 11:43:01',2,'2021-05-23 11:43:01'),(93,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 11:44:41',2,'2021-05-23 11:44:41'),(94,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 11:45:10',2,'2021-05-23 11:45:10'),(95,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 13:27:14',2,'2021-05-23 13:27:14'),(96,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','fafafaggg',2,'2021-05-23 13:31:23',2,'2021-05-23 13:31:23'),(97,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','dfasfa',2,'2021-05-23 13:44:56',2,'2021-05-23 13:44:56'),(98,'',NULL,'','','','','vtiger_projectmilestone',57,0,'','2222222',2,'2021-05-24 09:13:53',2,'2021-05-24 09:13:53'),(99,'',NULL,'','','','','vtiger_projectmilestone',56,0,'','444444423221',2,'2021-05-27 16:37:07',2,'2021-05-27 16:37:07'),(101,'',NULL,'','',NULL,'','vtiger_projecttask',65,0,'','ghjkl;',2,'2021-06-21 09:27:46',2,'2021-06-21 09:27:46'),(102,'',NULL,'','',NULL,'','vtiger_projecttask',65,0,'','ghjkl;jk',2,'2021-06-21 09:32:15',2,'2021-06-21 09:32:15'),(103,'',NULL,'','',NULL,'','vtiger_projecttask',65,0,'','fdsfafarvzvz',2,'2021-06-21 09:36:51',2,'2021-06-21 09:36:51'),(104,'',NULL,'','xrulelayout.xml','file/2/','file/2/xrulelayout.xml','vtiger_projecttask',65,0,'file','w23fdsfafarvzvzsdfafa',2,'2021-06-21 09:38:16',2,'2021-06-21 09:38:16');
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment_subject`
--

DROP TABLE IF EXISTS `attachment_subject`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attachment_subject` (
  `attachment_subject_id` bigint(20) NOT NULL auto_increment,
  `subject` varchar(255) default '',
  `remark` varchar(255) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`attachment_subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attachment_subject`
--

LOCK TABLES `attachment_subject` WRITE;
/*!40000 ALTER TABLE `attachment_subject` DISABLE KEYS */;
INSERT INTO `attachment_subject` VALUES (1,'到场','将到场时的标志性照片，如单位、机房名称等标识拍照上传',2,'2019-10-22 11:37:20',2,'2020-03-18 10:51:07'),(2,'现场','任务过程中的照片拍照上传',2,'2019-10-22 11:38:01',2,'2019-10-22 11:38:01'),(3,'离场','离开前清理现场并拍照上传',2,'2019-10-22 11:38:31',2,'2019-10-22 11:38:43');
/*!40000 ALTER TABLE `attachment_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflow_activatedonce`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_activatedonce`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY  (`workflow_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflow_activatedonce`
--

LOCK TABLES `com_vtiger_workflow_activatedonce` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflow_activatedonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_vtiger_workflow_activatedonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflow_tasktypes`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_tasktypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflow_tasktypes` (
  `id` int(11) NOT NULL,
  `tasktypename` varchar(255) NOT NULL,
  `label` varchar(255) default NULL,
  `classname` varchar(255) default NULL,
  `classpath` varchar(255) default NULL,
  `templatepath` varchar(255) default NULL,
  `modules` varchar(500) default NULL,
  `sourcemodule` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes`
--

LOCK TABLES `com_vtiger_workflow_tasktypes` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflow_tasktypes` VALUES (1,'VTEmailTask','Send Mail','VTEmailTask','modules/com_vtiger_workflow/tasks/VTEmailTask.inc','com_vtiger_workflow/taskforms/VTEmailTask.tpl','{\"include\":[],\"exclude\":[]}',''),(2,'VTEntityMethodTask','Invoke Custom Function','VTEntityMethodTask','modules/com_vtiger_workflow/tasks/VTEntityMethodTask.inc','com_vtiger_workflow/taskforms/VTEntityMethodTask.tpl','{\"include\":[],\"exclude\":[]}',''),(3,'VTCreateTodoTask','Create Todo','VTCreateTodoTask','modules/com_vtiger_workflow/tasks/VTCreateTodoTask.inc','com_vtiger_workflow/taskforms/VTCreateTodoTask.tpl','{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\",\"Quotes\",\"PurchaseOrder\",\"SalesOrder\",\"Invoice\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}',''),(4,'VTCreateEventTask','Create Event','VTCreateEventTask','modules/com_vtiger_workflow/tasks/VTCreateEventTask.inc','com_vtiger_workflow/taskforms/VTCreateEventTask.tpl','{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}',''),(5,'VTUpdateFieldsTask','Update Fields','VTUpdateFieldsTask','modules/com_vtiger_workflow/tasks/VTUpdateFieldsTask.inc','com_vtiger_workflow/taskforms/VTUpdateFieldsTask.tpl','{\"include\":[],\"exclude\":[]}',''),(6,'VTCreateEntityTask','Create Entity','VTCreateEntityTask','modules/com_vtiger_workflow/tasks/VTCreateEntityTask.inc','com_vtiger_workflow/taskforms/VTCreateEntityTask.tpl','{\"include\":[],\"exclude\":[]}',''),(7,'VTSMSTask','SMS Task','VTSMSTask','modules/com_vtiger_workflow/tasks/VTSMSTask.inc','com_vtiger_workflow/taskforms/VTSMSTask.tpl','{\"include\":[],\"exclude\":[]}','SMSNotifier');
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflow_tasktypes_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_tasktypes_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflow_tasktypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes_seq`
--

LOCK TABLES `com_vtiger_workflow_tasktypes_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflow_tasktypes_seq` VALUES (7);
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflows`
--

DROP TABLE IF EXISTS `com_vtiger_workflows`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(100) default NULL,
  `summary` varchar(400) NOT NULL,
  `test` text,
  `execution_condition` int(11) NOT NULL,
  `defaultworkflow` int(1) default NULL,
  `type` varchar(255) default NULL,
  `filtersavedinnew` int(1) default NULL,
  `schtypeid` int(10) default NULL,
  `schdayofmonth` varchar(100) default NULL,
  `schdayofweek` varchar(100) default NULL,
  `schannualdates` varchar(100) default NULL,
  `schtime` varchar(50) default NULL,
  `nexttrigger_time` datetime default NULL,
  PRIMARY KEY  (`workflow_id`),
  UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflows`
--

LOCK TABLES `com_vtiger_workflows` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflows` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflows` VALUES (1,'Invoice','UpdateInventoryProducts On Every Save','[{\"fieldname\":\"subject\",\"operation\":\"does not contain\",\"value\":\"`!`\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Accounts','Send Email to user when Notifyowner is True','[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',2,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Contacts','Send Email to user when Notifyowner is True','[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',2,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Contacts','Send Email to user when Portal User is True','[{\"fieldname\":\"portal\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',2,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Potentials','Send Email to users on Potential creation',NULL,1,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Contacts','Workflow for Contact Creation or Modification','',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(7,'HelpDesk','Ticket Creation From Portal : Send Email to Record Owner and Contact','[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":1,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(9,'HelpDesk','Send Email to Contact on Ticket Update','[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Events','Workflow for Events when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Calendar','Workflow for Calendar Todos when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Potentials','Calculate or Update forecast amount','',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Events','Workflow for Events when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Calendar','Workflow for Calendar Todos when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(15,'HelpDesk','Comment Added From CRM : Send Email to Organization','[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(16,'PurchaseOrder','Update Inventory Products On Every Save',NULL,3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(17,'HelpDesk','Comment Added From Portal : Send Email to Record Owner','[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(18,'HelpDesk','Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User','[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(19,'HelpDesk','Comment Added From CRM : Send Email to Contact, where Contact is Portal User','[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(20,'HelpDesk','Send Email to Record Owner on Ticket Update','[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"assigned_user_id\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(21,'HelpDesk','Ticket Creation From CRM : Send Email to Record Owner','[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(22,'HelpDesk','Send Email to Organization on Ticket Update','[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(23,'HelpDesk','Ticket Creation From CRM : Send Email to Organization','[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(24,'HelpDesk','Ticket Creation From CRM : Send Email to Contact','[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `com_vtiger_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflows_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflows_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflows_seq`
--

LOCK TABLES `com_vtiger_workflows_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflows_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflows_seq` VALUES (24);
/*!40000 ALTER TABLE `com_vtiger_workflows_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtask_queue`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtask_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflowtask_queue` (
  `task_id` int(11) default NULL,
  `entity_id` varchar(100) default NULL,
  `do_after` int(11) default NULL,
  `task_contents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflowtask_queue`
--

LOCK TABLES `com_vtiger_workflowtask_queue` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtask_queue` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtask_queue` VALUES (6,'12x6',0,'{\"fromEmail\":\"s@3ucs.com\",\"fromName\":\"admin\",\"toEmail\":\"s@3ucs.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>sar<\\/b><br>FirstName:<b><\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin\"}'),(5,'13x7',0,'{\"fromEmail\":\"s@3ucs.com\",\"fromName\":\"admin\",\"toEmail\":\"s@3ucs.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Potential Assignment\",\"content\":\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT1<\\/b><br>Potential Name:<b>callcenter<\\/b><br>Amount:<b>1.00<\\/b><br>Expected Close Date:<b>2015-02-07 (yyyy-mm-dd)<\\/b><br>Type:<b>New Business<\\/b><br><br><br>Description :<br><br>Thank You<br>Admin\"}'),(25,'17x11',0,'{\"fromEmail\":\"s@3ucs.com\",\"fromName\":\"your-support name\",\"toEmail\":\",s@3ucs.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Ticket Number : TT1 anniversary\",\"content\":\"Ticket ID : 11<br>Ticket Title : anniversary<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Administrator ,<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT1<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : In Progress<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : Small Problem<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : Feature<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : Low<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br><br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator\"}');
/*!40000 ALTER TABLE `com_vtiger_workflowtask_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL auto_increment,
  `workflow_id` int(11) default NULL,
  `summary` varchar(400) NOT NULL,
  `task` text,
  PRIMARY KEY  (`task_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflowtasks`
--

LOCK TABLES `com_vtiger_workflowtasks` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks` VALUES (1,1,'','O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:1;s:7:\"summary\";s:0:\"\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:1;}'),(2,2,'An account has been created ','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"2\";s:7:\"summary\";s:28:\"An account has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Account Creation\";s:7:\"content\";s:301:\"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>$account_no</b><br>AccountName:<b>$accountname</b><br>Rating:<b>$rating</b><br>Industry:<b>$industry</b><br>AccountType:<b>$accounttype</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"2\";}'),(3,3,'An contact has been created ','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"3\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Contact Creation\";s:7:\"content\";s:305:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"3\";}'),(4,4,'Email Customer Portal Login Details','O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:4;s:7:\"summary\";s:35:\"Email Customer Portal Login Details\";s:6:\"active\";b:1;s:10:\"methodName\";s:22:\"SendPortalLoginDetails\";s:2:\"id\";i:4;}'),(5,5,'An Potential has been created ','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"5\";s:7:\"summary\";s:30:\"An Potential has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:30:\"Regarding Potential Assignment\";s:7:\"content\";s:342:\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>$potential_no</b><br>Potential Name:<b>$potentialname</b><br>Amount:<b>$amount</b><br>Expected Close Date:<b>$closingdate ($_DATE_FORMAT_)</b><br>Type:<b>$opportunity_type</b><br><br><br>Description :$description<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"5\";}'),(6,6,'An contact has been created ','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"6\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:28:\"Regarding Contact Assignment\";s:7:\"content\";s:384:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>And <b>CustomerPortal Login Details</b> is sent to the EmailID :-$email<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"6\";}'),(7,7,'Notify Related Contact when Ticket is created from Portal','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:57:\"Notify Related Contact when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:1:\"7\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:161:\"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description\";}'),(10,9,'Send Email to Contact on Ticket Update','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:38:\"Send Email to Contact on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"10\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:636:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:1:\"9\";}'),(13,12,'update forecast amount','O:18:\"VTUpdateFieldsTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:12;s:7:\"summary\";s:22:\"update forecast amount\";s:6:\"active\";b:1;s:19:\"field_value_mapping\";s:95:\"[{\"fieldname\":\"forecast_amount\",\"valuetype\":\"expression\",\"value\":\"amount * probability / 100\"}]\";s:2:\"id\";i:13;}'),(14,13,'Send Notification Email to Record Owner','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"13\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:17:\"Event :  $subject\";s:7:\"content\";s:771:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Activity Notification Details:</b><br/>Subject             : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($(general : (__VtigerMeta__) usertimezone)) <br/>Status              : $eventstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Location            : $location <br/>Description         : $description\";s:2:\"id\";s:2:\"14\";}'),(15,14,'Send Notification Email to Record Owner','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"14\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:16:\"Task :  $subject\";s:7:\"content\";s:689:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Task Notification Details:</b><br/>Subject : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($_DATE_FORMAT_) <br/>Status              : $taskstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Description         : $description\";s:2:\"id\";s:2:\"15\";}'),(18,16,'Update Inventory Products','O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:16;s:7:\"summary\";s:25:\"Update Inventory Products\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:18;}'),(19,17,'Comment Added From Portal : Send Email to Record Owner','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Comment Added From Portal : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"19\";s:10:\"workflowId\";s:2:\"17\";s:9:\"fromEmail\";s:112:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(contact_id : (Contacts) email)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:92:\"Respond to Ticket ID## $(general : (__VtigerMeta__) recordId) ## in Customer Portal - URGENT\";s:7:\"content\";s:329:\"Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								Customer has provided the following additional information to your reply:<br><br>\r\n								<b>$lastComment</b><br><br>\r\n								Kindly respond to above ticket at the earliest.<br><br>\r\n								Regards<br>Support Administrator\";}'),(20,18,'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:82:\"Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"20\";s:10:\"workflowId\";s:2:\"18\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:525:\"Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n							The Ticket is replied the details are :<br><br>\r\n							Ticket No : $ticket_no<br>\r\n							Status : $ticketstatus<br>\r\n							Category : $ticketcategories<br>\r\n							Severity : $ticketseverities<br>\r\n							Priority : $ticketpriorities<br><br>\r\n							Description : <br>$description<br><br>\r\n							Solution : <br>$solution<br>\r\n							The comments are : <br>\r\n							$allComments<br><br>\r\n							Regards<br>Support Administrator\";}'),(21,19,'Comment Added From CRM : Send Email to Contact, where Contact is Portal User','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:76:\"Comment Added From CRM : Send Email to Contact, where Contact is Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"21\";s:10:\"workflowId\";s:2:\"19\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:554:\"Ticket No : $ticket_no<br>\r\n										Ticket Id : $(general : (__VtigerMeta__) recordId)<br>\r\n										Subject : $ticket_title<br><br>\r\n										Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n										There is a reply to <b>$ticket_title</b> in the \"Customer Portal\" at VTiger.\r\n										You can use the following link to view the replies made:<br>\r\n										<a href=\"$(general : (__VtigerMeta__) portaldetailviewurl)\">Ticket Details</a><br><br>\r\n										Thanks<br>$(general : (__VtigerMeta__) supportName)\";}'),(22,15,'Comment Added From CRM : Send Email to Organization','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:51:\"Comment Added From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"22\";s:10:\"workflowId\";s:2:\"15\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:34:\",$(parent_id : (Accounts) email1),\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:601:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";}'),(23,7,'Notify Record Owner when Ticket is created from Portal','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Notify Record Owner when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"23\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:124:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:161:\"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description\";}'),(24,20,'Send Email to Record Owner on Ticket Update','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Record Owner on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"24\";s:10:\"workflowId\";s:2:\"20\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:607:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";}'),(25,21,'Ticket Creation From CRM : Send Email to Record Owner','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"25\";s:10:\"workflowId\";s:2:\"21\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:607:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";}'),(26,22,'Send Email to Organization on Ticket Update','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Organization on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"26\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:601:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"22\";}'),(27,23,'Ticket Creation From CRM : Send Email to Organization','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"27\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:601:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"23\";}'),(28,24,'Ticket Creation From CRM : Send Email to Contact','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:48:\"Ticket Creation From CRM : Send Email to Contact\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"28\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:636:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"24\";}');
/*!40000 ALTER TABLE `com_vtiger_workflowtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_entitymethod`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) default NULL,
  `method_name` varchar(100) default NULL,
  `function_path` varchar(400) default NULL,
  `function_name` varchar(100) default NULL,
  PRIMARY KEY  (`workflowtasks_entitymethod_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod`
--

LOCK TABLES `com_vtiger_workflowtasks_entitymethod` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks_entitymethod` VALUES (1,'SalesOrder','UpdateInventory','include/InventoryHandler.php','handleInventoryProductRel'),(2,'Invoice','UpdateInventory','include/InventoryHandler.php','handleInventoryProductRel'),(3,'Contacts','SendPortalLoginDetails','modules/Contacts/ContactsHandler.php','Contacts_sendCustomerPortalLoginDetails'),(4,'HelpDesk','NotifyOnPortalTicketCreation','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_nofifyOnPortalTicketCreation'),(5,'HelpDesk','NotifyOnPortalTicketComment','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_notifyOnPortalTicketComment'),(6,'HelpDesk','NotifyOwnerOnTicketChange','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_notifyOwnerOnTicketChange'),(7,'HelpDesk','NotifyParentOnTicketChange','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_notifyParentOnTicketChange'),(8,'ModComments','CustomerCommentFromPortal','modules/ModComments/ModCommentsHandler.php','CustomerCommentFromPortal'),(9,'ModComments','TicketOwnerComments','modules/ModComments/ModCommentsHandler.php','TicketOwnerComments'),(10,'PurchaseOrder','UpdateInventory','include/InventoryHandler.php','handleInventoryProductRel');
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_entitymethod_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod_seq`
--

LOCK TABLES `com_vtiger_workflowtasks_entitymethod_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` VALUES (10);
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflowtasks_seq`
--

LOCK TABLES `com_vtiger_workflowtasks_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks_seq` VALUES (28);
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtemplates`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtemplates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(100) default NULL,
  `title` varchar(400) default NULL,
  `template` text,
  PRIMARY KEY  (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `com_vtiger_workflowtemplates`
--

LOCK TABLES `com_vtiger_workflowtemplates` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_vtiger_workflowtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `contacts_v`
--

DROP TABLE IF EXISTS `contacts_v`;
/*!50001 DROP VIEW IF EXISTS `contacts_v`*/;
/*!50001 CREATE TABLE `contacts_v` (
  `fullname` varchar(40),
  `lastname` varchar(20),
  `firstname` varchar(20),
  `salutation` varchar(200),
  `accountname` varchar(50),
  `department` varchar(20),
  `contact_no` varchar(20),
  `title` varchar(20),
  `reportsto` varchar(40),
  `phone` varchar(20),
  `mobile` varchar(20),
  `fax` varchar(20),
  `email` varchar(50),
  `otheremail` varchar(50),
  `secondaryemail` varchar(50),
  `training` varchar(20),
  `usertype` varchar(20),
  `contacttype` varchar(20),
  `imagename` varchar(50),
  `donotcall` tinyint(1),
  `emailoptout` tinyint(1),
  `reference` bigint(20),
  `notify_owner` tinyint(1),
  `isconvertedfromlead` tinyint(1),
  `reportstoid` bigint(11),
  `accountid` bigint(19),
  `contactid` bigint(19)
) */;

--
-- Temporary table structure for view `prj_ms_task_v`
--

DROP TABLE IF EXISTS `prj_ms_task_v`;
/*!50001 DROP VIEW IF EXISTS `prj_ms_task_v`*/;
/*!50001 CREATE TABLE `prj_ms_task_v` (
  `projecttaskname` varchar(50),
  `contact` varchar(20),
  `telphone` varchar(20),
  `projecttasktype` varchar(200),
  `schedule_date` varchar(10),
  `projectmilestonename` varchar(50),
  `projectmilestonedate` date,
  `responsible` varchar(60),
  `projecttaskpriority` varchar(200),
  `projecttaskstatus` varchar(200),
  `projecttaskprogress` tinyint(4),
  `projecttaskhours` int(11),
  `startdate` datetime,
  `enddate` datetime,
  `address` varchar(100),
  `description` text,
  `created_by` varchar(255),
  `creation_date` datetime,
  `last_update_by` varchar(255),
  `last_update_date` datetime,
  `projectid` int(11),
  `projecttaskid` int(11),
  `projectmilestoneid` int(11),
  `project_ms_idx` tinyint(4),
  `reviewed` tinyint(1),
  `addrlng` double,
  `addrlat` double,
  `projecttaskstatusid` int(11)
) */;

--
-- Temporary table structure for view `prj_mstone_task_v`
--

DROP TABLE IF EXISTS `prj_mstone_task_v`;
/*!50001 DROP VIEW IF EXISTS `prj_mstone_task_v`*/;
/*!50001 CREATE TABLE `prj_mstone_task_v` (
  `projecttaskname` varchar(50),
  `contact` varchar(20),
  `telphone` varchar(20),
  `schedule_date` varchar(10),
  `projectmilestonedate` date,
  `responsible` varchar(60),
  `projecttaskstatus` varchar(200),
  `startdate` datetime,
  `enddate` datetime,
  `address` varchar(100),
  `description` text,
  `created_by` varchar(255),
  `creation_date` datetime,
  `last_update_by` varchar(255),
  `last_update_date` datetime,
  `projectid` int(11),
  `projecttaskid` int(11),
  `projectmilestoneid` int(11),
  `reviewed` tinyint(1),
  `addrlng` double,
  `addrlat` double,
  `projecttaskstatusid` int(11)
) */;

--
-- Temporary table structure for view `prj_task_detail`
--

DROP TABLE IF EXISTS `prj_task_detail`;
/*!50001 DROP VIEW IF EXISTS `prj_task_detail`*/;
/*!50001 CREATE TABLE `prj_task_detail` (
  `projecttaskname` varchar(50),
  `subject` varchar(255),
  `filename` varchar(255),
  `invokes` int(11),
  `description` text,
  `typestr` varchar(100),
  `created_by` varchar(255),
  `creation_date` datetime,
  `projecttasktype` varchar(200),
  `responsible` varchar(255),
  `projecttaskpriority` varchar(200),
  `projecttaskstatus` varchar(200),
  `schedule_date` datetime,
  `projecttaskhours` int(11),
  `startdate` datetime,
  `projecttaskprogress` tinyint(4),
  `enddate` datetime,
  `location` varchar(255),
  `taskdesc` text,
  `contact` varchar(40),
  `mobile` varchar(20),
  `phone` varchar(20),
  `address` varchar(100),
  `project_no` varchar(20),
  `projectname` varchar(50),
  `projectstatus` varchar(200),
  `projectpriority` varchar(200),
  `path` varchar(255),
  `attachment` varchar(255),
  `reftbl` varchar(50),
  `refid` bigint(20),
  `type` tinyint(3) unsigned,
  `last_update_by` varchar(255),
  `last_update_date` datetime,
  `projecttaskstatusid` int(11),
  `projecttaskpriorityid` int(11),
  `projectstatusid` int(11),
  `projectpriorityid` int(11),
  `attachment_id` bigint(20),
  `projecttaskid` int(11),
  `projectid` int(11)
) */;

--
-- Temporary table structure for view `prj_task_v`
--

DROP TABLE IF EXISTS `prj_task_v`;
/*!50001 DROP VIEW IF EXISTS `prj_task_v`*/;
/*!50001 CREATE TABLE `prj_task_v` (
  `projecttaskname` varchar(50),
  `contact` varchar(20),
  `telphone` varchar(20),
  `schedule_date` varchar(10),
  `projectmilestonedate` date,
  `responsible` varchar(60),
  `projecttaskstatus` varchar(200),
  `startdate` datetime,
  `enddate` datetime,
  `address` varchar(100),
  `description` text,
  `created_by` varchar(255),
  `creation_date` datetime,
  `last_update_by` varchar(255),
  `last_update_date` datetime,
  `projectid` int(11),
  `projecttaskid` int(11),
  `projectmilestoneid` int(11),
  `reviewed` tinyint(1),
  `addrlng` double,
  `addrlat` double,
  `projecttaskstatusid` int(11)
) */;

--
-- Temporary table structure for view `users_v`
--

DROP TABLE IF EXISTS `users_v`;
/*!50001 DROP VIEW IF EXISTS `users_v`*/;
/*!50001 CREATE TABLE `users_v` (
  `user_name` varchar(255),
  `user_password` varchar(200),
  `fullname` varchar(60),
  `rolename` varchar(200),
  `rolelayout` varchar(200),
  `first_name` varchar(30),
  `last_name` varchar(30),
  `title` varchar(50),
  `phone_home` varchar(50),
  `phone_mobile` varchar(50),
  `phone_work` varchar(50),
  `phone_other` varchar(50),
  `phone_fax` varchar(50),
  `email1` varchar(100),
  `email2` varchar(100),
  `secondaryemail` varchar(100),
  `description` text,
  `status` tinyint(1),
  `id` int(11),
  `is_admin` varchar(3),
  `date_entered` timestamp,
  `date_modified` timestamp,
  `modified_user_id` varchar(255),
  `is_owner` varchar(5)
) */;

--
-- Table structure for table `vtiger_account`
--

DROP TABLE IF EXISTS `vtiger_account`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_account` (
  `accountid` bigint(19) NOT NULL auto_increment,
  `account_no` varchar(30) NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `parentid` bigint(19) default '0',
  `account_type` tinyint(4) default NULL,
  `industry` tinyint(4) default NULL,
  `annualrevenue` decimal(25,8) default NULL,
  `rating` tinyint(4) default NULL,
  `ownership` varchar(30) default NULL,
  `siccode` varchar(5) default NULL,
  `tickersymbol` varchar(30) default NULL,
  `phone` varchar(20) default NULL,
  `otherphone` varchar(20) default NULL,
  `email1` varchar(50) default NULL,
  `email2` varchar(50) default NULL,
  `website` varchar(50) default NULL,
  `fax` varchar(20) default NULL,
  `employees` int(10) default '0',
  `emailoptout` tinyint(1) default '0',
  `notify_owner` tinyint(1) default '0',
  `isconvertedfromlead` tinyint(1) default '0',
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`accountid`),
  KEY `account_account_type_idx` (`account_type`),
  KEY `email_idx` (`email1`,`email2`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_account`
--

LOCK TABLES `vtiger_account` WRITE;
/*!40000 ALTER TABLE `vtiger_account` DISABLE KEYS */;
INSERT INTO `vtiger_account` VALUES (1,'ACC00001','fdsafasfasfas',6,2,11,'0.00000000',2,'0','','','','','','','','',0,0,0,0,NULL,NULL,2,'2020-09-08 11:30:28'),(5,'ACC00003','3ucs',0,10,18,'789000.00000000',0,'0','','','02166039606','','','','','',108,0,0,1,NULL,NULL,NULL,NULL),(6,'ACC00004','三优通信',5,4,6,'0.00000000',2,'',NULL,NULL,'','','','','','',0,0,0,0,2,'2020-03-18 10:06:36',2,'2020-03-18 10:06:42');
/*!40000 ALTER TABLE `vtiger_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountbillads`
--

DROP TABLE IF EXISTS `vtiger_accountbillads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_accountbillads`
--

LOCK TABLES `vtiger_accountbillads` WRITE;
/*!40000 ALTER TABLE `vtiger_accountbillads` DISABLE KEYS */;
INSERT INTO `vtiger_accountbillads` VALUES (5,'','','','','shanghai','');
/*!40000 ALTER TABLE `vtiger_accountbillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountrating`
--

DROP TABLE IF EXISTS `vtiger_accountrating`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL auto_increment,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`accountratingid`),
  UNIQUE KEY `accountrating_rating_idx` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_accountrating`
--

LOCK TABLES `vtiger_accountrating` WRITE;
/*!40000 ALTER TABLE `vtiger_accountrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_accountrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountscf`
--

DROP TABLE IF EXISTS `vtiger_accountscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_accountscf` (
  `accountid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_accountscf`
--

LOCK TABLES `vtiger_accountscf` WRITE;
/*!40000 ALTER TABLE `vtiger_accountscf` DISABLE KEYS */;
INSERT INTO `vtiger_accountscf` VALUES (5);
/*!40000 ALTER TABLE `vtiger_accountscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountshipads`
--

DROP TABLE IF EXISTS `vtiger_accountshipads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_pobox` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  PRIMARY KEY  (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_accountshipads`
--

LOCK TABLES `vtiger_accountshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_accountshipads` DISABLE KEYS */;
INSERT INTO `vtiger_accountshipads` VALUES (5,'','','','','','shanghai');
/*!40000 ALTER TABLE `vtiger_accountshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accounttype`
--

DROP TABLE IF EXISTS `vtiger_accounttype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL auto_increment,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`accounttypeid`),
  UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_accounttype`
--

LOCK TABLES `vtiger_accounttype` WRITE;
/*!40000 ALTER TABLE `vtiger_accounttype` DISABLE KEYS */;
INSERT INTO `vtiger_accounttype` VALUES (2,'Analyst',1,2,1),(3,'Competitor',1,3,2),(4,'Customer',1,4,3),(5,'Integrator',1,5,4),(6,'Investor',1,6,5),(7,'Partner',1,7,6),(8,'Press',1,8,7),(9,'Prospect',1,9,8),(10,'Reseller',1,10,9),(11,'Other',1,11,10);
/*!40000 ALTER TABLE `vtiger_accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accounttype_seq`
--

DROP TABLE IF EXISTS `vtiger_accounttype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_accounttype_seq`
--

LOCK TABLES `vtiger_accounttype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_accounttype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_accounttype_seq` VALUES (11);
/*!40000 ALTER TABLE `vtiger_accounttype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_actionmapping`
--

DROP TABLE IF EXISTS `vtiger_actionmapping`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) default NULL,
  PRIMARY KEY  (`actionid`,`actionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_actionmapping`
--

LOCK TABLES `vtiger_actionmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_actionmapping` DISABLE KEYS */;
INSERT INTO `vtiger_actionmapping` VALUES (0,'Save',0),(0,'SavePriceBook',1),(0,'SaveVendor',1),(1,'DetailViewAjax',1),(1,'EditView',0),(1,'PriceBookEditView',1),(1,'QuickCreate',1),(1,'VendorEditView',1),(2,'Delete',0),(2,'DeletePriceBook',1),(2,'DeleteVendor',1),(3,'index',0),(3,'Popup',1),(4,'DetailView',0),(4,'PriceBookDetailView',1),(4,'TagCloud',1),(4,'VendorDetailView',1),(5,'Import',0),(6,'Export',0),(8,'Merge',0),(9,'ConvertLead',0),(10,'DuplicatesHandling',0),(11,'ReceiveIncomingCalls',0),(12,'MakeOutgoingCalls',0),(13,'Print',0);
/*!40000 ALTER TABLE `vtiger_actionmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity`
--

DROP TABLE IF EXISTS `vtiger_activity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activity` (
  `activityid` int(19) NOT NULL auto_increment,
  `subject` varchar(100) NOT NULL,
  `semodule` varchar(20) default NULL,
  `activitytype` varchar(200) NOT NULL,
  `date_start` date NOT NULL,
  `due_date` date default NULL,
  `time_start` varchar(50) default NULL,
  `time_end` varchar(50) default NULL,
  `sendnotification` varchar(3) NOT NULL default '0',
  `duration_hours` varchar(200) default NULL,
  `duration_minutes` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `eventstatus` varchar(200) default NULL,
  `priority` varchar(200) default NULL,
  `location` varchar(150) default NULL,
  `notime` varchar(3) NOT NULL default '0',
  `visibility` varchar(50) NOT NULL default 'all',
  `recurringtype` varchar(200) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`activityid`),
  KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  KEY `activity_eventstatus_idx` (`eventstatus`),
  KEY `activity_status_idx` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activity`
--

LOCK TABLES `vtiger_activity` WRITE;
/*!40000 ALTER TABLE `vtiger_activity` DISABLE KEYS */;
INSERT INTO `vtiger_activity` VALUES (1,'电话拜访','','1','2020-02-15','2020-02-15','20:55','20:55','','','','','','','','','','',NULL,NULL,2,'2020-03-18 10:15:08');
/*!40000 ALTER TABLE `vtiger_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_reminder`
--

DROP TABLE IF EXISTS `vtiger_activity_reminder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL,
  PRIMARY KEY  (`activity_id`,`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activity_reminder`
--

LOCK TABLES `vtiger_activity_reminder` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_activity_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_reminder_popup`
--

DROP TABLE IF EXISTS `vtiger_activity_reminder_popup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL auto_increment,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY  (`reminderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activity_reminder_popup`
--

LOCK TABLES `vtiger_activity_reminder_popup` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_reminder_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_activity_reminder_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_view`
--

DROP TABLE IF EXISTS `vtiger_activity_view`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL auto_increment,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`activity_viewid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activity_view`
--

LOCK TABLES `vtiger_activity_view` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_view` DISABLE KEYS */;
INSERT INTO `vtiger_activity_view` VALUES (1,'Today',0,1),(2,'This Week',1,1),(3,'This Month',2,1),(4,'This Year',3,1);
/*!40000 ALTER TABLE `vtiger_activity_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_view_seq`
--

DROP TABLE IF EXISTS `vtiger_activity_view_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activity_view_seq`
--

LOCK TABLES `vtiger_activity_view_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_view_seq` DISABLE KEYS */;
INSERT INTO `vtiger_activity_view_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_activity_view_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activitycf`
--

DROP TABLE IF EXISTS `vtiger_activitycf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activitycf` (
  `activityid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activitycf`
--

LOCK TABLES `vtiger_activitycf` WRITE;
/*!40000 ALTER TABLE `vtiger_activitycf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_activitycf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activityproductrel`
--

DROP TABLE IF EXISTS `vtiger_activityproductrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL default '0',
  `productid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`activityid`,`productid`),
  KEY `activityproductrel_activityid_idx` (`activityid`),
  KEY `activityproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activityproductrel`
--

LOCK TABLES `vtiger_activityproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_activityproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_activityproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activitytype`
--

DROP TABLE IF EXISTS `vtiger_activitytype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL auto_increment,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`activitytypeid`),
  UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activitytype`
--

LOCK TABLES `vtiger_activitytype` WRITE;
/*!40000 ALTER TABLE `vtiger_activitytype` DISABLE KEYS */;
INSERT INTO `vtiger_activitytype` VALUES (1,'Call',0,12,0),(2,'Meeting',0,13,1),(3,'Mobile Call',0,321,1);
/*!40000 ALTER TABLE `vtiger_activitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activitytype_seq`
--

DROP TABLE IF EXISTS `vtiger_activitytype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_activitytype_seq`
--

LOCK TABLES `vtiger_activitytype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_activitytype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_activitytype_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_activitytype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_announcement`
--

DROP TABLE IF EXISTS `vtiger_announcement`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_announcement` (
  `creatorid` int(19) NOT NULL auto_increment,
  `announcement` text,
  `title` varchar(255) default NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`creatorid`),
  KEY `announcement_creatorid_idx` (`creatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_announcement`
--

LOCK TABLES `vtiger_announcement` WRITE;
/*!40000 ALTER TABLE `vtiger_announcement` DISABLE KEYS */;
INSERT INTO `vtiger_announcement` VALUES (2,'3545etqt','ghhg','2020-03-18 02:15:17');
/*!40000 ALTER TABLE `vtiger_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assets`
--

DROP TABLE IF EXISTS `vtiger_assets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_assets` (
  `assetsid` int(11) NOT NULL auto_increment,
  `asset_no` varchar(30) NOT NULL,
  `account` bigint(19) default NULL,
  `product` bigint(19) NOT NULL,
  `serialnumber` varchar(50) default NULL,
  `datesold` date default NULL,
  `dateinservice` date default NULL,
  `assetstatus` tinyint(4) default '1',
  `tagnumber` varchar(50) default NULL,
  `invoiceid` bigint(19) default NULL,
  `shippingmethod` tinyint(4) default NULL,
  `shippingtrackingnumber` varchar(20) default NULL,
  `assetname` varchar(20) default NULL,
  `contact` bigint(19) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`assetsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_assets`
--

LOCK TABLES `vtiger_assets` WRITE;
/*!40000 ALTER TABLE `vtiger_assets` DISABLE KEYS */;
INSERT INTO `vtiger_assets` VALUES (1,'AST00001',5,4,'','2020-02-27','2020-02-27',1,'',4,0,'','pc电脑',1,2,'2020-02-27 09:42:17',2,'2020-03-17 20:35:37'),(2,'AST00002',0,0,'','2020-02-27','2020-02-27',1,'',0,0,'','路由器',0,2,'2020-03-17 20:35:52',2,'2020-03-18 10:14:04');
/*!40000 ALTER TABLE `vtiger_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assetscf`
--

DROP TABLE IF EXISTS `vtiger_assetscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_assetscf` (
  `assetsid` int(19) NOT NULL,
  PRIMARY KEY  (`assetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_assetscf`
--

LOCK TABLES `vtiger_assetscf` WRITE;
/*!40000 ALTER TABLE `vtiger_assetscf` DISABLE KEYS */;
INSERT INTO `vtiger_assetscf` VALUES (12);
/*!40000 ALTER TABLE `vtiger_assetscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assetstatus`
--

DROP TABLE IF EXISTS `vtiger_assetstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_assetstatus` (
  `assetstatusid` int(11) NOT NULL auto_increment,
  `assetstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`assetstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_assetstatus`
--

LOCK TABLES `vtiger_assetstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_assetstatus` DISABLE KEYS */;
INSERT INTO `vtiger_assetstatus` VALUES (1,'In Service',1,235,1),(2,'Out-of-service',1,236,2);
/*!40000 ALTER TABLE `vtiger_assetstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assetstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_assetstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_assetstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_assetstatus_seq`
--

LOCK TABLES `vtiger_assetstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_assetstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_assetstatus_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_assetstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asterisk`
--

DROP TABLE IF EXISTS `vtiger_asterisk`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_asterisk` (
  `server` varchar(30) default NULL,
  `port` varchar(30) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `version` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_asterisk`
--

LOCK TABLES `vtiger_asterisk` WRITE;
/*!40000 ALTER TABLE `vtiger_asterisk` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_asterisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asteriskextensions`
--

DROP TABLE IF EXISTS `vtiger_asteriskextensions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_asteriskextensions` (
  `userid` int(11) default NULL,
  `asterisk_extension` varchar(50) default NULL,
  `use_asterisk` varchar(3) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_asteriskextensions`
--

LOCK TABLES `vtiger_asteriskextensions` WRITE;
/*!40000 ALTER TABLE `vtiger_asteriskextensions` DISABLE KEYS */;
INSERT INTO `vtiger_asteriskextensions` VALUES (1,NULL,NULL);
/*!40000 ALTER TABLE `vtiger_asteriskextensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asteriskincomingcalls`
--

DROP TABLE IF EXISTS `vtiger_asteriskincomingcalls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) default NULL,
  `from_name` varchar(50) default NULL,
  `to_number` varchar(50) default NULL,
  `callertype` varchar(30) default NULL,
  `flag` int(19) default NULL,
  `timer` int(19) default NULL,
  `refuid` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_asteriskincomingcalls`
--

LOCK TABLES `vtiger_asteriskincomingcalls` WRITE;
/*!40000 ALTER TABLE `vtiger_asteriskincomingcalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_asteriskincomingcalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asteriskincomingevents`
--

DROP TABLE IF EXISTS `vtiger_asteriskincomingevents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_asteriskincomingevents` (
  `uid` varchar(255) NOT NULL,
  `channel` varchar(100) default NULL,
  `from_number` bigint(20) default NULL,
  `from_name` varchar(100) default NULL,
  `to_number` bigint(20) default NULL,
  `callertype` varchar(100) default NULL,
  `timer` int(20) default NULL,
  `flag` varchar(3) default NULL,
  `pbxrecordid` int(19) default NULL,
  `relcrmid` int(19) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_asteriskincomingevents`
--

LOCK TABLES `vtiger_asteriskincomingevents` WRITE;
/*!40000 ALTER TABLE `vtiger_asteriskincomingevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_asteriskincomingevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_attachments`
--

DROP TABLE IF EXISTS `vtiger_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(100) default NULL,
  `path` text,
  `subject` varchar(255) default NULL,
  PRIMARY KEY  (`attachmentsid`),
  KEY `attachments_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_attachments`
--

LOCK TABLES `vtiger_attachments` WRITE;
/*!40000 ALTER TABLE `vtiger_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_attachmentsfolder`
--

DROP TABLE IF EXISTS `vtiger_attachmentsfolder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL auto_increment,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) default NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) default NULL,
  PRIMARY KEY  (`folderid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_attachmentsfolder`
--

LOCK TABLES `vtiger_attachmentsfolder` WRITE;
/*!40000 ALTER TABLE `vtiger_attachmentsfolder` DISABLE KEYS */;
INSERT INTO `vtiger_attachmentsfolder` VALUES (1,'Default','This is a Default Folder',1,1);
/*!40000 ALTER TABLE `vtiger_attachmentsfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_attachmentsfolder_seq`
--

DROP TABLE IF EXISTS `vtiger_attachmentsfolder_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_attachmentsfolder_seq`
--

LOCK TABLES `vtiger_attachmentsfolder_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_attachmentsfolder_seq` DISABLE KEYS */;
INSERT INTO `vtiger_attachmentsfolder_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_attachmentsfolder_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_audit_trial`
--

DROP TABLE IF EXISTS `vtiger_audit_trial`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) default NULL,
  `module` varchar(255) default NULL,
  `action` varchar(255) default NULL,
  `recordid` varchar(20) default NULL,
  `actiondate` datetime default NULL,
  PRIMARY KEY  (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_audit_trial`
--

LOCK TABLES `vtiger_audit_trial` WRITE;
/*!40000 ALTER TABLE `vtiger_audit_trial` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_audit_trial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_blocks`
--

DROP TABLE IF EXISTS `vtiger_blocks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) default NULL,
  `show_title` int(2) default NULL,
  `visible` int(2) NOT NULL default '0',
  `create_view` int(2) NOT NULL default '0',
  `edit_view` int(2) NOT NULL default '0',
  `detail_view` int(2) NOT NULL default '0',
  `display_status` int(1) NOT NULL default '1',
  `iscustom` int(1) NOT NULL default '0',
  PRIMARY KEY  (`blockid`),
  KEY `block_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_blocks`
--

LOCK TABLES `vtiger_blocks` WRITE;
/*!40000 ALTER TABLE `vtiger_blocks` DISABLE KEYS */;
INSERT INTO `vtiger_blocks` VALUES (1,2,'LBL_OPPORTUNITY_INFORMATION',1,0,0,0,0,0,1,0),(2,2,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(3,2,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(4,4,'LBL_CONTACT_INFORMATION',1,0,0,0,0,0,1,0),(5,4,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(6,4,'LBL_CUSTOMER_PORTAL_INFORMATION',3,0,0,0,0,0,1,0),(7,4,'LBL_ADDRESS_INFORMATION',4,0,0,0,0,0,1,0),(8,4,'LBL_DESCRIPTION_INFORMATION',5,0,0,0,0,0,1,0),(9,6,'LBL_ACCOUNT_INFORMATION',1,0,0,0,0,0,1,0),(10,6,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(11,6,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(12,6,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(13,7,'LBL_LEAD_INFORMATION',1,0,0,0,0,0,1,0),(14,7,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(15,7,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(16,7,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(17,8,'LBL_NOTE_INFORMATION',1,0,0,0,0,0,1,0),(18,8,'LBL_FILE_INFORMATION',3,1,0,0,0,0,1,0),(19,9,'LBL_TASK_INFORMATION',1,0,0,0,0,0,1,0),(20,9,'LBL_DESCRIPTION_INFORMATION',2,1,0,0,0,0,1,0),(21,10,'LBL_EMAIL_INFORMATION',1,0,0,0,0,0,1,0),(22,10,'Emails_Block1',2,1,0,0,0,0,1,0),(23,10,'Emails_Block2',3,1,0,0,0,0,1,0),(24,10,'Emails_Block3',4,1,0,0,0,0,1,0),(25,13,'LBL_TICKET_INFORMATION',1,0,0,0,0,0,1,0),(26,13,'',2,1,0,0,0,0,1,0),(27,13,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(28,13,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(29,13,'LBL_TICKET_RESOLUTION',5,0,0,1,0,0,1,0),(30,13,'LBL_COMMENTS',6,0,0,1,0,0,1,0),(31,14,'LBL_PRODUCT_INFORMATION',1,0,0,0,0,0,1,0),(32,14,'LBL_PRICING_INFORMATION',2,0,0,0,0,0,1,0),(33,14,'LBL_STOCK_INFORMATION',3,0,0,0,0,0,1,0),(34,14,'LBL_CUSTOM_INFORMATION',4,0,0,0,0,0,1,0),(35,14,'LBL_IMAGE_INFORMATION',5,0,0,0,0,0,1,0),(36,14,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(37,15,'LBL_FAQ_INFORMATION',1,0,0,0,0,0,1,0),(38,15,'LBL_COMMENT_INFORMATION',4,0,0,1,0,0,1,0),(39,16,'LBL_EVENT_INFORMATION',1,0,0,0,0,0,1,0),(40,16,'LBL_REMINDER_INFORMATION',2,0,0,0,0,0,1,0),(41,16,'LBL_DESCRIPTION_INFORMATION',5,0,0,0,0,0,1,0),(42,18,'LBL_VENDOR_INFORMATION',1,0,0,0,0,0,1,0),(43,18,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(44,18,'LBL_VENDOR_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(45,18,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(46,19,'LBL_PRICEBOOK_INFORMATION',1,0,0,0,0,0,1,0),(47,19,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(48,19,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(49,20,'LBL_QUOTE_INFORMATION',1,0,0,0,0,0,1,0),(50,20,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(51,20,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(52,20,'LBL_RELATED_PRODUCTS',4,0,0,0,0,0,1,0),(53,20,'LBL_TERMS_INFORMATION',5,0,0,0,0,0,1,0),(54,20,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(55,21,'LBL_PO_INFORMATION',1,0,0,0,0,0,1,0),(56,21,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(57,21,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(58,21,'LBL_RELATED_PRODUCTS',4,0,0,0,0,0,1,0),(59,21,'LBL_TERMS_INFORMATION',5,0,0,0,0,0,1,0),(60,21,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(61,22,'LBL_SO_INFORMATION',1,0,0,0,0,0,1,0),(62,22,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(63,22,'LBL_ADDRESS_INFORMATION',4,0,0,0,0,0,1,0),(64,22,'LBL_RELATED_PRODUCTS',5,0,0,0,0,0,1,0),(65,22,'LBL_TERMS_INFORMATION',6,0,0,0,0,0,1,0),(66,22,'LBL_DESCRIPTION_INFORMATION',7,0,0,0,0,0,1,0),(67,23,'LBL_INVOICE_INFORMATION',1,0,0,0,0,0,1,0),(68,23,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(69,23,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(70,23,'LBL_RELATED_PRODUCTS',4,0,0,0,0,0,1,0),(71,23,'LBL_TERMS_INFORMATION',5,0,0,0,0,0,1,0),(72,23,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(73,4,'LBL_IMAGE_INFORMATION',6,0,0,0,0,0,1,0),(74,26,'LBL_CAMPAIGN_INFORMATION',1,0,0,0,0,0,1,0),(75,26,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(76,26,'LBL_EXPECTATIONS_AND_ACTUALS',3,0,0,0,0,0,1,0),(77,29,'LBL_USERLOGIN_ROLE',1,0,0,0,0,0,1,0),(78,29,'LBL_CURRENCY_CONFIGURATION',3,0,0,0,0,0,1,0),(79,29,'LBL_MORE_INFORMATION',4,0,0,0,0,0,1,0),(80,29,'LBL_ADDRESS_INFORMATION',5,0,0,0,0,0,1,0),(81,26,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(82,29,'LBL_USER_IMAGE_INFORMATION',5,0,0,0,0,0,1,0),(83,29,'LBL_USER_ADV_OPTIONS',6,0,0,0,0,0,1,0),(84,8,'LBL_DESCRIPTION',2,0,0,0,0,0,1,0),(85,22,'Recurring Invoice Information',2,0,0,0,0,0,1,0),(86,9,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(87,16,'LBL_CUSTOM_INFORMATION',6,0,0,0,0,0,1,0),(88,34,'LBL_PBXMANAGER_INFORMATION',1,0,0,0,0,0,1,0),(89,35,'LBL_SERVICE_CONTRACT_INFORMATION',1,0,0,0,0,0,1,0),(90,35,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(91,36,'LBL_SERVICE_INFORMATION',1,0,0,0,0,0,1,0),(92,36,'LBL_PRICING_INFORMATION',2,0,0,0,0,0,1,0),(93,36,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(94,36,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(95,38,'LBL_ASSET_INFORMATION',1,0,0,0,0,0,1,0),(96,38,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(97,38,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(98,42,'LBL_MODCOMMENTS_INFORMATION',1,0,0,0,0,0,1,0),(99,42,'LBL_OTHER_INFORMATION',2,0,0,0,0,0,1,0),(100,42,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(101,43,'LBL_PROJECT_MILESTONE_INFORMATION',1,0,0,0,0,0,1,0),(102,43,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(103,43,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(104,44,'LBL_PROJECT_TASK_INFORMATION',1,0,0,0,0,0,1,0),(105,44,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(106,44,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(107,45,'LBL_PROJECT_INFORMATION',1,0,0,0,0,0,1,0),(108,45,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(109,45,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(110,47,'LBL_SMSNOTIFIER_INFORMATION',1,0,0,0,0,0,1,0),(111,47,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(112,47,'StatusInformation',3,0,0,0,0,0,1,0),(113,23,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(114,22,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(115,21,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(116,20,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(117,16,'LBL_RECURRENCE_INFORMATION',3,0,0,0,0,0,1,0),(118,29,'LBL_CALENDAR_SETTINGS',2,0,0,0,0,0,1,0),(119,16,'LBL_RELATED_TO',4,0,0,0,0,0,1,0);
/*!40000 ALTER TABLE `vtiger_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_blocks_seq`
--

DROP TABLE IF EXISTS `vtiger_blocks_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_blocks_seq`
--

LOCK TABLES `vtiger_blocks_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_blocks_seq` DISABLE KEYS */;
INSERT INTO `vtiger_blocks_seq` VALUES (119);
/*!40000 ALTER TABLE `vtiger_blocks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_default_activitytypes`
--

DROP TABLE IF EXISTS `vtiger_calendar_default_activitytypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_calendar_default_activitytypes` (
  `id` int(19) NOT NULL,
  `module` varchar(50) default NULL,
  `fieldname` varchar(50) default NULL,
  `defaultcolor` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes`
--

LOCK TABLES `vtiger_calendar_default_activitytypes` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_default_activitytypes` VALUES (1,'Events','Events','#17309A'),(2,'Calendar','Tasks','#3A87AD'),(3,'Potentials','Potentials','#AA6705'),(4,'Contacts','support_end_date','#953B39'),(5,'Contacts','birthday','#545252'),(6,'Invoice','Invoice','#87865D'),(7,'Project','Project','#C71585'),(8,'ProjectTask','Project Task','#006400');
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_default_activitytypes_seq`
--

DROP TABLE IF EXISTS `vtiger_calendar_default_activitytypes_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_calendar_default_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes_seq`
--

LOCK TABLES `vtiger_calendar_default_activitytypes_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes_seq` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_default_activitytypes_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_user_activitytypes`
--

DROP TABLE IF EXISTS `vtiger_calendar_user_activitytypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_calendar_user_activitytypes` (
  `id` int(19) NOT NULL,
  `defaultid` int(19) default NULL,
  `userid` int(19) default NULL,
  `color` varchar(50) default NULL,
  `visible` int(19) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes`
--

LOCK TABLES `vtiger_calendar_user_activitytypes` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_user_activitytypes` VALUES (1,1,1,'#17309A',1),(2,2,1,'#3A87AD',1),(3,3,1,'#AA6705',1),(4,4,1,'#953B39',1),(5,5,1,'#545252',1),(6,6,1,'#87865D',1),(7,7,1,'#C71585',1),(8,8,1,'#006400',1);
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_user_activitytypes_seq`
--

DROP TABLE IF EXISTS `vtiger_calendar_user_activitytypes_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_calendar_user_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes_seq`
--

LOCK TABLES `vtiger_calendar_user_activitytypes_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes_seq` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_user_activitytypes_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendarsharedtype`
--

DROP TABLE IF EXISTS `vtiger_calendarsharedtype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_calendarsharedtype` (
  `calendarsharedtypeid` int(11) NOT NULL auto_increment,
  `calendarsharedtype` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`calendarsharedtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_calendarsharedtype`
--

LOCK TABLES `vtiger_calendarsharedtype` WRITE;
/*!40000 ALTER TABLE `vtiger_calendarsharedtype` DISABLE KEYS */;
INSERT INTO `vtiger_calendarsharedtype` VALUES (1,'public',1,1),(2,'private',2,1),(3,'seletedusers',3,1);
/*!40000 ALTER TABLE `vtiger_calendarsharedtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendarsharedtype_seq`
--

DROP TABLE IF EXISTS `vtiger_calendarsharedtype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_calendarsharedtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_calendarsharedtype_seq`
--

LOCK TABLES `vtiger_calendarsharedtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_calendarsharedtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_calendarsharedtype_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_calendarsharedtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_callduration`
--

DROP TABLE IF EXISTS `vtiger_callduration`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_callduration` (
  `calldurationid` int(11) NOT NULL auto_increment,
  `callduration` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`calldurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_callduration`
--

LOCK TABLES `vtiger_callduration` WRITE;
/*!40000 ALTER TABLE `vtiger_callduration` DISABLE KEYS */;
INSERT INTO `vtiger_callduration` VALUES (1,'5',1,1),(2,'10',2,1),(3,'30',3,1),(4,'60',4,1),(5,'120',5,1);
/*!40000 ALTER TABLE `vtiger_callduration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_callduration_seq`
--

DROP TABLE IF EXISTS `vtiger_callduration_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_callduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_callduration_seq`
--

LOCK TABLES `vtiger_callduration_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_callduration_seq` DISABLE KEYS */;
INSERT INTO `vtiger_callduration_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_callduration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaign`
--

DROP TABLE IF EXISTS `vtiger_campaign`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaign` (
  `campaign_no` varchar(20) NOT NULL,
  `campaignname` varchar(50) default NULL,
  `campaigntype` tinyint(4) default NULL,
  `campaignstatus` tinyint(4) default NULL,
  `expectedrevenue` decimal(25,8) default NULL,
  `budgetcost` decimal(25,8) default NULL,
  `actualcost` decimal(25,8) default NULL,
  `expectedresponse` tinyint(4) default NULL,
  `numsent` decimal(11,0) default NULL,
  `product_id` bigint(19) default NULL,
  `sponsor` varchar(255) default NULL,
  `targetaudience` varchar(255) default NULL,
  `targetsize` int(11) default NULL,
  `expectedresponsecount` int(11) default NULL,
  `expectedsalescount` int(11) default NULL,
  `expectedroi` decimal(25,8) default NULL,
  `actualresponsecount` int(11) default NULL,
  `actualsalescount` int(11) default NULL,
  `actualroi` decimal(25,8) default NULL,
  `campaignid` bigint(19) NOT NULL auto_increment,
  `closingdate` date default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`campaignid`),
  KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  KEY `campaign_campaignname_idx` (`campaignname`),
  KEY `campaign_campaignid_idx` (`campaignid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaign`
--

LOCK TABLES `vtiger_campaign` WRITE;
/*!40000 ALTER TABLE `vtiger_campaign` DISABLE KEYS */;
INSERT INTO `vtiger_campaign` VALUES ('CAM00001','ucin camp',2,0,'100000.00000000','880.00000000','990.00000000',0,'19',2,'sponsor creatorhome','',100,200,10,'99.00000000',188,8,'88.00000000',3,'2015-01-31',NULL,NULL,2,'2020-03-17 20:38:48'),('CAM19102200001','dfafa',2,2,'0.00000000','0.00000000','0.00000000',0,'0',0,'','',0,0,0,'0.00000000',0,0,'0.00000000',4,'2019-10-22',2,'2019-10-22 18:08:55',2,'2019-10-22 18:11:57'),('CAM19102200002','testa',8,2,'0.00000000','0.00000000','0.00000000',4,'0',2,'','',0,0,0,'0.00000000',0,0,'0.00000000',5,'2019-10-22',2,'2019-10-22 18:11:18',2,'2019-10-22 18:11:18');
/*!40000 ALTER TABLE `vtiger_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignaccountrel`
--

DROP TABLE IF EXISTS `vtiger_campaignaccountrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignaccountrel` (
  `campaignid` int(19) default NULL,
  `accountid` int(19) default NULL,
  `campaignrelstatusid` int(19) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignaccountrel`
--

LOCK TABLES `vtiger_campaignaccountrel` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignaccountrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaignaccountrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaigncontrel`
--

DROP TABLE IF EXISTS `vtiger_campaigncontrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL default '0',
  `contactid` int(19) NOT NULL default '0',
  `campaignrelstatusid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`,`contactid`,`campaignrelstatusid`),
  KEY `campaigncontrel_contractid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaigncontrel`
--

LOCK TABLES `vtiger_campaigncontrel` WRITE;
/*!40000 ALTER TABLE `vtiger_campaigncontrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaigncontrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignleadrel`
--

DROP TABLE IF EXISTS `vtiger_campaignleadrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL default '0',
  `leadid` int(19) NOT NULL default '0',
  `campaignrelstatusid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`,`leadid`,`campaignrelstatusid`),
  KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignleadrel`
--

LOCK TABLES `vtiger_campaignleadrel` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignleadrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaignleadrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignrelstatus`
--

DROP TABLE IF EXISTS `vtiger_campaignrelstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignrelstatus` (
  `campaignrelstatusid` int(19) default NULL,
  `campaignrelstatus` varchar(256) default NULL,
  `sortorderid` int(19) default NULL,
  `presence` int(19) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignrelstatus`
--

LOCK TABLES `vtiger_campaignrelstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignrelstatus` DISABLE KEYS */;
INSERT INTO `vtiger_campaignrelstatus` VALUES (2,'Contacted - Successful',1,1),(3,'Contacted - Unsuccessful',2,1),(4,'Contacted - Never Contact Again',3,1);
/*!40000 ALTER TABLE `vtiger_campaignrelstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignrelstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_campaignrelstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignrelstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignrelstatus_seq`
--

LOCK TABLES `vtiger_campaignrelstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignrelstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_campaignrelstatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_campaignrelstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignscf`
--

DROP TABLE IF EXISTS `vtiger_campaignscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignscf`
--

LOCK TABLES `vtiger_campaignscf` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignscf` DISABLE KEYS */;
INSERT INTO `vtiger_campaignscf` VALUES (3);
/*!40000 ALTER TABLE `vtiger_campaignscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignstatus`
--

DROP TABLE IF EXISTS `vtiger_campaignstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL auto_increment,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`campaignstatusid`),
  KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignstatus`
--

LOCK TABLES `vtiger_campaignstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignstatus` DISABLE KEYS */;
INSERT INTO `vtiger_campaignstatus` VALUES (2,'Planning',1,15,1),(3,'Active',1,16,2),(4,'Inactive',1,17,3),(5,'Completed',1,18,4),(6,'Cancelled',1,19,5);
/*!40000 ALTER TABLE `vtiger_campaignstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_campaignstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaignstatus_seq`
--

LOCK TABLES `vtiger_campaignstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_campaignstatus_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_campaignstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaigntype`
--

DROP TABLE IF EXISTS `vtiger_campaigntype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL auto_increment,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`campaigntypeid`),
  UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaigntype`
--

LOCK TABLES `vtiger_campaigntype` WRITE;
/*!40000 ALTER TABLE `vtiger_campaigntype` DISABLE KEYS */;
INSERT INTO `vtiger_campaigntype` VALUES (2,'Conference',1,21,1),(3,'Webinar',1,22,2),(4,'Trade Show',1,23,3),(5,'Public Relations',1,24,4),(6,'Partners',1,25,5),(7,'Referral Program',1,26,6),(8,'Advertisement',1,27,7),(9,'Banner Ads',1,28,8),(10,'Direct Mail',1,29,9),(11,'Email',1,30,10),(12,'Telemarketing',1,31,11),(13,'Others',1,32,12);
/*!40000 ALTER TABLE `vtiger_campaigntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaigntype_seq`
--

DROP TABLE IF EXISTS `vtiger_campaigntype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_campaigntype_seq`
--

LOCK TABLES `vtiger_campaigntype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_campaigntype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_campaigntype_seq` VALUES (13);
/*!40000 ALTER TABLE `vtiger_campaigntype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_carrier`
--

DROP TABLE IF EXISTS `vtiger_carrier`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_carrier` (
  `carrierid` int(19) NOT NULL auto_increment,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`carrierid`),
  UNIQUE KEY `carrier_carrier_idx` (`carrier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_carrier`
--

LOCK TABLES `vtiger_carrier` WRITE;
/*!40000 ALTER TABLE `vtiger_carrier` DISABLE KEYS */;
INSERT INTO `vtiger_carrier` VALUES (1,'FedEx',1,33,0),(2,'UPS',1,34,1),(3,'USPS',1,35,2),(4,'DHL',1,36,3),(5,'BlueDart',1,37,4);
/*!40000 ALTER TABLE `vtiger_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_carrier_seq`
--

DROP TABLE IF EXISTS `vtiger_carrier_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_carrier_seq`
--

LOCK TABLES `vtiger_carrier_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_carrier_seq` DISABLE KEYS */;
INSERT INTO `vtiger_carrier_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_carrier_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cntactivityrel`
--

DROP TABLE IF EXISTS `vtiger_cntactivityrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL default '0',
  `activityid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`contactid`,`activityid`),
  KEY `cntactivityrel_contactid_idx` (`contactid`),
  KEY `cntactivityrel_activityid_idx` (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_cntactivityrel`
--

LOCK TABLES `vtiger_cntactivityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_cntactivityrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_cntactivityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactaddress`
--

DROP TABLE IF EXISTS `vtiger_contactaddress`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contactaddress` (
  `contactaddressid` bigint(19) NOT NULL default '0',
  `mailingcity` varchar(40) default NULL,
  `mailingstreet` varchar(250) default NULL,
  `mailingcountry` varchar(40) default NULL,
  `othercountry` varchar(30) default NULL,
  `mailingstate` varchar(30) default NULL,
  `mailingpobox` varchar(30) default NULL,
  `othercity` varchar(40) default NULL,
  `otherstate` varchar(50) default NULL,
  `mailingzip` varchar(30) default NULL,
  `otherzip` varchar(30) default NULL,
  `otherstreet` varchar(250) default NULL,
  `otherpobox` varchar(30) default NULL,
  PRIMARY KEY  (`contactaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contactaddress`
--

LOCK TABLES `vtiger_contactaddress` WRITE;
/*!40000 ALTER TABLE `vtiger_contactaddress` DISABLE KEYS */;
INSERT INTO `vtiger_contactaddress` VALUES (6,'','shanghai','','','','','','','','','','');
/*!40000 ALTER TABLE `vtiger_contactaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactdetails`
--

DROP TABLE IF EXISTS `vtiger_contactdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contactdetails` (
  `contactid` bigint(19) NOT NULL auto_increment,
  `contact_no` varchar(20) NOT NULL,
  `accountid` bigint(19) default NULL,
  `salutation` tinyint(4) default NULL,
  `firstname` varchar(20) default NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `mobile` varchar(20) default NULL,
  `title` varchar(20) default NULL,
  `department` varchar(20) default NULL,
  `fax` varchar(20) default NULL,
  `reportsto` bigint(11) default NULL,
  `training` varchar(20) default NULL,
  `usertype` varchar(20) default NULL,
  `contacttype` varchar(20) default NULL,
  `otheremail` varchar(50) default NULL,
  `secondaryemail` varchar(50) default NULL,
  `donotcall` tinyint(1) default NULL,
  `emailoptout` tinyint(1) default '0',
  `imagename` varchar(50) default NULL,
  `reference` bigint(20) default NULL,
  `notify_owner` tinyint(1) default '0',
  `isconvertedfromlead` tinyint(1) default '0',
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`contactid`),
  KEY `contactdetails_accountid_idx` (`accountid`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contactdetails`
--

LOCK TABLES `vtiger_contactdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_contactdetails` DISABLE KEYS */;
INSERT INTO `vtiger_contactdetails` VALUES (6,'CTA00002',5,0,'四','李','','02166039606','1893006','desination','','',0,'','','','','',0,0,'',0,0,1,NULL,NULL,NULL,NULL),(7,'CTA00003',1,0,'John','St','','','','','','',6,'','','','','',0,0,'',0,0,0,NULL,NULL,NULL,NULL),(8,'CTA00004',1,0,'M','Lee','','','','','','',6,'','','','','',0,0,'',0,0,0,NULL,NULL,NULL,NULL),(9,'CTA00005',5,2,'六','冯','','','','','','',0,'','','','','',0,0,'',0,0,1,NULL,NULL,NULL,NULL),(10,'CTA00006',6,0,'五','王','','','','','','',0,NULL,NULL,NULL,'','',0,0,NULL,NULL,0,0,2,'2020-03-17 20:37:57',2,'2020-03-18 10:07:15');
/*!40000 ALTER TABLE `vtiger_contactdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactscf`
--

DROP TABLE IF EXISTS `vtiger_contactscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contactscf` (
  `contactid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contactscf`
--

LOCK TABLES `vtiger_contactscf` WRITE;
/*!40000 ALTER TABLE `vtiger_contactscf` DISABLE KEYS */;
INSERT INTO `vtiger_contactscf` VALUES (6);
/*!40000 ALTER TABLE `vtiger_contactscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactsubdetails`
--

DROP TABLE IF EXISTS `vtiger_contactsubdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contactsubdetails` (
  `contactsubscriptionid` bigint(19) NOT NULL default '0',
  `homephone` varchar(20) default NULL,
  `otherphone` varchar(20) default NULL,
  `assistant` varchar(20) default NULL,
  `assistantphone` varchar(20) default NULL,
  `birthday` date default NULL,
  `laststayintouchrequest` varchar(50) default '0',
  `laststayintouchsavedate` int(10) default NULL,
  `leadsource` tinyint(4) default NULL,
  PRIMARY KEY  (`contactsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contactsubdetails`
--

LOCK TABLES `vtiger_contactsubdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_contactsubdetails` DISABLE KEYS */;
INSERT INTO `vtiger_contactsubdetails` VALUES (6,'','','','',NULL,'0',0,0);
/*!40000 ALTER TABLE `vtiger_contactsubdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contpotentialrel`
--

DROP TABLE IF EXISTS `vtiger_contpotentialrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL default '0',
  `potentialid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`contactid`,`potentialid`),
  KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  KEY `contpotentialrel_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contpotentialrel`
--

LOCK TABLES `vtiger_contpotentialrel` WRITE;
/*!40000 ALTER TABLE `vtiger_contpotentialrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_contpotentialrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_priority`
--

DROP TABLE IF EXISTS `vtiger_contract_priority`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL auto_increment,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`contract_priorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contract_priority`
--

LOCK TABLES `vtiger_contract_priority` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_priority` DISABLE KEYS */;
INSERT INTO `vtiger_contract_priority` VALUES (1,'Low',1,220,1),(2,'Normal',1,221,2),(3,'High',1,222,3);
/*!40000 ALTER TABLE `vtiger_contract_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_priority_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_priority_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contract_priority_seq`
--

LOCK TABLES `vtiger_contract_priority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_priority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_contract_priority_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_contract_priority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_status`
--

DROP TABLE IF EXISTS `vtiger_contract_status`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL auto_increment,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`contract_statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contract_status`
--

LOCK TABLES `vtiger_contract_status` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_status` DISABLE KEYS */;
INSERT INTO `vtiger_contract_status` VALUES (1,'Undefined',1,214,1),(2,'In Planning',1,215,2),(3,'In Progress',1,216,3),(4,'On Hold',1,217,4),(5,'Complete',0,218,5),(6,'Archived',1,219,6);
/*!40000 ALTER TABLE `vtiger_contract_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_status_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_status_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contract_status_seq`
--

LOCK TABLES `vtiger_contract_status_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_status_seq` DISABLE KEYS */;
INSERT INTO `vtiger_contract_status_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_contract_status_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_type`
--

DROP TABLE IF EXISTS `vtiger_contract_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL auto_increment,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`contract_typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contract_type`
--

LOCK TABLES `vtiger_contract_type` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_type` DISABLE KEYS */;
INSERT INTO `vtiger_contract_type` VALUES (1,'Support',1,223,1),(2,'Services',1,224,2),(3,'Administrative',1,225,3);
/*!40000 ALTER TABLE `vtiger_contract_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_type_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_type_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_contract_type_seq`
--

LOCK TABLES `vtiger_contract_type_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_type_seq` DISABLE KEYS */;
INSERT INTO `vtiger_contract_type_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_contract_type_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_convertleadmapping`
--

DROP TABLE IF EXISTS `vtiger_convertleadmapping`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL auto_increment,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) default NULL,
  `contactfid` int(19) default NULL,
  `potentialfid` int(19) default NULL,
  `editable` int(19) default '1',
  PRIMARY KEY  (`cfmid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_convertleadmapping`
--

LOCK TABLES `vtiger_convertleadmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_convertleadmapping` DISABLE KEYS */;
INSERT INTO `vtiger_convertleadmapping` VALUES (1,43,1,0,110,0),(2,49,14,0,0,1),(3,40,3,69,0,NULL),(4,0,0,0,0,NULL),(5,44,5,77,0,1),(6,52,13,0,0,1),(7,46,9,80,0,0),(8,48,4,0,0,1),(9,61,26,98,0,1),(10,60,30,0,0,1),(11,62,32,104,0,1),(12,63,28,100,0,1),(13,59,24,96,0,1),(14,64,34,106,0,1),(15,61,27,0,0,1),(16,60,31,0,0,1),(17,62,33,0,0,1),(18,63,29,0,0,1),(19,59,25,0,0,1),(20,64,35,0,0,1),(21,65,36,109,125,1),(22,37,0,66,0,1),(23,38,0,67,0,0),(24,41,0,70,0,0),(25,42,0,71,0,1),(26,45,0,76,0,1),(27,55,0,83,0,1),(28,47,0,74,117,1),(29,50,0,0,0,1),(30,53,10,0,0,1),(31,51,17,0,0,1);
/*!40000 ALTER TABLE `vtiger_convertleadmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmentity`
--

DROP TABLE IF EXISTS `vtiger_crmentity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL default '0',
  `smownerid` int(19) NOT NULL default '0',
  `modifiedby` int(19) NOT NULL default '0',
  `setype` varchar(30) NOT NULL,
  `description` text,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime default NULL,
  `status` varchar(50) default NULL,
  `version` int(19) NOT NULL default '0',
  `presence` int(1) default '1',
  `deleted` int(1) NOT NULL default '0',
  `label` varchar(255) default NULL,
  PRIMARY KEY  (`crmid`),
  KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  KEY `crmentity_modifiedby_idx` (`modifiedby`),
  KEY `crmentity_deleted_idx` (`deleted`),
  KEY `crm_ownerid_del_setype_idx` (`smownerid`,`deleted`,`setype`),
  KEY `vtiger_crmentity_labelidx` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_crmentity`
--

LOCK TABLES `vtiger_crmentity` WRITE;
/*!40000 ALTER TABLE `vtiger_crmentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_crmentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmentity_seq`
--

DROP TABLE IF EXISTS `vtiger_crmentity_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_crmentity_seq`
--

LOCK TABLES `vtiger_crmentity_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_crmentity_seq` DISABLE KEYS */;
INSERT INTO `vtiger_crmentity_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_crmentity_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmentityrel`
--

DROP TABLE IF EXISTS `vtiger_crmentityrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_crmentityrel`
--

LOCK TABLES `vtiger_crmentityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_crmentityrel` DISABLE KEYS */;
INSERT INTO `vtiger_crmentityrel` VALUES (10,'Services',11,'HelpDesk');
/*!40000 ALTER TABLE `vtiger_crmentityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmsetup`
--

DROP TABLE IF EXISTS `vtiger_crmsetup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_crmsetup` (
  `userid` int(11) default NULL,
  `setup_status` int(2) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_crmsetup`
--

LOCK TABLES `vtiger_crmsetup` WRITE;
/*!40000 ALTER TABLE `vtiger_crmsetup` DISABLE KEYS */;
INSERT INTO `vtiger_crmsetup` VALUES (1,1);
/*!40000 ALTER TABLE `vtiger_crmsetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cron_task`
--

DROP TABLE IF EXISTS `vtiger_cron_task`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_cron_task` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `handler_file` varchar(100) default NULL,
  `frequency` int(11) default NULL,
  `laststart` int(11) unsigned default NULL,
  `lastend` int(11) unsigned default NULL,
  `status` int(11) default NULL,
  `module` varchar(100) default NULL,
  `sequence` int(11) default NULL,
  `description` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `handler_file` (`handler_file`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_cron_task`
--

LOCK TABLES `vtiger_cron_task` WRITE;
/*!40000 ALTER TABLE `vtiger_cron_task` DISABLE KEYS */;
INSERT INTO `vtiger_cron_task` VALUES (1,'Workflow','cron/modules/com_vtiger_workflow/com_vtiger_workflow.service',900,NULL,NULL,1,'com_vtiger_workflow',1,'Recommended frequency for Workflow is 15 mins'),(2,'RecurringInvoice','cron/modules/SalesOrder/RecurringInvoice.service',43200,NULL,NULL,1,'SalesOrder',2,'Recommended frequency for RecurringInvoice is 12 hours'),(3,'SendReminder','cron/SendReminder.service',900,NULL,NULL,1,'Calendar',3,'Recommended frequency for SendReminder is 15 mins'),(5,'MailScanner','cron/MailScanner.service',900,NULL,NULL,1,'Settings',5,'Recommended frequency for MailScanner is 15 mins'),(6,'Scheduled Import','cron/modules/Import/ScheduledImport.service',900,NULL,NULL,0,'Import',6,'Recommended frequency for MailScanner is 15 mins'),(7,'ScheduleReports','cron/modules/Reports/ScheduleReports.service',900,NULL,NULL,1,'Reports',7,'Recommended frequency for ScheduleReports is 15 mins');
/*!40000 ALTER TABLE `vtiger_cron_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currencies`
--

DROP TABLE IF EXISTS `vtiger_currencies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currencies` (
  `currencyid` int(19) NOT NULL auto_increment,
  `currency_name` varchar(200) default NULL,
  `currency_code` varchar(50) default NULL,
  `currency_symbol` varchar(11) default NULL,
  PRIMARY KEY  (`currencyid`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currencies`
--

LOCK TABLES `vtiger_currencies` WRITE;
/*!40000 ALTER TABLE `vtiger_currencies` DISABLE KEYS */;
INSERT INTO `vtiger_currencies` VALUES (1,'Albania, Leke','ALL','Lek'),(2,'Argentina, Pesos','ARS','$'),(3,'Aruba, Guilders','AWG','ƒ'),(4,'Australia, Dollars','AUD','$'),(5,'Azerbaijan, New Manats','AZN','ман'),(6,'Bahamas, Dollars','BSD','$'),(7,'Bahrain, Dinar','BHD','BD'),(8,'Barbados, Dollars','BBD','$'),(9,'Belarus, Rubles','BYR','p.'),(10,'Belize, Dollars','BZD','BZ$'),(11,'Bermuda, Dollars','BMD','$'),(12,'Bolivia, Bolivianos','BOB','$b'),(13,'China, Yuan Renminbi','CNY','¥'),(14,'Convertible Marka','BAM','KM'),(15,'Botswana, Pulas','BWP','P'),(16,'Bulgaria, Leva','BGN','лв'),(17,'Brazil, Reais','BRL','R$'),(18,'Great Britain Pounds','GBP','£'),(19,'Brunei Darussalam, Dollars','BND','$'),(20,'Canada, Dollars','CAD','$'),(21,'Cayman Islands, Dollars','KYD','$'),(22,'Chile, Pesos','CLP','$'),(23,'Colombia, Pesos','COP','$'),(24,'Costa Rica, Colón','CRC','₡'),(25,'Croatia, Kuna','HRK','kn'),(26,'Cuba, Pesos','CUP','₱'),(27,'Czech Republic, Koruny','CZK','Kč'),(28,'Cyprus, Pounds','CYP','£'),(29,'Denmark, Kroner','DKK','kr'),(30,'Dominican Republic, Pesos','DOP','RD$'),(31,'East Caribbean, Dollars','XCD','$'),(32,'Egypt, Pounds','EGP','£'),(33,'El Salvador, Colón','SVC','₡'),(34,'England, Pounds','GBP','£'),(35,'Estonia, Krooni','EEK','kr'),(36,'Euro','EUR','€'),(37,'Falkland Islands, Pounds','FKP','£'),(38,'Fiji, Dollars','FJD','$'),(39,'Ghana, Cedis','GHC','¢'),(40,'Gibraltar, Pounds','GIP','£'),(41,'Guatemala, Quetzales','GTQ','Q'),(42,'Guernsey, Pounds','GGP','£'),(43,'Guyana, Dollars','GYD','$'),(44,'Honduras, Lempiras','HNL','L'),(45,'Hong Kong, Dollars','HKD','HK$'),(46,'Hungary, Forint','HUF','Ft'),(47,'Iceland, Krona','ISK','kr'),(48,'India, Rupees','INR','₹'),(49,'Indonesia, Rupiahs','IDR','Rp'),(50,'Iran, Rials','IRR','﷼'),(51,'Isle of Man, Pounds','IMP','£'),(52,'Israel, New Shekels','ILS','₪'),(53,'Jamaica, Dollars','JMD','J$'),(54,'Japan, Yen','JPY','¥'),(55,'Jersey, Pounds','JEP','£'),(56,'Jordan, Dinar','JOD','JOD'),(57,'Kazakhstan, Tenge','KZT','〒'),(58,'Kenya, Shilling','KES','KES'),(59,'Korea (North), Won','KPW','₩'),(60,'Korea (South), Won','KRW','₩'),(61,'Kuwait, Dinar','KWD','KWD'),(62,'Kyrgyzstan, Soms','KGS','лв'),(63,'Laos, Kips','LAK','₭'),(64,'Latvia, Lati','LVL','Ls'),(65,'Lebanon, Pounds','LBP','£'),(66,'Liberia, Dollars','LRD','$'),(67,'Switzerland Francs','CHF','CHF'),(68,'Lithuania, Litai','LTL','Lt'),(69,'MADAGASCAR, Malagasy Ariary','MGA','MGA'),(70,'Macedonia, Denars','MKD','ден'),(71,'Malaysia, Ringgits','MYR','RM'),(72,'Malta, Liri','MTL','₤'),(73,'Mauritius, Rupees','MUR','₨'),(74,'Mexico, Pesos','MXN','$'),(75,'Mongolia, Tugriks','MNT','₮'),(76,'Mozambique, Meticais','MZN','MT'),(77,'Namibia, Dollars','NAD','$'),(78,'Nepal, Rupees','NPR','₨'),(79,'Netherlands Antilles, Guilders','ANG','ƒ'),(80,'New Zealand, Dollars','NZD','$'),(81,'Nicaragua, Cordobas','NIO','C$'),(82,'Nigeria, Nairas','NGN','₦'),(83,'North Korea, Won','KPW','₩'),(84,'Norway, Krone','NOK','kr'),(85,'Oman, Rials','OMR','﷼'),(86,'Pakistan, Rupees','PKR','₨'),(87,'Panama, Balboa','PAB','B/.'),(88,'Paraguay, Guarani','PYG','Gs'),(89,'Peru, Nuevos Soles','PEN','S/.'),(90,'Philippines, Pesos','PHP','Php'),(91,'Poland, Zlotych','PLN','zł'),(92,'Qatar, Rials','QAR','﷼'),(93,'Romania, New Lei','RON','lei'),(94,'Russia, Rubles','RUB','руб'),(95,'Saint Helena, Pounds','SHP','£'),(96,'Saudi Arabia, Riyals','SAR','﷼'),(97,'Serbia, Dinars','RSD','Дин.'),(98,'Seychelles, Rupees','SCR','₨'),(99,'Singapore, Dollars','SGD','$'),(100,'Solomon Islands, Dollars','SBD','$'),(101,'Somalia, Shillings','SOS','S'),(102,'South Africa, Rand','ZAR','R'),(103,'South Korea, Won','KRW','₩'),(104,'Sri Lanka, Rupees','LKR','₨'),(105,'Sweden, Kronor','SEK','kr'),(106,'Switzerland, Francs','CHF','CHF'),(107,'Suriname, Dollars','SRD','$'),(108,'Syria, Pounds','SYP','£'),(109,'Taiwan, New Dollars','TWD','NT$'),(110,'Thailand, Baht','THB','฿'),(111,'Trinidad and Tobago, Dollars','TTD','TT$'),(112,'Turkey, New Lira','TRY','YTL'),(113,'Turkey, Liras','TRL','₤'),(114,'Tuvalu, Dollars','TVD','$'),(115,'Ukraine, Hryvnia','UAH','₴'),(116,'United Arab Emirates, Dirham','AED','AED'),(117,'United Kingdom, Pounds','GBP','£'),(118,'United Republic of Tanzania, Shilling','TZS','TZS'),(119,'USA, Dollars','USD','$'),(120,'Uruguay, Pesos','UYU','$U'),(121,'Uzbekistan, Sums','UZS','лв'),(122,'Venezuela, Bolivares Fuertes','VEF','Bs'),(123,'Vietnam, Dong','VND','₫'),(124,'Zambia, Kwacha','ZMK','ZMK'),(125,'Yemen, Rials','YER','﷼'),(126,'Zimbabwe Dollars','ZWD','Z$'),(127,'Malawi, Kwacha','MWK','MK'),(128,'Tunisian, Dinar','TD','TD'),(129,'Moroccan, Dirham','MAD','DH'),(130,'Iraqi Dinar','IQD','ID'),(131,'Maldivian Ruffiya','MVR','MVR'),(132,'Ugandan Shilling','UGX','Sh'),(133,'Sudanese Pound','SDG','£'),(134,'CFA Franc BCEAO','XOF','CFA'),(135,'CFA Franc BEAC','XAF','CFA'),(136,'Haiti, Gourde','HTG','G'),(137,'Libya, Dinar','LYD','LYD');
/*!40000 ALTER TABLE `vtiger_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currencies_seq`
--

DROP TABLE IF EXISTS `vtiger_currencies_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currencies_seq`
--

LOCK TABLES `vtiger_currencies_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currencies_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currencies_seq` VALUES (137);
/*!40000 ALTER TABLE `vtiger_currencies_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency`
--

DROP TABLE IF EXISTS `vtiger_currency`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency` (
  `currencyid` int(19) NOT NULL auto_increment,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`currencyid`),
  UNIQUE KEY `currency_currency_idx` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency`
--

LOCK TABLES `vtiger_currency` WRITE;
/*!40000 ALTER TABLE `vtiger_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_decimal_separator`
--

DROP TABLE IF EXISTS `vtiger_currency_decimal_separator`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_decimal_separator` (
  `currency_decimal_separatorid` int(19) NOT NULL auto_increment,
  `currency_decimal_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`currency_decimal_separatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_decimal_separator`
--

LOCK TABLES `vtiger_currency_decimal_separator` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator` DISABLE KEYS */;
INSERT INTO `vtiger_currency_decimal_separator` VALUES (1,'.',0,1),(2,',',1,1),(3,'\'',2,1),(4,' ',3,1),(5,'$',4,1);
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_decimal_separator_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_decimal_separator_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_decimal_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_decimal_separator_seq`
--

LOCK TABLES `vtiger_currency_decimal_separator_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_decimal_separator_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_pattern`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_pattern`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_grouping_pattern` (
  `currency_grouping_patternid` int(19) NOT NULL auto_increment,
  `currency_grouping_pattern` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`currency_grouping_patternid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_grouping_pattern`
--

LOCK TABLES `vtiger_currency_grouping_pattern` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_pattern` VALUES (1,'123,456,789',0,1),(2,'123456789',1,1),(3,'123456,789',2,1),(4,'12,34,56,789',3,1);
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_pattern_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_pattern_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_grouping_pattern_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_grouping_pattern_seq`
--

LOCK TABLES `vtiger_currency_grouping_pattern_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_pattern_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_separator`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_separator`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_grouping_separator` (
  `currency_grouping_separatorid` int(19) NOT NULL auto_increment,
  `currency_grouping_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`currency_grouping_separatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_grouping_separator`
--

LOCK TABLES `vtiger_currency_grouping_separator` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_separator` VALUES (1,'.',0,1),(2,',',1,1),(3,'\'',2,1),(4,' ',3,1),(5,'$',4,1);
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_separator_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_separator_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_grouping_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_grouping_separator_seq`
--

LOCK TABLES `vtiger_currency_grouping_separator_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_separator_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_info`
--

DROP TABLE IF EXISTS `vtiger_currency_info`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_info` (
  `id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(100) default NULL,
  `currency_code` varchar(100) default NULL,
  `currency_symbol` varchar(30) default NULL,
  `conversion_rate` decimal(12,5) default NULL,
  `currency_status` varchar(25) default NULL,
  `defaultid` varchar(10) NOT NULL default '0',
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_info`
--

LOCK TABLES `vtiger_currency_info` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_info` DISABLE KEYS */;
INSERT INTO `vtiger_currency_info` VALUES (1,'China, Yuan Renminbi','CNY','?','1.00000','Active','-11',0);
/*!40000 ALTER TABLE `vtiger_currency_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_info_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_info_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_info_seq`
--

LOCK TABLES `vtiger_currency_info_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_info_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_info_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_currency_info_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_symbol_placement`
--

DROP TABLE IF EXISTS `vtiger_currency_symbol_placement`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_symbol_placement` (
  `currency_symbol_placementid` int(19) NOT NULL auto_increment,
  `currency_symbol_placement` varchar(30) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`currency_symbol_placementid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_symbol_placement`
--

LOCK TABLES `vtiger_currency_symbol_placement` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement` DISABLE KEYS */;
INSERT INTO `vtiger_currency_symbol_placement` VALUES (1,'$1.0',0,1),(2,'1.0$',1,1);
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_symbol_placement_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_symbol_placement_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_currency_symbol_placement_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_currency_symbol_placement_seq`
--

LOCK TABLES `vtiger_currency_symbol_placement_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_symbol_placement_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customaction`
--

DROP TABLE IF EXISTS `vtiger_customaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text,
  KEY `customaction_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customaction`
--

LOCK TABLES `vtiger_customaction` WRITE;
/*!40000 ALTER TABLE `vtiger_customaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_customaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerdetails`
--

DROP TABLE IF EXISTS `vtiger_customerdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) default NULL,
  `support_start_date` date default NULL,
  `support_end_date` date default NULL,
  PRIMARY KEY  (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customerdetails`
--

LOCK TABLES `vtiger_customerdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_customerdetails` DISABLE KEYS */;
INSERT INTO `vtiger_customerdetails` VALUES (6,'0',NULL,NULL);
/*!40000 ALTER TABLE `vtiger_customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerportal_fields`
--

DROP TABLE IF EXISTS `vtiger_customerportal_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) default NULL,
  `visible` int(1) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customerportal_fields`
--

LOCK TABLES `vtiger_customerportal_fields` WRITE;
/*!40000 ALTER TABLE `vtiger_customerportal_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_customerportal_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerportal_prefs`
--

DROP TABLE IF EXISTS `vtiger_customerportal_prefs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customerportal_prefs` (
  `tabid` int(19) NOT NULL,
  `prefkey` varchar(100) NOT NULL,
  `prefvalue` int(20) default NULL,
  PRIMARY KEY  (`tabid`,`prefkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customerportal_prefs`
--

LOCK TABLES `vtiger_customerportal_prefs` WRITE;
/*!40000 ALTER TABLE `vtiger_customerportal_prefs` DISABLE KEYS */;
INSERT INTO `vtiger_customerportal_prefs` VALUES (0,'defaultassignee',1),(0,'userid',1),(4,'showrelatedinfo',1),(6,'showrelatedinfo',1),(8,'showrelatedinfo',1),(13,'showrelatedinfo',1),(14,'showrelatedinfo',1),(15,'showrelatedinfo',1),(20,'showrelatedinfo',1),(23,'showrelatedinfo',1),(36,'showrelatedinfo',1),(38,'showrelatedinfo',1),(43,'showrelatedinfo',1),(44,'showrelatedinfo',1),(45,'showrelatedinfo',1);
/*!40000 ALTER TABLE `vtiger_customerportal_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerportal_tabs`
--

DROP TABLE IF EXISTS `vtiger_customerportal_tabs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) default '1',
  `sequence` int(1) default NULL,
  PRIMARY KEY  (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customerportal_tabs`
--

LOCK TABLES `vtiger_customerportal_tabs` WRITE;
/*!40000 ALTER TABLE `vtiger_customerportal_tabs` DISABLE KEYS */;
INSERT INTO `vtiger_customerportal_tabs` VALUES (4,1,9),(6,1,10),(8,1,8),(13,1,2),(14,1,6),(15,1,3),(20,1,5),(23,1,4),(36,1,7),(38,1,11),(43,1,12),(44,1,13),(45,1,14);
/*!40000 ALTER TABLE `vtiger_customerportal_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customview`
--

DROP TABLE IF EXISTS `vtiger_customview`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) default '0',
  `setmetrics` int(1) default '0',
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) default '1',
  `userid` int(19) default '1',
  PRIMARY KEY  (`cvid`),
  KEY `customview_entitytype_idx` (`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customview`
--

LOCK TABLES `vtiger_customview` WRITE;
/*!40000 ALTER TABLE `vtiger_customview` DISABLE KEYS */;
INSERT INTO `vtiger_customview` VALUES (1,'All',1,0,'Leads',0,1),(2,'Hot Leads',0,1,'Leads',3,1),(3,'This Month Leads',0,0,'Leads',3,1),(4,'All',1,0,'Accounts',0,1),(5,'Prospect Accounts',0,1,'Accounts',3,1),(6,'New This Week',0,0,'Accounts',3,1),(7,'All',1,0,'Contacts',0,1),(8,'Contacts Address',0,0,'Contacts',3,1),(9,'Todays Birthday',0,0,'Contacts',3,1),(10,'All',1,0,'Potentials',0,1),(11,'Potentials Won',0,1,'Potentials',3,1),(12,'Prospecting',0,0,'Potentials',3,1),(13,'All',1,0,'HelpDesk',0,1),(14,'Open Tickets',0,1,'HelpDesk',3,1),(15,'High Prioriy Tickets',0,0,'HelpDesk',3,1),(16,'All',1,0,'Quotes',0,1),(17,'Open Quotes',0,1,'Quotes',3,1),(18,'Rejected Quotes',0,0,'Quotes',3,1),(19,'All',1,0,'Calendar',0,1),(20,'All',1,0,'Emails',0,1),(21,'All',1,0,'Invoice',0,1),(22,'All',1,0,'Documents',0,1),(23,'All',1,0,'PriceBooks',0,1),(24,'All',1,0,'Products',0,1),(25,'All',1,0,'PurchaseOrder',0,1),(26,'All',1,0,'SalesOrder',0,1),(27,'All',1,0,'Vendors',0,1),(28,'All',1,0,'Faq',0,1),(29,'All',1,0,'Campaigns',0,1),(30,'All',1,0,'Webmails',0,1),(31,'Drafted FAQ',0,0,'Faq',3,1),(32,'Published FAQ',0,0,'Faq',3,1),(33,'Open Purchase Orders',0,0,'PurchaseOrder',3,1),(34,'Received Purchase Orders',0,0,'PurchaseOrder',3,1),(35,'Open Invoices',0,0,'Invoice',3,1),(36,'Paid Invoices',0,0,'Invoice',3,1),(37,'Pending Sales Orders',0,0,'SalesOrder',3,1),(38,'All',1,0,'PBXManager',0,1),(39,'All',1,0,'ServiceContracts',0,1),(40,'All',1,0,'Services',0,1),(41,'All',1,0,'Assets',0,1),(42,'All',0,0,'ModComments',0,1),(46,'All',0,0,'SMSNotifier',0,1),(47,'All',1,0,'ProjectMilestone',0,1),(48,'All',1,0,'ProjectTask',0,1),(49,'All',1,0,'Project',0,1);
/*!40000 ALTER TABLE `vtiger_customview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customview_seq`
--

DROP TABLE IF EXISTS `vtiger_customview_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_customview_seq`
--

LOCK TABLES `vtiger_customview_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_customview_seq` DISABLE KEYS */;
INSERT INTO `vtiger_customview_seq` VALUES (49);
/*!40000 ALTER TABLE `vtiger_customview_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvadvfilter`
--

DROP TABLE IF EXISTS `vtiger_cvadvfilter`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) default '',
  `comparator` varchar(20) default NULL,
  `value` varchar(512) default NULL,
  `groupid` int(11) default '1',
  `column_condition` varchar(255) default 'and',
  PRIMARY KEY  (`cvid`,`columnindex`),
  KEY `cvadvfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_cvadvfilter`
--

LOCK TABLES `vtiger_cvadvfilter` WRITE;
/*!40000 ALTER TABLE `vtiger_cvadvfilter` DISABLE KEYS */;
INSERT INTO `vtiger_cvadvfilter` VALUES (2,0,'vtiger_leaddetails:leadstatus:leadstatus:Leads_Lead_Status:V','e','Hot',1,'and'),(5,0,'vtiger_account:account_type:accounttype:Accounts_Type:V','e','Prospect',1,'and'),(11,0,'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V','e','Closed Won',1,'and'),(12,0,'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V','e','Prospecting',1,'and'),(14,0,'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V','n','Closed',1,'and'),(15,0,'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V','e','High',1,'and'),(17,0,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V','n','Accepted',1,'and'),(17,1,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V','n','Rejected',1,'and'),(18,0,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V','e','Rejected',1,'and'),(31,0,'vtiger_faq:status:faqstatus:Faq_Status:V','e','Draft',1,'and'),(32,0,'vtiger_faq:status:faqstatus:Faq_Status:V','e','Published',1,'and'),(33,0,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V','e','Created, Approved, Delivered',1,'and'),(34,0,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V','e','Received Shipment',1,'and'),(35,0,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V','e','Created, Approved, Sent',1,'and'),(36,0,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V','e','Paid',1,'and'),(37,0,'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V','e','Created, Approved',1,'and');
/*!40000 ALTER TABLE `vtiger_cvadvfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvadvfilter_grouping`
--

DROP TABLE IF EXISTS `vtiger_cvadvfilter_grouping`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_cvadvfilter_grouping` (
  `groupid` int(11) NOT NULL,
  `cvid` int(19) NOT NULL,
  `group_condition` varchar(255) default NULL,
  `condition_expression` text,
  PRIMARY KEY  (`groupid`,`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_cvadvfilter_grouping`
--

LOCK TABLES `vtiger_cvadvfilter_grouping` WRITE;
/*!40000 ALTER TABLE `vtiger_cvadvfilter_grouping` DISABLE KEYS */;
INSERT INTO `vtiger_cvadvfilter_grouping` VALUES (1,2,'',''),(1,5,'',''),(1,11,'',''),(1,12,'',''),(1,14,'',''),(1,15,'',''),(1,17,'',''),(1,18,'',''),(1,31,'',''),(1,32,'',''),(1,33,'',''),(1,34,'',''),(1,35,'',''),(1,36,'',''),(1,37,'','');
/*!40000 ALTER TABLE `vtiger_cvadvfilter_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvcolumnlist`
--

DROP TABLE IF EXISTS `vtiger_cvcolumnlist`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) default '',
  PRIMARY KEY  (`cvid`,`columnindex`),
  KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  KEY `cvcolumnlist_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_cvcolumnlist`
--

LOCK TABLES `vtiger_cvcolumnlist` WRITE;
/*!40000 ALTER TABLE `vtiger_cvcolumnlist` DISABLE KEYS */;
INSERT INTO `vtiger_cvcolumnlist` VALUES (1,1,'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),(1,2,'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),(1,3,'vtiger_leaddetails:company:company:Leads_Company:V'),(1,4,'vtiger_leadaddress:phone:phone:Leads_Phone:V'),(1,5,'vtiger_leadsubdetails:website:website:Leads_Website:V'),(1,6,'vtiger_leaddetails:email:email:Leads_Email:E'),(1,7,'vtiger_crmentity:smownerid:assigned_user_id:Leads_Assigned_To:V'),(2,0,'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),(2,1,'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),(2,2,'vtiger_leaddetails:company:company:Leads_Company:V'),(2,3,'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),(2,4,'vtiger_leadsubdetails:website:website:Leads_Website:V'),(2,5,'vtiger_leaddetails:email:email:Leads_Email:E'),(3,0,'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),(3,1,'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),(3,2,'vtiger_leaddetails:company:company:Leads_Company:V'),(3,3,'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),(3,4,'vtiger_leadsubdetails:website:website:Leads_Website:V'),(3,5,'vtiger_leaddetails:email:email:Leads_Email:E'),(4,1,'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),(4,2,'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),(4,3,'vtiger_account:website:website:Accounts_Website:V'),(4,4,'vtiger_account:phone:phone:Accounts_Phone:V'),(4,5,'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),(5,0,'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),(5,1,'vtiger_account:phone:phone:Accounts_Phone:V'),(5,2,'vtiger_account:website:website:Accounts_Website:V'),(5,3,'vtiger_account:rating:rating:Accounts_Rating:V'),(5,4,'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),(6,0,'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),(6,1,'vtiger_account:phone:phone:Accounts_Phone:V'),(6,2,'vtiger_account:website:website:Accounts_Website:V'),(6,3,'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),(6,4,'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),(7,1,'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),(7,2,'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),(7,3,'vtiger_contactdetails:title:title:Contacts_Title:V'),(7,4,'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:I'),(7,5,'vtiger_contactdetails:email:email:Contacts_Email:E'),(7,6,'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),(7,7,'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),(8,0,'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),(8,1,'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),(8,2,'vtiger_contactaddress:mailingstreet:mailingstreet:Contacts_Mailing_Street:V'),(8,3,'vtiger_contactaddress:mailingcity:mailingcity:Contacts_Mailing_City:V'),(8,4,'vtiger_contactaddress:mailingstate:mailingstate:Contacts_Mailing_State:V'),(8,5,'vtiger_contactaddress:mailingzip:mailingzip:Contacts_Mailing_Zip:V'),(8,6,'vtiger_contactaddress:mailingcountry:mailingcountry:Contacts_Mailing_Country:V'),(9,0,'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),(9,1,'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),(9,2,'vtiger_contactdetails:title:title:Contacts_Title:V'),(9,3,'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:I'),(9,4,'vtiger_contactdetails:email:email:Contacts_Email:E'),(9,5,'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Phone:V'),(9,6,'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),(10,1,'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),(10,2,'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),(10,3,'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V'),(10,4,'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),(10,5,'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),(10,6,'vtiger_potential:amount:amount:Potentials_Amount:N'),(10,7,'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),(10,8,'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),(11,0,'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),(11,1,'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),(11,2,'vtiger_potential:amount:amount:Potentials_Amount:N'),(11,3,'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),(11,4,'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),(11,5,'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),(12,0,'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),(12,1,'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),(12,2,'vtiger_potential:amount:amount:Potentials_Amount:N'),(12,3,'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),(12,4,'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),(12,5,'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),(12,6,'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),(13,1,'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),(13,2,'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),(13,3,'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),(13,4,'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),(13,5,'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),(13,6,'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),(14,0,'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),(14,1,'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),(14,2,'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),(14,3,'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),(14,4,'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),(14,5,'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),(15,0,'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),(15,1,'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),(15,2,'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),(15,3,'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),(15,4,'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),(15,5,'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),(16,1,'vtiger_quotes:subject:subject:Quotes_Subject:V'),(16,2,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),(16,3,'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),(16,4,'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),(16,5,'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:I'),(16,6,'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),(17,0,'vtiger_quotes:subject:subject:Quotes_Subject:V'),(17,1,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),(17,2,'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),(17,3,'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),(17,4,'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),(17,5,'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),(18,0,'vtiger_quotes:subject:subject:Quotes_Subject:V'),(18,1,'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),(18,2,'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),(18,3,'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),(18,4,'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),(19,0,'vtiger_activity:status:taskstatus:Calendar_Status:V'),(19,1,'vtiger_activity:activitytype:activitytype:Calendar_Type:V'),(19,2,'vtiger_activity:subject:subject:Calendar_Subject:V'),(19,3,'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_to:V'),(19,4,'vtiger_activity:date_start:date_start:Calendar_Start_Date:D'),(19,5,'vtiger_activity:due_date:due_date:Calendar_End_Date:D'),(19,6,'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),(20,0,'vtiger_activity:subject:subject:Emails_Subject:V'),(20,1,'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),(20,2,'vtiger_activity:date_start:date_start:Emails_Date_Sent:D'),(21,1,'vtiger_invoice:subject:subject:Invoice_Subject:V'),(21,2,'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),(21,3,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),(21,4,'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:I'),(21,5,'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),(22,1,'vtiger_notes:title:notes_title:Notes_Title:V'),(22,2,'vtiger_notes:filename:filename:Notes_File:V'),(22,3,'vtiger_crmentity:modifiedtime:modifiedtime:Notes_Modified_Time:DT'),(22,4,'vtiger_crmentity:smownerid:assigned_user_id:Notes_Assigned_To:V'),(23,1,'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),(23,2,'vtiger_pricebook:active:active:PriceBooks_Active:V'),(23,3,'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:I'),(24,1,'vtiger_products:productname:productname:Products_Product_Name:V'),(24,2,'vtiger_products:productcode:productcode:Products_Part_Number:V'),(24,3,'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:V'),(24,4,'vtiger_products:qtyinstock:qtyinstock:Products_Quantity_In_Stock:V'),(24,5,'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:V'),(24,6,'vtiger_products:unit_price:unit_price:Products_Unit_Price:V'),(25,1,'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),(25,2,'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),(25,3,'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),(25,4,'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:V'),(25,5,'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),(26,1,'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),(26,2,'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:I'),(26,3,'vtiger_salesorder:quoteid:quote_id:SalesOrder_Quote_Name:I'),(26,4,'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:V'),(26,5,'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),(27,1,'vtiger_vendor:vendorname:vendorname:Vendors_Vendor_Name:V'),(27,2,'vtiger_vendor:phone:phone:Vendors_Phone:V'),(27,3,'vtiger_vendor:email:email:Vendors_Email:E'),(27,4,'vtiger_vendor:category:category:Vendors_Category:V'),(27,5,'vtiger_crmentity:smownerid:assigned_user_id:Vendors_Assigned_To:V'),(28,1,'vtiger_faq:question:question:Faq_Question:V'),(28,2,'vtiger_faq:category:faqcategories:Faq_Category:V'),(28,3,'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),(28,4,'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),(28,5,'vtiger_crmentity:modifiedtime:modifiedtime:Faq_Modified_Time:DT'),(29,1,'vtiger_campaign:campaignname:campaignname:Campaigns_Campaign_Name:V'),(29,2,'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:N'),(29,3,'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:N'),(29,4,'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:V'),(29,5,'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),(29,6,'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),(30,0,'subject:subject:subject:Subject:V'),(30,1,'from:fromname:fromname:From:N'),(30,2,'to:tpname:toname:To:N'),(30,3,'body:body:body:Body:V'),(31,0,'vtiger_faq:question:question:Faq_Question:V'),(31,1,'vtiger_faq:status:faqstatus:Faq_Status:V'),(31,2,'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),(31,3,'vtiger_faq:category:faqcategories:Faq_Category:V'),(31,4,'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),(32,0,'vtiger_faq:question:question:Faq_Question:V'),(32,1,'vtiger_faq:answer:faq_answer:Faq_Answer:V'),(32,2,'vtiger_faq:status:faqstatus:Faq_Status:V'),(32,3,'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),(32,4,'vtiger_faq:category:faqcategories:Faq_Category:V'),(32,5,'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),(33,0,'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),(33,1,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),(33,2,'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),(33,3,'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),(33,4,'vtiger_purchaseorder:duedate:duedate:PurchaseOrder_Due_Date:V'),(34,0,'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),(34,1,'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),(34,2,'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),(34,3,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),(34,4,'vtiger_purchaseorder:carrier:carrier:PurchaseOrder_Carrier:V'),(34,5,'vtiger_poshipads:ship_street:ship_street:PurchaseOrder_Shipping_Address:V'),(35,0,'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),(35,1,'vtiger_invoice:subject:subject:Invoice_Subject:V'),(35,2,'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),(35,3,'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),(35,4,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),(35,5,'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),(35,6,'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:DT'),(36,0,'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),(36,1,'vtiger_invoice:subject:subject:Invoice_Subject:V'),(36,2,'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),(36,3,'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),(36,4,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),(36,5,'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),(36,6,'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),(37,0,'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),(37,1,'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:I'),(37,2,'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),(37,3,'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),(37,4,'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),(37,5,'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),(38,0,'vtiger_pbxmanager:callstatus:callstatus:PBXManager_Call_Status:V'),(38,1,'vtiger_pbxmanager:customernumber:customernumber:PBXManager_Customer_Number:V'),(38,2,'vtiger_pbxmanager:customer:customer:PBXManager_Customer:V'),(38,3,'vtiger_pbxmanager:user:user:PBXManager_User:V'),(38,4,'vtiger_pbxmanager:recordingurl:recordingurl:PBXManager_Recording_URL:V'),(38,5,'vtiger_pbxmanager:totalduration:totalduration:PBXManager_Total_Duration:I'),(38,6,'vtiger_pbxmanager:starttime:starttime:PBXManager_Start_Time:DT'),(39,1,'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),(39,2,'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),(39,3,'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),(39,4,'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),(39,5,'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),(39,7,'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),(39,8,'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),(40,1,'vtiger_service:servicename:servicename:Services_Service_Name:V'),(40,2,'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),(40,3,'vtiger_service:unit_price:unit_price:Services_Price:N'),(40,4,'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),(40,5,'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),(40,6,'vtiger_crmentity:smownerid:assigned_user_id:Services_Owner:I'),(41,1,'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),(41,2,'vtiger_assets:account:account:Assets_Customer_Name:V'),(41,3,'vtiger_assets:product:product:Assets_Product_Name:V'),(42,0,'vtiger_modcomments:commentcontent:commentcontent:ModComments_Comment:V'),(42,1,'vtiger_modcomments:related_to:related_to:ModComments_Related_To:V'),(42,2,'vtiger_crmentity:modifiedtime:modifiedtime:ModComments_Modified_Time:DT'),(42,3,'vtiger_crmentity:smownerid:assigned_user_id:ModComments_Assigned_To:V'),(46,0,'vtiger_smsnotifier:message:message:SMSNotifier_message:V'),(46,2,'vtiger_crmentity:smownerid:assigned_user_id:SMSNotifier_Assigned_To:V'),(46,3,'vtiger_crmentity:createdtime:createdtime:SMSNotifier_Created_Time:DT'),(46,4,'vtiger_crmentity:modifiedtime:modifiedtime:SMSNotifier_Modified_Time:DT'),(47,0,'vtiger_projectmilestone:projectmilestonename:projectmilestonename:ProjectMilestone_Project_Milestone_Name:V'),(47,1,'vtiger_projectmilestone:projectmilestonedate:projectmilestonedate:ProjectMilestone_Milestone_Date:D'),(47,3,'vtiger_crmentity:description:description:ProjectMilestone_description:V'),(47,4,'vtiger_crmentity:createdtime:createdtime:ProjectMilestone_Created_Time:T'),(47,5,'vtiger_crmentity:modifiedtime:modifiedtime:ProjectMilestone_Modified_Time:T'),(48,2,'vtiger_projecttask:projecttaskname:projecttaskname:ProjectTask_Project_Task_Name:V'),(48,3,'vtiger_projecttask:projectid:projectid:ProjectTask_Related_to:V'),(48,4,'vtiger_projecttask:projecttaskpriority:projecttaskpriority:ProjectTask_Priority:V'),(48,5,'vtiger_projecttask:projecttaskprogress:projecttaskprogress:ProjectTask_Progress:V'),(48,6,'vtiger_projecttask:projecttaskhours:projecttaskhours:ProjectTask_Worked_Hours:V'),(48,7,'vtiger_projecttask:startdate:startdate:ProjectTask_Start_Date:D'),(48,8,'vtiger_projecttask:enddate:enddate:ProjectTask_End_Date:D'),(48,9,'vtiger_crmentity:smownerid:assigned_user_id:ProjectTask_Assigned_To:V'),(49,0,'vtiger_project:projectname:projectname:Project_Project_Name:V'),(49,1,'vtiger_project:linktoaccountscontacts:linktoaccountscontacts:Project_Related_to:V'),(49,2,'vtiger_project:startdate:startdate:Project_Start_Date:D'),(49,3,'vtiger_project:targetenddate:targetenddate:Project_Target_End_Date:D'),(49,4,'vtiger_project:actualenddate:actualenddate:Project_Actual_End_Date:D'),(49,5,'vtiger_project:targetbudget:targetbudget:Project_Target_Budget:V'),(49,6,'vtiger_project:progress:progress:Project_Progress:V'),(49,7,'vtiger_project:projectstatus:projectstatus:Project_Status:V'),(49,8,'vtiger_crmentity:smownerid:assigned_user_id:Project_Assigned_To:V');
/*!40000 ALTER TABLE `vtiger_cvcolumnlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvstdfilter`
--

DROP TABLE IF EXISTS `vtiger_cvstdfilter`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) default '',
  `stdfilter` varchar(250) default '',
  `startdate` date default NULL,
  `enddate` date default NULL,
  PRIMARY KEY  (`cvid`),
  KEY `cvstdfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_cvstdfilter`
--

LOCK TABLES `vtiger_cvstdfilter` WRITE;
/*!40000 ALTER TABLE `vtiger_cvstdfilter` DISABLE KEYS */;
INSERT INTO `vtiger_cvstdfilter` VALUES (3,'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time','thismonth','2005-06-01','2005-06-30'),(6,'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time','thisweek','2005-06-19','2005-06-25'),(9,'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate','today','2005-06-25','2005-06-25');
/*!40000 ALTER TABLE `vtiger_cvstdfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_grp2grp`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2grp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) default NULL,
  `to_groupid` int(19) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_grp2grp`
--

LOCK TABLES `vtiger_datashare_grp2grp` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_grp2grp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_grp2grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_grp2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) default NULL,
  `to_roleid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_grp2role`
--

LOCK TABLES `vtiger_datashare_grp2role` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_grp2role` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_grp2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_grp2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2rs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) default NULL,
  `to_roleandsubid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_grp2rs`
--

LOCK TABLES `vtiger_datashare_grp2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_grp2rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_grp2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_module_rel`
--

DROP TABLE IF EXISTS `vtiger_datashare_module_rel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `idx_datashare_module_rel_tabid` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_module_rel`
--

LOCK TABLES `vtiger_datashare_module_rel` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_module_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_module_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_relatedmodule_permission`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodule_permission`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`,`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_relatedmodule_permission`
--

LOCK TABLES `vtiger_datashare_relatedmodule_permission` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodule_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodule_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_relatedmodules`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) default NULL,
  `relatedto_tabid` int(19) default NULL,
  PRIMARY KEY  (`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_relatedmodules`
--

LOCK TABLES `vtiger_datashare_relatedmodules` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules` DISABLE KEYS */;
INSERT INTO `vtiger_datashare_relatedmodules` VALUES (1,6,2),(2,6,13),(3,6,20),(4,6,22),(5,6,23),(6,2,20),(7,2,22),(8,20,22),(9,22,23);
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_relatedmodules_seq`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodules_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_relatedmodules_seq`
--

LOCK TABLES `vtiger_datashare_relatedmodules_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules_seq` DISABLE KEYS */;
INSERT INTO `vtiger_datashare_relatedmodules_seq` VALUES (9);
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_role2group`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) default NULL,
  `to_groupid` int(19) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  KEY `idx_datashare_role2group_to_groupid` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_role2group`
--

LOCK TABLES `vtiger_datashare_role2group` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_role2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_role2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_role2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) default NULL,
  `to_roleid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_role2role`
--

LOCK TABLES `vtiger_datashare_role2role` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_role2role` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_role2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_role2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2rs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) default NULL,
  `to_roleandsubid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_role2rs`
--

LOCK TABLES `vtiger_datashare_role2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_role2rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_role2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_rs2grp`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2grp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) default NULL,
  `to_groupid` int(19) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_rs2grp`
--

LOCK TABLES `vtiger_datashare_rs2grp` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_rs2grp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_rs2grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_rs2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) default NULL,
  `to_roleid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_rs2role`
--

LOCK TABLES `vtiger_datashare_rs2role` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_rs2role` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_rs2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_rs2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2rs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) default NULL,
  `to_roleandsubid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_datashare_rs2rs`
--

LOCK TABLES `vtiger_datashare_rs2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_rs2rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_rs2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_date_format`
--

DROP TABLE IF EXISTS `vtiger_date_format`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL auto_increment,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`date_formatid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_date_format`
--

LOCK TABLES `vtiger_date_format` WRITE;
/*!40000 ALTER TABLE `vtiger_date_format` DISABLE KEYS */;
INSERT INTO `vtiger_date_format` VALUES (1,'dd-mm-yyyy',0,1),(2,'mm-dd-yyyy',1,1),(3,'yyyy-mm-dd',2,1);
/*!40000 ALTER TABLE `vtiger_date_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_date_format_seq`
--

DROP TABLE IF EXISTS `vtiger_date_format_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_date_format_seq`
--

LOCK TABLES `vtiger_date_format_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_date_format_seq` DISABLE KEYS */;
INSERT INTO `vtiger_date_format_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_date_format_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_dayoftheweek`
--

DROP TABLE IF EXISTS `vtiger_dayoftheweek`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_dayoftheweek` (
  `dayoftheweekid` int(11) NOT NULL auto_increment,
  `dayoftheweek` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`dayoftheweekid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_dayoftheweek`
--

LOCK TABLES `vtiger_dayoftheweek` WRITE;
/*!40000 ALTER TABLE `vtiger_dayoftheweek` DISABLE KEYS */;
INSERT INTO `vtiger_dayoftheweek` VALUES (1,'Sunday',1,1),(2,'Monday',2,1),(3,'Tuesday',3,1),(4,'Wednesday',4,1),(5,'Thursday',5,1),(6,'Friday',6,1),(7,'Saturday',7,1);
/*!40000 ALTER TABLE `vtiger_dayoftheweek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_dayoftheweek_seq`
--

DROP TABLE IF EXISTS `vtiger_dayoftheweek_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_dayoftheweek_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_dayoftheweek_seq`
--

LOCK TABLES `vtiger_dayoftheweek_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_dayoftheweek_seq` DISABLE KEYS */;
INSERT INTO `vtiger_dayoftheweek_seq` VALUES (7);
/*!40000 ALTER TABLE `vtiger_dayoftheweek_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_def_org_field`
--

DROP TABLE IF EXISTS `vtiger_def_org_field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_def_org_field` (
  `tabid` int(10) default NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) default NULL,
  `readonly` int(19) default NULL,
  PRIMARY KEY  (`fieldid`),
  KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  KEY `def_org_field_tabid_idx` (`tabid`),
  KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_def_org_field`
--

LOCK TABLES `vtiger_def_org_field` WRITE;
/*!40000 ALTER TABLE `vtiger_def_org_field` DISABLE KEYS */;
INSERT INTO `vtiger_def_org_field` VALUES (6,1,0,0),(6,2,0,0),(6,3,0,0),(6,4,0,0),(6,5,0,0),(6,6,0,0),(6,7,0,0),(6,8,0,0),(6,9,0,0),(6,10,0,0),(6,11,0,0),(6,12,0,0),(6,13,0,0),(6,14,0,0),(6,15,0,0),(6,16,0,0),(6,17,0,0),(6,18,0,0),(6,19,0,0),(6,20,0,0),(6,21,0,0),(6,22,0,0),(6,23,0,0),(6,24,0,0),(6,25,0,0),(6,26,0,0),(6,27,0,0),(6,28,0,0),(6,29,0,0),(6,30,0,0),(6,31,0,0),(6,32,0,0),(6,33,0,0),(6,34,0,0),(6,35,0,0),(6,36,0,0),(7,37,0,0),(7,38,0,0),(7,39,0,0),(7,40,0,0),(7,41,0,0),(7,42,0,0),(7,43,0,0),(7,44,0,0),(7,45,0,0),(7,46,0,0),(7,47,0,0),(7,48,0,0),(7,49,0,0),(7,50,0,0),(7,51,0,0),(7,52,0,0),(7,53,0,0),(7,54,0,0),(7,55,0,0),(7,56,0,0),(7,57,0,0),(7,58,0,0),(7,59,0,0),(7,60,0,0),(7,61,0,0),(7,62,0,0),(7,63,0,0),(7,64,0,0),(7,65,0,0),(4,66,0,0),(4,67,0,0),(4,68,0,0),(4,69,0,0),(4,70,0,0),(4,71,0,0),(4,72,0,0),(4,73,0,0),(4,74,0,0),(4,75,0,0),(4,76,0,0),(4,77,0,0),(4,78,0,0),(4,79,0,0),(4,80,0,0),(4,81,0,0),(4,82,0,0),(4,83,0,0),(4,84,0,0),(4,85,0,0),(4,86,0,0),(4,87,0,0),(4,88,0,0),(4,89,0,0),(4,90,0,0),(4,91,0,0),(4,92,0,0),(4,93,0,0),(4,94,0,0),(4,95,0,0),(4,96,0,0),(4,97,0,0),(4,98,0,0),(4,99,0,0),(4,100,0,0),(4,101,0,0),(4,102,0,0),(4,103,0,0),(4,104,0,0),(4,105,0,0),(4,106,0,0),(4,107,0,0),(4,108,0,0),(4,109,0,0),(2,110,0,0),(2,111,0,0),(2,112,0,0),(2,113,0,0),(2,114,0,0),(2,115,0,0),(2,116,0,0),(2,117,0,0),(2,118,0,0),(2,119,0,0),(2,120,0,0),(2,121,0,0),(2,122,0,0),(2,123,0,0),(2,124,0,0),(2,125,0,0),(26,126,0,0),(26,127,0,0),(26,128,0,0),(26,129,0,0),(26,130,0,0),(26,131,0,0),(26,132,0,0),(26,133,0,0),(26,134,0,0),(26,135,0,0),(26,136,0,0),(26,137,0,0),(26,138,0,0),(26,139,0,0),(26,140,0,0),(26,141,0,0),(26,142,0,0),(26,143,0,0),(26,144,0,0),(26,145,0,0),(26,146,0,0),(26,147,0,0),(26,148,0,0),(26,149,0,0),(26,150,0,0),(4,151,0,0),(6,152,0,0),(7,153,0,0),(26,154,0,0),(13,155,0,0),(13,156,0,0),(13,157,0,0),(13,158,0,0),(13,159,0,0),(13,160,0,0),(13,161,0,0),(13,162,0,0),(13,163,0,0),(13,164,0,0),(13,165,0,0),(13,166,0,0),(13,167,0,0),(13,168,0,0),(13,169,0,0),(13,170,0,0),(13,171,0,0),(13,172,0,0),(14,173,0,0),(14,174,0,0),(14,175,0,0),(14,176,0,0),(14,177,0,0),(14,178,0,0),(14,179,0,0),(14,180,0,0),(14,181,0,0),(14,182,0,0),(14,183,0,0),(14,184,0,0),(14,185,0,0),(14,186,0,0),(14,187,0,0),(14,188,0,0),(14,189,0,0),(14,190,0,0),(14,191,0,0),(14,192,0,0),(14,193,0,0),(14,194,0,0),(14,195,0,0),(14,196,0,0),(14,197,0,0),(14,198,0,0),(14,199,0,0),(14,200,0,0),(14,201,0,0),(14,202,0,0),(14,203,0,0),(8,204,0,0),(8,205,0,0),(8,206,0,0),(8,207,0,0),(8,208,0,0),(8,209,0,0),(8,210,0,0),(8,211,0,0),(8,212,0,0),(8,213,0,0),(8,214,0,0),(8,215,0,0),(8,216,0,0),(8,217,0,0),(8,218,0,0),(10,219,0,0),(10,220,0,0),(10,221,0,0),(10,222,0,0),(10,223,0,0),(10,224,0,0),(10,225,0,0),(10,226,0,0),(10,227,0,0),(10,228,0,0),(10,229,0,0),(10,230,0,0),(9,231,0,0),(9,232,0,0),(9,233,0,0),(9,234,0,0),(9,235,0,0),(9,236,0,0),(9,237,0,0),(9,238,0,0),(9,239,0,0),(9,240,0,0),(9,241,0,0),(9,242,0,0),(9,243,0,0),(9,244,0,0),(9,245,0,0),(9,246,0,0),(9,247,0,0),(9,248,0,0),(9,249,0,0),(9,250,0,0),(9,251,0,0),(9,252,0,0),(9,253,0,0),(9,254,0,0),(16,255,0,0),(16,256,0,0),(16,257,0,0),(16,258,0,0),(16,259,0,0),(16,260,0,0),(16,261,0,0),(16,262,0,0),(16,263,0,0),(16,264,0,0),(16,265,0,0),(16,266,0,0),(16,267,0,0),(16,268,0,0),(16,269,0,0),(16,270,0,0),(16,271,0,0),(16,272,0,0),(16,273,0,0),(16,274,0,0),(16,275,0,0),(16,276,0,0),(16,277,0,0),(15,278,0,0),(15,279,0,0),(15,280,0,0),(15,281,0,0),(15,282,0,0),(15,283,0,0),(15,284,0,0),(15,285,0,0),(15,286,0,0),(15,287,0,0),(18,288,0,0),(18,289,0,0),(18,290,0,0),(18,291,0,0),(18,292,0,0),(18,293,0,0),(18,294,0,0),(18,295,0,0),(18,296,0,0),(18,297,0,0),(18,298,0,0),(18,299,0,0),(18,300,0,0),(18,301,0,0),(18,302,0,0),(18,303,0,0),(18,304,0,0),(19,305,0,0),(19,306,0,0),(19,307,0,0),(19,308,0,0),(19,309,0,0),(19,310,0,0),(19,311,0,0),(19,312,0,0),(20,313,0,0),(20,314,0,0),(20,315,0,0),(20,316,0,0),(20,317,0,0),(20,318,0,0),(20,319,0,0),(20,320,0,0),(20,321,0,0),(20,322,0,0),(20,323,0,0),(20,324,0,0),(20,325,0,0),(20,326,0,0),(20,327,0,0),(20,328,0,0),(20,329,0,0),(20,330,0,0),(20,331,0,0),(20,332,0,0),(20,333,0,0),(20,334,0,0),(20,335,0,0),(20,336,0,0),(20,337,0,0),(20,338,0,0),(20,339,0,0),(20,340,0,0),(20,341,0,0),(20,342,0,0),(20,343,0,0),(20,344,0,0),(20,345,0,0),(20,346,0,0),(20,347,0,0),(20,348,0,0),(20,349,0,0),(21,350,0,0),(21,351,0,0),(21,352,0,0),(21,353,0,0),(21,354,0,0),(21,355,0,0),(21,356,0,0),(21,357,0,0),(21,358,0,0),(21,359,0,0),(21,360,0,0),(21,361,0,0),(21,362,0,0),(21,363,0,0),(21,364,0,0),(21,365,0,0),(21,366,0,0),(21,367,0,0),(21,368,0,0),(21,369,0,0),(21,370,0,0),(21,371,0,0),(21,372,0,0),(21,373,0,0),(21,374,0,0),(21,375,0,0),(21,376,0,0),(21,377,0,0),(21,378,0,0),(21,379,0,0),(21,380,0,0),(21,381,0,0),(21,382,0,0),(21,383,0,0),(21,384,0,0),(21,385,0,0),(21,386,0,0),(21,387,0,0),(22,388,0,0),(22,389,0,0),(22,390,0,0),(22,391,0,0),(22,392,0,0),(22,393,0,0),(22,394,0,0),(22,395,0,0),(22,396,0,0),(22,397,0,0),(22,398,0,0),(22,399,0,0),(22,400,0,0),(22,401,0,0),(22,402,0,0),(22,403,0,0),(22,404,0,0),(22,405,0,0),(22,406,0,0),(22,407,0,0),(22,408,0,0),(22,409,0,0),(22,410,0,0),(22,411,0,0),(22,412,0,0),(22,413,0,0),(22,414,0,0),(22,415,0,0),(22,416,0,0),(22,417,0,0),(22,418,0,0),(22,419,0,0),(22,420,0,0),(22,421,0,0),(22,422,0,0),(22,423,0,0),(22,424,0,0),(22,425,0,0),(22,426,0,0),(22,427,0,0),(22,428,0,0),(22,429,0,0),(22,430,0,0),(22,431,0,0),(22,432,0,0),(22,433,0,0),(22,434,0,0),(23,435,0,0),(23,436,0,0),(23,437,0,0),(23,438,0,0),(23,439,0,0),(23,440,0,0),(23,441,0,0),(23,442,0,0),(23,443,0,0),(23,444,0,0),(23,445,0,0),(23,446,0,0),(23,447,0,0),(23,448,0,0),(23,449,0,0),(23,450,0,0),(23,451,0,0),(23,452,0,0),(23,453,0,0),(23,454,0,0),(23,455,0,0),(23,456,0,0),(23,457,0,0),(23,458,0,0),(23,459,0,0),(23,460,0,0),(23,461,0,0),(23,462,0,0),(23,463,0,0),(23,464,0,0),(23,465,0,0),(23,466,0,0),(23,467,0,0),(23,468,0,0),(23,469,0,0),(23,470,0,0),(23,471,0,0),(23,472,0,0),(23,473,0,0),(29,474,0,0),(29,478,0,0),(29,479,0,0),(29,481,0,0),(29,488,0,0),(29,489,0,0),(29,490,0,0),(29,491,0,0),(29,493,0,0),(29,494,0,0),(29,495,0,0),(29,496,0,0),(29,497,0,0),(29,502,0,0),(29,503,0,0),(29,504,0,0),(29,505,0,0),(29,513,0,0),(10,518,0,0),(10,519,0,0),(10,520,0,0),(10,521,0,0),(10,522,0,0),(10,523,0,0),(34,524,0,0),(34,525,0,0),(34,526,0,0),(34,527,0,0),(34,528,0,0),(34,529,0,0),(34,530,0,0),(34,531,0,0),(34,532,0,0),(34,533,0,0),(34,534,0,0),(34,535,0,0),(34,536,0,0),(34,537,0,0),(34,538,0,0),(34,539,0,0),(29,540,0,0),(35,541,0,0),(35,542,0,0),(35,543,0,0),(35,544,0,0),(35,545,0,0),(35,546,0,0),(35,547,0,0),(35,548,0,0),(35,549,0,0),(35,550,0,0),(35,551,0,0),(35,552,0,0),(35,553,0,0),(35,554,0,0),(35,555,0,0),(35,556,0,0),(35,557,0,0),(35,558,0,0),(35,559,0,0),(36,560,0,0),(36,561,0,0),(36,562,0,0),(36,563,0,0),(36,564,0,0),(36,565,0,0),(36,566,0,0),(36,567,0,0),(36,568,0,0),(36,569,0,0),(36,570,0,0),(36,571,0,0),(36,572,0,0),(36,573,0,0),(36,574,0,0),(36,575,0,0),(36,576,0,0),(36,577,0,0),(36,578,0,0),(38,579,0,0),(38,580,0,0),(38,581,0,0),(38,582,0,0),(38,583,0,0),(38,584,0,0),(38,585,0,0),(38,586,0,0),(38,587,0,0),(38,588,0,0),(38,589,0,0),(38,590,0,0),(38,591,0,0),(38,592,0,0),(38,593,0,0),(38,594,0,0),(38,595,0,0),(38,596,0,0),(42,597,0,0),(42,598,0,0),(42,599,0,0),(42,600,0,0),(42,601,0,0),(42,602,0,0),(42,603,0,0),(43,604,0,0),(43,605,0,0),(43,606,0,0),(43,607,0,0),(43,608,0,0),(43,609,0,0),(43,610,0,0),(43,611,0,0),(43,612,0,0),(43,613,0,0),(44,614,0,0),(44,615,0,0),(44,616,0,0),(44,617,0,0),(44,618,0,0),(44,619,0,0),(44,620,0,0),(44,621,0,0),(44,622,0,0),(44,623,0,0),(44,624,0,0),(44,625,0,0),(44,626,0,0),(44,627,0,0),(44,628,0,0),(45,629,0,0),(45,630,0,0),(45,631,0,0),(45,632,0,0),(45,633,0,0),(45,634,0,0),(45,635,0,0),(45,636,0,0),(45,637,0,0),(45,638,0,0),(45,639,0,0),(45,640,0,0),(45,641,0,0),(45,642,0,0),(45,643,0,0),(45,644,0,0),(45,645,0,0),(47,646,0,0),(47,647,0,0),(47,648,0,0),(47,649,0,0),(47,650,0,0),(2,651,0,0),(29,652,0,0),(23,653,0,0),(23,654,0,0),(23,655,0,0),(23,656,0,0),(23,657,0,0),(23,658,0,0),(23,659,0,0),(23,660,0,0),(23,661,0,0),(22,662,0,0),(22,663,0,0),(22,664,0,0),(22,665,0,0),(22,666,0,0),(22,667,0,0),(22,668,0,0),(22,669,0,0),(22,670,0,0),(21,671,0,0),(21,672,0,0),(21,673,0,0),(21,674,0,0),(21,675,0,0),(21,676,0,0),(21,677,0,0),(21,678,0,0),(21,679,0,0),(20,680,0,0),(20,681,0,0),(20,682,0,0),(20,683,0,0),(20,684,0,0),(20,685,0,0),(20,686,0,0),(20,687,0,0),(20,688,0,0),(29,689,0,0),(44,690,0,0),(42,691,0,0),(29,692,0,0),(29,693,0,0),(29,694,0,0),(23,695,0,0),(22,696,0,0),(21,697,0,0),(20,698,0,0),(29,699,0,0),(6,700,0,0),(4,701,0,0),(2,702,0,0),(29,703,0,0),(23,704,0,0),(23,705,0,0),(21,706,0,0),(21,707,0,0),(18,708,0,0),(7,709,0,0),(42,710,0,0),(42,711,0,0),(23,712,0,0),(20,713,0,0),(21,714,0,0),(22,715,0,0),(29,716,0,0),(2,717,0,0),(13,718,0,0),(29,719,0,0),(13,720,0,0),(29,721,0,0),(29,722,0,0),(29,723,0,0),(2,724,0,0),(4,725,0,0),(6,726,0,0),(7,727,0,0),(9,729,0,0),(13,730,0,0),(18,734,0,0),(21,737,0,0),(23,739,0,0),(42,745,0,0),(43,746,0,0),(44,747,0,0),(45,748,0,0),(29,750,0,0);
/*!40000 ALTER TABLE `vtiger_def_org_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_def_org_share`
--

DROP TABLE IF EXISTS `vtiger_def_org_share`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL auto_increment,
  `tabid` int(11) NOT NULL,
  `permission` int(19) default NULL,
  `editstatus` int(19) default NULL,
  PRIMARY KEY  (`ruleid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_def_org_share`
--

LOCK TABLES `vtiger_def_org_share` WRITE;
/*!40000 ALTER TABLE `vtiger_def_org_share` DISABLE KEYS */;
INSERT INTO `vtiger_def_org_share` VALUES (1,2,2,0),(2,4,2,2),(3,6,2,0),(4,7,2,0),(5,9,3,1),(6,13,2,0),(7,16,3,2),(8,20,2,0),(9,21,2,0),(10,22,2,0),(11,23,2,0),(12,26,2,0),(13,8,2,0),(14,14,2,0),(15,34,3,0),(16,35,2,0),(17,36,2,0),(18,38,2,0),(19,42,2,0),(20,43,2,0),(21,44,2,0),(22,45,2,0),(23,47,2,0),(24,18,2,0),(25,10,2,0);
/*!40000 ALTER TABLE `vtiger_def_org_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_def_org_share_seq`
--

DROP TABLE IF EXISTS `vtiger_def_org_share_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_def_org_share_seq`
--

LOCK TABLES `vtiger_def_org_share_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_def_org_share_seq` DISABLE KEYS */;
INSERT INTO `vtiger_def_org_share_seq` VALUES (25);
/*!40000 ALTER TABLE `vtiger_def_org_share_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_default_record_view`
--

DROP TABLE IF EXISTS `vtiger_default_record_view`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_default_record_view` (
  `default_record_viewid` int(11) NOT NULL auto_increment,
  `default_record_view` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`default_record_viewid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_default_record_view`
--

LOCK TABLES `vtiger_default_record_view` WRITE;
/*!40000 ALTER TABLE `vtiger_default_record_view` DISABLE KEYS */;
INSERT INTO `vtiger_default_record_view` VALUES (1,'Summary',1,1),(2,'Detail',2,1);
/*!40000 ALTER TABLE `vtiger_default_record_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_default_record_view_seq`
--

DROP TABLE IF EXISTS `vtiger_default_record_view_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_default_record_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_default_record_view_seq`
--

LOCK TABLES `vtiger_default_record_view_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_default_record_view_seq` DISABLE KEYS */;
INSERT INTO `vtiger_default_record_view_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_default_record_view_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaultactivitytype`
--

DROP TABLE IF EXISTS `vtiger_defaultactivitytype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_defaultactivitytype` (
  `defaultactivitytypeid` int(11) NOT NULL auto_increment,
  `defaultactivitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`defaultactivitytypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_defaultactivitytype`
--

LOCK TABLES `vtiger_defaultactivitytype` WRITE;
/*!40000 ALTER TABLE `vtiger_defaultactivitytype` DISABLE KEYS */;
INSERT INTO `vtiger_defaultactivitytype` VALUES (1,'Call',1,325,1),(2,'Meeting',1,326,2);
/*!40000 ALTER TABLE `vtiger_defaultactivitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaultactivitytype_seq`
--

DROP TABLE IF EXISTS `vtiger_defaultactivitytype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_defaultactivitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_defaultactivitytype_seq`
--

LOCK TABLES `vtiger_defaultactivitytype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_defaultactivitytype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_defaultactivitytype_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_defaultactivitytype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaultcv`
--

DROP TABLE IF EXISTS `vtiger_defaultcv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text,
  PRIMARY KEY  (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_defaultcv`
--

LOCK TABLES `vtiger_defaultcv` WRITE;
/*!40000 ALTER TABLE `vtiger_defaultcv` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_defaultcv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaulteventstatus`
--

DROP TABLE IF EXISTS `vtiger_defaulteventstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_defaulteventstatus` (
  `defaulteventstatusid` int(11) NOT NULL auto_increment,
  `defaulteventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`defaulteventstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_defaulteventstatus`
--

LOCK TABLES `vtiger_defaulteventstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_defaulteventstatus` DISABLE KEYS */;
INSERT INTO `vtiger_defaulteventstatus` VALUES (1,'Planned',1,322,1),(2,'Held',1,323,2),(3,'Not Held',1,324,3);
/*!40000 ALTER TABLE `vtiger_defaulteventstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaulteventstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_defaulteventstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_defaulteventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_defaulteventstatus_seq`
--

LOCK TABLES `vtiger_defaulteventstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_defaulteventstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_defaulteventstatus_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_defaulteventstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_duration_minutes`
--

DROP TABLE IF EXISTS `vtiger_duration_minutes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL auto_increment,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`minutesid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_duration_minutes`
--

LOCK TABLES `vtiger_duration_minutes` WRITE;
/*!40000 ALTER TABLE `vtiger_duration_minutes` DISABLE KEYS */;
INSERT INTO `vtiger_duration_minutes` VALUES (1,'00',0,1),(2,'15',1,1),(3,'30',2,1),(4,'45',3,1);
/*!40000 ALTER TABLE `vtiger_duration_minutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_duration_minutes_seq`
--

DROP TABLE IF EXISTS `vtiger_duration_minutes_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_duration_minutes_seq`
--

LOCK TABLES `vtiger_duration_minutes_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_duration_minutes_seq` DISABLE KEYS */;
INSERT INTO `vtiger_duration_minutes_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_duration_minutes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_durationhrs`
--

DROP TABLE IF EXISTS `vtiger_durationhrs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL auto_increment,
  `hrs` varchar(50) default NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`hrsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_durationhrs`
--

LOCK TABLES `vtiger_durationhrs` WRITE;
/*!40000 ALTER TABLE `vtiger_durationhrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_durationhrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_durationmins`
--

DROP TABLE IF EXISTS `vtiger_durationmins`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_durationmins` (
  `minsid` int(19) NOT NULL auto_increment,
  `mins` varchar(50) default NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`minsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_durationmins`
--

LOCK TABLES `vtiger_durationmins` WRITE;
/*!40000 ALTER TABLE `vtiger_durationmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_durationmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_email_access`
--

DROP TABLE IF EXISTS `vtiger_email_access`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_email_access` (
  `crmid` int(11) default NULL,
  `mailid` int(11) default NULL,
  `accessdate` date default NULL,
  `accesstime` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_email_access`
--

LOCK TABLES `vtiger_email_access` WRITE;
/*!40000 ALTER TABLE `vtiger_email_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_email_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_email_track`
--

DROP TABLE IF EXISTS `vtiger_email_track`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_email_track` (
  `crmid` int(11) default NULL,
  `mailid` int(11) default NULL,
  `access_count` int(11) default NULL,
  UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_email_track`
--

LOCK TABLES `vtiger_email_track` WRITE;
/*!40000 ALTER TABLE `vtiger_email_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_email_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_emaildetails`
--

DROP TABLE IF EXISTS `vtiger_emaildetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL default '',
  `to_email` text,
  `cc_email` text,
  `bcc_email` text,
  `assigned_user_email` varchar(50) NOT NULL default '',
  `idlists` text,
  `email_flag` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_emaildetails`
--

LOCK TABLES `vtiger_emaildetails` WRITE;
/*!40000 ALTER TABLE `vtiger_emaildetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_emaildetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_emailtemplates`
--

DROP TABLE IF EXISTS `vtiger_emailtemplates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_emailtemplates` (
  `foldername` varchar(100) default NULL,
  `templatename` varchar(100) default NULL,
  `subject` varchar(100) default NULL,
  `description` text,
  `body` text,
  `deleted` int(1) NOT NULL default '0',
  `templateid` int(19) NOT NULL auto_increment,
  PRIMARY KEY  (`templateid`),
  KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_emailtemplates`
--

LOCK TABLES `vtiger_emailtemplates` WRITE;
/*!40000 ALTER TABLE `vtiger_emailtemplates` DISABLE KEYS */;
INSERT INTO `vtiger_emailtemplates` VALUES ('Public','Announcement for Release','Announcement for Release','Announcement of a release','Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST',0,1),('Public','Pending Invoices','Invoices Pending','Payment Due','name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.',0,2),('Public','Acceptance Proposal','Acceptance Proposal','Acceptance of Proposal',' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.',0,3),('Public','Goods received acknowledgement','Goods received acknowledgement','Acknowledged Receipt of Goods',' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>',0,4),('Public','Accept Order','Accept Order','Acknowledgement/Acceptance of Order',' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.',0,5),('Public','Address Change','Change of Address','Address Change','Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.',0,6),('Public','Follow Up','Follow Up','Follow Up of meeting','Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.',0,7),('Public','Target Crossed!','Target Crossed!','Fantastic Sales Spree!','Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!',0,8),('Public','Thanks Note','Thanks Note','Note of thanks','Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.',0,9),('Public','Customer Login Details','Customer Portal Login Details','Send Portal login details to customer','<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM<br /> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contact_name$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\"> Thank you very much for subscribing to the vtiger CRM - annual support service.<br />Here is your self service portal login details:</td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\">\n                                                <table width=\"75%\" cellspacing=\"0\" cellpadding=\"10\" border=\"0\" style=\"border: 2px solid rgb(180, 180, 179); background-color: rgb(226, 226, 225); font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal;\">\n                                                        <tr>\n                                                            <td><br />User ID     : <font color=\"#990000\"><strong> $login_name$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td>Password: <font color=\"#990000\"><strong> $password$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td align=\"center\"> <strong>  $URL$<br /> </strong> </td>\n                                                        </tr>\n                                                </table>\n                                                </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\"><strong>NOTE:</strong> We suggest you to change your password after logging in first time. <br /><br /> <strong><u>Help Documentation</u></strong><br />  <br /> After logging in to vtiger Self-service Portal first time, you can access the vtiger CRM documents from the <strong>Documents</strong> tab. Following documents are available for your reference:<br />\n                                                <ul>\n                                                    <li>Installation Manual (Windows &amp; Linux OS)<br /> </li>\n                                                    <li>User &amp; Administrator Manual<br /> </li>\n                                                    <li>vtiger Customer Portal - User Manual<br /> </li>\n                                                    <li>vtiger Outlook Plugin - User Manual<br /> </li>\n                                                    <li>vtiger Office Plug-in - User Manual<br /> </li>\n                                                    <li>vtiger Thunderbird Extension - User Manual<br /> </li>\n                                                    <li>vtiger Web Forms - User Manual<br /> </li>\n                                                    <li>vtiger Firefox Tool bar - User Manual<br /> </li>\n                                                </ul>\n                                                <br />  <br /> <strong><u>Knowledge Base</u></strong><br /> <br /> Periodically we update frequently asked question based on our customer experiences. You can access the latest articles from the <strong>FAQ</strong> tab.<br /> <br /> <strong><u>vtiger CRM - Details</u></strong><br /> <br /> Kindly let us know your current vtiger CRM version and system specification so that we can provide you necessary guidelines to enhance your vtiger CRM system performance. Based on your system specification we alert you about the latest security &amp; upgrade patches.<br />  <br />			 Thank you once again and wish you a wonderful experience with vtiger CRM.<br /> </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Best Regards</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">$support_team$ </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\" href=\"http://www.vtiger.com\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\" href=\"mailto:support@vtiger.com\">support@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>',0,10),('Public','Support end notification before a week','VtigerCRM Support Notification','Send Notification mail to customer before a week of support end date','<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\" href=\"http://www.vtiger.com\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\" href=\"mailto:info@vtiger.com\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>',0,11),('Public','Support end notification before a month','VtigerCRM Support Notification','Send Notification mail to customer before a month of support end date','<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a href=\"http://www.vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a href=\"mailto:info@vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>',0,12);
/*!40000 ALTER TABLE `vtiger_emailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_emailtemplates_seq`
--

DROP TABLE IF EXISTS `vtiger_emailtemplates_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_emailtemplates_seq`
--

LOCK TABLES `vtiger_emailtemplates_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_emailtemplates_seq` DISABLE KEYS */;
INSERT INTO `vtiger_emailtemplates_seq` VALUES (13);
/*!40000 ALTER TABLE `vtiger_emailtemplates_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_entityname`
--

DROP TABLE IF EXISTS `vtiger_entityname`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_entityname` (
  `tabid` int(19) NOT NULL default '0',
  `modulename` varchar(50) NOT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL,
  PRIMARY KEY  (`tabid`),
  KEY `entityname_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_entityname`
--

LOCK TABLES `vtiger_entityname` WRITE;
/*!40000 ALTER TABLE `vtiger_entityname` DISABLE KEYS */;
INSERT INTO `vtiger_entityname` VALUES (2,'Potentials','vtiger_potential','potentialname','potentialid','potential_id'),(4,'Contacts','vtiger_contactdetails','firstname,lastname','contactid','contact_id'),(6,'Accounts','vtiger_account','accountname','accountid','account_id'),(7,'Leads','vtiger_leaddetails','firstname,lastname','leadid','leadid'),(8,'Documents','vtiger_notes','title','notesid','notesid'),(9,'Calendar','vtiger_activity','subject','activityid','activityid'),(10,'Emails','vtiger_activity','subject','activityid','activityid'),(13,'HelpDesk','vtiger_troubletickets','title','ticketid','ticketid'),(14,'Products','vtiger_products','productname','productid','product_id'),(15,'Faq','vtiger_faq','question','id','id'),(18,'Vendors','vtiger_vendor','vendorname','vendorid','vendor_id'),(19,'PriceBooks','vtiger_pricebook','bookname','pricebookid','pricebookid'),(20,'Quotes','vtiger_quotes','subject','quoteid','quote_id'),(21,'PurchaseOrder','vtiger_purchaseorder','subject','purchaseorderid','purchaseorderid'),(22,'SalesOrder','vtiger_salesorder','subject','salesorderid','salesorder_id'),(23,'Invoice','vtiger_invoice','subject','invoiceid','invoiceid'),(26,'Campaigns','vtiger_campaign','campaignname','campaignid','campaignid'),(29,'Users','vtiger_users','first_name,last_name','id','id'),(34,'PBXManager','vtiger_pbxmanager','customernumber','pbxmanagerid','pbxmanagerid'),(35,'ServiceContracts','vtiger_servicecontracts','subject','servicecontractsid','servicecontractsid'),(36,'Services','vtiger_service','servicename','serviceid','serviceid'),(38,'Assets','vtiger_assets','assetname','assetsid','assetsid'),(42,'ModComments','vtiger_modcomments','commentcontent','modcommentsid','modcommentsid'),(43,'ProjectMilestone','vtiger_projectmilestone','projectmilestonename','projectmilestoneid','projectmilestoneid'),(44,'ProjectTask','vtiger_projecttask','projecttaskname','projecttaskid','projecttaskid'),(45,'Project','vtiger_project','projectname','projectid','projectid'),(47,'SMSNotifier','vtiger_smsnotifier','message','smsnotifierid','smsnotifierid');
/*!40000 ALTER TABLE `vtiger_entityname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandler_module`
--

DROP TABLE IF EXISTS `vtiger_eventhandler_module`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(100) default NULL,
  `handler_class` varchar(100) default NULL,
  PRIMARY KEY  (`eventhandler_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_eventhandler_module`
--

LOCK TABLES `vtiger_eventhandler_module` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandler_module` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandler_module` VALUES (1,'ModTracker','ModTrackerHandler'),(2,'ServiceContracts','ServiceContractsHandler'),(3,'Home','Vtiger_RecordLabelUpdater_Handler'),(4,'Invoice','InvoiceHandler'),(5,'PurchaseOrder','PurchaseOrderHandler');
/*!40000 ALTER TABLE `vtiger_eventhandler_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandler_module_seq`
--

DROP TABLE IF EXISTS `vtiger_eventhandler_module_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_eventhandler_module_seq`
--

LOCK TABLES `vtiger_eventhandler_module_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandler_module_seq` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandler_module_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_eventhandler_module_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandlers`
--

DROP TABLE IF EXISTS `vtiger_eventhandlers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL auto_increment,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text,
  `is_active` int(1) NOT NULL,
  `dependent_on` varchar(255) default '[]',
  PRIMARY KEY  (`eventhandler_id`,`event_name`,`handler_class`),
  UNIQUE KEY `eventhandler_idx` (`eventhandler_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_eventhandlers`
--

LOCK TABLES `vtiger_eventhandlers` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandlers` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandlers` VALUES (1,'vtiger.entity.aftersave','modules/SalesOrder/RecurringInvoiceHandler.php','RecurringInvoiceHandler','',1,'[]'),(2,'vtiger.entity.beforesave','data/VTEntityDelta.php','VTEntityDelta','',1,'[]'),(3,'vtiger.entity.aftersave','data/VTEntityDelta.php','VTEntityDelta','',1,'[]'),(4,'vtiger.entity.aftersave','modules/com_vtiger_workflow/VTEventHandler.inc','VTWorkflowEventHandler','',1,'[\"VTEntityDelta\"]'),(5,'vtiger.entity.afterrestore','modules/com_vtiger_workflow/VTEventHandler.inc','VTWorkflowEventHandler','',1,'[]'),(6,'vtiger.entity.aftersave.final','modules/HelpDesk/HelpDeskHandler.php','HelpDeskHandler','',1,'[]'),(7,'vtiger.entity.aftersave.final','modules/ModTracker/ModTrackerHandler.php','ModTrackerHandler','',1,'[]'),(8,'vtiger.entity.beforedelete','modules/ModTracker/ModTrackerHandler.php','ModTrackerHandler','',1,'[]'),(9,'vtiger.entity.afterrestore','modules/ModTracker/ModTrackerHandler.php','ModTrackerHandler','',1,'[]'),(10,'vtiger.entity.aftersave','modules/PBXManager/PBXManagerHandler.php','PBXManagerHandler','',1,'[\"VTEntityDelta\"]'),(11,'vtiger.entity.afterdelete','modules/PBXManager/PBXManagerHandler.php','PBXManagerHandler','',1,'[]'),(12,'vtiger.entity.afterrestore','modules/PBXManager/PBXManagerHandler.php','PBXManagerHandler','',1,'[]'),(13,'vtiger.batchevent.save','modules/PBXManager/PBXManagerHandler.php','PBXManagerBatchHandler','',1,'[]'),(14,'vtiger.batchevent.delete','modules/PBXManager/PBXManagerHandler.php','PBXManagerBatchHandler','',1,'[]'),(15,'vtiger.entity.beforesave','modules/ServiceContracts/ServiceContractsHandler.php','ServiceContractsHandler','',1,'[]'),(16,'vtiger.entity.aftersave','modules/ServiceContracts/ServiceContractsHandler.php','ServiceContractsHandler','',1,'[]'),(17,'vtiger.entity.aftersave','modules/WSAPP/WorkFlowHandlers/WSAPPAssignToTracker.php','WSAPPAssignToTracker','',1,'[\"VTEntityDelta\"]'),(18,'vtiger.entity.aftersave','modules/Vtiger/handlers/RecordLabelUpdater.php','Vtiger_RecordLabelUpdater_Handler','',1,'[]'),(19,'vtiger.entity.aftersave','modules/Invoice/InvoiceHandler.php','InvoiceHandler','',1,'[]'),(20,'vtiger.entity.aftersave','modules/PurchaseOrder/PurchaseOrderHandler.php','PurchaseOrderHandler','',1,'[]'),(21,'vtiger.entity.aftersave','modules/ModComments/ModCommentsHandler.php','ModCommentsHandler','',1,'[]'),(22,'vtiger.picklist.afterrename','modules/Settings/Picklist/handlers/PickListHandler.php','PickListHandler','',1,'[]'),(23,'vtiger.picklist.afterdelete','modules/Settings/Picklist/handlers/PickListHandler.php','PickListHandler','',1,'[]');
/*!40000 ALTER TABLE `vtiger_eventhandlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandlers_seq`
--

DROP TABLE IF EXISTS `vtiger_eventhandlers_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_eventhandlers_seq`
--

LOCK TABLES `vtiger_eventhandlers_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandlers_seq` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandlers_seq` VALUES (23);
/*!40000 ALTER TABLE `vtiger_eventhandlers_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventstatus`
--

DROP TABLE IF EXISTS `vtiger_eventstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL auto_increment,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`eventstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_eventstatus`
--

LOCK TABLES `vtiger_eventstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_eventstatus` DISABLE KEYS */;
INSERT INTO `vtiger_eventstatus` VALUES (1,'Planned',0,38,0),(2,'Held',0,39,1),(3,'Not Held',0,40,2);
/*!40000 ALTER TABLE `vtiger_eventstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_eventstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_eventstatus_seq`
--

LOCK TABLES `vtiger_eventstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_eventstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_eventstatus_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_eventstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_expectedresponse`
--

DROP TABLE IF EXISTS `vtiger_expectedresponse`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL auto_increment,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`expectedresponseid`),
  UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_expectedresponse`
--

LOCK TABLES `vtiger_expectedresponse` WRITE;
/*!40000 ALTER TABLE `vtiger_expectedresponse` DISABLE KEYS */;
INSERT INTO `vtiger_expectedresponse` VALUES (2,'Excellent',1,42,1),(3,'Good',1,43,2),(4,'Average',1,44,3),(5,'Poor',1,45,4);
/*!40000 ALTER TABLE `vtiger_expectedresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_expectedresponse_seq`
--

DROP TABLE IF EXISTS `vtiger_expectedresponse_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_expectedresponse_seq`
--

LOCK TABLES `vtiger_expectedresponse_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_expectedresponse_seq` DISABLE KEYS */;
INSERT INTO `vtiger_expectedresponse_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_expectedresponse_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_extnstore_users`
--

DROP TABLE IF EXISTS `vtiger_extnstore_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_extnstore_users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(75) default NULL,
  `instanceurl` varchar(255) default NULL,
  `createdon` datetime default NULL,
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_extnstore_users`
--

LOCK TABLES `vtiger_extnstore_users` WRITE;
/*!40000 ALTER TABLE `vtiger_extnstore_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_extnstore_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faq`
--

DROP TABLE IF EXISTS `vtiger_faq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faq` (
  `id` int(11) NOT NULL auto_increment,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) default NULL,
  `question` text,
  `answer` text,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `faq_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faq`
--

LOCK TABLES `vtiger_faq` WRITE;
/*!40000 ALTER TABLE `vtiger_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcategories`
--

DROP TABLE IF EXISTS `vtiger_faqcategories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL auto_increment,
  `faqcategories` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`faqcategories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faqcategories`
--

LOCK TABLES `vtiger_faqcategories` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcategories` DISABLE KEYS */;
INSERT INTO `vtiger_faqcategories` VALUES (1,'General',1,46,0);
/*!40000 ALTER TABLE `vtiger_faqcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcategories_seq`
--

DROP TABLE IF EXISTS `vtiger_faqcategories_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faqcategories_seq`
--

LOCK TABLES `vtiger_faqcategories_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcategories_seq` DISABLE KEYS */;
INSERT INTO `vtiger_faqcategories_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_faqcategories_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcf`
--

DROP TABLE IF EXISTS `vtiger_faqcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faqcf` (
  `faqid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faqcf`
--

LOCK TABLES `vtiger_faqcf` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_faqcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcomments`
--

DROP TABLE IF EXISTS `vtiger_faqcomments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL auto_increment,
  `faqid` int(19) default NULL,
  `comments` text,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY  (`commentid`),
  KEY `faqcomments_faqid_idx` (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faqcomments`
--

LOCK TABLES `vtiger_faqcomments` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_faqcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqstatus`
--

DROP TABLE IF EXISTS `vtiger_faqstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL auto_increment,
  `faqstatus` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`faqstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faqstatus`
--

LOCK TABLES `vtiger_faqstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_faqstatus` DISABLE KEYS */;
INSERT INTO `vtiger_faqstatus` VALUES (1,'Draft',0,47,0),(2,'Reviewed',0,48,1),(3,'Published',0,49,2),(4,'Obsolete',0,50,3);
/*!40000 ALTER TABLE `vtiger_faqstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_faqstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_faqstatus_seq`
--

LOCK TABLES `vtiger_faqstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_faqstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_faqstatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_faqstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_feedback`
--

DROP TABLE IF EXISTS `vtiger_feedback`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_feedback` (
  `userid` int(19) default NULL,
  `dontshow` varchar(19) default 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_feedback`
--

LOCK TABLES `vtiger_feedback` WRITE;
/*!40000 ALTER TABLE `vtiger_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_field`
--

DROP TABLE IF EXISTS `vtiger_field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL auto_increment,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `generatedtype` int(19) NOT NULL default '0',
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL default '1',
  `defaultvalue` text,
  `maximumlength` int(19) default NULL,
  `sequence` int(19) default NULL,
  `block` int(19) default NULL,
  `displaytype` int(19) default NULL,
  `typeofdata` varchar(100) default NULL,
  `quickcreate` int(10) NOT NULL default '1',
  `quickcreatesequence` int(19) default NULL,
  `info_type` varchar(20) default NULL,
  `masseditable` int(10) NOT NULL default '1',
  `helpinfo` text,
  `summaryfield` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fieldid`),
  KEY `field_tabid_idx` (`tabid`),
  KEY `field_fieldname_idx` (`fieldname`),
  KEY `field_block_idx` (`block`),
  KEY `field_displaytype_idx` (`displaytype`)
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_field`
--

LOCK TABLES `vtiger_field` WRITE;
/*!40000 ALTER TABLE `vtiger_field` DISABLE KEYS */;
INSERT INTO `vtiger_field` VALUES (6,1,'accountname','vtiger_account',1,'2','accountname','Account Name',1,0,'',100,1,9,1,'V~M',0,1,'BAS',1,NULL,1),(6,2,'account_no','vtiger_account',1,'4','account_no','Account No',1,0,'',100,2,9,1,'V~O',3,NULL,'BAS',0,NULL,0),(6,3,'phone','vtiger_account',1,'11','phone','Phone',1,2,'',100,4,9,1,'V~O',2,2,'BAS',1,NULL,1),(6,4,'website','vtiger_account',1,'17','website','Website',1,2,'',100,3,9,1,'V~O',2,3,'BAS',1,NULL,1),(6,5,'fax','vtiger_account',1,'11','fax','Fax',1,2,'',100,6,9,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,6,'tickersymbol','vtiger_account',1,'1','tickersymbol','Ticker Symbol',1,2,'',100,5,9,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,7,'otherphone','vtiger_account',1,'11','otherphone','Other Phone',1,2,'',100,8,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,8,'parentid','vtiger_account',1,'51','account_id','Member Of',1,2,'',100,7,9,1,'I~O',1,NULL,'BAS',0,NULL,0),(6,9,'email1','vtiger_account',1,'13','email1','Email',1,2,'',100,10,9,1,'E~O',1,NULL,'BAS',1,NULL,1),(6,10,'employees','vtiger_account',1,'7','employees','Employees',1,2,'',100,9,9,1,'I~O',1,NULL,'ADV',1,NULL,0),(6,11,'email2','vtiger_account',1,'13','email2','Other Email',1,2,'',100,11,9,1,'E~O',1,NULL,'ADV',1,NULL,0),(6,12,'ownership','vtiger_account',1,'1','ownership','Ownership',1,2,'',100,12,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,13,'rating','vtiger_account',1,'15','rating','Rating',1,2,'',100,14,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,14,'industry','vtiger_account',1,'15','industry','industry',1,2,'',100,13,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,15,'siccode','vtiger_account',1,'1','siccode','SIC Code',1,2,'',100,16,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,16,'account_type','vtiger_account',1,'15','accounttype','Type',1,2,'',100,15,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,17,'annualrevenue','vtiger_account',1,'71','annual_revenue','Annual Revenue',1,2,'',100,18,9,1,'N~O',1,NULL,'ADV',1,NULL,0),(6,18,'emailoptout','vtiger_account',1,'56','emailoptout','Email Opt Out',1,2,'',100,17,9,1,'C~O',1,NULL,'ADV',1,NULL,0),(6,19,'notify_owner','vtiger_account',1,'56','notify_owner','Notify Owner',1,2,'',10,20,9,1,'C~O',1,NULL,'ADV',1,NULL,0),(6,20,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,19,9,1,'V~M',0,4,'BAS',1,NULL,1),(6,21,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,22,9,2,'DT~O',3,NULL,'BAS',0,NULL,0),(6,22,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,21,9,2,'DT~O',3,NULL,'BAS',0,NULL,0),(6,23,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,23,9,3,'V~O',3,NULL,'BAS',0,NULL,0),(6,24,'bill_street','vtiger_accountbillads',1,'21','bill_street','Billing Address',1,2,'',100,1,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,25,'ship_street','vtiger_accountshipads',1,'21','ship_street','Shipping Address',1,2,'',100,2,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,26,'bill_city','vtiger_accountbillads',1,'1','bill_city','Billing City',1,2,'',100,5,11,1,'V~O',1,NULL,'BAS',1,NULL,1),(6,27,'ship_city','vtiger_accountshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,28,'bill_state','vtiger_accountbillads',1,'1','bill_state','Billing State',1,2,'',100,7,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,29,'ship_state','vtiger_accountshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,30,'bill_code','vtiger_accountbillads',1,'1','bill_code','Billing Code',1,2,'',100,9,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,31,'ship_code','vtiger_accountshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,32,'bill_country','vtiger_accountbillads',1,'1','bill_country','Billing Country',1,2,'',100,11,11,1,'V~O',1,NULL,'BAS',1,NULL,1),(6,33,'ship_country','vtiger_accountshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,34,'bill_pobox','vtiger_accountbillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,35,'ship_pobox','vtiger_accountshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,36,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,12,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,37,'salutation','vtiger_leaddetails',1,'55','salutationtype','Salutation',1,0,'',100,1,13,3,'V~O',1,NULL,'BAS',1,NULL,0),(7,38,'firstname','vtiger_leaddetails',1,'55','firstname','First Name',1,0,'',100,2,13,1,'V~O',2,1,'BAS',1,NULL,1),(7,39,'lead_no','vtiger_leaddetails',1,'4','lead_no','Lead No',1,0,'',100,3,13,1,'V~O',3,NULL,'BAS',0,NULL,0),(7,40,'phone','vtiger_leadaddress',1,'11','phone','Phone',1,2,'',100,5,13,1,'V~O',2,4,'BAS',1,NULL,1),(7,41,'lastname','vtiger_leaddetails',1,'255','lastname','Last Name',1,0,'',100,4,13,1,'V~M',0,2,'BAS',1,NULL,1),(7,42,'mobile','vtiger_leadaddress',1,'11','mobile','Mobile',1,2,'',100,7,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,43,'company','vtiger_leaddetails',1,'2','company','Company',1,2,'',100,6,13,1,'V~O',2,3,'BAS',1,NULL,1),(7,44,'fax','vtiger_leadaddress',1,'11','fax','Fax',1,2,'',100,9,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,45,'designation','vtiger_leaddetails',1,'1','designation','Designation',1,2,'',100,8,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,46,'email','vtiger_leaddetails',1,'13','email','Email',1,2,'',100,11,13,1,'E~O',2,5,'BAS',1,NULL,1),(7,47,'leadsource','vtiger_leaddetails',1,'15','leadsource','Lead Source',1,2,'',100,10,13,1,'V~O',1,NULL,'BAS',1,NULL,1),(7,48,'website','vtiger_leadsubdetails',1,'17','website','Website',1,2,'',100,13,13,1,'V~O',1,NULL,'ADV',1,NULL,1),(7,49,'industry','vtiger_leaddetails',1,'15','industry','Industry',1,2,'',100,12,13,1,'V~O',1,NULL,'ADV',1,NULL,0),(7,50,'leadstatus','vtiger_leaddetails',1,'15','leadstatus','Lead Status',1,2,'',100,15,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,51,'annualrevenue','vtiger_leaddetails',1,'71','annualrevenue','Annual Revenue',1,2,'',100,14,13,1,'N~O',1,NULL,'ADV',1,NULL,0),(7,52,'rating','vtiger_leaddetails',1,'15','rating','Rating',1,2,'',100,17,13,1,'V~O',1,NULL,'ADV',1,NULL,0),(7,53,'noofemployees','vtiger_leaddetails',1,'1','noofemployees','No Of Employees',1,2,'',100,16,13,1,'I~O',1,NULL,'ADV',1,NULL,0),(7,54,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,19,13,1,'V~M',0,6,'BAS',1,NULL,1),(7,55,'secondaryemail','vtiger_leaddetails',1,'13','secondaryemail','Secondary Email',1,2,'',100,18,13,1,'E~O',1,NULL,'ADV',1,NULL,0),(7,56,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,21,13,2,'DT~O',3,NULL,'BAS',0,NULL,0),(7,57,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,20,13,2,'DT~O',3,NULL,'BAS',0,NULL,0),(7,58,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,23,13,3,'V~O',3,NULL,'BAS',0,NULL,0),(7,59,'lane','vtiger_leadaddress',1,'21','lane','Street',1,2,'',100,1,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,60,'code','vtiger_leadaddress',1,'1','code','Postal Code',1,2,'',100,3,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,61,'city','vtiger_leadaddress',1,'1','city','City',1,2,'',100,4,15,1,'V~O',1,NULL,'BAS',1,NULL,1),(7,62,'country','vtiger_leadaddress',1,'1','country','Country',1,2,'',100,5,15,1,'V~O',1,NULL,'BAS',1,NULL,1),(7,63,'state','vtiger_leadaddress',1,'1','state','State',1,2,'',100,6,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,64,'pobox','vtiger_leadaddress',1,'1','pobox','Po Box',1,2,'',100,2,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,65,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,16,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,66,'salutation','vtiger_contactdetails',1,'55','salutationtype','Salutation',1,0,'',100,1,4,3,'V~O',1,NULL,'BAS',1,NULL,0),(4,67,'firstname','vtiger_contactdetails',1,'55','firstname','First Name',1,0,'',100,2,4,1,'V~O',2,1,'BAS',1,NULL,1),(4,68,'contact_no','vtiger_contactdetails',1,'4','contact_no','Contact Id',1,0,'',100,3,4,1,'V~O',3,NULL,'BAS',0,NULL,0),(4,69,'phone','vtiger_contactdetails',1,'11','phone','Office Phone',1,2,'',100,5,4,1,'V~O',2,4,'BAS',1,NULL,1),(4,70,'lastname','vtiger_contactdetails',1,'255','lastname','Last Name',1,0,'',100,4,4,1,'V~M',0,2,'BAS',1,NULL,1),(4,71,'mobile','vtiger_contactdetails',1,'11','mobile','Mobile',1,2,'',100,7,4,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,72,'accountid','vtiger_contactdetails',1,'51','account_id','Account Name',1,0,'',100,6,4,1,'I~O',2,3,'BAS',1,NULL,1),(4,73,'homephone','vtiger_contactsubdetails',1,'11','homephone','Home Phone',1,2,'',100,9,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,74,'leadsource','vtiger_contactsubdetails',1,'15','leadsource','Lead Source',1,2,'',100,8,4,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,75,'otherphone','vtiger_contactsubdetails',1,'11','otherphone','Other Phone',1,2,'',100,11,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,76,'title','vtiger_contactdetails',1,'1','title','Title',1,2,'',100,10,4,1,'V~O',1,NULL,'BAS',1,NULL,1),(4,77,'fax','vtiger_contactdetails',1,'11','fax','Fax',1,2,'',100,13,4,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,78,'department','vtiger_contactdetails',1,'1','department','Department',1,2,'',100,12,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,79,'birthday','vtiger_contactsubdetails',1,'5','birthday','Birthdate',1,2,'',100,16,4,1,'D~O',1,NULL,'ADV',1,NULL,0),(4,80,'email','vtiger_contactdetails',1,'13','email','Email',1,2,'',100,15,4,1,'E~O',2,5,'BAS',1,NULL,1),(4,81,'reportsto','vtiger_contactdetails',1,'57','contact_id','Reports To',1,2,'',100,18,4,1,'V~O',1,NULL,'ADV',0,NULL,0),(4,82,'assistant','vtiger_contactsubdetails',1,'1','assistant','Assistant',1,2,'',100,17,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,83,'secondaryemail','vtiger_contactdetails',1,'13','secondaryemail','Secondary Email',1,2,'',100,20,4,1,'E~O',1,NULL,'ADV',1,NULL,0),(4,84,'assistantphone','vtiger_contactsubdetails',1,'11','assistantphone','Assistant Phone',1,2,'',100,19,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,85,'donotcall','vtiger_contactdetails',1,'56','donotcall','Do Not Call',1,2,'',100,22,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,86,'emailoptout','vtiger_contactdetails',1,'56','emailoptout','Email Opt Out',1,2,'',100,21,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,87,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,24,4,1,'V~M',0,6,'BAS',1,NULL,1),(4,88,'reference','vtiger_contactdetails',1,'56','reference','Reference',1,2,'',10,23,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,89,'notify_owner','vtiger_contactdetails',1,'56','notify_owner','Notify Owner',1,2,'',10,26,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,90,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,25,4,2,'DT~O',3,NULL,'BAS',0,NULL,0),(4,91,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,27,4,2,'DT~O',3,NULL,'BAS',0,NULL,0),(4,92,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,28,4,3,'V~O',3,NULL,'BAS',0,NULL,0),(4,93,'portal','vtiger_customerdetails',1,'56','portal','Portal User',1,2,'',100,1,6,1,'C~O',1,NULL,'ADV',0,NULL,0),(4,94,'support_start_date','vtiger_customerdetails',1,'5','support_start_date','Support Start Date',1,2,'',100,2,6,1,'D~O',1,NULL,'ADV',1,NULL,0),(4,95,'support_end_date','vtiger_customerdetails',1,'5','support_end_date','Support End Date',1,2,'',100,3,6,1,'D~O~OTH~GE~support_start_date~Support Start Date',1,NULL,'ADV',1,NULL,0),(4,96,'mailingstreet','vtiger_contactaddress',1,'21','mailingstreet','Mailing Street',1,2,'',100,1,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,97,'otherstreet','vtiger_contactaddress',1,'21','otherstreet','Other Street',1,2,'',100,2,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,98,'mailingcity','vtiger_contactaddress',1,'1','mailingcity','Mailing City',1,2,'',100,5,7,1,'V~O',1,NULL,'BAS',1,NULL,1),(4,99,'othercity','vtiger_contactaddress',1,'1','othercity','Other City',1,2,'',100,6,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,100,'mailingstate','vtiger_contactaddress',1,'1','mailingstate','Mailing State',1,2,'',100,7,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,101,'otherstate','vtiger_contactaddress',1,'1','otherstate','Other State',1,2,'',100,8,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,102,'mailingzip','vtiger_contactaddress',1,'1','mailingzip','Mailing Zip',1,2,'',100,9,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,103,'otherzip','vtiger_contactaddress',1,'1','otherzip','Other Zip',1,2,'',100,10,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,104,'mailingcountry','vtiger_contactaddress',1,'1','mailingcountry','Mailing Country',1,2,'',100,11,7,1,'V~O',1,NULL,'BAS',1,NULL,1),(4,105,'othercountry','vtiger_contactaddress',1,'1','othercountry','Other Country',1,2,'',100,12,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,106,'mailingpobox','vtiger_contactaddress',1,'1','mailingpobox','Mailing Po Box',1,2,'',100,3,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,107,'otherpobox','vtiger_contactaddress',1,'1','otherpobox','Other Po Box',1,2,'',100,4,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,108,'imagename','vtiger_contactdetails',1,'69','imagename','Contact Image',1,2,'',100,1,73,1,'V~O',3,NULL,'ADV',0,NULL,0),(4,109,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,8,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,110,'potentialname','vtiger_potential',1,'2','potentialname','Potential Name',1,0,'',100,1,1,1,'V~M',0,1,'BAS',1,NULL,1),(2,111,'potential_no','vtiger_potential',1,'4','potential_no','Potential No',1,0,'',100,2,1,1,'V~O',3,NULL,'BAS',0,NULL,0),(2,112,'amount','vtiger_potential',1,'71','amount','Amount',1,2,'',100,5,1,1,'N~O',2,5,'BAS',1,NULL,1),(2,113,'related_to','vtiger_potential',1,'10','related_to','Related To',1,0,'',100,3,1,1,'V~O',0,2,'BAS',1,NULL,1),(2,114,'closingdate','vtiger_potential',1,'23','closingdate','Expected Close Date',1,2,'',100,8,1,1,'D~M',2,3,'BAS',1,NULL,1),(2,115,'potentialtype','vtiger_potential',1,'15','opportunity_type','Type',1,2,'',100,7,1,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,116,'nextstep','vtiger_potential',1,'1','nextstep','Next Step',1,2,'',100,10,1,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,117,'leadsource','vtiger_potential',1,'15','leadsource','Lead Source',1,2,'',100,9,1,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,118,'sales_stage','vtiger_potential',1,'15','sales_stage','Sales Stage',1,2,'',100,12,1,1,'V~M',2,4,'BAS',1,NULL,1),(2,119,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,11,1,1,'V~M',0,6,'BAS',1,NULL,1),(2,120,'probability','vtiger_potential',1,'9','probability','Probability',1,2,'',100,14,1,1,'N~O',1,NULL,'BAS',1,NULL,0),(2,121,'campaignid','vtiger_potential',1,'58','campaignid','Campaign Source',1,2,'',100,13,1,1,'N~O',1,NULL,'BAS',1,NULL,0),(2,122,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,16,1,2,'DT~O',3,NULL,'BAS',0,NULL,0),(2,123,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,1,2,'DT~O',3,NULL,'BAS',0,NULL,0),(2,124,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,17,1,3,'V~O',3,NULL,'BAS',0,NULL,0),(2,125,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,3,1,'V~O',1,NULL,'BAS',1,NULL,0),(26,126,'campaignname','vtiger_campaign',1,'2','campaignname','Campaign Name',1,0,'',100,1,74,1,'V~M',0,1,'BAS',1,NULL,1),(26,127,'campaign_no','vtiger_campaign',1,'4','campaign_no','Campaign No',1,0,'',100,2,74,1,'V~O',3,NULL,'BAS',0,NULL,0),(26,128,'campaigntype','vtiger_campaign',1,'15','campaigntype','Campaign Type',1,2,'',100,5,74,1,'V~O',2,3,'BAS',1,NULL,1),(26,129,'product_id','vtiger_campaign',1,'59','product_id','Product',1,2,'',100,6,74,1,'I~O',2,5,'BAS',1,NULL,0),(26,130,'campaignstatus','vtiger_campaign',1,'15','campaignstatus','Campaign Status',1,2,'',100,4,74,1,'V~O',2,6,'BAS',1,NULL,1),(26,131,'closingdate','vtiger_campaign',1,'23','closingdate','Expected Close Date',1,2,'',100,8,74,1,'D~M',2,2,'BAS',1,NULL,1),(26,132,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,3,74,1,'V~M',0,7,'BAS',1,NULL,1),(26,133,'numsent','vtiger_campaign',1,'9','numsent','Num Sent',1,2,'',100,12,74,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,134,'sponsor','vtiger_campaign',1,'1','sponsor','Sponsor',1,2,'',100,9,74,1,'V~O',1,NULL,'BAS',1,NULL,0),(26,135,'targetaudience','vtiger_campaign',1,'1','targetaudience','Target Audience',1,2,'',100,7,74,1,'V~O',1,NULL,'BAS',1,NULL,0),(26,136,'targetsize','vtiger_campaign',1,'1','targetsize','TargetSize',1,2,'',100,10,74,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,137,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,11,74,2,'DT~O',3,NULL,'BAS',0,NULL,0),(26,138,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,13,74,2,'DT~O',3,NULL,'BAS',0,NULL,0),(26,139,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,16,74,3,'V~O',3,NULL,'BAS',0,NULL,0),(26,140,'expectedresponse','vtiger_campaign',1,'15','expectedresponse','Expected Response',1,2,'',100,3,76,1,'V~O',2,4,'BAS',1,NULL,0),(26,141,'expectedrevenue','vtiger_campaign',1,'71','expectedrevenue','Expected Revenue',1,2,'',100,4,76,1,'N~O',1,NULL,'BAS',1,NULL,1),(26,142,'budgetcost','vtiger_campaign',1,'71','budgetcost','Budget Cost',1,2,'',100,1,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,143,'actualcost','vtiger_campaign',1,'71','actualcost','Actual Cost',1,2,'',100,2,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,144,'expectedresponsecount','vtiger_campaign',1,'1','expectedresponsecount','Expected Response Count',1,2,'',100,7,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,145,'expectedsalescount','vtiger_campaign',1,'1','expectedsalescount','Expected Sales Count',1,2,'',100,5,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,146,'expectedroi','vtiger_campaign',1,'71','expectedroi','Expected ROI',1,2,'',100,9,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,147,'actualresponsecount','vtiger_campaign',1,'1','actualresponsecount','Actual Response Count',1,2,'',100,8,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,148,'actualsalescount','vtiger_campaign',1,'1','actualsalescount','Actual Sales Count',1,2,'',100,6,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,149,'actualroi','vtiger_campaign',1,'71','actualroi','Actual ROI',1,2,'',100,10,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,150,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,81,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,151,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(6,152,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(7,153,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(26,154,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(13,155,'ticket_no','vtiger_troubletickets',1,'4','ticket_no','Ticket No',1,0,'',100,14,25,1,'V~O',3,NULL,'BAS',0,NULL,1),(13,156,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,5,25,1,'V~M',0,4,'BAS',1,NULL,1),(13,157,'parent_id','vtiger_troubletickets',1,'10','parent_id','Related To',1,0,'',100,2,25,1,'I~O',1,NULL,'BAS',1,NULL,1),(13,158,'priority','vtiger_troubletickets',1,'15','ticketpriorities','Priority',1,2,'',100,7,25,1,'V~O',2,3,'BAS',1,NULL,1),(13,159,'product_id','vtiger_troubletickets',1,'59','product_id','Product Name',1,2,'',100,6,25,1,'I~O',1,NULL,'BAS',1,NULL,0),(13,160,'severity','vtiger_troubletickets',1,'15','ticketseverities','Severity',1,2,'',100,9,25,1,'V~O',1,NULL,'BAS',1,NULL,1),(13,161,'status','vtiger_troubletickets',1,'15','ticketstatus','Status',1,2,'',100,8,25,1,'V~M',1,2,'BAS',1,NULL,1),(13,162,'category','vtiger_troubletickets',1,'15','ticketcategories','Category',1,2,'',100,11,25,1,'V~O',1,NULL,'BAS',1,NULL,0),(13,163,'update_log','vtiger_troubletickets',1,'19','update_log','Update History',1,0,'',100,12,25,3,'V~O',1,NULL,'BAS',0,NULL,0),(13,164,'hours','vtiger_troubletickets',1,'1','hours','Hours',1,2,'',100,10,25,1,'N~O',1,NULL,'BAS',1,'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.',0),(13,165,'days','vtiger_troubletickets',1,'1','days','Days',1,2,'',100,11,25,1,'N~O',1,NULL,'BAS',1,'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.',0),(13,166,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,10,25,2,'DT~O',3,NULL,'BAS',0,NULL,0),(13,167,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,13,25,2,'DT~O',3,NULL,'BAS',0,NULL,0),(13,168,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,17,25,3,'V~O',3,NULL,'BAS',0,NULL,0),(13,169,'title','vtiger_troubletickets',1,'22','ticket_title','Title',1,0,'',100,1,25,1,'V~M',0,1,'BAS',1,NULL,1),(13,170,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,28,1,'V~O',2,4,'BAS',1,NULL,1),(13,171,'solution','vtiger_troubletickets',1,'19','solution','Solution',1,0,'',100,1,29,1,'V~O',3,NULL,'BAS',0,NULL,0),(13,172,'comments','vtiger_ticketcomments',1,'19','comments','Add Comment',1,1,'',100,1,30,1,'V~O',3,NULL,'BAS',0,NULL,0),(14,173,'productname','vtiger_products',1,'2','productname','Product Name',1,0,'',100,1,31,1,'V~M',0,1,'BAS',1,NULL,1),(14,174,'product_no','vtiger_products',1,'4','product_no','Product No',1,0,'',100,2,31,1,'V~O',3,NULL,'BAS',0,NULL,0),(14,175,'productcode','vtiger_products',1,'1','productcode','Part Number',1,2,'',100,4,31,1,'V~O',1,NULL,'BAS',1,NULL,1),(14,176,'discontinued','vtiger_products',1,'56','discontinued','Product Active',1,2,'',100,3,31,1,'V~O',2,2,'BAS',1,NULL,0),(14,177,'manufacturer','vtiger_products',1,'15','manufacturer','Manufacturer',1,2,'',100,6,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,178,'productcategory','vtiger_products',1,'15','productcategory','Product Category',1,2,'',100,6,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,179,'sales_start_date','vtiger_products',1,'5','sales_start_date','Sales Start Date',1,2,'',100,5,31,1,'D~O',1,NULL,'BAS',1,NULL,0),(14,180,'sales_end_date','vtiger_products',1,'5','sales_end_date','Sales End Date',1,2,'',100,8,31,1,'D~O~OTH~GE~sales_start_date~Sales Start Date',1,NULL,'BAS',1,NULL,0),(14,181,'start_date','vtiger_products',1,'5','start_date','Support Start Date',1,2,'',100,7,31,1,'D~O',1,NULL,'BAS',1,NULL,0),(14,182,'expiry_date','vtiger_products',1,'5','expiry_date','Support Expiry Date',1,2,'',100,10,31,1,'D~O~OTH~GE~start_date~Start Date',1,NULL,'BAS',1,NULL,0),(14,183,'website','vtiger_products',1,'17','website','Website',1,2,'',100,14,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,184,'vendor_id','vtiger_products',1,'75','vendor_id','Vendor Name',1,2,'',100,13,31,1,'I~O',1,NULL,'BAS',1,NULL,0),(14,185,'mfr_part_no','vtiger_products',1,'1','mfr_part_no','Mfr PartNo',1,2,'',100,16,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,186,'vendor_part_no','vtiger_products',1,'1','vendor_part_no','Vendor PartNo',1,2,'',100,15,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,187,'serialno','vtiger_products',1,'1','serial_no','Serial No',1,2,'',100,18,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,188,'productsheet','vtiger_products',1,'1','productsheet','Product Sheet',1,2,'',100,17,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,189,'glacct','vtiger_products',1,'15','glacct','GL Account',1,2,'',100,20,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,190,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,19,31,2,'DT~O',3,NULL,'BAS',0,NULL,0),(14,191,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,21,31,2,'DT~O',3,NULL,'BAS',0,NULL,0),(14,192,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,31,3,'V~O',3,NULL,'BAS',0,NULL,0),(14,193,'unit_price','vtiger_products',1,'72','unit_price','Unit Price',1,0,'',100,1,32,1,'N~O',2,3,'BAS',0,NULL,1),(14,194,'commissionrate','vtiger_products',1,'9','commissionrate','Commission Rate',1,2,'',100,2,32,1,'N~O',1,NULL,'BAS',1,NULL,1),(14,195,'taxclass','vtiger_products',1,'83','taxclass','Tax Class',1,2,'',100,4,32,1,'V~O',3,NULL,'BAS',1,NULL,0),(14,196,'usageunit','vtiger_products',1,'15','usageunit','Usage Unit',1,2,'',100,1,33,1,'V~O',1,NULL,'ADV',1,NULL,0),(14,197,'qty_per_unit','vtiger_products',1,'1','qty_per_unit','Qty/Unit',1,2,'',100,2,33,1,'N~O',1,NULL,'ADV',1,NULL,1),(14,198,'qtyinstock','vtiger_products',1,'1','qtyinstock','Qty In Stock',1,2,'',100,3,33,1,'NN~O',0,4,'ADV',1,NULL,0),(14,199,'reorderlevel','vtiger_products',1,'1','reorderlevel','Reorder Level',1,2,'',100,4,33,1,'I~O',1,NULL,'ADV',1,NULL,0),(14,200,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Handler',1,0,'',100,5,33,1,'V~M',0,5,'BAS',1,NULL,0),(14,201,'qtyindemand','vtiger_products',1,'1','qtyindemand','Qty In Demand',1,2,'',100,6,33,1,'I~O',1,NULL,'ADV',1,NULL,0),(14,202,'imagename','vtiger_products',1,'69','imagename','Product Image',1,2,'',100,1,35,1,'V~O',3,NULL,'ADV',0,NULL,0),(14,203,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,36,1,'V~O',1,NULL,'BAS',1,NULL,0),(8,204,'title','vtiger_notes',1,'2','notes_title','Title',1,0,'',100,1,17,1,'V~M',0,1,'BAS',1,NULL,1),(8,205,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,17,2,'DT~O',3,NULL,'BAS',0,NULL,0),(8,206,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,17,2,'DT~O',3,NULL,'BAS',0,NULL,1),(8,207,'filename','vtiger_notes',1,'28','filename','File Name',1,2,'',100,3,18,1,'V~O',0,NULL,'BAS',0,NULL,1),(8,208,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,4,17,1,'V~M',0,3,'BAS',1,NULL,1),(8,209,'notecontent','vtiger_notes',1,'19','notecontent','Note',1,2,'',100,1,84,1,'V~O',1,NULL,'BAS',1,NULL,0),(8,210,'filetype','vtiger_notes',1,'1','filetype','File Type',1,2,'',100,5,18,2,'V~O',3,0,'BAS',0,NULL,0),(8,211,'filesize','vtiger_notes',1,'1','filesize','File Size',1,2,'',100,4,18,2,'I~O',3,0,'BAS',0,NULL,0),(8,212,'filelocationtype','vtiger_notes',1,'27','filelocationtype','Download Type',1,0,'',100,1,18,1,'V~O',0,0,'BAS',0,NULL,0),(8,213,'fileversion','vtiger_notes',1,'1','fileversion','Version',1,2,'',100,6,18,1,'V~O',1,0,'BAS',1,NULL,0),(8,214,'filestatus','vtiger_notes',1,'56','filestatus','Active',1,2,'1',100,2,18,1,'V~O',1,0,'BAS',1,NULL,0),(8,215,'filedownloadcount','vtiger_notes',1,'1','filedownloadcount','Download Count',1,2,'',100,7,18,2,'I~O',3,0,'BAS',0,NULL,0),(8,216,'folderid','vtiger_notes',1,'26','folderid','Folder Name',1,2,'',100,2,17,1,'V~O',2,2,'BAS',1,NULL,1),(8,217,'note_no','vtiger_notes',1,'4','note_no','Document No',1,0,'',100,3,17,1,'V~O',3,NULL,'BAS',0,NULL,0),(8,218,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,12,17,3,'V~O',3,NULL,'BAS',0,NULL,0),(10,219,'date_start','vtiger_activity',1,'6','date_start','Date & Time Sent',1,0,'',100,1,21,1,'DT~M~time_start~Time Start',1,NULL,'BAS',1,NULL,0),(10,220,'semodule','vtiger_activity',1,'2','parent_type','Sales Enity Module',1,0,'',100,2,21,3,'',1,NULL,'BAS',1,NULL,0),(10,221,'activitytype','vtiger_activity',1,'2','activitytype','Activtiy Type',1,0,'',100,3,21,3,'V~O',1,NULL,'BAS',1,NULL,0),(10,222,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,5,21,1,'V~M',1,NULL,'BAS',1,NULL,0),(10,223,'subject','vtiger_activity',1,'2','subject','Subject',1,0,'',100,1,23,1,'V~M',1,NULL,'BAS',1,NULL,0),(10,224,'name','vtiger_attachments',1,'61','filename','Attachment',1,0,'',100,2,23,1,'V~O',1,NULL,'BAS',1,NULL,0),(10,225,'description','vtiger_crmentity',1,'19','description','Description',1,0,'',100,1,24,1,'V~O',1,NULL,'BAS',1,NULL,0),(10,226,'time_start','vtiger_activity',1,'2','time_start','Time Start',1,0,'',100,9,23,1,'T~O',1,NULL,'BAS',1,NULL,0),(10,227,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,10,22,1,'DT~O',3,NULL,'BAS',0,NULL,0),(10,228,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,11,21,2,'DT~O',3,NULL,'BAS',0,NULL,0),(10,229,'access_count','vtiger_email_track',1,'25','access_count','Access Count',1,0,'0',100,6,21,3,'V~O',1,NULL,'BAS',0,NULL,0),(10,230,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,12,21,3,'V~O',3,NULL,'BAS',0,NULL,0),(9,231,'subject','vtiger_activity',1,'2','subject','Subject',1,0,'',100,1,19,1,'V~M',0,1,'BAS',1,NULL,1),(9,232,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,2,19,1,'V~M',0,4,'BAS',1,NULL,1),(9,233,'date_start','vtiger_activity',1,'6','date_start','Start Date & Time',1,0,'',100,3,19,1,'DT~M~time_start',0,2,'BAS',1,NULL,1),(9,234,'time_start','vtiger_activity',1,'2','time_start','Time Start',1,0,'',100,4,19,3,'T~O',1,NULL,'BAS',1,NULL,1),(9,235,'time_end','vtiger_activity',1,'2','time_end','End Time',1,0,'',100,4,19,3,'T~O',1,NULL,'BAS',1,NULL,1),(9,236,'due_date','vtiger_activity',1,'23','due_date','Due Date',1,0,'',100,5,19,1,'D~M~OTH~GE~date_start~Start Date & Time',1,NULL,'BAS',1,NULL,1),(9,237,'crmid','vtiger_seactivityrel',1,'66','parent_id','Related To',1,0,'',100,7,19,1,'I~O',1,NULL,'BAS',1,NULL,1),(9,238,'contactid','vtiger_cntactivityrel',1,'57','contact_id','Contact Name',1,0,'',100,8,19,1,'I~O',1,NULL,'BAS',1,NULL,0),(9,239,'status','vtiger_activity',1,'15','taskstatus','Status',1,0,'',100,8,19,1,'V~M',0,3,'BAS',1,NULL,0),(9,240,'eventstatus','vtiger_activity',1,'15','eventstatus','Status',1,0,'',100,9,19,3,'V~O',1,NULL,'BAS',1,NULL,0),(9,241,'priority','vtiger_activity',1,'15','taskpriority','Priority',1,0,'',100,10,19,1,'V~O',1,NULL,'BAS',1,NULL,0),(9,242,'sendnotification','vtiger_activity',1,'56','sendnotification','Send Notification',1,0,'',100,11,19,1,'C~O',1,NULL,'BAS',1,NULL,0),(9,243,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,14,19,2,'DT~O',3,NULL,'BAS',0,NULL,0),(9,244,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,19,2,'DT~O',3,NULL,'BAS',0,NULL,0),(9,245,'activitytype','vtiger_activity',1,'15','activitytype','Activity Type',1,0,'',100,16,19,3,'V~O',1,NULL,'BAS',1,NULL,1),(9,246,'visibility','vtiger_activity',1,'16','visibility','Visibility',1,0,'',100,17,19,3,'V~O',1,NULL,'BAS',1,NULL,0),(9,247,'description','vtiger_crmentity',1,'19','description','Description',1,0,'',100,1,20,1,'V~O',1,NULL,'BAS',1,NULL,0),(9,248,'duration_hours','vtiger_activity',1,'63','duration_hours','Duration',1,0,'',100,17,19,3,'T~O',1,NULL,'BAS',1,NULL,0),(9,249,'duration_minutes','vtiger_activity',1,'16','duration_minutes','Duration Minutes',1,0,'',100,18,19,3,'T~O',1,NULL,'BAS',1,NULL,0),(9,250,'location','vtiger_activity',1,'1','location','Location',1,0,'',100,19,19,1,'V~O',1,NULL,'BAS',1,NULL,0),(9,251,'reminder_time','vtiger_activity_reminder',1,'30','reminder_time','Send Reminder',1,0,'',100,1,19,3,'I~O',1,NULL,'BAS',1,NULL,0),(9,252,'recurringtype','vtiger_activity',1,'16','recurringtype','Recurrence',1,0,'',100,6,19,3,'O~O',1,NULL,'BAS',1,NULL,1),(9,253,'notime','vtiger_activity',1,'56','notime','No Time',1,0,'',100,20,19,3,'C~O',1,NULL,'BAS',1,NULL,0),(9,254,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,19,3,'V~O',3,NULL,'BAS',0,NULL,0),(16,255,'subject','vtiger_activity',1,'2','subject','Subject',1,0,'',100,1,39,1,'V~M',0,1,'BAS',1,NULL,1),(16,256,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,2,39,1,'V~M',0,6,'BAS',1,NULL,1),(16,257,'date_start','vtiger_activity',1,'6','date_start','Start Date & Time',1,0,'',100,3,39,1,'DT~M~time_start',0,2,'BAS',1,NULL,1),(16,258,'time_start','vtiger_activity',1,'2','time_start','Time Start',1,0,'',100,4,39,3,'T~M',1,NULL,'BAS',1,NULL,1),(16,259,'due_date','vtiger_activity',1,'23','due_date','End Date',1,0,'',100,5,39,1,'D~M~OTH~GE~date_start~Start Date & Time',0,5,'BAS',1,NULL,1),(16,260,'time_end','vtiger_activity',1,'2','time_end','End Time',1,0,'',100,5,39,3,'T~M',1,NULL,'BAS',1,NULL,1),(16,261,'recurringtype','vtiger_activity',1,'16','recurringtype','Recurrence',1,0,'',100,6,117,1,'O~O',1,NULL,'BAS',1,NULL,1),(16,262,'duration_hours','vtiger_activity',1,'63','duration_hours','Duration',1,0,'',100,7,39,3,'I~M',1,NULL,'BAS',1,NULL,0),(16,263,'duration_minutes','vtiger_activity',1,'16','duration_minutes','Duration Minutes',1,0,'',100,8,39,3,'O~O',1,NULL,'BAS',1,NULL,0),(16,264,'crmid','vtiger_seactivityrel',1,'66','parent_id','Related To',1,0,'',100,9,119,1,'I~O',1,NULL,'BAS',1,NULL,1),(16,265,'eventstatus','vtiger_activity',1,'15','eventstatus','Status',1,0,'',100,10,39,1,'V~M',0,3,'BAS',1,NULL,0),(16,266,'sendnotification','vtiger_activity',1,'56','sendnotification','Send Notification',1,0,'',100,11,39,1,'C~O',1,NULL,'BAS',1,NULL,0),(16,267,'activitytype','vtiger_activity',1,'15','activitytype','Activity Type',1,0,'',100,12,39,1,'V~M',0,4,'BAS',1,NULL,1),(16,268,'location','vtiger_activity',1,'1','location','Location',1,0,'',100,13,39,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,269,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,14,39,2,'DT~O',3,NULL,'BAS',0,NULL,0),(16,270,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,39,2,'DT~O',3,NULL,'BAS',0,NULL,0),(16,271,'priority','vtiger_activity',1,'15','taskpriority','Priority',1,0,'',100,16,39,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,272,'notime','vtiger_activity',1,'56','notime','No Time',1,0,'',100,17,39,3,'C~O',1,NULL,'BAS',1,NULL,0),(16,273,'visibility','vtiger_activity',1,'16','visibility','Visibility',1,0,'',100,18,39,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,274,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,39,3,'V~O',3,NULL,'BAS',0,NULL,0),(16,275,'description','vtiger_crmentity',1,'19','description','Description',1,0,'',100,1,41,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,276,'reminder_time','vtiger_activity_reminder',1,'30','reminder_time','Send Reminder',1,0,'',100,1,40,1,'I~O',1,NULL,'BAS',1,NULL,0),(16,277,'contactid','vtiger_cntactivityrel',1,'57','contact_id','Contact Name',1,0,'',100,1,119,1,'I~O',1,NULL,'BAS',1,NULL,0),(15,278,'product_id','vtiger_faq',1,'59','product_id','Product Name',1,2,'',100,1,37,1,'I~O',3,NULL,'BAS',1,NULL,1),(15,279,'faq_no','vtiger_faq',1,'4','faq_no','Faq No',1,0,'',100,2,37,1,'V~O',3,NULL,'BAS',0,NULL,0),(15,280,'category','vtiger_faq',1,'15','faqcategories','Category',1,2,'',100,4,37,1,'V~O',3,NULL,'BAS',1,NULL,1),(15,281,'status','vtiger_faq',1,'15','faqstatus','Status',1,2,'',100,3,37,1,'V~M',3,NULL,'BAS',1,NULL,0),(15,282,'question','vtiger_faq',1,'20','question','Question',1,2,'',100,7,37,1,'V~M',3,NULL,'BAS',1,NULL,1),(15,283,'answer','vtiger_faq',1,'20','faq_answer','Answer',1,2,'',100,8,37,1,'V~M',3,NULL,'BAS',1,NULL,0),(15,284,'comments','vtiger_faqcomments',1,'19','comments','Add Comment',1,1,'',100,1,38,1,'V~O',3,NULL,'BAS',0,NULL,0),(15,285,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,37,2,'DT~O',3,NULL,'BAS',0,NULL,1),(15,286,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,37,2,'DT~O',3,NULL,'BAS',0,NULL,1),(15,287,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,37,3,'V~O',3,NULL,'BAS',0,NULL,0),(18,288,'vendorname','vtiger_vendor',1,'2','vendorname','Vendor Name',1,0,'',100,1,42,1,'V~M',0,1,'BAS',1,NULL,1),(18,289,'vendor_no','vtiger_vendor',1,'4','vendor_no','Vendor No',1,0,'',100,2,42,1,'V~O',3,NULL,'BAS',0,NULL,0),(18,290,'phone','vtiger_vendor',1,'1','phone','Phone',1,2,'',100,4,42,1,'V~O',2,2,'BAS',1,NULL,1),(18,291,'email','vtiger_vendor',1,'13','email','Email',1,2,'',100,3,42,1,'E~O',2,3,'BAS',1,NULL,1),(18,292,'website','vtiger_vendor',1,'17','website','Website',1,2,'',100,6,42,1,'V~O',1,NULL,'BAS',1,NULL,0),(18,293,'glacct','vtiger_vendor',1,'15','glacct','GL Account',1,2,'',100,5,42,1,'V~O',1,NULL,'BAS',1,NULL,0),(18,294,'category','vtiger_vendor',1,'1','category','Category',1,2,'',100,8,42,1,'V~O',1,NULL,'BAS',1,NULL,1),(18,295,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,7,42,2,'DT~O',3,NULL,'BAS',0,NULL,0),(18,296,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,9,42,2,'DT~O',3,NULL,'BAS',0,NULL,0),(18,297,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,12,42,3,'V~O',3,NULL,'BAS',0,NULL,0),(18,298,'street','vtiger_vendor',1,'21','street','Street',1,2,'',100,1,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,299,'pobox','vtiger_vendor',1,'1','pobox','Po Box',1,2,'',100,2,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,300,'city','vtiger_vendor',1,'1','city','City',1,2,'',100,3,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,301,'state','vtiger_vendor',1,'1','state','State',1,2,'',100,4,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,302,'postalcode','vtiger_vendor',1,'1','postalcode','Postal Code',1,2,'',100,5,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,303,'country','vtiger_vendor',1,'1','country','Country',1,2,'',100,6,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,304,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,45,1,'V~O',1,NULL,'ADV',1,NULL,0),(19,305,'bookname','vtiger_pricebook',1,'2','bookname','Price Book Name',1,0,'',100,1,46,1,'V~M',0,1,'BAS',1,NULL,1),(19,306,'pricebook_no','vtiger_pricebook',1,'4','pricebook_no','PriceBook No',1,0,'',100,3,46,1,'V~O',3,NULL,'BAS',0,NULL,0),(19,307,'active','vtiger_pricebook',1,'56','active','Active',1,2,'1',100,2,46,1,'C~O',2,2,'BAS',1,NULL,1),(19,308,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,4,46,2,'DT~O',3,NULL,'BAS',0,NULL,0),(19,309,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,5,46,2,'DT~O',3,NULL,'BAS',0,NULL,0),(19,310,'currency_id','vtiger_pricebook',1,'117','currency_id','Currency',1,0,'',100,5,46,1,'I~M',0,3,'BAS',0,NULL,0),(19,311,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,46,3,'V~O',3,NULL,'BAS',0,NULL,0),(19,312,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,48,1,'V~O',1,NULL,'BAS',1,NULL,0),(20,313,'quote_no','vtiger_quotes',1,'4','quote_no','Quote No',1,0,'',100,3,49,1,'V~O',3,NULL,'BAS',0,NULL,1),(20,314,'subject','vtiger_quotes',1,'2','subject','Subject',1,0,'',100,1,49,1,'V~M',1,NULL,'BAS',1,NULL,1),(20,315,'potentialid','vtiger_quotes',1,'76','potential_id','Potential Name',1,2,'',100,2,49,1,'I~O',3,NULL,'BAS',1,NULL,1),(20,316,'quotestage','vtiger_quotes',1,'15','quotestage','Quote Stage',1,2,'',100,4,49,1,'V~M',3,NULL,'BAS',1,NULL,1),(20,317,'validtill','vtiger_quotes',1,'5','validtill','Valid Till',1,2,'',100,5,49,1,'D~O',3,NULL,'BAS',1,NULL,0),(20,318,'contactid','vtiger_quotes',1,'57','contact_id','Contact Name',1,2,'',100,6,49,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,319,'carrier','vtiger_quotes',1,'15','carrier','Carrier',1,2,'',100,8,49,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,320,'subtotal','vtiger_quotes',1,'72','hdnSubTotal','Sub Total',1,2,'',100,9,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,321,'shipping','vtiger_quotes',1,'1','shipping','Shipping',1,2,'',100,10,49,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,322,'inventorymanager','vtiger_quotes',1,'77','assigned_user_id1','Inventory Manager',1,2,'',100,11,49,1,'I~O',3,NULL,'BAS',1,NULL,0),(20,323,'adjustment','vtiger_quotes',1,'72','txtAdjustment','Adjustment',1,2,'',100,20,49,3,'NN~O',3,NULL,'BAS',1,NULL,0),(20,324,'total','vtiger_quotes',1,'72','hdnGrandTotal','Total',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,1),(20,325,'taxtype','vtiger_quotes',1,'16','hdnTaxType','Tax Type',1,2,'',100,14,49,3,'V~O',3,NULL,'BAS',1,NULL,0),(20,326,'discount_percent','vtiger_quotes',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,327,'discount_amount','vtiger_quotes',1,'72','hdnDiscountAmount','Discount Amount',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,328,'s_h_amount','vtiger_quotes',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,329,'accountid','vtiger_quotes',1,'73','account_id','Account Name',1,2,'',100,16,49,1,'I~M',3,NULL,'BAS',1,NULL,1),(20,330,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,17,49,1,'V~M',3,NULL,'BAS',1,NULL,1),(20,331,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,18,49,2,'DT~O',3,NULL,'BAS',0,NULL,0),(20,332,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,19,49,2,'DT~O',3,NULL,'BAS',0,NULL,0),(20,333,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,49,3,'V~O',3,NULL,'BAS',0,NULL,0),(20,334,'currency_id','vtiger_quotes',1,'117','currency_id','Currency',1,2,'1',100,20,49,3,'I~O',3,NULL,'BAS',1,NULL,0),(20,335,'conversion_rate','vtiger_quotes',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,21,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,336,'bill_street','vtiger_quotesbillads',1,'24','bill_street','Billing Address',1,2,'',100,1,51,1,'V~M',3,NULL,'BAS',1,NULL,0),(20,337,'ship_street','vtiger_quotesshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,51,1,'V~M',3,NULL,'BAS',1,NULL,0),(20,338,'bill_city','vtiger_quotesbillads',1,'1','bill_city','Billing City',1,2,'',100,5,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,339,'ship_city','vtiger_quotesshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,340,'bill_state','vtiger_quotesbillads',1,'1','bill_state','Billing State',1,2,'',100,7,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,341,'ship_state','vtiger_quotesshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,342,'bill_code','vtiger_quotesbillads',1,'1','bill_code','Billing Code',1,2,'',100,9,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,343,'ship_code','vtiger_quotesshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,344,'bill_country','vtiger_quotesbillads',1,'1','bill_country','Billing Country',1,2,'',100,11,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,345,'ship_country','vtiger_quotesshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,346,'bill_pobox','vtiger_quotesbillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,347,'ship_pobox','vtiger_quotesshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,348,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,54,1,'V~O',3,NULL,'ADV',1,NULL,0),(20,349,'terms_conditions','vtiger_quotes',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,53,1,'V~O',3,NULL,'ADV',1,NULL,0),(21,350,'purchaseorder_no','vtiger_purchaseorder',1,'4','purchaseorder_no','PurchaseOrder No',1,0,'',100,2,55,1,'V~O',3,NULL,'BAS',0,NULL,1),(21,351,'subject','vtiger_purchaseorder',1,'2','subject','Subject',1,0,'',100,1,55,1,'V~M',3,NULL,'BAS',1,NULL,1),(21,352,'vendorid','vtiger_purchaseorder',1,'81','vendor_id','Vendor Name',1,0,'',100,3,55,1,'I~M',3,NULL,'BAS',1,NULL,1),(21,353,'requisition_no','vtiger_purchaseorder',1,'1','requisition_no','Requisition No',1,2,'',100,4,55,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,354,'tracking_no','vtiger_purchaseorder',1,'1','tracking_no','Tracking Number',1,2,'',100,5,55,1,'V~O',3,NULL,'BAS',1,NULL,1),(21,355,'contactid','vtiger_purchaseorder',1,'57','contact_id','Contact Name',1,2,'',100,6,55,1,'I~O',3,NULL,'BAS',1,NULL,0),(21,356,'duedate','vtiger_purchaseorder',1,'5','duedate','Due Date',1,2,'',100,7,55,1,'D~O',3,NULL,'BAS',1,NULL,0),(21,357,'carrier','vtiger_purchaseorder',1,'15','carrier','Carrier',1,2,'',100,8,55,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,358,'adjustment','vtiger_purchaseorder',1,'72','txtAdjustment','Adjustment',1,2,'',100,10,55,3,'NN~O',3,NULL,'BAS',1,NULL,0),(21,359,'salescommission','vtiger_purchaseorder',1,'1','salescommission','Sales Commission',1,2,'',100,11,55,1,'N~O',3,NULL,'BAS',1,NULL,0),(21,360,'exciseduty','vtiger_purchaseorder',1,'1','exciseduty','Excise Duty',1,2,'',100,12,55,1,'N~O',3,NULL,'BAS',1,NULL,0),(21,361,'total','vtiger_purchaseorder',1,'72','hdnGrandTotal','Total',1,2,'',100,13,55,3,'N~O',3,NULL,'BAS',1,NULL,1),(21,362,'subtotal','vtiger_purchaseorder',1,'72','hdnSubTotal','Sub Total',1,2,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,363,'taxtype','vtiger_purchaseorder',1,'16','hdnTaxType','Tax Type',1,2,'',100,14,55,3,'V~O',3,NULL,'BAS',1,NULL,0),(21,364,'discount_percent','vtiger_purchaseorder',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,365,'discount_amount','vtiger_purchaseorder',1,'72','hdnDiscountAmount','Discount Amount',1,0,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,366,'s_h_amount','vtiger_purchaseorder',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,367,'postatus','vtiger_purchaseorder',1,'15','postatus','Status',1,2,'',100,15,55,1,'V~M',3,NULL,'BAS',1,NULL,0),(21,368,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,16,55,1,'V~M',3,NULL,'BAS',1,NULL,1),(21,369,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,17,55,2,'DT~O',3,NULL,'BAS',0,NULL,0),(21,370,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,18,55,2,'DT~O',3,NULL,'BAS',0,NULL,0),(21,371,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,55,3,'V~O',3,NULL,'BAS',0,NULL,0),(21,372,'currency_id','vtiger_purchaseorder',1,'117','currency_id','Currency',1,2,'1',100,19,55,3,'I~O',3,NULL,'BAS',1,NULL,0),(21,373,'conversion_rate','vtiger_purchaseorder',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,20,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,374,'bill_street','vtiger_pobillads',1,'24','bill_street','Billing Address',1,2,'',100,1,57,1,'V~M',3,NULL,'BAS',1,NULL,0),(21,375,'ship_street','vtiger_poshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,57,1,'V~M',3,NULL,'BAS',1,NULL,0),(21,376,'bill_city','vtiger_pobillads',1,'1','bill_city','Billing City',1,2,'',100,5,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,377,'ship_city','vtiger_poshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,378,'bill_state','vtiger_pobillads',1,'1','bill_state','Billing State',1,2,'',100,7,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,379,'ship_state','vtiger_poshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,380,'bill_code','vtiger_pobillads',1,'1','bill_code','Billing Code',1,2,'',100,9,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,381,'ship_code','vtiger_poshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,382,'bill_country','vtiger_pobillads',1,'1','bill_country','Billing Country',1,2,'',100,11,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,383,'ship_country','vtiger_poshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,384,'bill_pobox','vtiger_pobillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,385,'ship_pobox','vtiger_poshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,386,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,60,1,'V~O',3,NULL,'ADV',1,NULL,0),(21,387,'terms_conditions','vtiger_purchaseorder',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,59,1,'V~O',3,NULL,'ADV',1,NULL,0),(22,388,'salesorder_no','vtiger_salesorder',1,'4','salesorder_no','SalesOrder No',1,0,'',100,4,61,1,'V~O',3,NULL,'BAS',0,NULL,1),(22,389,'subject','vtiger_salesorder',1,'2','subject','Subject',1,0,'',100,1,61,1,'V~M',3,NULL,'BAS',1,NULL,1),(22,390,'potentialid','vtiger_salesorder',1,'76','potential_id','Potential Name',1,2,'',100,2,61,1,'I~O',3,NULL,'BAS',1,NULL,0),(22,391,'customerno','vtiger_salesorder',1,'1','customerno','Customer No',1,2,'',100,3,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,392,'quoteid','vtiger_salesorder',1,'78','quote_id','Quote Name',1,2,'',100,5,61,1,'I~O',3,NULL,'BAS',0,NULL,1),(22,393,'purchaseorder','vtiger_salesorder',1,'1','vtiger_purchaseorder','Purchase Order',1,2,'',100,5,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,394,'contactid','vtiger_salesorder',1,'57','contact_id','Contact Name',1,2,'',100,6,61,1,'I~O',3,NULL,'BAS',1,NULL,0),(22,395,'duedate','vtiger_salesorder',1,'5','duedate','Due Date',1,2,'',100,8,61,1,'D~O',3,NULL,'BAS',1,NULL,0),(22,396,'carrier','vtiger_salesorder',1,'15','carrier','Carrier',1,2,'',100,9,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,397,'pending','vtiger_salesorder',1,'1','pending','Pending',1,2,'',100,10,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,398,'sostatus','vtiger_salesorder',1,'15','sostatus','Status',1,2,'',100,11,61,1,'V~M',3,NULL,'BAS',1,NULL,0),(22,399,'adjustment','vtiger_salesorder',1,'72','txtAdjustment','Adjustment',1,2,'',100,12,61,3,'NN~O',3,NULL,'BAS',1,NULL,0),(22,400,'salescommission','vtiger_salesorder',1,'1','salescommission','Sales Commission',1,2,'',100,13,61,1,'N~O',3,NULL,'BAS',1,NULL,0),(22,401,'exciseduty','vtiger_salesorder',1,'1','exciseduty','Excise Duty',1,2,'',100,13,61,1,'N~O',3,NULL,'BAS',1,NULL,0),(22,402,'total','vtiger_salesorder',1,'72','hdnGrandTotal','Total',1,2,'',100,14,61,3,'N~O',3,NULL,'BAS',1,NULL,1),(22,403,'subtotal','vtiger_salesorder',1,'72','hdnSubTotal','Sub Total',1,2,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,404,'taxtype','vtiger_salesorder',1,'16','hdnTaxType','Tax Type',1,2,'',100,15,61,3,'V~O',3,NULL,'BAS',1,NULL,0),(22,405,'discount_percent','vtiger_salesorder',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,406,'discount_amount','vtiger_salesorder',1,'72','hdnDiscountAmount','Discount Amount',1,0,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,407,'s_h_amount','vtiger_salesorder',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,408,'accountid','vtiger_salesorder',1,'73','account_id','Account Name',1,2,'',100,16,61,1,'I~M',3,NULL,'BAS',1,NULL,1),(22,409,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,17,61,1,'V~M',3,NULL,'BAS',1,NULL,1),(22,410,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,18,61,2,'DT~O',3,NULL,'BAS',0,NULL,0),(22,411,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,19,61,2,'DT~O',3,NULL,'BAS',0,NULL,0),(22,412,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,61,3,'V~O',3,NULL,'BAS',0,NULL,0),(22,413,'currency_id','vtiger_salesorder',1,'117','currency_id','Currency',1,2,'1',100,20,61,3,'I~O',3,NULL,'BAS',1,NULL,0),(22,414,'conversion_rate','vtiger_salesorder',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,21,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,415,'bill_street','vtiger_sobillads',1,'24','bill_street','Billing Address',1,2,'',100,1,63,1,'V~M',3,NULL,'BAS',1,NULL,0),(22,416,'ship_street','vtiger_soshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,63,1,'V~M',3,NULL,'BAS',1,NULL,0),(22,417,'bill_city','vtiger_sobillads',1,'1','bill_city','Billing City',1,2,'',100,5,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,418,'ship_city','vtiger_soshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,419,'bill_state','vtiger_sobillads',1,'1','bill_state','Billing State',1,2,'',100,7,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,420,'ship_state','vtiger_soshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,421,'bill_code','vtiger_sobillads',1,'1','bill_code','Billing Code',1,2,'',100,9,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,422,'ship_code','vtiger_soshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,423,'bill_country','vtiger_sobillads',1,'1','bill_country','Billing Country',1,2,'',100,11,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,424,'ship_country','vtiger_soshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,425,'bill_pobox','vtiger_sobillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,426,'ship_pobox','vtiger_soshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,427,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,66,1,'V~O',3,NULL,'ADV',1,NULL,0),(22,428,'terms_conditions','vtiger_salesorder',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,65,1,'V~O',3,NULL,'ADV',1,NULL,0),(22,429,'enable_recurring','vtiger_salesorder',1,'56','enable_recurring','Enable Recurring',1,0,'',100,1,85,1,'C~O',3,NULL,'BAS',0,NULL,0),(22,430,'recurring_frequency','vtiger_invoice_recurring_info',1,'16','recurring_frequency','Frequency',1,0,'',100,2,85,1,'V~O',3,NULL,'BAS',0,NULL,0),(22,431,'start_period','vtiger_invoice_recurring_info',1,'5','start_period','Start Period',1,0,'',100,3,85,1,'D~O',3,NULL,'BAS',0,NULL,0),(22,432,'end_period','vtiger_invoice_recurring_info',1,'5','end_period','End Period',1,0,'',100,4,85,1,'D~O~OTH~G~start_period~Start Period',3,NULL,'BAS',0,NULL,0),(22,433,'payment_duration','vtiger_invoice_recurring_info',1,'16','payment_duration','Payment Duration',1,0,'',100,5,85,1,'V~O',3,NULL,'BAS',0,NULL,0),(22,434,'invoice_status','vtiger_invoice_recurring_info',1,'15','invoicestatus','Invoice Status',1,0,'',100,6,85,1,'V~M',3,NULL,'BAS',0,NULL,0),(23,435,'subject','vtiger_invoice',1,'2','subject','Subject',1,0,'',100,1,67,1,'V~M',3,NULL,'BAS',1,NULL,1),(23,436,'salesorderid','vtiger_invoice',1,'80','salesorder_id','Sales Order',1,2,'',100,2,67,1,'I~O',3,NULL,'BAS',0,NULL,1),(23,437,'customerno','vtiger_invoice',1,'1','customerno','Customer No',1,2,'',100,3,67,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,438,'contactid','vtiger_invoice',1,'57','contact_id','Contact Name',1,2,'',100,4,67,1,'I~O',3,NULL,'BAS',1,NULL,0),(23,439,'invoicedate','vtiger_invoice',1,'5','invoicedate','Invoice Date',1,2,'',100,5,67,1,'D~O',3,NULL,'BAS',1,NULL,0),(23,440,'duedate','vtiger_invoice',1,'5','duedate','Due Date',1,2,'',100,6,67,1,'D~O',3,NULL,'BAS',1,NULL,0),(23,441,'purchaseorder','vtiger_invoice',1,'1','vtiger_purchaseorder','Purchase Order',1,2,'',100,8,67,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,442,'adjustment','vtiger_invoice',1,'72','txtAdjustment','Adjustment',1,2,'',100,9,67,3,'NN~O',3,NULL,'BAS',1,NULL,0),(23,443,'salescommission','vtiger_invoice',1,'1','salescommission','Sales Commission',1,2,'',10,13,67,1,'N~O',3,NULL,'BAS',1,NULL,0),(23,444,'exciseduty','vtiger_invoice',1,'1','exciseduty','Excise Duty',1,2,'',100,11,67,1,'N~O',3,NULL,'BAS',1,NULL,0),(23,445,'subtotal','vtiger_invoice',1,'72','hdnSubTotal','Sub Total',1,2,'',100,12,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,446,'total','vtiger_invoice',1,'72','hdnGrandTotal','Total',1,2,'',100,13,67,3,'N~O',3,NULL,'BAS',1,NULL,1),(23,447,'taxtype','vtiger_invoice',1,'16','hdnTaxType','Tax Type',1,2,'',100,13,67,3,'V~O',3,NULL,'BAS',1,NULL,0),(23,448,'discount_percent','vtiger_invoice',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,13,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,449,'discount_amount','vtiger_invoice',1,'72','hdnDiscountAmount','Discount Amount',1,2,'',100,13,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,450,'s_h_amount','vtiger_invoice',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,14,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,451,'accountid','vtiger_invoice',1,'73','account_id','Account Name',1,2,'',100,14,67,1,'I~M',3,NULL,'BAS',1,NULL,0),(23,452,'invoicestatus','vtiger_invoice',1,'15','invoicestatus','Status',1,2,'',100,15,67,1,'V~O',3,NULL,'BAS',1,NULL,1),(23,453,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,16,67,1,'V~M',3,NULL,'BAS',1,NULL,1),(23,454,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,17,67,2,'DT~O',3,NULL,'BAS',0,NULL,0),(23,455,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,18,67,2,'DT~O',3,NULL,'BAS',0,NULL,0),(23,456,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,67,3,'V~O',3,NULL,'BAS',0,NULL,0),(23,457,'currency_id','vtiger_invoice',1,'117','currency_id','Currency',1,2,'1',100,19,67,3,'I~O',3,NULL,'BAS',1,NULL,0),(23,458,'conversion_rate','vtiger_invoice',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,20,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,459,'bill_street','vtiger_invoicebillads',1,'24','bill_street','Billing Address',1,2,'',100,1,69,1,'V~M',3,NULL,'BAS',1,NULL,0),(23,460,'ship_street','vtiger_invoiceshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,69,1,'V~M',3,NULL,'BAS',1,NULL,0),(23,461,'bill_city','vtiger_invoicebillads',1,'1','bill_city','Billing City',1,2,'',100,5,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,462,'ship_city','vtiger_invoiceshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,463,'bill_state','vtiger_invoicebillads',1,'1','bill_state','Billing State',1,2,'',100,7,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,464,'ship_state','vtiger_invoiceshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,465,'bill_code','vtiger_invoicebillads',1,'1','bill_code','Billing Code',1,2,'',100,9,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,466,'ship_code','vtiger_invoiceshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,467,'bill_country','vtiger_invoicebillads',1,'1','bill_country','Billing Country',1,2,'',100,11,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,468,'ship_country','vtiger_invoiceshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,469,'bill_pobox','vtiger_invoicebillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,470,'ship_pobox','vtiger_invoiceshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,471,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,72,1,'V~O',3,NULL,'ADV',1,NULL,0),(23,472,'terms_conditions','vtiger_invoice',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,71,1,'V~O',3,NULL,'ADV',1,NULL,0),(23,473,'invoice_no','vtiger_invoice',1,'4','invoice_no','Invoice No',1,0,'',100,3,67,1,'V~O',3,NULL,'BAS',0,NULL,1),(29,474,'user_name','vtiger_users',1,'106','user_name','User Name',1,0,'',11,1,77,1,'V~M',1,NULL,'BAS',1,NULL,0),(29,475,'is_admin','vtiger_users',1,'156','is_admin','Admin',1,0,'',3,7,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,476,'user_password','vtiger_users',1,'99','user_password','Password',1,0,'',30,5,77,4,'P~M',1,NULL,'BAS',1,NULL,0),(29,477,'confirm_password','vtiger_users',1,'99','confirm_password','Confirm Password',1,0,'',30,6,77,4,'P~M',1,NULL,'BAS',1,NULL,0),(29,478,'first_name','vtiger_users',1,'1','first_name','First Name',1,0,'',30,3,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,479,'last_name','vtiger_users',1,'2','last_name','Last Name',1,0,'',30,4,77,1,'V~M',1,NULL,'BAS',1,NULL,0),(29,480,'roleid','vtiger_user2role',1,'98','roleid','Role',1,0,'',200,8,77,1,'V~M',1,NULL,'BAS',1,NULL,0),(29,481,'email1','vtiger_users',1,'104','email1','Email',1,0,'',100,2,77,1,'E~M',1,NULL,'BAS',1,NULL,0),(29,482,'status','vtiger_users',1,'115','status','Status',1,0,'Active',100,10,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,483,'activity_view','vtiger_users',1,'16','activity_view','Default Activity View',1,0,'',100,6,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,484,'lead_view','vtiger_users',1,'16','lead_view','Default Lead View',1,0,'',100,9,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,485,'hour_format','vtiger_users',1,'16','hour_format','Calendar Hour Format',1,0,'12',100,4,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,486,'end_hour','vtiger_users',1,'116','end_hour','Day ends at',1,0,'',100,11,77,3,'V~O',1,NULL,'BAS',1,NULL,0),(29,487,'start_hour','vtiger_users',1,'16','start_hour','Day starts at',1,0,'',100,2,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,488,'title','vtiger_users',1,'1','title','Title',1,0,'',50,1,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,489,'phone_work','vtiger_users',1,'11','phone_work','Office Phone',1,0,'',50,5,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,490,'department','vtiger_users',1,'1','department','Department',1,0,'',50,3,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,491,'phone_mobile','vtiger_users',1,'11','phone_mobile','Mobile',1,0,'',50,7,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,492,'reports_to_id','vtiger_users',1,'101','reports_to_id','Reports To',1,0,'',50,8,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,493,'phone_other','vtiger_users',1,'11','phone_other','Other Phone',1,0,'',50,11,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,494,'email2','vtiger_users',1,'13','email2','Other Email',1,0,'',100,4,79,1,'E~O',1,NULL,'BAS',1,NULL,0),(29,495,'phone_fax','vtiger_users',1,'11','phone_fax','Fax',1,0,'',50,2,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,496,'secondaryemail','vtiger_users',1,'13','secondaryemail','Secondary Email',1,0,'',100,6,79,1,'E~O',1,NULL,'BAS',1,NULL,0),(29,497,'phone_home','vtiger_users',1,'11','phone_home','Home Phone',1,0,'',50,9,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,498,'date_format','vtiger_users',1,'16','date_format','Date Format',1,0,'',30,3,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,499,'signature','vtiger_users',1,'21','signature','Signature',1,0,'',250,13,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,500,'description','vtiger_users',1,'21','description','Documents',1,0,'',250,14,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,501,'address_street','vtiger_users',1,'21','address_street','Street Address',1,0,'',250,1,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,502,'address_city','vtiger_users',1,'1','address_city','City',1,0,'',100,3,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,503,'address_state','vtiger_users',1,'1','address_state','State',1,0,'',100,5,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,504,'address_postalcode','vtiger_users',1,'1','address_postalcode','Postal Code',1,0,'',100,4,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,505,'address_country','vtiger_users',1,'1','address_country','Country',1,0,'',100,2,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,506,'accesskey','vtiger_users',1,'3','accesskey','Webservice Access Key',1,0,'',100,2,83,2,'V~O',1,NULL,'BAS',1,NULL,0),(29,507,'time_zone','vtiger_users',1,'16','time_zone','Time Zone',1,0,'',200,5,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,508,'currency_id','vtiger_users',1,'117','currency_id','Currency',1,0,'',100,1,78,1,'I~O',1,NULL,'BAS',1,NULL,0),(29,509,'currency_grouping_pattern','vtiger_users',1,'16','currency_grouping_pattern','Digit Grouping Pattern',1,0,'',100,2,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Digit Grouping Pattern</b> <br/><br/>This pattern specifies the format in which the currency separator will be placed.',0),(29,510,'currency_decimal_separator','vtiger_users',1,'16','currency_decimal_separator','Decimal Separator',1,0,'',2,3,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Decimal Separator</b> <br/><br/>Decimal separator specifies the separator to be used to separate the fractional values from the whole number part. <br/><b>Eg:</b> <br/>. => 123.45 <br/>, => 123,45 <br/>\' => 123\'45 <br/>  => 123 45 <br/>$ => 123$45 <br/>',0),(29,511,'currency_grouping_separator','vtiger_users',1,'16','currency_grouping_separator','Digit Grouping Separator',1,0,'',2,4,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Grouping Separator</b> <br/><br/>Grouping separator specifies the separator to be used to group the whole number part into hundreds, thousands etc. <br/><b>Eg:</b> <br/>. => 123.456.789 <br/>, => 123,456,789 <br/>\' => 123\'456\'789 <br/>  => 123 456 789 <br/>$ => 123$456$789 <br/>',0),(29,512,'currency_symbol_placement','vtiger_users',1,'16','currency_symbol_placement','Symbol Placement',1,0,'',20,5,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Symbol Placement</b> <br/><br/>Symbol Placement allows you to configure the position of the currency symbol with respect to the currency value.<br/><b>Eg:</b> <br/>$1.0 => $123,456,789.50 <br/>1.0$ => 123,456,789.50$ <br/>',0),(29,513,'imagename','vtiger_users',1,'105','imagename','User Image',1,0,'',250,10,82,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,514,'internal_mailer','vtiger_users',1,'56','internal_mailer','INTERNAL_MAIL_COMPOSER',1,0,'',50,15,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,515,'theme','vtiger_users',1,'31','theme','Theme',1,0,'softed',100,16,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,516,'language','vtiger_users',1,'32','language','Language',1,0,'',100,17,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,517,'reminder_interval','vtiger_users',1,'16','reminder_interval','Reminder Interval',1,0,'',100,11,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(10,518,'from_email','vtiger_emaildetails',1,'12','from_email','From',1,2,'',100,1,21,3,'V~M',3,NULL,'BAS',0,NULL,0),(10,519,'to_email','vtiger_emaildetails',1,'8','saved_toid','To',1,2,'',100,2,21,1,'V~M',3,NULL,'BAS',0,NULL,0),(10,520,'cc_email','vtiger_emaildetails',1,'8','ccmail','CC',1,2,'',1000,3,21,1,'V~O',3,NULL,'BAS',0,NULL,0),(10,521,'bcc_email','vtiger_emaildetails',1,'8','bccmail','BCC',1,2,'',1000,4,21,1,'V~O',3,NULL,'BAS',0,NULL,0),(10,522,'idlists','vtiger_emaildetails',1,'357','parent_id','Parent ID',1,2,'',1000,5,21,1,'V~O',3,NULL,'BAS',0,NULL,0),(10,523,'email_flag','vtiger_emaildetails',1,'16','email_flag','Email Flag',1,2,'',1000,6,21,3,'V~O',3,NULL,'BAS',0,NULL,0),(34,524,'direction','vtiger_pbxmanager',1,'1','direction','Direction',1,2,'',100,1,88,1,'V~O',1,NULL,'BAS',1,'',0),(34,525,'callstatus','vtiger_pbxmanager',1,'1','callstatus','Call Status',1,2,'',100,2,88,1,'V~O',1,NULL,'BAS',1,'',1),(34,526,'starttime','vtiger_pbxmanager',1,'70','starttime','Start Time',1,2,'',100,7,88,1,'DT~O',1,NULL,'BAS',1,'',1),(34,527,'endtime','vtiger_pbxmanager',1,'70','endtime','End Time',1,2,'',100,8,88,1,'DT~O',1,NULL,'BAS',1,'',0),(34,528,'totalduration','vtiger_pbxmanager',1,'7','totalduration','Total Duration',1,2,'',100,10,88,1,'I~O',1,NULL,'BAS',1,'',0),(34,529,'billduration','vtiger_pbxmanager',1,'7','billduration','Bill Duration',1,2,'',100,11,88,1,'I~O',1,NULL,'BAS',1,'',0),(34,530,'recordingurl','vtiger_pbxmanager',1,'17','recordingurl','Recording URL',1,2,'',100,9,88,1,'V~O',1,NULL,'BAS',1,'',1),(34,531,'sourceuuid','vtiger_pbxmanager',1,'1','sourceuuid','Source UUID',1,2,'',100,12,88,1,'V~O',1,NULL,'BAS',1,'',0),(34,532,'gateway','vtiger_pbxmanager',1,'1','gateway','Gateway',1,2,'',100,13,88,1,'V~O',1,NULL,'BAS',1,'',0),(34,533,'customer','vtiger_pbxmanager',1,'10','customer','Customer',1,2,'',100,3,88,1,'V~O',1,NULL,'BAS',1,'',1),(34,534,'user','vtiger_pbxmanager',1,'52','user','User',1,2,'',100,4,88,1,'V~O',1,NULL,'BAS',1,'',1),(34,535,'customernumber','vtiger_pbxmanager',1,'11','customernumber','Customer Number',1,2,'',100,5,88,1,'V~M',1,NULL,'BAS',1,'',0),(34,536,'customertype','vtiger_pbxmanager',1,'1','customertype','Customer Type',1,2,'',100,6,88,1,'V~O',1,NULL,'BAS',1,'',0),(34,537,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,14,88,1,'V~M',1,NULL,'BAS',1,'',0),(34,538,'createdtime','vtiger_crmentity',1,'70','CreatedTime','Created Time',1,2,'',100,15,88,2,'DT~O',1,NULL,'BAS',1,'',0),(34,539,'modifiedtime','vtiger_crmentity',1,'70','ModifiedTime','Modified Time',1,2,'',100,16,88,2,'DT~O',1,NULL,'BAS',1,'',0),(29,540,'phone_crm_extension','vtiger_users',1,'11','phone_crm_extension','CRM Phone Extension',1,2,'',100,18,79,1,'V~O',1,NULL,'BAS',1,'',0),(35,541,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,4,89,1,'V~M',2,2,'BAS',1,'',1),(35,542,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,17,89,2,'DT~O',3,0,'BAS',0,'',0),(35,543,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,18,89,2,'DT~O',3,0,'BAS',0,'',0),(35,544,'start_date','vtiger_servicecontracts',1,'5','start_date','Start Date',1,2,'',100,7,89,1,'D~O',2,4,'BAS',1,'',0),(35,545,'end_date','vtiger_servicecontracts',1,'5','end_date','End Date',1,2,'',100,11,89,2,'D~O',3,0,'BAS',0,'',0),(35,546,'sc_related_to','vtiger_servicecontracts',1,'10','sc_related_to','Related to',1,2,'',100,3,89,1,'V~O',2,6,'BAS',1,'',0),(35,547,'tracking_unit','vtiger_servicecontracts',1,'15','tracking_unit','Tracking Unit',1,2,'',100,6,89,1,'V~O',2,7,'BAS',1,'',0),(35,548,'total_units','vtiger_servicecontracts',1,'7','total_units','Total Units',1,2,'',100,8,89,1,'V~O',2,8,'BAS',1,'',1),(35,549,'used_units','vtiger_servicecontracts',1,'7','used_units','Used Units',1,2,'',100,10,89,1,'V~O',2,9,'BAS',1,'',1),(35,550,'subject','vtiger_servicecontracts',1,'1','subject','Subject',1,0,'',100,1,89,1,'V~M',0,1,'BAS',1,'',1),(35,551,'due_date','vtiger_servicecontracts',1,'23','due_date','Due date',1,2,'',100,9,89,1,'D~O',2,5,'BAS',1,'',0),(35,552,'planned_duration','vtiger_servicecontracts',1,'1','planned_duration','Planned Duration',1,2,'',100,13,89,2,'V~O',3,0,'BAS',0,'',0),(35,553,'actual_duration','vtiger_servicecontracts',1,'1','actual_duration','Actual Duration',1,2,'',100,15,89,2,'V~O',3,0,'BAS',0,'',0),(35,554,'contract_status','vtiger_servicecontracts',1,'15','contract_status','Status',1,2,'',100,12,89,1,'V~O',1,NULL,'BAS',1,'',0),(35,555,'priority','vtiger_servicecontracts',1,'15','contract_priority','Priority',1,2,'',100,14,89,1,'V~O',1,NULL,'BAS',1,'',0),(35,556,'contract_type','vtiger_servicecontracts',1,'15','contract_type','Type',1,2,'',100,5,89,1,'V~O',1,NULL,'BAS',1,'',0),(35,557,'progress','vtiger_servicecontracts',1,'9','progress','Progress',1,2,'',100,16,89,2,'N~O~2~2',3,3,'BAS',0,'',0),(35,558,'contract_no','vtiger_servicecontracts',1,'4','contract_no','Contract No',1,0,'',100,2,89,1,'V~O',3,0,'BAS',0,'',1),(35,559,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,17,89,3,'V~O',3,0,'BAS',0,'',0),(36,560,'servicename','vtiger_service',1,'2','servicename','Service Name',1,0,'',100,1,91,1,'V~M',0,1,'BAS',1,'',1),(36,561,'service_no','vtiger_service',1,'4','service_no','Service No',1,0,'',100,2,91,1,'V~O',3,0,'BAS',0,'',1),(36,562,'discontinued','vtiger_service',1,'56','discontinued','Service Active',1,2,'',100,4,91,1,'V~O',2,3,'BAS',1,'',0),(36,563,'sales_start_date','vtiger_service',1,'5','sales_start_date','Sales Start Date',1,2,'',100,9,91,1,'D~O',1,NULL,'BAS',1,'',0),(36,564,'sales_end_date','vtiger_service',1,'5','sales_end_date','Sales End Date',1,2,'',100,10,91,1,'D~O~OTH~GE~sales_start_date~Sales Start Date',1,NULL,'BAS',1,'',0),(36,565,'start_date','vtiger_service',1,'5','start_date','Support Start Date',1,2,'',100,11,91,1,'D~O',1,NULL,'BAS',1,'',0),(36,566,'expiry_date','vtiger_service',1,'5','expiry_date','Support Expiry Date',1,2,'',100,12,91,1,'D~O~OTH~GE~start_date~Start Date',1,NULL,'BAS',1,'',0),(36,567,'website','vtiger_service',1,'17','website','Website',1,2,'',100,6,91,1,'V~O',1,NULL,'BAS',1,'',0),(36,568,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,13,91,2,'DT~O',3,0,'BAS',0,'',0),(36,569,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,14,91,2,'DT~O',3,0,'BAS',0,'',0),(36,570,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,16,91,3,'V~O',3,0,'BAS',0,'',0),(36,571,'service_usageunit','vtiger_service',1,'15','service_usageunit','Usage Unit',1,2,'',100,3,91,1,'V~O',1,NULL,'BAS',1,'',0),(36,572,'qty_per_unit','vtiger_service',1,'1','qty_per_unit','No of Units',1,2,'',100,5,91,1,'N~O',1,NULL,'BAS',1,'',1),(36,573,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Owner',1,0,'',100,8,91,1,'I~O',1,NULL,'BAS',1,'',0),(36,574,'servicecategory','vtiger_service',1,'15','servicecategory','Service Category',1,2,'',100,7,91,1,'V~O',1,NULL,'BAS',1,'',0),(36,575,'unit_price','vtiger_service',1,'72','unit_price','Price',1,0,'',100,1,92,1,'N~O',2,2,'BAS',0,'',1),(36,576,'taxclass','vtiger_service',1,'83','taxclass','Tax Class',1,2,'',100,4,92,1,'V~O',1,NULL,'BAS',1,'',0),(36,577,'commissionrate','vtiger_service',1,'9','commissionrate','Commission Rate',1,2,'',100,2,92,1,'N~O',1,NULL,'BAS',1,'',1),(36,578,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,94,1,'V~O',1,NULL,'BAS',1,'',0),(38,579,'asset_no','vtiger_assets',1,'4','asset_no','Asset No',1,0,'',100,2,95,1,'V~O',3,0,'BAS',0,'\n                    ',1),(38,580,'product','vtiger_assets',1,'10','product','Product Name',1,2,'',100,3,95,1,'V~M',0,3,'BAS',1,'\n                    ',1),(38,581,'serialnumber','vtiger_assets',1,'2','serialnumber','Serial Number',1,2,'',100,4,95,1,'V~M',0,5,'BAS',1,'\n                    ',0),(38,582,'datesold','vtiger_assets',1,'5','datesold','Date Sold',1,2,'',100,5,95,1,'D~M~OTH~GE~datesold~Date Sold',0,0,'BAS',1,'\n                    ',0),(38,583,'dateinservice','vtiger_assets',1,'5','dateinservice','Date in Service',1,2,'',100,6,95,1,'D~M~OTH~GE~dateinservice~Date in Service',0,4,'BAS',1,'\n                    ',0),(38,584,'assetstatus','vtiger_assets',1,'15','assetstatus','Status',1,2,'',100,7,95,1,'V~M',0,0,'BAS',1,'\n                    ',0),(38,585,'tagnumber','vtiger_assets',1,'2','tagnumber','Tag Number',1,2,'',100,8,95,1,'V~O',1,NULL,'BAS',1,'\n                    ',0),(38,586,'invoiceid','vtiger_assets',1,'10','invoiceid','Invoice Name',1,2,'',100,9,95,1,'V~O',1,NULL,'BAS',1,'\n                    ',0),(38,587,'shippingmethod','vtiger_assets',1,'2','shippingmethod','Shipping Method',1,2,'',100,10,95,1,'V~O',1,NULL,'BAS',1,'\n                    ',0),(38,588,'shippingtrackingnumber','vtiger_assets',1,'2','shippingtrackingnumber','Shipping Tracking Number',1,2,'',100,11,95,1,'V~O',1,NULL,'BAS',1,'\n                    ',0),(38,589,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,4,95,1,'V~M',0,2,'BAS',1,'\n                    ',0),(38,590,'assetname','vtiger_assets',1,'1','assetname','Asset Name',1,0,'',100,12,95,1,'V~M',0,6,'BAS',1,'\n                    ',1),(38,591,'account','vtiger_assets',1,'10','account','Customer Name',1,2,'',100,13,95,1,'V~M',0,0,'BAS',1,'\n                    ',1),(38,592,'contact','vtiger_assets',1,'10','contact','Contact Name',1,2,'',100,14,95,1,'V~O',0,0,'BAS',1,'\n                    ',0),(38,593,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,14,95,2,'DT~O',3,0,'BAS',0,'\n                    ',0),(38,594,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,95,2,'DT~O',3,0,'BAS',0,'\n                    ',0),(38,595,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,16,95,3,'V~O',3,0,'BAS',0,'\n                    ',0),(38,596,'description','vtiger_crmentity',1,'19','description','Notes',1,2,'',100,1,97,1,'V~O',1,NULL,'BAS',1,'\n                    ',0),(42,597,'commentcontent','vtiger_modcomments',1,'19','commentcontent','Comment',1,0,'',100,4,98,1,'V~M',0,4,'BAS',2,'',1),(42,598,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,1,99,1,'V~M',0,1,'BAS',2,'',1),(42,599,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,99,2,'DT~O',0,2,'BAS',0,'',0),(42,600,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,99,2,'DT~O',0,3,'BAS',0,'',0),(42,601,'related_to','vtiger_modcomments',1,'10','related_to','Related To',1,2,'',100,2,99,1,'V~M',2,5,'BAS',2,'',0),(42,602,'smcreatorid','vtiger_crmentity',1,'52','creator','Creator',1,2,'',100,4,99,2,'V~O',1,NULL,'BAS',1,'',0),(42,603,'parent_comments','vtiger_modcomments',1,'10','parent_comments','Related To Comments',1,2,'',100,7,99,1,'V~O',1,NULL,'BAS',1,'',0),(43,604,'projectmilestonename','vtiger_projectmilestone',1,'2','projectmilestonename','Project Milestone Name',1,2,'',100,1,101,1,'V~M',0,1,'BAS',1,'',1),(43,605,'projectmilestonedate','vtiger_projectmilestone',1,'5','projectmilestonedate','Milestone Date',1,2,'',100,5,101,1,'D~O',0,3,'BAS',1,'',1),(43,606,'projectid','vtiger_projectmilestone',1,'10','projectid','Related to',1,0,'',100,4,101,1,'V~M',0,4,'BAS',1,'',0),(43,607,'projectmilestonetype','vtiger_projectmilestone',1,'15','projectmilestonetype','Type',1,2,'',100,7,101,1,'V~O',1,NULL,'BAS',1,'',1),(43,608,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,6,101,1,'V~M',0,2,'BAS',1,'',0),(43,609,'projectmilestone_no','vtiger_projectmilestone',2,'4','projectmilestone_no','Project Milestone No',1,0,'',100,2,101,1,'V~O',3,4,'BAS',0,'',0),(43,610,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,2,'',100,1,102,2,'T~O',1,NULL,'BAS',1,'',0),(43,611,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,2,'',100,2,102,2,'T~O',1,NULL,'BAS',1,'',0),(43,612,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,3,102,3,'V~O',3,0,'BAS',0,'',0),(43,613,'description','vtiger_crmentity',1,'19','description','description',1,2,'',100,1,103,1,'V~O',1,NULL,'BAS',1,'',0),(44,614,'projecttaskname','vtiger_projecttask',1,'2','projecttaskname','Project Task Name',1,2,'',100,1,104,1,'V~M',0,1,'BAS',1,'',1),(44,615,'projecttasktype','vtiger_projecttask',1,'15','projecttasktype','Type',1,2,'',100,4,104,1,'V~O',1,NULL,'BAS',1,'',1),(44,616,'projecttaskpriority','vtiger_projecttask',1,'15','projecttaskpriority','Priority',1,2,'',100,3,104,1,'V~O',1,NULL,'BAS',1,'',0),(44,617,'projectid','vtiger_projecttask',1,'10','projectid','Related to',1,0,'',100,6,104,1,'V~M',0,5,'BAS',1,'',0),(44,618,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,7,104,1,'V~M',0,2,'BAS',1,'',1),(44,619,'projecttasknumber','vtiger_projecttask',1,'7','projecttasknumber','Project Task Number',1,2,'',100,5,104,1,'I~O',1,NULL,'BAS',1,'',0),(44,620,'projecttask_no','vtiger_projecttask',2,'4','projecttask_no','Project Task No',1,0,'',100,2,104,1,'V~O',3,4,'BAS',0,'',0),(44,621,'projecttaskprogress','vtiger_projecttask',1,'15','projecttaskprogress','Progress',1,2,'',100,1,105,1,'V~O',1,NULL,'BAS',1,'',1),(44,622,'projecttaskhours','vtiger_projecttask',1,'7','projecttaskhours','Worked Hours',1,2,'',100,2,105,1,'V~O',1,NULL,'BAS',1,'',0),(44,623,'startdate','vtiger_projecttask',1,'5','startdate','Start Date',1,2,'',100,3,105,1,'D~O',0,3,'BAS',1,'',1),(44,624,'enddate','vtiger_projecttask',1,'5','enddate','End Date',1,2,'',100,4,105,1,'D~O~OTH~GE~startdate~Start Date',1,NULL,'BAS',1,'',1),(44,625,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,2,'',100,5,105,2,'T~O',1,NULL,'BAS',1,'',0),(44,626,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,2,'',100,6,105,2,'T~O',1,NULL,'BAS',1,'',0),(44,627,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,105,3,'V~O',3,0,'BAS',0,'',0),(44,628,'description','vtiger_crmentity',1,'19','description','description',1,2,'',100,1,106,1,'V~O',1,NULL,'BAS',1,'',0),(45,629,'projectname','vtiger_project',1,'2','projectname','Project Name',1,2,'',100,1,107,1,'V~M',0,1,'BAS',1,'',1),(45,630,'startdate','vtiger_project',1,'23','startdate','Start Date',1,2,'',100,3,107,1,'D~O',0,3,'BAS',1,'',1),(45,631,'targetenddate','vtiger_project',1,'23','targetenddate','Target End Date',1,2,'',100,5,107,1,'D~O~OTH~GE~startdate~Start Date',0,4,'BAS',1,'',1),(45,632,'actualenddate','vtiger_project',1,'23','actualenddate','Actual End Date',1,2,'',100,6,107,1,'D~O~OTH~GE~startdate~Start Date',1,NULL,'BAS',1,'',0),(45,633,'projectstatus','vtiger_project',1,'15','projectstatus','Status',1,2,'',100,7,107,1,'V~O',1,NULL,'BAS',1,'',1),(45,634,'projecttype','vtiger_project',1,'15','projecttype','Type',1,2,'',100,8,107,1,'V~O',1,NULL,'BAS',1,'',1),(45,635,'linktoaccountscontacts','vtiger_project',1,'10','linktoaccountscontacts','Related to',1,2,'',100,9,107,1,'V~O',1,NULL,'BAS',1,'',0),(45,636,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,4,107,1,'V~M',0,2,'BAS',1,'',1),(45,637,'project_no','vtiger_project',2,'4','project_no','Project No',1,0,'',100,2,107,1,'V~O',3,0,'BAS',0,'',0),(45,638,'targetbudget','vtiger_project',1,'7','targetbudget','Target Budget',1,2,'',100,1,108,1,'V~O',1,NULL,'BAS',1,'',0),(45,639,'projecturl','vtiger_project',1,'17','projecturl','Project Url',1,2,'',100,2,108,1,'V~O',1,NULL,'BAS',1,'',0),(45,640,'projectpriority','vtiger_project',1,'15','projectpriority','Priority',1,2,'',100,3,108,1,'V~O',1,NULL,'BAS',1,'',0),(45,641,'progress','vtiger_project',1,'15','progress','Progress',1,2,'',100,4,108,1,'V~O',1,NULL,'BAS',1,'',0),(45,642,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,2,'',100,5,108,2,'T~O',1,NULL,'BAS',1,'',0),(45,643,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,2,'',100,6,108,2,'T~O',1,NULL,'BAS',1,'',0),(45,644,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,108,3,'V~O',3,0,'BAS',0,'',0),(45,645,'description','vtiger_crmentity',1,'19','description','description',1,2,'',100,1,109,1,'V~O',1,NULL,'BAS',1,'',0),(47,646,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,2,110,1,'V~M',1,NULL,'BAS',1,'',1),(47,647,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,110,2,'DT~O',1,NULL,'BAS',0,'',0),(47,648,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,110,2,'DT~O',1,NULL,'BAS',0,'',0),(47,649,'message','vtiger_smsnotifier',1,'21','message','message',1,0,'',100,1,110,1,'V~M',1,NULL,'BAS',1,'',1),(47,650,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,110,3,'V~O',1,NULL,'BAS',0,'',0),(2,651,'forecast_amount','vtiger_potential',1,'71','forecast_amount','Forecast Amount',1,2,'',100,18,1,1,'N~O',1,NULL,'BAS',0,'',0),(29,652,'no_of_currency_decimals','vtiger_users',1,'16','no_of_currency_decimals','Number Of Currency Decimals',1,2,'2',100,6,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Number of Decimal places</b> <br/><br/>Number of decimal places specifies how many number of decimals will be shown after decimal separator.<br/><b>Eg:</b> 123.00',0),(23,653,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,113,5,'V~M',1,NULL,'BAS',0,'',0),(23,654,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,113,5,'N~O',1,NULL,'BAS',0,'',0),(23,655,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,113,5,'N~O',1,NULL,'BAS',0,'',0),(23,656,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,113,5,'V~O',1,NULL,'BAS',0,'',0),(23,657,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,113,5,'N~O',1,NULL,'BAS',0,'',0),(23,658,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,113,5,'V~O',1,NULL,'BAS',0,'',0),(23,659,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,113,5,'V~O',1,NULL,'BAS',0,'',0),(23,660,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,113,5,'V~O',1,NULL,'BAS',0,'',0),(23,661,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,113,5,'V~O',1,NULL,'BAS',0,'',0),(22,662,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,114,5,'V~M',1,NULL,'BAS',0,'',0),(22,663,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,114,5,'N~O',1,NULL,'BAS',0,'',0),(22,664,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,114,5,'N~O',1,NULL,'BAS',0,'',0),(22,665,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,114,5,'V~O',1,NULL,'BAS',0,'',0),(22,666,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,114,5,'N~O',1,NULL,'BAS',0,'',0),(22,667,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,114,5,'V~O',1,NULL,'BAS',0,'',0),(22,668,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,114,5,'V~O',1,NULL,'BAS',0,'',0),(22,669,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,114,5,'V~O',1,NULL,'BAS',0,'',0),(22,670,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,114,5,'V~O',1,NULL,'BAS',0,'',0),(21,671,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,115,5,'V~M',1,NULL,'BAS',0,'',0),(21,672,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,115,5,'N~O',1,NULL,'BAS',0,'',0),(21,673,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,115,5,'N~O',1,NULL,'BAS',0,'',0),(21,674,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,115,5,'V~O',1,NULL,'BAS',0,'',0),(21,675,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,115,5,'N~O',1,NULL,'BAS',0,'',0),(21,676,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,115,5,'V~O',1,NULL,'BAS',0,'',0),(21,677,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,115,5,'V~O',1,NULL,'BAS',0,'',0),(21,678,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,115,5,'V~O',1,NULL,'BAS',0,'',0),(21,679,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,115,5,'V~O',1,NULL,'BAS',0,'',0),(20,680,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,116,5,'V~M',1,NULL,'BAS',0,'',0),(20,681,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,116,5,'N~O',1,NULL,'BAS',0,'',0),(20,682,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,116,5,'N~O',1,NULL,'BAS',0,'',0),(20,683,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,116,5,'V~O',1,NULL,'BAS',0,'',0),(20,684,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,116,5,'N~O',1,NULL,'BAS',0,'',0),(20,685,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,116,5,'V~O',1,NULL,'BAS',0,'',0),(20,686,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,116,5,'V~O',1,NULL,'BAS',0,'',0),(20,687,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,116,5,'V~O',1,NULL,'BAS',0,'',0),(20,688,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,116,5,'V~O',1,NULL,'BAS',0,'',0),(29,689,'truncate_trailing_zeros','vtiger_users',1,'56','truncate_trailing_zeros','Truncate Trailing Zeros',1,2,'0',100,7,78,1,'V~O',1,NULL,'BAS',1,'<b> Truncate Trailing Zeros </b> <br/><br/>It truncated trailing 0s in any of Currency, Decimal and Percentage Field types<br/><br/><b>Ex:</b><br/>If value is 89.00000 then <br/>decimal and Percentage fields were shows 89<br/>currency field type - shows 89.00<br/>',0),(44,690,'projecttaskstatus','vtiger_projecttask',1,'15','projecttaskstatus','Status',1,2,'',100,8,104,1,'V~O',0,6,'BAS',1,'',0),(42,691,'customer','vtiger_modcomments',1,'10','customer','Customer',1,2,'',100,5,98,3,'V~O',1,NULL,'BAS',1,'',0),(29,692,'dayoftheweek','vtiger_users',1,'16','dayoftheweek','Starting Day of the week',1,2,'Monday',100,1,118,1,'V~O',1,NULL,'BAS',1,'',0),(29,693,'callduration','vtiger_users',1,'16','callduration','Default Call Duration',1,2,'5',100,7,118,1,'V~O',1,NULL,'BAS',1,'',0),(29,694,'othereventduration','vtiger_users',1,'16','othereventduration','Other Event Duration',1,2,'5',100,8,118,1,'V~O',1,NULL,'BAS',1,'',0),(23,695,'pre_tax_total','vtiger_invoice',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,67,3,'N~O',1,NULL,'BAS',1,'',0),(22,696,'pre_tax_total','vtiger_salesorder',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,61,3,'N~O',1,NULL,'BAS',1,'',0),(21,697,'pre_tax_total','vtiger_purchaseorder',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,55,3,'N~O',1,NULL,'BAS',1,'',0),(20,698,'pre_tax_total','vtiger_quotes',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,49,3,'N~O',1,NULL,'BAS',1,'',0),(29,699,'calendarsharedtype','vtiger_users',1,'16','calendarsharedtype','Calendar Shared Type',1,2,'Public',100,12,118,3,'V~O',1,NULL,'BAS',1,'',0),(6,700,'isconvertedfromlead','vtiger_account',1,'56','isconvertedfromlead','Is Converted From Lead',1,2,'no',100,24,9,2,'C~O',1,NULL,'BAS',1,'',0),(4,701,'isconvertedfromlead','vtiger_contactdetails',1,'56','isconvertedfromlead','Is Converted From Lead',1,2,'no',100,29,4,2,'C~O',1,NULL,'BAS',1,'',0),(2,702,'isconvertedfromlead','vtiger_potential',1,'56','isconvertedfromlead','Is Converted From Lead',1,2,'no',100,19,1,2,'C~O',1,NULL,'BAS',1,'',0),(29,703,'default_record_view','vtiger_users',1,'16','default_record_view','Default Record View',1,2,'Summary',100,19,79,1,'V~O',1,NULL,'BAS',1,'',0),(23,704,'received','vtiger_invoice',1,'72','received','Received',1,2,'0',100,24,67,3,'N~O',1,NULL,'BAS',1,'',0),(23,705,'balance','vtiger_invoice',1,'72','balance','Balance',1,2,'0',100,25,67,3,'N~O',1,NULL,'BAS',1,'',0),(21,706,'paid','vtiger_purchaseorder',1,'72','paid','Paid',1,2,'0',100,24,55,3,'N~O',1,NULL,'BAS',1,'',0),(21,707,'balance','vtiger_purchaseorder',1,'72','balance','Balance',1,2,'0',100,25,55,3,'N~O',1,NULL,'BAS',1,'',0),(18,708,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,13,42,1,'V~M',1,NULL,'BAS',1,'',0),(7,709,'emailoptout','vtiger_leaddetails',1,'56','emailoptout','Email Opt Out',1,2,'',100,24,13,1,'C~O',1,NULL,'BAS',1,'',0),(42,710,'userid','vtiger_modcomments',1,'10','userid','UserId',1,2,'',100,6,98,3,'V~O',1,NULL,'BAS',1,'',0),(42,711,'reasontoedit','vtiger_modcomments',1,'19','reasontoedit','ReasonToEdit',1,2,'',100,7,98,1,'V~O',1,NULL,'BAS',1,'',0),(23,712,'s_h_percent','vtiger_invoice',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,113,5,'N~O',0,1,'BAS',0,'',0),(20,713,'s_h_percent','vtiger_quotes',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,116,5,'N~O',0,1,'BAS',0,'',0),(21,714,'s_h_percent','vtiger_purchaseorder',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,115,5,'N~O',0,1,'BAS',0,'',0),(22,715,'s_h_percent','vtiger_salesorder',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,114,5,'N~O',0,1,'BAS',0,'',0),(29,716,'leftpanelhide','vtiger_users',1,'56','leftpanelhide','Left Panel Hide',1,2,'0',100,20,79,1,'V~O',1,NULL,'BAS',1,'',0),(2,717,'contact_id','vtiger_potential',1,'10','contact_id','Contact Name',1,2,'',100,20,1,1,'V~O',1,NULL,'BAS',1,'',1),(13,718,'contact_id','vtiger_troubletickets',1,'10','contact_id','Contact Name',1,2,'',100,18,25,1,'V~O',1,NULL,'BAS',1,'',1),(29,719,'rowheight','vtiger_users',1,'16','rowheight','Row Height',1,2,'medium',100,21,79,1,'V~O',1,NULL,'BAS',1,'',0),(13,720,'from_portal','vtiger_ticketcf',1,'56','from_portal','From Portal',1,0,'',100,19,25,3,'C~O',1,NULL,'BAS',1,'',0),(29,721,'defaulteventstatus','vtiger_users',1,'15','defaulteventstatus','Default Event Status',1,2,'',100,9,118,1,'V~O',1,NULL,'BAS',1,'',0),(29,722,'defaultactivitytype','vtiger_users',1,'15','defaultactivitytype','Default Activity Type',1,2,'',100,10,118,1,'V~O',1,NULL,'BAS',1,'',0),(29,723,'hidecompletedevents','vtiger_users',1,'56','hidecompletedevents','LBL_HIDE_COMPLETED_EVENTS',1,2,'0',100,13,118,1,'C~O',1,NULL,'BAS',1,'',0),(2,724,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,21,1,2,'V~O',3,7,'BAS',0,'',0),(4,725,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,30,4,2,'V~O',3,7,'BAS',0,'',0),(6,726,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,25,9,2,'V~O',3,5,'BAS',0,'',0),(7,727,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,25,13,2,'V~O',3,7,'BAS',0,'',0),(9,729,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,23,19,2,'V~O',3,5,'BAS',0,'',0),(13,730,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,20,25,2,'V~O',3,5,'BAS',0,'',0),(18,734,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,14,42,2,'V~O',3,4,'BAS',0,'',0),(21,737,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,26,55,2,'V~O',3,2,'BAS',0,'',0),(23,739,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,26,67,2,'V~O',3,2,'BAS',0,'',0),(42,745,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,8,98,2,'V~O',3,6,'BAS',0,'',0),(43,746,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,8,101,2,'V~O',3,5,'BAS',0,'',0),(44,747,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,9,104,2,'V~O',3,7,'BAS',0,'',0),(45,748,'smcreatorid','vtiger_crmentity',1,'53','created_user_id','Created By',1,2,'',100,10,107,2,'V~O',3,5,'BAS',0,'',0),(29,750,'is_owner','vtiger_users',1,'1','is_owner','Account Owner',0,2,'0',100,12,77,5,'V~O',0,1,'BAS',0,'',0);
/*!40000 ALTER TABLE `vtiger_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_field_seq`
--

DROP TABLE IF EXISTS `vtiger_field_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_field_seq`
--

LOCK TABLES `vtiger_field_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_field_seq` DISABLE KEYS */;
INSERT INTO `vtiger_field_seq` VALUES (750);
/*!40000 ALTER TABLE `vtiger_field_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_fieldmodulerel`
--

DROP TABLE IF EXISTS `vtiger_fieldmodulerel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) default NULL,
  `sequence` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_fieldmodulerel`
--

LOCK TABLES `vtiger_fieldmodulerel` WRITE;
/*!40000 ALTER TABLE `vtiger_fieldmodulerel` DISABLE KEYS */;
INSERT INTO `vtiger_fieldmodulerel` VALUES (113,'Potentials','Accounts',NULL,0),(533,'PBXManager','Leads',NULL,NULL),(533,'PBXManager','Contacts',NULL,NULL),(533,'PBXManager','Accounts',NULL,NULL),(546,'ServiceContracts','Contacts',NULL,NULL),(546,'ServiceContracts','Accounts',NULL,NULL),(580,'Assets','Products',NULL,NULL),(586,'Assets','Invoice',NULL,NULL),(591,'Assets','Accounts',NULL,NULL),(592,'Assets','Contacts',NULL,NULL),(601,'ModComments','Leads',NULL,NULL),(601,'ModComments','Contacts',NULL,NULL),(601,'ModComments','Accounts',NULL,NULL),(603,'ModComments','ModComments',NULL,NULL),(601,'ModComments','Potentials',NULL,NULL),(606,'ProjectMilestone','Project',NULL,NULL),(617,'ProjectTask','Project',NULL,NULL),(601,'ModComments','ProjectTask',NULL,NULL),(635,'Project','Accounts',NULL,NULL),(635,'Project','Contacts',NULL,NULL),(601,'ModComments','Project',NULL,NULL),(653,'Invoice','Products',NULL,NULL),(653,'Invoice','Services',NULL,NULL),(662,'SalesOrder','Products',NULL,NULL),(662,'SalesOrder','Services',NULL,NULL),(671,'PurchaseOrder','Products',NULL,NULL),(671,'PurchaseOrder','Services',NULL,NULL),(680,'Quotes','Products',NULL,NULL),(680,'Quotes','Services',NULL,NULL),(601,'ModComments','HelpDesk',NULL,NULL),(601,'ModComments','Faq',NULL,NULL),(691,'ModComments','Contacts',NULL,NULL),(717,'Potentials','Contacts',NULL,NULL),(157,'HelpDesk','Accounts',NULL,NULL),(718,'HelpDesk','Contacts',NULL,NULL),(237,'Accounts','Calendar',NULL,NULL),(237,'Leads','Calendar',NULL,NULL),(237,'HelpDesk','Calendar',NULL,NULL),(237,'Campaigns','Calendar',NULL,NULL),(237,'Potentials','Calendar',NULL,NULL),(237,'PurchaseOrder','Calendar',NULL,NULL),(237,'SalesOrder','Calendar',NULL,NULL),(237,'Quotes','Calendar',NULL,NULL),(237,'Invoice','Calendar',NULL,NULL),(238,'Contacts','Calendar',NULL,NULL);
/*!40000 ALTER TABLE `vtiger_fieldmodulerel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_freetagged_objects`
--

DROP TABLE IF EXISTS `vtiger_freetagged_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL default '0',
  `tagger_id` int(20) NOT NULL default '0',
  `object_id` int(20) NOT NULL default '0',
  `tagged_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `module` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`tag_id`,`tagger_id`,`object_id`),
  KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_freetagged_objects`
--

LOCK TABLES `vtiger_freetagged_objects` WRITE;
/*!40000 ALTER TABLE `vtiger_freetagged_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_freetagged_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_freetags`
--

DROP TABLE IF EXISTS `vtiger_freetags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL default '',
  `raw_tag` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_freetags`
--

LOCK TABLES `vtiger_freetags` WRITE;
/*!40000 ALTER TABLE `vtiger_freetags` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_freetags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_freetags_seq`
--

DROP TABLE IF EXISTS `vtiger_freetags_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_freetags_seq`
--

LOCK TABLES `vtiger_freetags_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_freetags_seq` DISABLE KEYS */;
INSERT INTO `vtiger_freetags_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_freetags_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_glacct`
--

DROP TABLE IF EXISTS `vtiger_glacct`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_glacct` (
  `glacctid` int(19) NOT NULL auto_increment,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`glacctid`),
  UNIQUE KEY `glacct_glacct_idx` (`glacct`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_glacct`
--

LOCK TABLES `vtiger_glacct` WRITE;
/*!40000 ALTER TABLE `vtiger_glacct` DISABLE KEYS */;
INSERT INTO `vtiger_glacct` VALUES (1,'300-Sales-Software',1,51,0),(2,'301-Sales-Hardware',1,52,1),(3,'302-Rental-Income',1,53,2),(4,'303-Interest-Income',1,54,3),(5,'304-Sales-Software-Support',1,55,4),(6,'305-Sales Other',1,56,5),(7,'306-Internet Sales',1,57,6),(8,'307-Service-Hardware Labor',1,58,7),(9,'308-Sales-Books',1,59,8);
/*!40000 ALTER TABLE `vtiger_glacct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_glacct_seq`
--

DROP TABLE IF EXISTS `vtiger_glacct_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_glacct_seq`
--

LOCK TABLES `vtiger_glacct_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_glacct_seq` DISABLE KEYS */;
INSERT INTO `vtiger_glacct_seq` VALUES (9);
/*!40000 ALTER TABLE `vtiger_glacct_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_group2grouprel`
--

DROP TABLE IF EXISTS `vtiger_group2grouprel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL,
  PRIMARY KEY  (`groupid`,`containsgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_group2grouprel`
--

LOCK TABLES `vtiger_group2grouprel` WRITE;
/*!40000 ALTER TABLE `vtiger_group2grouprel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_group2grouprel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_group2role`
--

DROP TABLE IF EXISTS `vtiger_group2role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY  (`groupid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_group2role`
--

LOCK TABLES `vtiger_group2role` WRITE;
/*!40000 ALTER TABLE `vtiger_group2role` DISABLE KEYS */;
INSERT INTO `vtiger_group2role` VALUES (2,'H4'),(3,'H2'),(4,'H3');
/*!40000 ALTER TABLE `vtiger_group2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_group2rs`
--

DROP TABLE IF EXISTS `vtiger_group2rs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL,
  PRIMARY KEY  (`groupid`,`roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_group2rs`
--

LOCK TABLES `vtiger_group2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_group2rs` DISABLE KEYS */;
INSERT INTO `vtiger_group2rs` VALUES (2,'H5'),(3,'H3'),(4,'H3');
/*!40000 ALTER TABLE `vtiger_group2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_groups`
--

DROP TABLE IF EXISTS `vtiger_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) default NULL,
  `description` text,
  PRIMARY KEY  (`groupid`),
  UNIQUE KEY `groups_groupname_idx` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_groups`
--

LOCK TABLES `vtiger_groups` WRITE;
/*!40000 ALTER TABLE `vtiger_groups` DISABLE KEYS */;
INSERT INTO `vtiger_groups` VALUES (2,'Team Selling','Group Related to Sales'),(3,'Marketing Group','Group Related to Marketing Activities'),(4,'Support Group','Group Related to providing Support to Customers');
/*!40000 ALTER TABLE `vtiger_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_home_layout`
--

DROP TABLE IF EXISTS `vtiger_home_layout`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL default '4',
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_home_layout`
--

LOCK TABLES `vtiger_home_layout` WRITE;
/*!40000 ALTER TABLE `vtiger_home_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_home_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homedashbd`
--

DROP TABLE IF EXISTS `vtiger_homedashbd`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL default '0',
  `dashbdname` varchar(100) default NULL,
  `dashbdtype` varchar(100) default NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homedashbd`
--

LOCK TABLES `vtiger_homedashbd` WRITE;
/*!40000 ALTER TABLE `vtiger_homedashbd` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homedashbd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homedefault`
--

DROP TABLE IF EXISTS `vtiger_homedefault`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL default '0',
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) default NULL,
  `setype` varchar(30) default NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homedefault`
--

LOCK TABLES `vtiger_homedefault` WRITE;
/*!40000 ALTER TABLE `vtiger_homedefault` DISABLE KEYS */;
INSERT INTO `vtiger_homedefault` VALUES (1,'ALVT',5,'Accounts'),(2,'HDB',5,'Dashboard'),(3,'PLVT',5,'Potentials'),(4,'QLTQ',5,'Quotes'),(5,'CVLVT',5,'NULL'),(6,'HLT',5,'HelpDesk'),(7,'UA',5,'Calendar'),(8,'GRT',5,'NULL'),(9,'OLTSO',5,'SalesOrder'),(10,'ILTI',5,'Invoice'),(11,'MNL',5,'Leads'),(12,'OLTPO',5,'PurchaseOrder'),(13,'PA',5,'Calendar'),(14,'LTFAQ',5,'Faq');
/*!40000 ALTER TABLE `vtiger_homedefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homemodule`
--

DROP TABLE IF EXISTS `vtiger_homemodule`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) default NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homemodule`
--

LOCK TABLES `vtiger_homemodule` WRITE;
/*!40000 ALTER TABLE `vtiger_homemodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homemodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homemoduleflds`
--

DROP TABLE IF EXISTS `vtiger_homemoduleflds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homemoduleflds` (
  `stuffid` int(19) default NULL,
  `fieldname` varchar(100) default NULL,
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homemoduleflds`
--

LOCK TABLES `vtiger_homemoduleflds` WRITE;
/*!40000 ALTER TABLE `vtiger_homemoduleflds` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homemoduleflds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homereportchart`
--

DROP TABLE IF EXISTS `vtiger_homereportchart`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homereportchart` (
  `stuffid` int(11) NOT NULL,
  `reportid` int(19) default NULL,
  `reportcharttype` varchar(100) default NULL,
  PRIMARY KEY  (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homereportchart`
--

LOCK TABLES `vtiger_homereportchart` WRITE;
/*!40000 ALTER TABLE `vtiger_homereportchart` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homereportchart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homerss`
--

DROP TABLE IF EXISTS `vtiger_homerss`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homerss` (
  `stuffid` int(19) NOT NULL default '0',
  `url` varchar(100) default NULL,
  `maxentries` int(19) NOT NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homerss`
--

LOCK TABLES `vtiger_homerss` WRITE;
/*!40000 ALTER TABLE `vtiger_homerss` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homerss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homestuff`
--

DROP TABLE IF EXISTS `vtiger_homestuff`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL default '0',
  `stuffsequence` int(19) NOT NULL default '0',
  `stufftype` varchar(100) default NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL default '0',
  `stufftitle` varchar(100) default NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homestuff`
--

LOCK TABLES `vtiger_homestuff` WRITE;
/*!40000 ALTER TABLE `vtiger_homestuff` DISABLE KEYS */;
INSERT INTO `vtiger_homestuff` VALUES (1,1,'Default',1,1,'Top Accounts'),(2,2,'Default',1,1,'Home Page Dashboard'),(3,3,'Default',1,1,'Top Potentials'),(4,4,'Default',1,1,'Top Quotes'),(5,5,'Default',1,1,'Key Metrics'),(6,6,'Default',1,1,'Top Trouble Tickets'),(7,7,'Default',1,1,'Upcoming Activities'),(8,8,'Default',1,1,'My Group Allocation'),(9,9,'Default',1,1,'Top Sales Orders'),(10,10,'Default',1,1,'Top Invoices'),(11,11,'Default',1,1,'My New Leads'),(12,12,'Default',1,1,'Top Purchase Orders'),(13,13,'Default',1,1,'Pending Activities'),(14,14,'Default',1,1,'My Recent FAQs'),(15,15,'Tag Cloud',1,0,'Tag Cloud');
/*!40000 ALTER TABLE `vtiger_homestuff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homestuff_seq`
--

DROP TABLE IF EXISTS `vtiger_homestuff_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_homestuff_seq`
--

LOCK TABLES `vtiger_homestuff_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_homestuff_seq` DISABLE KEYS */;
INSERT INTO `vtiger_homestuff_seq` VALUES (15);
/*!40000 ALTER TABLE `vtiger_homestuff_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_hour_format`
--

DROP TABLE IF EXISTS `vtiger_hour_format`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_hour_format` (
  `hour_formatid` int(11) NOT NULL auto_increment,
  `hour_format` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`hour_formatid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_hour_format`
--

LOCK TABLES `vtiger_hour_format` WRITE;
/*!40000 ALTER TABLE `vtiger_hour_format` DISABLE KEYS */;
INSERT INTO `vtiger_hour_format` VALUES (1,'12',1,295,1),(2,'24',1,296,2);
/*!40000 ALTER TABLE `vtiger_hour_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_hour_format_seq`
--

DROP TABLE IF EXISTS `vtiger_hour_format_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_hour_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_hour_format_seq`
--

LOCK TABLES `vtiger_hour_format_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_hour_format_seq` DISABLE KEYS */;
INSERT INTO `vtiger_hour_format_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_hour_format_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_import_locks`
--

DROP TABLE IF EXISTS `vtiger_import_locks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_import_locks` (
  `vtiger_import_lock_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `importid` int(11) NOT NULL,
  `locked_since` datetime default NULL,
  PRIMARY KEY  (`vtiger_import_lock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_import_locks`
--

LOCK TABLES `vtiger_import_locks` WRITE;
/*!40000 ALTER TABLE `vtiger_import_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_import_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_import_maps`
--

DROP TABLE IF EXISTS `vtiger_import_maps`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_import_maps` (
  `id` int(19) NOT NULL auto_increment,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob,
  `has_header` int(1) NOT NULL default '1',
  `deleted` int(1) NOT NULL default '0',
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `is_published` varchar(3) NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_import_maps`
--

LOCK TABLES `vtiger_import_maps` WRITE;
/*!40000 ALTER TABLE `vtiger_import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_import_queue`
--

DROP TABLE IF EXISTS `vtiger_import_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_import_queue` (
  `importid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `field_mapping` text,
  `default_values` text,
  `merge_type` int(11) default NULL,
  `merge_fields` text,
  `status` int(11) default '0',
  PRIMARY KEY  (`importid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_import_queue`
--

LOCK TABLES `vtiger_import_queue` WRITE;
/*!40000 ALTER TABLE `vtiger_import_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_import_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_industry`
--

DROP TABLE IF EXISTS `vtiger_industry`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_industry` (
  `industryid` int(19) NOT NULL auto_increment,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`industryid`),
  UNIQUE KEY `industry_industry_idx` (`industry`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_industry`
--

LOCK TABLES `vtiger_industry` WRITE;
/*!40000 ALTER TABLE `vtiger_industry` DISABLE KEYS */;
INSERT INTO `vtiger_industry` VALUES (2,'Apparel',1,61,1),(3,'Banking',1,62,2),(4,'Biotechnology',1,63,3),(5,'Chemicals',1,64,4),(6,'Communications',1,65,5),(7,'Construction',1,66,6),(8,'Consulting',1,67,7),(9,'Education',1,68,8),(10,'Electronics',1,69,9),(11,'Energy',1,70,10),(12,'Engineering',1,71,11),(13,'Entertainment',1,72,12),(14,'Environmental',1,73,13),(15,'Finance',1,74,14),(16,'Food & Beverage',1,75,15),(17,'Government',1,76,16),(18,'Healthcare',1,77,17),(19,'Hospitality',1,78,18),(20,'Insurance',1,79,19),(21,'Machinery',1,80,20),(22,'Manufacturing',1,81,21),(23,'Media',1,82,22),(24,'Not For Profit',1,83,23),(25,'Recreation',1,84,24),(26,'Retail',1,85,25),(27,'Shipping',1,86,26),(28,'Technology',1,87,27),(29,'Telecommunications',1,88,28),(30,'Transportation',1,89,29),(31,'Utilities',1,90,30),(32,'Other',1,91,31);
/*!40000 ALTER TABLE `vtiger_industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_industry_seq`
--

DROP TABLE IF EXISTS `vtiger_industry_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_industry_seq`
--

LOCK TABLES `vtiger_industry_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_industry_seq` DISABLE KEYS */;
INSERT INTO `vtiger_industry_seq` VALUES (32);
/*!40000 ALTER TABLE `vtiger_industry_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventory_tandc`
--

DROP TABLE IF EXISTS `vtiger_inventory_tandc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventory_tandc`
--

LOCK TABLES `vtiger_inventory_tandc` WRITE;
/*!40000 ALTER TABLE `vtiger_inventory_tandc` DISABLE KEYS */;
INSERT INTO `vtiger_inventory_tandc` VALUES (1,'Inventory','\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');
/*!40000 ALTER TABLE `vtiger_inventory_tandc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventory_tandc_seq`
--

DROP TABLE IF EXISTS `vtiger_inventory_tandc_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventory_tandc_seq`
--

LOCK TABLES `vtiger_inventory_tandc_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventory_tandc_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventory_tandc_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_inventory_tandc_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorynotification`
--

DROP TABLE IF EXISTS `vtiger_inventorynotification`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL auto_increment,
  `notificationname` varchar(200) default NULL,
  `notificationsubject` varchar(200) default NULL,
  `notificationbody` text,
  `label` varchar(50) default NULL,
  `status` varchar(30) default NULL,
  PRIMARY KEY  (`notificationid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventorynotification`
--

LOCK TABLES `vtiger_inventorynotification` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorynotification` DISABLE KEYS */;
INSERT INTO `vtiger_inventorynotification` VALUES (1,'InvoiceNotification','{PRODUCTNAME} Stock Level is Low','Dear {HANDLER},\n\nThe current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. Kindly procure required number of units as the stock level is below reorder level {REORDERLEVELVALUE}.\n\nPlease treat this information as Urgent as the invoice is already sent  to the customer.\n\nSeverity: Critical\n\nThanks,\n{CURRENTUSER} ','InvoiceNotificationDescription',NULL),(2,'QuoteNotification','Quote given for {PRODUCTNAME}','Dear {HANDLER},\n\nQuote is generated for {QUOTEQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nSeverity: Minor\n\nThanks,\n{CURRENTUSER} ','QuoteNotificationDescription',NULL),(3,'SalesOrderNotification','Sales Order generated for {PRODUCTNAME}','Dear {HANDLER},\n\nSalesOrder is generated for {SOQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nPlease treat this information  with priority as the sales order is already generated.\n\nSeverity: Major\n\nThanks,\n{CURRENTUSER} ','SalesOrderNotificationDescription',NULL);
/*!40000 ALTER TABLE `vtiger_inventorynotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorynotification_seq`
--

DROP TABLE IF EXISTS `vtiger_inventorynotification_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventorynotification_seq`
--

LOCK TABLES `vtiger_inventorynotification_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorynotification_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventorynotification_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_inventorynotification_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventoryproductrel`
--

DROP TABLE IF EXISTS `vtiger_inventoryproductrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventoryproductrel` (
  `id` int(19) default NULL,
  `productid` int(19) default NULL,
  `sequence_no` int(4) default NULL,
  `quantity` decimal(25,3) default NULL,
  `listprice` decimal(27,8) default NULL,
  `discount_percent` decimal(7,3) default NULL,
  `discount_amount` decimal(27,8) default NULL,
  `comment` varchar(500) default NULL,
  `description` text,
  `incrementondel` int(11) NOT NULL default '0',
  `lineitem_id` int(11) NOT NULL auto_increment,
  `tax1` decimal(7,3) default NULL,
  `tax2` decimal(7,3) default NULL,
  `tax3` decimal(7,3) default NULL,
  PRIMARY KEY  (`lineitem_id`),
  KEY `inventoryproductrel_id_idx` (`id`),
  KEY `inventoryproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventoryproductrel`
--

LOCK TABLES `vtiger_inventoryproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_inventoryproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_inventoryproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventoryproductrel_seq`
--

DROP TABLE IF EXISTS `vtiger_inventoryproductrel_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventoryproductrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventoryproductrel_seq`
--

LOCK TABLES `vtiger_inventoryproductrel_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventoryproductrel_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventoryproductrel_seq` VALUES (0);
/*!40000 ALTER TABLE `vtiger_inventoryproductrel_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventoryshippingrel`
--

DROP TABLE IF EXISTS `vtiger_inventoryshippingrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventoryshippingrel` (
  `id` int(19) default NULL,
  `shtax1` decimal(7,3) default NULL,
  `shtax2` decimal(7,3) default NULL,
  `shtax3` decimal(7,3) default NULL,
  KEY `inventoryishippingrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventoryshippingrel`
--

LOCK TABLES `vtiger_inventoryshippingrel` WRITE;
/*!40000 ALTER TABLE `vtiger_inventoryshippingrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_inventoryshippingrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorysubproductrel`
--

DROP TABLE IF EXISTS `vtiger_inventorysubproductrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventorysubproductrel`
--

LOCK TABLES `vtiger_inventorysubproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorysubproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_inventorysubproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorytaxinfo`
--

DROP TABLE IF EXISTS `vtiger_inventorytaxinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) default NULL,
  `taxlabel` varchar(50) default NULL,
  `percentage` decimal(7,3) default NULL,
  `deleted` int(1) default NULL,
  PRIMARY KEY  (`taxid`),
  KEY `inventorytaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventorytaxinfo`
--

LOCK TABLES `vtiger_inventorytaxinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo` DISABLE KEYS */;
INSERT INTO `vtiger_inventorytaxinfo` VALUES (1,'tax1','VAT','4.500',0),(2,'tax2','Sales','10.000',0),(3,'tax3','Service','12.500',0);
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorytaxinfo_seq`
--

DROP TABLE IF EXISTS `vtiger_inventorytaxinfo_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_inventorytaxinfo_seq`
--

LOCK TABLES `vtiger_inventorytaxinfo_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventorytaxinfo_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invitees`
--

DROP TABLE IF EXISTS `vtiger_invitees`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  PRIMARY KEY  (`activityid`,`inviteeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invitees`
--

LOCK TABLES `vtiger_invitees` WRITE;
/*!40000 ALTER TABLE `vtiger_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoice`
--

DROP TABLE IF EXISTS `vtiger_invoice`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoice` (
  `invoiceid` bigint(19) NOT NULL auto_increment,
  `subject` varchar(50) default NULL,
  `salesorderid` bigint(19) default NULL,
  `customerno` varchar(20) default NULL,
  `contactid` bigint(19) default NULL,
  `notes` varchar(100) default NULL,
  `invoicedate` date default NULL,
  `duedate` date default NULL,
  `invoiceterms` varchar(100) default NULL,
  `type` varchar(20) default NULL,
  `adjustment` decimal(25,8) default NULL,
  `salescommission` decimal(25,3) default NULL,
  `exciseduty` decimal(25,3) default NULL,
  `subtotal` decimal(25,8) default NULL,
  `total` decimal(25,8) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,8) default NULL,
  `s_h_amount` decimal(25,8) default NULL,
  `shipping` varchar(100) default NULL,
  `accountid` bigint(19) default NULL,
  `terms_conditions` text,
  `purchaseorder` bigint(19) default NULL,
  `invoicestatus` tinyint(4) default NULL,
  `invoice_no` varchar(20) default NULL,
  `currency_id` int(11) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  `pre_tax_total` decimal(25,8) default NULL,
  `received` decimal(25,8) default NULL,
  `balance` decimal(25,8) default NULL,
  `s_h_percent` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`invoiceid`),
  KEY `invoice_purchaseorderid_idx` (`invoiceid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoice`
--

LOCK TABLES `vtiger_invoice` WRITE;
/*!40000 ALTER TABLE `vtiger_invoice` DISABLE KEYS */;
INSERT INTO `vtiger_invoice` VALUES (1,'',0,'',6,'','2015-01-23','2015-01-23','','','0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,'',0,3,'',0,'0.000','0.00000000','0.00000000','0.00000000',0,NULL,NULL,NULL,NULL),(2,'',0,'',6,'','2015-01-23','2015-01-23','','','0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,'',0,3,'',0,'0.000','0.00000000','0.00000000','0.00000000',0,NULL,NULL,NULL,NULL),(3,'',0,'',6,'','2015-01-23','2015-01-23','','','0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,'',0,3,'',0,'0.000','0.00000000','0.00000000','0.00000000',0,NULL,NULL,NULL,NULL),(4,'fafafa',0,'',0,'','2015-01-23','2015-01-23','','','0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',0,'',0,1,'IVO19102500001',0,'0.000','0.00000000','0.00000000','0.00000000',0,NULL,NULL,2,'2020-03-18 10:11:40');
/*!40000 ALTER TABLE `vtiger_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoice_recurring_info`
--

DROP TABLE IF EXISTS `vtiger_invoice_recurring_info`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) NOT NULL default '0',
  `recurring_frequency` varchar(200) default NULL,
  `start_period` date default NULL,
  `end_period` date default NULL,
  `last_recurring_date` date default NULL,
  `payment_duration` varchar(200) default NULL,
  `invoice_status` varchar(200) default NULL,
  PRIMARY KEY  (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoice_recurring_info`
--

LOCK TABLES `vtiger_invoice_recurring_info` WRITE;
/*!40000 ALTER TABLE `vtiger_invoice_recurring_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoice_recurring_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicebillads`
--

DROP TABLE IF EXISTS `vtiger_invoicebillads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`invoicebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoicebillads`
--

LOCK TABLES `vtiger_invoicebillads` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicebillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoicebillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicecf`
--

DROP TABLE IF EXISTS `vtiger_invoicecf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoicecf`
--

LOCK TABLES `vtiger_invoicecf` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicecf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoicecf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoiceshipads`
--

DROP TABLE IF EXISTS `vtiger_invoiceshipads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`invoiceshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoiceshipads`
--

LOCK TABLES `vtiger_invoiceshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_invoiceshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoiceshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicestatus`
--

DROP TABLE IF EXISTS `vtiger_invoicestatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoicestatus` (
  `invoicestatusid` int(19) NOT NULL auto_increment,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`invoicestatusid`),
  UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoicestatus`
--

LOCK TABLES `vtiger_invoicestatus` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicestatus` DISABLE KEYS */;
INSERT INTO `vtiger_invoicestatus` VALUES (1,'AutoCreated',0,92,0),(2,'Created',0,93,1),(3,'Approved',0,94,2),(4,'Sent',0,95,3),(5,'Credit Invoice',0,96,4),(6,'Paid',0,97,5),(7,'Cancel',1,288,1);
/*!40000 ALTER TABLE `vtiger_invoicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicestatus_seq`
--

DROP TABLE IF EXISTS `vtiger_invoicestatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoicestatus_seq`
--

LOCK TABLES `vtiger_invoicestatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicestatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_invoicestatus_seq` VALUES (7);
/*!40000 ALTER TABLE `vtiger_invoicestatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicestatushistory`
--

DROP TABLE IF EXISTS `vtiger_invoicestatushistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `invoicestatus` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_invoicestatushistory`
--

LOCK TABLES `vtiger_invoicestatushistory` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicestatushistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoicestatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_language`
--

DROP TABLE IF EXISTS `vtiger_language`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_language` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `prefix` varchar(10) default NULL,
  `label` varchar(30) default NULL,
  `lastupdated` datetime default NULL,
  `sequence` int(11) default NULL,
  `isdefault` int(1) default NULL,
  `active` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_language`
--

LOCK TABLES `vtiger_language` WRITE;
/*!40000 ALTER TABLE `vtiger_language` DISABLE KEYS */;
INSERT INTO `vtiger_language` VALUES (1,'English','en_us','US English','2015-01-13 02:54:37',NULL,1,1),(2,'Arabic','ar_ae','Arabic','2015-01-13 02:55:56',NULL,0,1),(3,'Brazilian','pt_br','PT Brasil','2015-01-13 02:55:41',NULL,0,1),(4,'British English','en_gb','British English','2015-01-13 02:55:25',NULL,0,1),(5,'Deutsch','de_de','DE Deutsch','2015-01-13 02:55:25',NULL,0,1),(6,'Dutch','nl_nl','NL-Dutch','2015-01-13 02:55:26',NULL,0,1),(7,'Pack de langue français','fr_fr','Pack de langue français','2015-01-13 02:55:41',NULL,0,1),(8,'Hungarian','hu_hu','HU Magyar','2015-01-13 02:55:28',NULL,0,1),(9,'Italian','it_it','IT Italian','2015-01-13 02:55:28',NULL,0,1),(10,'Mexican Spanish','es_mx','ES Mexico','2015-01-13 02:55:28',NULL,0,1),(11,'Język Polski','pl_pl','Język Polski','2015-01-13 02:55:42',NULL,0,1),(12,'Romana','ro_ro','Romana','2015-01-13 02:55:42',NULL,0,1),(13,'Russian','ru_ru','Russian','2015-01-13 02:55:37',NULL,0,1),(14,'Spanish','es_es','ES Spanish','2015-01-13 02:55:39',NULL,0,1),(15,'Swedish','sv_se','Swedish','2015-01-13 02:55:57',NULL,0,1),(16,'Turkce','tr_tr','Turkce Dil Paketi','2015-01-13 02:55:39',NULL,0,1);
/*!40000 ALTER TABLE `vtiger_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_language_seq`
--

DROP TABLE IF EXISTS `vtiger_language_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_language_seq`
--

LOCK TABLES `vtiger_language_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_language_seq` DISABLE KEYS */;
INSERT INTO `vtiger_language_seq` VALUES (16);
/*!40000 ALTER TABLE `vtiger_language_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_lead_view`
--

DROP TABLE IF EXISTS `vtiger_lead_view`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL auto_increment,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`lead_viewid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_lead_view`
--

LOCK TABLES `vtiger_lead_view` WRITE;
/*!40000 ALTER TABLE `vtiger_lead_view` DISABLE KEYS */;
INSERT INTO `vtiger_lead_view` VALUES (1,'Today',0,1),(2,'Last 2 Days',1,1),(3,'Last Week',2,1);
/*!40000 ALTER TABLE `vtiger_lead_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_lead_view_seq`
--

DROP TABLE IF EXISTS `vtiger_lead_view_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_lead_view_seq`
--

LOCK TABLES `vtiger_lead_view_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_lead_view_seq` DISABLE KEYS */;
INSERT INTO `vtiger_lead_view_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_lead_view_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadaddress`
--

DROP TABLE IF EXISTS `vtiger_leadaddress`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL default '0',
  `city` varchar(30) default NULL,
  `code` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `pobox` varchar(30) default NULL,
  `country` varchar(30) default NULL,
  `phone` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `fax` varchar(50) default NULL,
  `lane` varchar(250) default NULL,
  `leadaddresstype` varchar(30) default 'Billing',
  PRIMARY KEY  (`leadaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadaddress`
--

LOCK TABLES `vtiger_leadaddress` WRITE;
/*!40000 ALTER TABLE `vtiger_leadaddress` DISABLE KEYS */;
INSERT INTO `vtiger_leadaddress` VALUES (4,'','','','','','02166039606','1893006','','shanghai','Billing');
/*!40000 ALTER TABLE `vtiger_leadaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leaddetails`
--

DROP TABLE IF EXISTS `vtiger_leaddetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leaddetails` (
  `leadid` bigint(19) NOT NULL auto_increment,
  `lead_no` varchar(20) NOT NULL,
  `email` varchar(50) default NULL,
  `interest` varchar(50) default NULL,
  `firstname` varchar(20) default NULL,
  `salutation` tinyint(4) default NULL,
  `lastname` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `annualrevenue` decimal(25,8) default NULL,
  `industry` tinyint(4) default NULL,
  `campaign` bigint(19) default NULL,
  `rating` tinyint(4) default NULL,
  `leadstatus` tinyint(4) default NULL,
  `leadsource` tinyint(4) default NULL,
  `converted` tinyint(1) default '0',
  `designation` varchar(20) default 'SalesMan',
  `licencekeystatus` tinyint(4) default NULL,
  `space` varchar(20) default NULL,
  `comments` text,
  `priority` tinyint(4) default NULL,
  `demorequest` varchar(50) default NULL,
  `partnercontact` varchar(50) default NULL,
  `productversion` varchar(20) default NULL,
  `product` varchar(50) default NULL,
  `maildate` date default NULL,
  `nextstepdate` date default NULL,
  `fundingsituation` varchar(50) default NULL,
  `purpose` varchar(50) default NULL,
  `evaluationstatus` varchar(50) default NULL,
  `transferdate` date default NULL,
  `revenuetype` varchar(50) default NULL,
  `noofemployees` int(11) default NULL,
  `secondaryemail` varchar(50) default NULL,
  `assignleadchk` tinyint(1) default '0',
  `emailoptout` tinyint(1) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`leadid`),
  KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leaddetails`
--

LOCK TABLES `vtiger_leaddetails` WRITE;
/*!40000 ALTER TABLE `vtiger_leaddetails` DISABLE KEYS */;
INSERT INTO `vtiger_leaddetails` VALUES (5,'LEA00003','','','erwt',0,'','','0.00000000',2,3,2,2,2,0,'',0,'','',0,'','','','','2015-01-23','2015-01-23','','','','2015-01-23','',0,'',0,0,NULL,NULL,NULL,NULL),(6,'LEA00004','','','erwt',0,'','','0.00000000',2,3,2,2,2,0,'',0,'','',0,'','','','','2015-01-23','2015-01-23','','','','2015-01-23','',0,'',0,0,NULL,NULL,NULL,NULL),(8,'LEA00006','','','dc',0,'','','0.00000000',0,0,0,9,0,0,'',0,'','',0,'','','','','2019-10-25','2019-10-25','','','',NULL,'',0,'',0,0,NULL,NULL,2,'2019-12-29 09:23:01'),(10,'LEA19102500002','','','msmfmdsfa',0,'','','0.00000000',0,0,0,9,0,0,'',0,'','',0,'','','','','2019-10-25','2019-10-25','','','',NULL,'',0,'',0,0,2,'2019-10-25 10:33:33',10438,'2019-12-29 10:39:34'),(11,'LEA19122900001','','','dfasfdafa',0,'','','0.00000000',0,0,0,9,0,0,'',0,'','',0,'','','','','2019-10-25','2019-10-25','','','',NULL,'',0,'',0,0,2,'2019-12-29 09:24:10',2,'2019-12-29 09:24:10'),(12,'LEA19122900002','','','dsfafa',0,'','','0.00000000',0,0,0,9,0,0,'',0,'','',0,'','','','','2019-10-25','2019-10-25','','','',NULL,'',0,'',0,0,2,'2019-12-29 09:24:31',2,'2019-12-29 09:24:31'),(13,'LEA19122900003','','','dffsgs',0,'','','0.00000000',0,3,0,9,0,0,'',0,'','',0,'','','','','2019-10-25','2019-10-25','','','',NULL,'',0,'',0,0,2,'2019-12-29 09:26:05',2,'2020-02-16 09:27:58'),(16,'LEA19122900006','','','tywrwtw',0,'','','0.00000000',0,0,0,9,0,0,'',0,'','',0,'','','','','2019-12-29','2019-12-29','','','',NULL,'',0,'',0,0,2,'2019-12-29 10:40:40',10438,'2019-12-29 10:55:18');
/*!40000 ALTER TABLE `vtiger_leaddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadscf`
--

DROP TABLE IF EXISTS `vtiger_leadscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadscf` (
  `leadid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`leadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadscf`
--

LOCK TABLES `vtiger_leadscf` WRITE;
/*!40000 ALTER TABLE `vtiger_leadscf` DISABLE KEYS */;
INSERT INTO `vtiger_leadscf` VALUES (4);
/*!40000 ALTER TABLE `vtiger_leadscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadsource`
--

DROP TABLE IF EXISTS `vtiger_leadsource`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL auto_increment,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`leadsourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadsource`
--

LOCK TABLES `vtiger_leadsource` WRITE;
/*!40000 ALTER TABLE `vtiger_leadsource` DISABLE KEYS */;
INSERT INTO `vtiger_leadsource` VALUES (2,'Cold Call',1,99,1),(3,'Existing Customer',1,100,2),(4,'Self Generated',1,101,3),(5,'Employee',1,102,4),(6,'Partner',1,103,5),(7,'Public Relations',1,104,6),(8,'Direct Mail',1,105,7),(9,'Conference',1,106,8),(10,'Trade Show',1,107,9),(11,'Web Site',1,108,10),(12,'Word of mouth',1,109,11),(13,'Other',1,110,12);
/*!40000 ALTER TABLE `vtiger_leadsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadsource_seq`
--

DROP TABLE IF EXISTS `vtiger_leadsource_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadsource_seq`
--

LOCK TABLES `vtiger_leadsource_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_leadsource_seq` DISABLE KEYS */;
INSERT INTO `vtiger_leadsource_seq` VALUES (13);
/*!40000 ALTER TABLE `vtiger_leadsource_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadstage`
--

DROP TABLE IF EXISTS `vtiger_leadstage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL auto_increment,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`leadstageid`),
  UNIQUE KEY `leadstage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadstage`
--

LOCK TABLES `vtiger_leadstage` WRITE;
/*!40000 ALTER TABLE `vtiger_leadstage` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_leadstage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadstatus`
--

DROP TABLE IF EXISTS `vtiger_leadstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL auto_increment,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`leadstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadstatus`
--

LOCK TABLES `vtiger_leadstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_leadstatus` DISABLE KEYS */;
INSERT INTO `vtiger_leadstatus` VALUES (2,'Attempted to Contact',1,112,1),(3,'Cold',1,113,2),(4,'Contact in Future',1,114,3),(5,'Contacted',1,115,4),(6,'Hot',1,116,5),(7,'Junk Lead',1,117,6),(8,'Lost Lead',1,118,7),(9,'Not Contacted',1,119,8),(10,'Pre Qualified',1,120,9),(11,'Qualified',1,121,10),(12,'Warm',1,122,11);
/*!40000 ALTER TABLE `vtiger_leadstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_leadstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadstatus_seq`
--

LOCK TABLES `vtiger_leadstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_leadstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_leadstatus_seq` VALUES (12);
/*!40000 ALTER TABLE `vtiger_leadstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadsubdetails`
--

DROP TABLE IF EXISTS `vtiger_leadsubdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL default '0',
  `website` varchar(255) default NULL,
  `callornot` int(1) default '0',
  `readornot` int(1) default '0',
  `empct` int(10) default '0',
  PRIMARY KEY  (`leadsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_leadsubdetails`
--

LOCK TABLES `vtiger_leadsubdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_leadsubdetails` DISABLE KEYS */;
INSERT INTO `vtiger_leadsubdetails` VALUES (4,'',0,0,0);
/*!40000 ALTER TABLE `vtiger_leadsubdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_links`
--

DROP TABLE IF EXISTS `vtiger_links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_links` (
  `linkid` int(11) NOT NULL,
  `tabid` int(11) default NULL,
  `linktype` varchar(50) default NULL,
  `linklabel` varchar(50) default NULL,
  `linkurl` varchar(255) default NULL,
  `linkicon` varchar(100) default NULL,
  `sequence` int(11) default NULL,
  `handler_path` varchar(128) default NULL,
  `handler_class` varchar(50) default NULL,
  `handler` varchar(50) default NULL,
  PRIMARY KEY  (`linkid`),
  KEY `link_tabidtype_idx` (`tabid`,`linktype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_links`
--

LOCK TABLES `vtiger_links` WRITE;
/*!40000 ALTER TABLE `vtiger_links` DISABLE KEYS */;
INSERT INTO `vtiger_links` VALUES (1,6,'DETAILVIEWBASIC','LBL_ADD_NOTE','index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','themes/images/bookMark.gif',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(2,6,'DETAILVIEWBASIC','LBL_SHOW_ACCOUNT_HIERARCHY','index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$','',0,NULL,NULL,NULL),(3,7,'DETAILVIEWBASIC','LBL_ADD_NOTE','index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','themes/images/bookMark.gif',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(4,4,'DETAILVIEWBASIC','LBL_ADD_NOTE','index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','themes/images/bookMark.gif',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(5,0,'HEADERSCRIPT','Incoming Calls','modules/PBXManager/resources/PBXManagerJS.js','',0,'modules/PBXManager/PBXManager.php','PBXManager','checkLinkPermission'),(6,4,'DETAILVIEWSIDEBARWIDGET','Google Map','module=Google&view=Map&mode=showMap&viewtype=detail','',0,NULL,NULL,NULL),(7,7,'DETAILVIEWSIDEBARWIDGET','Google Map','module=Google&view=Map&mode=showMap&viewtype=detail','',0,NULL,NULL,NULL),(8,4,'LISTVIEWSIDEBARWIDGET','Google Contacts','module=Google&view=List&sourcemodule=Contacts','',0,NULL,NULL,NULL),(9,9,'LISTVIEWSIDEBARWIDGET','Google Calendar','module=Google&view=List&sourcemodule=Calendar','',0,NULL,NULL,NULL),(10,42,'HEADERSCRIPT','ModCommentsCommonHeaderScript','modules/ModComments/ModCommentsCommon.js','',0,NULL,NULL,NULL),(11,7,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(12,4,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(13,6,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(14,2,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(20,47,'DETAILVIEWBASIC','LBL_CHECK_STATUS','javascript:SMSNotifier.checkstatus($RECORD$)','themes/images/reload.gif',0,NULL,NULL,NULL),(22,47,'HEADERSCRIPT','SMSNotifierCommonJS','modules/SMSNotifier/SMSNotifierCommon.js','',0,NULL,NULL,NULL),(23,7,'LISTVIEWBASIC','Send SMS','SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');','',0,NULL,NULL,NULL),(24,7,'DETAILVIEWBASIC','Send SMS','javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');','',0,NULL,NULL,NULL),(25,4,'LISTVIEWBASIC','Send SMS','SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');','',0,NULL,NULL,NULL),(26,4,'DETAILVIEWBASIC','Send SMS','javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');','',0,NULL,NULL,NULL),(27,6,'LISTVIEWBASIC','Send SMS','SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');','',0,NULL,NULL,NULL),(28,6,'DETAILVIEWBASIC','Send SMS','javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');','',0,NULL,NULL,NULL),(29,44,'DETAILVIEWBASIC','Add Note','index.php?module=Documents&action=EditView&return_module=ProjectTask&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(30,44,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(31,45,'DETAILVIEWBASIC','Add Project Task','index.php?module=ProjectTask&action=EditView&projectid=$RECORD$&return_module=Project&return_action=DetailView&return_id=$RECORD$','',0,'modules/ProjectTask/ProjectTask.php','ProjectTask','isLinkPermitted'),(32,45,'DETAILVIEWBASIC','Add Note','index.php?module=Documents&action=EditView&return_module=Project&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','',1,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(33,45,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(34,2,'DASHBOARDWIDGET','History','index.php?module=Potentials&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(35,2,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Potentials&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(36,2,'DASHBOARDWIDGET','Funnel','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage','',3,NULL,NULL,NULL),(37,2,'DASHBOARDWIDGET','Potentials by Stage','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson','',4,NULL,NULL,NULL),(38,2,'DASHBOARDWIDGET','Pipelined Amount','index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson','',5,NULL,NULL,NULL),(39,2,'DASHBOARDWIDGET','Total Revenue','index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson','',6,NULL,NULL,NULL),(40,2,'DASHBOARDWIDGET','Top Potentials','index.php?module=Potentials&view=ShowWidget&name=TopPotentials','',7,NULL,NULL,NULL),(41,2,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Potentials&view=ShowWidget&name=OverdueActivities','',9,NULL,NULL,NULL),(42,6,'DASHBOARDWIDGET','History','index.php?module=Accounts&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(43,6,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Accounts&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(44,6,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Accounts&view=ShowWidget&name=OverdueActivities','',3,NULL,NULL,NULL),(45,4,'DASHBOARDWIDGET','History','index.php?module=Contacts&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(46,4,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Contacts&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(47,4,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Contacts&view=ShowWidget&name=OverdueActivities','',3,NULL,NULL,NULL),(48,7,'DASHBOARDWIDGET','History','index.php?module=Leads&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(49,7,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Leads&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(50,7,'DASHBOARDWIDGET','Leads by Status','index.php?module=Leads&view=ShowWidget&name=LeadsByStatus','',4,NULL,NULL,NULL),(51,7,'DASHBOARDWIDGET','Leads by Source','index.php?module=Leads&view=ShowWidget&name=LeadsBySource','',5,NULL,NULL,NULL),(52,7,'DASHBOARDWIDGET','Leads by Industry','index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry','',6,NULL,NULL,NULL),(53,7,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Leads&view=ShowWidget&name=OverdueActivities','',7,NULL,NULL,NULL),(54,13,'DASHBOARDWIDGET','Tickets by Status','index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus','',1,NULL,NULL,NULL),(55,13,'DASHBOARDWIDGET','Open Tickets','index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets','',2,NULL,NULL,NULL),(56,3,'DASHBOARDWIDGET','History','index.php?module=Home&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(57,3,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Home&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(58,3,'DASHBOARDWIDGET','Funnel','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage','',3,NULL,NULL,NULL),(59,3,'DASHBOARDWIDGET','Potentials by Stage','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson','',4,NULL,NULL,NULL),(60,3,'DASHBOARDWIDGET','Pipelined Amount','index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson','',5,NULL,NULL,NULL),(61,3,'DASHBOARDWIDGET','Total Revenue','index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson','',6,NULL,NULL,NULL),(62,3,'DASHBOARDWIDGET','Top Potentials','index.php?module=Potentials&view=ShowWidget&name=TopPotentials','',7,NULL,NULL,NULL),(63,3,'DASHBOARDWIDGET','Leads by Status','index.php?module=Leads&view=ShowWidget&name=LeadsByStatus','',10,NULL,NULL,NULL),(64,3,'DASHBOARDWIDGET','Leads by Source','index.php?module=Leads&view=ShowWidget&name=LeadsBySource','',11,NULL,NULL,NULL),(65,3,'DASHBOARDWIDGET','Leads by Industry','index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry','',12,NULL,NULL,NULL),(66,3,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Home&view=ShowWidget&name=OverdueActivities','',13,NULL,NULL,NULL),(67,3,'DASHBOARDWIDGET','Tickets by Status','index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus','',13,NULL,NULL,NULL),(68,3,'DASHBOARDWIDGET','Open Tickets','index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets','',14,NULL,NULL,NULL),(69,13,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(70,15,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(99,3,'DASHBOARDWIDGET','Key Metrics','index.php?module=Home&view=ShowWidget&name=KeyMetrics','',0,NULL,NULL,NULL),(100,3,'DASHBOARDWIDGET','Mini List','index.php?module=Home&view=ShowWidget&name=MiniList','',0,NULL,NULL,NULL),(101,3,'DASHBOARDWIDGET','Tag Cloud','index.php?module=Home&view=ShowWidget&name=TagCloud','',0,NULL,NULL,NULL),(102,2,'DASHBOARDWIDGET','Funnel Amount','index.php?module=Potentials&view=ShowWidget&name=FunnelAmount','',10,NULL,NULL,NULL),(103,3,'DASHBOARDWIDGET','Funnel Amount','index.php?module=Potentials&view=ShowWidget&name=FunnelAmount','',10,NULL,NULL,NULL),(104,3,'DASHBOARDWIDGET','Notebook','index.php?module=Home&view=ShowWidget&name=Notebook','',0,NULL,NULL,NULL),(105,6,'DETAILVIEWSIDEBARWIDGET','Google Map','module=Google&view=Map&mode=showMap&viewtype=detail','',0,NULL,NULL,NULL),(106,49,'HEADERSCRIPT','ExtensionStoreCommonHeaderScript','modules/ExtensionStore/ExtensionStore.js','',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vtiger_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_links_seq`
--

DROP TABLE IF EXISTS `vtiger_links_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_links_seq`
--

LOCK TABLES `vtiger_links_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_links_seq` DISABLE KEYS */;
INSERT INTO `vtiger_links_seq` VALUES (106);
/*!40000 ALTER TABLE `vtiger_links_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_loginhistory`
--

DROP TABLE IF EXISTS `vtiger_loginhistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `login_time` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status` varchar(25) default NULL,
  PRIMARY KEY  (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_loginhistory`
--

LOCK TABLES `vtiger_loginhistory` WRITE;
/*!40000 ALTER TABLE `vtiger_loginhistory` DISABLE KEYS */;
INSERT INTO `vtiger_loginhistory` VALUES (1,'admin','127.0.0.1','0000-00-00 00:00:00','2015-01-12 18:56:05','Signed in');
/*!40000 ALTER TABLE `vtiger_loginhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mail_accounts`
--

DROP TABLE IF EXISTS `vtiger_mail_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) default NULL,
  `mail_id` varchar(50) default NULL,
  `account_name` varchar(50) default NULL,
  `mail_protocol` varchar(20) default NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(250) NOT NULL,
  `mail_servername` varchar(50) default NULL,
  `box_refresh` int(10) default NULL,
  `mails_per_page` int(10) default NULL,
  `ssltype` varchar(50) default NULL,
  `sslmeth` varchar(50) default NULL,
  `int_mailer` int(1) default '0',
  `status` varchar(10) default NULL,
  `set_default` int(2) default NULL,
  `sent_folder` varchar(50) default NULL,
  PRIMARY KEY  (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mail_accounts`
--

LOCK TABLES `vtiger_mail_accounts` WRITE;
/*!40000 ALTER TABLE `vtiger_mail_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailmanager_mailattachments`
--

DROP TABLE IF EXISTS `vtiger_mailmanager_mailattachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailmanager_mailattachments` (
  `userid` int(11) default NULL,
  `muid` int(11) default NULL,
  `aname` varchar(100) default NULL,
  `lastsavedtime` int(11) default NULL,
  `attachid` int(19) NOT NULL,
  `path` varchar(200) NOT NULL,
  `cid` varchar(50) default NULL,
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailmanager_mailattachments`
--

LOCK TABLES `vtiger_mailmanager_mailattachments` WRITE;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailmanager_mailrecord`
--

DROP TABLE IF EXISTS `vtiger_mailmanager_mailrecord`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailmanager_mailrecord` (
  `userid` int(11) default NULL,
  `mfrom` varchar(255) default NULL,
  `mto` varchar(255) default NULL,
  `mcc` varchar(500) default NULL,
  `mbcc` varchar(500) default NULL,
  `mdate` varchar(20) default NULL,
  `msubject` varchar(500) default NULL,
  `mbody` text,
  `mcharset` varchar(10) default NULL,
  `misbodyhtml` int(1) default NULL,
  `mplainmessage` int(1) default NULL,
  `mhtmlmessage` int(1) default NULL,
  `muniqueid` varchar(500) default NULL,
  `mbodyparsed` int(1) default NULL,
  `muid` int(11) default NULL,
  `lastsavedtime` int(11) default NULL,
  KEY `userid_lastsavedtime_idx` (`userid`,`lastsavedtime`),
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailmanager_mailrecord`
--

LOCK TABLES `vtiger_mailmanager_mailrecord` WRITE;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailmanager_mailrel`
--

DROP TABLE IF EXISTS `vtiger_mailmanager_mailrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailmanager_mailrel` (
  `mailuid` varchar(999) default NULL,
  `crmid` int(11) default NULL,
  `emailid` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailmanager_mailrel`
--

LOCK TABLES `vtiger_mailmanager_mailrel` WRITE;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner`
--

DROP TABLE IF EXISTS `vtiger_mailscanner`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL auto_increment,
  `scannername` varchar(30) default NULL,
  `server` varchar(100) default NULL,
  `protocol` varchar(10) default NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `ssltype` varchar(10) default NULL,
  `sslmethod` varchar(30) default NULL,
  `connecturl` varchar(255) default NULL,
  `searchfor` varchar(10) default NULL,
  `markas` varchar(10) default NULL,
  `isvalid` int(1) default NULL,
  `time_zone` varchar(10) default NULL,
  PRIMARY KEY  (`scannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailscanner`
--

LOCK TABLES `vtiger_mailscanner` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_actions`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_actions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL auto_increment,
  `scannerid` int(11) default NULL,
  `actiontype` varchar(10) default NULL,
  `module` varchar(30) default NULL,
  `lookup` varchar(30) default NULL,
  `sequence` int(11) default NULL,
  PRIMARY KEY  (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailscanner_actions`
--

LOCK TABLES `vtiger_mailscanner_actions` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_folders`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_folders`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL auto_increment,
  `scannerid` int(11) default NULL,
  `foldername` varchar(255) default NULL,
  `lastscan` varchar(30) default NULL,
  `rescan` int(1) default NULL,
  `enabled` int(1) default NULL,
  PRIMARY KEY  (`folderid`),
  KEY `folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailscanner_folders`
--

LOCK TABLES `vtiger_mailscanner_folders` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_ids`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_ids`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailscanner_ids` (
  `scannerid` int(11) default NULL,
  `messageid` varchar(512) default NULL,
  `crmid` int(11) default NULL,
  KEY `scanner_message_ids_idx` (`scannerid`,`messageid`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailscanner_ids`
--

LOCK TABLES `vtiger_mailscanner_ids` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_ruleactions`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_ruleactions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) default NULL,
  `actionid` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailscanner_ruleactions`
--

LOCK TABLES `vtiger_mailscanner_ruleactions` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_ruleactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_ruleactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_rules`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_rules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL auto_increment,
  `scannerid` int(11) default NULL,
  `fromaddress` varchar(255) default NULL,
  `toaddress` varchar(255) default NULL,
  `subjectop` varchar(20) default NULL,
  `subject` varchar(255) default NULL,
  `bodyop` varchar(20) default NULL,
  `body` varchar(255) default NULL,
  `matchusing` varchar(5) default NULL,
  `sequence` int(11) default NULL,
  `assigned_to` int(10) default NULL,
  `cc` varchar(255) default NULL,
  `bcc` varchar(255) default NULL,
  PRIMARY KEY  (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mailscanner_rules`
--

LOCK TABLES `vtiger_mailscanner_rules` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_manufacturer`
--

DROP TABLE IF EXISTS `vtiger_manufacturer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL auto_increment,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`manufacturerid`),
  UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_manufacturer`
--

LOCK TABLES `vtiger_manufacturer` WRITE;
/*!40000 ALTER TABLE `vtiger_manufacturer` DISABLE KEYS */;
INSERT INTO `vtiger_manufacturer` VALUES (2,'AltvetPet Inc.',1,124,1),(3,'LexPon Inc.',1,125,2),(4,'MetBeat Corp',1,126,3);
/*!40000 ALTER TABLE `vtiger_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_manufacturer_seq`
--

DROP TABLE IF EXISTS `vtiger_manufacturer_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_manufacturer_seq`
--

LOCK TABLES `vtiger_manufacturer_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_manufacturer_seq` DISABLE KEYS */;
INSERT INTO `vtiger_manufacturer_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_manufacturer_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mobile_alerts`
--

DROP TABLE IF EXISTS `vtiger_mobile_alerts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_mobile_alerts` (
  `id` int(11) NOT NULL auto_increment,
  `handler_path` varchar(500) default NULL,
  `handler_class` varchar(50) default NULL,
  `sequence` int(11) default NULL,
  `deleted` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_mobile_alerts`
--

LOCK TABLES `vtiger_mobile_alerts` WRITE;
/*!40000 ALTER TABLE `vtiger_mobile_alerts` DISABLE KEYS */;
INSERT INTO `vtiger_mobile_alerts` VALUES (1,'modules/Mobile/api/ws/models/alerts/IdleTicketsOfMine.php','Mobile_WS_AlertModel_IdleTicketsOfMine',NULL,0),(2,'modules/Mobile/api/ws/models/alerts/NewTicketOfMine.php','Mobile_WS_AlertModel_NewTicketOfMine',NULL,0),(3,'modules/Mobile/api/ws/models/alerts/PendingTicketsOfMine.php','Mobile_WS_AlertModel_PendingTicketsOfMine',NULL,0),(4,'modules/Mobile/api/ws/models/alerts/PotentialsDueIn5Days.php','Mobile_WS_AlertModel_PotentialsDueIn5Days',NULL,0),(5,'modules/Mobile/api/ws/models/alerts/EventsOfMineToday.php','Mobile_WS_AlertModel_EventsOfMineToday',NULL,0),(6,'modules/Mobile/api/ws/models/alerts/ProjectTasksOfMine.php','Mobile_WS_AlertModel_ProjectTasksOfMine',NULL,0),(7,'modules/Mobile/api/ws/models/alerts/Projects.php','Mobile_WS_AlertModel_Projects',NULL,0);
/*!40000 ALTER TABLE `vtiger_mobile_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modcomments`
--

DROP TABLE IF EXISTS `vtiger_modcomments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modcomments` (
  `modcommentsid` int(11) default NULL,
  `commentcontent` text,
  `related_to` int(19) default NULL,
  `parent_comments` varchar(100) default NULL,
  `customer` varchar(100) default NULL,
  `userid` varchar(100) default NULL,
  `reasontoedit` varchar(100) default NULL,
  KEY `relatedto_idx` (`related_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modcomments`
--

LOCK TABLES `vtiger_modcomments` WRITE;
/*!40000 ALTER TABLE `vtiger_modcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_modcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modcommentscf`
--

DROP TABLE IF EXISTS `vtiger_modcommentscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modcommentscf` (
  `modcommentsid` int(11) NOT NULL,
  PRIMARY KEY  (`modcommentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modcommentscf`
--

LOCK TABLES `vtiger_modcommentscf` WRITE;
/*!40000 ALTER TABLE `vtiger_modcommentscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_modcommentscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modentity_num`
--

DROP TABLE IF EXISTS `vtiger_modentity_num`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL default '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY  (`num_id`),
  UNIQUE KEY `num_idx` (`num_id`),
  KEY `semodule_active_idx` (`semodule`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modentity_num`
--

LOCK TABLES `vtiger_modentity_num` WRITE;
/*!40000 ALTER TABLE `vtiger_modentity_num` DISABLE KEYS */;
INSERT INTO `vtiger_modentity_num` VALUES (1,'Leads','LEA','1','2','1'),(2,'Accounts','ACC','1','2','1'),(3,'Campaigns','CAM','1','2','1'),(4,'Contacts','CON','1','2','1'),(5,'Potentials','POT','1','2','1'),(6,'HelpDesk','TT','1','2','1'),(7,'Quotes','QUO','1','1','1'),(8,'SalesOrder','SO','1','1','1'),(9,'PurchaseOrder','PO','1','1','1'),(10,'Invoice','INV','1','1','1'),(11,'Products','PRO','1','2','1'),(12,'Vendors','VEN','1','1','1'),(13,'PriceBooks','PB','1','1','1'),(14,'Faq','FAQ','1','1','1'),(15,'Documents','DOC','1','1','1'),(16,'ServiceContracts','SERCON','1','2','1'),(17,'Services','SER','1','2','1'),(18,'Assets','ASSET','1','2','1'),(19,'ProjectMilestone','PM','1','1','1'),(20,'ProjectTask','PT','1','1','1'),(21,'Project','PROJ','1','2','1');
/*!40000 ALTER TABLE `vtiger_modentity_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modentity_num_seq`
--

DROP TABLE IF EXISTS `vtiger_modentity_num_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modentity_num_seq`
--

LOCK TABLES `vtiger_modentity_num_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_modentity_num_seq` DISABLE KEYS */;
INSERT INTO `vtiger_modentity_num_seq` VALUES (21);
/*!40000 ALTER TABLE `vtiger_modentity_num_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_basic`
--

DROP TABLE IF EXISTS `vtiger_modtracker_basic`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modtracker_basic` (
  `id` int(20) NOT NULL,
  `crmid` int(20) default NULL,
  `module` varchar(50) default NULL,
  `whodid` int(20) default NULL,
  `changedon` datetime default NULL,
  `status` int(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `crmidx` (`crmid`),
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modtracker_basic`
--

LOCK TABLES `vtiger_modtracker_basic` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_basic` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_basic` VALUES (1,2,'Products',1,'2015-01-13 05:28:35',2),(2,3,'Campaigns',1,'2015-01-13 05:32:02',2),(3,4,'Leads',1,'2015-01-13 05:34:45',2),(4,4,'Leads',1,'2015-01-13 05:35:57',0),(5,5,'Accounts',1,'2015-01-13 05:36:47',2),(6,6,'Contacts',1,'2015-01-13 05:36:47',2),(7,7,'Potentials',1,'2015-01-13 05:41:20',2),(8,8,'Project',1,'2015-01-13 05:44:59',2),(9,9,'ServiceContracts',1,'2015-01-13 06:10:25',2),(10,10,'Services',1,'2015-01-13 06:59:17',2),(11,10,'Services',1,'2015-01-13 06:59:59',0),(12,11,'HelpDesk',1,'2015-01-13 07:10:52',2),(13,10,'Services',1,'2015-01-13 07:10:53',4),(14,12,'Assets',1,'2015-01-13 07:32:37',2);
/*!40000 ALTER TABLE `vtiger_modtracker_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_basic_seq`
--

DROP TABLE IF EXISTS `vtiger_modtracker_basic_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modtracker_basic_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modtracker_basic_seq`
--

LOCK TABLES `vtiger_modtracker_basic_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_basic_seq` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_basic_seq` VALUES (14);
/*!40000 ALTER TABLE `vtiger_modtracker_basic_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_detail`
--

DROP TABLE IF EXISTS `vtiger_modtracker_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modtracker_detail` (
  `id` int(11) default NULL,
  `fieldname` varchar(100) default NULL,
  `prevalue` text,
  `postvalue` text,
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modtracker_detail`
--

LOCK TABLES `vtiger_modtracker_detail` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_detail` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_detail` VALUES (1,'productname',NULL,'ucin'),(1,'product_no',NULL,'PRO1'),(1,'discontinued',NULL,'1'),(1,'createdtime',NULL,'2015-01-13 05:28:35'),(1,'modifiedby',NULL,'1'),(1,'unit_price',NULL,'10000.00000000'),(1,'commissionrate',NULL,'0.000'),(1,'qty_per_unit',NULL,'0.00'),(1,'qtyinstock',NULL,'100.000'),(1,'assigned_user_id',NULL,'1'),(1,'record_id',NULL,'2'),(1,'record_module',NULL,'Products'),(2,'campaignname',NULL,'ucin camp'),(2,'campaign_no',NULL,'CAM1'),(2,'campaigntype',NULL,'Webinar'),(2,'product_id',NULL,'2'),(2,'campaignstatus',NULL,'Planning'),(2,'closingdate',NULL,'2015-01-31'),(2,'assigned_user_id',NULL,'1'),(2,'numsent',NULL,'19'),(2,'sponsor',NULL,'sponsor creatorhome'),(2,'targetsize',NULL,'100'),(2,'createdtime',NULL,'2015-01-13 05:32:02'),(2,'modifiedby',NULL,'1'),(2,'expectedresponse',NULL,'Average'),(2,'expectedrevenue',NULL,'100000.00000000'),(2,'budgetcost',NULL,'880.00000000'),(2,'actualcost',NULL,'990.00000000'),(2,'expectedresponsecount',NULL,'200'),(2,'expectedsalescount',NULL,'10'),(2,'expectedroi',NULL,'99.00000000'),(2,'actualresponsecount',NULL,'188'),(2,'actualsalescount',NULL,'8'),(2,'actualroi',NULL,'88.00000000'),(2,'description',NULL,'campaiin ucin'),(2,'record_id',NULL,'3'),(2,'record_module',NULL,'Campaigns'),(3,'lead_no',NULL,'LEA1'),(3,'phone',NULL,'02166039606'),(3,'lastname',NULL,'sar'),(3,'mobile',NULL,'1893006'),(3,'company',NULL,'3ucs'),(3,'designation',NULL,'desination'),(3,'leadstatus',NULL,'Attempted to Contact'),(3,'annualrevenue',NULL,'78900.00000000'),(3,'rating',NULL,'Acquired'),(3,'noofemployees',NULL,'108'),(3,'assigned_user_id',NULL,'1'),(3,'createdtime',NULL,'2015-01-13 05:34:45'),(3,'modifiedby',NULL,'1'),(3,'created_user_id',NULL,'1'),(3,'record_id',NULL,'4'),(3,'record_module',NULL,'Leads'),(4,'lane','','shanghai'),(5,'accountname',NULL,'3ucs'),(5,'account_no',NULL,'ACC1'),(5,'phone',NULL,'02166039606'),(5,'employees',NULL,'108'),(5,'rating',NULL,'Acquired'),(5,'annual_revenue',NULL,'78900.00000000'),(5,'assigned_user_id',NULL,'1'),(5,'createdtime',NULL,'2015-01-13 05:36:47'),(5,'modifiedby',NULL,'1'),(5,'created_user_id',NULL,'1'),(5,'bill_street',NULL,'shanghai'),(5,'ship_street',NULL,'shanghai'),(5,'record_id',NULL,'5'),(5,'record_module',NULL,'Accounts'),(6,'contact_no',NULL,'CON1'),(6,'lastname',NULL,'sar'),(6,'phone',NULL,'02166039606'),(6,'account_id',NULL,'5'),(6,'mobile',NULL,'1893006'),(6,'title',NULL,'desination'),(6,'assigned_user_id',NULL,'1'),(6,'createdtime',NULL,'2015-01-13 05:36:47'),(6,'modifiedby',NULL,'1'),(6,'created_user_id',NULL,'1'),(6,'mailingstreet',NULL,'shanghai'),(6,'record_id',NULL,'6'),(6,'record_module',NULL,'Contacts'),(7,'potentialname',NULL,'callcenter'),(7,'potential_no',NULL,'POT1'),(7,'amount',NULL,'1.00000000'),(7,'related_to',NULL,'5'),(7,'closingdate',NULL,'2015-02-07'),(7,'opportunity_type',NULL,'New Business'),(7,'leadsource',NULL,'Direct Mail'),(7,'sales_stage',NULL,'Prospecting'),(7,'assigned_user_id',NULL,'1'),(7,'probability',NULL,'49.000'),(7,'campaignid',NULL,'3'),(7,'createdtime',NULL,'2015-01-13 05:41:19'),(7,'modifiedby',NULL,'1'),(7,'forecast_amount',NULL,'0.49000000'),(7,'contact_id',NULL,'6'),(7,'created_user_id',NULL,'1'),(7,'record_id',NULL,'7'),(7,'record_module',NULL,'Potentials'),(8,'projectname',NULL,'cc setup'),(8,'startdate',NULL,'2015-01-16'),(8,'targetenddate',NULL,'2015-01-18'),(8,'actualenddate',NULL,'2015-01-17'),(8,'projectstatus',NULL,'in progress'),(8,'projecttype',NULL,'operative'),(8,'linktoaccountscontacts',NULL,'5'),(8,'assigned_user_id',NULL,'1'),(8,'project_no',NULL,'PROJ1'),(8,'projectpriority',NULL,'normal'),(8,'progress',NULL,'20%'),(8,'createdtime',NULL,'2015-01-13 05:44:59'),(8,'modifiedby',NULL,'1'),(8,'created_user_id',NULL,'1'),(8,'record_id',NULL,'8'),(8,'record_module',NULL,'Project'),(9,'assigned_user_id',NULL,'1'),(9,'createdtime',NULL,'2015-01-13 06:10:25'),(9,'start_date',NULL,'2015-01-14'),(9,'sc_related_to',NULL,'6'),(9,'tracking_unit',NULL,'Hours'),(9,'total_units',NULL,'2.00'),(9,'used_units',NULL,'0.00'),(9,'subject',NULL,'contract ucin'),(9,'due_date',NULL,'2015-01-14'),(9,'planned_duration',NULL,'1'),(9,'contract_status',NULL,'In Progress'),(9,'contract_priority',NULL,'Normal'),(9,'contract_type',NULL,'Services'),(9,'contract_no',NULL,'SERCON1'),(9,'modifiedby',NULL,'1'),(9,'record_id',NULL,'9'),(9,'record_module',NULL,'ServiceContracts'),(10,'servicename',NULL,'database check'),(10,'service_no',NULL,'SER1'),(10,'discontinued',NULL,'1'),(10,'sales_start_date',NULL,'2015-01-14'),(10,'sales_end_date',NULL,'2015-01-17'),(10,'createdtime',NULL,'2015-01-13 06:59:17'),(10,'modifiedby',NULL,'1'),(10,'service_usageunit',NULL,'Incidents'),(10,'qty_per_unit',NULL,'0.00'),(10,'assigned_user_id',NULL,'1'),(10,'servicecategory',NULL,'Installation'),(10,'unit_price',NULL,'0.00000000'),(10,'commissionrate',NULL,'0.000'),(10,'record_id',NULL,'10'),(10,'record_module',NULL,'Services'),(11,'servicecategory','Installation','Support'),(12,'ticket_no',NULL,'TT1'),(12,'assigned_user_id',NULL,'1'),(12,'parent_id',NULL,'5'),(12,'ticketpriorities',NULL,'Low'),(12,'product_id',NULL,'2'),(12,'ticketseverities',NULL,'Feature'),(12,'ticketstatus',NULL,'In Progress'),(12,'ticketcategories',NULL,'Small Problem'),(12,'hours',NULL,'0.00000000'),(12,'days',NULL,'0.00000000'),(12,'createdtime',NULL,'2015-01-13 07:10:52'),(12,'modifiedby',NULL,'1'),(12,'ticket_title',NULL,'anniversary'),(12,'contact_id',NULL,'6'),(12,'created_user_id',NULL,'1'),(12,'record_id',NULL,'11'),(12,'record_module',NULL,'HelpDesk'),(14,'asset_no',NULL,'ASSET1'),(14,'product',NULL,'2'),(14,'serialnumber',NULL,'u123456'),(14,'datesold',NULL,'2015-01-11'),(14,'dateinservice',NULL,'2015-01-12'),(14,'assetstatus',NULL,'In Service'),(14,'assigned_user_id',NULL,'1'),(14,'assetname',NULL,'assetname'),(14,'account',NULL,'5'),(14,'createdtime',NULL,'2015-01-13 07:32:37'),(14,'modifiedby',NULL,'1'),(14,'record_id',NULL,'12'),(14,'record_module',NULL,'Assets');
/*!40000 ALTER TABLE `vtiger_modtracker_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_relations`
--

DROP TABLE IF EXISTS `vtiger_modtracker_relations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modtracker_relations` (
  `id` int(19) NOT NULL,
  `targetmodule` varchar(100) NOT NULL,
  `targetid` int(19) NOT NULL,
  `changedon` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modtracker_relations`
--

LOCK TABLES `vtiger_modtracker_relations` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_relations` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_relations` VALUES (13,'HelpDesk',11,'2015-01-13 07:10:53');
/*!40000 ALTER TABLE `vtiger_modtracker_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_tabs`
--

DROP TABLE IF EXISTS `vtiger_modtracker_tabs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_modtracker_tabs` (
  `tabid` int(11) NOT NULL,
  `visible` int(11) default '0',
  PRIMARY KEY  (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_modtracker_tabs`
--

LOCK TABLES `vtiger_modtracker_tabs` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_tabs` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_tabs` VALUES (2,1),(4,1),(6,1),(7,1),(8,1),(9,1),(10,1),(13,1),(14,1),(15,1),(16,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(26,1),(28,1),(34,1),(35,1),(36,1),(38,1),(42,1),(43,1),(44,1),(45,1),(47,1);
/*!40000 ALTER TABLE `vtiger_modtracker_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_module_dashboard_widgets`
--

DROP TABLE IF EXISTS `vtiger_module_dashboard_widgets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_module_dashboard_widgets` (
  `id` int(19) NOT NULL auto_increment,
  `linkid` int(19) default NULL,
  `userid` int(19) default NULL,
  `filterid` int(19) default NULL,
  `title` varchar(100) default NULL,
  `data` text,
  `position` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_module_dashboard_widgets`
--

LOCK TABLES `vtiger_module_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `vtiger_module_dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_module_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_no_of_currency_decimals`
--

DROP TABLE IF EXISTS `vtiger_no_of_currency_decimals`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_no_of_currency_decimals` (
  `no_of_currency_decimalsid` int(11) NOT NULL auto_increment,
  `no_of_currency_decimals` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`no_of_currency_decimalsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_no_of_currency_decimals`
--

LOCK TABLES `vtiger_no_of_currency_decimals` WRITE;
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals` DISABLE KEYS */;
INSERT INTO `vtiger_no_of_currency_decimals` VALUES (2,'2',2,1),(3,'3',3,1),(4,'4',4,1),(5,'5',5,1);
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_no_of_currency_decimals_seq`
--

DROP TABLE IF EXISTS `vtiger_no_of_currency_decimals_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_no_of_currency_decimals_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_no_of_currency_decimals_seq`
--

LOCK TABLES `vtiger_no_of_currency_decimals_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals_seq` DISABLE KEYS */;
INSERT INTO `vtiger_no_of_currency_decimals_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notebook_contents`
--

DROP TABLE IF EXISTS `vtiger_notebook_contents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_notebook_contents`
--

LOCK TABLES `vtiger_notebook_contents` WRITE;
/*!40000 ALTER TABLE `vtiger_notebook_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_notebook_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notes`
--

DROP TABLE IF EXISTS `vtiger_notes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_notes` (
  `notesid` int(19) NOT NULL default '0',
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) default NULL,
  `notecontent` text,
  `folderid` int(19) NOT NULL default '1',
  `filetype` varchar(50) default NULL,
  `filelocationtype` varchar(5) default NULL,
  `filedownloadcount` int(19) default NULL,
  `filestatus` int(19) default NULL,
  `filesize` int(19) NOT NULL default '0',
  `fileversion` varchar(50) default NULL,
  PRIMARY KEY  (`notesid`),
  KEY `notes_title_idx` (`title`),
  KEY `notes_notesid_idx` (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_notes`
--

LOCK TABLES `vtiger_notes` WRITE;
/*!40000 ALTER TABLE `vtiger_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notescf`
--

DROP TABLE IF EXISTS `vtiger_notescf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_notescf` (
  `notesid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_notescf`
--

LOCK TABLES `vtiger_notescf` WRITE;
/*!40000 ALTER TABLE `vtiger_notescf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_notescf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notificationscheduler`
--

DROP TABLE IF EXISTS `vtiger_notificationscheduler`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL auto_increment,
  `schedulednotificationname` varchar(200) default NULL,
  `active` int(1) default NULL,
  `notificationsubject` varchar(200) default NULL,
  `notificationbody` text,
  `label` varchar(50) default NULL,
  `type` varchar(10) default NULL,
  PRIMARY KEY  (`schedulednotificationid`),
  UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_notificationscheduler`
--

LOCK TABLES `vtiger_notificationscheduler` WRITE;
/*!40000 ALTER TABLE `vtiger_notificationscheduler` DISABLE KEYS */;
INSERT INTO `vtiger_notificationscheduler` VALUES (1,'LBL_TASK_NOTIFICATION_DESCRITPION',1,'Task Delay Notification','Tasks delayed beyond 24 hrs ','LBL_TASK_NOTIFICATION',NULL),(2,'LBL_BIG_DEAL_DESCRIPTION',1,'Big Deal notification','Success! A big deal has been won! ','LBL_BIG_DEAL',NULL),(3,'LBL_TICKETS_DESCRIPTION',1,'Pending Tickets notification','Ticket pending please ','LBL_PENDING_TICKETS',NULL),(4,'LBL_MANY_TICKETS_DESCRIPTION',1,'Too many tickets Notification','Too many tickets pending against this entity ','LBL_MANY_TICKETS',NULL),(5,'LBL_START_DESCRIPTION',1,'Support Start Notification','10','LBL_START_NOTIFICATION','select'),(6,'LBL_SUPPORT_DESCRIPTION',1,'Support ending please','11','LBL_SUPPORT_NOTICIATION','select'),(7,'LBL_SUPPORT_DESCRIPTION_MONTH',1,'Support ending please','12','LBL_SUPPORT_NOTICIATION_MONTH','select'),(8,'LBL_ACTIVITY_REMINDER_DESCRIPTION',1,'Activity Reminder Notification','This is a reminder notification for the Activity','LBL_ACTIVITY_NOTIFICATION',NULL);
/*!40000 ALTER TABLE `vtiger_notificationscheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notificationscheduler_seq`
--

DROP TABLE IF EXISTS `vtiger_notificationscheduler_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_notificationscheduler_seq`
--

LOCK TABLES `vtiger_notificationscheduler_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_notificationscheduler_seq` DISABLE KEYS */;
INSERT INTO `vtiger_notificationscheduler_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_notificationscheduler_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_opportunity_type`
--

DROP TABLE IF EXISTS `vtiger_opportunity_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL auto_increment,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`opptypeid`),
  UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_opportunity_type`
--

LOCK TABLES `vtiger_opportunity_type` WRITE;
/*!40000 ALTER TABLE `vtiger_opportunity_type` DISABLE KEYS */;
INSERT INTO `vtiger_opportunity_type` VALUES (2,'Existing Business',1,128,1),(3,'New Business',1,129,2);
/*!40000 ALTER TABLE `vtiger_opportunity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_opportunity_type_seq`
--

DROP TABLE IF EXISTS `vtiger_opportunity_type_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_opportunity_type_seq`
--

LOCK TABLES `vtiger_opportunity_type_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_opportunity_type_seq` DISABLE KEYS */;
INSERT INTO `vtiger_opportunity_type_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_opportunity_type_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_opportunitystage`
--

DROP TABLE IF EXISTS `vtiger_opportunitystage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL auto_increment,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  `probability` decimal(3,2) default '0.00',
  PRIMARY KEY  (`potstageid`),
  UNIQUE KEY `opportunitystage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_opportunitystage`
--

LOCK TABLES `vtiger_opportunitystage` WRITE;
/*!40000 ALTER TABLE `vtiger_opportunitystage` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_opportunitystage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_org_share_action2tab`
--

DROP TABLE IF EXISTS `vtiger_org_share_action2tab`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  PRIMARY KEY  (`share_action_id`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_org_share_action2tab`
--

LOCK TABLES `vtiger_org_share_action2tab` WRITE;
/*!40000 ALTER TABLE `vtiger_org_share_action2tab` DISABLE KEYS */;
INSERT INTO `vtiger_org_share_action2tab` VALUES (0,2),(0,4),(0,6),(0,7),(0,8),(0,9),(0,10),(0,13),(0,14),(0,16),(0,18),(0,20),(0,21),(0,22),(0,23),(0,26),(0,34),(0,35),(0,36),(0,38),(0,42),(0,43),(0,44),(0,45),(0,47),(1,2),(1,4),(1,6),(1,7),(1,8),(1,9),(1,10),(1,13),(1,14),(1,16),(1,18),(1,20),(1,21),(1,22),(1,23),(1,26),(1,34),(1,35),(1,36),(1,38),(1,42),(1,43),(1,44),(1,45),(1,47),(2,2),(2,4),(2,6),(2,7),(2,8),(2,9),(2,10),(2,13),(2,14),(2,16),(2,18),(2,20),(2,21),(2,22),(2,23),(2,26),(2,34),(2,35),(2,36),(2,38),(2,42),(2,43),(2,44),(2,45),(2,47),(3,2),(3,4),(3,6),(3,7),(3,8),(3,9),(3,10),(3,13),(3,14),(3,16),(3,18),(3,20),(3,21),(3,22),(3,23),(3,26),(3,34),(3,35),(3,36),(3,38),(3,42),(3,43),(3,44),(3,45),(3,47);
/*!40000 ALTER TABLE `vtiger_org_share_action2tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_org_share_action_mapping`
--

DROP TABLE IF EXISTS `vtiger_org_share_action_mapping`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) default NULL,
  PRIMARY KEY  (`share_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_org_share_action_mapping`
--

LOCK TABLES `vtiger_org_share_action_mapping` WRITE;
/*!40000 ALTER TABLE `vtiger_org_share_action_mapping` DISABLE KEYS */;
INSERT INTO `vtiger_org_share_action_mapping` VALUES (0,'Public: Read Only'),(1,'Public: Read, Create/Edit'),(2,'Public: Read, Create/Edit, Delete'),(3,'Private'),(4,'Hide Details'),(5,'Hide Details and Add Events'),(6,'Show Details'),(7,'Show Details and Add Events');
/*!40000 ALTER TABLE `vtiger_org_share_action_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_organizationdetails`
--

DROP TABLE IF EXISTS `vtiger_organizationdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_organizationdetails` (
  `organization_id` int(11) NOT NULL,
  `organizationname` varchar(60) default NULL,
  `address` varchar(150) default NULL,
  `city` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `code` varchar(30) default NULL,
  `phone` varchar(30) default NULL,
  `fax` varchar(30) default NULL,
  `website` varchar(100) default NULL,
  `logoname` varchar(50) default NULL,
  `logo` text,
  `vatid` varchar(100) default NULL,
  PRIMARY KEY  (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_organizationdetails`
--

LOCK TABLES `vtiger_organizationdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_organizationdetails` DISABLE KEYS */;
INSERT INTO `vtiger_organizationdetails` VALUES (1,'vtiger','95, 12th Main Road, 3rd Block, Rajajinagar','Bangalore','Karnataka','India','560010','+91 9243602352','+91 9243602352','www.vtiger.com','vtiger-crm-logo.png',NULL,'1234-5678-9012');
/*!40000 ALTER TABLE `vtiger_organizationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_organizationdetails_seq`
--

DROP TABLE IF EXISTS `vtiger_organizationdetails_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_organizationdetails_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_organizationdetails_seq`
--

LOCK TABLES `vtiger_organizationdetails_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_organizationdetails_seq` DISABLE KEYS */;
INSERT INTO `vtiger_organizationdetails_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_organizationdetails_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_othereventduration`
--

DROP TABLE IF EXISTS `vtiger_othereventduration`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_othereventduration` (
  `othereventdurationid` int(11) NOT NULL auto_increment,
  `othereventduration` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`othereventdurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_othereventduration`
--

LOCK TABLES `vtiger_othereventduration` WRITE;
/*!40000 ALTER TABLE `vtiger_othereventduration` DISABLE KEYS */;
INSERT INTO `vtiger_othereventduration` VALUES (1,'5',1,1),(2,'10',2,1),(3,'30',3,1),(4,'60',4,1),(5,'120',5,1);
/*!40000 ALTER TABLE `vtiger_othereventduration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_othereventduration_seq`
--

DROP TABLE IF EXISTS `vtiger_othereventduration_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_othereventduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_othereventduration_seq`
--

LOCK TABLES `vtiger_othereventduration_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_othereventduration_seq` DISABLE KEYS */;
INSERT INTO `vtiger_othereventduration_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_othereventduration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_parenttab`
--

DROP TABLE IF EXISTS `vtiger_parenttab`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL default '0',
  PRIMARY KEY  (`parenttabid`),
  KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_parenttab`
--

LOCK TABLES `vtiger_parenttab` WRITE;
/*!40000 ALTER TABLE `vtiger_parenttab` DISABLE KEYS */;
INSERT INTO `vtiger_parenttab` VALUES (1,'My Home Page',1,0),(2,'Marketing',2,0),(3,'Sales',3,0),(4,'Support',4,0),(5,'Analytics',5,0),(6,'Inventory',6,0),(7,'Tools',7,0),(8,'Settings',8,0);
/*!40000 ALTER TABLE `vtiger_parenttab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_parenttabrel`
--

DROP TABLE IF EXISTS `vtiger_parenttabrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL,
  KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_parenttabrel`
--

LOCK TABLES `vtiger_parenttabrel` WRITE;
/*!40000 ALTER TABLE `vtiger_parenttabrel` DISABLE KEYS */;
INSERT INTO `vtiger_parenttabrel` VALUES (1,9,2),(1,28,4),(1,3,1),(3,7,1),(3,6,2),(3,4,3),(3,2,4),(3,20,5),(3,22,6),(3,23,7),(3,19,8),(3,8,9),(4,13,1),(4,15,2),(4,6,3),(4,4,4),(4,8,5),(5,1,2),(5,25,1),(6,14,1),(6,18,2),(6,19,3),(6,21,4),(6,22,5),(6,20,6),(6,23,7),(7,24,1),(7,27,2),(7,8,3),(2,26,1),(2,6,2),(2,4,3),(2,28,4),(4,28,7),(2,7,5),(2,9,6),(4,9,8),(2,8,8),(3,9,11),(7,31,4),(7,31,5),(7,34,6),(7,34,7),(4,35,9),(4,35,10),(6,36,8),(6,36,9),(6,38,10),(6,38,11),(7,40,8),(7,40,9),(7,42,10),(7,42,11),(4,43,11),(4,43,12),(4,44,13),(4,44,14),(4,45,15),(4,45,16),(7,46,12),(7,46,13),(7,47,14),(7,47,15),(8,49,1),(8,49,2);
/*!40000 ALTER TABLE `vtiger_parenttabrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_payment_duration`
--

DROP TABLE IF EXISTS `vtiger_payment_duration`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_payment_duration` (
  `payment_duration_id` int(11) default NULL,
  `payment_duration` varchar(200) default NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_payment_duration`
--

LOCK TABLES `vtiger_payment_duration` WRITE;
/*!40000 ALTER TABLE `vtiger_payment_duration` DISABLE KEYS */;
INSERT INTO `vtiger_payment_duration` VALUES (1,'Net 30 days',0,1),(2,'Net 45 days',1,1),(3,'Net 60 days',2,1);
/*!40000 ALTER TABLE `vtiger_payment_duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_payment_duration_seq`
--

DROP TABLE IF EXISTS `vtiger_payment_duration_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_payment_duration_seq`
--

LOCK TABLES `vtiger_payment_duration_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_payment_duration_seq` DISABLE KEYS */;
INSERT INTO `vtiger_payment_duration_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_payment_duration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanager`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pbxmanager` (
  `pbxmanagerid` int(20) NOT NULL auto_increment,
  `direction` varchar(10) default NULL,
  `callstatus` varchar(20) default NULL,
  `starttime` datetime default NULL,
  `endtime` datetime default NULL,
  `totalduration` int(11) default NULL,
  `billduration` int(11) default NULL,
  `recordingurl` varchar(200) default NULL,
  `sourceuuid` varchar(100) default NULL,
  `gateway` varchar(20) default NULL,
  `customer` varchar(100) default NULL,
  `user` varchar(100) default NULL,
  `customernumber` varchar(100) default NULL,
  `customertype` varchar(100) default NULL,
  PRIMARY KEY  (`pbxmanagerid`),
  KEY `index_sourceuuid` (`sourceuuid`),
  KEY `index_pbxmanager_id` (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pbxmanager`
--

LOCK TABLES `vtiger_pbxmanager` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanager_gateway`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager_gateway`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pbxmanager_gateway` (
  `id` int(11) NOT NULL auto_increment,
  `gateway` varchar(20) default NULL,
  `parameters` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pbxmanager_gateway`
--

LOCK TABLES `vtiger_pbxmanager_gateway` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanager_gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanager_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanager_phonelookup`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager_phonelookup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pbxmanager_phonelookup` (
  `crmid` int(20) default NULL,
  `setype` varchar(30) default NULL,
  `fnumber` varchar(100) default NULL,
  `rnumber` varchar(100) default NULL,
  `fieldname` varchar(50) default NULL,
  UNIQUE KEY `unique_key` (`crmid`,`setype`,`fieldname`),
  KEY `index_phone_number` (`fnumber`,`rnumber`),
  CONSTRAINT `vtiger_pbxmanager_phonelookup_ibfk_1` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pbxmanager_phonelookup`
--

LOCK TABLES `vtiger_pbxmanager_phonelookup` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanager_phonelookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanager_phonelookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanagercf`
--

DROP TABLE IF EXISTS `vtiger_pbxmanagercf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pbxmanagercf` (
  `pbxmanagerid` int(11) NOT NULL,
  PRIMARY KEY  (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pbxmanagercf`
--

LOCK TABLES `vtiger_pbxmanagercf` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanagercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanagercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklist`
--

DROP TABLE IF EXISTS `vtiger_picklist`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_picklist` (
  `picklistid` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY  (`picklistid`),
  UNIQUE KEY `picklist_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_picklist`
--

LOCK TABLES `vtiger_picklist` WRITE;
/*!40000 ALTER TABLE `vtiger_picklist` DISABLE KEYS */;
INSERT INTO `vtiger_picklist` VALUES (1,'accounttype'),(2,'activitytype'),(37,'assetstatus'),(3,'campaignstatus'),(4,'campaigntype'),(5,'carrier'),(33,'contract_priority'),(32,'contract_status'),(34,'contract_type'),(50,'defaultactivitytype'),(49,'defaulteventstatus'),(6,'eventstatus'),(7,'expectedresponse'),(8,'faqcategories'),(9,'faqstatus'),(10,'glacct'),(47,'hour_format'),(11,'industry'),(12,'invoicestatus'),(13,'leadsource'),(14,'leadstatus'),(15,'manufacturer'),(16,'opportunity_type'),(17,'postatus'),(18,'productcategory'),(45,'progress'),(38,'projectmilestonetype'),(44,'projectpriority'),(42,'projectstatus'),(40,'projecttaskpriority'),(41,'projecttaskprogress'),(46,'projecttaskstatus'),(39,'projecttasktype'),(43,'projecttype'),(19,'quotestage'),(20,'rating'),(21,'sales_stage'),(22,'salutationtype'),(36,'servicecategory'),(35,'service_usageunit'),(23,'sostatus'),(48,'start_hour'),(24,'taskpriority'),(25,'taskstatus'),(26,'ticketcategories'),(27,'ticketpriorities'),(28,'ticketseverities'),(29,'ticketstatus'),(31,'tracking_unit'),(30,'usageunit');
/*!40000 ALTER TABLE `vtiger_picklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklist_dependency`
--

DROP TABLE IF EXISTS `vtiger_picklist_dependency`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_picklist_dependency` (
  `id` int(11) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sourcefield` varchar(255) default NULL,
  `targetfield` varchar(255) default NULL,
  `sourcevalue` varchar(100) default NULL,
  `targetvalues` text,
  `criteria` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_picklist_dependency`
--

LOCK TABLES `vtiger_picklist_dependency` WRITE;
/*!40000 ALTER TABLE `vtiger_picklist_dependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_picklist_dependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklist_seq`
--

DROP TABLE IF EXISTS `vtiger_picklist_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_picklist_seq`
--

LOCK TABLES `vtiger_picklist_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_picklist_seq` DISABLE KEYS */;
INSERT INTO `vtiger_picklist_seq` VALUES (50);
/*!40000 ALTER TABLE `vtiger_picklist_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklistvalues_seq`
--

DROP TABLE IF EXISTS `vtiger_picklistvalues_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_picklistvalues_seq`
--

LOCK TABLES `vtiger_picklistvalues_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_picklistvalues_seq` DISABLE KEYS */;
INSERT INTO `vtiger_picklistvalues_seq` VALUES (326);
/*!40000 ALTER TABLE `vtiger_picklistvalues_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pobillads`
--

DROP TABLE IF EXISTS `vtiger_pobillads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`pobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pobillads`
--

LOCK TABLES `vtiger_pobillads` WRITE;
/*!40000 ALTER TABLE `vtiger_pobillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pobillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_portal`
--

DROP TABLE IF EXISTS `vtiger_portal`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL default '0',
  `createdtime` datetime default NULL,
  PRIMARY KEY  (`portalid`),
  KEY `portal_portalname_idx` (`portalname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_portal`
--

LOCK TABLES `vtiger_portal` WRITE;
/*!40000 ALTER TABLE `vtiger_portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_portalinfo`
--

DROP TABLE IF EXISTS `vtiger_portalinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_password` varchar(30) default NULL,
  `type` varchar(5) default NULL,
  `last_login_time` datetime default NULL,
  `login_time` datetime default NULL,
  `logout_time` datetime default NULL,
  `isactive` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_portalinfo`
--

LOCK TABLES `vtiger_portalinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_portalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_portalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_poshipads`
--

DROP TABLE IF EXISTS `vtiger_poshipads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`poshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_poshipads`
--

LOCK TABLES `vtiger_poshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_poshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_poshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_postatus`
--

DROP TABLE IF EXISTS `vtiger_postatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_postatus` (
  `postatusid` int(19) NOT NULL auto_increment,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`postatusid`),
  UNIQUE KEY `postatus_postatus_idx` (`postatus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_postatus`
--

LOCK TABLES `vtiger_postatus` WRITE;
/*!40000 ALTER TABLE `vtiger_postatus` DISABLE KEYS */;
INSERT INTO `vtiger_postatus` VALUES (1,'Created',0,130,0),(2,'Approved',0,131,1),(3,'Delivered',0,132,2),(4,'Cancelled',0,133,3),(5,'Received Shipment',0,134,4);
/*!40000 ALTER TABLE `vtiger_postatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_postatus_seq`
--

DROP TABLE IF EXISTS `vtiger_postatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_postatus_seq`
--

LOCK TABLES `vtiger_postatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_postatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_postatus_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_postatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_postatushistory`
--

DROP TABLE IF EXISTS `vtiger_postatushistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `postatus` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_postatushistory`
--

LOCK TABLES `vtiger_postatushistory` WRITE;
/*!40000 ALTER TABLE `vtiger_postatushistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_postatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_potential`
--

DROP TABLE IF EXISTS `vtiger_potential`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_potential` (
  `potentialid` bigint(19) NOT NULL auto_increment,
  `potential_no` varchar(20) NOT NULL,
  `related_to` bigint(19) default NULL,
  `potentialname` varchar(50) NOT NULL,
  `amount` decimal(25,8) default NULL,
  `currency` varchar(20) default NULL,
  `closingdate` date default NULL,
  `typeofrevenue` varchar(20) default NULL,
  `nextstep` varchar(20) default NULL,
  `private` tinyint(1) default '0',
  `probability` decimal(7,3) default '0.000',
  `campaignid` bigint(19) default NULL,
  `sales_stage` tinyint(4) default NULL,
  `potentialtype` tinyint(4) default NULL,
  `leadsource` tinyint(4) default NULL,
  `productid` bigint(19) default NULL,
  `productversion` varchar(20) default NULL,
  `quotationref` bigint(20) default NULL,
  `partnercontact` varchar(50) default NULL,
  `remarks` varchar(50) default NULL,
  `runtimefee` bigint(19) default '0',
  `followupdate` date default NULL,
  `evaluationstatus` varchar(20) default NULL,
  `description` text,
  `forecastcategory` bigint(19) default '0',
  `outcomeanalysis` bigint(19) default '0',
  `forecast_amount` decimal(25,8) default NULL,
  `isconvertedfromlead` tinyint(1) default '0',
  `contact_id` bigint(19) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`potentialid`),
  KEY `potential_relatedto_idx` (`related_to`),
  KEY `potentail_sales_stage_idx` (`sales_stage`),
  KEY `potentail_sales_stage_amount_idx` (`amount`,`sales_stage`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_potential`
--

LOCK TABLES `vtiger_potential` WRITE;
/*!40000 ALTER TABLE `vtiger_potential` DISABLE KEYS */;
INSERT INTO `vtiger_potential` VALUES (1,'POT19010100001',1,'testcnmk','0.00000000','','2015-01-24','','',0,'0.000',3,1,2,2,2,'',0,'','',0,'2015-01-25','','',0,0,'0.00000000',0,1,NULL,NULL,2,'2020-03-17 20:43:58'),(7,'POT19010100002',5,'callcenter','1.00000000','','2015-02-07','','',1,'49.000',3,0,0,0,0,'',0,'','',0,'2015-01-23','','',0,0,'0.49000000',0,6,NULL,NULL,NULL,NULL),(8,'POT19102200001',1,'tesst','0.00000000','','2019-10-22','','',0,'0.000',4,1,2,0,2,'',NULL,'','',0,'2019-10-22','','',0,0,'0.00000000',0,6,2,'2019-10-22 18:26:11',2,'2020-03-18 10:09:09');
/*!40000 ALTER TABLE `vtiger_potential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_potentialscf`
--

DROP TABLE IF EXISTS `vtiger_potentialscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_potentialscf`
--

LOCK TABLES `vtiger_potentialscf` WRITE;
/*!40000 ALTER TABLE `vtiger_potentialscf` DISABLE KEYS */;
INSERT INTO `vtiger_potentialscf` VALUES (7);
/*!40000 ALTER TABLE `vtiger_potentialscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_potstagehistory`
--

DROP TABLE IF EXISTS `vtiger_potstagehistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) default NULL,
  `stage` varchar(100) default NULL,
  `probability` decimal(7,3) default NULL,
  `expectedrevenue` decimal(10,0) default NULL,
  `closedate` date default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `potstagehistory_potentialid_idx` (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_potstagehistory`
--

LOCK TABLES `vtiger_potstagehistory` WRITE;
/*!40000 ALTER TABLE `vtiger_potstagehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_potstagehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pricebook`
--

DROP TABLE IF EXISTS `vtiger_pricebook`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL default '0',
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) default NULL,
  `active` int(1) default NULL,
  `currency_id` int(19) NOT NULL default '1',
  PRIMARY KEY  (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pricebook`
--

LOCK TABLES `vtiger_pricebook` WRITE;
/*!40000 ALTER TABLE `vtiger_pricebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pricebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pricebookcf`
--

DROP TABLE IF EXISTS `vtiger_pricebookcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pricebookcf`
--

LOCK TABLES `vtiger_pricebookcf` WRITE;
/*!40000 ALTER TABLE `vtiger_pricebookcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pricebookcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pricebookproductrel`
--

DROP TABLE IF EXISTS `vtiger_pricebookproductrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(27,8) default NULL,
  `usedcurrency` int(11) NOT NULL default '1',
  PRIMARY KEY  (`pricebookid`,`productid`),
  KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  KEY `pricebookproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_pricebookproductrel`
--

LOCK TABLES `vtiger_pricebookproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_pricebookproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pricebookproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_priority`
--

DROP TABLE IF EXISTS `vtiger_priority`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_priority` (
  `priorityid` int(19) NOT NULL auto_increment,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`priorityid`),
  UNIQUE KEY `priority_priority_idx` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_priority`
--

LOCK TABLES `vtiger_priority` WRITE;
/*!40000 ALTER TABLE `vtiger_priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcategory`
--

DROP TABLE IF EXISTS `vtiger_productcategory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL auto_increment,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`productcategoryid`),
  UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_productcategory`
--

LOCK TABLES `vtiger_productcategory` WRITE;
/*!40000 ALTER TABLE `vtiger_productcategory` DISABLE KEYS */;
INSERT INTO `vtiger_productcategory` VALUES (2,'Hardware',1,136,1),(3,'Software',1,137,2),(4,'CRM Applications',1,138,3);
/*!40000 ALTER TABLE `vtiger_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcategory_seq`
--

DROP TABLE IF EXISTS `vtiger_productcategory_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_productcategory_seq`
--

LOCK TABLES `vtiger_productcategory_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_productcategory_seq` DISABLE KEYS */;
INSERT INTO `vtiger_productcategory_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_productcategory_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcf`
--

DROP TABLE IF EXISTS `vtiger_productcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_productcf` (
  `productid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_productcf`
--

LOCK TABLES `vtiger_productcf` WRITE;
/*!40000 ALTER TABLE `vtiger_productcf` DISABLE KEYS */;
INSERT INTO `vtiger_productcf` VALUES (2);
/*!40000 ALTER TABLE `vtiger_productcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcurrencyrel`
--

DROP TABLE IF EXISTS `vtiger_productcurrencyrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(28,8) default NULL,
  `actual_price` decimal(28,8) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_productcurrencyrel`
--

LOCK TABLES `vtiger_productcurrencyrel` WRITE;
/*!40000 ALTER TABLE `vtiger_productcurrencyrel` DISABLE KEYS */;
INSERT INTO `vtiger_productcurrencyrel` VALUES (10,1,'0.00000000','0.00000000');
/*!40000 ALTER TABLE `vtiger_productcurrencyrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_products`
--

DROP TABLE IF EXISTS `vtiger_products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_products` (
  `productid` bigint(19) NOT NULL auto_increment,
  `product_no` varchar(20) NOT NULL,
  `productname` varchar(50) default NULL,
  `productcode` varchar(20) default NULL,
  `productcategory` int(11) default NULL,
  `manufacturer` bigint(19) default NULL,
  `qty_per_unit` decimal(11,2) default '0.00',
  `unit_price` decimal(25,8) default NULL,
  `weight` decimal(11,3) default NULL,
  `pack_size` int(11) default NULL,
  `sales_start_date` date default NULL,
  `sales_end_date` date default NULL,
  `start_date` date default NULL,
  `expiry_date` date default NULL,
  `cost_factor` int(11) default NULL,
  `commissionrate` decimal(7,3) default NULL,
  `commissionmethod` varchar(20) default NULL,
  `discontinued` tinyint(1) NOT NULL default '0',
  `usageunit` varchar(20) default NULL,
  `reorderlevel` int(11) default NULL,
  `website` varchar(100) default NULL,
  `taxclass` varchar(20) default NULL,
  `mfr_part_no` varchar(20) default NULL,
  `vendor_part_no` varchar(20) default NULL,
  `serialno` varchar(20) default NULL,
  `qtyinstock` decimal(25,3) default NULL,
  `productsheet` text,
  `qtyindemand` int(11) default NULL,
  `glacct` tinyint(4) default NULL,
  `vendor_id` int(11) default NULL,
  `imagename` varchar(100) default NULL,
  `currency_id` smallint(6) NOT NULL default '1',
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_products`
--

LOCK TABLES `vtiger_products` WRITE;
/*!40000 ALTER TABLE `vtiger_products` DISABLE KEYS */;
INSERT INTO `vtiger_products` VALUES (2,'PRD00001','ucin','',0,0,'0.00','10000.00000000','0.000',0,'2015-01-23','2015-01-23','2015-01-23','2015-01-23',0,'0.000','',1,'',0,'','','','','','100.000','',0,0,0,'',1,NULL,NULL,2,'2020-03-18 10:13:11'),(4,'PRD00002','gfadga','',0,0,'0.00','0.00000000','0.000',0,'2019-10-25','2019-10-25','2019-10-25','2019-10-25',0,'0.000','',0,'',0,'','','','','','0.000','',0,127,0,'',0,NULL,NULL,NULL,NULL),(5,'PRD00003','erwqrq','',0,0,'0.00','0.00000000','0.000',0,'2019-10-25','2019-10-25','2019-10-25','2019-10-25',0,'0.000','',0,'',0,'','','','','','0.000','',0,127,0,'',0,NULL,NULL,NULL,NULL),(6,'PRD00004','xbs','',0,0,'0.00','0.00000000','0.000',0,'2019-10-25','2019-10-25','2019-10-25','2019-10-25',0,'0.000','',0,'',0,'','','','','','0.000','',0,0,0,'',0,NULL,NULL,2,'2020-02-28 20:47:34'),(7,'PRD00005','crm','',0,0,'0.00','0.00000000','0.000',0,'2019-10-25','2019-10-25','2019-10-25','2019-10-25',0,'0.000','',0,'',0,'','','','','','0.000','',0,0,0,'202936200.jpg',0,NULL,NULL,2,'2020-02-28 20:47:53'),(8,'PRD00006','物业管理软件','PROPERTY01',0,0,'0.00','0.00000000','0.000',0,'2015-01-23','2015-01-23','2015-01-23','2015-01-23',0,'0.000','',1,'',0,'','','','','','0.000','',0,0,0,'726.jpg',0,2,'2020-03-18 10:13:30',2,'2021-05-06 10:17:18');
/*!40000 ALTER TABLE `vtiger_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_producttaxrel`
--

DROP TABLE IF EXISTS `vtiger_producttaxrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) default NULL,
  KEY `producttaxrel_productid_idx` (`productid`),
  KEY `producttaxrel_taxid_idx` (`taxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_producttaxrel`
--

LOCK TABLES `vtiger_producttaxrel` WRITE;
/*!40000 ALTER TABLE `vtiger_producttaxrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_producttaxrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile`
--

DROP TABLE IF EXISTS `vtiger_profile`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile` (
  `profileid` int(10) NOT NULL auto_increment,
  `profilename` varchar(50) NOT NULL,
  `description` text,
  `directly_related_to_role` int(1) default '0',
  PRIMARY KEY  (`profileid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile`
--

LOCK TABLES `vtiger_profile` WRITE;
/*!40000 ALTER TABLE `vtiger_profile` DISABLE KEYS */;
INSERT INTO `vtiger_profile` VALUES (1,'Administrator','Admin Profile',0),(2,'Sales Profile','Profile Related to Sales',0),(3,'Support Profile','Profile Related to Support',0),(4,'Guest Profile','Guest Profile for Test Users',0);
/*!40000 ALTER TABLE `vtiger_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2field`
--

DROP TABLE IF EXISTS `vtiger_profile2field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) default NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) default NULL,
  `readonly` int(19) default NULL,
  PRIMARY KEY  (`profileid`,`fieldid`),
  KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile2field`
--

LOCK TABLES `vtiger_profile2field` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2field` DISABLE KEYS */;
INSERT INTO `vtiger_profile2field` VALUES (1,6,1,0,0),(1,6,2,0,0),(1,6,3,0,0),(1,6,4,0,0),(1,6,5,0,0),(1,6,6,0,0),(1,6,7,0,0),(1,6,8,0,0),(1,6,9,0,0),(1,6,10,0,0),(1,6,11,0,0),(1,6,12,0,0),(1,6,13,0,0),(1,6,14,0,0),(1,6,15,0,0),(1,6,16,0,0),(1,6,17,0,0),(1,6,18,0,0),(1,6,19,0,0),(1,6,20,0,0),(1,6,21,0,0),(1,6,22,0,0),(1,6,23,0,0),(1,6,24,0,0),(1,6,25,0,0),(1,6,26,0,0),(1,6,27,0,0),(1,6,28,0,0),(1,6,29,0,0),(1,6,30,0,0),(1,6,31,0,0),(1,6,32,0,0),(1,6,33,0,0),(1,6,34,0,0),(1,6,35,0,0),(1,6,36,0,0),(1,7,37,0,0),(1,7,38,0,0),(1,7,39,0,0),(1,7,40,0,0),(1,7,41,0,0),(1,7,42,0,0),(1,7,43,0,0),(1,7,44,0,0),(1,7,45,0,0),(1,7,46,0,0),(1,7,47,0,0),(1,7,48,0,0),(1,7,49,0,0),(1,7,50,0,0),(1,7,51,0,0),(1,7,52,0,0),(1,7,53,0,0),(1,7,54,0,0),(1,7,55,0,0),(1,7,56,0,0),(1,7,57,0,0),(1,7,58,0,0),(1,7,59,0,0),(1,7,60,0,0),(1,7,61,0,0),(1,7,62,0,0),(1,7,63,0,0),(1,7,64,0,0),(1,7,65,0,0),(1,4,66,0,0),(1,4,67,0,0),(1,4,68,0,0),(1,4,69,0,0),(1,4,70,0,0),(1,4,71,0,0),(1,4,72,0,0),(1,4,73,0,0),(1,4,74,0,0),(1,4,75,0,0),(1,4,76,0,0),(1,4,77,0,0),(1,4,78,0,0),(1,4,79,0,0),(1,4,80,0,0),(1,4,81,0,0),(1,4,82,0,0),(1,4,83,0,0),(1,4,84,0,0),(1,4,85,0,0),(1,4,86,0,0),(1,4,87,0,0),(1,4,88,0,0),(1,4,89,0,0),(1,4,90,0,0),(1,4,91,0,0),(1,4,92,0,0),(1,4,93,0,0),(1,4,94,0,0),(1,4,95,0,0),(1,4,96,0,0),(1,4,97,0,0),(1,4,98,0,0),(1,4,99,0,0),(1,4,100,0,0),(1,4,101,0,0),(1,4,102,0,0),(1,4,103,0,0),(1,4,104,0,0),(1,4,105,0,0),(1,4,106,0,0),(1,4,107,0,0),(1,4,108,0,0),(1,4,109,0,0),(1,2,110,0,0),(1,2,111,0,0),(1,2,112,0,0),(1,2,113,0,0),(1,2,114,0,0),(1,2,115,0,0),(1,2,116,0,0),(1,2,117,0,0),(1,2,118,0,0),(1,2,119,0,0),(1,2,120,0,0),(1,2,121,0,0),(1,2,122,0,0),(1,2,123,0,0),(1,2,124,0,0),(1,2,125,0,0),(1,26,126,0,0),(1,26,127,0,0),(1,26,128,0,0),(1,26,129,0,0),(1,26,130,0,0),(1,26,131,0,0),(1,26,132,0,0),(1,26,133,0,0),(1,26,134,0,0),(1,26,135,0,0),(1,26,136,0,0),(1,26,137,0,0),(1,26,138,0,0),(1,26,139,0,0),(1,26,140,0,0),(1,26,141,0,0),(1,26,142,0,0),(1,26,143,0,0),(1,26,144,0,0),(1,26,145,0,0),(1,26,146,0,0),(1,26,147,0,0),(1,26,148,0,0),(1,26,149,0,0),(1,26,150,0,0),(1,4,151,0,0),(1,6,152,0,0),(1,7,153,0,0),(1,26,154,0,0),(1,13,155,0,0),(1,13,156,0,0),(1,13,157,0,0),(1,13,158,0,0),(1,13,159,0,0),(1,13,160,0,0),(1,13,161,0,0),(1,13,162,0,0),(1,13,163,0,0),(1,13,164,0,0),(1,13,165,0,0),(1,13,166,0,0),(1,13,167,0,0),(1,13,168,0,0),(1,13,169,0,0),(1,13,170,0,0),(1,13,171,0,0),(1,13,172,0,0),(1,14,173,0,0),(1,14,174,0,0),(1,14,175,0,0),(1,14,176,0,0),(1,14,177,0,0),(1,14,178,0,0),(1,14,179,0,0),(1,14,180,0,0),(1,14,181,0,0),(1,14,182,0,0),(1,14,183,0,0),(1,14,184,0,0),(1,14,185,0,0),(1,14,186,0,0),(1,14,187,0,0),(1,14,188,0,0),(1,14,189,0,0),(1,14,190,0,0),(1,14,191,0,0),(1,14,192,0,0),(1,14,193,0,0),(1,14,194,0,0),(1,14,195,0,0),(1,14,196,0,0),(1,14,197,0,0),(1,14,198,0,0),(1,14,199,0,0),(1,14,200,0,0),(1,14,201,0,0),(1,14,202,0,0),(1,14,203,0,0),(1,8,204,0,0),(1,8,205,0,0),(1,8,206,0,0),(1,8,207,0,0),(1,8,208,0,0),(1,8,209,0,0),(1,8,210,0,0),(1,8,211,0,0),(1,8,212,0,0),(1,8,213,0,0),(1,8,214,0,0),(1,8,215,0,0),(1,8,216,0,0),(1,8,217,0,0),(1,8,218,0,0),(1,10,219,0,0),(1,10,220,0,0),(1,10,221,0,0),(1,10,222,0,0),(1,10,223,0,0),(1,10,224,0,0),(1,10,225,0,0),(1,10,226,0,0),(1,10,227,0,0),(1,10,228,0,0),(1,10,229,0,0),(1,10,230,0,0),(1,9,231,0,0),(1,9,232,0,0),(1,9,233,0,0),(1,9,234,0,0),(1,9,235,0,0),(1,9,236,0,0),(1,9,237,0,0),(1,9,238,0,0),(1,9,239,0,0),(1,9,240,0,0),(1,9,241,0,0),(1,9,242,0,0),(1,9,243,0,0),(1,9,244,0,0),(1,9,245,0,0),(1,9,246,0,0),(1,9,247,0,0),(1,9,248,0,0),(1,9,249,0,0),(1,9,250,0,0),(1,9,251,0,0),(1,9,252,0,0),(1,9,253,0,0),(1,9,254,0,0),(1,16,255,0,0),(1,16,256,0,0),(1,16,257,0,0),(1,16,258,0,0),(1,16,259,0,0),(1,16,260,0,0),(1,16,261,0,0),(1,16,262,0,0),(1,16,263,0,0),(1,16,264,0,0),(1,16,265,0,0),(1,16,266,0,0),(1,16,267,0,0),(1,16,268,0,0),(1,16,269,0,0),(1,16,270,0,0),(1,16,271,0,0),(1,16,272,0,0),(1,16,273,0,0),(1,16,274,0,0),(1,16,275,0,0),(1,16,276,0,0),(1,16,277,0,0),(1,15,278,0,0),(1,15,279,0,0),(1,15,280,0,0),(1,15,281,0,0),(1,15,282,0,0),(1,15,283,0,0),(1,15,284,0,0),(1,15,285,0,0),(1,15,286,0,0),(1,15,287,0,0),(1,18,288,0,0),(1,18,289,0,0),(1,18,290,0,0),(1,18,291,0,0),(1,18,292,0,0),(1,18,293,0,0),(1,18,294,0,0),(1,18,295,0,0),(1,18,296,0,0),(1,18,297,0,0),(1,18,298,0,0),(1,18,299,0,0),(1,18,300,0,0),(1,18,301,0,0),(1,18,302,0,0),(1,18,303,0,0),(1,18,304,0,0),(1,19,305,0,0),(1,19,306,0,0),(1,19,307,0,0),(1,19,308,0,0),(1,19,309,0,0),(1,19,310,0,0),(1,19,311,0,0),(1,19,312,0,0),(1,20,313,0,0),(1,20,314,0,0),(1,20,315,0,0),(1,20,316,0,0),(1,20,317,0,0),(1,20,318,0,0),(1,20,319,0,0),(1,20,320,0,0),(1,20,321,0,0),(1,20,322,0,0),(1,20,323,0,0),(1,20,324,0,0),(1,20,325,0,0),(1,20,326,0,0),(1,20,327,0,0),(1,20,328,0,0),(1,20,329,0,0),(1,20,330,0,0),(1,20,331,0,0),(1,20,332,0,0),(1,20,333,0,0),(1,20,334,0,0),(1,20,335,0,0),(1,20,336,0,0),(1,20,337,0,0),(1,20,338,0,0),(1,20,339,0,0),(1,20,340,0,0),(1,20,341,0,0),(1,20,342,0,0),(1,20,343,0,0),(1,20,344,0,0),(1,20,345,0,0),(1,20,346,0,0),(1,20,347,0,0),(1,20,348,0,0),(1,20,349,0,0),(1,21,350,0,0),(1,21,351,0,0),(1,21,352,0,0),(1,21,353,0,0),(1,21,354,0,0),(1,21,355,0,0),(1,21,356,0,0),(1,21,357,0,0),(1,21,358,0,0),(1,21,359,0,0),(1,21,360,0,0),(1,21,361,0,0),(1,21,362,0,0),(1,21,363,0,0),(1,21,364,0,0),(1,21,365,0,0),(1,21,366,0,0),(1,21,367,0,0),(1,21,368,0,0),(1,21,369,0,0),(1,21,370,0,0),(1,21,371,0,0),(1,21,372,0,0),(1,21,373,0,0),(1,21,374,0,0),(1,21,375,0,0),(1,21,376,0,0),(1,21,377,0,0),(1,21,378,0,0),(1,21,379,0,0),(1,21,380,0,0),(1,21,381,0,0),(1,21,382,0,0),(1,21,383,0,0),(1,21,384,0,0),(1,21,385,0,0),(1,21,386,0,0),(1,21,387,0,0),(1,22,388,0,0),(1,22,389,0,0),(1,22,390,0,0),(1,22,391,0,0),(1,22,392,0,0),(1,22,393,0,0),(1,22,394,0,0),(1,22,395,0,0),(1,22,396,0,0),(1,22,397,0,0),(1,22,398,0,0),(1,22,399,0,0),(1,22,400,0,0),(1,22,401,0,0),(1,22,402,0,0),(1,22,403,0,0),(1,22,404,0,0),(1,22,405,0,0),(1,22,406,0,0),(1,22,407,0,0),(1,22,408,0,0),(1,22,409,0,0),(1,22,410,0,0),(1,22,411,0,0),(1,22,412,0,0),(1,22,413,0,0),(1,22,414,0,0),(1,22,415,0,0),(1,22,416,0,0),(1,22,417,0,0),(1,22,418,0,0),(1,22,419,0,0),(1,22,420,0,0),(1,22,421,0,0),(1,22,422,0,0),(1,22,423,0,0),(1,22,424,0,0),(1,22,425,0,0),(1,22,426,0,0),(1,22,427,0,0),(1,22,428,0,0),(1,22,429,0,0),(1,22,430,0,0),(1,22,431,0,0),(1,22,432,0,0),(1,22,433,0,0),(1,22,434,0,0),(1,23,435,0,0),(1,23,436,0,0),(1,23,437,0,0),(1,23,438,0,0),(1,23,439,0,0),(1,23,440,0,0),(1,23,441,0,0),(1,23,442,0,0),(1,23,443,0,0),(1,23,444,0,0),(1,23,445,0,0),(1,23,446,0,0),(1,23,447,0,0),(1,23,448,0,0),(1,23,449,0,0),(1,23,450,0,0),(1,23,451,0,0),(1,23,452,0,0),(1,23,453,0,0),(1,23,454,0,0),(1,23,455,0,0),(1,23,456,0,0),(1,23,457,0,0),(1,23,458,0,0),(1,23,459,0,0),(1,23,460,0,0),(1,23,461,0,0),(1,23,462,0,0),(1,23,463,0,0),(1,23,464,0,0),(1,23,465,0,0),(1,23,466,0,0),(1,23,467,0,0),(1,23,468,0,0),(1,23,469,0,0),(1,23,470,0,0),(1,23,471,0,0),(1,23,472,0,0),(1,23,473,0,0),(1,29,474,0,0),(1,29,478,0,0),(1,29,479,0,0),(1,29,481,0,0),(1,29,488,0,0),(1,29,489,0,0),(1,29,490,0,0),(1,29,491,0,0),(1,29,493,0,0),(1,29,494,0,0),(1,29,495,0,0),(1,29,496,0,0),(1,29,497,0,0),(1,29,502,0,0),(1,29,503,0,0),(1,29,504,0,0),(1,29,505,0,0),(1,29,513,0,0),(1,10,518,0,0),(1,10,519,0,0),(1,10,520,0,0),(1,10,521,0,0),(1,10,522,0,0),(1,10,523,0,0),(1,34,524,0,0),(1,34,525,0,0),(1,34,526,0,0),(1,34,527,0,0),(1,34,528,0,0),(1,34,529,0,0),(1,34,530,0,0),(1,34,531,0,0),(1,34,532,0,0),(1,34,533,0,0),(1,34,534,0,0),(1,34,535,0,0),(1,34,536,0,0),(1,34,537,0,0),(1,34,538,0,0),(1,34,539,0,0),(1,29,540,0,0),(1,35,541,0,0),(1,35,542,0,0),(1,35,543,0,0),(1,35,544,0,0),(1,35,545,0,0),(1,35,546,0,0),(1,35,547,0,0),(1,35,548,0,0),(1,35,549,0,0),(1,35,550,0,0),(1,35,551,0,0),(1,35,552,0,0),(1,35,553,0,0),(1,35,554,0,0),(1,35,555,0,0),(1,35,556,0,0),(1,35,557,0,0),(1,35,558,0,0),(1,35,559,0,0),(1,36,560,0,0),(1,36,561,0,0),(1,36,562,0,0),(1,36,563,0,0),(1,36,564,0,0),(1,36,565,0,0),(1,36,566,0,0),(1,36,567,0,0),(1,36,568,0,0),(1,36,569,0,0),(1,36,570,0,0),(1,36,571,0,0),(1,36,572,0,0),(1,36,573,0,0),(1,36,574,0,0),(1,36,575,0,0),(1,36,576,0,0),(1,36,577,0,0),(1,36,578,0,0),(1,38,579,0,0),(1,38,580,0,0),(1,38,581,0,0),(1,38,582,0,0),(1,38,583,0,0),(1,38,584,0,0),(1,38,585,0,0),(1,38,586,0,0),(1,38,587,0,0),(1,38,588,0,0),(1,38,589,0,0),(1,38,590,0,0),(1,38,591,0,0),(1,38,592,0,0),(1,38,593,0,0),(1,38,594,0,0),(1,38,595,0,0),(1,38,596,0,0),(1,42,597,0,0),(1,42,598,0,0),(1,42,599,0,0),(1,42,600,0,0),(1,42,601,0,0),(1,42,602,0,0),(1,42,603,0,0),(1,43,604,0,0),(1,43,605,0,0),(1,43,606,0,0),(1,43,607,0,0),(1,43,608,0,0),(1,43,609,0,0),(1,43,610,0,0),(1,43,611,0,0),(1,43,612,0,0),(1,43,613,0,0),(1,44,614,0,0),(1,44,615,0,0),(1,44,616,0,0),(1,44,617,0,0),(1,44,618,0,0),(1,44,619,0,0),(1,44,620,0,0),(1,44,621,0,0),(1,44,622,0,0),(1,44,623,0,0),(1,44,624,0,0),(1,44,625,0,0),(1,44,626,0,0),(1,44,627,0,0),(1,44,628,0,0),(1,45,629,0,0),(1,45,630,0,0),(1,45,631,0,0),(1,45,632,0,0),(1,45,633,0,0),(1,45,634,0,0),(1,45,635,0,0),(1,45,636,0,0),(1,45,637,0,0),(1,45,638,0,0),(1,45,639,0,0),(1,45,640,0,0),(1,45,641,0,0),(1,45,642,0,0),(1,45,643,0,0),(1,45,644,0,0),(1,45,645,0,0),(1,47,646,0,0),(1,47,647,0,0),(1,47,648,0,0),(1,47,649,0,0),(1,47,650,0,0),(1,2,651,0,0),(1,29,652,0,0),(1,23,653,0,0),(1,23,654,0,0),(1,23,655,0,0),(1,23,656,0,0),(1,23,657,0,0),(1,23,658,0,0),(1,23,659,0,0),(1,23,660,0,0),(1,23,661,0,0),(1,22,662,0,0),(1,22,663,0,0),(1,22,664,0,0),(1,22,665,0,0),(1,22,666,0,0),(1,22,667,0,0),(1,22,668,0,0),(1,22,669,0,0),(1,22,670,0,0),(1,21,671,0,0),(1,21,672,0,0),(1,21,673,0,0),(1,21,674,0,0),(1,21,675,0,0),(1,21,676,0,0),(1,21,677,0,0),(1,21,678,0,0),(1,21,679,0,0),(1,20,680,0,0),(1,20,681,0,0),(1,20,682,0,0),(1,20,683,0,0),(1,20,684,0,0),(1,20,685,0,0),(1,20,686,0,0),(1,20,687,0,0),(1,20,688,0,0),(1,29,689,0,0),(1,44,690,0,0),(1,42,691,0,0),(1,29,692,0,0),(1,29,693,0,0),(1,29,694,0,0),(1,23,695,0,0),(1,22,696,0,0),(1,21,697,0,0),(1,20,698,0,0),(1,29,699,0,0),(1,6,700,0,0),(1,4,701,0,0),(1,2,702,0,0),(1,29,703,0,0),(1,23,704,0,0),(1,23,705,0,0),(1,21,706,0,0),(1,21,707,0,0),(1,18,708,0,0),(1,7,709,0,0),(1,42,710,0,0),(1,42,711,0,0),(1,23,712,0,0),(1,20,713,0,0),(1,21,714,0,0),(1,22,715,0,0),(1,29,716,0,0),(1,2,717,0,0),(1,13,718,0,0),(1,29,719,0,0),(1,13,720,0,0),(1,29,721,0,0),(1,29,722,0,0),(1,29,723,0,0),(1,2,724,0,0),(1,4,725,0,0),(1,6,726,0,0),(1,7,727,0,0),(1,9,729,0,0),(1,13,730,0,0),(1,18,734,0,0),(1,21,737,0,0),(1,23,739,0,0),(1,42,745,0,0),(1,43,746,0,0),(1,44,747,0,0),(1,45,748,0,0),(1,29,750,0,0),(2,6,1,0,0),(2,6,2,0,0),(2,6,3,0,0),(2,6,4,0,0),(2,6,5,0,0),(2,6,6,0,0),(2,6,7,0,0),(2,6,8,0,0),(2,6,9,0,0),(2,6,10,0,0),(2,6,11,0,0),(2,6,12,0,0),(2,6,13,0,0),(2,6,14,0,0),(2,6,15,0,0),(2,6,16,0,0),(2,6,17,0,0),(2,6,18,0,0),(2,6,19,0,0),(2,6,20,0,0),(2,6,21,0,0),(2,6,22,0,0),(2,6,23,0,0),(2,6,24,0,0),(2,6,25,0,0),(2,6,26,0,0),(2,6,27,0,0),(2,6,28,0,0),(2,6,29,0,0),(2,6,30,0,0),(2,6,31,0,0),(2,6,32,0,0),(2,6,33,0,0),(2,6,34,0,0),(2,6,35,0,0),(2,6,36,0,0),(2,7,37,0,0),(2,7,38,0,0),(2,7,39,0,0),(2,7,40,0,0),(2,7,41,0,0),(2,7,42,0,0),(2,7,43,0,0),(2,7,44,0,0),(2,7,45,0,0),(2,7,46,0,0),(2,7,47,0,0),(2,7,48,0,0),(2,7,49,0,0),(2,7,50,0,0),(2,7,51,0,0),(2,7,52,0,0),(2,7,53,0,0),(2,7,54,0,0),(2,7,55,0,0),(2,7,56,0,0),(2,7,57,0,0),(2,7,58,0,0),(2,7,59,0,0),(2,7,60,0,0),(2,7,61,0,0),(2,7,62,0,0),(2,7,63,0,0),(2,7,64,0,0),(2,7,65,0,0),(2,4,66,0,0),(2,4,67,0,0),(2,4,68,0,0),(2,4,69,0,0),(2,4,70,0,0),(2,4,71,0,0),(2,4,72,0,0),(2,4,73,0,0),(2,4,74,0,0),(2,4,75,0,0),(2,4,76,0,0),(2,4,77,0,0),(2,4,78,0,0),(2,4,79,0,0),(2,4,80,0,0),(2,4,81,0,0),(2,4,82,0,0),(2,4,83,0,0),(2,4,84,0,0),(2,4,85,0,0),(2,4,86,0,0),(2,4,87,0,0),(2,4,88,0,0),(2,4,89,0,0),(2,4,90,0,0),(2,4,91,0,0),(2,4,92,0,0),(2,4,93,0,0),(2,4,94,0,0),(2,4,95,0,0),(2,4,96,0,0),(2,4,97,0,0),(2,4,98,0,0),(2,4,99,0,0),(2,4,100,0,0),(2,4,101,0,0),(2,4,102,0,0),(2,4,103,0,0),(2,4,104,0,0),(2,4,105,0,0),(2,4,106,0,0),(2,4,107,0,0),(2,4,108,0,0),(2,4,109,0,0),(2,2,110,0,0),(2,2,111,0,0),(2,2,112,0,0),(2,2,113,0,0),(2,2,114,0,0),(2,2,115,0,0),(2,2,116,0,0),(2,2,117,0,0),(2,2,118,0,0),(2,2,119,0,0),(2,2,120,0,0),(2,2,121,0,0),(2,2,122,0,0),(2,2,123,0,0),(2,2,124,0,0),(2,2,125,0,0),(2,26,126,0,0),(2,26,127,0,0),(2,26,128,0,0),(2,26,129,0,0),(2,26,130,0,0),(2,26,131,0,0),(2,26,132,0,0),(2,26,133,0,0),(2,26,134,0,0),(2,26,135,0,0),(2,26,136,0,0),(2,26,137,0,0),(2,26,138,0,0),(2,26,139,0,0),(2,26,140,0,0),(2,26,141,0,0),(2,26,142,0,0),(2,26,143,0,0),(2,26,144,0,0),(2,26,145,0,0),(2,26,146,0,0),(2,26,147,0,0),(2,26,148,0,0),(2,26,149,0,0),(2,26,150,0,0),(2,4,151,0,0),(2,6,152,0,0),(2,7,153,0,0),(2,26,154,0,0),(2,13,155,0,0),(2,13,156,0,0),(2,13,157,0,0),(2,13,158,0,0),(2,13,159,0,0),(2,13,160,0,0),(2,13,161,0,0),(2,13,162,0,0),(2,13,163,0,0),(2,13,164,0,0),(2,13,165,0,0),(2,13,166,0,0),(2,13,167,0,0),(2,13,168,0,0),(2,13,169,0,0),(2,13,170,0,0),(2,13,171,0,0),(2,13,172,0,0),(2,14,173,0,0),(2,14,174,0,0),(2,14,175,0,0),(2,14,176,0,0),(2,14,177,0,0),(2,14,178,0,0),(2,14,179,0,0),(2,14,180,0,0),(2,14,181,0,0),(2,14,182,0,0),(2,14,183,0,0),(2,14,184,0,0),(2,14,185,0,0),(2,14,186,0,0),(2,14,187,0,0),(2,14,188,0,0),(2,14,189,0,0),(2,14,190,0,0),(2,14,191,0,0),(2,14,192,0,0),(2,14,193,0,0),(2,14,194,0,0),(2,14,195,0,0),(2,14,196,0,0),(2,14,197,0,0),(2,14,198,0,0),(2,14,199,0,0),(2,14,200,0,0),(2,14,201,0,0),(2,14,202,0,0),(2,14,203,0,0),(2,8,204,0,0),(2,8,205,0,0),(2,8,206,0,0),(2,8,207,0,0),(2,8,208,0,0),(2,8,209,0,0),(2,8,210,0,0),(2,8,211,0,0),(2,8,212,0,0),(2,8,213,0,0),(2,8,214,0,0),(2,8,215,0,0),(2,8,216,0,0),(2,8,217,0,0),(2,8,218,0,0),(2,10,219,0,0),(2,10,220,0,0),(2,10,221,0,0),(2,10,222,0,0),(2,10,223,0,0),(2,10,224,0,0),(2,10,225,0,0),(2,10,226,0,0),(2,10,227,0,0),(2,10,228,0,0),(2,10,229,0,0),(2,10,230,0,0),(2,9,231,0,0),(2,9,232,0,0),(2,9,233,0,0),(2,9,234,0,0),(2,9,235,0,0),(2,9,236,0,0),(2,9,237,0,0),(2,9,238,0,0),(2,9,239,0,0),(2,9,240,0,0),(2,9,241,0,0),(2,9,242,0,0),(2,9,243,0,0),(2,9,244,0,0),(2,9,245,0,0),(2,9,246,0,0),(2,9,247,0,0),(2,9,248,0,0),(2,9,249,0,0),(2,9,250,0,0),(2,9,251,0,0),(2,9,252,0,0),(2,9,253,0,0),(2,9,254,0,0),(2,16,255,0,0),(2,16,256,0,0),(2,16,257,0,0),(2,16,258,0,0),(2,16,259,0,0),(2,16,260,0,0),(2,16,261,0,0),(2,16,262,0,0),(2,16,263,0,0),(2,16,264,0,0),(2,16,265,0,0),(2,16,266,0,0),(2,16,267,0,0),(2,16,268,0,0),(2,16,269,0,0),(2,16,270,0,0),(2,16,271,0,0),(2,16,272,0,0),(2,16,273,0,0),(2,16,274,0,0),(2,16,275,0,0),(2,16,276,0,0),(2,16,277,0,0),(2,15,278,0,0),(2,15,279,0,0),(2,15,280,0,0),(2,15,281,0,0),(2,15,282,0,0),(2,15,283,0,0),(2,15,284,0,0),(2,15,285,0,0),(2,15,286,0,0),(2,15,287,0,0),(2,18,288,0,0),(2,18,289,0,0),(2,18,290,0,0),(2,18,291,0,0),(2,18,292,0,0),(2,18,293,0,0),(2,18,294,0,0),(2,18,295,0,0),(2,18,296,0,0),(2,18,297,0,0),(2,18,298,0,0),(2,18,299,0,0),(2,18,300,0,0),(2,18,301,0,0),(2,18,302,0,0),(2,18,303,0,0),(2,18,304,0,0),(2,19,305,0,0),(2,19,306,0,0),(2,19,307,0,0),(2,19,308,0,0),(2,19,309,0,0),(2,19,310,0,0),(2,19,311,0,0),(2,19,312,0,0),(2,20,313,0,0),(2,20,314,0,0),(2,20,315,0,0),(2,20,316,0,0),(2,20,317,0,0),(2,20,318,0,0),(2,20,319,0,0),(2,20,320,0,0),(2,20,321,0,0),(2,20,322,0,0),(2,20,323,0,0),(2,20,324,0,0),(2,20,325,0,0),(2,20,326,0,0),(2,20,327,0,0),(2,20,328,0,0),(2,20,329,0,0),(2,20,330,0,0),(2,20,331,0,0),(2,20,332,0,0),(2,20,333,0,0),(2,20,334,0,0),(2,20,335,0,0),(2,20,336,0,0),(2,20,337,0,0),(2,20,338,0,0),(2,20,339,0,0),(2,20,340,0,0),(2,20,341,0,0),(2,20,342,0,0),(2,20,343,0,0),(2,20,344,0,0),(2,20,345,0,0),(2,20,346,0,0),(2,20,347,0,0),(2,20,348,0,0),(2,20,349,0,0),(2,21,350,0,0),(2,21,351,0,0),(2,21,352,0,0),(2,21,353,0,0),(2,21,354,0,0),(2,21,355,0,0),(2,21,356,0,0),(2,21,357,0,0),(2,21,358,0,0),(2,21,359,0,0),(2,21,360,0,0),(2,21,361,0,0),(2,21,362,0,0),(2,21,363,0,0),(2,21,364,0,0),(2,21,365,0,0),(2,21,366,0,0),(2,21,367,0,0),(2,21,368,0,0),(2,21,369,0,0),(2,21,370,0,0),(2,21,371,0,0),(2,21,372,0,0),(2,21,373,0,0),(2,21,374,0,0),(2,21,375,0,0),(2,21,376,0,0),(2,21,377,0,0),(2,21,378,0,0),(2,21,379,0,0),(2,21,380,0,0),(2,21,381,0,0),(2,21,382,0,0),(2,21,383,0,0),(2,21,384,0,0),(2,21,385,0,0),(2,21,386,0,0),(2,21,387,0,0),(2,22,388,0,0),(2,22,389,0,0),(2,22,390,0,0),(2,22,391,0,0),(2,22,392,0,0),(2,22,393,0,0),(2,22,394,0,0),(2,22,395,0,0),(2,22,396,0,0),(2,22,397,0,0),(2,22,398,0,0),(2,22,399,0,0),(2,22,400,0,0),(2,22,401,0,0),(2,22,402,0,0),(2,22,403,0,0),(2,22,404,0,0),(2,22,405,0,0),(2,22,406,0,0),(2,22,407,0,0),(2,22,408,0,0),(2,22,409,0,0),(2,22,410,0,0),(2,22,411,0,0),(2,22,412,0,0),(2,22,413,0,0),(2,22,414,0,0),(2,22,415,0,0),(2,22,416,0,0),(2,22,417,0,0),(2,22,418,0,0),(2,22,419,0,0),(2,22,420,0,0),(2,22,421,0,0),(2,22,422,0,0),(2,22,423,0,0),(2,22,424,0,0),(2,22,425,0,0),(2,22,426,0,0),(2,22,427,0,0),(2,22,428,0,0),(2,22,429,0,0),(2,22,430,0,0),(2,22,431,0,0),(2,22,432,0,0),(2,22,433,0,0),(2,22,434,0,0),(2,23,435,0,0),(2,23,436,0,0),(2,23,437,0,0),(2,23,438,0,0),(2,23,439,0,0),(2,23,440,0,0),(2,23,441,0,0),(2,23,442,0,0),(2,23,443,0,0),(2,23,444,0,0),(2,23,445,0,0),(2,23,446,0,0),(2,23,447,0,0),(2,23,448,0,0),(2,23,449,0,0),(2,23,450,0,0),(2,23,451,0,0),(2,23,452,0,0),(2,23,453,0,0),(2,23,454,0,0),(2,23,455,0,0),(2,23,456,0,0),(2,23,457,0,0),(2,23,458,0,0),(2,23,459,0,0),(2,23,460,0,0),(2,23,461,0,0),(2,23,462,0,0),(2,23,463,0,0),(2,23,464,0,0),(2,23,465,0,0),(2,23,466,0,0),(2,23,467,0,0),(2,23,468,0,0),(2,23,469,0,0),(2,23,470,0,0),(2,23,471,0,0),(2,23,472,0,0),(2,23,473,0,0),(2,29,474,0,0),(2,29,478,0,0),(2,29,479,0,0),(2,29,481,0,0),(2,29,488,0,0),(2,29,489,0,0),(2,29,490,0,0),(2,29,491,0,0),(2,29,493,0,0),(2,29,494,0,0),(2,29,495,0,0),(2,29,496,0,0),(2,29,497,0,0),(2,29,502,0,0),(2,29,503,0,0),(2,29,504,0,0),(2,29,505,0,0),(2,29,513,0,0),(2,10,518,0,0),(2,10,519,0,0),(2,10,520,0,0),(2,10,521,0,0),(2,10,522,0,0),(2,10,523,0,0),(2,34,524,0,0),(2,34,525,0,0),(2,34,526,0,0),(2,34,527,0,0),(2,34,528,0,0),(2,34,529,0,0),(2,34,530,0,0),(2,34,531,0,0),(2,34,532,0,0),(2,34,533,0,0),(2,34,534,0,0),(2,34,535,0,0),(2,34,536,0,0),(2,34,537,0,0),(2,34,538,0,0),(2,34,539,0,0),(2,29,540,0,0),(2,35,541,0,0),(2,35,542,0,0),(2,35,543,0,0),(2,35,544,0,0),(2,35,545,0,0),(2,35,546,0,0),(2,35,547,0,0),(2,35,548,0,0),(2,35,549,0,0),(2,35,550,0,0),(2,35,551,0,0),(2,35,552,0,0),(2,35,553,0,0),(2,35,554,0,0),(2,35,555,0,0),(2,35,556,0,0),(2,35,557,0,0),(2,35,558,0,0),(2,35,559,0,0),(2,36,560,0,0),(2,36,561,0,0),(2,36,562,0,0),(2,36,563,0,0),(2,36,564,0,0),(2,36,565,0,0),(2,36,566,0,0),(2,36,567,0,0),(2,36,568,0,0),(2,36,569,0,0),(2,36,570,0,0),(2,36,571,0,0),(2,36,572,0,0),(2,36,573,0,0),(2,36,574,0,0),(2,36,575,0,0),(2,36,576,0,0),(2,36,577,0,0),(2,36,578,0,0),(2,38,579,0,0),(2,38,580,0,0),(2,38,581,0,0),(2,38,582,0,0),(2,38,583,0,0),(2,38,584,0,0),(2,38,585,0,0),(2,38,586,0,0),(2,38,587,0,0),(2,38,588,0,0),(2,38,589,0,0),(2,38,590,0,0),(2,38,591,0,0),(2,38,592,0,0),(2,38,593,0,0),(2,38,594,0,0),(2,38,595,0,0),(2,38,596,0,0),(2,42,597,0,0),(2,42,598,0,0),(2,42,599,0,0),(2,42,600,0,0),(2,42,601,0,0),(2,42,602,0,0),(2,42,603,0,0),(2,43,604,0,0),(2,43,605,0,0),(2,43,606,0,0),(2,43,607,0,0),(2,43,608,0,0),(2,43,609,0,0),(2,43,610,0,0),(2,43,611,0,0),(2,43,612,0,0),(2,43,613,0,0),(2,44,614,0,0),(2,44,615,0,0),(2,44,616,0,0),(2,44,617,0,0),(2,44,618,0,0),(2,44,619,0,0),(2,44,620,0,0),(2,44,621,0,0),(2,44,622,0,0),(2,44,623,0,0),(2,44,624,0,0),(2,44,625,0,0),(2,44,626,0,0),(2,44,627,0,0),(2,44,628,0,0),(2,45,629,0,0),(2,45,630,0,0),(2,45,631,0,0),(2,45,632,0,0),(2,45,633,0,0),(2,45,634,0,0),(2,45,635,0,0),(2,45,636,0,0),(2,45,637,0,0),(2,45,638,0,0),(2,45,639,0,0),(2,45,640,0,0),(2,45,641,0,0),(2,45,642,0,0),(2,45,643,0,0),(2,45,644,0,0),(2,45,645,0,0),(2,47,646,0,0),(2,47,647,0,0),(2,47,648,0,0),(2,47,649,0,0),(2,47,650,0,0),(2,2,651,0,0),(2,29,652,0,0),(2,23,653,0,0),(2,23,654,0,0),(2,23,655,0,0),(2,23,656,0,0),(2,23,657,0,0),(2,23,658,0,0),(2,23,659,0,0),(2,23,660,0,0),(2,23,661,0,0),(2,22,662,0,0),(2,22,663,0,0),(2,22,664,0,0),(2,22,665,0,0),(2,22,666,0,0),(2,22,667,0,0),(2,22,668,0,0),(2,22,669,0,0),(2,22,670,0,0),(2,21,671,0,0),(2,21,672,0,0),(2,21,673,0,0),(2,21,674,0,0),(2,21,675,0,0),(2,21,676,0,0),(2,21,677,0,0),(2,21,678,0,0),(2,21,679,0,0),(2,20,680,0,0),(2,20,681,0,0),(2,20,682,0,0),(2,20,683,0,0),(2,20,684,0,0),(2,20,685,0,0),(2,20,686,0,0),(2,20,687,0,0),(2,20,688,0,0),(2,29,689,0,0),(2,44,690,0,0),(2,42,691,0,0),(2,29,692,0,0),(2,29,693,0,0),(2,29,694,0,0),(2,23,695,0,0),(2,22,696,0,0),(2,21,697,0,0),(2,20,698,0,0),(2,29,699,0,0),(2,6,700,0,0),(2,4,701,0,0),(2,2,702,0,0),(2,29,703,0,0),(2,23,704,0,0),(2,23,705,0,0),(2,21,706,0,0),(2,21,707,0,0),(2,18,708,0,0),(2,7,709,0,0),(2,42,710,0,0),(2,42,711,0,0),(2,23,712,0,0),(2,20,713,0,0),(2,21,714,0,0),(2,22,715,0,0),(2,29,716,0,0),(2,2,717,0,0),(2,13,718,0,0),(2,29,719,0,0),(2,13,720,0,0),(2,29,721,0,0),(2,29,722,0,0),(2,29,723,0,0),(2,2,724,0,0),(2,4,725,0,0),(2,6,726,0,0),(2,7,727,0,0),(2,9,729,0,0),(2,13,730,0,0),(2,18,734,0,0),(2,21,737,0,0),(2,23,739,0,0),(2,42,745,0,0),(2,43,746,0,0),(2,44,747,0,0),(2,45,748,0,0),(2,29,750,0,0),(3,6,1,0,0),(3,6,2,0,0),(3,6,3,0,0),(3,6,4,0,0),(3,6,5,0,0),(3,6,6,0,0),(3,6,7,0,0),(3,6,8,0,0),(3,6,9,0,0),(3,6,10,0,0),(3,6,11,0,0),(3,6,12,0,0),(3,6,13,0,0),(3,6,14,0,0),(3,6,15,0,0),(3,6,16,0,0),(3,6,17,0,0),(3,6,18,0,0),(3,6,19,0,0),(3,6,20,0,0),(3,6,21,0,0),(3,6,22,0,0),(3,6,23,0,0),(3,6,24,0,0),(3,6,25,0,0),(3,6,26,0,0),(3,6,27,0,0),(3,6,28,0,0),(3,6,29,0,0),(3,6,30,0,0),(3,6,31,0,0),(3,6,32,0,0),(3,6,33,0,0),(3,6,34,0,0),(3,6,35,0,0),(3,6,36,0,0),(3,7,37,0,0),(3,7,38,0,0),(3,7,39,0,0),(3,7,40,0,0),(3,7,41,0,0),(3,7,42,0,0),(3,7,43,0,0),(3,7,44,0,0),(3,7,45,0,0),(3,7,46,0,0),(3,7,47,0,0),(3,7,48,0,0),(3,7,49,0,0),(3,7,50,0,0),(3,7,51,0,0),(3,7,52,0,0),(3,7,53,0,0),(3,7,54,0,0),(3,7,55,0,0),(3,7,56,0,0),(3,7,57,0,0),(3,7,58,0,0),(3,7,59,0,0),(3,7,60,0,0),(3,7,61,0,0),(3,7,62,0,0),(3,7,63,0,0),(3,7,64,0,0),(3,7,65,0,0),(3,4,66,0,0),(3,4,67,0,0),(3,4,68,0,0),(3,4,69,0,0),(3,4,70,0,0),(3,4,71,0,0),(3,4,72,0,0),(3,4,73,0,0),(3,4,74,0,0),(3,4,75,0,0),(3,4,76,0,0),(3,4,77,0,0),(3,4,78,0,0),(3,4,79,0,0),(3,4,80,0,0),(3,4,81,0,0),(3,4,82,0,0),(3,4,83,0,0),(3,4,84,0,0),(3,4,85,0,0),(3,4,86,0,0),(3,4,87,0,0),(3,4,88,0,0),(3,4,89,0,0),(3,4,90,0,0),(3,4,91,0,0),(3,4,92,0,0),(3,4,93,0,0),(3,4,94,0,0),(3,4,95,0,0),(3,4,96,0,0),(3,4,97,0,0),(3,4,98,0,0),(3,4,99,0,0),(3,4,100,0,0),(3,4,101,0,0),(3,4,102,0,0),(3,4,103,0,0),(3,4,104,0,0),(3,4,105,0,0),(3,4,106,0,0),(3,4,107,0,0),(3,4,108,0,0),(3,4,109,0,0),(3,2,110,0,0),(3,2,111,0,0),(3,2,112,0,0),(3,2,113,0,0),(3,2,114,0,0),(3,2,115,0,0),(3,2,116,0,0),(3,2,117,0,0),(3,2,118,0,0),(3,2,119,0,0),(3,2,120,0,0),(3,2,121,0,0),(3,2,122,0,0),(3,2,123,0,0),(3,2,124,0,0),(3,2,125,0,0),(3,26,126,0,0),(3,26,127,0,0),(3,26,128,0,0),(3,26,129,0,0),(3,26,130,0,0),(3,26,131,0,0),(3,26,132,0,0),(3,26,133,0,0),(3,26,134,0,0),(3,26,135,0,0),(3,26,136,0,0),(3,26,137,0,0),(3,26,138,0,0),(3,26,139,0,0),(3,26,140,0,0),(3,26,141,0,0),(3,26,142,0,0),(3,26,143,0,0),(3,26,144,0,0),(3,26,145,0,0),(3,26,146,0,0),(3,26,147,0,0),(3,26,148,0,0),(3,26,149,0,0),(3,26,150,0,0),(3,4,151,0,0),(3,6,152,0,0),(3,7,153,0,0),(3,26,154,0,0),(3,13,155,0,0),(3,13,156,0,0),(3,13,157,0,0),(3,13,158,0,0),(3,13,159,0,0),(3,13,160,0,0),(3,13,161,0,0),(3,13,162,0,0),(3,13,163,0,0),(3,13,164,0,0),(3,13,165,0,0),(3,13,166,0,0),(3,13,167,0,0),(3,13,168,0,0),(3,13,169,0,0),(3,13,170,0,0),(3,13,171,0,0),(3,13,172,0,0),(3,14,173,0,0),(3,14,174,0,0),(3,14,175,0,0),(3,14,176,0,0),(3,14,177,0,0),(3,14,178,0,0),(3,14,179,0,0),(3,14,180,0,0),(3,14,181,0,0),(3,14,182,0,0),(3,14,183,0,0),(3,14,184,0,0),(3,14,185,0,0),(3,14,186,0,0),(3,14,187,0,0),(3,14,188,0,0),(3,14,189,0,0),(3,14,190,0,0),(3,14,191,0,0),(3,14,192,0,0),(3,14,193,0,0),(3,14,194,0,0),(3,14,195,0,0),(3,14,196,0,0),(3,14,197,0,0),(3,14,198,0,0),(3,14,199,0,0),(3,14,200,0,0),(3,14,201,0,0),(3,14,202,0,0),(3,14,203,0,0),(3,8,204,0,0),(3,8,205,0,0),(3,8,206,0,0),(3,8,207,0,0),(3,8,208,0,0),(3,8,209,0,0),(3,8,210,0,0),(3,8,211,0,0),(3,8,212,0,0),(3,8,213,0,0),(3,8,214,0,0),(3,8,215,0,0),(3,8,216,0,0),(3,8,217,0,0),(3,8,218,0,0),(3,10,219,0,0),(3,10,220,0,0),(3,10,221,0,0),(3,10,222,0,0),(3,10,223,0,0),(3,10,224,0,0),(3,10,225,0,0),(3,10,226,0,0),(3,10,227,0,0),(3,10,228,0,0),(3,10,229,0,0),(3,10,230,0,0),(3,9,231,0,0),(3,9,232,0,0),(3,9,233,0,0),(3,9,234,0,0),(3,9,235,0,0),(3,9,236,0,0),(3,9,237,0,0),(3,9,238,0,0),(3,9,239,0,0),(3,9,240,0,0),(3,9,241,0,0),(3,9,242,0,0),(3,9,243,0,0),(3,9,244,0,0),(3,9,245,0,0),(3,9,246,0,0),(3,9,247,0,0),(3,9,248,0,0),(3,9,249,0,0),(3,9,250,0,0),(3,9,251,0,0),(3,9,252,0,0),(3,9,253,0,0),(3,9,254,0,0),(3,16,255,0,0),(3,16,256,0,0),(3,16,257,0,0),(3,16,258,0,0),(3,16,259,0,0),(3,16,260,0,0),(3,16,261,0,0),(3,16,262,0,0),(3,16,263,0,0),(3,16,264,0,0),(3,16,265,0,0),(3,16,266,0,0),(3,16,267,0,0),(3,16,268,0,0),(3,16,269,0,0),(3,16,270,0,0),(3,16,271,0,0),(3,16,272,0,0),(3,16,273,0,0),(3,16,274,0,0),(3,16,275,0,0),(3,16,276,0,0),(3,16,277,0,0),(3,15,278,0,0),(3,15,279,0,0),(3,15,280,0,0),(3,15,281,0,0),(3,15,282,0,0),(3,15,283,0,0),(3,15,284,0,0),(3,15,285,0,0),(3,15,286,0,0),(3,15,287,0,0),(3,18,288,0,0),(3,18,289,0,0),(3,18,290,0,0),(3,18,291,0,0),(3,18,292,0,0),(3,18,293,0,0),(3,18,294,0,0),(3,18,295,0,0),(3,18,296,0,0),(3,18,297,0,0),(3,18,298,0,0),(3,18,299,0,0),(3,18,300,0,0),(3,18,301,0,0),(3,18,302,0,0),(3,18,303,0,0),(3,18,304,0,0),(3,19,305,0,0),(3,19,306,0,0),(3,19,307,0,0),(3,19,308,0,0),(3,19,309,0,0),(3,19,310,0,0),(3,19,311,0,0),(3,19,312,0,0),(3,20,313,0,0),(3,20,314,0,0),(3,20,315,0,0),(3,20,316,0,0),(3,20,317,0,0),(3,20,318,0,0),(3,20,319,0,0),(3,20,320,0,0),(3,20,321,0,0),(3,20,322,0,0),(3,20,323,0,0),(3,20,324,0,0),(3,20,325,0,0),(3,20,326,0,0),(3,20,327,0,0),(3,20,328,0,0),(3,20,329,0,0),(3,20,330,0,0),(3,20,331,0,0),(3,20,332,0,0),(3,20,333,0,0),(3,20,334,0,0),(3,20,335,0,0),(3,20,336,0,0),(3,20,337,0,0),(3,20,338,0,0),(3,20,339,0,0),(3,20,340,0,0),(3,20,341,0,0),(3,20,342,0,0),(3,20,343,0,0),(3,20,344,0,0),(3,20,345,0,0),(3,20,346,0,0),(3,20,347,0,0),(3,20,348,0,0),(3,20,349,0,0),(3,21,350,0,0),(3,21,351,0,0),(3,21,352,0,0),(3,21,353,0,0),(3,21,354,0,0),(3,21,355,0,0),(3,21,356,0,0),(3,21,357,0,0),(3,21,358,0,0),(3,21,359,0,0),(3,21,360,0,0),(3,21,361,0,0),(3,21,362,0,0),(3,21,363,0,0),(3,21,364,0,0),(3,21,365,0,0),(3,21,366,0,0),(3,21,367,0,0),(3,21,368,0,0),(3,21,369,0,0),(3,21,370,0,0),(3,21,371,0,0),(3,21,372,0,0),(3,21,373,0,0),(3,21,374,0,0),(3,21,375,0,0),(3,21,376,0,0),(3,21,377,0,0),(3,21,378,0,0),(3,21,379,0,0),(3,21,380,0,0),(3,21,381,0,0),(3,21,382,0,0),(3,21,383,0,0),(3,21,384,0,0),(3,21,385,0,0),(3,21,386,0,0),(3,21,387,0,0),(3,22,388,0,0),(3,22,389,0,0),(3,22,390,0,0),(3,22,391,0,0),(3,22,392,0,0),(3,22,393,0,0),(3,22,394,0,0),(3,22,395,0,0),(3,22,396,0,0),(3,22,397,0,0),(3,22,398,0,0),(3,22,399,0,0),(3,22,400,0,0),(3,22,401,0,0),(3,22,402,0,0),(3,22,403,0,0),(3,22,404,0,0),(3,22,405,0,0),(3,22,406,0,0),(3,22,407,0,0),(3,22,408,0,0),(3,22,409,0,0),(3,22,410,0,0),(3,22,411,0,0),(3,22,412,0,0),(3,22,413,0,0),(3,22,414,0,0),(3,22,415,0,0),(3,22,416,0,0),(3,22,417,0,0),(3,22,418,0,0),(3,22,419,0,0),(3,22,420,0,0),(3,22,421,0,0),(3,22,422,0,0),(3,22,423,0,0),(3,22,424,0,0),(3,22,425,0,0),(3,22,426,0,0),(3,22,427,0,0),(3,22,428,0,0),(3,22,429,0,0),(3,22,430,0,0),(3,22,431,0,0),(3,22,432,0,0),(3,22,433,0,0),(3,22,434,0,0),(3,23,435,0,0),(3,23,436,0,0),(3,23,437,0,0),(3,23,438,0,0),(3,23,439,0,0),(3,23,440,0,0),(3,23,441,0,0),(3,23,442,0,0),(3,23,443,0,0),(3,23,444,0,0),(3,23,445,0,0),(3,23,446,0,0),(3,23,447,0,0),(3,23,448,0,0),(3,23,449,0,0),(3,23,450,0,0),(3,23,451,0,0),(3,23,452,0,0),(3,23,453,0,0),(3,23,454,0,0),(3,23,455,0,0),(3,23,456,0,0),(3,23,457,0,0),(3,23,458,0,0),(3,23,459,0,0),(3,23,460,0,0),(3,23,461,0,0),(3,23,462,0,0),(3,23,463,0,0),(3,23,464,0,0),(3,23,465,0,0),(3,23,466,0,0),(3,23,467,0,0),(3,23,468,0,0),(3,23,469,0,0),(3,23,470,0,0),(3,23,471,0,0),(3,23,472,0,0),(3,23,473,0,0),(3,29,474,0,0),(3,29,478,0,0),(3,29,479,0,0),(3,29,481,0,0),(3,29,488,0,0),(3,29,489,0,0),(3,29,490,0,0),(3,29,491,0,0),(3,29,493,0,0),(3,29,494,0,0),(3,29,495,0,0),(3,29,496,0,0),(3,29,497,0,0),(3,29,502,0,0),(3,29,503,0,0),(3,29,504,0,0),(3,29,505,0,0),(3,29,513,0,0),(3,10,518,0,0),(3,10,519,0,0),(3,10,520,0,0),(3,10,521,0,0),(3,10,522,0,0),(3,10,523,0,0),(3,34,524,0,0),(3,34,525,0,0),(3,34,526,0,0),(3,34,527,0,0),(3,34,528,0,0),(3,34,529,0,0),(3,34,530,0,0),(3,34,531,0,0),(3,34,532,0,0),(3,34,533,0,0),(3,34,534,0,0),(3,34,535,0,0),(3,34,536,0,0),(3,34,537,0,0),(3,34,538,0,0),(3,34,539,0,0),(3,29,540,0,0),(3,35,541,0,0),(3,35,542,0,0),(3,35,543,0,0),(3,35,544,0,0),(3,35,545,0,0),(3,35,546,0,0),(3,35,547,0,0),(3,35,548,0,0),(3,35,549,0,0),(3,35,550,0,0),(3,35,551,0,0),(3,35,552,0,0),(3,35,553,0,0),(3,35,554,0,0),(3,35,555,0,0),(3,35,556,0,0),(3,35,557,0,0),(3,35,558,0,0),(3,35,559,0,0),(3,36,560,0,0),(3,36,561,0,0),(3,36,562,0,0),(3,36,563,0,0),(3,36,564,0,0),(3,36,565,0,0),(3,36,566,0,0),(3,36,567,0,0),(3,36,568,0,0),(3,36,569,0,0),(3,36,570,0,0),(3,36,571,0,0),(3,36,572,0,0),(3,36,573,0,0),(3,36,574,0,0),(3,36,575,0,0),(3,36,576,0,0),(3,36,577,0,0),(3,36,578,0,0),(3,38,579,0,0),(3,38,580,0,0),(3,38,581,0,0),(3,38,582,0,0),(3,38,583,0,0),(3,38,584,0,0),(3,38,585,0,0),(3,38,586,0,0),(3,38,587,0,0),(3,38,588,0,0),(3,38,589,0,0),(3,38,590,0,0),(3,38,591,0,0),(3,38,592,0,0),(3,38,593,0,0),(3,38,594,0,0),(3,38,595,0,0),(3,38,596,0,0),(3,42,597,0,0),(3,42,598,0,0),(3,42,599,0,0),(3,42,600,0,0),(3,42,601,0,0),(3,42,602,0,0),(3,42,603,0,0),(3,43,604,0,0),(3,43,605,0,0),(3,43,606,0,0),(3,43,607,0,0),(3,43,608,0,0),(3,43,609,0,0),(3,43,610,0,0),(3,43,611,0,0),(3,43,612,0,0),(3,43,613,0,0),(3,44,614,0,0),(3,44,615,0,0),(3,44,616,0,0),(3,44,617,0,0),(3,44,618,0,0),(3,44,619,0,0),(3,44,620,0,0),(3,44,621,0,0),(3,44,622,0,0),(3,44,623,0,0),(3,44,624,0,0),(3,44,625,0,0),(3,44,626,0,0),(3,44,627,0,0),(3,44,628,0,0),(3,45,629,0,0),(3,45,630,0,0),(3,45,631,0,0),(3,45,632,0,0),(3,45,633,0,0),(3,45,634,0,0),(3,45,635,0,0),(3,45,636,0,0),(3,45,637,0,0),(3,45,638,0,0),(3,45,639,0,0),(3,45,640,0,0),(3,45,641,0,0),(3,45,642,0,0),(3,45,643,0,0),(3,45,644,0,0),(3,45,645,0,0),(3,47,646,0,0),(3,47,647,0,0),(3,47,648,0,0),(3,47,649,0,0),(3,47,650,0,0),(3,2,651,0,0),(3,29,652,0,0),(3,23,653,0,0),(3,23,654,0,0),(3,23,655,0,0),(3,23,656,0,0),(3,23,657,0,0),(3,23,658,0,0),(3,23,659,0,0),(3,23,660,0,0),(3,23,661,0,0),(3,22,662,0,0),(3,22,663,0,0),(3,22,664,0,0),(3,22,665,0,0),(3,22,666,0,0),(3,22,667,0,0),(3,22,668,0,0),(3,22,669,0,0),(3,22,670,0,0),(3,21,671,0,0),(3,21,672,0,0),(3,21,673,0,0),(3,21,674,0,0),(3,21,675,0,0),(3,21,676,0,0),(3,21,677,0,0),(3,21,678,0,0),(3,21,679,0,0),(3,20,680,0,0),(3,20,681,0,0),(3,20,682,0,0),(3,20,683,0,0),(3,20,684,0,0),(3,20,685,0,0),(3,20,686,0,0),(3,20,687,0,0),(3,20,688,0,0),(3,29,689,0,0),(3,44,690,0,0),(3,42,691,0,0),(3,29,692,0,0),(3,29,693,0,0),(3,29,694,0,0),(3,23,695,0,0),(3,22,696,0,0),(3,21,697,0,0),(3,20,698,0,0),(3,29,699,0,0),(3,6,700,0,0),(3,4,701,0,0),(3,2,702,0,0),(3,29,703,0,0),(3,23,704,0,0),(3,23,705,0,0),(3,21,706,0,0),(3,21,707,0,0),(3,18,708,0,0),(3,7,709,0,0),(3,42,710,0,0),(3,42,711,0,0),(3,23,712,0,0),(3,20,713,0,0),(3,21,714,0,0),(3,22,715,0,0),(3,29,716,0,0),(3,2,717,0,0),(3,13,718,0,0),(3,29,719,0,0),(3,13,720,0,0),(3,29,721,0,0),(3,29,722,0,0),(3,29,723,0,0),(3,2,724,0,0),(3,4,725,0,0),(3,6,726,0,0),(3,7,727,0,0),(3,9,729,0,0),(3,13,730,0,0),(3,18,734,0,0),(3,21,737,0,0),(3,23,739,0,0),(3,42,745,0,0),(3,43,746,0,0),(3,44,747,0,0),(3,45,748,0,0),(3,29,750,0,0),(4,6,1,0,0),(4,6,2,0,0),(4,6,3,0,0),(4,6,4,0,0),(4,6,5,0,0),(4,6,6,0,0),(4,6,7,0,0),(4,6,8,0,0),(4,6,9,0,0),(4,6,10,0,0),(4,6,11,0,0),(4,6,12,0,0),(4,6,13,0,0),(4,6,14,0,0),(4,6,15,0,0),(4,6,16,0,0),(4,6,17,0,0),(4,6,18,0,0),(4,6,19,0,0),(4,6,20,0,0),(4,6,21,0,0),(4,6,22,0,0),(4,6,23,0,0),(4,6,24,0,0),(4,6,25,0,0),(4,6,26,0,0),(4,6,27,0,0),(4,6,28,0,0),(4,6,29,0,0),(4,6,30,0,0),(4,6,31,0,0),(4,6,32,0,0),(4,6,33,0,0),(4,6,34,0,0),(4,6,35,0,0),(4,6,36,0,0),(4,7,37,0,0),(4,7,38,0,0),(4,7,39,0,0),(4,7,40,0,0),(4,7,41,0,0),(4,7,42,0,0),(4,7,43,0,0),(4,7,44,0,0),(4,7,45,0,0),(4,7,46,0,0),(4,7,47,0,0),(4,7,48,0,0),(4,7,49,0,0),(4,7,50,0,0),(4,7,51,0,0),(4,7,52,0,0),(4,7,53,0,0),(4,7,54,0,0),(4,7,55,0,0),(4,7,56,0,0),(4,7,57,0,0),(4,7,58,0,0),(4,7,59,0,0),(4,7,60,0,0),(4,7,61,0,0),(4,7,62,0,0),(4,7,63,0,0),(4,7,64,0,0),(4,7,65,0,0),(4,4,66,0,0),(4,4,67,0,0),(4,4,68,0,0),(4,4,69,0,0),(4,4,70,0,0),(4,4,71,0,0),(4,4,72,0,0),(4,4,73,0,0),(4,4,74,0,0),(4,4,75,0,0),(4,4,76,0,0),(4,4,77,0,0),(4,4,78,0,0),(4,4,79,0,0),(4,4,80,0,0),(4,4,81,0,0),(4,4,82,0,0),(4,4,83,0,0),(4,4,84,0,0),(4,4,85,0,0),(4,4,86,0,0),(4,4,87,0,0),(4,4,88,0,0),(4,4,89,0,0),(4,4,90,0,0),(4,4,91,0,0),(4,4,92,0,0),(4,4,93,0,0),(4,4,94,0,0),(4,4,95,0,0),(4,4,96,0,0),(4,4,97,0,0),(4,4,98,0,0),(4,4,99,0,0),(4,4,100,0,0),(4,4,101,0,0),(4,4,102,0,0),(4,4,103,0,0),(4,4,104,0,0),(4,4,105,0,0),(4,4,106,0,0),(4,4,107,0,0),(4,4,108,0,0),(4,4,109,0,0),(4,2,110,0,0),(4,2,111,0,0),(4,2,112,0,0),(4,2,113,0,0),(4,2,114,0,0),(4,2,115,0,0),(4,2,116,0,0),(4,2,117,0,0),(4,2,118,0,0),(4,2,119,0,0),(4,2,120,0,0),(4,2,121,0,0),(4,2,122,0,0),(4,2,123,0,0),(4,2,124,0,0),(4,2,125,0,0),(4,26,126,0,0),(4,26,127,0,0),(4,26,128,0,0),(4,26,129,0,0),(4,26,130,0,0),(4,26,131,0,0),(4,26,132,0,0),(4,26,133,0,0),(4,26,134,0,0),(4,26,135,0,0),(4,26,136,0,0),(4,26,137,0,0),(4,26,138,0,0),(4,26,139,0,0),(4,26,140,0,0),(4,26,141,0,0),(4,26,142,0,0),(4,26,143,0,0),(4,26,144,0,0),(4,26,145,0,0),(4,26,146,0,0),(4,26,147,0,0),(4,26,148,0,0),(4,26,149,0,0),(4,26,150,0,0),(4,4,151,0,0),(4,6,152,0,0),(4,7,153,0,0),(4,26,154,0,0),(4,13,155,0,0),(4,13,156,0,0),(4,13,157,0,0),(4,13,158,0,0),(4,13,159,0,0),(4,13,160,0,0),(4,13,161,0,0),(4,13,162,0,0),(4,13,163,0,0),(4,13,164,0,0),(4,13,165,0,0),(4,13,166,0,0),(4,13,167,0,0),(4,13,168,0,0),(4,13,169,0,0),(4,13,170,0,0),(4,13,171,0,0),(4,13,172,0,0),(4,14,173,0,0),(4,14,174,0,0),(4,14,175,0,0),(4,14,176,0,0),(4,14,177,0,0),(4,14,178,0,0),(4,14,179,0,0),(4,14,180,0,0),(4,14,181,0,0),(4,14,182,0,0),(4,14,183,0,0),(4,14,184,0,0),(4,14,185,0,0),(4,14,186,0,0),(4,14,187,0,0),(4,14,188,0,0),(4,14,189,0,0),(4,14,190,0,0),(4,14,191,0,0),(4,14,192,0,0),(4,14,193,0,0),(4,14,194,0,0),(4,14,195,0,0),(4,14,196,0,0),(4,14,197,0,0),(4,14,198,0,0),(4,14,199,0,0),(4,14,200,0,0),(4,14,201,0,0),(4,14,202,0,0),(4,14,203,0,0),(4,8,204,0,0),(4,8,205,0,0),(4,8,206,0,0),(4,8,207,0,0),(4,8,208,0,0),(4,8,209,0,0),(4,8,210,0,0),(4,8,211,0,0),(4,8,212,0,0),(4,8,213,0,0),(4,8,214,0,0),(4,8,215,0,0),(4,8,216,0,0),(4,8,217,0,0),(4,8,218,0,0),(4,10,219,0,0),(4,10,220,0,0),(4,10,221,0,0),(4,10,222,0,0),(4,10,223,0,0),(4,10,224,0,0),(4,10,225,0,0),(4,10,226,0,0),(4,10,227,0,0),(4,10,228,0,0),(4,10,229,0,0),(4,10,230,0,0),(4,9,231,0,0),(4,9,232,0,0),(4,9,233,0,0),(4,9,234,0,0),(4,9,235,0,0),(4,9,236,0,0),(4,9,237,0,0),(4,9,238,0,0),(4,9,239,0,0),(4,9,240,0,0),(4,9,241,0,0),(4,9,242,0,0),(4,9,243,0,0),(4,9,244,0,0),(4,9,245,0,0),(4,9,246,0,0),(4,9,247,0,0),(4,9,248,0,0),(4,9,249,0,0),(4,9,250,0,0),(4,9,251,0,0),(4,9,252,0,0),(4,9,253,0,0),(4,9,254,0,0),(4,16,255,0,0),(4,16,256,0,0),(4,16,257,0,0),(4,16,258,0,0),(4,16,259,0,0),(4,16,260,0,0),(4,16,261,0,0),(4,16,262,0,0),(4,16,263,0,0),(4,16,264,0,0),(4,16,265,0,0),(4,16,266,0,0),(4,16,267,0,0),(4,16,268,0,0),(4,16,269,0,0),(4,16,270,0,0),(4,16,271,0,0),(4,16,272,0,0),(4,16,273,0,0),(4,16,274,0,0),(4,16,275,0,0),(4,16,276,0,0),(4,16,277,0,0),(4,15,278,0,0),(4,15,279,0,0),(4,15,280,0,0),(4,15,281,0,0),(4,15,282,0,0),(4,15,283,0,0),(4,15,284,0,0),(4,15,285,0,0),(4,15,286,0,0),(4,15,287,0,0),(4,18,288,0,0),(4,18,289,0,0),(4,18,290,0,0),(4,18,291,0,0),(4,18,292,0,0),(4,18,293,0,0),(4,18,294,0,0),(4,18,295,0,0),(4,18,296,0,0),(4,18,297,0,0),(4,18,298,0,0),(4,18,299,0,0),(4,18,300,0,0),(4,18,301,0,0),(4,18,302,0,0),(4,18,303,0,0),(4,18,304,0,0),(4,19,305,0,0),(4,19,306,0,0),(4,19,307,0,0),(4,19,308,0,0),(4,19,309,0,0),(4,19,310,0,0),(4,19,311,0,0),(4,19,312,0,0),(4,20,313,0,0),(4,20,314,0,0),(4,20,315,0,0),(4,20,316,0,0),(4,20,317,0,0),(4,20,318,0,0),(4,20,319,0,0),(4,20,320,0,0),(4,20,321,0,0),(4,20,322,0,0),(4,20,323,0,0),(4,20,324,0,0),(4,20,325,0,0),(4,20,326,0,0),(4,20,327,0,0),(4,20,328,0,0),(4,20,329,0,0),(4,20,330,0,0),(4,20,331,0,0),(4,20,332,0,0),(4,20,333,0,0),(4,20,334,0,0),(4,20,335,0,0),(4,20,336,0,0),(4,20,337,0,0),(4,20,338,0,0),(4,20,339,0,0),(4,20,340,0,0),(4,20,341,0,0),(4,20,342,0,0),(4,20,343,0,0),(4,20,344,0,0),(4,20,345,0,0),(4,20,346,0,0),(4,20,347,0,0),(4,20,348,0,0),(4,20,349,0,0),(4,21,350,0,0),(4,21,351,0,0),(4,21,352,0,0),(4,21,353,0,0),(4,21,354,0,0),(4,21,355,0,0),(4,21,356,0,0),(4,21,357,0,0),(4,21,358,0,0),(4,21,359,0,0),(4,21,360,0,0),(4,21,361,0,0),(4,21,362,0,0),(4,21,363,0,0),(4,21,364,0,0),(4,21,365,0,0),(4,21,366,0,0),(4,21,367,0,0),(4,21,368,0,0),(4,21,369,0,0),(4,21,370,0,0),(4,21,371,0,0),(4,21,372,0,0),(4,21,373,0,0),(4,21,374,0,0),(4,21,375,0,0),(4,21,376,0,0),(4,21,377,0,0),(4,21,378,0,0),(4,21,379,0,0),(4,21,380,0,0),(4,21,381,0,0),(4,21,382,0,0),(4,21,383,0,0),(4,21,384,0,0),(4,21,385,0,0),(4,21,386,0,0),(4,21,387,0,0),(4,22,388,0,0),(4,22,389,0,0),(4,22,390,0,0),(4,22,391,0,0),(4,22,392,0,0),(4,22,393,0,0),(4,22,394,0,0),(4,22,395,0,0),(4,22,396,0,0),(4,22,397,0,0),(4,22,398,0,0),(4,22,399,0,0),(4,22,400,0,0),(4,22,401,0,0),(4,22,402,0,0),(4,22,403,0,0),(4,22,404,0,0),(4,22,405,0,0),(4,22,406,0,0),(4,22,407,0,0),(4,22,408,0,0),(4,22,409,0,0),(4,22,410,0,0),(4,22,411,0,0),(4,22,412,0,0),(4,22,413,0,0),(4,22,414,0,0),(4,22,415,0,0),(4,22,416,0,0),(4,22,417,0,0),(4,22,418,0,0),(4,22,419,0,0),(4,22,420,0,0),(4,22,421,0,0),(4,22,422,0,0),(4,22,423,0,0),(4,22,424,0,0),(4,22,425,0,0),(4,22,426,0,0),(4,22,427,0,0),(4,22,428,0,0),(4,22,429,0,0),(4,22,430,0,0),(4,22,431,0,0),(4,22,432,0,0),(4,22,433,0,0),(4,22,434,0,0),(4,23,435,0,0),(4,23,436,0,0),(4,23,437,0,0),(4,23,438,0,0),(4,23,439,0,0),(4,23,440,0,0),(4,23,441,0,0),(4,23,442,0,0),(4,23,443,0,0),(4,23,444,0,0),(4,23,445,0,0),(4,23,446,0,0),(4,23,447,0,0),(4,23,448,0,0),(4,23,449,0,0),(4,23,450,0,0),(4,23,451,0,0),(4,23,452,0,0),(4,23,453,0,0),(4,23,454,0,0),(4,23,455,0,0),(4,23,456,0,0),(4,23,457,0,0),(4,23,458,0,0),(4,23,459,0,0),(4,23,460,0,0),(4,23,461,0,0),(4,23,462,0,0),(4,23,463,0,0),(4,23,464,0,0),(4,23,465,0,0),(4,23,466,0,0),(4,23,467,0,0),(4,23,468,0,0),(4,23,469,0,0),(4,23,470,0,0),(4,23,471,0,0),(4,23,472,0,0),(4,23,473,0,0),(4,29,474,0,0),(4,29,478,0,0),(4,29,479,0,0),(4,29,481,0,0),(4,29,488,0,0),(4,29,489,0,0),(4,29,490,0,0),(4,29,491,0,0),(4,29,493,0,0),(4,29,494,0,0),(4,29,495,0,0),(4,29,496,0,0),(4,29,497,0,0),(4,29,502,0,0),(4,29,503,0,0),(4,29,504,0,0),(4,29,505,0,0),(4,29,513,0,0),(4,10,518,0,0),(4,10,519,0,0),(4,10,520,0,0),(4,10,521,0,0),(4,10,522,0,0),(4,10,523,0,0),(4,34,524,0,0),(4,34,525,0,0),(4,34,526,0,0),(4,34,527,0,0),(4,34,528,0,0),(4,34,529,0,0),(4,34,530,0,0),(4,34,531,0,0),(4,34,532,0,0),(4,34,533,0,0),(4,34,534,0,0),(4,34,535,0,0),(4,34,536,0,0),(4,34,537,0,0),(4,34,538,0,0),(4,34,539,0,0),(4,29,540,0,0),(4,35,541,0,0),(4,35,542,0,0),(4,35,543,0,0),(4,35,544,0,0),(4,35,545,0,0),(4,35,546,0,0),(4,35,547,0,0),(4,35,548,0,0),(4,35,549,0,0),(4,35,550,0,0),(4,35,551,0,0),(4,35,552,0,0),(4,35,553,0,0),(4,35,554,0,0),(4,35,555,0,0),(4,35,556,0,0),(4,35,557,0,0),(4,35,558,0,0),(4,35,559,0,0),(4,36,560,0,0),(4,36,561,0,0),(4,36,562,0,0),(4,36,563,0,0),(4,36,564,0,0),(4,36,565,0,0),(4,36,566,0,0),(4,36,567,0,0),(4,36,568,0,0),(4,36,569,0,0),(4,36,570,0,0),(4,36,571,0,0),(4,36,572,0,0),(4,36,573,0,0),(4,36,574,0,0),(4,36,575,0,0),(4,36,576,0,0),(4,36,577,0,0),(4,36,578,0,0),(4,38,579,0,0),(4,38,580,0,0),(4,38,581,0,0),(4,38,582,0,0),(4,38,583,0,0),(4,38,584,0,0),(4,38,585,0,0),(4,38,586,0,0),(4,38,587,0,0),(4,38,588,0,0),(4,38,589,0,0),(4,38,590,0,0),(4,38,591,0,0),(4,38,592,0,0),(4,38,593,0,0),(4,38,594,0,0),(4,38,595,0,0),(4,38,596,0,0),(4,42,597,0,0),(4,42,598,0,0),(4,42,599,0,0),(4,42,600,0,0),(4,42,601,0,0),(4,42,602,0,0),(4,42,603,0,0),(4,43,604,0,0),(4,43,605,0,0),(4,43,606,0,0),(4,43,607,0,0),(4,43,608,0,0),(4,43,609,0,0),(4,43,610,0,0),(4,43,611,0,0),(4,43,612,0,0),(4,43,613,0,0),(4,44,614,0,0),(4,44,615,0,0),(4,44,616,0,0),(4,44,617,0,0),(4,44,618,0,0),(4,44,619,0,0),(4,44,620,0,0),(4,44,621,0,0),(4,44,622,0,0),(4,44,623,0,0),(4,44,624,0,0),(4,44,625,0,0),(4,44,626,0,0),(4,44,627,0,0),(4,44,628,0,0),(4,45,629,0,0),(4,45,630,0,0),(4,45,631,0,0),(4,45,632,0,0),(4,45,633,0,0),(4,45,634,0,0),(4,45,635,0,0),(4,45,636,0,0),(4,45,637,0,0),(4,45,638,0,0),(4,45,639,0,0),(4,45,640,0,0),(4,45,641,0,0),(4,45,642,0,0),(4,45,643,0,0),(4,45,644,0,0),(4,45,645,0,0),(4,47,646,0,0),(4,47,647,0,0),(4,47,648,0,0),(4,47,649,0,0),(4,47,650,0,0),(4,2,651,0,0),(4,29,652,0,0),(4,23,653,0,0),(4,23,654,0,0),(4,23,655,0,0),(4,23,656,0,0),(4,23,657,0,0),(4,23,658,0,0),(4,23,659,0,0),(4,23,660,0,0),(4,23,661,0,0),(4,22,662,0,0),(4,22,663,0,0),(4,22,664,0,0),(4,22,665,0,0),(4,22,666,0,0),(4,22,667,0,0),(4,22,668,0,0),(4,22,669,0,0),(4,22,670,0,0),(4,21,671,0,0),(4,21,672,0,0),(4,21,673,0,0),(4,21,674,0,0),(4,21,675,0,0),(4,21,676,0,0),(4,21,677,0,0),(4,21,678,0,0),(4,21,679,0,0),(4,20,680,0,0),(4,20,681,0,0),(4,20,682,0,0),(4,20,683,0,0),(4,20,684,0,0),(4,20,685,0,0),(4,20,686,0,0),(4,20,687,0,0),(4,20,688,0,0),(4,29,689,0,0),(4,44,690,0,0),(4,42,691,0,0),(4,29,692,0,0),(4,29,693,0,0),(4,29,694,0,0),(4,23,695,0,0),(4,22,696,0,0),(4,21,697,0,0),(4,20,698,0,0),(4,29,699,0,0),(4,6,700,0,0),(4,4,701,0,0),(4,2,702,0,0),(4,29,703,0,0),(4,23,704,0,0),(4,23,705,0,0),(4,21,706,0,0),(4,21,707,0,0),(4,18,708,0,0),(4,7,709,0,0),(4,42,710,0,0),(4,42,711,0,0),(4,23,712,0,0),(4,20,713,0,0),(4,21,714,0,0),(4,22,715,0,0),(4,29,716,0,0),(4,2,717,0,0),(4,13,718,0,0),(4,29,719,0,0),(4,13,720,0,0),(4,29,721,0,0),(4,29,722,0,0),(4,29,723,0,0),(4,2,724,0,0),(4,4,725,0,0),(4,6,726,0,0),(4,7,727,0,0),(4,9,729,0,0),(4,13,730,0,0),(4,18,734,0,0),(4,21,737,0,0),(4,23,739,0,0),(4,42,745,0,0),(4,43,746,0,0),(4,44,747,0,0),(4,45,748,0,0),(4,29,750,0,0);
/*!40000 ALTER TABLE `vtiger_profile2field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2globalpermissions`
--

DROP TABLE IF EXISTS `vtiger_profile2globalpermissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) default NULL,
  PRIMARY KEY  (`profileid`,`globalactionid`),
  KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile2globalpermissions`
--

LOCK TABLES `vtiger_profile2globalpermissions` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2globalpermissions` DISABLE KEYS */;
INSERT INTO `vtiger_profile2globalpermissions` VALUES (1,1,0),(1,2,0),(2,1,1),(2,2,1),(3,1,1),(3,2,1),(4,1,1),(4,2,1);
/*!40000 ALTER TABLE `vtiger_profile2globalpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2standardpermissions`
--

DROP TABLE IF EXISTS `vtiger_profile2standardpermissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) default NULL,
  PRIMARY KEY  (`profileid`,`tabid`,`operation`),
  KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile2standardpermissions`
--

LOCK TABLES `vtiger_profile2standardpermissions` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2standardpermissions` DISABLE KEYS */;
INSERT INTO `vtiger_profile2standardpermissions` VALUES (1,2,0,0),(1,2,1,0),(1,2,2,0),(1,2,3,0),(1,2,4,0),(1,4,0,0),(1,4,1,0),(1,4,2,0),(1,4,3,0),(1,4,4,0),(1,6,0,0),(1,6,1,0),(1,6,2,0),(1,6,3,0),(1,6,4,0),(1,7,0,0),(1,7,1,0),(1,7,2,0),(1,7,3,0),(1,7,4,0),(1,8,0,0),(1,8,1,0),(1,8,2,0),(1,8,3,0),(1,8,4,0),(1,9,0,0),(1,9,1,0),(1,9,2,0),(1,9,3,0),(1,9,4,0),(1,13,0,0),(1,13,1,0),(1,13,2,0),(1,13,3,0),(1,13,4,0),(1,14,0,0),(1,14,1,0),(1,14,2,0),(1,14,3,0),(1,14,4,0),(1,15,0,0),(1,15,1,0),(1,15,2,0),(1,15,3,0),(1,15,4,0),(1,16,0,0),(1,16,1,0),(1,16,2,0),(1,16,3,0),(1,16,4,0),(1,18,0,0),(1,18,1,0),(1,18,2,0),(1,18,3,0),(1,18,4,0),(1,19,0,0),(1,19,1,0),(1,19,2,0),(1,19,3,0),(1,19,4,0),(1,20,0,0),(1,20,1,0),(1,20,2,0),(1,20,3,0),(1,20,4,0),(1,21,0,0),(1,21,1,0),(1,21,2,0),(1,21,3,0),(1,21,4,0),(1,22,0,0),(1,22,1,0),(1,22,2,0),(1,22,3,0),(1,22,4,0),(1,23,0,0),(1,23,1,0),(1,23,2,0),(1,23,3,0),(1,23,4,0),(1,26,0,0),(1,26,1,0),(1,26,2,0),(1,26,3,0),(1,26,4,0),(1,34,0,0),(1,34,1,0),(1,34,2,0),(1,34,3,0),(1,34,4,0),(1,35,0,0),(1,35,1,0),(1,35,2,0),(1,35,3,0),(1,35,4,0),(1,36,0,0),(1,36,1,0),(1,36,2,0),(1,36,3,0),(1,36,4,0),(1,38,0,0),(1,38,1,0),(1,38,2,0),(1,38,3,0),(1,38,4,0),(1,42,0,0),(1,42,1,0),(1,42,2,0),(1,42,3,0),(1,42,4,0),(1,43,0,0),(1,43,1,0),(1,43,2,0),(1,43,3,0),(1,43,4,0),(1,44,0,0),(1,44,1,0),(1,44,2,0),(1,44,3,0),(1,44,4,0),(1,45,0,0),(1,45,1,0),(1,45,2,0),(1,45,3,0),(1,45,4,0),(1,47,0,0),(1,47,1,0),(1,47,2,0),(1,47,3,0),(1,47,4,0),(2,2,0,0),(2,2,1,0),(2,2,2,0),(2,2,3,0),(2,2,4,0),(2,4,0,0),(2,4,1,0),(2,4,2,0),(2,4,3,0),(2,4,4,0),(2,6,0,0),(2,6,1,0),(2,6,2,0),(2,6,3,0),(2,6,4,0),(2,7,0,0),(2,7,1,0),(2,7,2,0),(2,7,3,0),(2,7,4,0),(2,8,0,0),(2,8,1,0),(2,8,2,0),(2,8,3,0),(2,8,4,0),(2,9,0,0),(2,9,1,0),(2,9,2,0),(2,9,3,0),(2,9,4,0),(2,13,0,1),(2,13,1,1),(2,13,2,1),(2,13,3,0),(2,13,4,0),(2,14,0,0),(2,14,1,0),(2,14,2,0),(2,14,3,0),(2,14,4,0),(2,15,0,0),(2,15,1,0),(2,15,2,0),(2,15,3,0),(2,15,4,0),(2,16,0,0),(2,16,1,0),(2,16,2,0),(2,16,3,0),(2,16,4,0),(2,18,0,0),(2,18,1,0),(2,18,2,0),(2,18,3,0),(2,18,4,0),(2,19,0,0),(2,19,1,0),(2,19,2,0),(2,19,3,0),(2,19,4,0),(2,20,0,0),(2,20,1,0),(2,20,2,0),(2,20,3,0),(2,20,4,0),(2,21,0,0),(2,21,1,0),(2,21,2,0),(2,21,3,0),(2,21,4,0),(2,22,0,0),(2,22,1,0),(2,22,2,0),(2,22,3,0),(2,22,4,0),(2,23,0,0),(2,23,1,0),(2,23,2,0),(2,23,3,0),(2,23,4,0),(2,26,0,0),(2,26,1,0),(2,26,2,0),(2,26,3,0),(2,26,4,0),(2,34,0,0),(2,34,1,0),(2,34,2,0),(2,34,3,0),(2,34,4,0),(2,35,0,0),(2,35,1,0),(2,35,2,0),(2,35,3,0),(2,35,4,0),(2,36,0,0),(2,36,1,0),(2,36,2,0),(2,36,3,0),(2,36,4,0),(2,38,0,0),(2,38,1,0),(2,38,2,0),(2,38,3,0),(2,38,4,0),(2,42,0,0),(2,42,1,0),(2,42,2,0),(2,42,3,0),(2,42,4,0),(2,43,0,0),(2,43,1,0),(2,43,2,0),(2,43,3,0),(2,43,4,0),(2,44,0,0),(2,44,1,0),(2,44,2,0),(2,44,3,0),(2,44,4,0),(2,45,0,0),(2,45,1,0),(2,45,2,0),(2,45,3,0),(2,45,4,0),(2,47,0,0),(2,47,1,0),(2,47,2,0),(2,47,3,0),(2,47,4,0),(3,2,0,1),(3,2,1,1),(3,2,2,1),(3,2,3,0),(3,2,4,0),(3,4,0,0),(3,4,1,0),(3,4,2,0),(3,4,3,0),(3,4,4,0),(3,6,0,0),(3,6,1,0),(3,6,2,0),(3,6,3,0),(3,6,4,0),(3,7,0,0),(3,7,1,0),(3,7,2,0),(3,7,3,0),(3,7,4,0),(3,8,0,0),(3,8,1,0),(3,8,2,0),(3,8,3,0),(3,8,4,0),(3,9,0,0),(3,9,1,0),(3,9,2,0),(3,9,3,0),(3,9,4,0),(3,13,0,0),(3,13,1,0),(3,13,2,0),(3,13,3,0),(3,13,4,0),(3,14,0,0),(3,14,1,0),(3,14,2,0),(3,14,3,0),(3,14,4,0),(3,15,0,0),(3,15,1,0),(3,15,2,0),(3,15,3,0),(3,15,4,0),(3,16,0,0),(3,16,1,0),(3,16,2,0),(3,16,3,0),(3,16,4,0),(3,18,0,0),(3,18,1,0),(3,18,2,0),(3,18,3,0),(3,18,4,0),(3,19,0,0),(3,19,1,0),(3,19,2,0),(3,19,3,0),(3,19,4,0),(3,20,0,0),(3,20,1,0),(3,20,2,0),(3,20,3,0),(3,20,4,0),(3,21,0,0),(3,21,1,0),(3,21,2,0),(3,21,3,0),(3,21,4,0),(3,22,0,0),(3,22,1,0),(3,22,2,0),(3,22,3,0),(3,22,4,0),(3,23,0,0),(3,23,1,0),(3,23,2,0),(3,23,3,0),(3,23,4,0),(3,26,0,0),(3,26,1,0),(3,26,2,0),(3,26,3,0),(3,26,4,0),(3,34,0,0),(3,34,1,0),(3,34,2,0),(3,34,3,0),(3,34,4,0),(3,35,0,0),(3,35,1,0),(3,35,2,0),(3,35,3,0),(3,35,4,0),(3,36,0,0),(3,36,1,0),(3,36,2,0),(3,36,3,0),(3,36,4,0),(3,38,0,0),(3,38,1,0),(3,38,2,0),(3,38,3,0),(3,38,4,0),(3,42,0,0),(3,42,1,0),(3,42,2,0),(3,42,3,0),(3,42,4,0),(3,43,0,0),(3,43,1,0),(3,43,2,0),(3,43,3,0),(3,43,4,0),(3,44,0,0),(3,44,1,0),(3,44,2,0),(3,44,3,0),(3,44,4,0),(3,45,0,0),(3,45,1,0),(3,45,2,0),(3,45,3,0),(3,45,4,0),(3,47,0,0),(3,47,1,0),(3,47,2,0),(3,47,3,0),(3,47,4,0),(4,2,0,1),(4,2,1,1),(4,2,2,1),(4,2,3,0),(4,2,4,0),(4,4,0,1),(4,4,1,1),(4,4,2,1),(4,4,3,0),(4,4,4,0),(4,6,0,1),(4,6,1,1),(4,6,2,1),(4,6,3,0),(4,6,4,0),(4,7,0,1),(4,7,1,1),(4,7,2,1),(4,7,3,0),(4,7,4,0),(4,8,0,1),(4,8,1,1),(4,8,2,1),(4,8,3,0),(4,8,4,0),(4,9,0,1),(4,9,1,1),(4,9,2,1),(4,9,3,0),(4,9,4,0),(4,13,0,1),(4,13,1,1),(4,13,2,1),(4,13,3,0),(4,13,4,0),(4,14,0,1),(4,14,1,1),(4,14,2,1),(4,14,3,0),(4,14,4,0),(4,15,0,1),(4,15,1,1),(4,15,2,1),(4,15,3,0),(4,15,4,0),(4,16,0,1),(4,16,1,1),(4,16,2,1),(4,16,3,0),(4,16,4,0),(4,18,0,1),(4,18,1,1),(4,18,2,1),(4,18,3,0),(4,18,4,0),(4,19,0,1),(4,19,1,1),(4,19,2,1),(4,19,3,0),(4,19,4,0),(4,20,0,1),(4,20,1,1),(4,20,2,1),(4,20,3,0),(4,20,4,0),(4,21,0,1),(4,21,1,1),(4,21,2,1),(4,21,3,0),(4,21,4,0),(4,22,0,1),(4,22,1,1),(4,22,2,1),(4,22,3,0),(4,22,4,0),(4,23,0,1),(4,23,1,1),(4,23,2,1),(4,23,3,0),(4,23,4,0),(4,26,0,1),(4,26,1,1),(4,26,2,1),(4,26,3,0),(4,26,4,0),(4,34,0,0),(4,34,1,0),(4,34,2,0),(4,34,3,0),(4,34,4,0),(4,35,0,0),(4,35,1,0),(4,35,2,0),(4,35,3,0),(4,35,4,0),(4,36,0,0),(4,36,1,0),(4,36,2,0),(4,36,3,0),(4,36,4,0),(4,38,0,0),(4,38,1,0),(4,38,2,0),(4,38,3,0),(4,38,4,0),(4,42,0,0),(4,42,1,0),(4,42,2,0),(4,42,3,0),(4,42,4,0),(4,43,0,0),(4,43,1,0),(4,43,2,0),(4,43,3,0),(4,43,4,0),(4,44,0,0),(4,44,1,0),(4,44,2,0),(4,44,3,0),(4,44,4,0),(4,45,0,0),(4,45,1,0),(4,45,2,0),(4,45,3,0),(4,45,4,0),(4,47,0,0),(4,47,1,0),(4,47,2,0),(4,47,3,0),(4,47,4,0);
/*!40000 ALTER TABLE `vtiger_profile2standardpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2tab`
--

DROP TABLE IF EXISTS `vtiger_profile2tab`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile2tab` (
  `profileid` int(11) default NULL,
  `tabid` int(10) default NULL,
  `permissions` int(10) NOT NULL default '0',
  KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile2tab`
--

LOCK TABLES `vtiger_profile2tab` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2tab` DISABLE KEYS */;
INSERT INTO `vtiger_profile2tab` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,6,0),(1,7,0),(1,8,0),(1,9,0),(1,10,0),(1,13,0),(1,14,0),(1,15,0),(1,16,0),(1,18,0),(1,19,0),(1,20,0),(1,21,0),(1,22,0),(1,23,0),(1,24,0),(1,25,0),(1,26,0),(1,27,0),(2,1,0),(2,2,0),(2,3,0),(2,4,0),(2,6,0),(2,7,0),(2,8,0),(2,9,0),(2,10,0),(2,13,0),(2,14,0),(2,15,0),(2,16,0),(2,18,0),(2,19,0),(2,20,0),(2,21,0),(2,22,0),(2,23,0),(2,24,0),(2,25,0),(2,26,0),(2,27,0),(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,6,0),(3,7,0),(3,8,0),(3,9,0),(3,10,0),(3,13,0),(3,14,0),(3,15,0),(3,16,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,26,0),(3,27,0),(4,1,0),(4,2,0),(4,3,0),(4,4,0),(4,6,0),(4,7,0),(4,8,0),(4,9,0),(4,10,0),(4,13,0),(4,14,0),(4,15,0),(4,16,0),(4,18,0),(4,19,0),(4,20,0),(4,21,0),(4,22,0),(4,23,0),(4,24,0),(4,25,0),(4,26,0),(4,27,0),(1,30,0),(2,30,0),(3,30,0),(4,30,0),(1,31,0),(2,31,0),(3,31,0),(4,31,0),(1,32,0),(2,32,0),(3,32,0),(4,32,0),(1,33,0),(2,33,0),(3,33,0),(4,33,0),(1,34,0),(2,34,0),(3,34,0),(4,34,0),(1,35,0),(2,35,0),(3,35,0),(4,35,0),(1,36,0),(2,36,0),(3,36,0),(4,36,0),(1,37,0),(2,37,0),(3,37,0),(4,37,0),(1,38,0),(2,38,0),(3,38,0),(4,38,0),(1,39,0),(2,39,0),(3,39,0),(4,39,0),(1,40,0),(2,40,0),(3,40,0),(4,40,0),(1,41,0),(2,41,0),(3,41,0),(4,41,0),(1,42,0),(2,42,0),(3,42,0),(4,42,0),(1,43,0),(2,43,0),(3,43,0),(4,43,0),(1,44,0),(2,44,0),(3,44,0),(4,44,0),(1,45,0),(2,45,0),(3,45,0),(4,45,0),(1,46,0),(2,46,0),(3,46,0),(4,46,0),(1,47,0),(2,47,0),(3,47,0),(4,47,0),(1,48,0),(2,48,0),(3,48,0),(4,48,0),(1,49,0),(2,49,0),(3,49,0),(4,49,0);
/*!40000 ALTER TABLE `vtiger_profile2tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2utility`
--

DROP TABLE IF EXISTS `vtiger_profile2utility`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) default NULL,
  PRIMARY KEY  (`profileid`,`tabid`,`activityid`),
  KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile2utility`
--

LOCK TABLES `vtiger_profile2utility` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2utility` DISABLE KEYS */;
INSERT INTO `vtiger_profile2utility` VALUES (1,2,5,0),(1,2,6,0),(1,2,10,0),(1,4,5,0),(1,4,6,0),(1,4,8,0),(1,4,10,0),(1,6,5,0),(1,6,6,0),(1,6,8,0),(1,6,10,0),(1,7,5,0),(1,7,6,0),(1,7,8,0),(1,7,9,0),(1,7,10,0),(1,8,6,0),(1,9,5,0),(1,9,6,0),(1,13,5,0),(1,13,6,0),(1,13,8,0),(1,13,10,0),(1,14,5,0),(1,14,6,0),(1,14,10,0),(1,18,5,0),(1,18,6,0),(1,18,10,0),(1,20,5,0),(1,20,6,0),(1,21,5,0),(1,21,6,0),(1,22,5,0),(1,22,6,0),(1,23,5,0),(1,23,6,0),(1,25,6,0),(1,25,13,0),(1,34,11,0),(1,34,12,0),(1,35,5,0),(1,35,6,0),(1,35,10,0),(1,36,5,0),(1,36,6,0),(1,36,10,0),(1,43,5,0),(1,43,6,0),(1,43,10,0),(1,44,5,0),(1,44,6,0),(1,44,10,0),(1,45,5,0),(1,45,6,0),(1,45,10,0),(2,2,5,1),(2,2,6,1),(2,2,10,0),(2,4,5,1),(2,4,6,1),(2,4,8,0),(2,4,10,0),(2,6,5,1),(2,6,6,1),(2,6,8,0),(2,6,10,0),(2,7,5,1),(2,7,6,1),(2,7,8,0),(2,7,9,0),(2,7,10,0),(2,8,6,1),(2,9,5,0),(2,9,6,0),(2,13,5,1),(2,13,6,1),(2,13,8,0),(2,13,10,0),(2,14,5,1),(2,14,6,1),(2,14,10,0),(2,18,5,1),(2,18,6,1),(2,18,10,0),(2,20,5,0),(2,20,6,0),(2,21,5,0),(2,21,6,0),(2,22,5,0),(2,22,6,0),(2,23,5,0),(2,23,6,0),(2,25,6,0),(2,25,13,0),(2,34,11,0),(2,34,12,0),(2,35,5,0),(2,35,6,0),(2,35,10,0),(2,36,5,0),(2,36,6,0),(2,36,10,0),(2,43,5,0),(2,43,6,0),(2,43,10,0),(2,44,5,0),(2,44,6,0),(2,44,10,0),(2,45,5,0),(2,45,6,0),(2,45,10,0),(3,2,5,1),(3,2,6,1),(3,2,10,0),(3,4,5,1),(3,4,6,1),(3,4,8,0),(3,4,10,0),(3,6,5,1),(3,6,6,1),(3,6,8,0),(3,6,10,0),(3,7,5,1),(3,7,6,1),(3,7,8,0),(3,7,9,0),(3,7,10,0),(3,8,6,1),(3,9,5,0),(3,9,6,0),(3,13,5,1),(3,13,6,1),(3,13,8,0),(3,13,10,0),(3,14,5,1),(3,14,6,1),(3,14,10,0),(3,18,5,1),(3,18,6,1),(3,18,10,0),(3,20,5,0),(3,20,6,0),(3,21,5,0),(3,21,6,0),(3,22,5,0),(3,22,6,0),(3,23,5,0),(3,23,6,0),(3,25,6,0),(3,25,13,0),(3,34,11,0),(3,34,12,0),(3,35,5,0),(3,35,6,0),(3,35,10,0),(3,36,5,0),(3,36,6,0),(3,36,10,0),(3,43,5,0),(3,43,6,0),(3,43,10,0),(3,44,5,0),(3,44,6,0),(3,44,10,0),(3,45,5,0),(3,45,6,0),(3,45,10,0),(4,2,5,1),(4,2,6,1),(4,2,10,0),(4,4,5,1),(4,4,6,1),(4,4,8,1),(4,4,10,0),(4,6,5,1),(4,6,6,1),(4,6,8,1),(4,6,10,0),(4,7,5,1),(4,7,6,1),(4,7,8,1),(4,7,9,0),(4,7,10,0),(4,8,6,1),(4,9,5,0),(4,9,6,0),(4,13,5,1),(4,13,6,1),(4,13,8,1),(4,13,10,0),(4,14,5,1),(4,14,6,1),(4,14,10,0),(4,18,5,1),(4,18,6,1),(4,18,10,0),(4,20,5,0),(4,20,6,0),(4,21,5,0),(4,21,6,0),(4,22,5,0),(4,22,6,0),(4,23,5,0),(4,23,6,0),(4,25,6,0),(4,25,13,0),(4,34,11,0),(4,34,12,0),(4,35,5,0),(4,35,6,0),(4,35,10,0),(4,36,5,0),(4,36,6,0),(4,36,10,0),(4,43,5,0),(4,43,6,0),(4,43,10,0),(4,44,5,0),(4,44,6,0),(4,44,10,0),(4,45,5,0),(4,45,6,0),(4,45,10,0);
/*!40000 ALTER TABLE `vtiger_profile2utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile_seq`
--

DROP TABLE IF EXISTS `vtiger_profile_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_profile_seq`
--

LOCK TABLES `vtiger_profile_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_profile_seq` DISABLE KEYS */;
INSERT INTO `vtiger_profile_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_profile_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_progress`
--

DROP TABLE IF EXISTS `vtiger_progress`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_progress` (
  `progressid` int(11) NOT NULL auto_increment,
  `progress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`progressid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_progress`
--

LOCK TABLES `vtiger_progress` WRITE;
/*!40000 ALTER TABLE `vtiger_progress` DISABLE KEYS */;
INSERT INTO `vtiger_progress` VALUES (2,'10%',1,278,2),(3,'20%',1,279,3),(4,'30%',1,280,4),(5,'40%',1,281,5),(6,'50%',1,282,6),(7,'60%',1,283,7),(8,'70%',1,284,8),(9,'80%',1,285,9),(10,'90%',1,286,10),(11,'100%',1,287,11);
/*!40000 ALTER TABLE `vtiger_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_progress_seq`
--

DROP TABLE IF EXISTS `vtiger_progress_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_progress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_progress_seq`
--

LOCK TABLES `vtiger_progress_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_progress_seq` DISABLE KEYS */;
INSERT INTO `vtiger_progress_seq` VALUES (11);
/*!40000 ALTER TABLE `vtiger_progress_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_project`
--

DROP TABLE IF EXISTS `vtiger_project`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_project` (
  `projectid` int(11) NOT NULL auto_increment,
  `projectname` varchar(50) default NULL,
  `project_no` varchar(20) default NULL,
  `startdate` date default NULL,
  `targetenddate` date default NULL,
  `actualenddate` date default NULL,
  `targetbudget` varchar(255) default NULL,
  `projectdays` int(11) default '0',
  `projecthours` int(11) default '0',
  `projecturl` varchar(255) default NULL,
  `projectstatus` tinyint(4) default NULL,
  `projectpriority` tinyint(4) default NULL,
  `projecttype` tinyint(4) default NULL,
  `progress` tinyint(4) default NULL,
  `linktoaccountscontacts` bigint(19) default NULL,
  `responsible` int(11) default '0',
  `release_by` int(11) default NULL,
  `release_date` datetime default NULL,
  `description` text,
  `refertbl` varchar(50) default NULL,
  `referid` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projectid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_project`
--

LOCK TABLES `vtiger_project` WRITE;
/*!40000 ALTER TABLE `vtiger_project` DISABLE KEYS */;
INSERT INTO `vtiger_project` VALUES (1,'test123456','PRJ19101600001','2019-10-23','2019-10-16','2019-10-23','',0,0,'',7,3,3,NULL,0,0,2,'2019-10-20 09:26:06',NULL,NULL,NULL,2,'2019-10-16 10:13:47',2,'2019-10-20 09:26:06'),(2,'test1111','PRJ19102300001','2019-10-16','2019-10-16','2019-10-23',NULL,0,0,NULL,7,3,3,NULL,NULL,0,2,'2019-10-23 10:48:50',NULL,NULL,NULL,2,'2019-10-23 10:48:50',2,'2019-10-23 10:48:50'),(3,'设备调试','PRJ19102300002','2019-10-23','2019-10-23','2019-10-23',NULL,0,0,NULL,7,3,3,NULL,NULL,0,2,'2019-10-23 13:16:14',NULL,NULL,NULL,2,'2019-10-23 13:16:14',2,'2019-10-23 13:16:14'),(4,'特殊太谁','PRJ19102300003','2019-10-23','2019-10-23','2019-10-23',NULL,0,0,NULL,7,3,3,NULL,NULL,0,2,'2019-10-23 14:13:31',NULL,NULL,NULL,2,'2019-10-23 14:13:31',2,'2019-10-23 14:13:31'),(5,'浮士德发','PRJ19102300004','2019-10-23','2019-10-16','2019-10-23',NULL,0,0,NULL,7,3,3,NULL,NULL,0,2,'2019-10-23 14:41:26',NULL,NULL,NULL,2,'2019-10-23 14:40:32',2,'2019-10-23 14:40:32'),(6,'testsssss','PRJ19102600001','2019-11-02','2019-10-16',NULL,NULL,0,0,NULL,10,3,3,NULL,5,0,2,'2019-10-30 15:38:52',NULL,NULL,NULL,2,'2019-10-26 18:48:28',2,'2019-11-09 20:08:37'),(7,'test','PRJ19110400001',NULL,NULL,NULL,NULL,5,0,NULL,3,3,3,NULL,5,0,2,'2019-11-04 14:38:08','发发发发发撒发发发发撒法发',NULL,NULL,2,'2019-11-04 14:38:08',2,'2021-04-11 13:52:46'),(8,'她她她她她她她','PRJ19110400002',NULL,NULL,NULL,NULL,0,0,NULL,3,3,3,NULL,5,0,2,'2019-11-04 16:22:57','',NULL,NULL,2,'2019-11-04 16:22:57',2,'2020-03-17 20:44:14'),(9,'test','PRJ21040600001','2021-04-07',NULL,NULL,NULL,50,0,NULL,10,3,3,NULL,6,0,2,'2021-04-06 20:49:26','测试',NULL,NULL,2,'2021-04-06 20:49:26',2,'2021-04-12 14:48:40'),(13,'tpl test','PRJ21041100001',NULL,NULL,NULL,NULL,50,0,NULL,10,3,3,NULL,NULL,0,2,'2021-04-11 10:23:38','tpl test',NULL,NULL,2,'2021-04-11 10:20:46',2,'2021-04-12 09:47:41'),(26,'tpl prj test4','PRJ21041200004',NULL,NULL,NULL,NULL,89,0,NULL,10,3,3,NULL,NULL,0,2,'2021-04-12 11:00:51','',NULL,NULL,6176,'2021-04-12 10:59:22',2,'2021-04-12 14:49:01'),(28,'788665','PRJ21041200006',NULL,NULL,NULL,NULL,89,0,NULL,3,3,3,NULL,6,0,2,'2021-04-12 15:14:00','test tpl4 prj',NULL,NULL,6176,'2021-04-12 14:47:51',2,'2021-04-12 15:08:25'),(31,'erwttw','PRJ21041800002',NULL,NULL,NULL,NULL,66,0,NULL,10,3,3,NULL,NULL,2,2,'2021-04-18 18:32:32','tpl test0',NULL,NULL,6176,'2021-04-18 18:21:59',2,'2021-04-18 18:32:54'),(32,'gfhgfds','PRJ21042600001',NULL,NULL,NULL,NULL,66,0,NULL,2,3,3,NULL,NULL,2,NULL,NULL,'tpl test0',NULL,NULL,2,'2021-04-26 16:45:47',NULL,NULL),(34,'test so','PRJ21042900001',NULL,NULL,NULL,NULL,66,0,NULL,2,3,3,NULL,NULL,2,NULL,NULL,'tpl test0','salesorder',1,2,'2021-04-29 16:44:03',NULL,NULL),(35,'hhhh','PRJ21050400001',NULL,NULL,NULL,NULL,66,0,NULL,2,3,3,NULL,NULL,2,NULL,NULL,'tpl test0','salesorder_item',1,2,'2021-05-04 16:38:26',NULL,NULL),(36,'test_so_item','PRJ21050500001',NULL,NULL,NULL,NULL,66,0,NULL,10,3,3,NULL,NULL,2,NULL,NULL,'tpl test0','salesorder_item',2,2,'2021-05-05 14:45:19',2,'2021-05-05 22:27:53'),(37,'trdyr_test','PRJ21050600001',NULL,NULL,NULL,NULL,66,0,NULL,2,3,3,NULL,6,2,NULL,NULL,'tpl test0','salesorder_item',3,2,'2021-05-06 09:37:42',NULL,NULL),(38,'hfsdfasfa','PRJ21062100001',NULL,NULL,NULL,NULL,66,0,NULL,2,3,3,NULL,6,2,NULL,NULL,'tpl test0','salesorder_item',3,2,'2021-06-21 09:52:53',NULL,NULL);
/*!40000 ALTER TABLE `vtiger_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_project_tpl`
--

DROP TABLE IF EXISTS `vtiger_project_tpl`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_project_tpl` (
  `projecttplid` int(11) NOT NULL auto_increment,
  `projecttplname` varchar(50) default NULL,
  `targetbudget` varchar(255) default NULL,
  `projectdays` int(11) default '0',
  `projecthours` int(11) default '0',
  `projecturl` varchar(255) default NULL,
  `projectpriority` tinyint(4) default NULL,
  `projecttype` tinyint(4) default NULL,
  `responsible` int(11) default '0',
  `description` text,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projecttplid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_project_tpl`
--

LOCK TABLES `vtiger_project_tpl` WRITE;
/*!40000 ALTER TABLE `vtiger_project_tpl` DISABLE KEYS */;
INSERT INTO `vtiger_project_tpl` VALUES (5,'prj tpl test0',NULL,66,0,NULL,3,3,2,'tpl test0',2,'2021-04-15 10:14:17',2,'2021-04-18 17:47:03');
/*!40000 ALTER TABLE `vtiger_project_tpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_project_tpl_milestone`
--

DROP TABLE IF EXISTS `vtiger_project_tpl_milestone`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_project_tpl_milestone` (
  `projecttplmilestoneid` int(11) NOT NULL auto_increment,
  `project_ms_idx` tinyint(4) default NULL,
  `projecttplmilestonename` varchar(50) default NULL,
  `projecttplid` int(11) default NULL,
  `projectmilestonetype` tinyint(4) default NULL,
  `responsible` int(11) default '0',
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projecttplmilestoneid`),
  KEY `FK_vtiger_project_tpl_milestone` (`projecttplid`),
  CONSTRAINT `FK_vtiger_project_tpl_milestone` FOREIGN KEY (`projecttplid`) REFERENCES `vtiger_project_tpl` (`projecttplid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_project_tpl_milestone`
--

LOCK TABLES `vtiger_project_tpl_milestone` WRITE;
/*!40000 ALTER TABLE `vtiger_project_tpl_milestone` DISABLE KEYS */;
INSERT INTO `vtiger_project_tpl_milestone` VALUES (5,1,'prj m0 test',5,2,2,2,'2021-04-15 10:14:50',2,'2021-05-09 17:00:45'),(6,2,'prj tpl m1 test',5,2,2,2,'2021-04-15 10:18:22',2,'2021-04-18 17:47:20');
/*!40000 ALTER TABLE `vtiger_project_tpl_milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_project_tpl_task`
--

DROP TABLE IF EXISTS `vtiger_project_tpl_task`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_project_tpl_task` (
  `projecttpltaskid` int(11) NOT NULL auto_increment,
  `projecttpltaskname` varchar(50) default NULL,
  `projecttasktype` tinyint(4) default NULL,
  `projecttaskpriority` tinyint(4) default NULL,
  `responsible` int(11) default '0',
  `attachedfile` tinyint(1) default '1' COMMENT 'must attachfile while process',
  `description` text,
  `projecttplid` int(11) default NULL,
  `project_ms_idx` tinyint(4) NOT NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projecttpltaskid`),
  KEY `FK_vtiger_project_tpl_task` (`projecttplid`),
  CONSTRAINT `FK_vtiger_project_tpl_task` FOREIGN KEY (`projecttplid`) REFERENCES `vtiger_project_tpl` (`projecttplid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_project_tpl_task`
--

LOCK TABLES `vtiger_project_tpl_task` WRITE;
/*!40000 ALTER TABLE `vtiger_project_tpl_task` DISABLE KEYS */;
INSERT INTO `vtiger_project_tpl_task` VALUES (6,'prj tpl m0 task0',3,3,0,0,'prj tpl m0 task0',5,1,2,'2021-04-15 10:15:35',2,'2021-06-21 09:52:31'),(7,'prj tpl m0 task1',3,3,0,1,'prj tpl m0 task1',5,1,2,'2021-04-15 10:17:53',2,'2021-05-09 17:00:41'),(8,'prj tpl m1 task1',3,3,0,1,'prj tpl m1 task1',5,2,2,'2021-04-15 10:18:48',2,'2021-04-15 10:18:48'),(9,'prj tpl m1 task2',3,3,0,1,'prj tpl m1 task2',5,2,2,'2021-04-15 10:19:06',2,'2021-04-15 10:19:06');
/*!40000 ALTER TABLE `vtiger_project_tpl_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectcf`
--

DROP TABLE IF EXISTS `vtiger_projectcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectcf` (
  `projectid` int(11) NOT NULL,
  PRIMARY KEY  (`projectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectcf`
--

LOCK TABLES `vtiger_projectcf` WRITE;
/*!40000 ALTER TABLE `vtiger_projectcf` DISABLE KEYS */;
INSERT INTO `vtiger_projectcf` VALUES (8);
/*!40000 ALTER TABLE `vtiger_projectcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestone`
--

DROP TABLE IF EXISTS `vtiger_projectmilestone`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectmilestone` (
  `projectmilestoneid` int(11) NOT NULL auto_increment,
  `projectmilestonename` varchar(50) default NULL,
  `projectmilestone_no` varchar(20) default NULL,
  `projectmilestonedate` date default NULL,
  `projectid` int(11) default NULL,
  `project_ms_idx` tinyint(4) default NULL,
  `projectmilestonetype` tinyint(4) default NULL,
  `responsible` int(11) default '0',
  `reviewed` tinyint(1) default '0',
  `review_memo` text,
  `reviewed_date` datetime default NULL,
  `reviewed_by` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projectmilestoneid`),
  KEY `FK_vtiger_projectmilestone` (`projectid`),
  CONSTRAINT `FK_vtiger_projectmilestone` FOREIGN KEY (`projectid`) REFERENCES `vtiger_project` (`projectid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectmilestone`
--

LOCK TABLES `vtiger_projectmilestone` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestone` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestone` VALUES (1,'5ttr',NULL,'2019-10-01',7,NULL,3,0,1,NULL,NULL,0,2,'2019-10-15 10:39:33',2,'2020-03-18 10:10:50'),(2,'eee',NULL,'2019-10-16',7,NULL,3,0,0,NULL,NULL,0,2,'2019-10-16 10:14:55',0,'2019-10-20 09:47:51'),(4,'54wterewtw',NULL,'2019-11-01',7,NULL,2,0,1,NULL,'2021-04-06 16:07:12',2,2,'2021-04-01 15:26:23',2,'2021-04-01 15:26:23'),(5,'ghjkl',NULL,'2019-11-21',7,NULL,3,0,0,NULL,NULL,0,2,'2021-04-01 16:50:39',2,'2021-04-01 16:50:39'),(7,'test1',NULL,'2021-04-09',9,NULL,2,0,0,NULL,'2021-04-06 20:58:30',0,2,'2021-04-06 20:51:16',2,'2021-04-07 08:53:47'),(12,'test tpl m0',NULL,NULL,13,1,2,0,0,NULL,NULL,NULL,2,'2021-04-11 10:20:46',NULL,NULL),(13,'test tpl m1',NULL,NULL,13,2,2,0,0,NULL,NULL,NULL,2,'2021-04-11 10:20:46',NULL,NULL),(38,'m0 prjtpl4',NULL,'2021-04-13',26,1,2,0,0,NULL,'2021-04-12 11:03:27',0,6176,'2021-04-12 10:59:22',2,'2021-04-12 11:03:35'),(39,'m1 prjtpl4',NULL,'2021-04-14',26,2,2,0,0,NULL,'2021-04-12 11:03:27',0,6176,'2021-04-12 10:59:22',2,'2021-04-12 11:03:48'),(42,'m0 prjtpl4',NULL,'2021-04-13',28,1,2,0,0,NULL,'2021-04-12 15:13:09',0,6176,'2021-04-12 14:47:51',2,'2021-04-12 15:13:27'),(43,'m1 prjtpl4',NULL,'2021-04-14',28,2,2,0,0,NULL,'2021-04-12 15:13:09',0,6176,'2021-04-12 14:47:51',2,'2021-04-12 15:13:36'),(48,'prj m0 test',NULL,NULL,31,1,2,2,0,NULL,NULL,NULL,6176,'2021-04-18 18:21:59',NULL,NULL),(49,'prj tpl m1 test',NULL,NULL,31,2,2,2,0,NULL,NULL,NULL,6176,'2021-04-18 18:21:59',NULL,NULL),(50,'prj m0 test',NULL,NULL,32,1,2,2,0,NULL,NULL,NULL,2,'2021-04-26 16:45:47',NULL,NULL),(51,'prj tpl m1 test',NULL,NULL,32,2,2,2,0,NULL,NULL,NULL,2,'2021-04-26 16:45:47',NULL,NULL),(54,'prj m0 test',NULL,NULL,34,1,2,2,0,NULL,NULL,NULL,2,'2021-04-29 16:44:03',NULL,NULL),(55,'prj tpl m1 test',NULL,NULL,34,2,2,2,0,NULL,NULL,NULL,2,'2021-04-29 16:44:03',NULL,NULL),(56,'prj m0 test',NULL,NULL,35,1,2,2,0,NULL,NULL,NULL,2,'2021-05-04 16:38:26',NULL,NULL),(57,'prj tpl m1 test',NULL,NULL,35,2,2,2,0,NULL,NULL,NULL,2,'2021-05-04 16:38:26',NULL,NULL),(58,'prj m0 test',NULL,NULL,36,1,2,2,0,NULL,NULL,NULL,2,'2021-05-05 14:45:19',NULL,NULL),(59,'prj tpl m1 test',NULL,NULL,36,2,2,2,0,NULL,NULL,NULL,2,'2021-05-05 14:45:19',NULL,NULL),(60,'prj m0 test',NULL,NULL,37,1,2,2,1,'fadfasdfa','2021-05-22 10:45:52',2,2,'2021-05-06 09:37:42',NULL,NULL),(61,'prj tpl m1 test',NULL,NULL,37,2,2,2,1,'fdfafsafa','2021-05-22 10:56:41',2,2,'2021-05-06 09:37:42',NULL,NULL),(62,'prj m0 test',NULL,NULL,38,1,2,2,0,NULL,NULL,NULL,2,'2021-06-21 09:52:53',NULL,NULL),(63,'prj tpl m1 test',NULL,NULL,38,2,2,2,0,NULL,NULL,NULL,2,'2021-06-21 09:52:53',NULL,NULL);
/*!40000 ALTER TABLE `vtiger_projectmilestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestonecf`
--

DROP TABLE IF EXISTS `vtiger_projectmilestonecf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectmilestonecf` (
  `projectmilestoneid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectmilestonecf`
--

LOCK TABLES `vtiger_projectmilestonecf` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestonecf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_projectmilestonecf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestonetype`
--

DROP TABLE IF EXISTS `vtiger_projectmilestonetype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectmilestonetype` (
  `projectmilestonetypeid` int(11) NOT NULL auto_increment,
  `projectmilestonetype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projectmilestonetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectmilestonetype`
--

LOCK TABLES `vtiger_projectmilestonetype` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestonetype` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestonetype` VALUES (2,'管理',1,238,2),(3,'操作',1,239,3),(4,'其它',1,240,4);
/*!40000 ALTER TABLE `vtiger_projectmilestonetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestonetype_seq`
--

DROP TABLE IF EXISTS `vtiger_projectmilestonetype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectmilestonetype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectmilestonetype_seq`
--

LOCK TABLES `vtiger_projectmilestonetype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestonetype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestonetype_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projectmilestonetype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectpriority`
--

DROP TABLE IF EXISTS `vtiger_projectpriority`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectpriority` (
  `projectpriorityid` int(11) NOT NULL auto_increment,
  `projectpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projectpriorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectpriority`
--

LOCK TABLES `vtiger_projectpriority` WRITE;
/*!40000 ALTER TABLE `vtiger_projectpriority` DISABLE KEYS */;
INSERT INTO `vtiger_projectpriority` VALUES (2,'低',1,274,2),(3,'正常',1,275,3),(4,'高',1,276,4);
/*!40000 ALTER TABLE `vtiger_projectpriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_projectpriority_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectpriority_seq`
--

LOCK TABLES `vtiger_projectpriority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projectpriority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projectpriority_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projectpriority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectstatus`
--

DROP TABLE IF EXISTS `vtiger_projectstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectstatus` (
  `projectstatusid` int(11) NOT NULL auto_increment,
  `projectstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projectstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectstatus`
--

LOCK TABLES `vtiger_projectstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_projectstatus` DISABLE KEYS */;
INSERT INTO `vtiger_projectstatus` VALUES (2,'准备中',1,261,2),(3,'启动',1,262,3),(4,'进行中',1,263,4),(5,'等待反馈',1,264,5),(6,'挂起',1,265,6),(7,'完成',1,266,7),(8,'已交付',1,267,8),(9,'存档',1,268,9),(10,'取消',1,269,10);
/*!40000 ALTER TABLE `vtiger_projectstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_projectstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projectstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projectstatus_seq`
--

LOCK TABLES `vtiger_projectstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projectstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projectstatus_seq` VALUES (9);
/*!40000 ALTER TABLE `vtiger_projectstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttask`
--

DROP TABLE IF EXISTS `vtiger_projecttask`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttask` (
  `projecttaskid` int(11) NOT NULL auto_increment,
  `projecttaskname` varchar(50) default NULL,
  `projecttask_no` varchar(20) default NULL,
  `projecttasktype` tinyint(4) default NULL,
  `projecttaskpriority` tinyint(4) default NULL,
  `projecttaskprogress` tinyint(4) default NULL,
  `projecttaskhours` int(11) default NULL,
  `schedule_date` datetime default NULL,
  `startdate` datetime default NULL,
  `enddate` datetime default NULL,
  `linkcontact` int(11) default NULL,
  `contact` varchar(20) default NULL,
  `telphone` varchar(20) default NULL,
  `address` varchar(100) default NULL,
  `addrlng` double default NULL,
  `addrlat` double default NULL,
  `description` text,
  `projectid` int(11) default NULL,
  `project_ms_idx` tinyint(4) default NULL,
  `projecttasknumber` int(11) default NULL,
  `projecttaskstatus` tinyint(4) default NULL,
  `responsible` int(11) default '0',
  `attachedfile` tinyint(1) default '1' COMMENT 'must attachfile while process',
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projecttaskid`),
  KEY `FK_vtiger_projecttask` (`projectid`),
  CONSTRAINT `FK_vtiger_projecttask` FOREIGN KEY (`projectid`) REFERENCES `vtiger_project` (`projectid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttask`
--

LOCK TABLES `vtiger_projecttask` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttask` DISABLE KEYS */;
INSERT INTO `vtiger_projecttask` VALUES (1,'testaaa',NULL,3,3,NULL,0,'2019-09-19 20:00:00','2019-10-16 00:00:00','2019-10-23 14:37:13',NULL,NULL,NULL,NULL,NULL,NULL,'sfs',1,NULL,NULL,4,3,1,2,'2019-10-16 10:14:12',0,'2019-10-20 09:29:40'),(2,'rere',NULL,3,3,NULL,0,'2019-09-23 10:00:00','2019-10-16 00:00:00','2019-10-23 14:37:24',NULL,NULL,NULL,NULL,NULL,NULL,'fds',7,NULL,NULL,4,3,1,2,'2019-10-16 10:14:37',0,'2019-10-20 09:43:07'),(3,'testss',NULL,3,3,NULL,0,'2019-10-10 18:00:00','2019-10-20 00:00:00','2019-10-23 14:37:34',NULL,NULL,NULL,NULL,NULL,NULL,'dddeeee',7,NULL,NULL,4,3,1,2,'2019-10-20 09:18:06',2,'2019-10-20 09:18:06'),(4,'fasfafa',NULL,3,3,NULL,NULL,'2019-10-23 10:48:53',NULL,'2019-10-23 14:37:43',NULL,NULL,NULL,NULL,NULL,NULL,'',7,NULL,NULL,4,3,1,2,'2019-10-23 10:49:00',2,'2019-10-23 10:49:00'),(5,'调试',NULL,3,3,NULL,NULL,'2019-10-23 14:16:16','2019-10-23 13:19:18','2019-10-23 13:20:25',NULL,NULL,NULL,NULL,NULL,NULL,'',7,NULL,NULL,4,3,1,2,'2019-10-23 13:16:40',2,'2019-10-23 13:16:40'),(6,'发射点法',NULL,3,3,NULL,NULL,'2019-10-23 14:13:00','2019-10-23 14:14:53','2019-10-23 14:37:53',NULL,NULL,NULL,NULL,NULL,NULL,'',7,NULL,NULL,4,3,1,2,'2019-10-23 14:13:56',2,'2019-10-23 14:14:05'),(7,'特殊图',NULL,3,3,NULL,NULL,'2019-10-23 14:13:00','2019-10-23 14:44:20','2019-10-23 14:44:32',NULL,NULL,NULL,NULL,NULL,NULL,'多舒服啊',7,NULL,NULL,4,3,1,2,'2019-10-23 14:41:08',2,'2019-10-23 14:41:08'),(8,'帆帆',NULL,3,3,NULL,NULL,'2019-10-23 14:13:00','2019-10-23 14:55:57','2019-10-23 14:56:09',NULL,NULL,NULL,NULL,NULL,NULL,'',7,NULL,NULL,4,3,1,2,'2019-10-23 14:43:34',2,'2019-10-23 14:43:34'),(9,'test',NULL,3,3,NULL,NULL,'2019-10-30 15:38:00','2019-11-02 10:18:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test_task remark',7,NULL,NULL,3,3,1,2,'2019-10-30 15:38:43',2,'2019-11-01 11:32:19'),(10,'teste',NULL,NULL,3,NULL,NULL,'2019-11-05 00:00:00',NULL,NULL,6,'李四','1893006','武汉市东湖风景区内菱角湖东南125米',114.39896,30.54182,'fafadfsfafafa',7,NULL,NULL,2,3,1,2,'2019-11-05 09:15:16',2,'2019-11-18 11:41:52'),(11,'testaddrmappick',NULL,NULL,NULL,NULL,NULL,'2019-11-10 00:00:00',NULL,NULL,0,'李四','1893006','鄂州市杜家山西北362.0米',114.65117,30.56319,'',7,NULL,NULL,2,2,1,2,'2019-11-10 15:26:05',2,'2020-03-18 10:09:57'),(12,'tttttt',NULL,NULL,NULL,NULL,NULL,'2019-11-05 00:00:00',NULL,NULL,9,'冯六','','',0,0,'',8,NULL,NULL,2,3,1,2,'2019-11-13 14:24:42',2,'2019-11-18 11:42:22'),(13,'test1',NULL,3,3,NULL,NULL,'2021-04-07 00:00:00','2021-04-07 09:19:10',NULL,10,'王五','323424141','',0,0,'test1',9,NULL,NULL,3,2,1,2,'2021-04-06 20:50:00',2,'2021-04-06 20:50:00'),(14,'test2',NULL,3,3,NULL,NULL,'2021-04-08 00:00:00',NULL,NULL,10,'王五','324141','',0,0,'test2',9,NULL,NULL,2,2,1,2,'2021-04-06 20:50:38',2,'2021-04-06 20:50:55'),(15,'test3',NULL,3,3,NULL,NULL,'2021-04-09 00:00:00',NULL,NULL,0,'王五','56789','',0,0,'test3',9,NULL,NULL,2,2,1,2,'2021-04-06 20:56:44',2,'2021-04-06 21:33:43'),(22,'test tpl m0 task0',NULL,3,3,NULL,NULL,'2021-04-11 00:00:00',NULL,NULL,0,'','','',0,0,'task0 m0',13,1,NULL,2,2,1,2,'2021-04-11 10:20:46',2,'2021-04-11 10:23:02'),(23,'test tpl m1 task1',NULL,3,3,NULL,NULL,'2021-04-11 00:00:00',NULL,NULL,0,'','','',0,0,'task1 m1',13,2,NULL,2,2,1,2,'2021-04-11 10:20:46',2,'2021-04-11 10:23:13'),(24,'test tpl m1 task2',NULL,3,3,NULL,NULL,'2021-04-11 00:00:00',NULL,NULL,0,'','','',0,0,'task2 m1',13,2,NULL,2,2,1,2,'2021-04-11 10:20:46',2,'2021-04-11 10:23:21'),(61,'t0 m0 prjtpl4',NULL,3,3,NULL,NULL,'2021-04-13 00:00:00',NULL,NULL,0,'','','',0,0,'t0 m0 prjtpl4',26,1,NULL,2,2,1,6176,'2021-04-12 10:59:22',2,'2021-04-12 11:00:25'),(62,'t0 m1 prjtpl4',NULL,3,3,NULL,NULL,'2021-04-13 00:00:00',NULL,NULL,0,'','','',0,0,'t0 m1 prjtpl4',26,2,NULL,2,2,1,6176,'2021-04-12 10:59:22',2,'2021-04-12 11:00:42'),(65,'t0 m0 prjtpl4',NULL,3,3,NULL,NULL,'2021-04-12 00:00:00',NULL,NULL,10,'王五','','',0,0,'t0 m0 prjtpl4',28,1,NULL,2,2,1,6176,'2021-04-12 14:47:51',2,'2021-04-12 15:08:37'),(66,'t0 m1 prjtpl4',NULL,3,3,NULL,NULL,'2021-04-13 00:00:00',NULL,NULL,0,'王五','','',0,0,'t0 m1 prjtpl4',28,2,NULL,2,2,1,6176,'2021-04-12 14:47:51',2,'2021-04-12 15:14:41'),(75,'prj tpl m0 task0',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task0',31,1,NULL,2,2,1,6176,'2021-04-18 18:21:59',NULL,NULL),(76,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',31,1,NULL,2,2,1,6176,'2021-04-18 18:21:59',NULL,NULL),(77,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',31,2,NULL,2,2,1,6176,'2021-04-18 18:21:59',NULL,NULL),(78,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',31,2,NULL,2,2,1,6176,'2021-04-18 18:21:59',NULL,NULL),(79,'prj tpl m0 task0',NULL,3,3,NULL,NULL,'2021-05-10 00:00:00',NULL,NULL,0,'','','',0,0,'prj tpl m0 task0',32,1,NULL,2,2,1,2,'2021-04-26 16:45:47',2,'2021-05-10 15:05:25'),(80,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',32,1,NULL,2,2,1,2,'2021-04-26 16:45:47',NULL,NULL),(81,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',32,2,NULL,2,2,1,2,'2021-04-26 16:45:47',NULL,NULL),(82,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',32,2,NULL,2,2,1,2,'2021-04-26 16:45:47',NULL,NULL),(87,'prj tpl m0 task0',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task0',34,1,NULL,2,2,1,2,'2021-04-29 16:44:03',NULL,NULL),(88,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',34,1,NULL,2,2,1,2,'2021-04-29 16:44:03',NULL,NULL),(89,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',34,2,NULL,2,2,1,2,'2021-04-29 16:44:03',NULL,NULL),(90,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',34,2,NULL,2,2,1,2,'2021-04-29 16:44:03',NULL,NULL),(91,'prj tpl m0 task0',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task0',35,1,NULL,2,2,1,2,'2021-05-04 16:38:26',NULL,NULL),(92,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',35,1,NULL,2,2,1,2,'2021-05-04 16:38:26',NULL,NULL),(93,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',35,2,NULL,2,2,1,2,'2021-05-04 16:38:26',NULL,NULL),(94,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',35,2,NULL,2,2,1,2,'2021-05-04 16:38:26',NULL,NULL),(95,'prj tpl m0 task0',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task0',36,1,NULL,2,2,1,2,'2021-05-05 14:45:19',NULL,NULL),(96,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',36,1,NULL,2,2,1,2,'2021-05-05 14:45:19',NULL,NULL),(97,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',36,2,NULL,2,2,1,2,'2021-05-05 14:45:19',NULL,NULL),(98,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',36,2,NULL,2,2,1,2,'2021-05-05 14:45:19',NULL,NULL),(99,'prj tpl m0 task0',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task0',37,1,NULL,2,2,1,2,'2021-05-06 09:37:42',NULL,NULL),(100,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',37,1,NULL,2,2,1,2,'2021-05-06 09:37:42',NULL,NULL),(101,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',37,2,NULL,2,2,1,2,'2021-05-06 09:37:42',NULL,NULL),(102,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',37,2,NULL,2,2,1,2,'2021-05-06 09:37:42',NULL,NULL),(103,'prj tpl m0 task0',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task0',38,1,NULL,2,2,0,2,'2021-06-21 09:52:53',NULL,NULL),(104,'prj tpl m0 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m0 task1',38,1,NULL,2,2,1,2,'2021-06-21 09:52:53',NULL,NULL),(105,'prj tpl m1 task1',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task1',38,2,NULL,2,2,1,2,'2021-06-21 09:52:53',NULL,NULL),(106,'prj tpl m1 task2',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prj tpl m1 task2',38,2,NULL,2,2,1,2,'2021-06-21 09:52:53',NULL,NULL);
/*!40000 ALTER TABLE `vtiger_projecttask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttask_detail`
--

DROP TABLE IF EXISTS `vtiger_projecttask_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttask_detail` (
  `projecttask_detailid` int(11) NOT NULL auto_increment,
  `address` varchar(50) default NULL,
  `remark` text,
  `startdate` date default NULL,
  `enddate` date default NULL,
  `projecttaskid` int(11) default NULL,
  `projecttaskstatus` tinyint(4) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`projecttask_detailid`),
  UNIQUE KEY `projecttaskid` (`projecttaskid`),
  CONSTRAINT `FK_vtiger_projecttask_detail` FOREIGN KEY (`projecttaskid`) REFERENCES `vtiger_projecttask` (`projecttaskid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttask_detail`
--

LOCK TABLES `vtiger_projecttask_detail` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttask_detail` DISABLE KEYS */;
INSERT INTO `vtiger_projecttask_detail` VALUES (1,'ggg','fggfg','2019-10-18','2019-10-18',2,NULL,3,'2019-10-18 17:28:58',3,'2019-10-18 17:28:58');
/*!40000 ALTER TABLE `vtiger_projecttask_detail` ENABLE KEYS */;
UNLOCK TABLES;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `prjtask_detail_insert` BEFORE INSERT ON `vtiger_projecttask_detail` FOR EACH ROW BEGIN
update vtigercrm6.vtiger_projecttask set projecttaskstatus=3 where projecttaskid=new.projecttaskid and projecttaskstatus=2;
    END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@SAVE_SQL_MODE*/;

--
-- Table structure for table `vtiger_projecttaskcf`
--

DROP TABLE IF EXISTS `vtiger_projecttaskcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskcf` (
  `projecttaskid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskcf`
--

LOCK TABLES `vtiger_projecttaskcf` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_projecttaskcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskpriority`
--

DROP TABLE IF EXISTS `vtiger_projecttaskpriority`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskpriority` (
  `projecttaskpriorityid` int(11) NOT NULL auto_increment,
  `projecttaskpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projecttaskpriorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskpriority`
--

LOCK TABLES `vtiger_projecttaskpriority` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskpriority` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskpriority` VALUES (2,'低',1,246,2),(3,'正常',1,247,3),(4,'紧急',1,248,4);
/*!40000 ALTER TABLE `vtiger_projecttaskpriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttaskpriority_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskpriority_seq`
--

LOCK TABLES `vtiger_projecttaskpriority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskpriority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskpriority_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projecttaskpriority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskprogress`
--

DROP TABLE IF EXISTS `vtiger_projecttaskprogress`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskprogress` (
  `projecttaskprogressid` int(11) NOT NULL auto_increment,
  `projecttaskprogress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projecttaskprogressid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskprogress`
--

LOCK TABLES `vtiger_projecttaskprogress` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskprogress` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskprogress` VALUES (2,'10%',1,250,2),(3,'20%',1,251,3),(4,'30%',1,252,4),(5,'40%',1,253,5),(6,'50%',1,254,6),(7,'60%',1,255,7),(8,'70%',1,256,8),(9,'80%',1,257,9),(10,'90%',1,258,10),(11,'100%',1,259,11);
/*!40000 ALTER TABLE `vtiger_projecttaskprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskprogress_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttaskprogress_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskprogress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskprogress_seq`
--

LOCK TABLES `vtiger_projecttaskprogress_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskprogress_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskprogress_seq` VALUES (11);
/*!40000 ALTER TABLE `vtiger_projecttaskprogress_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskstatus`
--

DROP TABLE IF EXISTS `vtiger_projecttaskstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskstatus` (
  `projecttaskstatusid` int(11) NOT NULL auto_increment,
  `projecttaskstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projecttaskstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskstatus`
--

LOCK TABLES `vtiger_projecttaskstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskstatus` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskstatus` VALUES (2,'新任务',1,290,2),(3,'进行中',1,291,3),(4,'已完成',1,292,4),(5,'延期',1,293,5),(6,'中止/取消 ',1,294,6);
/*!40000 ALTER TABLE `vtiger_projecttaskstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttaskstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttaskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttaskstatus_seq`
--

LOCK TABLES `vtiger_projecttaskstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskstatus_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_projecttaskstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttasktype`
--

DROP TABLE IF EXISTS `vtiger_projecttasktype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttasktype` (
  `projecttasktypeid` int(11) NOT NULL auto_increment,
  `projecttasktype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projecttasktypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttasktype`
--

LOCK TABLES `vtiger_projecttasktype` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttasktype` DISABLE KEYS */;
INSERT INTO `vtiger_projecttasktype` VALUES (2,'管理',1,242,2),(3,'操作',1,243,3),(4,'其它',1,244,4);
/*!40000 ALTER TABLE `vtiger_projecttasktype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttasktype_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttasktype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttasktype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttasktype_seq`
--

LOCK TABLES `vtiger_projecttasktype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttasktype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttasktype_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projecttasktype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttype`
--

DROP TABLE IF EXISTS `vtiger_projecttype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttype` (
  `projecttypeid` int(11) NOT NULL auto_increment,
  `projecttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`projecttypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttype`
--

LOCK TABLES `vtiger_projecttype` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttype` DISABLE KEYS */;
INSERT INTO `vtiger_projecttype` VALUES (2,'管理',1,270,2),(3,'操作',1,271,3),(4,'其它',1,272,4);
/*!40000 ALTER TABLE `vtiger_projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttype_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_projecttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_projecttype_seq`
--

LOCK TABLES `vtiger_projecttype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttype_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projecttype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_purchaseorder`
--

DROP TABLE IF EXISTS `vtiger_purchaseorder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_purchaseorder` (
  `purchaseorderid` bigint(19) NOT NULL auto_increment,
  `subject` varchar(50) default NULL,
  `quoteid` bigint(19) default NULL,
  `vendorid` bigint(19) default NULL,
  `requisition_no` varchar(50) default NULL,
  `purchaseorder_no` varchar(50) NOT NULL,
  `tracking_no` varchar(50) default NULL,
  `contactid` bigint(19) default NULL,
  `duedate` date default NULL,
  `carrier` int(11) default NULL,
  `type` tinyint(4) default NULL,
  `adjustment` decimal(25,8) default NULL,
  `salescommission` decimal(25,3) default NULL,
  `exciseduty` decimal(25,3) default NULL,
  `total` decimal(25,8) default NULL,
  `subtotal` decimal(25,8) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,8) default NULL,
  `s_h_amount` decimal(25,8) default NULL,
  `terms_conditions` text,
  `postatus` tinyint(4) default NULL,
  `currency_id` int(11) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  `pre_tax_total` decimal(25,8) default NULL,
  `paid` decimal(25,8) default NULL,
  `balance` decimal(25,8) default NULL,
  `s_h_percent` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`purchaseorderid`),
  KEY `purchaseorder_vendorid_idx` (`vendorid`),
  KEY `purchaseorder_quoteid_idx` (`quoteid`),
  KEY `purchaseorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_purchaseorder`
--

LOCK TABLES `vtiger_purchaseorder` WRITE;
/*!40000 ALTER TABLE `vtiger_purchaseorder` DISABLE KEYS */;
INSERT INTO `vtiger_purchaseorder` VALUES (1,'bcbxcbx',0,0,'','PO19010100001','',1,'2015-01-23',5,0,'0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',2,1,'0.000','0.00000000','0.00000000','0.00000000',0,NULL,NULL,NULL,NULL),(2,'tesrs',1,0,'','','',1,'2015-01-23',5,0,'0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,0,'0.000','0.00000000','0.00000000','0.00000000',0,2,'2019-10-22 18:44:45',2,'2019-10-22 18:44:45'),(4,'testeeee',1,0,'','','',0,'2019-10-22',0,0,'0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,0,'0.000','0.00000000','0.00000000','0.00000000',0,2,'2019-10-22 18:47:42',2,'2020-03-18 10:11:22'),(6,'fdsafera',0,0,'','PO19102200001','',0,'2019-10-22',0,0,'0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,0,'0.000','0.00000000','0.00000000','0.00000000',0,2,'2019-10-22 18:52:19',2,'2019-10-22 18:52:42'),(7,'fsadfafewrq',0,0,'','PO19102200002','',0,'2019-10-22',0,0,'0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000','',1,0,'0.000','0.00000000','0.00000000','0.00000000',0,2,'2019-10-22 18:52:30',2,'2019-10-22 18:52:52');
/*!40000 ALTER TABLE `vtiger_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_purchaseordercf`
--

DROP TABLE IF EXISTS `vtiger_purchaseordercf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_purchaseordercf`
--

LOCK TABLES `vtiger_purchaseordercf` WRITE;
/*!40000 ALTER TABLE `vtiger_purchaseordercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_purchaseordercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotes`
--

DROP TABLE IF EXISTS `vtiger_quotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotes` (
  `quoteid` bigint(19) NOT NULL auto_increment,
  `subject` varchar(50) default NULL,
  `potentialid` bigint(19) default NULL,
  `quotestage` tinyint(4) default NULL,
  `validtill` date default NULL,
  `contactid` bigint(19) default NULL,
  `quote_no` varchar(20) default NULL,
  `subtotal` decimal(25,8) default NULL,
  `carrier` smallint(6) default NULL,
  `shipping` varchar(50) default NULL,
  `inventorymanager` bigint(19) default NULL,
  `type` varchar(20) default NULL,
  `adjustment` decimal(25,8) default NULL,
  `total` decimal(25,8) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,8) default NULL,
  `s_h_amount` decimal(25,8) default NULL,
  `accountid` bigint(19) default NULL,
  `terms_conditions` text,
  `currency_id` int(11) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  `pre_tax_total` decimal(25,8) default NULL,
  `s_h_percent` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`quoteid`),
  KEY `quote_quotestage_idx` (`quotestage`),
  KEY `quotes_potentialid_idx` (`potentialid`),
  KEY `quotes_contactid_idx` (`contactid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotes`
--

LOCK TABLES `vtiger_quotes` WRITE;
/*!40000 ALTER TABLE `vtiger_quotes` DISABLE KEYS */;
INSERT INTO `vtiger_quotes` VALUES (1,'fdfafa',0,4,'2015-01-23',1,'QOT19010100001','0.00000000',0,'',1,'','0.00000000','0.00000000','','0.000','0.00000000','0.00000000',1,'',1,'0.000','0.00000000',0,NULL,NULL,2,'2020-03-18 10:09:25'),(2,'tests',1,1,'2019-10-23',1,'QOT19102200001','0.00000000',0,'',2,'','0.00000000','0.00000000','','0.000','0.00000000','0.00000000',7,'',19,'0.000','0.00000000',0,2,'2019-10-22 18:33:00',2,'2020-01-18 12:18:15'),(3,'testsdf',7,1,'2019-10-22',7,'QOT19102200002','0.00000000',0,'',3,'','0.00000000','0.00000000','','0.000','0.00000000','0.00000000',2,'',27,'0.000','0.00000000',0,2,'2019-10-22 18:35:50',2,'2019-10-22 18:35:50');
/*!40000 ALTER TABLE `vtiger_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotesbillads`
--

DROP TABLE IF EXISTS `vtiger_quotesbillads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`quotebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotesbillads`
--

LOCK TABLES `vtiger_quotesbillads` WRITE;
/*!40000 ALTER TABLE `vtiger_quotesbillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_quotesbillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotescf`
--

DROP TABLE IF EXISTS `vtiger_quotescf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotescf`
--

LOCK TABLES `vtiger_quotescf` WRITE;
/*!40000 ALTER TABLE `vtiger_quotescf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_quotescf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotesshipads`
--

DROP TABLE IF EXISTS `vtiger_quotesshipads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`quoteshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotesshipads`
--

LOCK TABLES `vtiger_quotesshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_quotesshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_quotesshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotestage`
--

DROP TABLE IF EXISTS `vtiger_quotestage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL auto_increment,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`quotestageid`),
  UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotestage`
--

LOCK TABLES `vtiger_quotestage` WRITE;
/*!40000 ALTER TABLE `vtiger_quotestage` DISABLE KEYS */;
INSERT INTO `vtiger_quotestage` VALUES (1,'Created',0,139,0),(2,'Delivered',0,140,1),(3,'Reviewed',0,141,2),(4,'Accepted',0,142,3),(5,'Rejected',0,143,4);
/*!40000 ALTER TABLE `vtiger_quotestage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotestage_seq`
--

DROP TABLE IF EXISTS `vtiger_quotestage_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotestage_seq`
--

LOCK TABLES `vtiger_quotestage_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_quotestage_seq` DISABLE KEYS */;
INSERT INTO `vtiger_quotestage_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_quotestage_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotestagehistory`
--

DROP TABLE IF EXISTS `vtiger_quotestagehistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `quotestage` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `quotestagehistory_quoteid_idx` (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_quotestagehistory`
--

LOCK TABLES `vtiger_quotestagehistory` WRITE;
/*!40000 ALTER TABLE `vtiger_quotestagehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_quotestagehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rating`
--

DROP TABLE IF EXISTS `vtiger_rating`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_rating` (
  `rating_id` int(19) NOT NULL auto_increment,
  `rating` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_rating`
--

LOCK TABLES `vtiger_rating` WRITE;
/*!40000 ALTER TABLE `vtiger_rating` DISABLE KEYS */;
INSERT INTO `vtiger_rating` VALUES (2,'Acquired',1,145,1),(3,'Active',1,146,2),(4,'Market Failed',1,147,3),(5,'Project Cancelled',1,148,4),(6,'Shutdown',1,149,5);
/*!40000 ALTER TABLE `vtiger_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rating_seq`
--

DROP TABLE IF EXISTS `vtiger_rating_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_rating_seq`
--

LOCK TABLES `vtiger_rating_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_rating_seq` DISABLE KEYS */;
INSERT INTO `vtiger_rating_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_rating_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurring_frequency`
--

DROP TABLE IF EXISTS `vtiger_recurring_frequency`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) default NULL,
  `recurring_frequency` varchar(200) default NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_recurring_frequency`
--

LOCK TABLES `vtiger_recurring_frequency` WRITE;
/*!40000 ALTER TABLE `vtiger_recurring_frequency` DISABLE KEYS */;
INSERT INTO `vtiger_recurring_frequency` VALUES (2,'Daily',1,1),(3,'Weekly',2,1),(4,'Monthly',3,1),(5,'Quarterly',4,1),(6,'Yearly',5,1);
/*!40000 ALTER TABLE `vtiger_recurring_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurring_frequency_seq`
--

DROP TABLE IF EXISTS `vtiger_recurring_frequency_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_recurring_frequency_seq`
--

LOCK TABLES `vtiger_recurring_frequency_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_recurring_frequency_seq` DISABLE KEYS */;
INSERT INTO `vtiger_recurring_frequency_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_recurring_frequency_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurringevents`
--

DROP TABLE IF EXISTS `vtiger_recurringevents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL auto_increment,
  `activityid` int(19) NOT NULL,
  `recurringdate` date default NULL,
  `recurringtype` varchar(30) default NULL,
  `recurringfreq` int(19) default NULL,
  `recurringinfo` varchar(50) default NULL,
  `recurringenddate` date default NULL,
  PRIMARY KEY  (`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_recurringevents`
--

LOCK TABLES `vtiger_recurringevents` WRITE;
/*!40000 ALTER TABLE `vtiger_recurringevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_recurringevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurringtype`
--

DROP TABLE IF EXISTS `vtiger_recurringtype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL auto_increment,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`recurringeventid`),
  UNIQUE KEY `recurringtype_status_idx` (`recurringtype`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_recurringtype`
--

LOCK TABLES `vtiger_recurringtype` WRITE;
/*!40000 ALTER TABLE `vtiger_recurringtype` DISABLE KEYS */;
INSERT INTO `vtiger_recurringtype` VALUES (2,'Daily',1,1),(3,'Weekly',2,1),(4,'Monthly',3,1),(5,'Yearly',4,1);
/*!40000 ALTER TABLE `vtiger_recurringtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurringtype_seq`
--

DROP TABLE IF EXISTS `vtiger_recurringtype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_recurringtype_seq`
--

LOCK TABLES `vtiger_recurringtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_recurringtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_recurringtype_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_recurringtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relatedlists`
--

DROP TABLE IF EXISTS `vtiger_relatedlists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) default NULL,
  `related_tabid` int(10) default NULL,
  `name` varchar(100) default NULL,
  `sequence` int(10) default NULL,
  `label` varchar(100) default NULL,
  `presence` int(10) NOT NULL default '0',
  `actions` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`relation_id`),
  KEY `relatedlists_relation_id_idx` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_relatedlists`
--

LOCK TABLES `vtiger_relatedlists` WRITE;
/*!40000 ALTER TABLE `vtiger_relatedlists` DISABLE KEYS */;
INSERT INTO `vtiger_relatedlists` VALUES (1,6,4,'get_contacts',1,'Contacts',0,'add'),(2,6,2,'get_opportunities',2,'Potentials',0,'add'),(3,6,20,'get_quotes',3,'Quotes',0,'add'),(4,6,22,'get_salesorder',4,'Sales Order',0,'add'),(5,6,23,'get_invoices',5,'Invoice',0,'add'),(6,6,9,'get_activities',6,'Activities',0,'add'),(7,6,10,'get_emails',7,'Emails',0,'add'),(8,6,9,'get_history',8,'Activity History',0,'add'),(9,6,8,'get_attachments',9,'Documents',0,'add,select'),(10,6,13,'get_tickets',10,'HelpDesk',0,'add'),(11,6,14,'get_products',11,'Products',0,'select'),(12,7,9,'get_activities',1,'Activities',0,'add'),(13,7,10,'get_emails',2,'Emails',0,'add'),(14,7,9,'get_history',3,'Activity History',0,'add'),(15,7,8,'get_attachments',4,'Documents',0,'add,select'),(16,7,14,'get_products',5,'Products',0,'select'),(17,7,26,'get_campaigns',6,'Campaigns',0,'select'),(18,4,2,'get_opportunities',1,'Potentials',0,'add'),(19,4,9,'get_activities',2,'Activities',0,'add'),(20,4,10,'get_emails',3,'Emails',0,'add'),(21,4,13,'get_tickets',4,'HelpDesk',0,'add'),(22,4,20,'get_quotes',5,'Quotes',0,'add'),(23,4,21,'get_purchase_orders',6,'Purchase Order',0,'add'),(24,4,22,'get_salesorder',7,'Sales Order',0,'add'),(25,4,14,'get_products',8,'Products',0,'select'),(26,4,9,'get_history',9,'Activity History',0,'add'),(27,4,8,'get_attachments',10,'Documents',0,'add,select'),(28,4,26,'get_campaigns',11,'Campaigns',0,'select'),(29,4,23,'get_invoices',12,'Invoice',0,'add'),(30,2,9,'get_activities',1,'Activities',0,'add'),(31,2,4,'get_contacts',2,'Contacts',0,'select'),(32,2,14,'get_products',3,'Products',0,'select'),(33,2,0,'get_stage_history',4,'Sales Stage History',0,''),(34,2,8,'get_attachments',5,'Documents',0,'add,select'),(35,2,20,'get_Quotes',6,'Quotes',0,'add'),(36,2,22,'get_salesorder',7,'Sales Order',0,'add'),(37,2,9,'get_history',8,'Activity History',0,''),(38,14,13,'get_tickets',1,'HelpDesk',0,'add'),(39,14,8,'get_attachments',3,'Documents',0,'add,select'),(40,14,20,'get_quotes',4,'Quotes',0,'add'),(41,14,21,'get_purchase_orders',5,'Purchase Order',0,'add'),(42,14,22,'get_salesorder',6,'Sales Order',0,'add'),(43,14,23,'get_invoices',7,'Invoice',0,'add'),(44,14,19,'get_product_pricebooks',8,'PriceBooks',0,'ADD,SELECT'),(45,14,7,'get_leads',9,'Leads',0,'select'),(46,14,6,'get_accounts',10,'Accounts',0,'select'),(47,14,4,'get_contacts',11,'Contacts',0,'select'),(48,14,2,'get_opportunities',12,'Potentials',0,'select'),(49,14,14,'get_products',13,'Product Bundles',0,'add,select'),(50,14,14,'get_parent_products',14,'Parent Product',0,''),(51,10,4,'get_contacts',1,'Contacts',0,'select,bulkmail'),(52,10,0,'get_users',2,'Users',0,''),(53,10,8,'get_attachments',3,'Documents',0,'add,select'),(54,13,9,'get_activities',1,'Activities',0,'add'),(55,13,8,'get_attachments',2,'Documents',0,'add,select'),(56,13,0,'get_ticket_history',3,'Ticket History',0,''),(57,13,9,'get_history',4,'Activity History',0,'add'),(58,19,14,'get_pricebook_products',2,'Products',0,'select'),(59,18,14,'get_products',1,'Products',0,'add,select'),(60,18,21,'get_purchase_orders',2,'Purchase Order',0,'add'),(61,18,4,'get_contacts',3,'Contacts',0,'select'),(62,18,10,'get_emails',4,'Emails',0,'add'),(63,20,22,'get_salesorder',1,'Sales Order',0,''),(64,20,9,'get_activities',2,'Activities',0,'add'),(65,20,8,'get_attachments',3,'Documents',0,'add,select'),(66,20,9,'get_history',4,'Activity History',0,''),(67,20,0,'get_quotestagehistory',5,'Quote Stage History',0,''),(68,21,9,'get_activities',1,'Activities',0,'add'),(69,21,8,'get_attachments',2,'Documents',0,'add,select'),(70,21,9,'get_history',3,'Activity History',0,''),(71,21,0,'get_postatushistory',4,'PurchaseOrder Status History',0,''),(72,22,9,'get_activities',1,'Activities',0,'add'),(73,22,8,'get_attachments',2,'Documents',0,'add,select'),(74,22,23,'get_invoices',3,'Invoice',0,''),(75,22,9,'get_history',4,'Activity History',0,''),(76,22,0,'get_sostatushistory',5,'SalesOrder Status History',0,''),(77,23,9,'get_activities',1,'Activities',0,'add'),(78,23,8,'get_attachments',2,'Documents',0,'add,select'),(79,23,9,'get_history',3,'Activity History',0,''),(80,23,0,'get_invoicestatushistory',4,'Invoice Status History',0,''),(81,9,0,'get_users',1,'Users',0,''),(82,9,4,'get_contacts',2,'Contacts',0,''),(83,26,4,'get_contacts',1,'Contacts',0,'add,select'),(84,26,7,'get_leads',2,'Leads',0,'add,select'),(85,26,2,'get_opportunities',3,'Potentials',0,'add'),(86,26,9,'get_activities',4,'Activities',0,'add'),(87,6,26,'get_campaigns',13,'Campaigns',0,'select'),(88,26,6,'get_accounts',5,'Accounts',0,'add,select'),(89,15,8,'get_attachments',1,'Documents',0,'add,select'),(90,4,34,'get_dependents_list',13,'PBXManager',0,''),(91,7,34,'get_dependents_list',7,'PBXManager',0,''),(92,6,34,'get_dependents_list',14,'PBXManager',0,''),(93,35,13,'get_related_list',1,'Service Requests',0,'ADD,SELECT'),(94,35,8,'get_attachments',2,'Documents',0,'ADD,SELECT'),(95,6,35,'get_dependents_list',15,'Service Contracts',0,'ADD'),(96,4,35,'get_dependents_list',14,'Service Contracts',0,'ADD'),(97,13,35,'get_related_list',5,'Service Contracts',0,'ADD,SELECT'),(98,36,13,'get_related_list',1,'HelpDesk',0,'ADD,SELECT'),(99,36,20,'get_quotes',2,'Quotes',0,'ADD'),(100,36,21,'get_purchase_orders',3,'Purchase Order',0,'ADD'),(101,36,22,'get_salesorder',4,'Sales Order',0,'ADD'),(102,36,23,'get_invoices',5,'Invoice',0,'ADD'),(103,36,19,'get_service_pricebooks',6,'PriceBooks',0,'ADD'),(104,36,7,'get_related_list',7,'Leads',0,'SELECT'),(105,36,6,'get_related_list',8,'Accounts',0,'SELECT'),(106,36,4,'get_related_list',9,'Contacts',0,'SELECT'),(107,36,2,'get_related_list',10,'Potentials',0,'SELECT'),(108,36,8,'get_attachments',11,'Documents',0,'ADD,SELECT'),(109,13,36,'get_related_list',6,'Services',0,'SELECT'),(110,7,36,'get_related_list',8,'Services',0,'SELECT'),(111,6,36,'get_related_list',16,'Services',0,'SELECT'),(112,4,36,'get_related_list',15,'Services',0,'SELECT'),(113,2,36,'get_related_list',9,'Services',0,'SELECT'),(114,19,36,'get_pricebook_services',3,'Services',0,'SELECT'),(115,38,13,'get_related_list',1,'HelpDesk',0,'ADD,SELECT'),(116,38,8,'get_attachments',2,'Documents',0,'ADD,SELECT'),(117,6,38,'get_dependents_list',17,'Assets',0,'ADD'),(118,14,38,'get_dependents_list',15,'Assets',0,'ADD'),(119,23,38,'get_dependents_list',5,'Assets',0,'ADD'),(126,6,45,'get_dependents_list',18,'Projects',0,'add'),(127,4,45,'get_dependents_list',16,'Projects',0,'add'),(128,13,45,'get_related_list',7,'Projects',0,'SELECT'),(129,47,6,'get_related_list',1,'Accounts',0,' '),(130,47,4,'get_related_list',2,'Contacts',0,' '),(131,47,7,'get_related_list',3,'Leads',0,' '),(132,44,8,'get_attachments',1,'Documents',0,'ADD,SELECT'),(133,45,44,'get_dependents_list',1,'Project Tasks',0,'ADD'),(134,45,43,'get_dependents_list',2,'Project Milestones',0,'ADD'),(135,45,8,'get_attachments',3,'Documents',0,'ADD,SELECT'),(136,45,13,'get_related_list',4,'HelpDesk',0,'ADD,SELECT'),(137,45,0,'get_gantt_chart',5,'Charts',0,''),(138,4,38,'get_dependents_list',17,'Assets',0,'ADD'),(139,4,18,'get_vendors',18,'Vendors',0,'SELECT');
/*!40000 ALTER TABLE `vtiger_relatedlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relatedlists_rb`
--

DROP TABLE IF EXISTS `vtiger_relatedlists_rb`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_relatedlists_rb` (
  `entityid` int(19) default NULL,
  `action` varchar(50) default NULL,
  `rel_table` varchar(200) default NULL,
  `rel_column` varchar(200) default NULL,
  `ref_column` varchar(200) default NULL,
  `related_crm_ids` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_relatedlists_rb`
--

LOCK TABLES `vtiger_relatedlists_rb` WRITE;
/*!40000 ALTER TABLE `vtiger_relatedlists_rb` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_relatedlists_rb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relatedlists_seq`
--

DROP TABLE IF EXISTS `vtiger_relatedlists_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_relatedlists_seq`
--

LOCK TABLES `vtiger_relatedlists_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_relatedlists_seq` DISABLE KEYS */;
INSERT INTO `vtiger_relatedlists_seq` VALUES (139);
/*!40000 ALTER TABLE `vtiger_relatedlists_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relcriteria`
--

DROP TABLE IF EXISTS `vtiger_relcriteria`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) default '',
  `comparator` varchar(20) default NULL,
  `value` varchar(512) default NULL,
  `groupid` int(11) default '1',
  `column_condition` varchar(256) default 'and',
  PRIMARY KEY  (`queryid`,`columnindex`),
  KEY `relcriteria_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_relcriteria`
--

LOCK TABLES `vtiger_relcriteria` WRITE;
/*!40000 ALTER TABLE `vtiger_relcriteria` DISABLE KEYS */;
INSERT INTO `vtiger_relcriteria` VALUES (1,0,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V','n','',1,'and'),(2,0,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V','e','',1,'and'),(3,0,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V','n','',1,'and'),(7,0,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V','e','Closed Won',1,'and'),(12,0,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V','n','Closed',1,'and'),(15,0,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V','n','Accepted',1,'and'),(15,1,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V','n','Rejected',1,'and'),(22,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and'),(23,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and'),(24,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and'),(25,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and');
/*!40000 ALTER TABLE `vtiger_relcriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relcriteria_grouping`
--

DROP TABLE IF EXISTS `vtiger_relcriteria_grouping`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_relcriteria_grouping` (
  `groupid` int(11) NOT NULL,
  `queryid` int(19) NOT NULL,
  `group_condition` varchar(256) default NULL,
  `condition_expression` text,
  PRIMARY KEY  (`groupid`,`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_relcriteria_grouping`
--

LOCK TABLES `vtiger_relcriteria_grouping` WRITE;
/*!40000 ALTER TABLE `vtiger_relcriteria_grouping` DISABLE KEYS */;
INSERT INTO `vtiger_relcriteria_grouping` VALUES (1,1,'','0'),(1,2,'','0'),(1,3,'','0'),(1,7,'','0'),(1,12,'','0'),(1,15,'','0 and 1'),(1,22,'','0'),(1,23,'','0'),(1,24,'','0'),(1,25,'','0');
/*!40000 ALTER TABLE `vtiger_relcriteria_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reminder_interval`
--

DROP TABLE IF EXISTS `vtiger_reminder_interval`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL auto_increment,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL,
  PRIMARY KEY  (`reminder_intervalid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reminder_interval`
--

LOCK TABLES `vtiger_reminder_interval` WRITE;
/*!40000 ALTER TABLE `vtiger_reminder_interval` DISABLE KEYS */;
INSERT INTO `vtiger_reminder_interval` VALUES (2,'1 Minute',1,1),(3,'5 Minutes',2,1),(4,'15 Minutes',3,1),(5,'30 Minutes',4,1),(6,'45 Minutes',5,1),(7,'1 Hour',6,1),(8,'1 Day',7,1);
/*!40000 ALTER TABLE `vtiger_reminder_interval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reminder_interval_seq`
--

DROP TABLE IF EXISTS `vtiger_reminder_interval_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reminder_interval_seq`
--

LOCK TABLES `vtiger_reminder_interval_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_reminder_interval_seq` DISABLE KEYS */;
INSERT INTO `vtiger_reminder_interval_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_reminder_interval_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_report`
--

DROP TABLE IF EXISTS `vtiger_report`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) default '',
  `description` varchar(250) default '',
  `reporttype` varchar(50) default '',
  `queryid` int(19) NOT NULL default '0',
  `state` varchar(50) default 'SAVED',
  `customizable` int(1) default '1',
  `category` int(11) default '1',
  `owner` int(11) default '1',
  `sharingtype` varchar(200) default 'Private',
  PRIMARY KEY  (`reportid`),
  KEY `report_queryid_idx` (`queryid`),
  KEY `report_folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_report`
--

LOCK TABLES `vtiger_report` WRITE;
/*!40000 ALTER TABLE `vtiger_report` DISABLE KEYS */;
INSERT INTO `vtiger_report` VALUES (1,1,'Contacts by Accounts','Contacts related to Accounts','tabular',1,'CUSTOM',1,1,1,'Public'),(2,1,'Contacts without Accounts','Contacts not related to Accounts','tabular',2,'CUSTOM',1,1,1,'Public'),(3,1,'Contacts by Potentials','Contacts related to Potentials','tabular',3,'CUSTOM',1,1,1,'Public'),(4,2,'Lead by Source','Lead by Source','summary',4,'CUSTOM',1,1,1,'Public'),(5,2,'Lead Status Report','Lead Status Report','summary',5,'CUSTOM',1,1,1,'Public'),(6,3,'Potential Pipeline','Potential Pipeline','summary',6,'CUSTOM',1,1,1,'Public'),(7,3,'Closed Potentials','Potential that have Won','tabular',7,'CUSTOM',1,1,1,'Public'),(8,4,'Last Month Activities','Last Month Activities','tabular',8,'CUSTOM',1,1,1,'Public'),(9,4,'This Month Activities','This Month Activities','tabular',9,'CUSTOM',1,1,1,'Public'),(10,5,'Tickets by Products','Tickets related to Products','tabular',10,'CUSTOM',1,1,1,'Public'),(11,5,'Tickets by Priority','Tickets by Priority','summary',11,'CUSTOM',1,1,1,'Public'),(12,5,'Open Tickets','Tickets that are Open','tabular',12,'CUSTOM',1,1,1,'Public'),(13,6,'Product Details','Product Detailed Report','tabular',13,'CUSTOM',1,1,1,'Public'),(14,6,'Products by Contacts','Products related to Contacts','tabular',14,'CUSTOM',1,1,1,'Public'),(15,7,'Open Quotes','Quotes that are Open','tabular',15,'CUSTOM',1,1,1,'Public'),(16,7,'Quotes Detailed Report','Quotes Detailed Report','tabular',16,'CUSTOM',1,1,1,'Public'),(17,8,'PurchaseOrder by Contacts','PurchaseOrder related to Contacts','tabular',17,'CUSTOM',1,1,1,'Public'),(18,8,'PurchaseOrder Detailed Report','PurchaseOrder Detailed Report','tabular',18,'CUSTOM',1,1,1,'Public'),(19,9,'Invoice Detailed Report','Invoice Detailed Report','tabular',19,'CUSTOM',1,1,1,'Public'),(20,10,'SalesOrder Detailed Report','SalesOrder Detailed Report','tabular',20,'CUSTOM',1,1,1,'Public'),(21,11,'Campaign Expectations and Actuals','Campaign Expectations and Actuals','tabular',21,'CUSTOM',1,1,1,'Public'),(22,12,'Contacts Email Report','Emails sent to Contacts','tabular',22,'CUSTOM',1,1,1,'Public'),(23,12,'Accounts Email Report','Emails sent to Organizations','tabular',23,'CUSTOM',1,1,1,'Public'),(24,12,'Leads Email Report','Emails sent to Leads','tabular',24,'CUSTOM',1,1,1,'Public'),(25,12,'Vendors Email Report','Emails sent to Vendors','tabular',25,'CUSTOM',1,1,1,'Public');
/*!40000 ALTER TABLE `vtiger_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportdatefilter`
--

DROP TABLE IF EXISTS `vtiger_reportdatefilter`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) default '',
  `datefilter` varchar(250) default '',
  `startdate` date default NULL,
  `enddate` date default NULL,
  PRIMARY KEY  (`datefilterid`),
  KEY `reportdatefilter_datefilterid_idx` (`datefilterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportdatefilter`
--

LOCK TABLES `vtiger_reportdatefilter` WRITE;
/*!40000 ALTER TABLE `vtiger_reportdatefilter` DISABLE KEYS */;
INSERT INTO `vtiger_reportdatefilter` VALUES (8,'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time','lastmonth','2005-05-01','2005-05-31'),(9,'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time','thismonth','2005-06-01','2005-06-30');
/*!40000 ALTER TABLE `vtiger_reportdatefilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportfilters`
--

DROP TABLE IF EXISTS `vtiger_reportfilters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportfilters`
--

LOCK TABLES `vtiger_reportfilters` WRITE;
/*!40000 ALTER TABLE `vtiger_reportfilters` DISABLE KEYS */;
INSERT INTO `vtiger_reportfilters` VALUES (1,'Private'),(2,'Public'),(3,'Shared');
/*!40000 ALTER TABLE `vtiger_reportfilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportfolder`
--

DROP TABLE IF EXISTS `vtiger_reportfolder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL auto_increment,
  `foldername` varchar(100) NOT NULL default '',
  `description` varchar(250) default '',
  `state` varchar(50) default 'SAVED',
  PRIMARY KEY  (`folderid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportfolder`
--

LOCK TABLES `vtiger_reportfolder` WRITE;
/*!40000 ALTER TABLE `vtiger_reportfolder` DISABLE KEYS */;
INSERT INTO `vtiger_reportfolder` VALUES (1,'Account and Contact Reports','Account and Contact Reports','SAVED'),(2,'Lead Reports','Lead Reports','SAVED'),(3,'Potential Reports','Potential Reports','SAVED'),(4,'Activity Reports','Activity Reports','SAVED'),(5,'HelpDesk Reports','HelpDesk Reports','SAVED'),(6,'Product Reports','Product Reports','SAVED'),(7,'Quote Reports','Quote Reports','SAVED'),(8,'PurchaseOrder Reports','PurchaseOrder Reports','SAVED'),(9,'Invoice Reports','Invoice Reports','SAVED'),(10,'SalesOrder Reports','SalesOrder Reports','SAVED'),(11,'Campaign Reports','Campaign Reports','SAVED'),(12,'Email Reports','Email Reports','SAVED');
/*!40000 ALTER TABLE `vtiger_reportfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportgroupbycolumn`
--

DROP TABLE IF EXISTS `vtiger_reportgroupbycolumn`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportgroupbycolumn` (
  `reportid` int(19) default NULL,
  `sortid` int(19) default NULL,
  `sortcolname` varchar(250) default NULL,
  `dategroupbycriteria` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportgroupbycolumn`
--

LOCK TABLES `vtiger_reportgroupbycolumn` WRITE;
/*!40000 ALTER TABLE `vtiger_reportgroupbycolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reportgroupbycolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportmodules`
--

DROP TABLE IF EXISTS `vtiger_reportmodules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(50) NOT NULL default '',
  `secondarymodules` varchar(250) default '',
  PRIMARY KEY  (`reportmodulesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportmodules`
--

LOCK TABLES `vtiger_reportmodules` WRITE;
/*!40000 ALTER TABLE `vtiger_reportmodules` DISABLE KEYS */;
INSERT INTO `vtiger_reportmodules` VALUES (1,'Contacts','Accounts'),(2,'Contacts','Accounts'),(3,'Contacts','Potentials'),(4,'Leads',''),(5,'Leads',''),(6,'Potentials',''),(7,'Potentials',''),(8,'Calendar',''),(9,'Calendar',''),(10,'HelpDesk','Products'),(11,'HelpDesk',''),(12,'HelpDesk',''),(13,'Products',''),(14,'Products','Contacts'),(15,'Quotes',''),(16,'Quotes',''),(17,'PurchaseOrder','Contacts'),(18,'PurchaseOrder',''),(19,'Invoice',''),(20,'SalesOrder',''),(21,'Campaigns',''),(22,'Contacts','Emails'),(23,'Accounts','Emails'),(24,'Leads','Emails'),(25,'Vendors','Emails');
/*!40000 ALTER TABLE `vtiger_reportmodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportsharing`
--

DROP TABLE IF EXISTS `vtiger_reportsharing`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportsharing`
--

LOCK TABLES `vtiger_reportsharing` WRITE;
/*!40000 ALTER TABLE `vtiger_reportsharing` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reportsharing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportsortcol`
--

DROP TABLE IF EXISTS `vtiger_reportsortcol`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) default '',
  `sortorder` varchar(250) default 'Asc',
  PRIMARY KEY  (`sortcolid`,`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportsortcol`
--

LOCK TABLES `vtiger_reportsortcol` WRITE;
/*!40000 ALTER TABLE `vtiger_reportsortcol` DISABLE KEYS */;
INSERT INTO `vtiger_reportsortcol` VALUES (1,4,'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V','Ascending'),(1,5,'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V','Ascending'),(1,6,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V','Ascending'),(1,11,'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V','Ascending');
/*!40000 ALTER TABLE `vtiger_reportsortcol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportsummary`
--

DROP TABLE IF EXISTS `vtiger_reportsummary`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`reportsummaryid`,`summarytype`,`columnname`),
  KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reportsummary`
--

LOCK TABLES `vtiger_reportsummary` WRITE;
/*!40000 ALTER TABLE `vtiger_reportsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reportsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reporttype`
--

DROP TABLE IF EXISTS `vtiger_reporttype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_reporttype` (
  `reportid` int(10) NOT NULL,
  `data` text,
  PRIMARY KEY  (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_reporttype`
--

LOCK TABLES `vtiger_reporttype` WRITE;
/*!40000 ALTER TABLE `vtiger_reporttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reporttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role`
--

DROP TABLE IF EXISTS `vtiger_role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_role` (
  `roleidx` int(11) NOT NULL auto_increment,
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) default NULL,
  `rolelayout` varchar(200) default NULL,
  `parentrole` varchar(255) default NULL,
  `depth` int(19) default NULL,
  `allowassignedrecordsto` int(2) NOT NULL default '1',
  PRIMARY KEY  (`roleidx`,`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_role`
--

LOCK TABLES `vtiger_role` WRITE;
/*!40000 ALTER TABLE `vtiger_role` DISABLE KEYS */;
INSERT INTO `vtiger_role` VALUES (1,'H1','Organization','layout/ucin/vtiger/common.xml','H1',0,0),(2,'H2','CEO','','H1::H2',1,0),(3,'H3','Vice President','','H1::H2::H3',2,0),(4,'H4','Sales Manager','','H1::H2::H3::H4',3,0),(5,'H5','Sales Person','','H1::H2::H3::H4::H5',4,0),(6,'P4','项目管理员','layout/ucin/vtiger/prjm.xml','H1::H2::H3::P4',4,1),(7,'P5','任务责任人','layout/ucin/vtiger/prjtask.xml','H1::H2::H3::P4::P5',5,1);
/*!40000 ALTER TABLE `vtiger_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role2picklist`
--

DROP TABLE IF EXISTS `vtiger_role2picklist`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) default NULL,
  PRIMARY KEY  (`roleid`,`picklistvalueid`,`picklistid`),
  KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_role2picklist`
--

LOCK TABLES `vtiger_role2picklist` WRITE;
/*!40000 ALTER TABLE `vtiger_role2picklist` DISABLE KEYS */;
INSERT INTO `vtiger_role2picklist` VALUES ('H1',1,1,0),('H1',2,1,1),('H1',3,1,2),('H1',4,1,3),('H1',5,1,4),('H1',6,1,5),('H1',7,1,6),('H1',8,1,7),('H1',9,1,8),('H1',10,1,9),('H1',11,1,10),('H1',12,2,0),('H1',13,2,1),('H1',14,3,0),('H1',15,3,1),('H1',16,3,2),('H1',17,3,3),('H1',18,3,4),('H1',19,3,5),('H1',20,4,0),('H1',21,4,1),('H1',22,4,2),('H1',23,4,3),('H1',24,4,4),('H1',25,4,5),('H1',26,4,6),('H1',27,4,7),('H1',28,4,8),('H1',29,4,9),('H1',30,4,10),('H1',31,4,11),('H1',32,4,12),('H1',33,5,0),('H1',34,5,1),('H1',35,5,2),('H1',36,5,3),('H1',37,5,4),('H1',38,6,0),('H1',39,6,1),('H1',40,6,2),('H1',41,7,0),('H1',42,7,1),('H1',43,7,2),('H1',44,7,3),('H1',45,7,4),('H1',46,8,0),('H1',47,9,0),('H1',48,9,1),('H1',49,9,2),('H1',50,9,3),('H1',51,10,0),('H1',52,10,1),('H1',53,10,2),('H1',54,10,3),('H1',55,10,4),('H1',56,10,5),('H1',57,10,6),('H1',58,10,7),('H1',59,10,8),('H1',60,11,0),('H1',61,11,1),('H1',62,11,2),('H1',63,11,3),('H1',64,11,4),('H1',65,11,5),('H1',66,11,6),('H1',67,11,7),('H1',68,11,8),('H1',69,11,9),('H1',70,11,10),('H1',71,11,11),('H1',72,11,12),('H1',73,11,13),('H1',74,11,14),('H1',75,11,15),('H1',76,11,16),('H1',77,11,17),('H1',78,11,18),('H1',79,11,19),('H1',80,11,20),('H1',81,11,21),('H1',82,11,22),('H1',83,11,23),('H1',84,11,24),('H1',85,11,25),('H1',86,11,26),('H1',87,11,27),('H1',88,11,28),('H1',89,11,29),('H1',90,11,30),('H1',91,11,31),('H1',92,12,0),('H1',93,12,1),('H1',94,12,2),('H1',95,12,3),('H1',96,12,4),('H1',97,12,5),('H1',98,13,0),('H1',99,13,1),('H1',100,13,2),('H1',101,13,3),('H1',102,13,4),('H1',103,13,5),('H1',104,13,6),('H1',105,13,7),('H1',106,13,8),('H1',107,13,9),('H1',108,13,10),('H1',109,13,11),('H1',110,13,12),('H1',111,14,0),('H1',112,14,1),('H1',113,14,2),('H1',114,14,3),('H1',115,14,4),('H1',116,14,5),('H1',117,14,6),('H1',118,14,7),('H1',119,14,8),('H1',120,14,9),('H1',121,14,10),('H1',122,14,11),('H1',123,15,0),('H1',124,15,1),('H1',125,15,2),('H1',126,15,3),('H1',127,16,0),('H1',128,16,1),('H1',129,16,2),('H1',130,17,0),('H1',131,17,1),('H1',132,17,2),('H1',133,17,3),('H1',134,17,4),('H1',135,18,0),('H1',136,18,1),('H1',137,18,2),('H1',138,18,3),('H1',139,19,0),('H1',140,19,1),('H1',141,19,2),('H1',142,19,3),('H1',143,19,4),('H1',144,20,0),('H1',145,20,1),('H1',146,20,2),('H1',147,20,3),('H1',148,20,4),('H1',149,20,5),('H1',150,21,0),('H1',151,21,1),('H1',152,21,2),('H1',153,21,3),('H1',154,21,4),('H1',155,21,5),('H1',156,21,6),('H1',157,21,7),('H1',158,21,8),('H1',159,21,9),('H1',160,22,0),('H1',161,22,1),('H1',162,22,2),('H1',163,22,3),('H1',164,22,4),('H1',165,22,5),('H1',166,23,0),('H1',167,23,1),('H1',168,23,2),('H1',169,23,3),('H1',170,24,0),('H1',171,24,1),('H1',172,24,2),('H1',173,25,0),('H1',174,25,1),('H1',175,25,2),('H1',176,25,3),('H1',177,25,4),('H1',178,25,5),('H1',179,26,0),('H1',180,26,1),('H1',181,26,2),('H1',182,27,0),('H1',183,27,1),('H1',184,27,2),('H1',185,27,3),('H1',186,28,0),('H1',187,28,1),('H1',188,28,2),('H1',189,28,3),('H1',190,29,0),('H1',191,29,1),('H1',192,29,2),('H1',193,29,3),('H1',194,30,0),('H1',195,30,1),('H1',196,30,2),('H1',197,30,3),('H1',198,30,4),('H1',199,30,5),('H1',200,30,6),('H1',201,30,7),('H1',202,30,8),('H1',203,30,9),('H1',204,30,10),('H1',205,30,11),('H1',206,30,12),('H1',207,30,13),('H1',208,30,14),('H1',209,30,15),('H1',210,31,1),('H1',211,31,2),('H1',212,31,3),('H1',213,31,4),('H1',214,32,1),('H1',215,32,2),('H1',216,32,3),('H1',217,32,4),('H1',218,32,5),('H1',219,32,6),('H1',220,33,1),('H1',221,33,2),('H1',222,33,3),('H1',223,34,1),('H1',224,34,2),('H1',225,34,3),('H1',226,35,1),('H1',227,35,2),('H1',228,35,3),('H1',229,36,1),('H1',230,36,2),('H1',231,36,3),('H1',232,36,4),('H1',233,36,5),('H1',234,36,6),('H1',235,37,1),('H1',236,37,2),('H1',237,38,1),('H1',238,38,2),('H1',239,38,3),('H1',240,38,4),('H1',241,39,1),('H1',242,39,2),('H1',243,39,3),('H1',244,39,4),('H1',245,40,1),('H1',246,40,2),('H1',247,40,3),('H1',248,40,4),('H1',249,41,1),('H1',250,41,2),('H1',251,41,3),('H1',252,41,4),('H1',253,41,5),('H1',254,41,6),('H1',255,41,7),('H1',256,41,8),('H1',257,41,9),('H1',258,41,10),('H1',259,41,11),('H1',260,42,1),('H1',261,42,2),('H1',262,42,3),('H1',263,42,4),('H1',264,42,5),('H1',265,42,6),('H1',266,42,7),('H1',267,42,8),('H1',268,42,9),('H1',269,43,1),('H1',270,43,2),('H1',271,43,3),('H1',272,43,4),('H1',273,44,1),('H1',274,44,2),('H1',275,44,3),('H1',276,44,4),('H1',277,45,1),('H1',278,45,2),('H1',279,45,3),('H1',280,45,4),('H1',281,45,5),('H1',282,45,6),('H1',283,45,7),('H1',284,45,8),('H1',285,45,9),('H1',286,45,10),('H1',287,45,11),('H1',288,12,1),('H1',289,46,1),('H1',290,46,2),('H1',291,46,3),('H1',292,46,4),('H1',293,46,5),('H1',294,46,6),('H1',295,47,1),('H1',296,47,2),('H1',297,48,1),('H1',298,48,2),('H1',299,48,3),('H1',300,48,4),('H1',301,48,5),('H1',302,48,6),('H1',303,48,7),('H1',304,48,8),('H1',305,48,9),('H1',306,48,10),('H1',307,48,11),('H1',308,48,12),('H1',309,48,13),('H1',310,48,14),('H1',311,48,15),('H1',312,48,16),('H1',313,48,17),('H1',314,48,18),('H1',315,48,19),('H1',316,48,20),('H1',317,48,21),('H1',318,48,22),('H1',319,48,23),('H1',320,48,24),('H1',321,2,1),('H1',322,49,1),('H1',323,49,2),('H1',324,49,3),('H1',325,50,1),('H1',326,50,2),('H2',1,1,0),('H2',2,1,1),('H2',3,1,2),('H2',4,1,3),('H2',5,1,4),('H2',6,1,5),('H2',7,1,6),('H2',8,1,7),('H2',9,1,8),('H2',10,1,9),('H2',11,1,10),('H2',12,2,0),('H2',13,2,1),('H2',14,3,0),('H2',15,3,1),('H2',16,3,2),('H2',17,3,3),('H2',18,3,4),('H2',19,3,5),('H2',20,4,0),('H2',21,4,1),('H2',22,4,2),('H2',23,4,3),('H2',24,4,4),('H2',25,4,5),('H2',26,4,6),('H2',27,4,7),('H2',28,4,8),('H2',29,4,9),('H2',30,4,10),('H2',31,4,11),('H2',32,4,12),('H2',33,5,0),('H2',34,5,1),('H2',35,5,2),('H2',36,5,3),('H2',37,5,4),('H2',38,6,0),('H2',39,6,1),('H2',40,6,2),('H2',41,7,0),('H2',42,7,1),('H2',43,7,2),('H2',44,7,3),('H2',45,7,4),('H2',46,8,0),('H2',47,9,0),('H2',48,9,1),('H2',49,9,2),('H2',50,9,3),('H2',51,10,0),('H2',52,10,1),('H2',53,10,2),('H2',54,10,3),('H2',55,10,4),('H2',56,10,5),('H2',57,10,6),('H2',58,10,7),('H2',59,10,8),('H2',60,11,0),('H2',61,11,1),('H2',62,11,2),('H2',63,11,3),('H2',64,11,4),('H2',65,11,5),('H2',66,11,6),('H2',67,11,7),('H2',68,11,8),('H2',69,11,9),('H2',70,11,10),('H2',71,11,11),('H2',72,11,12),('H2',73,11,13),('H2',74,11,14),('H2',75,11,15),('H2',76,11,16),('H2',77,11,17),('H2',78,11,18),('H2',79,11,19),('H2',80,11,20),('H2',81,11,21),('H2',82,11,22),('H2',83,11,23),('H2',84,11,24),('H2',85,11,25),('H2',86,11,26),('H2',87,11,27),('H2',88,11,28),('H2',89,11,29),('H2',90,11,30),('H2',91,11,31),('H2',92,12,0),('H2',93,12,1),('H2',94,12,2),('H2',95,12,3),('H2',96,12,4),('H2',97,12,5),('H2',98,13,0),('H2',99,13,1),('H2',100,13,2),('H2',101,13,3),('H2',102,13,4),('H2',103,13,5),('H2',104,13,6),('H2',105,13,7),('H2',106,13,8),('H2',107,13,9),('H2',108,13,10),('H2',109,13,11),('H2',110,13,12),('H2',111,14,0),('H2',112,14,1),('H2',113,14,2),('H2',114,14,3),('H2',115,14,4),('H2',116,14,5),('H2',117,14,6),('H2',118,14,7),('H2',119,14,8),('H2',120,14,9),('H2',121,14,10),('H2',122,14,11),('H2',123,15,0),('H2',124,15,1),('H2',125,15,2),('H2',126,15,3),('H2',127,16,0),('H2',128,16,1),('H2',129,16,2),('H2',130,17,0),('H2',131,17,1),('H2',132,17,2),('H2',133,17,3),('H2',134,17,4),('H2',135,18,0),('H2',136,18,1),('H2',137,18,2),('H2',138,18,3),('H2',139,19,0),('H2',140,19,1),('H2',141,19,2),('H2',142,19,3),('H2',143,19,4),('H2',144,20,0),('H2',145,20,1),('H2',146,20,2),('H2',147,20,3),('H2',148,20,4),('H2',149,20,5),('H2',150,21,0),('H2',151,21,1),('H2',152,21,2),('H2',153,21,3),('H2',154,21,4),('H2',155,21,5),('H2',156,21,6),('H2',157,21,7),('H2',158,21,8),('H2',159,21,9),('H2',160,22,0),('H2',161,22,1),('H2',162,22,2),('H2',163,22,3),('H2',164,22,4),('H2',165,22,5),('H2',166,23,0),('H2',167,23,1),('H2',168,23,2),('H2',169,23,3),('H2',170,24,0),('H2',171,24,1),('H2',172,24,2),('H2',173,25,0),('H2',174,25,1),('H2',175,25,2),('H2',176,25,3),('H2',177,25,4),('H2',178,25,5),('H2',179,26,0),('H2',180,26,1),('H2',181,26,2),('H2',182,27,0),('H2',183,27,1),('H2',184,27,2),('H2',185,27,3),('H2',186,28,0),('H2',187,28,1),('H2',188,28,2),('H2',189,28,3),('H2',190,29,0),('H2',191,29,1),('H2',192,29,2),('H2',193,29,3),('H2',194,30,0),('H2',195,30,1),('H2',196,30,2),('H2',197,30,3),('H2',198,30,4),('H2',199,30,5),('H2',200,30,6),('H2',201,30,7),('H2',202,30,8),('H2',203,30,9),('H2',204,30,10),('H2',205,30,11),('H2',206,30,12),('H2',207,30,13),('H2',208,30,14),('H2',209,30,15),('H2',210,31,1),('H2',211,31,2),('H2',212,31,3),('H2',213,31,4),('H2',214,32,1),('H2',215,32,2),('H2',216,32,3),('H2',217,32,4),('H2',218,32,5),('H2',219,32,6),('H2',220,33,1),('H2',221,33,2),('H2',222,33,3),('H2',223,34,1),('H2',224,34,2),('H2',225,34,3),('H2',226,35,1),('H2',227,35,2),('H2',228,35,3),('H2',229,36,1),('H2',230,36,2),('H2',231,36,3),('H2',232,36,4),('H2',233,36,5),('H2',234,36,6),('H2',235,37,1),('H2',236,37,2),('H2',237,38,1),('H2',238,38,2),('H2',239,38,3),('H2',240,38,4),('H2',241,39,1),('H2',242,39,2),('H2',243,39,3),('H2',244,39,4),('H2',245,40,1),('H2',246,40,2),('H2',247,40,3),('H2',248,40,4),('H2',249,41,1),('H2',250,41,2),('H2',251,41,3),('H2',252,41,4),('H2',253,41,5),('H2',254,41,6),('H2',255,41,7),('H2',256,41,8),('H2',257,41,9),('H2',258,41,10),('H2',259,41,11),('H2',260,42,1),('H2',261,42,2),('H2',262,42,3),('H2',263,42,4),('H2',264,42,5),('H2',265,42,6),('H2',266,42,7),('H2',267,42,8),('H2',268,42,9),('H2',269,43,1),('H2',270,43,2),('H2',271,43,3),('H2',272,43,4),('H2',273,44,1),('H2',274,44,2),('H2',275,44,3),('H2',276,44,4),('H2',277,45,1),('H2',278,45,2),('H2',279,45,3),('H2',280,45,4),('H2',281,45,5),('H2',282,45,6),('H2',283,45,7),('H2',284,45,8),('H2',285,45,9),('H2',286,45,10),('H2',287,45,11),('H2',288,12,1),('H2',289,46,1),('H2',290,46,2),('H2',291,46,3),('H2',292,46,4),('H2',293,46,5),('H2',294,46,6),('H2',295,47,1),('H2',296,47,2),('H2',297,48,1),('H2',298,48,2),('H2',299,48,3),('H2',300,48,4),('H2',301,48,5),('H2',302,48,6),('H2',303,48,7),('H2',304,48,8),('H2',305,48,9),('H2',306,48,10),('H2',307,48,11),('H2',308,48,12),('H2',309,48,13),('H2',310,48,14),('H2',311,48,15),('H2',312,48,16),('H2',313,48,17),('H2',314,48,18),('H2',315,48,19),('H2',316,48,20),('H2',317,48,21),('H2',318,48,22),('H2',319,48,23),('H2',320,48,24),('H2',321,2,1),('H2',322,49,1),('H2',323,49,2),('H2',324,49,3),('H2',325,50,1),('H2',326,50,2),('H3',1,1,0),('H3',2,1,1),('H3',3,1,2),('H3',4,1,3),('H3',5,1,4),('H3',6,1,5),('H3',7,1,6),('H3',8,1,7),('H3',9,1,8),('H3',10,1,9),('H3',11,1,10),('H3',12,2,0),('H3',13,2,1),('H3',14,3,0),('H3',15,3,1),('H3',16,3,2),('H3',17,3,3),('H3',18,3,4),('H3',19,3,5),('H3',20,4,0),('H3',21,4,1),('H3',22,4,2),('H3',23,4,3),('H3',24,4,4),('H3',25,4,5),('H3',26,4,6),('H3',27,4,7),('H3',28,4,8),('H3',29,4,9),('H3',30,4,10),('H3',31,4,11),('H3',32,4,12),('H3',33,5,0),('H3',34,5,1),('H3',35,5,2),('H3',36,5,3),('H3',37,5,4),('H3',38,6,0),('H3',39,6,1),('H3',40,6,2),('H3',41,7,0),('H3',42,7,1),('H3',43,7,2),('H3',44,7,3),('H3',45,7,4),('H3',46,8,0),('H3',47,9,0),('H3',48,9,1),('H3',49,9,2),('H3',50,9,3),('H3',51,10,0),('H3',52,10,1),('H3',53,10,2),('H3',54,10,3),('H3',55,10,4),('H3',56,10,5),('H3',57,10,6),('H3',58,10,7),('H3',59,10,8),('H3',60,11,0),('H3',61,11,1),('H3',62,11,2),('H3',63,11,3),('H3',64,11,4),('H3',65,11,5),('H3',66,11,6),('H3',67,11,7),('H3',68,11,8),('H3',69,11,9),('H3',70,11,10),('H3',71,11,11),('H3',72,11,12),('H3',73,11,13),('H3',74,11,14),('H3',75,11,15),('H3',76,11,16),('H3',77,11,17),('H3',78,11,18),('H3',79,11,19),('H3',80,11,20),('H3',81,11,21),('H3',82,11,22),('H3',83,11,23),('H3',84,11,24),('H3',85,11,25),('H3',86,11,26),('H3',87,11,27),('H3',88,11,28),('H3',89,11,29),('H3',90,11,30),('H3',91,11,31),('H3',92,12,0),('H3',93,12,1),('H3',94,12,2),('H3',95,12,3),('H3',96,12,4),('H3',97,12,5),('H3',98,13,0),('H3',99,13,1),('H3',100,13,2),('H3',101,13,3),('H3',102,13,4),('H3',103,13,5),('H3',104,13,6),('H3',105,13,7),('H3',106,13,8),('H3',107,13,9),('H3',108,13,10),('H3',109,13,11),('H3',110,13,12),('H3',111,14,0),('H3',112,14,1),('H3',113,14,2),('H3',114,14,3),('H3',115,14,4),('H3',116,14,5),('H3',117,14,6),('H3',118,14,7),('H3',119,14,8),('H3',120,14,9),('H3',121,14,10),('H3',122,14,11),('H3',123,15,0),('H3',124,15,1),('H3',125,15,2),('H3',126,15,3),('H3',127,16,0),('H3',128,16,1),('H3',129,16,2),('H3',130,17,0),('H3',131,17,1),('H3',132,17,2),('H3',133,17,3),('H3',134,17,4),('H3',135,18,0),('H3',136,18,1),('H3',137,18,2),('H3',138,18,3),('H3',139,19,0),('H3',140,19,1),('H3',141,19,2),('H3',142,19,3),('H3',143,19,4),('H3',144,20,0),('H3',145,20,1),('H3',146,20,2),('H3',147,20,3),('H3',148,20,4),('H3',149,20,5),('H3',150,21,0),('H3',151,21,1),('H3',152,21,2),('H3',153,21,3),('H3',154,21,4),('H3',155,21,5),('H3',156,21,6),('H3',157,21,7),('H3',158,21,8),('H3',159,21,9),('H3',160,22,0),('H3',161,22,1),('H3',162,22,2),('H3',163,22,3),('H3',164,22,4),('H3',165,22,5),('H3',166,23,0),('H3',167,23,1),('H3',168,23,2),('H3',169,23,3),('H3',170,24,0),('H3',171,24,1),('H3',172,24,2),('H3',173,25,0),('H3',174,25,1),('H3',175,25,2),('H3',176,25,3),('H3',177,25,4),('H3',178,25,5),('H3',179,26,0),('H3',180,26,1),('H3',181,26,2),('H3',182,27,0),('H3',183,27,1),('H3',184,27,2),('H3',185,27,3),('H3',186,28,0),('H3',187,28,1),('H3',188,28,2),('H3',189,28,3),('H3',190,29,0),('H3',191,29,1),('H3',192,29,2),('H3',193,29,3),('H3',194,30,0),('H3',195,30,1),('H3',196,30,2),('H3',197,30,3),('H3',198,30,4),('H3',199,30,5),('H3',200,30,6),('H3',201,30,7),('H3',202,30,8),('H3',203,30,9),('H3',204,30,10),('H3',205,30,11),('H3',206,30,12),('H3',207,30,13),('H3',208,30,14),('H3',209,30,15),('H3',210,31,1),('H3',211,31,2),('H3',212,31,3),('H3',213,31,4),('H3',214,32,1),('H3',215,32,2),('H3',216,32,3),('H3',217,32,4),('H3',218,32,5),('H3',219,32,6),('H3',220,33,1),('H3',221,33,2),('H3',222,33,3),('H3',223,34,1),('H3',224,34,2),('H3',225,34,3),('H3',226,35,1),('H3',227,35,2),('H3',228,35,3),('H3',229,36,1),('H3',230,36,2),('H3',231,36,3),('H3',232,36,4),('H3',233,36,5),('H3',234,36,6),('H3',235,37,1),('H3',236,37,2),('H3',237,38,1),('H3',238,38,2),('H3',239,38,3),('H3',240,38,4),('H3',241,39,1),('H3',242,39,2),('H3',243,39,3),('H3',244,39,4),('H3',245,40,1),('H3',246,40,2),('H3',247,40,3),('H3',248,40,4),('H3',249,41,1),('H3',250,41,2),('H3',251,41,3),('H3',252,41,4),('H3',253,41,5),('H3',254,41,6),('H3',255,41,7),('H3',256,41,8),('H3',257,41,9),('H3',258,41,10),('H3',259,41,11),('H3',260,42,1),('H3',261,42,2),('H3',262,42,3),('H3',263,42,4),('H3',264,42,5),('H3',265,42,6),('H3',266,42,7),('H3',267,42,8),('H3',268,42,9),('H3',269,43,1),('H3',270,43,2),('H3',271,43,3),('H3',272,43,4),('H3',273,44,1),('H3',274,44,2),('H3',275,44,3),('H3',276,44,4),('H3',277,45,1),('H3',278,45,2),('H3',279,45,3),('H3',280,45,4),('H3',281,45,5),('H3',282,45,6),('H3',283,45,7),('H3',284,45,8),('H3',285,45,9),('H3',286,45,10),('H3',287,45,11),('H3',288,12,1),('H3',289,46,1),('H3',290,46,2),('H3',291,46,3),('H3',292,46,4),('H3',293,46,5),('H3',294,46,6),('H3',295,47,1),('H3',296,47,2),('H3',297,48,1),('H3',298,48,2),('H3',299,48,3),('H3',300,48,4),('H3',301,48,5),('H3',302,48,6),('H3',303,48,7),('H3',304,48,8),('H3',305,48,9),('H3',306,48,10),('H3',307,48,11),('H3',308,48,12),('H3',309,48,13),('H3',310,48,14),('H3',311,48,15),('H3',312,48,16),('H3',313,48,17),('H3',314,48,18),('H3',315,48,19),('H3',316,48,20),('H3',317,48,21),('H3',318,48,22),('H3',319,48,23),('H3',320,48,24),('H3',321,2,1),('H3',322,49,1),('H3',323,49,2),('H3',324,49,3),('H3',325,50,1),('H3',326,50,2),('H4',1,1,0),('H4',2,1,1),('H4',3,1,2),('H4',4,1,3),('H4',5,1,4),('H4',6,1,5),('H4',7,1,6),('H4',8,1,7),('H4',9,1,8),('H4',10,1,9),('H4',11,1,10),('H4',12,2,0),('H4',13,2,1),('H4',14,3,0),('H4',15,3,1),('H4',16,3,2),('H4',17,3,3),('H4',18,3,4),('H4',19,3,5),('H4',20,4,0),('H4',21,4,1),('H4',22,4,2),('H4',23,4,3),('H4',24,4,4),('H4',25,4,5),('H4',26,4,6),('H4',27,4,7),('H4',28,4,8),('H4',29,4,9),('H4',30,4,10),('H4',31,4,11),('H4',32,4,12),('H4',33,5,0),('H4',34,5,1),('H4',35,5,2),('H4',36,5,3),('H4',37,5,4),('H4',38,6,0),('H4',39,6,1),('H4',40,6,2),('H4',41,7,0),('H4',42,7,1),('H4',43,7,2),('H4',44,7,3),('H4',45,7,4),('H4',46,8,0),('H4',47,9,0),('H4',48,9,1),('H4',49,9,2),('H4',50,9,3),('H4',51,10,0),('H4',52,10,1),('H4',53,10,2),('H4',54,10,3),('H4',55,10,4),('H4',56,10,5),('H4',57,10,6),('H4',58,10,7),('H4',59,10,8),('H4',60,11,0),('H4',61,11,1),('H4',62,11,2),('H4',63,11,3),('H4',64,11,4),('H4',65,11,5),('H4',66,11,6),('H4',67,11,7),('H4',68,11,8),('H4',69,11,9),('H4',70,11,10),('H4',71,11,11),('H4',72,11,12),('H4',73,11,13),('H4',74,11,14),('H4',75,11,15),('H4',76,11,16),('H4',77,11,17),('H4',78,11,18),('H4',79,11,19),('H4',80,11,20),('H4',81,11,21),('H4',82,11,22),('H4',83,11,23),('H4',84,11,24),('H4',85,11,25),('H4',86,11,26),('H4',87,11,27),('H4',88,11,28),('H4',89,11,29),('H4',90,11,30),('H4',91,11,31),('H4',92,12,0),('H4',93,12,1),('H4',94,12,2),('H4',95,12,3),('H4',96,12,4),('H4',97,12,5),('H4',98,13,0),('H4',99,13,1),('H4',100,13,2),('H4',101,13,3),('H4',102,13,4),('H4',103,13,5),('H4',104,13,6),('H4',105,13,7),('H4',106,13,8),('H4',107,13,9),('H4',108,13,10),('H4',109,13,11),('H4',110,13,12),('H4',111,14,0),('H4',112,14,1),('H4',113,14,2),('H4',114,14,3),('H4',115,14,4),('H4',116,14,5),('H4',117,14,6),('H4',118,14,7),('H4',119,14,8),('H4',120,14,9),('H4',121,14,10),('H4',122,14,11),('H4',123,15,0),('H4',124,15,1),('H4',125,15,2),('H4',126,15,3),('H4',127,16,0),('H4',128,16,1),('H4',129,16,2),('H4',130,17,0),('H4',131,17,1),('H4',132,17,2),('H4',133,17,3),('H4',134,17,4),('H4',135,18,0),('H4',136,18,1),('H4',137,18,2),('H4',138,18,3),('H4',139,19,0),('H4',140,19,1),('H4',141,19,2),('H4',142,19,3),('H4',143,19,4),('H4',144,20,0),('H4',145,20,1),('H4',146,20,2),('H4',147,20,3),('H4',148,20,4),('H4',149,20,5),('H4',150,21,0),('H4',151,21,1),('H4',152,21,2),('H4',153,21,3),('H4',154,21,4),('H4',155,21,5),('H4',156,21,6),('H4',157,21,7),('H4',158,21,8),('H4',159,21,9),('H4',160,22,0),('H4',161,22,1),('H4',162,22,2),('H4',163,22,3),('H4',164,22,4),('H4',165,22,5),('H4',166,23,0),('H4',167,23,1),('H4',168,23,2),('H4',169,23,3),('H4',170,24,0),('H4',171,24,1),('H4',172,24,2),('H4',173,25,0),('H4',174,25,1),('H4',175,25,2),('H4',176,25,3),('H4',177,25,4),('H4',178,25,5),('H4',179,26,0),('H4',180,26,1),('H4',181,26,2),('H4',182,27,0),('H4',183,27,1),('H4',184,27,2),('H4',185,27,3),('H4',186,28,0),('H4',187,28,1),('H4',188,28,2),('H4',189,28,3),('H4',190,29,0),('H4',191,29,1),('H4',192,29,2),('H4',193,29,3),('H4',194,30,0),('H4',195,30,1),('H4',196,30,2),('H4',197,30,3),('H4',198,30,4),('H4',199,30,5),('H4',200,30,6),('H4',201,30,7),('H4',202,30,8),('H4',203,30,9),('H4',204,30,10),('H4',205,30,11),('H4',206,30,12),('H4',207,30,13),('H4',208,30,14),('H4',209,30,15),('H4',210,31,1),('H4',211,31,2),('H4',212,31,3),('H4',213,31,4),('H4',214,32,1),('H4',215,32,2),('H4',216,32,3),('H4',217,32,4),('H4',218,32,5),('H4',219,32,6),('H4',220,33,1),('H4',221,33,2),('H4',222,33,3),('H4',223,34,1),('H4',224,34,2),('H4',225,34,3),('H4',226,35,1),('H4',227,35,2),('H4',228,35,3),('H4',229,36,1),('H4',230,36,2),('H4',231,36,3),('H4',232,36,4),('H4',233,36,5),('H4',234,36,6),('H4',235,37,1),('H4',236,37,2),('H4',237,38,1),('H4',238,38,2),('H4',239,38,3),('H4',240,38,4),('H4',241,39,1),('H4',242,39,2),('H4',243,39,3),('H4',244,39,4),('H4',245,40,1),('H4',246,40,2),('H4',247,40,3),('H4',248,40,4),('H4',249,41,1),('H4',250,41,2),('H4',251,41,3),('H4',252,41,4),('H4',253,41,5),('H4',254,41,6),('H4',255,41,7),('H4',256,41,8),('H4',257,41,9),('H4',258,41,10),('H4',259,41,11),('H4',260,42,1),('H4',261,42,2),('H4',262,42,3),('H4',263,42,4),('H4',264,42,5),('H4',265,42,6),('H4',266,42,7),('H4',267,42,8),('H4',268,42,9),('H4',269,43,1),('H4',270,43,2),('H4',271,43,3),('H4',272,43,4),('H4',273,44,1),('H4',274,44,2),('H4',275,44,3),('H4',276,44,4),('H4',277,45,1),('H4',278,45,2),('H4',279,45,3),('H4',280,45,4),('H4',281,45,5),('H4',282,45,6),('H4',283,45,7),('H4',284,45,8),('H4',285,45,9),('H4',286,45,10),('H4',287,45,11),('H4',288,12,1),('H4',289,46,1),('H4',290,46,2),('H4',291,46,3),('H4',292,46,4),('H4',293,46,5),('H4',294,46,6),('H4',295,47,1),('H4',296,47,2),('H4',297,48,1),('H4',298,48,2),('H4',299,48,3),('H4',300,48,4),('H4',301,48,5),('H4',302,48,6),('H4',303,48,7),('H4',304,48,8),('H4',305,48,9),('H4',306,48,10),('H4',307,48,11),('H4',308,48,12),('H4',309,48,13),('H4',310,48,14),('H4',311,48,15),('H4',312,48,16),('H4',313,48,17),('H4',314,48,18),('H4',315,48,19),('H4',316,48,20),('H4',317,48,21),('H4',318,48,22),('H4',319,48,23),('H4',320,48,24),('H4',321,2,1),('H4',322,49,1),('H4',323,49,2),('H4',324,49,3),('H4',325,50,1),('H4',326,50,2),('H5',1,1,0),('H5',2,1,1),('H5',3,1,2),('H5',4,1,3),('H5',5,1,4),('H5',6,1,5),('H5',7,1,6),('H5',8,1,7),('H5',9,1,8),('H5',10,1,9),('H5',11,1,10),('H5',12,2,0),('H5',13,2,1),('H5',14,3,0),('H5',15,3,1),('H5',16,3,2),('H5',17,3,3),('H5',18,3,4),('H5',19,3,5),('H5',20,4,0),('H5',21,4,1),('H5',22,4,2),('H5',23,4,3),('H5',24,4,4),('H5',25,4,5),('H5',26,4,6),('H5',27,4,7),('H5',28,4,8),('H5',29,4,9),('H5',30,4,10),('H5',31,4,11),('H5',32,4,12),('H5',33,5,0),('H5',34,5,1),('H5',35,5,2),('H5',36,5,3),('H5',37,5,4),('H5',38,6,0),('H5',39,6,1),('H5',40,6,2),('H5',41,7,0),('H5',42,7,1),('H5',43,7,2),('H5',44,7,3),('H5',45,7,4),('H5',46,8,0),('H5',47,9,0),('H5',48,9,1),('H5',49,9,2),('H5',50,9,3),('H5',51,10,0),('H5',52,10,1),('H5',53,10,2),('H5',54,10,3),('H5',55,10,4),('H5',56,10,5),('H5',57,10,6),('H5',58,10,7),('H5',59,10,8),('H5',60,11,0),('H5',61,11,1),('H5',62,11,2),('H5',63,11,3),('H5',64,11,4),('H5',65,11,5),('H5',66,11,6),('H5',67,11,7),('H5',68,11,8),('H5',69,11,9),('H5',70,11,10),('H5',71,11,11),('H5',72,11,12),('H5',73,11,13),('H5',74,11,14),('H5',75,11,15),('H5',76,11,16),('H5',77,11,17),('H5',78,11,18),('H5',79,11,19),('H5',80,11,20),('H5',81,11,21),('H5',82,11,22),('H5',83,11,23),('H5',84,11,24),('H5',85,11,25),('H5',86,11,26),('H5',87,11,27),('H5',88,11,28),('H5',89,11,29),('H5',90,11,30),('H5',91,11,31),('H5',92,12,0),('H5',93,12,1),('H5',94,12,2),('H5',95,12,3),('H5',96,12,4),('H5',97,12,5),('H5',98,13,0),('H5',99,13,1),('H5',100,13,2),('H5',101,13,3),('H5',102,13,4),('H5',103,13,5),('H5',104,13,6),('H5',105,13,7),('H5',106,13,8),('H5',107,13,9),('H5',108,13,10),('H5',109,13,11),('H5',110,13,12),('H5',111,14,0),('H5',112,14,1),('H5',113,14,2),('H5',114,14,3),('H5',115,14,4),('H5',116,14,5),('H5',117,14,6),('H5',118,14,7),('H5',119,14,8),('H5',120,14,9),('H5',121,14,10),('H5',122,14,11),('H5',123,15,0),('H5',124,15,1),('H5',125,15,2),('H5',126,15,3),('H5',127,16,0),('H5',128,16,1),('H5',129,16,2),('H5',130,17,0),('H5',131,17,1),('H5',132,17,2),('H5',133,17,3),('H5',134,17,4),('H5',135,18,0),('H5',136,18,1),('H5',137,18,2),('H5',138,18,3),('H5',139,19,0),('H5',140,19,1),('H5',141,19,2),('H5',142,19,3),('H5',143,19,4),('H5',144,20,0),('H5',145,20,1),('H5',146,20,2),('H5',147,20,3),('H5',148,20,4),('H5',149,20,5),('H5',150,21,0),('H5',151,21,1),('H5',152,21,2),('H5',153,21,3),('H5',154,21,4),('H5',155,21,5),('H5',156,21,6),('H5',157,21,7),('H5',158,21,8),('H5',159,21,9),('H5',160,22,0),('H5',161,22,1),('H5',162,22,2),('H5',163,22,3),('H5',164,22,4),('H5',165,22,5),('H5',166,23,0),('H5',167,23,1),('H5',168,23,2),('H5',169,23,3),('H5',170,24,0),('H5',171,24,1),('H5',172,24,2),('H5',173,25,0),('H5',174,25,1),('H5',175,25,2),('H5',176,25,3),('H5',177,25,4),('H5',178,25,5),('H5',179,26,0),('H5',180,26,1),('H5',181,26,2),('H5',182,27,0),('H5',183,27,1),('H5',184,27,2),('H5',185,27,3),('H5',186,28,0),('H5',187,28,1),('H5',188,28,2),('H5',189,28,3),('H5',190,29,0),('H5',191,29,1),('H5',192,29,2),('H5',193,29,3),('H5',194,30,0),('H5',195,30,1),('H5',196,30,2),('H5',197,30,3),('H5',198,30,4),('H5',199,30,5),('H5',200,30,6),('H5',201,30,7),('H5',202,30,8),('H5',203,30,9),('H5',204,30,10),('H5',205,30,11),('H5',206,30,12),('H5',207,30,13),('H5',208,30,14),('H5',209,30,15),('H5',210,31,1),('H5',211,31,2),('H5',212,31,3),('H5',213,31,4),('H5',214,32,1),('H5',215,32,2),('H5',216,32,3),('H5',217,32,4),('H5',218,32,5),('H5',219,32,6),('H5',220,33,1),('H5',221,33,2),('H5',222,33,3),('H5',223,34,1),('H5',224,34,2),('H5',225,34,3),('H5',226,35,1),('H5',227,35,2),('H5',228,35,3),('H5',229,36,1),('H5',230,36,2),('H5',231,36,3),('H5',232,36,4),('H5',233,36,5),('H5',234,36,6),('H5',235,37,1),('H5',236,37,2),('H5',237,38,1),('H5',238,38,2),('H5',239,38,3),('H5',240,38,4),('H5',241,39,1),('H5',242,39,2),('H5',243,39,3),('H5',244,39,4),('H5',245,40,1),('H5',246,40,2),('H5',247,40,3),('H5',248,40,4),('H5',249,41,1),('H5',250,41,2),('H5',251,41,3),('H5',252,41,4),('H5',253,41,5),('H5',254,41,6),('H5',255,41,7),('H5',256,41,8),('H5',257,41,9),('H5',258,41,10),('H5',259,41,11),('H5',260,42,1),('H5',261,42,2),('H5',262,42,3),('H5',263,42,4),('H5',264,42,5),('H5',265,42,6),('H5',266,42,7),('H5',267,42,8),('H5',268,42,9),('H5',269,43,1),('H5',270,43,2),('H5',271,43,3),('H5',272,43,4),('H5',273,44,1),('H5',274,44,2),('H5',275,44,3),('H5',276,44,4),('H5',277,45,1),('H5',278,45,2),('H5',279,45,3),('H5',280,45,4),('H5',281,45,5),('H5',282,45,6),('H5',283,45,7),('H5',284,45,8),('H5',285,45,9),('H5',286,45,10),('H5',287,45,11),('H5',288,12,1),('H5',289,46,1),('H5',290,46,2),('H5',291,46,3),('H5',292,46,4),('H5',293,46,5),('H5',294,46,6),('H5',295,47,1),('H5',296,47,2),('H5',297,48,1),('H5',298,48,2),('H5',299,48,3),('H5',300,48,4),('H5',301,48,5),('H5',302,48,6),('H5',303,48,7),('H5',304,48,8),('H5',305,48,9),('H5',306,48,10),('H5',307,48,11),('H5',308,48,12),('H5',309,48,13),('H5',310,48,14),('H5',311,48,15),('H5',312,48,16),('H5',313,48,17),('H5',314,48,18),('H5',315,48,19),('H5',316,48,20),('H5',317,48,21),('H5',318,48,22),('H5',319,48,23),('H5',320,48,24),('H5',321,2,1),('H5',322,49,1),('H5',323,49,2),('H5',324,49,3),('H5',325,50,1),('H5',326,50,2);
/*!40000 ALTER TABLE `vtiger_role2picklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role2profile`
--

DROP TABLE IF EXISTS `vtiger_role2profile`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL,
  PRIMARY KEY  (`roleid`,`profileid`),
  KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_role2profile`
--

LOCK TABLES `vtiger_role2profile` WRITE;
/*!40000 ALTER TABLE `vtiger_role2profile` DISABLE KEYS */;
INSERT INTO `vtiger_role2profile` VALUES ('H2',1),('H3',2),('H4',2),('H5',2);
/*!40000 ALTER TABLE `vtiger_role2profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role_seq`
--

DROP TABLE IF EXISTS `vtiger_role_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_role_seq`
--

LOCK TABLES `vtiger_role_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_role_seq` DISABLE KEYS */;
INSERT INTO `vtiger_role_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_role_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rowheight`
--

DROP TABLE IF EXISTS `vtiger_rowheight`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_rowheight` (
  `rowheightid` int(11) NOT NULL auto_increment,
  `rowheight` varchar(200) NOT NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) NOT NULL default '1',
  PRIMARY KEY  (`rowheightid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_rowheight`
--

LOCK TABLES `vtiger_rowheight` WRITE;
/*!40000 ALTER TABLE `vtiger_rowheight` DISABLE KEYS */;
INSERT INTO `vtiger_rowheight` VALUES (1,'wide',1,1),(2,'medium',2,1),(3,'narrow',3,1);
/*!40000 ALTER TABLE `vtiger_rowheight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rowheight_seq`
--

DROP TABLE IF EXISTS `vtiger_rowheight_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_rowheight_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_rowheight_seq`
--

LOCK TABLES `vtiger_rowheight_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_rowheight_seq` DISABLE KEYS */;
INSERT INTO `vtiger_rowheight_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_rowheight_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rss`
--

DROP TABLE IF EXISTS `vtiger_rss`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL default '',
  `rsstitle` varchar(200) default NULL,
  `rsstype` int(10) default '0',
  `starred` int(1) default '0',
  PRIMARY KEY  (`rssid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_rss`
--

LOCK TABLES `vtiger_rss` WRITE;
/*!40000 ALTER TABLE `vtiger_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sales_stage`
--

DROP TABLE IF EXISTS `vtiger_sales_stage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL auto_increment,
  `sales_stage` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`sales_stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sales_stage`
--

LOCK TABLES `vtiger_sales_stage` WRITE;
/*!40000 ALTER TABLE `vtiger_sales_stage` DISABLE KEYS */;
INSERT INTO `vtiger_sales_stage` VALUES (1,'Prospecting',1,150,0),(2,'Qualification',1,151,1),(3,'Needs Analysis',1,152,2),(4,'Value Proposition',1,153,3),(5,'Id. Decision Makers',1,154,4),(6,'Perception Analysis',1,155,5),(7,'Proposal or Price Quote',1,156,6),(8,'Negotiation or Review',1,157,7),(9,'Closed Won',0,158,8),(10,'Closed Lost',0,159,9);
/*!40000 ALTER TABLE `vtiger_sales_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sales_stage_seq`
--

DROP TABLE IF EXISTS `vtiger_sales_stage_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sales_stage_seq`
--

LOCK TABLES `vtiger_sales_stage_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_sales_stage_seq` DISABLE KEYS */;
INSERT INTO `vtiger_sales_stage_seq` VALUES (10);
/*!40000 ALTER TABLE `vtiger_sales_stage_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesmanactivityrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanactivityrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL default '0',
  `activityid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`smid`,`activityid`),
  KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  KEY `salesmanactivityrel_smid_idx` (`smid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salesmanactivityrel`
--

LOCK TABLES `vtiger_salesmanactivityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_salesmanactivityrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesmanactivityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesmanattachmentsrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanattachmentsrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL default '0',
  `attachmentsid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`smid`,`attachmentsid`),
  KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salesmanattachmentsrel`
--

LOCK TABLES `vtiger_salesmanattachmentsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_salesmanattachmentsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesmanattachmentsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesmanticketrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanticketrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL default '0',
  `id` int(19) NOT NULL default '0',
  PRIMARY KEY  (`smid`,`id`),
  KEY `salesmanticketrel_smid_idx` (`smid`),
  KEY `salesmanticketrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salesmanticketrel`
--

LOCK TABLES `vtiger_salesmanticketrel` WRITE;
/*!40000 ALTER TABLE `vtiger_salesmanticketrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesmanticketrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesorder`
--

DROP TABLE IF EXISTS `vtiger_salesorder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salesorder` (
  `salesorderid` bigint(19) NOT NULL auto_increment,
  `subject` varchar(50) default NULL,
  `potentialid` bigint(19) default NULL,
  `customerno` varchar(20) default NULL,
  `salesorder_no` varchar(20) NOT NULL,
  `quoteid` bigint(19) default NULL,
  `vendorterms` varchar(100) default NULL,
  `contactid` bigint(19) default NULL,
  `vendorid` bigint(19) default NULL,
  `duedate` date default NULL,
  `carrier` smallint(6) default NULL,
  `pending` varchar(20) default NULL,
  `type` varchar(20) default NULL,
  `adjustment` decimal(25,8) default NULL,
  `salescommission` decimal(25,3) default NULL,
  `exciseduty` decimal(25,3) default NULL,
  `total` decimal(25,8) default NULL,
  `subtotal` decimal(25,8) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,8) default NULL,
  `s_h_amount` decimal(25,8) default NULL,
  `accountid` bigint(19) default NULL,
  `terms_conditions` text,
  `purchaseorder` bigint(19) default NULL,
  `sostatus` tinyint(4) default NULL,
  `currency_id` smallint(11) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  `enable_recurring` tinyint(1) default '0',
  `pre_tax_total` decimal(25,8) default NULL,
  `s_h_percent` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`salesorderid`),
  KEY `salesorder_vendorid_idx` (`vendorid`),
  KEY `salesorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salesorder`
--

LOCK TABLES `vtiger_salesorder` WRITE;
/*!40000 ALTER TABLE `vtiger_salesorder` DISABLE KEYS */;
INSERT INTO `vtiger_salesorder` VALUES (1,'test',0,'','',0,'',0,0,'2019-10-25',0,'','','0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000',0,'',0,1,0,'0.000',0,'0.00000000',0,2,'2019-10-25 09:09:00',2,'2020-03-18 10:12:05'),(2,'adsfaf',0,'','SO19102500001',0,'',0,0,'2019-10-25',0,'','','0.00000000','0.000','0.000','0.00000000','0.00000000','','0.000','0.00000000','0.00000000',6,'',0,1,0,'0.000',0,'0.00000000',0,2,'2019-10-25 09:14:28',2,'2021-05-05 16:00:52'),(3,'testxxxx',NULL,NULL,'SO21052300001',NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,1,1,'1.000',0,NULL,NULL,2,'2021-05-23 13:41:23',2,'2021-05-23 13:41:23');
/*!40000 ALTER TABLE `vtiger_salesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesorder_item`
--

DROP TABLE IF EXISTS `vtiger_salesorder_item`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salesorder_item` (
  `salesorder_itemid` bigint(20) unsigned NOT NULL auto_increment,
  `companyid` int(11) default NULL,
  `salesorderid` bigint(20) default NULL,
  `productid` int(11) default NULL,
  `quantity` int(11) default NULL,
  `conversionquantity` int(10) default NULL,
  `expectdamagequantity` int(10) default NULL,
  `finalquantity` int(10) default NULL,
  `saleablequantity` int(10) default NULL,
  `oosquantity` int(10) default NULL,
  `deliveryquantity` int(10) default NULL,
  `unit` int(10) default NULL,
  `salesprice` decimal(18,2) default NULL,
  `amount` decimal(18,2) default NULL,
  `standarddetail` text,
  `standardvalue` decimal(18,2) default NULL,
  `supplierid` int(11) default NULL,
  `drawingsurl` text,
  `isobsoleted` tinyint(1) default NULL,
  `reviewfinishitem` smallint(5) default NULL,
  `waitsyncvss_oos` smallint(5) default NULL,
  `syncvssnum_oos` int(10) default NULL,
  `syncvssdate_oos` timestamp NULL default NULL,
  `ispurchasemaking` tinyint(1) default NULL,
  `purchaseorderitemid` int(50) default NULL,
  `purchaseorderid` int(50) default NULL,
  `itemcode` varchar(20) default NULL,
  `itemname` varchar(50) default NULL,
  `itemimg` varchar(50) default NULL,
  `customitem` varchar(50) default NULL,
  `statuscode` int(10) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`salesorder_itemid`),
  KEY `FK_vtiger_salesorder_item` (`salesorderid`),
  CONSTRAINT `FK_vtiger_salesorder_item` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salesorder_item`
--

LOCK TABLES `vtiger_salesorder_item` WRITE;
/*!40000 ALTER TABLE `vtiger_salesorder_item` DISABLE KEYS */;
INSERT INTO `vtiger_salesorder_item` VALUES (1,NULL,2,7,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4563','dsfs','202936200.jpg','dsafafasf',0,2,'2021-05-04 17:47:29',2,'2021-05-12 17:07:50'),(2,NULL,2,4,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3452','fsdfsfs','','fdfasfa',0,2,'2021-05-04 17:49:55',2,'2021-05-10 15:06:05'),(3,NULL,2,8,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4562','fsadfafa','','erwraf',0,2,'2021-05-04 17:51:23',2,'2021-05-06 13:26:35'),(4,NULL,3,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34352','pname','','453141',0,2,'2021-05-23 13:41:40',2,'2021-05-23 13:41:40'),(5,NULL,3,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43242','pname2','','534141',0,2,'2021-05-23 13:41:59',2,'2021-05-23 13:41:59');
/*!40000 ALTER TABLE `vtiger_salesorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesordercf`
--

DROP TABLE IF EXISTS `vtiger_salesordercf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salesordercf`
--

LOCK TABLES `vtiger_salesordercf` WRITE;
/*!40000 ALTER TABLE `vtiger_salesordercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesordercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salutationtype`
--

DROP TABLE IF EXISTS `vtiger_salutationtype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL auto_increment,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`salutationid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salutationtype`
--

LOCK TABLES `vtiger_salutationtype` WRITE;
/*!40000 ALTER TABLE `vtiger_salutationtype` DISABLE KEYS */;
INSERT INTO `vtiger_salutationtype` VALUES (2,'Mr.',1,161,1),(3,'Ms.',1,162,2),(4,'Mrs.',1,163,3),(5,'Dr.',1,164,4),(6,'Prof.',1,165,5);
/*!40000 ALTER TABLE `vtiger_salutationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salutationtype_seq`
--

DROP TABLE IF EXISTS `vtiger_salutationtype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_salutationtype_seq`
--

LOCK TABLES `vtiger_salutationtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_salutationtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_salutationtype_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_salutationtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_scheduled_reports`
--

DROP TABLE IF EXISTS `vtiger_scheduled_reports`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_scheduled_reports` (
  `reportid` int(11) NOT NULL,
  `recipients` text,
  `schedule` text,
  `format` varchar(10) default NULL,
  `next_trigger_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_scheduled_reports`
--

LOCK TABLES `vtiger_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `vtiger_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_schedulereports`
--

DROP TABLE IF EXISTS `vtiger_schedulereports`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_schedulereports` (
  `reportid` int(10) default NULL,
  `scheduleid` int(3) default NULL,
  `recipients` text,
  `schdate` varchar(20) default NULL,
  `schtime` time default NULL,
  `schdayoftheweek` varchar(100) default NULL,
  `schdayofthemonth` varchar(100) default NULL,
  `schannualdates` varchar(500) default NULL,
  `specificemails` varchar(500) default NULL,
  `next_trigger_time` timestamp NOT NULL default CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_schedulereports`
--

LOCK TABLES `vtiger_schedulereports` WRITE;
/*!40000 ALTER TABLE `vtiger_schedulereports` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_schedulereports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seactivityrel`
--

DROP TABLE IF EXISTS `vtiger_seactivityrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  PRIMARY KEY  (`crmid`,`activityid`),
  KEY `seactivityrel_activityid_idx` (`activityid`),
  KEY `seactivityrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_seactivityrel`
--

LOCK TABLES `vtiger_seactivityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seactivityrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seactivityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seactivityrel_seq`
--

DROP TABLE IF EXISTS `vtiger_seactivityrel_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_seactivityrel_seq`
--

LOCK TABLES `vtiger_seactivityrel_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_seactivityrel_seq` DISABLE KEYS */;
INSERT INTO `vtiger_seactivityrel_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_seactivityrel_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seattachmentsrel`
--

DROP TABLE IF EXISTS `vtiger_seattachmentsrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL default '0',
  `attachmentsid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`attachmentsid`),
  KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  KEY `seattachmentsrel_crmid_idx` (`crmid`),
  KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_seattachmentsrel`
--

LOCK TABLES `vtiger_seattachmentsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seattachmentsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seattachmentsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_selectcolumn`
--

DROP TABLE IF EXISTS `vtiger_selectcolumn`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL default '0',
  `columnname` varchar(250) default '',
  PRIMARY KEY  (`queryid`,`columnindex`),
  KEY `selectcolumn_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_selectcolumn`
--

LOCK TABLES `vtiger_selectcolumn` WRITE;
/*!40000 ALTER TABLE `vtiger_selectcolumn` DISABLE KEYS */;
INSERT INTO `vtiger_selectcolumn` VALUES (1,0,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(1,1,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(1,2,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(1,3,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),(1,4,'vtiger_account:industry:Accounts_industry:industry:V'),(1,5,'vtiger_contactdetails:email:Contacts_Email:email:E'),(2,0,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(2,1,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(2,2,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(2,3,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),(2,4,'vtiger_account:industry:Accounts_industry:industry:V'),(2,5,'vtiger_contactdetails:email:Contacts_Email:email:E'),(3,0,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(3,1,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(3,2,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),(3,3,'vtiger_contactdetails:email:Contacts_Email:email:E'),(3,4,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),(3,5,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),(4,0,'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),(4,1,'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),(4,2,'vtiger_leaddetails:company:Leads_Company:company:V'),(4,3,'vtiger_leaddetails:email:Leads_Email:email:E'),(4,4,'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),(5,0,'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),(5,1,'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),(5,2,'vtiger_leaddetails:company:Leads_Company:company:V'),(5,3,'vtiger_leaddetails:email:Leads_Email:email:E'),(5,4,'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),(5,5,'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V'),(6,0,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),(6,1,'vtiger_potential:amount:Potentials_Amount:amount:N'),(6,2,'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),(6,3,'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),(6,4,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),(7,0,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),(7,1,'vtiger_potential:amount:Potentials_Amount:amount:N'),(7,2,'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),(7,3,'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),(7,4,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),(8,0,'vtiger_activity:subject:Calendar_Subject:subject:V'),(8,1,'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),(8,2,'vtiger_activity:status:Calendar_Status:taskstatus:V'),(8,3,'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),(8,4,'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),(9,0,'vtiger_activity:subject:Calendar_Subject:subject:V'),(9,1,'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),(9,2,'vtiger_activity:status:Calendar_Status:taskstatus:V'),(9,3,'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),(9,4,'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),(10,0,'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),(10,1,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),(10,2,'vtiger_products:productname:Products_Product_Name:productname:V'),(10,3,'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),(10,4,'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),(10,5,'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),(11,0,'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),(11,1,'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),(11,2,'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),(11,3,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),(11,4,'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),(11,5,'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),(12,0,'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),(12,1,'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),(12,2,'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),(12,3,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),(12,4,'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),(12,5,'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),(13,0,'vtiger_products:productname:Products_Product_Name:productname:V'),(13,1,'vtiger_products:productcode:Products_Product_Code:productcode:V'),(13,2,'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),(13,3,'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),(13,4,'vtiger_products:website:Products_Website:website:V'),(13,5,'vtiger_vendorRelProducts:vendorname:Products_Vendor_Name:vendor_id:I'),(13,6,'vtiger_products:mfr_part_no:Products_Mfr_PartNo:mfr_part_no:V'),(14,0,'vtiger_products:productname:Products_Product_Name:productname:V'),(14,1,'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),(14,2,'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),(14,3,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(14,4,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(14,5,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(15,0,'vtiger_quotes:subject:Quotes_Subject:subject:V'),(15,1,'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),(15,2,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),(15,3,'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),(15,4,'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),(15,5,'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),(16,0,'vtiger_quotes:subject:Quotes_Subject:subject:V'),(16,1,'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),(16,2,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),(16,3,'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),(16,4,'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),(16,5,'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),(16,6,'vtiger_quotes:carrier:Quotes_Carrier:carrier:V'),(16,7,'vtiger_quotes:shipping:Quotes_Shipping:shipping:V'),(17,0,'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),(17,1,'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),(17,2,'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),(17,3,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(17,4,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(17,5,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(17,6,'vtiger_contactdetails:email:Contacts_Email:email:E'),(18,0,'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),(18,1,'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),(18,2,'vtiger_purchaseorder:requisition_no:PurchaseOrder_Requisition_No:requisition_no:V'),(18,3,'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),(18,4,'vtiger_contactdetailsPurchaseOrder:lastname:PurchaseOrder_Contact_Name:contact_id:I'),(18,5,'vtiger_purchaseorder:carrier:PurchaseOrder_Carrier:carrier:V'),(18,6,'vtiger_purchaseorder:salescommission:PurchaseOrder_Sales_Commission:salescommission:N'),(18,7,'vtiger_purchaseorder:exciseduty:PurchaseOrder_Excise_Duty:exciseduty:N'),(18,8,'vtiger_usersPurchaseOrder:user_name:PurchaseOrder_Assigned_To:assigned_user_id:V'),(19,0,'vtiger_invoice:subject:Invoice_Subject:subject:V'),(19,1,'vtiger_invoice:salesorderid:Invoice_Sales_Order:salesorder_id:I'),(19,2,'vtiger_invoice:customerno:Invoice_Customer_No:customerno:V'),(19,3,'vtiger_invoice:exciseduty:Invoice_Excise_Duty:exciseduty:N'),(19,4,'vtiger_invoice:salescommission:Invoice_Sales_Commission:salescommission:N'),(19,5,'vtiger_accountInvoice:accountname:Invoice_Account_Name:account_id:I'),(20,0,'vtiger_salesorder:subject:SalesOrder_Subject:subject:V'),(20,1,'vtiger_quotesSalesOrder:subject:SalesOrder_Quote_Name:quote_id:I'),(20,2,'vtiger_contactdetailsSalesOrder:lastname:SalesOrder_Contact_Name:contact_id:I'),(20,3,'vtiger_salesorder:duedate:SalesOrder_Due_Date:duedate:D'),(20,4,'vtiger_salesorder:carrier:SalesOrder_Carrier:carrier:V'),(20,5,'vtiger_salesorder:sostatus:SalesOrder_Status:sostatus:V'),(20,6,'vtiger_accountSalesOrder:accountname:SalesOrder_Account_Name:account_id:I'),(20,7,'vtiger_salesorder:salescommission:SalesOrder_Sales_Commission:salescommission:N'),(20,8,'vtiger_salesorder:exciseduty:SalesOrder_Excise_Duty:exciseduty:N'),(20,9,'vtiger_usersSalesOrder:user_name:SalesOrder_Assigned_To:assigned_user_id:V'),(21,0,'vtiger_campaign:campaignname:Campaigns_Campaign_Name:campaignname:V'),(21,1,'vtiger_campaign:campaigntype:Campaigns_Campaign_Type:campaigntype:V'),(21,2,'vtiger_campaign:targetaudience:Campaigns_Target_Audience:targetaudience:V'),(21,3,'vtiger_campaign:budgetcost:Campaigns_Budget_Cost:budgetcost:I'),(21,4,'vtiger_campaign:actualcost:Campaigns_Actual_Cost:actualcost:I'),(21,5,'vtiger_campaign:expectedrevenue:Campaigns_Expected_Revenue:expectedrevenue:I'),(21,6,'vtiger_campaign:expectedsalescount:Campaigns_Expected_Sales_Count:expectedsalescount:N'),(21,7,'vtiger_campaign:actualsalescount:Campaigns_Actual_Sales_Count:actualsalescount:N'),(21,8,'vtiger_usersCampaigns:user_name:Campaigns_Assigned_To:assigned_user_id:V'),(22,0,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(22,1,'vtiger_contactdetails:email:Contacts_Email:email:E'),(22,2,'vtiger_activity:subject:Emails_Subject:subject:V'),(22,3,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),(23,0,'vtiger_account:accountname:Accounts_Account_Name:accountname:V'),(23,1,'vtiger_account:phone:Accounts_Phone:phone:V'),(23,2,'vtiger_account:email1:Accounts_Email:email1:E'),(23,3,'vtiger_activity:subject:Emails_Subject:subject:V'),(23,4,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),(24,0,'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),(24,1,'vtiger_leaddetails:company:Leads_Company:company:V'),(24,2,'vtiger_leaddetails:email:Leads_Email:email:E'),(24,3,'vtiger_activity:subject:Emails_Subject:subject:V'),(24,4,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),(25,0,'vtiger_vendor:vendorname:Vendors_Vendor_Name:vendorname:V'),(25,1,'vtiger_vendor:glacct:Vendors_GL_Account:glacct:V'),(25,2,'vtiger_vendor:email:Vendors_Email:email:E'),(25,3,'vtiger_activity:subject:Emails_Subject:subject:V'),(25,4,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V');
/*!40000 ALTER TABLE `vtiger_selectcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_selectquery`
--

DROP TABLE IF EXISTS `vtiger_selectquery`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) default '0',
  `numofobjects` int(19) default '0',
  PRIMARY KEY  (`queryid`),
  KEY `selectquery_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_selectquery`
--

LOCK TABLES `vtiger_selectquery` WRITE;
/*!40000 ALTER TABLE `vtiger_selectquery` DISABLE KEYS */;
INSERT INTO `vtiger_selectquery` VALUES (1,0,0),(2,0,0),(3,0,0),(4,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,0,0),(12,0,0),(13,0,0),(14,0,0),(15,0,0),(16,0,0),(17,0,0),(18,0,0),(19,0,0),(20,0,0),(21,0,0),(22,0,0),(23,0,0),(24,0,0),(25,0,0);
/*!40000 ALTER TABLE `vtiger_selectquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_selectquery_seq`
--

DROP TABLE IF EXISTS `vtiger_selectquery_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_selectquery_seq`
--

LOCK TABLES `vtiger_selectquery_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_selectquery_seq` DISABLE KEYS */;
INSERT INTO `vtiger_selectquery_seq` VALUES (25);
/*!40000 ALTER TABLE `vtiger_selectquery_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_senotesrel`
--

DROP TABLE IF EXISTS `vtiger_senotesrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL default '0',
  `notesid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`notesid`),
  KEY `senotesrel_notesid_idx` (`notesid`),
  KEY `senotesrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_senotesrel`
--

LOCK TABLES `vtiger_senotesrel` WRITE;
/*!40000 ALTER TABLE `vtiger_senotesrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_senotesrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seproductsrel`
--

DROP TABLE IF EXISTS `vtiger_seproductsrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL default '0',
  `productid` int(19) NOT NULL default '0',
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY  (`crmid`,`productid`),
  KEY `seproductsrel_productid_idx` (`productid`),
  KEY `seproductrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_seproductsrel`
--

LOCK TABLES `vtiger_seproductsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seproductsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seproductsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_service`
--

DROP TABLE IF EXISTS `vtiger_service`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(20) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` tinyint(4) default NULL,
  `qty_per_unit` decimal(11,2) default '0.00',
  `unit_price` decimal(25,8) default NULL,
  `sales_start_date` date default NULL,
  `sales_end_date` date default NULL,
  `start_date` date default NULL,
  `expiry_date` date default NULL,
  `discontinued` tinyint(1) NOT NULL default '0',
  `service_usageunit` tinyint(4) default NULL,
  `website` varchar(100) default NULL,
  `taxclass` tinyint(4) default NULL,
  `currency_id` smallint(6) NOT NULL default '1',
  `commissionrate` decimal(7,3) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_service`
--

LOCK TABLES `vtiger_service` WRITE;
/*!40000 ALTER TABLE `vtiger_service` DISABLE KEYS */;
INSERT INTO `vtiger_service` VALUES (0,'SVO20031700001','安装',3,'0.00','0.00000000','2020-03-17','2020-03-17','2020-03-17','2020-03-17',0,2,'',0,0,'0.000',2,'2020-03-17 20:55:13',2,'2020-03-18 10:13:56');
/*!40000 ALTER TABLE `vtiger_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_service_usageunit`
--

DROP TABLE IF EXISTS `vtiger_service_usageunit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL auto_increment,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`service_usageunitid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_service_usageunit`
--

LOCK TABLES `vtiger_service_usageunit` WRITE;
/*!40000 ALTER TABLE `vtiger_service_usageunit` DISABLE KEYS */;
INSERT INTO `vtiger_service_usageunit` VALUES (1,'Hours',1,226,1),(2,'Days',1,227,2),(3,'Incidents',1,228,3);
/*!40000 ALTER TABLE `vtiger_service_usageunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_service_usageunit_seq`
--

DROP TABLE IF EXISTS `vtiger_service_usageunit_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_service_usageunit_seq`
--

LOCK TABLES `vtiger_service_usageunit_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_service_usageunit_seq` DISABLE KEYS */;
INSERT INTO `vtiger_service_usageunit_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_service_usageunit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecategory`
--

DROP TABLE IF EXISTS `vtiger_servicecategory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL auto_increment,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`servicecategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_servicecategory`
--

LOCK TABLES `vtiger_servicecategory` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecategory` DISABLE KEYS */;
INSERT INTO `vtiger_servicecategory` VALUES (2,'Support',1,230,2),(3,'Installation',1,231,3),(4,'Migration',1,232,4),(5,'Customization',1,233,5),(6,'Training',1,234,6);
/*!40000 ALTER TABLE `vtiger_servicecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecategory_seq`
--

DROP TABLE IF EXISTS `vtiger_servicecategory_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_servicecategory_seq`
--

LOCK TABLES `vtiger_servicecategory_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecategory_seq` DISABLE KEYS */;
INSERT INTO `vtiger_servicecategory_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_servicecategory_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecf`
--

DROP TABLE IF EXISTS `vtiger_servicecf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_servicecf`
--

LOCK TABLES `vtiger_servicecf` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecf` DISABLE KEYS */;
INSERT INTO `vtiger_servicecf` VALUES (10);
/*!40000 ALTER TABLE `vtiger_servicecf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecontracts`
--

DROP TABLE IF EXISTS `vtiger_servicecontracts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_servicecontracts` (
  `servicecontractsid` bigint(20) NOT NULL auto_increment,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `sc_related_to` bigint(20) default NULL,
  `tracking_unit` tinyint(4) default NULL,
  `total_units` decimal(5,2) default NULL,
  `used_units` decimal(5,2) default NULL,
  `subject` varchar(50) default NULL,
  `due_date` date default NULL,
  `planned_duration` int(11) default NULL,
  `actual_duration` int(11) default NULL,
  `contract_status` tinyint(4) default NULL,
  `priority` tinyint(4) default NULL,
  `contract_type` tinyint(4) default NULL,
  `progress` decimal(5,2) default NULL,
  `contract_no` varchar(20) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`servicecontractsid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_servicecontracts`
--

LOCK TABLES `vtiger_servicecontracts` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecontracts` DISABLE KEYS */;
INSERT INTO `vtiger_servicecontracts` VALUES (9,'2015-01-14','2020-03-17',0,0,'2.00','0.00','contract ucin','2015-01-14',1,0,0,0,0,'0.00','SERCON1',NULL,NULL,2,'2020-03-17 20:54:42'),(10,'2019-10-25','2019-10-25',3,0,'0.00','0.00','dfasf','2019-10-25',0,0,0,0,0,'0.00','CTR19102500001',2,'2019-10-25 09:28:25',2,'2019-10-25 09:28:25'),(13,'2019-10-25','2019-10-25',0,0,'0.00','0.00','特踏实','2019-10-25',0,0,0,0,0,'0.00','CTR19102500002',2,'2019-10-25 09:32:59',2,'2020-03-18 10:12:24');
/*!40000 ALTER TABLE `vtiger_servicecontracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecontractscf`
--

DROP TABLE IF EXISTS `vtiger_servicecontractscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL,
  PRIMARY KEY  (`servicecontractsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_servicecontractscf`
--

LOCK TABLES `vtiger_servicecontractscf` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecontractscf` DISABLE KEYS */;
INSERT INTO `vtiger_servicecontractscf` VALUES (9);
/*!40000 ALTER TABLE `vtiger_servicecontractscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seticketsrel`
--

DROP TABLE IF EXISTS `vtiger_seticketsrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL default '0',
  `ticketid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`ticketid`),
  KEY `seticketsrel_crmid_idx` (`crmid`),
  KEY `seticketsrel_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_seticketsrel`
--

LOCK TABLES `vtiger_seticketsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seticketsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seticketsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_blocks`
--

DROP TABLE IF EXISTS `vtiger_settings_blocks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) default NULL,
  `sequence` int(19) default NULL,
  PRIMARY KEY  (`blockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_settings_blocks`
--

LOCK TABLES `vtiger_settings_blocks` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_blocks` DISABLE KEYS */;
INSERT INTO `vtiger_settings_blocks` VALUES (1,'LBL_USER_MANAGEMENT',1),(2,'LBL_STUDIO',2),(3,'LBL_COMMUNICATION_TEMPLATES',3),(4,'LBL_OTHER_SETTINGS',4),(5,'LBL_INTEGRATION',5);
/*!40000 ALTER TABLE `vtiger_settings_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_blocks_seq`
--

DROP TABLE IF EXISTS `vtiger_settings_blocks_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_settings_blocks_seq`
--

LOCK TABLES `vtiger_settings_blocks_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_blocks_seq` DISABLE KEYS */;
INSERT INTO `vtiger_settings_blocks_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_settings_blocks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_field`
--

DROP TABLE IF EXISTS `vtiger_settings_field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) default NULL,
  `name` varchar(250) default NULL,
  `iconpath` varchar(300) default NULL,
  `description` text,
  `linkto` text,
  `sequence` int(19) default NULL,
  `active` int(19) default '0',
  `pinned` int(1) default '0',
  PRIMARY KEY  (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_settings_field`
--

LOCK TABLES `vtiger_settings_field` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_field` DISABLE KEYS */;
INSERT INTO `vtiger_settings_field` VALUES (1,1,'LBL_USERS','ico-users.gif','LBL_USER_DESCRIPTION','index.php?module=Users&parent=Settings&view=List',1,0,1),(2,1,'LBL_ROLES','ico-roles.gif','LBL_ROLE_DESCRIPTION','index.php?module=Roles&parent=Settings&view=Index',2,0,0),(3,1,'LBL_PROFILES','ico-profile.gif','LBL_PROFILE_DESCRIPTION','index.php?module=Profiles&parent=Settings&view=List',3,0,0),(4,1,'USERGROUPLIST','ico-groups.gif','LBL_GROUP_DESCRIPTION','index.php?module=Groups&parent=Settings&view=List',4,0,0),(5,1,'LBL_SHARING_ACCESS','shareaccess.gif','LBL_SHARING_ACCESS_DESCRIPTION','index.php?module=SharingAccess&parent=Settings&view=Index',5,0,0),(6,1,'LBL_FIELDS_ACCESS','orgshar.gif','LBL_SHARING_FIELDS_DESCRIPTION','index.php?module=FieldAccess&parent=Settings&view=Index',6,0,0),(7,1,'LBL_LOGIN_HISTORY_DETAILS','set-IcoLoginHistory.gif','LBL_LOGIN_HISTORY_DESCRIPTION','index.php?module=LoginHistory&parent=Settings&view=List',7,0,0),(8,2,'VTLIB_LBL_MODULE_MANAGER','vtlib_modmng.gif','VTLIB_LBL_MODULE_MANAGER_DESCRIPTION','index.php?module=ModuleManager&parent=Settings&view=List',8,0,1),(9,2,'LBL_PICKLIST_EDITOR','picklist.gif','LBL_PICKLIST_DESCRIPTION','index.php?parent=Settings&module=Picklist&view=Index',1,0,1),(10,2,'LBL_PICKLIST_DEPENDENCY_SETUP','picklistdependency.gif','LBL_PICKLIST_DEPENDENCY_DESCRIPTION','index.php?parent=Settings&module=PickListDependency&view=List',2,0,0),(11,2,'LBL_MENU_EDITOR','menueditor.png','LBL_MENU_DESC','index.php?module=MenuEditor&parent=Settings&view=Index',3,0,0),(12,3,'NOTIFICATIONSCHEDULERS','notification.gif','LBL_NOTIF_SCHED_DESCRIPTION','index.php?module=Settings&view=listnotificationschedulers&parenttab=Settings',4,0,0),(13,3,'INVENTORYNOTIFICATION','inventory.gif','LBL_INV_NOTIF_DESCRIPTION','index.php?module=Settings&view=listinventorynotifications&parenttab=Settings',1,0,0),(14,3,'LBL_COMPANY_DETAILS','company.gif','LBL_COMPANY_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=CompanyDetails',2,0,0),(15,4,'LBL_MAIL_SERVER_SETTINGS','ogmailserver.gif','LBL_MAIL_SERVER_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=OutgoingServerDetail',3,0,0),(16,4,'LBL_CURRENCY_SETTINGS','currency.gif','LBL_CURRENCY_DESCRIPTION','index.php?parent=Settings&module=Currency&view=List',4,0,0),(17,4,'LBL_TAX_SETTINGS','taxConfiguration.gif','LBL_TAX_DESCRIPTION','index.php?module=Vtiger&parent=Settings&view=TaxIndex',5,0,0),(18,4,'LBL_SYSTEM_INFO','system.gif','LBL_SYSTEM_DESCRIPTION','index.php?module=Settings&submodule=Server&view=ProxyConfig',6,1,0),(19,4,'LBL_ANNOUNCEMENT','announ.gif','LBL_ANNOUNCEMENT_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=AnnouncementEdit',1,0,0),(20,4,'LBL_DEFAULT_MODULE_VIEW','set-IcoTwoTabConfig.gif','LBL_DEFAULT_MODULE_VIEW_DESC','index.php?module=Settings&action=DefModuleView&parenttab=Settings',2,0,0),(21,4,'INVENTORYTERMSANDCONDITIONS','terms.gif','LBL_INV_TANDC_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=TermsAndConditionsEdit',3,0,0),(22,4,'LBL_CUSTOMIZE_MODENT_NUMBER','settingsInvNumber.gif','LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION','index.php?module=Vtiger&parent=Settings&view=CustomRecordNumbering',4,0,0),(23,4,'LBL_MAIL_SCANNER','mailScanner.gif','LBL_MAIL_SCANNER_DESCRIPTION','index.php?parent=Settings&module=MailConverter&view=List',5,0,0),(24,4,'LBL_LIST_WORKFLOWS','settingsWorkflow.png','LBL_LIST_WORKFLOWS_DESCRIPTION','index.php?module=Workflows&parent=Settings&view=List',6,0,1),(25,4,'LBL_CONFIG_EDITOR','migrate.gif','LBL_CONFIG_EDITOR_DESCRIPTION','index.php?module=Vtiger&parent=Settings&view=ConfigEditorDetail',7,0,0),(26,4,'Scheduler','Cron.png','Allows you to Configure Cron Task','index.php?module=CronTasks&parent=Settings&view=List',8,0,0),(27,4,'LBL_WORKFLOW_LIST','settingsWorkflow.png','LBL_AVAILABLE_WORKLIST_LIST','index.php?module=com_vtiger_workflow&action=workflowlist',8,0,0),(28,4,'ModTracker','set-IcoLoginHistory.gif','LBL_MODTRACKER_DESCRIPTION','index.php?module=ModTracker&action=BasicSettings&parenttab=Settings&formodule=ModTracker',9,0,0),(29,5,'LBL_PBXMANAGER','','PBXManager module Configuration','index.php?module=PBXManager&parent=Settings&view=Index',2,0,0),(30,4,'LBL_CUSTOMER_PORTAL','portal_icon.png','PORTAL_EXTENSION_DESCRIPTION','index.php?module=CustomerPortal&action=index&parenttab=Settings',10,0,0),(31,4,'Webforms','modules/Webforms/img/Webform.png','LBL_WEBFORMS_DESCRIPTION','index.php?module=Webforms&action=index&parenttab=Settings',11,0,0),(32,2,'LBL_EDIT_FIELDS','','LBL_LAYOUT_EDITOR_DESCRIPTION','index.php?module=LayoutEditor&parent=Settings&view=Index',NULL,0,0);
/*!40000 ALTER TABLE `vtiger_settings_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_field_seq`
--

DROP TABLE IF EXISTS `vtiger_settings_field_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_settings_field_seq`
--

LOCK TABLES `vtiger_settings_field_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_field_seq` DISABLE KEYS */;
INSERT INTO `vtiger_settings_field_seq` VALUES (32);
/*!40000 ALTER TABLE `vtiger_settings_field_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sharedcalendar`
--

DROP TABLE IF EXISTS `vtiger_sharedcalendar`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL,
  PRIMARY KEY  (`userid`,`sharedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sharedcalendar`
--

LOCK TABLES `vtiger_sharedcalendar` WRITE;
/*!40000 ALTER TABLE `vtiger_sharedcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sharedcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shareduserinfo`
--

DROP TABLE IF EXISTS `vtiger_shareduserinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_shareduserinfo` (
  `userid` int(19) NOT NULL default '0',
  `shareduserid` int(19) NOT NULL default '0',
  `color` varchar(50) default NULL,
  `visible` int(19) default '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_shareduserinfo`
--

LOCK TABLES `vtiger_shareduserinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_shareduserinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_shareduserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shippingtaxinfo`
--

DROP TABLE IF EXISTS `vtiger_shippingtaxinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) default NULL,
  `taxlabel` varchar(50) default NULL,
  `percentage` decimal(7,3) default NULL,
  `deleted` int(1) default NULL,
  PRIMARY KEY  (`taxid`),
  KEY `shippingtaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_shippingtaxinfo`
--

LOCK TABLES `vtiger_shippingtaxinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo` DISABLE KEYS */;
INSERT INTO `vtiger_shippingtaxinfo` VALUES (1,'shtax1','VAT','4.500',0),(2,'shtax2','Sales','10.000',0),(3,'shtax3','Service','12.500',0);
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shippingtaxinfo_seq`
--

DROP TABLE IF EXISTS `vtiger_shippingtaxinfo_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_shippingtaxinfo_seq`
--

LOCK TABLES `vtiger_shippingtaxinfo_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo_seq` DISABLE KEYS */;
INSERT INTO `vtiger_shippingtaxinfo_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shorturls`
--

DROP TABLE IF EXISTS `vtiger_shorturls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_shorturls` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(50) default NULL,
  `handler_path` varchar(400) default NULL,
  `handler_class` varchar(100) default NULL,
  `handler_function` varchar(100) default NULL,
  `handler_data` varchar(255) default NULL,
  `onetime` int(5) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_shorturls`
--

LOCK TABLES `vtiger_shorturls` WRITE;
/*!40000 ALTER TABLE `vtiger_shorturls` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_shorturls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifier`
--

DROP TABLE IF EXISTS `vtiger_smsnotifier`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_smsnotifier` (
  `smsnotifierid` int(11) default NULL,
  `message` text,
  `status` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_smsnotifier`
--

LOCK TABLES `vtiger_smsnotifier` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifier_servers`
--

DROP TABLE IF EXISTS `vtiger_smsnotifier_servers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_smsnotifier_servers` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(255) default NULL,
  `isactive` int(1) default NULL,
  `providertype` varchar(50) default NULL,
  `username` varchar(255) default NULL,
  `parameters` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_smsnotifier_servers`
--

LOCK TABLES `vtiger_smsnotifier_servers` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifier_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifier_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifier_status`
--

DROP TABLE IF EXISTS `vtiger_smsnotifier_status`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_smsnotifier_status` (
  `smsnotifierid` int(11) default NULL,
  `tonumber` varchar(20) default NULL,
  `status` varchar(10) default NULL,
  `smsmessageid` varchar(50) default NULL,
  `needlookup` int(1) default '1',
  `statusid` int(11) NOT NULL auto_increment,
  `statusmessage` varchar(100) default NULL,
  PRIMARY KEY  (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_smsnotifier_status`
--

LOCK TABLES `vtiger_smsnotifier_status` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifier_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifier_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifiercf`
--

DROP TABLE IF EXISTS `vtiger_smsnotifiercf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_smsnotifiercf` (
  `smsnotifierid` int(11) NOT NULL,
  PRIMARY KEY  (`smsnotifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_smsnotifiercf`
--

LOCK TABLES `vtiger_smsnotifiercf` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifiercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifiercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_soapservice`
--

DROP TABLE IF EXISTS `vtiger_soapservice`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_soapservice` (
  `id` int(19) default NULL,
  `type` varchar(25) default NULL,
  `sessionid` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_soapservice`
--

LOCK TABLES `vtiger_soapservice` WRITE;
/*!40000 ALTER TABLE `vtiger_soapservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_soapservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sobillads`
--

DROP TABLE IF EXISTS `vtiger_sobillads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`sobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sobillads`
--

LOCK TABLES `vtiger_sobillads` WRITE;
/*!40000 ALTER TABLE `vtiger_sobillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sobillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_soshipads`
--

DROP TABLE IF EXISTS `vtiger_soshipads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`soshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_soshipads`
--

LOCK TABLES `vtiger_soshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_soshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_soshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sostatus`
--

DROP TABLE IF EXISTS `vtiger_sostatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL auto_increment,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`sostatusid`),
  UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sostatus`
--

LOCK TABLES `vtiger_sostatus` WRITE;
/*!40000 ALTER TABLE `vtiger_sostatus` DISABLE KEYS */;
INSERT INTO `vtiger_sostatus` VALUES (1,'Created',0,166,0),(2,'Approved',0,167,1),(3,'Delivered',0,168,2),(4,'Cancelled',0,169,3);
/*!40000 ALTER TABLE `vtiger_sostatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sostatus_seq`
--

DROP TABLE IF EXISTS `vtiger_sostatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sostatus_seq`
--

LOCK TABLES `vtiger_sostatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_sostatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_sostatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_sostatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sostatushistory`
--

DROP TABLE IF EXISTS `vtiger_sostatushistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `sostatus` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `sostatushistory_salesorderid_idx` (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sostatushistory`
--

LOCK TABLES `vtiger_sostatushistory` WRITE;
/*!40000 ALTER TABLE `vtiger_sostatushistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sostatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sqltimelog`
--

DROP TABLE IF EXISTS `vtiger_sqltimelog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_sqltimelog` (
  `id` int(11) default NULL,
  `type` varchar(10) default NULL,
  `data` text,
  `started` decimal(20,6) default NULL,
  `ended` decimal(20,6) default NULL,
  `loggedon` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_sqltimelog`
--

LOCK TABLES `vtiger_sqltimelog` WRITE;
/*!40000 ALTER TABLE `vtiger_sqltimelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sqltimelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_start_hour`
--

DROP TABLE IF EXISTS `vtiger_start_hour`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_start_hour` (
  `start_hourid` int(11) NOT NULL auto_increment,
  `start_hour` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`start_hourid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_start_hour`
--

LOCK TABLES `vtiger_start_hour` WRITE;
/*!40000 ALTER TABLE `vtiger_start_hour` DISABLE KEYS */;
INSERT INTO `vtiger_start_hour` VALUES (1,'00:00',1,297,1),(2,'01:00',1,298,2),(3,'02:00',1,299,3),(4,'03:00',1,300,4),(5,'04:00',1,301,5),(6,'05:00',1,302,6),(7,'06:00',1,303,7),(8,'07:00',1,304,8),(9,'08:00',1,305,9),(10,'09:00',1,306,10),(11,'10:00',1,307,11),(12,'11:00',1,308,12),(13,'12:00',1,309,13),(14,'13:00',1,310,14),(15,'14:00',1,311,15),(16,'15:00',1,312,16),(17,'16:00',1,313,17),(18,'17:00',1,314,18),(19,'18:00',1,315,19),(20,'19:00',1,316,20),(21,'20:00',1,317,21),(22,'21:00',1,318,22),(23,'22:00',1,319,23),(24,'23:00',1,320,24);
/*!40000 ALTER TABLE `vtiger_start_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_start_hour_seq`
--

DROP TABLE IF EXISTS `vtiger_start_hour_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_start_hour_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_start_hour_seq`
--

LOCK TABLES `vtiger_start_hour_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_start_hour_seq` DISABLE KEYS */;
INSERT INTO `vtiger_start_hour_seq` VALUES (24);
/*!40000 ALTER TABLE `vtiger_start_hour_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_status`
--

DROP TABLE IF EXISTS `vtiger_status`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_status` (
  `statusid` int(19) NOT NULL auto_increment,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_status`
--

LOCK TABLES `vtiger_status` WRITE;
/*!40000 ALTER TABLE `vtiger_status` DISABLE KEYS */;
INSERT INTO `vtiger_status` VALUES (1,'Active',0,1),(2,'Inactive',1,1);
/*!40000 ALTER TABLE `vtiger_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_status_seq`
--

DROP TABLE IF EXISTS `vtiger_status_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_status_seq`
--

LOCK TABLES `vtiger_status_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_status_seq` DISABLE KEYS */;
INSERT INTO `vtiger_status_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_status_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_systems`
--

DROP TABLE IF EXISTS `vtiger_systems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) default NULL,
  `server_port` int(19) default NULL,
  `server_username` varchar(100) default NULL,
  `server_password` varchar(100) default NULL,
  `server_type` varchar(20) default NULL,
  `smtp_auth` varchar(5) default NULL,
  `server_path` varchar(256) default NULL,
  `from_email_field` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_systems`
--

LOCK TABLES `vtiger_systems` WRITE;
/*!40000 ALTER TABLE `vtiger_systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tab`
--

DROP TABLE IF EXISTS `vtiger_tab`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tab` (
  `tabid` int(19) NOT NULL default '0',
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL default '1',
  `tabsequence` int(10) default NULL,
  `tablabel` varchar(25) NOT NULL,
  `modifiedby` int(19) default NULL,
  `modifiedtime` int(19) default NULL,
  `customized` int(19) default NULL,
  `ownedby` int(19) default NULL,
  `isentitytype` int(11) NOT NULL default '1',
  `trial` int(1) NOT NULL default '0',
  `version` varchar(10) default NULL,
  `parent` varchar(30) default NULL,
  PRIMARY KEY  (`tabid`),
  UNIQUE KEY `tab_name_idx` (`name`),
  KEY `tab_modifiedby_idx` (`modifiedby`),
  KEY `tab_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tab`
--

LOCK TABLES `vtiger_tab` WRITE;
/*!40000 ALTER TABLE `vtiger_tab` DISABLE KEYS */;
INSERT INTO `vtiger_tab` VALUES (1,'Dashboard',0,12,'Dashboards',NULL,NULL,0,1,0,0,NULL,'Analytics'),(2,'Potentials',0,7,'Potentials',NULL,NULL,0,0,1,0,NULL,'Sales'),(3,'Home',0,1,'Home',NULL,NULL,0,1,0,0,NULL,NULL),(4,'Contacts',0,6,'Contacts',NULL,NULL,0,0,1,0,NULL,'Sales'),(6,'Accounts',0,5,'Accounts',NULL,NULL,0,0,1,0,NULL,'Sales'),(7,'Leads',0,4,'Leads',NULL,NULL,0,0,1,0,NULL,'Sales'),(8,'Documents',0,9,'Documents',NULL,NULL,0,0,1,0,NULL,'Tools'),(9,'Calendar',0,3,'Calendar',NULL,NULL,0,0,1,0,NULL,'Tools'),(10,'Emails',0,10,'Emails',NULL,NULL,0,1,1,0,NULL,'Tools'),(13,'HelpDesk',0,11,'HelpDesk',NULL,NULL,0,0,1,0,NULL,'Support'),(14,'Products',0,8,'Products',NULL,NULL,0,0,1,0,NULL,'Inventory'),(15,'Faq',0,-1,'Faq',NULL,NULL,0,1,1,0,NULL,'Support'),(16,'Events',2,-1,'Events',NULL,NULL,0,0,1,0,NULL,NULL),(18,'Vendors',0,-1,'Vendors',NULL,NULL,0,0,1,0,NULL,'Inventory'),(19,'PriceBooks',0,-1,'PriceBooks',NULL,NULL,0,1,1,0,NULL,'Inventory'),(20,'Quotes',0,-1,'Quotes',NULL,NULL,0,0,1,0,NULL,'Sales'),(21,'PurchaseOrder',0,-1,'PurchaseOrder',NULL,NULL,0,0,1,0,NULL,'Inventory'),(22,'SalesOrder',0,-1,'SalesOrder',NULL,NULL,0,0,1,0,NULL,'Sales'),(23,'Invoice',0,-1,'Invoice',NULL,NULL,0,0,1,0,NULL,'Sales'),(24,'Rss',0,-1,'Rss',NULL,NULL,0,1,0,0,NULL,'Tools'),(25,'Reports',0,-1,'Reports',NULL,NULL,0,1,0,0,NULL,'Analytics'),(26,'Campaigns',0,-1,'Campaigns',NULL,NULL,0,0,1,0,NULL,'Marketing'),(27,'Portal',0,-1,'Portal',NULL,NULL,0,1,0,0,NULL,'Tools'),(28,'Webmails',0,-1,'Webmails',NULL,NULL,0,1,1,0,NULL,NULL),(29,'Users',0,-1,'Users',NULL,NULL,0,1,0,0,NULL,NULL),(30,'Import',0,-1,'Import',NULL,NULL,1,0,0,0,'1.7',''),(31,'MailManager',0,-1,'MailManager',NULL,NULL,1,0,0,0,'1.9','Tools'),(32,'Mobile',0,-1,'Mobile',NULL,NULL,1,0,0,0,'2.0',''),(33,'ModTracker',0,-1,'ModTracker',NULL,NULL,0,0,0,0,'1.2',''),(34,'PBXManager',0,-1,'PBXManager',NULL,NULL,1,0,1,0,'2.2','Tools'),(35,'ServiceContracts',0,-1,'Service Contracts',NULL,NULL,0,0,1,0,'2.4','Support'),(36,'Services',0,-1,'Services',NULL,NULL,0,0,1,0,'2.6','Inventory'),(37,'WSAPP',0,-1,'WSAPP',NULL,NULL,1,0,0,0,'3.4.4',''),(38,'Assets',0,-1,'Assets',NULL,NULL,0,0,1,0,'2.0','Inventory'),(39,'CustomerPortal',0,-1,'CustomerPortal',NULL,NULL,0,0,0,0,'1.4',''),(40,'EmailTemplates',0,-1,'Email Templates',NULL,NULL,1,0,0,0,'1.0','Tools'),(41,'Google',0,-1,'Google',NULL,NULL,0,0,0,0,'1.5',''),(42,'ModComments',0,-1,'Comments',NULL,NULL,0,0,1,0,'2.1','Tools'),(43,'ProjectMilestone',0,-1,'ProjectMilestone',NULL,NULL,0,0,1,0,'3.0','Support'),(44,'ProjectTask',0,-1,'ProjectTask',NULL,NULL,0,0,1,0,'3.1','Support'),(45,'Project',0,-1,'Project',NULL,NULL,0,0,1,0,'3.3','Support'),(46,'RecycleBin',0,-1,'Recycle Bin',NULL,NULL,0,0,0,0,'1.5','Tools'),(47,'SMSNotifier',0,-1,'SMSNotifier',NULL,NULL,0,0,1,0,'1.9','Tools'),(48,'Webforms',0,-1,'Webforms',NULL,NULL,0,0,0,0,'1.5',''),(49,'ExtensionStore',0,-1,'Extension Store',NULL,NULL,1,0,0,0,'1.1.4','Settings');
/*!40000 ALTER TABLE `vtiger_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tab_info`
--

DROP TABLE IF EXISTS `vtiger_tab_info`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tab_info` (
  `tabid` int(19) default NULL,
  `prefname` varchar(256) default NULL,
  `prefvalue` varchar(256) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tab_info`
--

LOCK TABLES `vtiger_tab_info` WRITE;
/*!40000 ALTER TABLE `vtiger_tab_info` DISABLE KEYS */;
INSERT INTO `vtiger_tab_info` VALUES (30,'vtiger_min_version','6.0.0rc'),(30,'vtiger_max_version','6.*'),(31,'vtiger_min_version','6.0.0RC'),(32,'vtiger_min_version','6.0.0rc'),(33,'vtiger_min_version','6.0.0rc'),(34,'vtiger_min_version','6.0.0'),(34,'vtiger_max_version','6.*'),(35,'vtiger_min_version','6.0.0rc'),(36,'vtiger_min_version','6.0.0rc'),(36,'vtiger_max_version','6.*'),(37,'vtiger_min_version','6.0.0rc'),(38,'vtiger_min_version','6.0.0rc'),(38,'vtiger_max_version','6.*'),(39,'vtiger_min_version','6.0.0rc'),(39,'vtiger_max_version','6.*'),(40,'vtiger_min_version','6.0.0rc'),(40,'vtiger_max_version','6.*'),(41,'vtiger_min_version','6.0.0rc'),(41,'vtiger_max_version','6.*'),(42,'vtiger_min_version','6.0.0rc'),(42,'vtiger_max_version','6.*'),(43,'vtiger_min_version','6.0.0rc'),(43,'vtiger_max_version','6.*'),(44,'vtiger_min_version','6.0.0rc'),(45,'vtiger_min_version','6.0.0rc'),(46,'vtiger_min_version','6.0.0rc'),(46,'vtiger_max_version','6.*'),(47,'vtiger_min_version','6.0.0rc'),(47,'vtiger_max_version','6.*'),(48,'vtiger_min_version','6.0.0rc'),(48,'vtiger_max_version','6.*'),(49,'vtiger_min_version','6.0.0'),(49,'vtiger_max_version','6.*');
/*!40000 ALTER TABLE `vtiger_tab_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskpriority`
--

DROP TABLE IF EXISTS `vtiger_taskpriority`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL auto_increment,
  `taskpriority` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`taskpriorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_taskpriority`
--

LOCK TABLES `vtiger_taskpriority` WRITE;
/*!40000 ALTER TABLE `vtiger_taskpriority` DISABLE KEYS */;
INSERT INTO `vtiger_taskpriority` VALUES (1,'High',1,170,0),(2,'Medium',1,171,1),(3,'Low',1,172,2);
/*!40000 ALTER TABLE `vtiger_taskpriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_taskpriority_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_taskpriority_seq`
--

LOCK TABLES `vtiger_taskpriority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_taskpriority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_taskpriority_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_taskpriority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskstatus`
--

DROP TABLE IF EXISTS `vtiger_taskstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL auto_increment,
  `taskstatus` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`taskstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_taskstatus`
--

LOCK TABLES `vtiger_taskstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_taskstatus` DISABLE KEYS */;
INSERT INTO `vtiger_taskstatus` VALUES (1,'Not Started',0,173,0),(2,'In Progress',0,174,1),(3,'Completed',0,175,2),(4,'Pending Input',0,176,3),(5,'Deferred',0,177,4),(6,'Planned',0,178,5);
/*!40000 ALTER TABLE `vtiger_taskstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_taskstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_taskstatus_seq`
--

LOCK TABLES `vtiger_taskstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_taskstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_taskstatus_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_taskstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taxclass`
--

DROP TABLE IF EXISTS `vtiger_taxclass`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL auto_increment,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`taxclassid`),
  UNIQUE KEY `taxclass_carrier_idx` (`taxclass`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_taxclass`
--

LOCK TABLES `vtiger_taxclass` WRITE;
/*!40000 ALTER TABLE `vtiger_taxclass` DISABLE KEYS */;
INSERT INTO `vtiger_taxclass` VALUES (1,'SalesTax',0,1),(2,'Vat',1,1);
/*!40000 ALTER TABLE `vtiger_taxclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taxclass_seq`
--

DROP TABLE IF EXISTS `vtiger_taxclass_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_taxclass_seq`
--

LOCK TABLES `vtiger_taxclass_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_taxclass_seq` DISABLE KEYS */;
INSERT INTO `vtiger_taxclass_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_taxclass_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcategories`
--

DROP TABLE IF EXISTS `vtiger_ticketcategories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL auto_increment,
  `ticketcategories` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`ticketcategories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketcategories`
--

LOCK TABLES `vtiger_ticketcategories` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcategories` DISABLE KEYS */;
INSERT INTO `vtiger_ticketcategories` VALUES (1,'Big Problem',1,179,0),(2,'Small Problem',1,180,1),(3,'Other Problem',1,181,2);
/*!40000 ALTER TABLE `vtiger_ticketcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcategories_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketcategories_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketcategories_seq`
--

LOCK TABLES `vtiger_ticketcategories_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcategories_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketcategories_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_ticketcategories_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcf`
--

DROP TABLE IF EXISTS `vtiger_ticketcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL default '0',
  `from_portal` varchar(3) default NULL,
  PRIMARY KEY  (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketcf`
--

LOCK TABLES `vtiger_ticketcf` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcf` DISABLE KEYS */;
INSERT INTO `vtiger_ticketcf` VALUES (11,'0');
/*!40000 ALTER TABLE `vtiger_ticketcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcomments`
--

DROP TABLE IF EXISTS `vtiger_ticketcomments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL auto_increment,
  `ticketid` int(19) default NULL,
  `comments` text,
  `ownerid` int(19) NOT NULL default '0',
  `ownertype` varchar(10) default NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY  (`commentid`),
  KEY `ticketcomments_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketcomments`
--

LOCK TABLES `vtiger_ticketcomments` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_ticketcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketpriorities`
--

DROP TABLE IF EXISTS `vtiger_ticketpriorities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL auto_increment,
  `ticketpriorities` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`ticketpriorities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketpriorities`
--

LOCK TABLES `vtiger_ticketpriorities` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketpriorities` DISABLE KEYS */;
INSERT INTO `vtiger_ticketpriorities` VALUES (1,'Low',1,182,0),(2,'Normal',1,183,1),(3,'High',1,184,2),(4,'Urgent',1,185,3);
/*!40000 ALTER TABLE `vtiger_ticketpriorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketpriorities_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketpriorities_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketpriorities_seq`
--

LOCK TABLES `vtiger_ticketpriorities_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketpriorities_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketpriorities_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_ticketpriorities_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketseverities`
--

DROP TABLE IF EXISTS `vtiger_ticketseverities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL auto_increment,
  `ticketseverities` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`ticketseverities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketseverities`
--

LOCK TABLES `vtiger_ticketseverities` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketseverities` DISABLE KEYS */;
INSERT INTO `vtiger_ticketseverities` VALUES (1,'Minor',1,186,0),(2,'Major',1,187,1),(3,'Feature',1,188,2),(4,'Critical',1,189,3);
/*!40000 ALTER TABLE `vtiger_ticketseverities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketseverities_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketseverities_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketseverities_seq`
--

LOCK TABLES `vtiger_ticketseverities_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketseverities_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketseverities_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_ticketseverities_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketstatus`
--

DROP TABLE IF EXISTS `vtiger_ticketstatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL auto_increment,
  `ticketstatus` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`ticketstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketstatus`
--

LOCK TABLES `vtiger_ticketstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketstatus` DISABLE KEYS */;
INSERT INTO `vtiger_ticketstatus` VALUES (1,'Open',0,190,0),(2,'In Progress',0,191,1),(3,'Wait For Response',0,192,2),(4,'Closed',0,193,3);
/*!40000 ALTER TABLE `vtiger_ticketstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketstatus_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ticketstatus_seq`
--

LOCK TABLES `vtiger_ticketstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketstatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_ticketstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_time_zone`
--

DROP TABLE IF EXISTS `vtiger_time_zone`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_time_zone` (
  `time_zoneid` int(19) NOT NULL auto_increment,
  `time_zone` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`time_zoneid`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_time_zone`
--

LOCK TABLES `vtiger_time_zone` WRITE;
/*!40000 ALTER TABLE `vtiger_time_zone` DISABLE KEYS */;
INSERT INTO `vtiger_time_zone` VALUES (1,'Pacific/Midway',0,1),(2,'Pacific/Samoa',1,1),(3,'Pacific/Honolulu',2,1),(4,'America/Anchorage',3,1),(5,'America/Los_Angeles',4,1),(6,'America/Tijuana',5,1),(7,'America/Denver',6,1),(8,'America/Chihuahua',7,1),(9,'America/Mazatlan',8,1),(10,'America/Phoenix',9,1),(11,'America/Regina',10,1),(12,'America/Tegucigalpa',11,1),(13,'America/Chicago',12,1),(14,'America/Mexico_City',13,1),(15,'America/Monterrey',14,1),(16,'America/New_York',15,1),(17,'America/Bogota',16,1),(18,'America/Lima',17,1),(19,'America/Rio_Branco',18,1),(20,'America/Indiana/Indianapolis',19,1),(21,'America/Caracas',20,1),(22,'America/Halifax',21,1),(23,'America/Manaus',22,1),(24,'America/Santiago',23,1),(25,'America/La_Paz',24,1),(26,'America/Cuiaba',25,1),(27,'America/Asuncion',26,1),(28,'America/St_Johns',27,1),(29,'America/Argentina/Buenos_Aires',28,1),(30,'America/Sao_Paulo',29,1),(31,'America/Godthab',30,1),(32,'America/Montevideo',31,1),(33,'Atlantic/South_Georgia',32,1),(34,'Atlantic/Azores',33,1),(35,'Atlantic/Cape_Verde',34,1),(36,'Europe/London',35,1),(37,'UTC',36,1),(38,'Africa/Monrovia',37,1),(39,'Africa/Casablanca',38,1),(40,'Europe/Belgrade',39,1),(41,'Europe/Sarajevo',40,1),(42,'Europe/Brussels',41,1),(43,'Africa/Algiers',42,1),(44,'Europe/Amsterdam',43,1),(45,'Europe/Minsk',44,1),(46,'Africa/Cairo',45,1),(47,'Europe/Helsinki',46,1),(48,'Europe/Athens',47,1),(49,'Europe/Istanbul',48,1),(50,'Asia/Jerusalem',49,1),(51,'Asia/Amman',50,1),(52,'Asia/Beirut',51,1),(53,'Africa/Windhoek',52,1),(54,'Africa/Harare',53,1),(55,'Asia/Kuwait',54,1),(56,'Asia/Baghdad',55,1),(57,'Africa/Nairobi',56,1),(58,'Asia/Tehran',57,1),(59,'Asia/Tbilisi',58,1),(60,'Europe/Moscow',59,1),(61,'Asia/Muscat',60,1),(62,'Asia/Baku',61,1),(63,'Asia/Yerevan',62,1),(64,'Asia/Karachi',63,1),(65,'Asia/Tashkent',64,1),(66,'Asia/Kolkata',65,1),(67,'Asia/Colombo',66,1),(68,'Asia/Katmandu',67,1),(69,'Asia/Dhaka',68,1),(70,'Asia/Almaty',69,1),(71,'Asia/Yekaterinburg',70,1),(72,'Asia/Rangoon',71,1),(73,'Asia/Novosibirsk',72,1),(74,'Asia/Bangkok',73,1),(75,'Asia/Brunei',74,1),(76,'Asia/Krasnoyarsk',75,1),(77,'Asia/Ulaanbaatar',76,1),(78,'Asia/Kuala_Lumpur',77,1),(79,'Asia/Taipei',78,1),(80,'Australia/Perth',79,1),(81,'Asia/Irkutsk',80,1),(82,'Asia/Seoul',81,1),(83,'Asia/Tokyo',82,1),(84,'Australia/Darwin',83,1),(85,'Australia/Adelaide',84,1),(86,'Australia/Canberra',85,1),(87,'Australia/Brisbane',86,1),(88,'Australia/Hobart',87,1),(89,'Asia/Vladivostok',88,1),(90,'Pacific/Guam',89,1),(91,'Asia/Yakutsk',90,1),(92,'Pacific/Fiji',91,1),(93,'Asia/Kamchatka',92,1),(94,'Pacific/Auckland',93,1),(95,'Asia/Magadan',94,1),(96,'Pacific/Tongatapu',95,1);
/*!40000 ALTER TABLE `vtiger_time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_time_zone_seq`
--

DROP TABLE IF EXISTS `vtiger_time_zone_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_time_zone_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_time_zone_seq`
--

LOCK TABLES `vtiger_time_zone_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_time_zone_seq` DISABLE KEYS */;
INSERT INTO `vtiger_time_zone_seq` VALUES (96);
/*!40000 ALTER TABLE `vtiger_time_zone_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_group_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_group_rel_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_read_group_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_group_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_group_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_group_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_read_group_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_group_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_user_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_user_rel_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_read_user_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_user_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_user_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_user_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_read_user_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_user_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_group_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_group_rel_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_write_group_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_group_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_group_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_group_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_write_group_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_group_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_user_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_user_rel_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_write_user_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_user_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_user_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_user_sharing_per`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tmp_write_user_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_user_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tracker`
--

DROP TABLE IF EXISTS `vtiger_tracker`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tracker` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) default NULL,
  `module_name` varchar(25) default NULL,
  `item_id` varchar(36) default NULL,
  `item_summary` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tracker`
--

LOCK TABLES `vtiger_tracker` WRITE;
/*!40000 ALTER TABLE `vtiger_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tracking_unit`
--

DROP TABLE IF EXISTS `vtiger_tracking_unit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL auto_increment,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  `sortorderid` int(11) default '0',
  PRIMARY KEY  (`tracking_unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tracking_unit`
--

LOCK TABLES `vtiger_tracking_unit` WRITE;
/*!40000 ALTER TABLE `vtiger_tracking_unit` DISABLE KEYS */;
INSERT INTO `vtiger_tracking_unit` VALUES (2,'Hours',1,211,2),(3,'Days',1,212,3),(4,'Incidents',1,213,4);
/*!40000 ALTER TABLE `vtiger_tracking_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tracking_unit_seq`
--

DROP TABLE IF EXISTS `vtiger_tracking_unit_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_tracking_unit_seq`
--

LOCK TABLES `vtiger_tracking_unit_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_tracking_unit_seq` DISABLE KEYS */;
INSERT INTO `vtiger_tracking_unit_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_tracking_unit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_troubletickets`
--

DROP TABLE IF EXISTS `vtiger_troubletickets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_troubletickets` (
  `ticketid` bigint(19) NOT NULL auto_increment,
  `ticket_no` varchar(20) NOT NULL,
  `groupname` bigint(20) default NULL,
  `parent_id` bigint(19) default NULL,
  `product_id` bigint(19) default NULL,
  `priority` tinyint(4) default NULL,
  `severity` tinyint(4) default NULL,
  `status` tinyint(4) default NULL,
  `category` int(11) default NULL,
  `title` varchar(50) NOT NULL,
  `solution` text,
  `update_log` text,
  `version_id` int(11) default NULL,
  `hours` decimal(25,8) default NULL,
  `days` decimal(25,8) default NULL,
  `contact_id` bigint(19) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`ticketid`),
  KEY `troubletickets_ticketid_idx` (`ticketid`),
  KEY `troubletickets_status_idx` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_troubletickets`
--

LOCK TABLES `vtiger_troubletickets` WRITE;
/*!40000 ALTER TABLE `vtiger_troubletickets` DISABLE KEYS */;
INSERT INTO `vtiger_troubletickets` VALUES (1,'',4,2,2,2,2,1,2,'测试','','',0,'0.00000000','0.00000000',0,NULL,NULL,2,'2020-03-17 20:54:49'),(2,'TKT19102500001',0,0,0,0,0,1,0,'','','',0,'0.00000000','0.00000000',0,2,'2019-10-25 09:28:47',2,'2019-10-25 09:28:47'),(3,'TKT19102500002',0,0,0,0,0,1,0,'','','',0,'0.00000000','0.00000000',0,2,'2019-10-25 09:31:56',2,'2019-10-25 09:31:56');
/*!40000 ALTER TABLE `vtiger_troubletickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_usageunit`
--

DROP TABLE IF EXISTS `vtiger_usageunit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL auto_increment,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  `sortorderid` int(11) default NULL,
  PRIMARY KEY  (`usageunitid`),
  UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_usageunit`
--

LOCK TABLES `vtiger_usageunit` WRITE;
/*!40000 ALTER TABLE `vtiger_usageunit` DISABLE KEYS */;
INSERT INTO `vtiger_usageunit` VALUES (1,'Box',1,194,0),(2,'Carton',1,195,1),(3,'Dozen',1,196,2),(4,'Each',1,197,3),(5,'Hours',1,198,4),(6,'Impressions',1,199,5),(7,'Lb',1,200,6),(8,'M',1,201,7),(9,'Pack',1,202,8),(10,'Pages',1,203,9),(11,'Pieces',1,204,10),(12,'Quantity',1,205,11),(13,'Reams',1,206,12),(14,'Sheet',1,207,13),(15,'Spiral Binder',1,208,14),(16,'Sq Ft',1,209,15);
/*!40000 ALTER TABLE `vtiger_usageunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_usageunit_seq`
--

DROP TABLE IF EXISTS `vtiger_usageunit_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_usageunit_seq`
--

LOCK TABLES `vtiger_usageunit_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_usageunit_seq` DISABLE KEYS */;
INSERT INTO `vtiger_usageunit_seq` VALUES (16);
/*!40000 ALTER TABLE `vtiger_usageunit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_user2mergefields`
--

DROP TABLE IF EXISTS `vtiger_user2mergefields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_user2mergefields` (
  `userid` int(11) default NULL,
  `tabid` int(19) default NULL,
  `fieldid` int(19) default NULL,
  `visible` int(2) default NULL,
  KEY `userid_tabid_idx` (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_user2mergefields`
--

LOCK TABLES `vtiger_user2mergefields` WRITE;
/*!40000 ALTER TABLE `vtiger_user2mergefields` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_user2mergefields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_user2role`
--

DROP TABLE IF EXISTS `vtiger_user2role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_user2role` (
  `idx` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `roleid` int(11) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`idx`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_user2role`
--

LOCK TABLES `vtiger_user2role` WRITE;
/*!40000 ALTER TABLE `vtiger_user2role` DISABLE KEYS */;
INSERT INTO `vtiger_user2role` VALUES (1,1,2,NULL,NULL,0,'2019-10-15 15:40:23'),(2,2,1,0,'2019-10-15 15:44:59',2,'2019-11-01 08:50:42'),(3,3,7,2,'2019-10-15 15:54:43',2,'2020-03-18 10:30:55');
/*!40000 ALTER TABLE `vtiger_user2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_user_module_preferences`
--

DROP TABLE IF EXISTS `vtiger_user_module_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_user_module_preferences`
--

LOCK TABLES `vtiger_user_module_preferences` WRITE;
/*!40000 ALTER TABLE `vtiger_user_module_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_user_module_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users`
--

DROP TABLE IF EXISTS `vtiger_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_users` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `user_password` varchar(200) default NULL,
  `user_hash` varchar(32) default NULL,
  `cal_color` varchar(25) default '#E6FAD8',
  `first_name` varchar(30) default NULL,
  `last_name` varchar(30) default NULL,
  `reports_to_id` varchar(36) default NULL,
  `is_admin` varchar(3) default '0',
  `currency_id` int(19) NOT NULL default '1',
  `description` text,
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `title` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `phone_home` varchar(50) default NULL,
  `phone_mobile` varchar(50) default NULL,
  `phone_work` varchar(50) default NULL,
  `phone_other` varchar(50) default NULL,
  `phone_fax` varchar(50) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `secondaryemail` varchar(100) default NULL,
  `status` tinyint(1) default NULL,
  `signature` text,
  `address_street` varchar(150) default NULL,
  `address_city` varchar(100) default NULL,
  `address_state` varchar(100) default NULL,
  `address_country` varchar(25) default NULL,
  `address_postalcode` varchar(9) default NULL,
  `user_preferences` text,
  `tz` varchar(30) default NULL,
  `holidays` varchar(60) default NULL,
  `namedays` varchar(60) default NULL,
  `workdays` varchar(30) default NULL,
  `weekstart` int(11) default NULL,
  `date_format` varchar(200) default NULL,
  `hour_format` varchar(30) default 'am/pm',
  `start_hour` varchar(30) default '10:00',
  `end_hour` varchar(30) default '23:00',
  `activity_view` varchar(200) default 'Today',
  `lead_view` varchar(200) default 'Today',
  `imagename` varchar(250) default NULL,
  `deleted` int(1) NOT NULL default '0',
  `confirm_password` varchar(300) default NULL,
  `internal_mailer` varchar(3) NOT NULL default '1',
  `reminder_interval` varchar(100) default NULL,
  `reminder_next_time` varchar(100) default NULL,
  `crypt_type` varchar(20) NOT NULL default 'MD5',
  `accesskey` varchar(36) default NULL,
  `theme` varchar(100) default NULL,
  `language` varchar(36) default NULL,
  `time_zone` varchar(200) default NULL,
  `currency_grouping_pattern` varchar(100) default NULL,
  `currency_decimal_separator` varchar(2) default NULL,
  `currency_grouping_separator` varchar(2) default NULL,
  `currency_symbol_placement` varchar(20) default NULL,
  `phone_crm_extension` varchar(100) default NULL,
  `no_of_currency_decimals` varchar(2) default NULL,
  `truncate_trailing_zeros` varchar(3) default NULL,
  `dayoftheweek` varchar(100) default NULL,
  `callduration` varchar(100) default NULL,
  `othereventduration` varchar(100) default NULL,
  `calendarsharedtype` varchar(100) default NULL,
  `default_record_view` varchar(10) default NULL,
  `leftpanelhide` varchar(3) default NULL,
  `rowheight` varchar(10) default NULL,
  `defaulteventstatus` varchar(50) default NULL,
  `defaultactivitytype` varchar(50) default NULL,
  `hidecompletedevents` int(11) default NULL,
  `is_owner` varchar(5) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_user_name_idx` (`user_name`),
  KEY `user_user_password_idx` (`user_password`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_users`
--

LOCK TABLES `vtiger_users` WRITE;
/*!40000 ALTER TABLE `vtiger_users` DISABLE KEYS */;
INSERT INTO `vtiger_users` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','d41d8cd98f00b204e9800998ecf8427e','#E6FAD8','','Administrator','','on',1,'','2020-03-18 02:27:41','2020-03-18 02:27:41','2','','','','','','','','s@3ucs.com','','',1,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','23:00','This Week','Today','',0,'$1$ad000000$nYTnfhTZRmUP.wQT9y1AE.','1','1 Minute',NULL,'PHP5.3MD5','kMlOluAkxJFC8jye','alphagrey','en_us','America/Los_Angeles','123,456,789','.',',','$1.0','','2','1','Sunday','5','5','public','Summary','0','medium',NULL,NULL,0,'1',NULL,NULL,2,'2020-03-18 10:15:25'),(2,'6176','e10adc3949ba59abbe56e057f20f883e',NULL,'#E6FAD8','大宝','李',NULL,'0',1,'','2020-03-18 02:44:16','2020-03-18 02:44:16','2','',NULL,'','','','','','','','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'am/pm','10:00','23:00','Today','Today',NULL,0,NULL,'1',NULL,NULL,'MD5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-03-17 20:57:27'),(3,'6178','e10adc3949ba59abbe56e057f20f883e',NULL,'#E6FAD8','铁军','王',NULL,'0',1,'','2020-03-18 02:42:48','2020-03-18 02:42:48','3','',NULL,'','','','','','','','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'am/pm','10:00','23:00','Today','Today',NULL,0,NULL,'1',NULL,NULL,'MD5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-03-17 20:57:32');
/*!40000 ALTER TABLE `vtiger_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users2group`
--

DROP TABLE IF EXISTS `vtiger_users2group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  PRIMARY KEY  (`groupid`,`userid`),
  KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_users2group`
--

LOCK TABLES `vtiger_users2group` WRITE;
/*!40000 ALTER TABLE `vtiger_users2group` DISABLE KEYS */;
INSERT INTO `vtiger_users2group` VALUES (3,1);
/*!40000 ALTER TABLE `vtiger_users2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users_last_import`
--

DROP TABLE IF EXISTS `vtiger_users_last_import`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_users_last_import` (
  `id` int(36) NOT NULL auto_increment,
  `assigned_user_id` varchar(36) default NULL,
  `bean_type` varchar(36) default NULL,
  `bean_id` varchar(36) default NULL,
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_users_last_import`
--

LOCK TABLES `vtiger_users_last_import` WRITE;
/*!40000 ALTER TABLE `vtiger_users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users_seq`
--

DROP TABLE IF EXISTS `vtiger_users_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_users_seq`
--

LOCK TABLES `vtiger_users_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_users_seq` DISABLE KEYS */;
INSERT INTO `vtiger_users_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_userscf`
--

DROP TABLE IF EXISTS `vtiger_userscf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_userscf` (
  `usersid` int(11) NOT NULL,
  PRIMARY KEY  (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_userscf`
--

LOCK TABLES `vtiger_userscf` WRITE;
/*!40000 ALTER TABLE `vtiger_userscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_userscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_vendor`
--

DROP TABLE IF EXISTS `vtiger_vendor`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_vendor` (
  `vendorid` int(19) NOT NULL auto_increment,
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `website` varchar(100) default NULL,
  `glacct` varchar(200) default NULL,
  `category` varchar(50) default NULL,
  `street` text,
  `city` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `pobox` varchar(30) default NULL,
  `postalcode` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `description` text,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`vendorid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_vendor`
--

LOCK TABLES `vtiger_vendor` WRITE;
/*!40000 ALTER TABLE `vtiger_vendor` DISABLE KEYS */;
INSERT INTO `vtiger_vendor` VALUES (1,'VDR00001','三优通信','02166039606','','','','','','','','','','','',2,'2020-02-15 16:55:50',2,'2020-03-18 10:11:04');
/*!40000 ALTER TABLE `vtiger_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_vendorcf`
--

DROP TABLE IF EXISTS `vtiger_vendorcf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_vendorcf`
--

LOCK TABLES `vtiger_vendorcf` WRITE;
/*!40000 ALTER TABLE `vtiger_vendorcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_vendorcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_vendorcontactrel`
--

DROP TABLE IF EXISTS `vtiger_vendorcontactrel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL default '0',
  `contactid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`vendorid`,`contactid`),
  KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  KEY `vendorcontactrel_contact_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_vendorcontactrel`
--

LOCK TABLES `vtiger_vendorcontactrel` WRITE;
/*!40000 ALTER TABLE `vtiger_vendorcontactrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_vendorcontactrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_version`
--

DROP TABLE IF EXISTS `vtiger_version`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_version` (
  `id` int(11) NOT NULL auto_increment,
  `old_version` varchar(30) default NULL,
  `current_version` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_version`
--

LOCK TABLES `vtiger_version` WRITE;
/*!40000 ALTER TABLE `vtiger_version` DISABLE KEYS */;
INSERT INTO `vtiger_version` VALUES (1,'6.1.0','6.1.0');
/*!40000 ALTER TABLE `vtiger_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_version_seq`
--

DROP TABLE IF EXISTS `vtiger_version_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_version_seq`
--

LOCK TABLES `vtiger_version_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_version_seq` DISABLE KEYS */;
INSERT INTO `vtiger_version_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_version_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_visibility`
--

DROP TABLE IF EXISTS `vtiger_visibility`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL auto_increment,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`visibilityid`),
  UNIQUE KEY `visibility_visibility_idx` (`visibility`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_visibility`
--

LOCK TABLES `vtiger_visibility` WRITE;
/*!40000 ALTER TABLE `vtiger_visibility` DISABLE KEYS */;
INSERT INTO `vtiger_visibility` VALUES (1,'Private',0,1),(2,'Public',1,1);
/*!40000 ALTER TABLE `vtiger_visibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_visibility_seq`
--

DROP TABLE IF EXISTS `vtiger_visibility_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_visibility_seq`
--

LOCK TABLES `vtiger_visibility_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_visibility_seq` DISABLE KEYS */;
INSERT INTO `vtiger_visibility_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_visibility_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_webforms`
--

DROP TABLE IF EXISTS `vtiger_webforms`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_webforms` (
  `id` int(19) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `publicid` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL default '1',
  `targetmodule` varchar(50) NOT NULL,
  `description` text,
  `ownerid` int(19) NOT NULL,
  `returnurl` varchar(250) default NULL,
  `captcha` int(1) NOT NULL default '0',
  `roundrobin` int(1) NOT NULL default '0',
  `roundrobin_userid` varchar(256) default NULL,
  `roundrobin_logic` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `webformname` (`name`),
  UNIQUE KEY `publicid` (`id`),
  KEY `webforms_webforms_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_webforms`
--

LOCK TABLES `vtiger_webforms` WRITE;
/*!40000 ALTER TABLE `vtiger_webforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_webforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_webforms_field`
--

DROP TABLE IF EXISTS `vtiger_webforms_field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_webforms_field` (
  `id` int(19) NOT NULL auto_increment,
  `webformid` int(19) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `neutralizedfield` varchar(50) NOT NULL,
  `defaultvalue` varchar(200) default NULL,
  `required` int(10) NOT NULL default '0',
  `sequence` int(10) default NULL,
  `hidden` int(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `webforms_webforms_field_idx` (`id`),
  KEY `fk_1_vtiger_webforms_field` (`webformid`),
  KEY `fk_2_vtiger_webforms_field` (`fieldname`),
  CONSTRAINT `fk_1_vtiger_webforms_field` FOREIGN KEY (`webformid`) REFERENCES `vtiger_webforms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_3_vtiger_webforms_field` FOREIGN KEY (`fieldname`) REFERENCES `vtiger_field` (`fieldname`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_webforms_field`
--

LOCK TABLES `vtiger_webforms_field` WRITE;
/*!40000 ALTER TABLE `vtiger_webforms_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_webforms_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wordtemplates`
--

DROP TABLE IF EXISTS `vtiger_wordtemplates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `parent_type` varchar(50) NOT NULL,
  `data` longblob,
  `description` text,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_wordtemplates`
--

LOCK TABLES `vtiger_wordtemplates` WRITE;
/*!40000 ALTER TABLE `vtiger_wordtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wordtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity`
--

DROP TABLE IF EXISTS `vtiger_ws_entity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity`
--

LOCK TABLES `vtiger_ws_entity` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity` VALUES (1,'Campaigns','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(2,'Vendors','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(3,'Faq','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(4,'Quotes','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(5,'PurchaseOrder','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(6,'SalesOrder','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(7,'Invoice','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(8,'PriceBooks','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(9,'Calendar','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(10,'Leads','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(11,'Accounts','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(12,'Contacts','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(13,'Potentials','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(14,'Products','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(15,'Documents','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(16,'Emails','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(17,'HelpDesk','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(18,'Events','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(19,'Users','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(20,'Groups','include/Webservices/VtigerActorOperation.php','VtigerActorOperation',0),(21,'Currency','include/Webservices/VtigerActorOperation.php','VtigerActorOperation',0),(22,'DocumentFolders','include/Webservices/VtigerActorOperation.php','VtigerActorOperation',0),(23,'CompanyDetails','include/Webservices/VtigerCompanyDetails.php','VtigerCompanyDetails',0),(24,'PBXManager','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(25,'ServiceContracts','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(26,'Services','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(27,'Assets','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(28,'ModComments','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(29,'ProjectMilestone','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(30,'ProjectTask','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(31,'Project','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(32,'SMSNotifier','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(33,'LineItem','include/Webservices/LineItem/VtigerLineItemOperation.php','VtigerLineItemOperation',0),(34,'Tax','include/Webservices/LineItem/VtigerTaxOperation.php','VtigerTaxOperation',0),(35,'ProductTaxes','include/Webservices/LineItem/VtigerProductTaxesOperation.php','VtigerProductTaxesOperation',0);
/*!40000 ALTER TABLE `vtiger_ws_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_fieldtype`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_fieldtype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL auto_increment,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`),
  UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype`
--

LOCK TABLES `vtiger_ws_entity_fieldtype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_fieldtype` VALUES (1,'vtiger_attachmentsfolder','createdby','reference'),(2,'vtiger_organizationdetails','logoname','file'),(3,'vtiger_organizationdetails','phone','phone'),(4,'vtiger_organizationdetails','fax','phone'),(5,'vtiger_organizationdetails','website','url'),(6,'vtiger_inventoryproductrel','productid','reference'),(7,'vtiger_inventoryproductrel','id','reference'),(8,'vtiger_inventoryproductrel','incrementondel','autogenerated'),(9,'vtiger_producttaxrel','productid','reference'),(10,'vtiger_producttaxrel','taxid','reference');
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_fieldtype_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_fieldtype_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype_seq`
--

LOCK TABLES `vtiger_ws_entity_fieldtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_fieldtype_seq` VALUES (10);
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_name`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity_name`
--

LOCK TABLES `vtiger_ws_entity_name` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_name` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_name` VALUES (20,'groupname','groupid','vtiger_groups'),(21,'currency_name','id','vtiger_currency_info'),(22,'foldername','folderid','vtiger_attachmentsfolder'),(23,'organizationname','groupid','vtiger_organizationdetails'),(34,'taxlabel','taxid','vtiger_inventorytaxinfo');
/*!40000 ALTER TABLE `vtiger_ws_entity_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_referencetype`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_referencetype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity_referencetype`
--

LOCK TABLES `vtiger_ws_entity_referencetype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_referencetype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_referencetype` VALUES (5,'Users'),(6,'Products'),(7,'Invoice'),(7,'PurchaseOrder'),(7,'Quotes'),(7,'SalesOrder'),(9,'Products'),(10,'Tax');
/*!40000 ALTER TABLE `vtiger_ws_entity_referencetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity_seq`
--

LOCK TABLES `vtiger_ws_entity_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_seq` VALUES (35);
/*!40000 ALTER TABLE `vtiger_ws_entity_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_tables`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_tables`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`webservice_entity_id`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_entity_tables`
--

LOCK TABLES `vtiger_ws_entity_tables` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_tables` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_tables` VALUES (20,'vtiger_groups'),(21,'vtiger_currency_info'),(22,'vtiger_attachmentsfolder'),(23,'vtiger_organizationdetails'),(33,'vtiger_inventoryproductrel'),(34,'vtiger_inventorytaxinfo'),(35,'vtiger_producttaxrel');
/*!40000 ALTER TABLE `vtiger_ws_entity_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_fieldinfo`
--

DROP TABLE IF EXISTS `vtiger_ws_fieldinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_fieldinfo` (
  `id` varchar(64) NOT NULL,
  `property_name` varchar(32) default NULL,
  `property_value` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_fieldinfo`
--

LOCK TABLES `vtiger_ws_fieldinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_fieldinfo` DISABLE KEYS */;
INSERT INTO `vtiger_ws_fieldinfo` VALUES ('vtiger_organizationdetails.organization_id','upload.path','1');
/*!40000 ALTER TABLE `vtiger_ws_fieldinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_fieldtype`
--

DROP TABLE IF EXISTS `vtiger_ws_fieldtype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL auto_increment,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`),
  UNIQUE KEY `uitype_idx` (`uitype`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_fieldtype`
--

LOCK TABLES `vtiger_ws_fieldtype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_fieldtype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_fieldtype` VALUES (1,'15','picklist'),(2,'16','picklist'),(3,'19','text'),(4,'20','text'),(5,'21','text'),(6,'24','text'),(7,'3','autogenerated'),(8,'11','phone'),(9,'33','multipicklist'),(10,'17','url'),(11,'85','skype'),(12,'56','boolean'),(13,'156','boolean'),(14,'53','owner'),(15,'61','file'),(16,'28','file'),(17,'13','email'),(18,'71','currency'),(19,'72','currency'),(20,'50','reference'),(21,'51','reference'),(22,'57','reference'),(23,'58','reference'),(24,'73','reference'),(25,'75','reference'),(26,'76','reference'),(27,'78','reference'),(28,'80','reference'),(29,'81','reference'),(30,'101','reference'),(31,'52','reference'),(32,'357','reference'),(33,'59','reference'),(34,'66','reference'),(35,'77','reference'),(36,'68','reference'),(37,'117','reference'),(38,'26','reference'),(39,'10','reference');
/*!40000 ALTER TABLE `vtiger_ws_fieldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_operation`
--

DROP TABLE IF EXISTS `vtiger_ws_operation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL,
  PRIMARY KEY  (`operationid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_operation`
--

LOCK TABLES `vtiger_ws_operation` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_operation` DISABLE KEYS */;
INSERT INTO `vtiger_ws_operation` VALUES (1,'login','include/Webservices/Login.php','vtws_login','POST',1),(2,'retrieve','include/Webservices/Retrieve.php','vtws_retrieve','GET',0),(3,'create','include/Webservices/Create.php','vtws_create','POST',0),(4,'update','include/Webservices/Update.php','vtws_update','POST',0),(5,'delete','include/Webservices/Delete.php','vtws_delete','POST',0),(6,'sync','include/Webservices/GetUpdates.php','vtws_sync','GET',0),(7,'query','include/Webservices/Query.php','vtws_query','GET',0),(8,'logout','include/Webservices/Logout.php','vtws_logout','POST',0),(9,'listtypes','include/Webservices/ModuleTypes.php','vtws_listtypes','GET',0),(10,'getchallenge','include/Webservices/AuthToken.php','vtws_getchallenge','GET',1),(11,'describe','include/Webservices/DescribeObject.php','vtws_describe','GET',0),(12,'extendsession','include/Webservices/ExtendSession.php','vtws_extendSession','POST',1),(13,'convertlead','include/Webservices/ConvertLead.php','vtws_convertlead','POST',0),(14,'revise','include/Webservices/Revise.php','vtws_revise','POST',0),(15,'changePassword','include/Webservices/ChangePassword.php','vtws_changePassword','POST',0),(16,'deleteUser','include/Webservices/DeleteUser.php','vtws_deleteUser','POST',0),(17,'mobile.fetchallalerts','modules/Mobile/api/wsapi.php','mobile_ws_fetchAllAlerts','POST',0),(18,'mobile.alertdetailswithmessage','modules/Mobile/api/wsapi.php','mobile_ws_alertDetailsWithMessage','POST',0),(19,'mobile.fetchmodulefilters','modules/Mobile/api/wsapi.php','mobile_ws_fetchModuleFilters','POST',0),(20,'mobile.fetchrecord','modules/Mobile/api/wsapi.php','mobile_ws_fetchRecord','POST',0),(21,'mobile.fetchrecordwithgrouping','modules/Mobile/api/wsapi.php','mobile_ws_fetchRecordWithGrouping','POST',0),(22,'mobile.filterdetailswithcount','modules/Mobile/api/wsapi.php','mobile_ws_filterDetailsWithCount','POST',0),(23,'mobile.listmodulerecords','modules/Mobile/api/wsapi.php','mobile_ws_listModuleRecords','POST',0),(24,'mobile.saverecord','modules/Mobile/api/wsapi.php','mobile_ws_saveRecord','POST',0),(25,'mobile.syncModuleRecords','modules/Mobile/api/wsapi.php','mobile_ws_syncModuleRecords','POST',0),(26,'mobile.query','modules/Mobile/api/wsapi.php','mobile_ws_query','POST',0),(27,'mobile.querywithgrouping','modules/Mobile/api/wsapi.php','mobile_ws_queryWithGrouping','POST',0),(28,'wsapp_register','modules/WSAPP/api/ws/Register.php','wsapp_register','POST',0),(29,'wsapp_deregister','modules/WSAPP/api/ws/DeRegister.php','wsapp_deregister','POST',0),(30,'wsapp_get','modules/WSAPP/api/ws/Get.php','wsapp_get','POST',0),(31,'wsapp_put','modules/WSAPP/api/ws/Put.php','wsapp_put','POST',0),(32,'wsapp_map','modules/WSAPP/api/ws/Map.php','wsapp_map','POST',0),(33,'retrieve_inventory','include/Webservices/LineItem/RetrieveInventory.php','vtws_retrieve_inventory','GET',0);
/*!40000 ALTER TABLE `vtiger_ws_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_operation_parameters`
--

DROP TABLE IF EXISTS `vtiger_ws_operation_parameters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY  (`operationid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_operation_parameters`
--

LOCK TABLES `vtiger_ws_operation_parameters` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_operation_parameters` DISABLE KEYS */;
INSERT INTO `vtiger_ws_operation_parameters` VALUES (1,'accessKey','String',2),(1,'username','String',1),(2,'id','String',1),(3,'element','encoded',2),(3,'elementType','String',1),(4,'element','encoded',1),(5,'id','String',1),(6,'elementType','String',2),(6,'modifiedTime','DateTime',1),(7,'query','String',1),(8,'sessionName','String',1),(9,'fieldTypeList','encoded',1),(10,'username','String',1),(11,'elementType','String',1),(13,'accountName','String',3),(13,'assignedTo','String',2),(13,'avoidPotential','Boolean',4),(13,'leadId','String',1),(13,'potential','Encoded',5),(14,'element','Encoded',1),(15,'confirmPassword','String',4),(15,'id','String',1),(15,'newPassword','String',3),(15,'oldPassword','String',2),(16,'id','String',1),(16,'newOwnerId','String',2),(18,'alertid','string',1),(19,'module','string',1),(20,'record','string',1),(21,'record','string',1),(22,'filterid','string',1),(23,'elements','encoded',1),(24,'module','string',1),(24,'record','string',2),(24,'values','encoded',3),(25,'module','string',1),(25,'page','string',3),(25,'syncToken','string',2),(26,'module','string',1),(26,'page','string',3),(26,'query','string',2),(27,'module','string',1),(27,'page','string',3),(27,'query','string',2),(28,'synctype','string',2),(28,'type','string',1),(29,'key','string',2),(29,'type','string',1),(30,'key','string',1),(30,'module','string',2),(30,'token','string',3),(31,'element','encoded',2),(31,'key','string',1),(32,'element','encoded',2),(32,'key','string',1),(33,'id','String',1);
/*!40000 ALTER TABLE `vtiger_ws_operation_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_operation_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_operation_seq`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_operation_seq`
--

LOCK TABLES `vtiger_ws_operation_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_operation_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ws_operation_seq` VALUES (33);
/*!40000 ALTER TABLE `vtiger_ws_operation_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_referencetype`
--

DROP TABLE IF EXISTS `vtiger_ws_referencetype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_referencetype`
--

LOCK TABLES `vtiger_ws_referencetype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_referencetype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_referencetype` VALUES (20,'Accounts'),(21,'Accounts'),(22,'Contacts'),(23,'Campaigns'),(24,'Accounts'),(25,'Vendors'),(26,'Potentials'),(27,'Quotes'),(28,'SalesOrder'),(29,'Vendors'),(30,'Users'),(31,'Campaigns'),(31,'Users'),(32,'Accounts'),(32,'Contacts'),(32,'Leads'),(32,'Users'),(32,'Vendors'),(33,'Products'),(34,'Accounts'),(34,'Campaigns'),(34,'HelpDesk'),(34,'Leads'),(34,'Potentials'),(35,'Users'),(36,'Accounts'),(36,'Contacts'),(37,'Currency'),(38,'DocumentFolders');
/*!40000 ALTER TABLE `vtiger_ws_referencetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_userauthtoken`
--

DROP TABLE IF EXISTS `vtiger_ws_userauthtoken`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL,
  PRIMARY KEY  (`userid`,`expiretime`),
  UNIQUE KEY `userid_idx` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_ws_userauthtoken`
--

LOCK TABLES `vtiger_ws_userauthtoken` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_userauthtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_ws_userauthtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp`
--

DROP TABLE IF EXISTS `vtiger_wsapp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_wsapp` (
  `appid` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `appkey` varchar(255) default NULL,
  `type` varchar(100) default NULL,
  PRIMARY KEY  (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_wsapp`
--

LOCK TABLES `vtiger_wsapp` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp` DISABLE KEYS */;
INSERT INTO `vtiger_wsapp` VALUES (1,'vtigerCRM','54b4891994461','user');
/*!40000 ALTER TABLE `vtiger_wsapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_handlerdetails`
--

DROP TABLE IF EXISTS `vtiger_wsapp_handlerdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_wsapp_handlerdetails` (
  `type` varchar(200) NOT NULL,
  `handlerclass` varchar(100) default NULL,
  `handlerpath` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_wsapp_handlerdetails`
--

LOCK TABLES `vtiger_wsapp_handlerdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_handlerdetails` DISABLE KEYS */;
INSERT INTO `vtiger_wsapp_handlerdetails` VALUES ('Outlook','OutlookHandler','modules/WSAPP/Handlers/OutlookHandler.php'),('vtigerCRM','vtigerCRMHandler','modules/WSAPP/Handlers/vtigerCRMHandler.php'),('vtigerSyncLib','WSAPP_VtigerSyncEventHandler','modules/WSAPP/synclib/handlers/VtigerSyncEventHandler.php');
/*!40000 ALTER TABLE `vtiger_wsapp_handlerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_queuerecords`
--

DROP TABLE IF EXISTS `vtiger_wsapp_queuerecords`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_wsapp_queuerecords` (
  `syncserverid` int(19) default NULL,
  `details` varchar(300) default NULL,
  `flag` varchar(100) default NULL,
  `appid` int(19) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_wsapp_queuerecords`
--

LOCK TABLES `vtiger_wsapp_queuerecords` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_queuerecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wsapp_queuerecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_recordmapping`
--

DROP TABLE IF EXISTS `vtiger_wsapp_recordmapping`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_wsapp_recordmapping` (
  `id` int(19) NOT NULL auto_increment,
  `serverid` varchar(10) default NULL,
  `clientid` varchar(255) default NULL,
  `clientmodifiedtime` datetime default NULL,
  `appid` int(11) default NULL,
  `servermodifiedtime` datetime default NULL,
  `serverappid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_wsapp_recordmapping`
--

LOCK TABLES `vtiger_wsapp_recordmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_recordmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wsapp_recordmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_sync_state`
--

DROP TABLE IF EXISTS `vtiger_wsapp_sync_state`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vtiger_wsapp_sync_state` (
  `id` int(19) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `stateencodedvalues` varchar(300) NOT NULL,
  `userid` int(19) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vtiger_wsapp_sync_state`
--

LOCK TABLES `vtiger_wsapp_sync_state` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_sync_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wsapp_sync_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xdoc_code`
--

DROP TABLE IF EXISTS `xdoc_code`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `xdoc_code` (
  `idx` int(10) NOT NULL auto_increment,
  `docType` varchar(30) NOT NULL,
  `docName` varchar(30) NOT NULL,
  `Code_Prefix` varchar(10) NOT NULL,
  `Code_Sample` varchar(50) default NULL,
  `DT_MODE` tinyint(4) default NULL,
  `SEQ_Len` tinyint(4) default NULL,
  `Code_Sequence` int(11) NOT NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`idx`),
  KEY `ix_tablecode` (`docType`,`Code_Prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `xdoc_code`
--

LOCK TABLES `xdoc_code` WRITE;
/*!40000 ALTER TABLE `xdoc_code` DISABLE KEYS */;
INSERT INTO `xdoc_code` VALUES (1,'prj','prj','PRJ','prj19010100001',6,5,0,0,'2019-10-15 09:32:01',2,'2020-03-17 20:55:48'),(2,'account','account','ACC','ACC00001',0,5,0,2,'2019-10-22 15:51:34',2,'2019-10-22 15:51:34'),(3,'contact','contact','CTA','CTA00001',0,5,0,2,'2019-10-22 16:11:18',2,'2019-10-22 16:11:18'),(4,'lead','lead','LEA','LEA19010100001',6,5,0,2,'2019-10-22 16:19:02',2,'2019-10-25 10:33:20'),(5,'asset','asset','AST','AST00001',0,0,0,2,'2019-10-22 16:40:59',2,'2019-10-22 16:40:59'),(6,'campaign','campaign','CAM','CAM19010100001',6,5,0,2,'2019-10-22 18:08:24',2,'2019-10-22 18:24:27'),(7,'potential','potential','POT','POT19010100001',6,5,0,2,'2019-10-22 18:24:16',2,'2019-10-22 18:24:16'),(8,'quote','quote','QOT','QOT19010100001',6,5,0,2,'2019-10-22 18:34:00',2,'2019-10-22 18:34:00'),(9,'po','purchase order','PO','PO19010100001',6,5,0,2,'2019-10-22 18:43:41',2,'2019-10-22 18:47:12'),(10,'invoice','invoice','IVO','IVO19010100001',6,5,0,2,'2019-10-24 17:02:39',2,'2019-10-24 17:02:39'),(11,'so','sales order','SO','SO19010100001',6,5,0,2,'2019-10-24 17:03:27',2,'2019-10-24 17:03:27'),(12,'svo','service order','SVO','SVO19010100001',6,5,0,2,'2019-10-24 17:04:42',2,'2019-10-24 17:04:42'),(13,'contract','contract order','CTR','CTR19010100001',6,5,0,2,'2019-10-24 17:06:26',2,'2019-10-25 09:19:50'),(14,'tkt','Ticket','TKT','TKT19010100001',6,5,0,2,'2019-10-24 17:07:14',2,'2019-10-24 17:07:14'),(15,'prd','Product','PRD','PRD00001',0,5,0,2,'2019-10-24 17:08:08',2,'2019-10-24 17:08:35'),(16,'vendor','Vendor','VDR','VDR00001',0,5,0,2,'2020-02-15 16:53:40',2,'2020-03-18 10:14:35');
/*!40000 ALTER TABLE `xdoc_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vtigercrm6'
--
DELIMITER ;;
/*!50003 DROP FUNCTION IF EXISTS `createprojectwithtpl` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `createprojectwithtpl`(prjtplid int,prjname varchar(50),reftbl VARCHAR(50),refid BIGINT,userid BIGINT) RETURNS int(11)
BEGIN
set @prid=NULL;
if prjtplid>0 and prjname!='' then
SET @seq=0;SELECT SUBSTR(project_no,-5)+0 INTO @seq FROM vtigercrm6.vtiger_project WHERE DATE(creation_date)=CURDATE() ORDER BY project_no DESC LIMIT 0,1;
SELECT generate_orderNo(Code_Prefix, DT_MODE, @seq,'','') INTO @odn FROM vtigercrm6.xdoc_code WHERE docType='prj';
set @accid=NULL;
if reftbl='salesorder_item' then
select accountid into @accid from vtiger_salesorder so join vtiger_salesorder_item soi on so.salesorderid=soi.salesorderid where salesorder_itemid=refid;
end if;
INSERT INTO vtigercrm6.vtiger_project (projectname,project_no,refertbl,referid,projectdays,projecthours,projecturl,projectpriority,projecttype,projectstatus,responsible,linktoaccountscontacts,description,created_by,creation_date) 
SELECT prjname,@odn,reftbl,refid,projectdays,projecthours,projecturl,projectpriority,projecttype,2,responsible,@accid,description,userid,now() FROM vtiger_project_tpl WHERE projecttplid=prjtplid;
SELECT LAST_INSERT_ID() INTO @prid;
INSERT INTO vtiger_projectmilestone (projectid,project_ms_idx,projectmilestonename,projectmilestonetype,responsible,created_by,creation_date) 
SELECT @prid,project_ms_idx,projecttplmilestonename,projectmilestonetype,IF(m.responsible,m.responsible,p.responsible),userid,NOW() FROM vtiger_project_tpl_milestone m JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE m.projecttplid=prjtplid;
INSERT INTO vtiger_projecttask (projectid,project_ms_idx,projecttaskname,projecttasktype,projecttaskpriority,projecttaskstatus,attachedfile,responsible,description,created_by,creation_date) 
SELECT @prid,m.project_ms_idx,projecttpltaskname,projecttasktype,projecttaskpriority,2,attachedfile,IF(t.responsible,t.responsible,IF(m.responsible,m.responsible,p.responsible)),t.description,userid,NOW() FROM vtiger_project_tpl_task t JOIN vtiger_project_tpl_milestone m ON (t.projecttplid=m.projecttplid AND t.project_ms_idx=m.project_ms_idx) JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE t.projecttplid=prjtplid;
end if;
return @prid;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `generate_orderNo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `generate_orderNo`(orderNamePre VARCHAR(5), num INT,maxNo INT,orderTbl VARCHAR(20),orderNo VARCHAR(20)) RETURNS varchar(50) CHARSET utf8
BEGIN
      DECLARE currentDate VARCHAR (15) ;-- 当前日期,有可能包含时分秒     
      #DECLARE maxNo INT DEFAULT 0 ; -- 离现在最近的满足条件的订单编号的流水号最后5位，如：SH2013011000002的maxNo=2     
        --  DECLARE l_orderNo varCHAR (25) ;-- 新生成的订单编号     
        --  DECLARE oldDate DATE ;-- 离现在最近的满足条件的订单编号的日期     
      DECLARE oldOrderNo VARCHAR (25) DEFAULT '' ;-- 离现在最近的满足条件的订单编号     
          
      IF num = 6 THEN -- 根据年月日生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%y%m%d') INTO currentDate ;-- 订单编号形式:前缀+年月日+流水号，如：SH13011000002     
      ELSEIF num = 8 THEN -- 根据年月日时分秒生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d') INTO currentDate ;-- 订单编号形式:前缀+年月日+流水号，如：SH2013011000002     
      ELSEIF num = 14 THEN -- 根据年月日时分秒生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i%s') INTO currentDate ; -- 订单编号形式：前缀+年月日时分秒+流水号，如：SH2013011010050700001,个人不推荐使用这种方法生成流水号     
      ELSE -- 根据年月日时分生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i') INTO currentDate ;-- 订单形式：前缀+年月日时分+流水号,如：SH20130110100900005     
      END IF ;    
	
	/*SET @tsql = CONCAT('SELECT IFNULL(',orderNo,', \'\') INTO oldOrderNo FROM ',orderTbl,'WHERE SUBSTRING(',orderNo,', 3, ',num,') = currentDate     
            AND SUBSTRING(',orderNo,', 1, 2) = ',orderNamePre,' and length(',orderNo,') = 7 + ',num,' ORDER BY ',orderNo,' DESC LIMIT 1;');
	 PREPARE ins FROM @tsql;
	 EXECUTE ins;
	 DEALLOCATE PREPARE ins; */         
        /*SELECT IFNULL(orderNo, '') INTO oldOrderNo     
          FROM orderTbl     
          WHERE SUBSTRING(orderNo, 3, num) = currentDate     
            AND SUBSTRING(orderNo, 1, 2) = orderNamePre     
            and length(orderNo) = 7 + num    
          ORDER BY id DESC LIMIT 1 ; -- 有多条时只显示离现在最近的一条     
              
          IF oldOrderNo != '' THEN     
            SET maxNo = CONVERT(SUBSTRING(oldOrderNo, -5), DECIMAL) ;-- SUBSTRING(oldOrderNo, -5)：订单编号如果不为‘‘截取订单的最后5位     
          END IF ;    */
          SELECT     
            CONCAT(orderNamePre, currentDate,  LPAD((maxNo + 1), 5, '0')) INTO @newOrderNo ; -- LPAD((maxNo + 1), 5, '0')：如果不足5位，将用0填充左边     
              
          #INSERT INTO test_orders (orderNo, orderName) VALUES (newOrderNo, 'testNo') ; -- 向订单表中插入数据    
        --    set newOrderNo = l_orderNo;     
         RETURN  @newOrderNo ;    
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `createprjwithtpl` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 PROCEDURE `createprjwithtpl`(prjtplid INT,prjname VARCHAR(50),userid BIGINT)
BEGIN
select createprojectwithtpl(prjtplid,prjname,userid);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
DELIMITER ;

--
-- Current Database: `vtigercrm6`
--

USE `vtigercrm6`;

--
-- Final view structure for view `contacts_v`
--

/*!50001 DROP TABLE `contacts_v`*/;
/*!50001 DROP VIEW IF EXISTS `contacts_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contacts_v` AS (select concat(`v`.`lastname`,`v`.`firstname`) AS `fullname`,`v`.`lastname` AS `lastname`,`v`.`firstname` AS `firstname`,`v0`.`salutationtype` AS `salutation`,`v1`.`accountname` AS `accountname`,`v`.`department` AS `department`,`v`.`contact_no` AS `contact_no`,`v`.`title` AS `title`,concat(`v2`.`lastname`,`v2`.`firstname`) AS `reportsto`,`v`.`phone` AS `phone`,`v`.`mobile` AS `mobile`,`v`.`fax` AS `fax`,`v`.`email` AS `email`,`v`.`otheremail` AS `otheremail`,`v`.`secondaryemail` AS `secondaryemail`,`v`.`training` AS `training`,`v`.`usertype` AS `usertype`,`v`.`contacttype` AS `contacttype`,`v`.`imagename` AS `imagename`,`v`.`donotcall` AS `donotcall`,`v`.`emailoptout` AS `emailoptout`,`v`.`reference` AS `reference`,`v`.`notify_owner` AS `notify_owner`,`v`.`isconvertedfromlead` AS `isconvertedfromlead`,`v`.`reportsto` AS `reportstoid`,`v`.`accountid` AS `accountid`,`v`.`contactid` AS `contactid` from (((`vtiger_contactdetails` `v` left join `vtiger_salutationtype` `v0` on((`v`.`salutation` = `v0`.`salutationid`))) left join `vtiger_account` `v1` on((`v`.`accountid` = `v1`.`accountid`))) left join `vtiger_contactdetails` `v2` on((`v`.`reportsto` = `v2`.`contactid`))) order by `v`.`contactid`) */;

--
-- Final view structure for view `prj_ms_task_v`
--

/*!50001 DROP TABLE `prj_ms_task_v`*/;
/*!50001 DROP VIEW IF EXISTS `prj_ms_task_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prj_ms_task_v` AS (select `v`.`projecttaskname` AS `projecttaskname`,`v`.`contact` AS `contact`,`v`.`telphone` AS `telphone`,`v0`.`projecttasktype` AS `projecttasktype`,date_format(`v`.`schedule_date`,_utf8'%Y-%m-%d') AS `schedule_date`,`vpm`.`projectmilestonename` AS `projectmilestonename`,min(`vpm`.`projectmilestonedate`) AS `projectmilestonedate`,`u`.`fullname` AS `responsible`,`v1`.`projecttaskpriority` AS `projecttaskpriority`,`v2`.`projecttaskstatus` AS `projecttaskstatus`,`v`.`projecttaskprogress` AS `projecttaskprogress`,`v`.`projecttaskhours` AS `projecttaskhours`,`v`.`startdate` AS `startdate`,`v`.`enddate` AS `enddate`,`v`.`address` AS `address`,`v`.`description` AS `description`,`v3`.`user_name` AS `created_by`,`v`.`creation_date` AS `creation_date`,`v4`.`user_name` AS `last_update_by`,`v`.`last_update_date` AS `last_update_date`,`v`.`projectid` AS `projectid`,`v`.`projecttaskid` AS `projecttaskid`,`vpm`.`projectmilestoneid` AS `projectmilestoneid`,`v`.`project_ms_idx` AS `project_ms_idx`,`vpm`.`reviewed` AS `reviewed`,`v`.`addrlng` AS `addrlng`,`v`.`addrlat` AS `addrlat`,`v2`.`projecttaskstatusid` AS `projecttaskstatusid` from (((((((`vtiger_projecttask` `v` left join `vtiger_projecttasktype` `v0` on((`v`.`projecttasktype` = `v0`.`projecttasktypeid`))) left join `users_v` `u` on((`v`.`responsible` = `u`.`id`))) left join `vtiger_projecttaskpriority` `v1` on((`v`.`projecttaskpriority` = `v1`.`projecttaskpriorityid`))) left join `vtiger_projecttaskstatus` `v2` on((`v`.`projecttaskstatus` = `v2`.`projecttaskstatusid`))) left join `vtiger_users` `v3` on((`v`.`created_by` = `v3`.`id`))) left join `vtiger_users` `v4` on((`v`.`last_update_by` = `v4`.`id`))) left join `vtiger_projectmilestone` `vpm` on(((`v`.`projectid` = `vpm`.`projectid`) and ((isnull(`v`.`project_ms_idx`) and (`vpm`.`projectmilestonedate` >= `v`.`schedule_date`)) or (`v`.`project_ms_idx` = `vpm`.`project_ms_idx`))))) group by `v`.`projecttaskid`) */;

--
-- Final view structure for view `prj_mstone_task_v`
--

/*!50001 DROP TABLE `prj_mstone_task_v`*/;
/*!50001 DROP VIEW IF EXISTS `prj_mstone_task_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prj_mstone_task_v` AS (select `v`.`projecttaskname` AS `projecttaskname`,`v`.`contact` AS `contact`,`v`.`telphone` AS `telphone`,date_format(`v`.`schedule_date`,_utf8'%Y-%m-%d') AS `schedule_date`,min(`vpm`.`projectmilestonedate`) AS `projectmilestonedate`,`u`.`fullname` AS `responsible`,`v0`.`projecttaskstatus` AS `projecttaskstatus`,`v`.`startdate` AS `startdate`,`v`.`enddate` AS `enddate`,`v`.`address` AS `address`,`v`.`description` AS `description`,`v1`.`user_name` AS `created_by`,`v`.`creation_date` AS `creation_date`,`v2`.`user_name` AS `last_update_by`,`v`.`last_update_date` AS `last_update_date`,`v`.`projectid` AS `projectid`,`v`.`projecttaskid` AS `projecttaskid`,`vpm`.`projectmilestoneid` AS `projectmilestoneid`,`vpm`.`reviewed` AS `reviewed`,`v`.`addrlng` AS `addrlng`,`v`.`addrlat` AS `addrlat`,`v0`.`projecttaskstatusid` AS `projecttaskstatusid` from (((((`vtiger_projecttask` `v` left join `users_v` `u` on((`v`.`responsible` = `u`.`id`))) left join `vtiger_projecttaskstatus` `v0` on((`v`.`projecttaskstatus` = `v0`.`projecttaskstatusid`))) left join `vtiger_users` `v1` on((`v`.`created_by` = `v1`.`id`))) left join `vtiger_users` `v2` on((`v`.`last_update_by` = `v2`.`id`))) left join `vtiger_projectmilestone` `vpm` on(((`v`.`projectid` = `vpm`.`projectid`) and (`vpm`.`projectmilestonedate` >= `v`.`schedule_date`)))) group by `v`.`projecttaskid`) */;

--
-- Final view structure for view `prj_task_detail`
--

/*!50001 DROP TABLE `prj_task_detail`*/;
/*!50001 DROP VIEW IF EXISTS `prj_task_detail`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prj_task_detail` AS (select `v`.`projecttaskname` AS `projecttaskname`,`a`.`subject` AS `subject`,`a`.`filename` AS `filename`,`a`.`invokes` AS `invokes`,`a`.`description` AS `description`,`a`.`typeStr` AS `typestr`,`vu`.`user_name` AS `created_by`,`a`.`creation_date` AS `creation_date`,`v0`.`projecttasktype` AS `projecttasktype`,`v1`.`user_name` AS `responsible`,`v2`.`projecttaskpriority` AS `projecttaskpriority`,`v3`.`projecttaskstatus` AS `projecttaskstatus`,`v`.`schedule_date` AS `schedule_date`,`v`.`projecttaskhours` AS `projecttaskhours`,`v`.`startdate` AS `startdate`,`v`.`projecttaskprogress` AS `projecttaskprogress`,`v`.`enddate` AS `enddate`,`a`.`location` AS `location`,`v`.`description` AS `taskdesc`,`cv`.`fullname` AS `contact`,`cv`.`mobile` AS `mobile`,`cv`.`phone` AS `phone`,`v`.`address` AS `address`,`p`.`project_no` AS `project_no`,`p`.`projectname` AS `projectname`,`ps`.`projectstatus` AS `projectstatus`,`pp`.`projectpriority` AS `projectpriority`,`a`.`path` AS `path`,`a`.`attachment` AS `attachment`,`a`.`reftbl` AS `reftbl`,`a`.`refid` AS `refid`,`a`.`type` AS `type`,`vu0`.`user_name` AS `last_update_by`,`a`.`last_update_date` AS `last_update_date`,`v3`.`projecttaskstatusid` AS `projecttaskstatusid`,`v2`.`projecttaskpriorityid` AS `projecttaskpriorityid`,`ps`.`projectstatusid` AS `projectstatusid`,`pp`.`projectpriorityid` AS `projectpriorityid`,`a`.`attachment_id` AS `attachment_id`,`v`.`projecttaskid` AS `projecttaskid`,`v`.`projectid` AS `projectid` from (((((((((((`vtiger_projecttask` `v` join `vtiger_project` `p` on((`p`.`projectid` = `v`.`projectid`))) left join `contacts_v` `cv` on((`cv`.`contactid` = `v`.`linkcontact`))) left join `attachment` `a` on(((`a`.`reftbl` = _utf8'vtiger_projecttask') and (`a`.`refid` = `v`.`projecttaskid`)))) left join `vtiger_users` `vu` on((`a`.`created_by` = `vu`.`id`))) left join `vtiger_users` `vu0` on((`a`.`last_update_by` = `vu0`.`id`))) left join `vtiger_projecttasktype` `v0` on((`v`.`projecttasktype` = `v0`.`projecttasktypeid`))) left join `vtiger_users` `v1` on((`v`.`responsible` = `v1`.`id`))) left join `vtiger_projecttaskpriority` `v2` on((`v`.`projecttaskpriority` = `v2`.`projecttaskpriorityid`))) left join `vtiger_projecttaskstatus` `v3` on((`v`.`projecttaskstatus` = `v3`.`projecttaskstatusid`))) left join `vtiger_projectpriority` `pp` on((`p`.`projectpriority` = `pp`.`projectpriorityid`))) left join `vtiger_projectstatus` `ps` on((`ps`.`projectstatusid` = `p`.`projectstatus`)))) */;

--
-- Final view structure for view `prj_task_v`
--

/*!50001 DROP TABLE `prj_task_v`*/;
/*!50001 DROP VIEW IF EXISTS `prj_task_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prj_task_v` AS (select `v`.`projecttaskname` AS `projecttaskname`,`v`.`contact` AS `contact`,`v`.`telphone` AS `telphone`,date_format(`v`.`schedule_date`,_utf8'%Y-%m-%d') AS `schedule_date`,max(`vpm`.`projectmilestonedate`) AS `projectmilestonedate`,`u`.`fullname` AS `responsible`,`v0`.`projecttaskstatus` AS `projecttaskstatus`,`v`.`startdate` AS `startdate`,`v`.`enddate` AS `enddate`,`v`.`address` AS `address`,`v`.`description` AS `description`,`v1`.`user_name` AS `created_by`,`v`.`creation_date` AS `creation_date`,`v2`.`user_name` AS `last_update_by`,`v`.`last_update_date` AS `last_update_date`,`v`.`projectid` AS `projectid`,`v`.`projecttaskid` AS `projecttaskid`,`vpm`.`projectmilestoneid` AS `projectmilestoneid`,`vpm`.`reviewed` AS `reviewed`,`v`.`addrlng` AS `addrlng`,`v`.`addrlat` AS `addrlat`,`v0`.`projecttaskstatusid` AS `projecttaskstatusid` from (((((`vtiger_projecttask` `v` left join `users_v` `u` on((`v`.`responsible` = `u`.`id`))) left join `vtiger_projecttaskstatus` `v0` on((`v`.`projecttaskstatus` = `v0`.`projecttaskstatusid`))) left join `vtiger_users` `v1` on((`v`.`created_by` = `v1`.`id`))) left join `vtiger_users` `v2` on((`v`.`last_update_by` = `v2`.`id`))) left join `vtiger_projectmilestone` `vpm` on(((`v`.`projectid` = `vpm`.`projectid`) and (not(`vpm`.`reviewed`)) and ((isnull(`v`.`project_ms_idx`) and (`vpm`.`projectmilestonedate` < `v`.`schedule_date`)) or (`v`.`project_ms_idx` > `vpm`.`project_ms_idx`))))) group by `v`.`projecttaskid`) */;

--
-- Final view structure for view `users_v`
--

/*!50001 DROP TABLE `users_v`*/;
/*!50001 DROP VIEW IF EXISTS `users_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_v` AS (select `v`.`user_name` AS `user_name`,`v`.`user_password` AS `user_password`,concat(`v`.`last_name`,`v`.`first_name`) AS `fullname`,`r`.`rolename` AS `rolename`,`r`.`rolelayout` AS `rolelayout`,`v`.`first_name` AS `first_name`,`v`.`last_name` AS `last_name`,`v`.`title` AS `title`,`v`.`phone_home` AS `phone_home`,`v`.`phone_mobile` AS `phone_mobile`,`v`.`phone_work` AS `phone_work`,`v`.`phone_other` AS `phone_other`,`v`.`phone_fax` AS `phone_fax`,`v`.`email1` AS `email1`,`v`.`email2` AS `email2`,`v`.`secondaryemail` AS `secondaryemail`,`v`.`description` AS `description`,`v`.`status` AS `status`,`v`.`id` AS `id`,`v`.`is_admin` AS `is_admin`,`v`.`date_entered` AS `date_entered`,`v`.`date_modified` AS `date_modified`,`v0`.`user_name` AS `modified_user_id`,`v`.`is_owner` AS `is_owner` from (((`vtiger_users` `v` left join `vtiger_users` `v0` on((`v`.`modified_user_id` = `v0`.`id`))) left join `vtiger_user2role` `ur` on((`v`.`id` = `ur`.`idx`))) left join `vtiger_role` `r` on((`ur`.`roleid` = `r`.`roleidx`)))) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21  5:59:14
