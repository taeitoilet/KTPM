-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_data
-- ------------------------------------------------------
-- Server version	5.7.44-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_date` datetime NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone_number` varchar(20) NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblblog`
--

DROP TABLE IF EXISTS `tblblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblblog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_content` varchar(500) DEFAULT NULL,
  `blog_author` varchar(50) DEFAULT NULL,
  `blog_img` varchar(255) DEFAULT NULL,
  `blog_create_date` datetime DEFAULT NULL,
  `blog_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblblog`
--

LOCK TABLES `tblblog` WRITE;
/*!40000 ALTER TABLE `tblblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldeposit`
--

DROP TABLE IF EXISTS `tbldeposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldeposit` (
  `deposit_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `deposit_category_id` int(11) NOT NULL,
  `deposit_amount` int(11) NOT NULL,
  `deposit_start` date NOT NULL,
  `deposit_end` date DEFAULT NULL,
  `deposit_notes` varchar(500) DEFAULT NULL,
  `deposit_status` varchar(20) DEFAULT NULL,
  `deposit_create_date` datetime DEFAULT NULL,
  `deposit_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`deposit_id`),
  KEY `user_id` (`user_id`),
  KEY `deposit_category_id` (`deposit_category_id`),
  CONSTRAINT `tbldeposit_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`),
  CONSTRAINT `tbldeposit_ibfk_2` FOREIGN KEY (`deposit_category_id`) REFERENCES `tbldepositcategory` (`deposit_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldeposit`
--

LOCK TABLES `tbldeposit` WRITE;
/*!40000 ALTER TABLE `tbldeposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldeposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldepositcategory`
--

DROP TABLE IF EXISTS `tbldepositcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldepositcategory` (
  `deposit_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit_category_name` varchar(255) NOT NULL,
  `deposit_rate` decimal(5,2) NOT NULL,
  `deposit_category_created_date` datetime DEFAULT NULL,
  `deposit_category_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`deposit_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldepositcategory`
--

