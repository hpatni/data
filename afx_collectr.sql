-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: afx_collectr
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
-- Table structure for table `api_details`
--

DROP TABLE IF EXISTS `api_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ipadd` varchar(255) DEFAULT NULL,
  `updt_by` varchar(255) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `api` longtext,
  `request` longtext,
  `request_id` varchar(255) DEFAULT NULL,
  `response` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_details`
--

LOCK TABLES `api_details` WRITE;
/*!40000 ALTER TABLE `api_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_back_response`
--

DROP TABLE IF EXISTS `call_back_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_back_response` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `request_id` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_back_response`
--

LOCK TABLES `call_back_response` WRITE;
/*!40000 ALTER TABLE `call_back_response` DISABLE KEYS */;
INSERT INTO `call_back_response` VALUES (7,'2021-03-26 14:05:06','port 8062','{\r\n\"status\":\"200\",\r\n\"request_id\":\"port 8062\"\r\n}','200'),(8,'2021-03-26 14:05:48','port 8062','{\r\n\"status\":\"200\",\r\n\"request_id\":\"port 8062\"\r\n}','200'),(9,'2021-03-26 14:13:27','port 8062','{\r\n\"status\":\"200\",\r\n\"request_id\":\"port 8062\"\r\n}','200');
/*!40000 ALTER TABLE `call_back_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gupshup_api_request`
--

DROP TABLE IF EXISTS `gupshup_api_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gupshup_api_request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `criff_response` mediumtext,
  `criff_score` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gupshup_api_request`
--

LOCK TABLES `gupshup_api_request` WRITE;
/*!40000 ALTER TABLE `gupshup_api_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `gupshup_api_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (10);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 14:32:31
