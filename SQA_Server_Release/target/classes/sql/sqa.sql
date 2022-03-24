-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: sqa_test
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd4vb66o896tay3yy52oqxr9w0` (`role_id`),
  CONSTRAINT `FKd4vb66o896tay3yy52oqxr9w0` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'$2a$10$hC3GC0LBTt7PTDWQHeHbqOORRl9dlovlAVDfgipFuOCsS7GTU5M0K','Admin',1),(2,'$2a$10$hC3GC0LBTt7PTDWQHeHbqOORRl9dlovlAVDfgipFuOCsS7GTU5M0K','Teacher1',3),(3,'$2a$10$hC3GC0LBTt7PTDWQHeHbqOORRl9dlovlAVDfgipFuOCsS7GTU5M0K','Teacher2',3),(4,'$2a$10$hC3GC0LBTt7PTDWQHeHbqOORRl9dlovlAVDfgipFuOCsS7GTU5M0K','Teacher3',3);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `district` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'A','A','A','A'),(2,'B','B','B','B'),(3,'C','C','C','C'),(4,'D','D','D','D'),(5,'E','E','E','E'),(6,'F','F','F','F');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `member_id` bigint NOT NULL,
  PRIMARY KEY (`member_id`),
  CONSTRAINT `FKqe770yjl5gjfgesmdn6xj44sn` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigned_subject`
--

DROP TABLE IF EXISTS `assigned_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number_of_group` int NOT NULL,
  `teacher_member_id` bigint NOT NULL,
  `term_subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6s68g9md5xcqcxin45uiy1d2m` (`teacher_member_id`),
  KEY `FK51uwcsxoqqji3usdni0nbh1td` (`term_subject_id`),
  CONSTRAINT `FK51uwcsxoqqji3usdni0nbh1td` FOREIGN KEY (`term_subject_id`) REFERENCES `term_subject` (`id`),
  CONSTRAINT `FK6s68g9md5xcqcxin45uiy1d2m` FOREIGN KEY (`teacher_member_id`) REFERENCES `teacher` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_subject`
--

LOCK TABLES `assigned_subject` WRITE;
/*!40000 ALTER TABLE `assigned_subject` DISABLE KEYS */;
INSERT INTO `assigned_subject` VALUES (1,1,2,1),(2,1,2,2),(3,1,2,3),(4,1,3,4),(5,1,3,5),(6,1,3,1),(7,1,4,2),(8,1,4,3),(9,1,4,4);
/*!40000 ALTER TABLE `assigned_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'A1'),(2,'A2');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'A'),(2,'B'),(3,'C');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullname`
--

DROP TABLE IF EXISTS `fullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullname` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullname`
--