LOCK TABLES `tbldepositcategory` WRITE;
/*!40000 ALTER TABLE `tbldepositcategory` DISABLE KEYS */;
INSERT INTO `tbldepositcategory` VALUES (1,'Thang',0.50,NULL,NULL),(2,'Quy',1.70,NULL,NULL),(3,'1 Nam',5.00,NULL,NULL),(4,'3 Nam',17.30,NULL,NULL),(5,'10 Nam',65.20,NULL,NULL);
/*!40000 ALTER TABLE `tbldepositcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfeedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_content` varchar(255) DEFAULT NULL,
  `feedback_author` varchar(255) DEFAULT NULL,
  `feedback_author_avatar` varchar(255) DEFAULT NULL,
  `feedback_create_date` datetime DEFAULT NULL,
  `feedback_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblloan`
--

DROP TABLE IF EXISTS `tblloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblloan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `loan_category_id` int(11) NOT NULL,
  `loan_amount` decimal(15,2) NOT NULL,
  `loan_start` date NOT NULL,
  `loan_end` date DEFAULT NULL,
  `loan_notes` varchar(255) DEFAULT NULL,
  `loan_status` varchar(20) DEFAULT NULL,
  `loan_create_date` datetime DEFAULT NULL,
  `loan_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  UNIQUE KEY `loan_id` (`loan_id`),
  KEY `loan_category_id` (`loan_category_id`),
  KEY `tblloan_ibfk_1` (`user_id`),
  CONSTRAINT `tblloan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`),
  CONSTRAINT `tblloan_ibfk_2` FOREIGN KEY (`loan_category_id`) REFERENCES `tblloancategory` (`loan_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblloan`
--

LOCK TABLES `tblloan` WRITE;
/*!40000 ALTER TABLE `tblloan` DISABLE KEYS */;
INSERT INTO `tblloan` VALUES (1,2,2,1300000000.00,'2024-03-01',NULL,NULL,NULL,'2024-10-28 00:00:00','2024-10-28 00:00:00'),(7,4,2,1500000000.00,'2024-03-01',NULL,NULL,NULL,'2024-10-28 00:00:00',NULL);
/*!40000 ALTER TABLE `tblloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblloancategory`
--

DROP TABLE IF EXISTS `tblloancategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblloancategory` (
  `loan_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_category_name` varchar(255) NOT NULL,
  `loan_type` varchar(50) DEFAULT NULL,
  `loan_rate` decimal(5,2) NOT NULL,
  `loan_category_created_date` datetime DEFAULT NULL,
  `loan_category_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`loan_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblloancategory`
--

LOCK TABLES `tblloancategory` WRITE;
/*!40000 ALTER TABLE `tblloancategory` DISABLE KEYS */;
INSERT INTO `tblloancategory` VALUES (2,'Thang','',0.60,NULL,NULL),(3,'Quy',NULL,1.60,NULL,NULL),(4,'1 Nam',NULL,5.20,NULL,NULL),(5,'5 Nam',NULL,23.00,NULL,NULL),(6,'10 Nam',NULL,44.00,NULL,NULL);
/*!40000 ALTER TABLE `tblloancategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnews`
--

DROP TABLE IF EXISTS `tblnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_content` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_create_date` datetime DEFAULT NULL,
  `news_modified_date` datetime DEFAULT NULL,
  `news_creater` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnews`
--

LOCK TABLES `tblnews` WRITE;
/*!40000 ALTER TABLE `tblnews` DISABLE KEYS */;
INSERT INTO `tblnews` VALUES (4,'Ưu đãi dành cho cá nhân','Ưu đãi dành cho cá nhân','luffy',NULL,'2024-10-28 00:00:00','2024-11-24 00:00:00',NULL),(5,'Gửi tiết kiệm tích lũy là gì và khác gì so với tiết kiệm thường?','Gửi tiết kiệm tích lũy là giải pháp tiết kiệm có kỳ hạn, cho phép bạn chủ động gửi thêm tiền vào tài khoản tiết kiệm bất cứ lúc nào, giúp tăng lợi nhuận và đạt mục tiêu tài chính dễ dàng.','Quy12',NULL,'2024-10-28 00:00:00',NULL,NULL),(6,'4 cách tiết kiệm tiền giúp bạn sống thoải mái với mọi mức thu nhập','Việc hiểu cách tiết kiệm tiền giúp bạn xây dựng nền tài chính ổn định, vững vàng hơn trong tương lai. Tìm hiểu 4 phương pháp tiết kiệm hiệu quả sau đây.','Quy12',NULL,'2024-10-28 00:00:00',NULL,NULL),(7,'4 cách tiết kiệm tiền giúp bạn sống thoải mái với mọi mức thu nhập','Giải pháp Tiền gửi Tích lũy Như Ý của Techcombank với nhiều ưu điểm vượt trội sẽ là người bạn đồng hành lý tưởng của cha mẹ trên hành trình tiết kiệm cho con.','Quy12',NULL,'2024-10-28 00:00:00',NULL,NULL),(8,'Đọc ngay 8 thông tin quan trọng nhất về Tiền gửi không kỳ hạn','Số tiền nằm trong tài khoản thanh toán chính là tiền gửi không kỳ hạn, thường được sử dụng cho các mục đích như: Thanh toán hoá đơn, rút tiền, chuyển tiền…','Quy12',NULL,'2024-10-28 00:00:00',NULL,NULL),(9,'3D Secure là gì? 5 thông tin cần biết về 3D Secure','Khám phá vai trò và cách 3D Seucre bảo vệ giao dịch trực tuyến qua thẻ thanh toán và thẻ tín dụng của bạn. Tìm hiểu thêm ứng dụng của 3D Secure tại Techcombank.','Zoro','','2024-11-02 00:00:00',NULL,NULL),(19,'a','a','a','','2024-11-24 00:00:00',NULL,NULL),(20,'a','a','a','','2024-11-24 00:00:00',NULL,NULL),(21,'a','a','a','','2024-11-24 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `tblnews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpermission`
--

DROP TABLE IF EXISTS `tblpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpermission` (
  `permission_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_creater` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`permission_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpermission`
--

LOCK TABLES `tblpermission` WRITE;
/*!40000 ALTER TABLE `tblpermission` DISABLE KEYS */;
INSERT INTO `tblpermission` VALUES ('approve_post',NULL,NULL),('create_data',NULL,NULL),('delete_data',NULL,NULL),('get_data',NULL,NULL),('post_data',NULL,NULL),('update_data',NULL,NULL);
/*!40000 ALTER TABLE `tblpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrole` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `role_creater` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
INSERT INTO `tblrole` VALUES (1,'Admin',NULL),(2,'User',NULL);
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole_permissions`
--

DROP TABLE IF EXISTS `tblrole_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrole_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`permission_name`),
  KEY `permission_name` (`permission_name`),
  CONSTRAINT `tblrole_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tblrole` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `tblrole_permissions_ibfk_2` FOREIGN KEY (`permission_name`) REFERENCES `tblpermission` (`permission_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole_permissions`
--

LOCK TABLES `tblrole_permissions` WRITE;
/*!40000 ALTER TABLE `tblrole_permissions` DISABLE KEYS */;
INSERT INTO `tblrole_permissions` VALUES (1,'approve_post'),(1,'create_data'),(1,'delete_data'),(1,'get_data'),(2,'get_data'),(1,'post_data'),(2,'post_data'),(1,'update_data');
/*!40000 ALTER TABLE `tblrole_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransaction`
--

DROP TABLE IF EXISTS `tbltransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltransaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_type` varchar(30) DEFAULT NULL,
  `transaction_notes` varchar(500) DEFAULT NULL,
  `transaction_amount` decimal(10,0) NOT NULL DEFAULT '0',
  `transaction_create_date` datetime DEFAULT NULL,
  `transaction_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbltransaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransaction`
--

LOCK TABLES `tbltransaction` WRITE;
/*!40000 ALTER TABLE `tbltransaction` DISABLE KEYS */;
INSERT INTO `tbltransaction` VALUES (1,1,'giao dich','none',10000,'2024-11-30 09:51:32','2024-11-02 20:36:14'),(2,2,'rut tien',NULL,350000,'2024-10-30 09:51:46','2024-10-30 09:53:02'),(3,1,'nap tien',NULL,50000,'2024-10-30 09:51:51',NULL),(4,1,'nap tien',NULL,150000,'2024-10-20 09:51:53',NULL),(5,1,'giao dich',NULL,150000,'2024-10-21 09:52:06',NULL),(6,1,'giao dich',NULL,150000,'2024-10-22 09:52:08',NULL),(7,2,'giao dich',NULL,150000,'2024-10-30 09:52:12',NULL),(8,2,'giao dich',NULL,150000,'2024-10-30 09:52:13',NULL),(9,2,'giao dich',NULL,150000,'2024-10-30 09:52:14',NULL),(11,1,'rut tien',NULL,350000,'2024-10-30 09:52:31',NULL),(12,1,'rut tien',NULL,350000,'2024-10-30 09:52:32',NULL),(13,2,'giao dich',NULL,100,'2024-10-30 23:19:03',NULL);
/*!40000 ALTER TABLE `tbltransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_fullname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_citizen_identification` varchar(255) DEFAULT NULL,
  `user_dob` datetime(6) DEFAULT NULL,
  `user_money` decimal(15,2) DEFAULT '0.00',
  `user_creater` varchar(50) DEFAULT NULL,
  `user_created_date` date DEFAULT NULL,
  `user_modified_date` date DEFAULT NULL,
  `user_is_deleted` tinyint(4) DEFAULT '0',
  `user_status` varchar(45) DEFAULT 'unactived' COMMENT 'user status : (actived , unactived)',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_phone` (`user_phone`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_citizen_identification_UNIQUE` (`user_citizen_identification`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tblrole` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,1,'admin','$2a$10$qFVjD2ZJ.jNHCWDGmkCa3.VNemDUWmOrmV9agFqYxb9e8A9yCluqC',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'2024-11-21',1,'actived'),(2,2,'taeitoilet','$2a$10$xj/pQ5lxjXO846j1EhLRHezS0Hz2I5H6acFmiKurGhuJkWZsxmC06',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'2024-11-25',1,'deleted'),(4,2,'quy1234','$2a$10$Dm5YaIcwmqOQbj1qRWANG.LY2krlRc0gwlHSpxGC.jNIVPcpb.Rme',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'2024-11-21',0,'actived'),(6,2,'quang1234','$2a$10$4aHn7Py9wgxdu5mFrhFpdOlq.yaKFPGRfmSeEd8P.jr2sA4DSsx2O',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'2024-11-21',0,'actived'),(7,2,'quy345','$2a$10$ktHOZVYvBcDNggjB1CU/p.4DjrIK0.uGCfX8My1VYYATQ0XBcXO7e',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'2024-10-30','2024-11-21',0,'actived'),(11,2,'quy3451','$2a$10$HiyHPkN3e/KQ/kLvBfNsluOeCBo7gtSDqBXnkxqgSk/2Mib8te0TO',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'2024-10-30','2024-11-21',0,'deleted'),(12,2,'quy34251','$2a$10$cMPNfBVoBQO2vWDmiYctq.ChgTREtV.cqo.P2.gD.madhYWAPWEuq',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'2024-10-30','2024-11-21',0,'actived'),(13,2,'quy342521','$2a$10$6z/218mfINZ3YdMhSzlfkuZFPJDK9HnmE.UQ2hzMWqoWJ3JHqYlkK',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'2024-10-30','2024-11-21',0,'actived'),(14,2,'qu','$2a$10$t/3wgpd5qMbXLHqRlxJEZuIaE375tthuuJq5acwx1m2uP0x.hTa2e',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'2024-10-30','2024-11-21',0,'deleted'),(15,1,'admin1','$2a$10$/sS3fSmeBeiHlq3fJw4jf.eoPnf69rHW1oSowIfP.0eg.nZYn2JK6','admin','admin@gmail.com','0378932201','Hải Phòng','031203012119','2011-11-11 07:00:00.000000',0.00,NULL,'2024-11-02','2024-11-28',1,'deleted'),(16,2,'admin132','$2a$10$ot.W3VqNeQLXLT2SK2STL.YoTCMghx2ugH8EsMsRI2h00dRII4HeG','Le Minh Quy',NULL,'0312313221',NULL,'112233441661',NULL,0.00,NULL,'2024-11-20',NULL,0,'actived'),(17,1,'admin2','$2a$10$EGLeI0Kr/Hc0tuZEgL/iyuUxE3Vg/5IBSayl7W6qnUs0b/VxkZSnq','Le Minh Quy',NULL,'0312313111',NULL,'111233442661',NULL,0.00,NULL,'2024-11-20',NULL,0,'actived'),(18,1,'admin213','$2a$10$7fZX1vPOHgTv18uHDiV6TuA8K5HvlAwjU4t.4Frcsk1bqw1MkHiR2','Le Minh Quy',NULL,'0312313213',NULL,'121233442663',NULL,0.00,NULL,'2024-11-21',NULL,0,'actived'),(19,2,'quy12345','$2a$10$h8Ug0wVyrpA5kSOn0YtNwesGF7cRMGdMsres6XT5Sin26jxyCTQOe','Le Minh Quy',NULL,NULL,NULL,NULL,NULL,0.00,NULL,'2024-11-23',NULL,0,'actived'),(20,1,'titi','$2a$10$vBYjZZ2rTqAeTvNv1nj5vOH8PiJNd6akxHssm./wuuPmG20T1trsC','Le Minh Quy','taeitoilet@gmail.com','0378932206','Hai phong','031203012121','2003-08-26 07:00:00.000000',0.00,NULL,'2024-11-25',NULL,0,'actived'),(21,1,'quy123456','$2a$10$sbkR8YmU6vxbdxuEnD5B.OwXF0cEsHlZB2/The5BTvyz.HqJdQ2vS','Le Minh Quy',NULL,NULL,NULL,NULL,NULL,0.00,'admin','2024-11-28',NULL,0,'deleted'),(22,1,'quydaden','$2a$10$yJWy8uH6vvntVN9nJtaqNuBZrTw8dwp8orz36sa1dZ7MRZqEeA8sy','Lê Minh Quý','abc@gmail.com','0378932208','Hải Phòng','031203012111','2003-08-26 07:00:00.000000',0.00,'admin','2024-11-28',NULL,0,'unactived'),(23,1,'abc','$2a$10$oaNtb2QwbPgzQ.vxhDFEcutSSjHgAyOZV8rdlgGr1UhuFzSZgAwLi','abcd','abc@gmail.com','0312345678','Hải Phòng','031203012110','2011-11-11 07:00:00.000000',0.00,'admin','2024-11-28','2024-11-29',0,'unactived'),(24,1,'quyvjppro','$2a$10$o/0mzgRT2theWCRa/2IwL.wraB9em7rce9AWS32OfH86huSMTAZuW','abc','abc@gmail.com','0378032207','haiphong','012345678101','2011-11-11 07:00:00.000000',0.00,'admin','2024-11-28',NULL,0,'deleted'),(25,2,'admin32','$2a$10$v6TJm401SRHNrTzdYmatHOdjG8D1YQFW.OXxG0oJ5xWAkPdOaXejS','abc','abc@gmail.com','0381231233','ajsdhas','037891023931','2003-11-11 07:00:00.000000',0.00,'admin','2024-11-29',NULL,0,'unactived');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 21:59:55
