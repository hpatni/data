-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: lms_allcloud
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_cloud_config`
--

DROP TABLE IF EXISTS `all_cloud_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_cloud_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authorization_value` varchar(255) DEFAULT NULL,
  `post_letter_by_finance_id_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_cloud_config`
--

LOCK TABLES `all_cloud_config` WRITE;
/*!40000 ALTER TABLE `all_cloud_config` DISABLE KEYS */;
INSERT INTO `all_cloud_config` VALUES (1,'amx 4d53bce03ec34c0a911182d4c228ee6c:3e9Q8ju4rE/syKS7aFH8ogXGxgdIkK9PvHS863jtwdk=:1469030797:1549277638:0fe9b3a6-7c46-45fd-9a58-5da956b526cc','https://staging.allcloud.in/apiv2cwc//api/Letters/PostLetterByFinanceId');
/*!40000 ALTER TABLE `all_cloud_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_cloud_letters_dts`
--

DROP TABLE IF EXISTS `all_cloud_letters_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_cloud_letters_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ipadd` varchar(255) DEFAULT NULL,
  `updt_by` varchar(255) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `letter_type` varchar(255) DEFAULT NULL,
  `letter_type_id` varchar(255) DEFAULT NULL,
  `loan_id` varchar(255) DEFAULT NULL,
  `request` longtext,
  `response` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_cloud_letters_dts`
--

LOCK TABLES `all_cloud_letters_dts` WRITE;
/*!40000 ALTER TABLE `all_cloud_letters_dts` DISABLE KEYS */;
INSERT INTO `all_cloud_letters_dts` VALUES (1,NULL,'2023-06-08 11:51:27',NULL,NULL,'2023-06-20 11:58:01','/var/www/html/cwc-document/AllCloudLetters/500_RTONOC.pdf','RTONOC',NULL,'500','{\"LoanId\":\"500\",\"LetterTypeId\":\"RTONOC\"}',NULL),(2,NULL,'2023-06-19 11:02:10',NULL,NULL,NULL,NULL,'RTONOC',NULL,'5962','{\"LoanId\":\"5962\",\"LetterTypeId\":\"RTONOC\"}',NULL),(3,NULL,'2023-06-19 11:03:36',NULL,NULL,NULL,NULL,'RTONOC',NULL,'5925','{\"LoanId\":\"5925\",\"LetterTypeId\":\"RTONOC\"}',NULL),(4,NULL,'2023-06-19 11:03:43',NULL,NULL,NULL,NULL,'RTONOC',NULL,'5926','{\"LoanId\":\"5926\",\"LetterTypeId\":\"RTONOC\"}',NULL),(5,NULL,'2023-06-19 11:04:00',NULL,NULL,NULL,NULL,'RTONOC',NULL,'5922','{\"LoanId\":\"5922\",\"LetterTypeId\":\"RTONOC\"}',NULL),(6,NULL,'2023-06-19 11:06:42',NULL,NULL,NULL,NULL,'RTONOC',NULL,'51442','{\"LoanId\":\"51442\",\"LetterTypeId\":\"RTONOC\"}',NULL);
/*!40000 ALTER TABLE `all_cloud_letters_dts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 14:39:10