LOCK TABLES `fullname` WRITE;
/*!40000 ALTER TABLE `fullname` DISABLE KEYS */;
INSERT INTO `fullname` VALUES (1,'Nguyễn','A','Văn'),(2,'Nguyễn','B','Thị'),(3,'Lê','C',''),(4,'Nguyễn','D','Văn'),(5,'Trần','E','Duy'),(6,'Trần','F','Văn');
/*!40000 ALTER TABLE `fullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_info`
--

DROP TABLE IF EXISTS `group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `shift_id` bigint NOT NULL,
  `subject_group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpkip39rf6kcdyh3u2vl0q1phw` (`room_id`),
  KEY `FK8e7gp17j1n2kafsgmu9i9w85g` (`shift_id`),
  KEY `FKk7psw29at3eidhuv9s48t1u0v` (`subject_group_id`),
  CONSTRAINT `FK8e7gp17j1n2kafsgmu9i9w85g` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`),
  CONSTRAINT `FKk7psw29at3eidhuv9s48t1u0v` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_group` (`id`),
  CONSTRAINT `FKpkip39rf6kcdyh3u2vl0q1phw` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_info`
--

LOCK TABLES `group_info` WRITE;
/*!40000 ALTER TABLE `group_info` DISABLE KEYS */;
INSERT INTO `group_info` VALUES (19,4,1,1),(20,4,2,1),(21,5,1,2),(22,5,2,2),(23,1,1,3),(24,1,2,3),(25,3,1,4),(26,3,2,4),(27,6,3,5),(28,6,4,5),(29,2,3,6),(30,2,4,6),(31,3,4,7),(32,3,5,7),(33,7,4,8),(34,7,5,8),(35,8,4,9),(36,8,5,9);
/*!40000 ALTER TABLE `group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_week`
--

DROP TABLE IF EXISTS `learning_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_week` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_desist` bit(1) NOT NULL,
  `group_info_id` bigint NOT NULL,
  `term_week_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf6uqg6eyqneb9exg7miwjvhg5` (`group_info_id`),
  KEY `FKqnx5w0dbdnc341n4rpb0e2vnx` (`term_week_id`),
  CONSTRAINT `FKf6uqg6eyqneb9exg7miwjvhg5` FOREIGN KEY (`group_info_id`) REFERENCES `group_info` (`id`),
  CONSTRAINT `FKqnx5w0dbdnc341n4rpb0e2vnx` FOREIGN KEY (`term_week_id`) REFERENCES `term_week` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_week`
--

LOCK TABLES `learning_week` WRITE;
/*!40000 ALTER TABLE `learning_week` DISABLE KEYS */;
INSERT INTO `learning_week` VALUES (1,_binary '\0',19,1),(2,_binary '\0',19,2),(3,_binary '\0',19,3),(4,_binary '\0',19,4),(5,_binary '\0',19,5),(6,_binary '\0',19,6),(7,_binary '\0',19,7),(8,_binary '\0',19,8),(9,_binary '\0',19,9),(10,_binary '\0',19,10),(11,_binary '\0',19,11),(12,_binary '\0',19,12),(13,_binary '\0',19,13),(14,_binary '\0',19,14),(15,_binary '\0',19,15),(16,_binary '\0',19,16),(17,_binary '\0',19,17),(18,_binary '\0',19,18),(19,_binary '\0',19,19),(20,_binary '\0',19,20),(21,_binary '\0',19,21),(22,_binary '\0',19,22),(23,_binary '\0',19,23),(24,_binary '\0',20,15),(25,_binary '\0',20,16),(26,_binary '\0',20,17),(27,_binary '\0',20,18),(28,_binary '\0',20,19),(29,_binary '\0',20,20),(30,_binary '\0',20,21),(31,_binary '\0',20,22),(32,_binary '\0',20,23),(33,_binary '\0',21,1),(34,_binary '\0',21,2),(35,_binary '\0',21,3),(36,_binary '\0',21,4),(37,_binary '\0',21,5),(38,_binary '\0',21,6),(39,_binary '\0',21,7),(40,_binary '\0',21,8),(41,_binary '\0',21,9),(42,_binary '\0',21,10),(43,_binary '\0',21,11),(44,_binary '\0',21,12),(45,_binary '\0',21,13),(46,_binary '\0',21,14),(47,_binary '\0',21,15),(48,_binary '\0',21,16),(49,_binary '\0',21,17),(50,_binary '\0',21,18),(51,_binary '\0',21,19),(52,_binary '\0',21,21),(53,_binary '\0',21,22),(54,_binary '\0',21,23),(56,_binary '\0',22,15),(57,_binary '\0',22,16),(58,_binary '\0',22,17),(59,_binary '\0',22,18),(60,_binary '\0',22,19),(61,_binary '\0',22,20),(62,_binary '\0',22,21),(63,_binary '\0',22,22),(64,_binary '\0',22,23),(65,_binary '\0',23,1),(66,_binary '\0',23,2),(67,_binary '\0',23,3),(68,_binary '\0',23,4),(69,_binary '\0',23,5),(70,_binary '\0',23,6),(71,_binary '\0',23,7),(72,_binary '\0',23,8),(73,_binary '\0',23,9),(74,_binary '\0',23,10),(75,_binary '\0',23,11),(76,_binary '\0',23,12),(77,_binary '\0',23,13),(78,_binary '\0',23,14),(79,_binary '\0',23,15),(80,_binary '\0',23,16),(81,_binary '\0',23,17),(82,_binary '\0',23,18),(83,_binary '\0',23,19),(84,_binary '\0',23,20),(85,_binary '\0',23,21),(86,_binary '\0',23,22),(87,_binary '\0',23,23),(97,_binary '\0',24,15),(98,_binary '\0',24,16),(99,_binary '\0',24,17),(100,_binary '\0',24,18),(101,_binary '\0',24,19),(102,_binary '\0',24,20),(103,_binary '\0',24,21),(104,_binary '\0',24,22),(105,_binary '\0',24,23),(106,_binary '\0',25,1),(107,_binary '\0',25,2),(108,_binary '\0',25,3),(109,_binary '\0',25,4),(110,_binary '\0',25,5),(111,_binary '\0',25,6),(112,_binary '\0',25,7),(113,_binary '\0',25,8),(114,_binary '\0',25,9),(115,_binary '\0',25,10),(116,_binary '\0',25,11),(117,_binary '\0',25,12),(118,_binary '\0',25,13),(119,_binary '\0',25,14),(120,_binary '\0',25,15),(121,_binary '\0',25,16),(122,_binary '\0',25,17),(123,_binary '\0',25,18),(124,_binary '\0',25,19),(125,_binary '\0',25,20),(126,_binary '\0',25,21),(127,_binary '\0',25,22),(128,_binary '\0',25,23),(129,_binary '\0',27,1),(130,_binary '\0',27,2),(131,_binary '\0',27,3),(132,_binary '\0',27,4),(133,_binary '\0',27,5),(134,_binary '\0',27,6),(135,_binary '\0',27,7),(136,_binary '\0',27,8),(137,_binary '\0',27,9),(138,_binary '\0',27,10),(139,_binary '\0',27,11),(140,_binary '\0',27,12),(141,_binary '\0',27,13),(142,_binary '\0',27,14),(143,_binary '\0',27,15),(144,_binary '\0',27,16),(145,_binary '\0',27,17),(146,_binary '\0',27,18),(147,_binary '\0',27,19),(148,_binary '\0',27,20),(149,_binary '\0',27,21),(150,_binary '\0',27,22),(151,_binary '\0',27,23),(152,_binary '\0',29,1),(153,_binary '\0',29,2),(154,_binary '\0',29,3),(155,_binary '\0',29,4),(156,_binary '\0',29,5),(157,_binary '\0',29,6),(158,_binary '\0',29,7),(159,_binary '\0',29,8),(160,_binary '\0',29,9),(161,_binary '\0',29,10),(162,_binary '\0',29,11),(163,_binary '\0',29,12),(164,_binary '\0',29,13),(165,_binary '\0',29,14),(166,_binary '\0',29,15),(167,_binary '\0',29,16),(168,_binary '\0',29,17),(169,_binary '\0',29,18),(170,_binary '\0',29,19),(171,_binary '\0',29,20),(172,_binary '\0',29,21),(173,_binary '\0',29,22),(174,_binary '\0',29,23),(175,_binary '\0',29,1),(176,_binary '\0',29,2),(177,_binary '\0',29,3),(178,_binary '\0',29,4),(179,_binary '\0',29,5),(180,_binary '\0',29,6),(181,_binary '\0',29,7),(182,_binary '\0',29,8),(183,_binary '\0',29,9),(184,_binary '\0',29,10),(185,_binary '\0',29,11),(186,_binary '\0',29,12),(187,_binary '\0',29,13),(188,_binary '\0',29,14),(189,_binary '\0',29,15),(190,_binary '\0',29,16),(191,_binary '\0',29,17),(192,_binary '\0',29,18),(193,_binary '\0',29,19),(194,_binary '\0',29,20),(195,_binary '\0',29,21),(196,_binary '\0',29,22),(197,_binary '\0',29,23),(198,_binary '\0',31,1),(199,_binary '\0',31,2),(200,_binary '\0',31,3),(201,_binary '\0',31,4),(202,_binary '\0',31,5),(203,_binary '\0',31,6),(204,_binary '\0',31,7),(205,_binary '\0',31,8),(206,_binary '\0',31,9),(207,_binary '\0',31,10),(208,_binary '\0',31,11),(209,_binary '\0',31,12),(210,_binary '\0',31,13),(211,_binary '\0',31,14),(212,_binary '\0',31,15),(213,_binary '\0',31,16),(214,_binary '\0',31,17),(215,_binary '\0',31,18),(216,_binary '\0',31,19),(217,_binary '\0',31,20),(218,_binary '\0',31,21),(219,_binary '\0',31,22),(220,_binary '\0',31,23),(221,_binary '\0',33,1),(222,_binary '\0',33,2),(223,_binary '\0',33,3),(224,_binary '\0',33,4),(225,_binary '\0',33,5),(226,_binary '\0',33,6),(227,_binary '\0',33,7),(228,_binary '\0',33,8),(229,_binary '\0',33,9),(230,_binary '\0',33,10),(231,_binary '\0',33,11),(232,_binary '\0',33,12),(233,_binary '\0',33,13),(234,_binary '\0',33,14),(235,_binary '\0',33,15),(236,_binary '\0',33,16),(237,_binary '\0',33,17),(238,_binary '\0',33,18),(239,_binary '\0',33,19),(240,_binary '\0',33,20),(241,_binary '\0',33,21),(242,_binary '\0',33,22),(243,_binary '\0',33,23),(244,_binary '\0',35,1),(245,_binary '\0',35,2),(246,_binary '\0',35,3),(247,_binary '\0',35,4),(248,_binary '\0',35,5),(249,_binary '\0',35,6),(250,_binary '\0',35,7),(251,_binary '\0',35,8),(252,_binary '\0',35,9),(253,_binary '\0',35,10),(254,_binary '\0',35,11),(255,_binary '\0',35,12),(256,_binary '\0',35,13),(257,_binary '\0',35,14),(258,_binary '\0',35,15),(259,_binary '\0',35,16),(260,_binary '\0',35,17),(261,_binary '\0',35,18),(262,_binary '\0',35,19),(263,_binary '\0',35,20),(264,_binary '\0',35,21),(265,_binary '\0',35,22),(266,_binary '\0',35,23),(267,_binary '\0',26,15),(268,_binary '\0',26,16),(269,_binary '\0',26,17),(270,_binary '\0',26,18),(271,_binary '\0',26,19),(272,_binary '\0',26,20),(273,_binary '\0',26,21),(274,_binary '\0',26,22),(275,_binary '\0',26,23),(276,_binary '\0',28,15),(277,_binary '\0',28,16),(278,_binary '\0',28,17),(279,_binary '\0',28,18),(280,_binary '\0',28,19),(281,_binary '\0',28,20),(282,_binary '\0',28,21),(283,_binary '\0',28,22),(284,_binary '\0',28,23),(285,_binary '\0',30,15),(286,_binary '\0',30,16),(287,_binary '\0',30,17),(288,_binary '\0',30,18),(289,_binary '\0',30,19),(290,_binary '\0',30,20),(291,_binary '\0',30,21),(292,_binary '\0',30,22),(293,_binary '\0',30,23),(294,_binary '\0',32,15),(295,_binary '\0',32,16),(296,_binary '\0',32,17),(297,_binary '\0',32,18),(298,_binary '\0',32,19),(299,_binary '\0',32,20),(300,_binary '\0',32,21),(301,_binary '\0',32,22),(302,_binary '\0',32,23),(303,_binary '\0',34,15),(304,_binary '\0',34,16),(305,_binary '\0',34,17),(306,_binary '\0',34,18),(307,_binary '\0',34,19),(308,_binary '\0',34,20),(309,_binary '\0',34,21),(310,_binary '\0',34,22),(311,_binary '\0',34,23),(312,_binary '\0',36,15),(313,_binary '\0',36,16),(314,_binary '\0',36,17),(315,_binary '\0',36,18),(316,_binary '\0',36,19),(317,_binary '\0',36,20),(318,_binary '\0',36,21),(319,_binary '\0',36,22),(320,_binary '\0',36,23);
/*!40000 ALTER TABLE `learning_week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `account_id` bigint NOT NULL,
  `address_id` bigint NOT NULL,
  `fullname_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4jsivcqa7rxm6w59nggnpywh9` (`account_id`),
  KEY `FKe949jkrgjkwq2hxgj3ow03bpm` (`address_id`),
  KEY `FKhbsg3rvc1hibpf2dge9qn8h64` (`fullname_id`),
  CONSTRAINT `FK4jsivcqa7rxm6w59nggnpywh9` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FKe949jkrgjkwq2hxgj3ow03bpm` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKhbsg3rvc1hibpf2dge9qn8h64` FOREIGN KEY (`fullname_id`) REFERENCES `fullname` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'tutrananh.982@gmail.com','0969356916',1,1,1),(2,'tutrananh.982@gmail.com','0969356916',2,2,2),(3,'tutrananh.982@gmail.com','0969356916',3,3,3),(4,'tutrananh.982@gmail.com','0969356916',4,4,4);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_enable` bit(1) NOT NULL,
  `reg_time` datetime(6) NOT NULL,
  `subject_group_id` bigint NOT NULL,
  `teacher_member_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKowxp1chwof3fnyi1oqavkbjff` (`subject_group_id`),
  KEY `FK7f9jm2lkkgikumbyl1kxbe4xp` (`teacher_member_id`),
  CONSTRAINT `FK7f9jm2lkkgikumbyl1kxbe4xp` FOREIGN KEY (`teacher_member_id`) REFERENCES `teacher` (`member_id`),
  CONSTRAINT `FKowxp1chwof3fnyi1oqavkbjff` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,_binary '','2022-03-21 20:20:11.698000',1,2),(2,_binary '','2022-03-21 20:20:16.389000',3,2),(3,_binary '\0','2022-03-21 20:20:21.060000',6,2),(4,_binary '','2022-03-21 20:46:27.393000',5,2);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'STUDENT'),(3,'TEACHER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `building_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4kmfw73x2vpfymk0ml875rh2q` (`building_id`),
  CONSTRAINT `FK4kmfw73x2vpfymk0ml875rh2q` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'101',1),(2,'102',1),(3,'101',2),(4,'102',2),(5,'103',1),(6,'103',2),(7,'201',1),(8,'201',2);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `end_time` time NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (1,'08:50:00','Kíp 1','07:00:00'),(2,'10:50:00','Kíp 2','09:00:00'),(3,'13:50:00','Kíp 3','12:00:00'),(4,'17:50:00','Kíp 4','14:00:00'),(5,'19:50:00','Kíp 5','18:00:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'	 Kiến trúc và thiết kế phần mềm'),(2,'	 Phát triển phần mềm hướng dịch vụ'),(3,'Phát triển ứng dụng cho các thiết bị di động'),(4,'	 Đảm bảo chất lượng phần mềm'),(5,'Phân tích thiết kế hệ thống');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_group`
--

DROP TABLE IF EXISTS `subject_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `learning_day` varchar(255) NOT NULL,
  `number_of_teacher` int NOT NULL,
  `term_subject_id` bigint NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpkkp9dc28cv6rlyhwgnjkts2s` (`term_subject_id`),
  CONSTRAINT `FKpkkp9dc28cv6rlyhwgnjkts2s` FOREIGN KEY (`term_subject_id`) REFERENCES `term_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_group`
--

LOCK TABLES `subject_group` WRITE;
/*!40000 ALTER TABLE `subject_group` DISABLE KEYS */;
INSERT INTO `subject_group` VALUES (1,'Thứ hai',5,1,'N1'),(2,'Thứ hai',2,1,'N2'),(3,'Thứ ba',1,2,'N3'),(4,'Thứ hai',1,2,'N4'),(5,'Thứ tư',1,3,'N5'),(6,'Thứ ba',1,3,'N6'),(7,'Thứ ba',1,4,'N7'),(8,'Thứ tư',1,4,'N8'),(9,'Thứ tư',1,5,'N9');
/*!40000 ALTER TABLE `subject_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `tch_code` varchar(255) NOT NULL,
  `member_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `FKd419q6obhj46eoye136y7rjyq` (`department_id`),
  CONSTRAINT `FKd419q6obhj46eoye136y7rjyq` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `FKoe31o068r2af29qr9nf0290k` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('GV1',2,1),('GV2',3,2),('GV3',4,3);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term`
--

DROP TABLE IF EXISTS `term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `term` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `end_date` date NOT NULL,
  `end_reg_time` datetime(6) NOT NULL,
  `start_date` date NOT NULL,
  `start_reg_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term`
--

LOCK TABLES `term` WRITE;
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
INSERT INTO `term` VALUES (1,'2022-04-18','2022-04-18 12:00:00.000000','2022-03-18','2022-03-18 01:00:00.000000');
/*!40000 ALTER TABLE `term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_subject`
--

DROP TABLE IF EXISTS `term_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `term_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `credit` int NOT NULL,
  `subject_id` bigint NOT NULL,
  `term_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKikx2ji352jnex38unm5rvuxks` (`subject_id`),
  KEY `FKduo944drbos5rmup3genjimc9` (`term_id`),
  CONSTRAINT `FKduo944drbos5rmup3genjimc9` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`),
  CONSTRAINT `FKikx2ji352jnex38unm5rvuxks` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_subject`
--

LOCK TABLES `term_subject` WRITE;
/*!40000 ALTER TABLE `term_subject` DISABLE KEYS */;
INSERT INTO `term_subject` VALUES (1,3,1,1),(2,3,2,1),(3,3,3,1),(4,3,4,1),(5,3,5,1);
/*!40000 ALTER TABLE `term_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_week`
--

DROP TABLE IF EXISTS `term_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `term_week` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `end_date` date NOT NULL,
  `start_date` date NOT NULL,
  `term_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK97t8159poj3wf2wmv73mvf4hl` (`term_id`),
  CONSTRAINT `FK97t8159poj3wf2wmv73mvf4hl` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_week`
--

LOCK TABLES `term_week` WRITE;
/*!40000 ALTER TABLE `term_week` DISABLE KEYS */;
INSERT INTO `term_week` VALUES (1,'2022-03-14','2022-03-07',1),(2,'2022-03-22','2022-03-15',1),(3,'2022-03-30','2022-03-23',1),(4,'2022-04-07','2022-03-31',1),(5,'2022-04-15','2022-04-08',1),(6,'2022-04-23','2022-04-16',1),(7,'2022-05-01','2022-04-24',1),(8,'2022-05-09','2022-05-02',1),(9,'2022-05-17','2022-05-10',1),(10,'2022-05-25','2022-05-18',1),(11,'2022-06-02','2022-05-26',1),(12,'2022-06-10','2022-06-03',1),(13,'2022-06-18','2022-06-11',1),(14,'2022-06-26','2022-06-19',1),(15,'2022-07-04','2022-06-27',1),(16,'2022-07-12','2022-07-05',1),(17,'2022-07-20','2022-07-13',1),(18,'2022-07-28','2022-07-21',1),(19,'2022-08-05','2022-07-29',1),(20,'2022-08-13','2022-08-06',1),(21,'2022-08-21','2022-08-14',1),(22,'2022-08-29','2022-08-22',1),(23,'2022-09-06','2022-08-30',1);
/*!40000 ALTER TABLE `term_week` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24  9:44:37
