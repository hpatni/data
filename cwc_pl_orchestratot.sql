-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: cwc_pl_orchestrator
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
  `api` varchar(255) DEFAULT NULL,
  `input` longtext,
  `response_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaqsm48i0xieupxsshei64vk4x` (`response_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_details`
--

LOCK TABLES `api_details` WRITE;
/*!40000 ALTER TABLE `api_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_details`
--

DROP TABLE IF EXISTS `response_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ipadd` varchar(255) DEFAULT NULL,
  `updt_by` varchar(255) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `error` bit(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `result` longtext,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_details`
--

LOCK TABLES `response_details` WRITE;
/*!40000 ALTER TABLE `response_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 14:34:50
