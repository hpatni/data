-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: cwc_digitalPartnerApp
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
-- Table structure for table `dp_lead_dts`
--

DROP TABLE IF EXISTS `dp_lead_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dp_lead_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_lead_dts`
--

LOCK TABLES `dp_lead_dts` WRITE;
/*!40000 ALTER TABLE `dp_lead_dts` DISABLE KEYS */;
INSERT INTO `dp_lead_dts` VALUES (1,'2022-01-12 09:37:33','Harshada','12-01-2022','9307631823','402107','BIKE4YOU','Credit Review','2023-06-22 21:55:01'),(2,'2022-01-12 09:38:07','Sugandha','12-01-2022','9503395752','402107','BIKE4YOU','In Sales queue','2023-06-22 21:55:01'),(3,'2022-01-12 09:38:21','Amit','12-01-2022','9307631811','402107','BIKE4YOU','In Progress','2022-01-12 09:38:21'),(4,'2022-01-12 09:38:37','Manoj','12-01-2022','8087036438','402107','BIKE4YOU','Credit Review','2023-06-22 21:55:01'),(5,'2022-01-12 09:39:15','Adarsh','12-01-2022','9307631821','402107','BIKE4SALES','Credit Review','2023-06-22 21:55:01'),(6,'2022-01-13 06:56:15','Harshada Patil','13-01-2022','724345687','402107','BIKE4SALES','In Progress','2022-01-13 06:56:15'),(7,'2022-01-17 09:02:47','Akanksha Revte','17-01-2022','9021688034','440027','BIKE4SALES','Credit Review','2023-06-22 21:55:01'),(8,'2022-01-17 09:21:41','Pranjal Mate','17-01-2022','9503345752','440024','BIKE4SALES','Credit Review','2022-03-30 12:29:52');
/*!40000 ALTER TABLE `dp_lead_dts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 14:37:42
