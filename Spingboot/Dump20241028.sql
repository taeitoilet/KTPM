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
  CONSTRAINT `tblloan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`),
  CONSTRAINT `tblloan_ibfk_2` FOREIGN KEY (`loan_category_id`) REFERENCES `tblloancategory` (`loan_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblloan`
--

LOCK TABLES `tblloan` WRITE;
/*!40000 ALTER TABLE `tblloan` DISABLE KEYS */;
INSERT INTO `tblloan` VALUES (1,2,2,3000000000.00,'2024-09-01',NULL,NULL,NULL,'2024-10-28 00:00:00',NULL);
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
  `news_title` varchar(255) DEFAULT NULL,
  `news_content` varchar(255) DEFAULT NULL,
  `news_author` varchar(255) DEFAULT NULL,
  `news_img` varchar(255) DEFAULT NULL,
  `new_create_date` datetime DEFAULT NULL,
  `new_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnews`
--

LOCK TABLES `tblnews` WRITE;
/*!40000 ALTER TABLE `tblnews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnews` ENABLE KEYS */;
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
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
INSERT INTO `tblrole` VALUES (1,'Admin'),(2,'Customer'),(3,'Company'),(4,'Investors');
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
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
  `transaction_type` varchar(30) NOT NULL,
  `transaction_amount` decimal(10,0) NOT NULL,
  `transaction_notes` varchar(500) DEFAULT NULL,
  `transaction_create_date` datetime DEFAULT NULL,
  `transaction_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbltransaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransaction`
--

LOCK TABLES `tbltransaction` WRITE;
/*!40000 ALTER TABLE `tbltransaction` DISABLE KEYS */;
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
  `role_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_fullname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_citizen_identification` varchar(255) DEFAULT NULL,
  `user_dob` datetime(6) DEFAULT NULL,
  `user_money` varchar(255) DEFAULT NULL,
  `user_created_date` date DEFAULT NULL,
  `user_modified_date` date DEFAULT NULL,
  `user_is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_phone` (`user_phone`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_citizen_identification` (`user_citizen_identification`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tblrole` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,1,'admin','admin','LeMinhQuy',NULL,'0378932206','HaiPhong','0131230123',NULL,'0.00000',NULL,NULL,0),(2,2,'taeitoilet','123456','Quy',NULL,'0365387694','Ha Noi','0123412313',NULL,'0.00000',NULL,NULL,0),(4,2,'quy1234','1234567','Quy2003',NULL,'0378932202',NULL,'123456789',NULL,NULL,NULL,NULL,0),(6,2,'quang1234','1234560','Nguyen Minh Qunag',NULL,'1234456',NULL,'1234456',NULL,NULL,NULL,NULL,0);
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

-- Dump completed on 2024-10-28 21:52:32
