-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: afx_sherlock
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
-- Table structure for table `acc_verification`
--

DROP TABLE IF EXISTS `acc_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_verification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `verification_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbg72jsep4qpd9ybi6ppi3c9js` (`verification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_verification`
--

LOCK TABLES `acc_verification` WRITE;
/*!40000 ALTER TABLE `acc_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_details`
--

DROP TABLE IF EXISTS `address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `address_line3` varchar(255) DEFAULT NULL,
  `address_line4` varchar(255) DEFAULT NULL,
  `address_line5` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `address_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK62ste4b3u0h6cpm0jr21y199m` (`address_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_details`
--

LOCK TABLES `address_details` WRITE;
/*!40000 ALTER TABLE `address_details` DISABLE KEYS */;
INSERT INTO `address_details` VALUES (1,'Gram- ibra himpur ghazipur po- ghazipur thana-tarapur','','','','','D01','Gazipur','IND','','813321','BR','',1),(2,'Hello','','','','','D04','Toronto Division','IND','','888888','BR','',1),(3,'Voila','','','','','D05','Toronto Division','IND','','888888','BR','',1),(4,'Gram- ibra himpur ghazipur po- ghazipur thana-tarapur','','','','','D01','Gazipur','IND','','813321','BR','',2),(5,'Hello','','','','','D04','Toronto Division','IND','','888888','BR','',2),(6,'Voila','','','','','D05','Toronto Division','IND','','888888','BR','',2);
/*!40000 ALTER TABLE `address_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1),(2);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aka` varchar(255) DEFAULT NULL,
  `applicant_id` varchar(255) DEFAULT NULL,
  `applicant_type` varchar(255) DEFAULT NULL,
  `fraud_victim_class` varchar(255) DEFAULT NULL,
  `fraud_victim_flag` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `acc_verification_id` bigint DEFAULT NULL,
  `addresses_id` bigint DEFAULT NULL,
  `applicant_name_id` bigint DEFAULT NULL,
  `dob_id` bigint DEFAULT NULL,
  `emails_id` bigint DEFAULT NULL,
  `employments_id` bigint DEFAULT NULL,
  `ids_id` bigint DEFAULT NULL,
  `phones_id` bigint DEFAULT NULL,
  `relations_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5osnw7winyuy81kydv44lw7yv` (`acc_verification_id`),
  KEY `FKg14pshk3xgks40xhty1isekl2` (`addresses_id`),
  KEY `FKec7x5vv2w2cfl62j6r9asrgln` (`applicant_name_id`),
  KEY `FKr88geyubixq33q3khaabwyf2b` (`dob_id`),
  KEY `FK4nfp28woh4bt0us874rcqg9xd` (`emails_id`),
  KEY `FK4jux1huq3mqgrtqvorpm1qmpi` (`employments_id`),
  KEY `FK5fym010ucyhc5tspixovwanba` (`ids_id`),
  KEY `FKj03np7nv9ufkgy2jarj3rmhji` (`phones_id`),
  KEY `FKfjgcsnidbookrolb8qyogtbk7` (`relations_id`),
  KEY `FK84mpjcdvfhfagapkt1ixp4aea` (`applicant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (1,'','1','O01','','','G01',NULL,NULL,1,1,1,1,1,1,1,1),(2,'','2','O01','','','G01',NULL,NULL,2,2,2,2,2,2,2,2);
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_issue`
--

DROP TABLE IF EXISTS `applicant_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `äpplicant_id` varchar(255) DEFAULT NULL,
  `applicant_type` varchar(255) DEFAULT NULL,
  `printable_part` varchar(255) DEFAULT NULL,
  `score` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `verification_summary_issue_id` bigint DEFAULT NULL,
  `applicant_issue_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgeskocfol4c5bg2v2mykc290v` (`verification_summary_issue_id`),
  KEY `FKhlpw1ho74twhw4daq2b2jjw0x` (`applicant_issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_issue`
--

LOCK TABLES `applicant_issue` WRITE;
/*!40000 ALTER TABLE `applicant_issue` DISABLE KEYS */;
INSERT INTO `applicant_issue` VALUES (1,'B1622023274991','O01','',64,'REFER',1,1),(2,'B1623418607437','O01','',90,'APPROVED',2,2),(3,'CO1623418607457','O02','',90,'APPROVED',3,2),(4,'G1623418607477','O03','',90,'APPROVED',4,2);
/*!40000 ALTER TABLE `applicant_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_name`
--

DROP TABLE IF EXISTS `applicant_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant_name` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  `name4` varchar(255) DEFAULT NULL,
  `name5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_name`
--

LOCK TABLES `applicant_name` WRITE;
/*!40000 ALTER TABLE `applicant_name` DISABLE KEYS */;
INSERT INTO `applicant_name` VALUES (1,'Abhishek',NULL,NULL,NULL,NULL),(2,'Abhishek',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `applicant_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_segment`
--

DROP TABLE IF EXISTS `applicant_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant_segment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_segment`
--

LOCK TABLES `applicant_segment` WRITE;
/*!40000 ALTER TABLE `applicant_segment` DISABLE KEYS */;
INSERT INTO `applicant_segment` VALUES (1),(2);
/*!40000 ALTER TABLE `applicant_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_segment`
--

DROP TABLE IF EXISTS `application_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_segment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acct_open_date` varchar(255) DEFAULT NULL,
  `appln_dt` varchar(255) DEFAULT NULL,
  `appln_id` varchar(255) DEFAULT NULL,
  `appln_officer` varchar(255) DEFAULT NULL,
  `appln_type` varchar(255) DEFAULT NULL,
  `appln_value` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `branch_region` varchar(255) DEFAULT NULL,
  `ltv` varchar(255) DEFAULT NULL,
  `other_desc` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `applicant_segment_id` bigint DEFAULT NULL,
  `broker_id` bigint DEFAULT NULL,
  `collateral_segment_id` bigint DEFAULT NULL,
  `other_entities_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa96gt8a0i3pi9w6pnke06cuq9` (`applicant_segment_id`),
  KEY `FKknx5654s1qhltjah28v3a6haq` (`broker_id`),
  KEY `FKn2lg21ka4irmlyv5w9u1hvvb0` (`collateral_segment_id`),
  KEY `FKqae5f1s31bueh06rts7dswmgx` (`other_entities_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_segment`
--

LOCK TABLES `application_segment` WRITE;
/*!40000 ALTER TABLE `application_segment` DISABLE KEYS */;
INSERT INTO `application_segment` VALUES (1,'','26-05-2021','1622023274936','','IA01','830800','','','','','38',1,NULL,NULL,1),(2,'','26-05-2021','1622023274936','','IA01','830800','','','','','38',2,NULL,NULL,2);
/*!40000 ALTER TABLE `application_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broker`
--

DROP TABLE IF EXISTS `broker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broker` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brkr_name` varchar(255) DEFAULT NULL,
  `brkr_org_name` varchar(255) DEFAULT NULL,
  `brkr_phone` varchar(255) DEFAULT NULL,
  `broker_address_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi44p9ckysgxdm4pxqt8xdy637` (`broker_address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broker`
--

LOCK TABLES `broker` WRITE;
/*!40000 ALTER TABLE `broker` DISABLE KEYS */;
/*!40000 ALTER TABLE `broker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broker_address`
--

DROP TABLE IF EXISTS `broker_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broker_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brkr_address` varchar(255) DEFAULT NULL,
  `brkr_city` varchar(255) DEFAULT NULL,
  `brkr_country` varchar(255) DEFAULT NULL,
  `brkr_pincode` varchar(255) DEFAULT NULL,
  `brkr_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broker_address`
--

LOCK TABLES `broker_address` WRITE;
/*!40000 ALTER TABLE `broker_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `broker_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collateral`
--

DROP TABLE IF EXISTS `collateral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collateral` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appraiser_name` varchar(255) DEFAULT NULL,
  `build_type` varchar(255) DEFAULT NULL,
  `chassis_no` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `collat_other_desc` varchar(255) DEFAULT NULL,
  `collateral_value` varchar(255) DEFAULT NULL,
  `dealer` varchar(255) DEFAULT NULL,
  `eng_no` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `prop_address_line1` varchar(255) DEFAULT NULL,
  `prop_address_line2` varchar(255) DEFAULT NULL,
  `prop_address_type` varchar(255) DEFAULT NULL,
  `prop_own_name` varchar(255) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type_of_charge` varchar(255) DEFAULT NULL,
  `type_of_collateral` varchar(255) DEFAULT NULL,
  `valuation_date` varchar(255) DEFAULT NULL,
  `year_of_make` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collateral`
--

LOCK TABLES `collateral` WRITE;
/*!40000 ALTER TABLE `collateral` DISABLE KEYS */;
/*!40000 ALTER TABLE `collateral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collateral_segment`
--

DROP TABLE IF EXISTS `collateral_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collateral_segment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `collateral_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd6oarvhm3pdxgb0n0opy4b36x` (`collateral_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collateral_segment`
--

LOCK TABLES `collateral_segment` WRITE;
/*!40000 ALTER TABLE `collateral_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `collateral_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dob`
--

DROP TABLE IF EXISTS `dob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dob` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` varchar(255) DEFAULT NULL,
  `age_as_on` varchar(255) DEFAULT NULL,
  `dob_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dob`
--

LOCK TABLES `dob` WRITE;
/*!40000 ALTER TABLE `dob` DISABLE KEYS */;
INSERT INTO `dob` VALUES (1,'34','','16-07-1986'),(2,'34','','16-07-1986');
/*!40000 ALTER TABLE `dob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email_id` varchar(255) DEFAULT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'a@yopmail.com','EMT01'),(2,'a@yopmail.com','EMT01');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment_details`
--

DROP TABLE IF EXISTS `employment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `emp_end_date` varchar(255) DEFAULT NULL,
  `emp_start_date` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `employer_status` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `income_indicator` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment_details`
--

LOCK TABLES `employment_details` WRITE;
/*!40000 ALTER TABLE `employment_details` DISABLE KEYS */;
INSERT INTO `employment_details` VALUES (1,'','','9965421336','Abhishek','','','',NULL,'Manager','J01'),(2,'','','9965421336','Abhishek','','','',NULL,'Manager','J01');
/*!40000 ALTER TABLE `employment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employments`
--

DROP TABLE IF EXISTS `employments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `employment_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk50bv24rpa0awgwi4l5oiqer2` (`employment_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employments`
--

LOCK TABLES `employments` WRITE;
/*!40000 ALTER TABLE `employments` DISABLE KEYS */;
INSERT INTO `employments` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `employments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_issue`
--

DROP TABLE IF EXISTS `header_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `case_id` bigint DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `date_of_request` varchar(255) DEFAULT NULL,
  `request_status` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `response_format` varchar(255) DEFAULT NULL,
  `sherlock_decision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_issue`
--

LOCK TABLES `header_issue` WRITE;
/*!40000 ALTER TABLE `header_issue` DISABLE KEYS */;
INSERT INTO `header_issue` VALUES (1,23251268582,'NBF0003073','01-07-2021','SUCCESS','SHERLOCK','XML','REFER'),(2,23251266112,'NBF0003073','11-06-2021','SUCCESS','SHERLOCK','XML','APPROVED');
/*!40000 ALTER TABLE `header_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_segment`
--

DROP TABLE IF EXISTS `header_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_segment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_of_request` varchar(255) DEFAULT NULL,
  `request_action_type` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `res_for_future1` varchar(255) DEFAULT NULL,
  `res_for_future2` varchar(255) DEFAULT NULL,
  `response_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_segment`
--

LOCK TABLES `header_segment` WRITE;
/*!40000 ALTER TABLE `header_segment` DISABLE KEYS */;
INSERT INTO `header_segment` VALUES (1,'26-05-2021','SUBMIT','SHERLOCK','','','XML'),(2,'01-07-2021','SUBMIT','SHERLOCK','','','XML');
/*!40000 ALTER TABLE `header_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_details`
--

DROP TABLE IF EXISTS `id_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `applicant_id_type` varchar(255) DEFAULT NULL,
  `applicant_id_value` varchar(255) DEFAULT NULL,
  `id_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdp4kuf757ll2iua6b0ib3dq7v` (`id_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_details`
--

LOCK TABLES `id_details` WRITE;
/*!40000 ALTER TABLE `id_details` DISABLE KEYS */;
INSERT INTO `id_details` VALUES (1,'ID07','VSIPP2694K',1),(2,'ID07','VSIPP2694K',2);
/*!40000 ALTER TABLE `id_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_verification_summary_issue`
--

DROP TABLE IF EXISTS `id_verification_summary_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_verification_summary_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_verification_summary_issue`
--

LOCK TABLES `id_verification_summary_issue` WRITE;
/*!40000 ALTER TABLE `id_verification_summary_issue` DISABLE KEYS */;
INSERT INTO `id_verification_summary_issue` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `id_verification_summary_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ids`
--

DROP TABLE IF EXISTS `ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ids` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ids`
--

LOCK TABLES `ids` WRITE;
/*!40000 ALTER TABLE `ids` DISABLE KEYS */;
INSERT INTO `ids` VALUES (1),(2);
/*!40000 ALTER TABLE `ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_issue`
--

DROP TABLE IF EXISTS `inquiry_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appln_id` bigint DEFAULT NULL,
  `date_of_request` varchar(255) DEFAULT NULL,
  `response_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_issue`
--

LOCK TABLES `inquiry_issue` WRITE;
/*!40000 ALTER TABLE `inquiry_issue` DISABLE KEYS */;
INSERT INTO `inquiry_issue` VALUES (1,1622023274936,'01-07-2021','01-07-2021 21:45:57'),(2,1623418607437,'11-06-2021','11-06-2021 19:31:06');
/*!40000 ALTER TABLE `inquiry_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_segment`
--

DROP TABLE IF EXISTS `inquiry_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry_segment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `priority` varchar(255) DEFAULT NULL,
  `application_segment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbwrvrhn3abf1d3yyjlnp6128k` (`application_segment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_segment`
--

LOCK TABLES `inquiry_segment` WRITE;
/*!40000 ALTER TABLE `inquiry_segment` DISABLE KEYS */;
INSERT INTO `inquiry_segment` VALUES (1,'YES',1),(2,'YES',2);
/*!40000 ALTER TABLE `inquiry_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_status_issue`
--

DROP TABLE IF EXISTS `inquiry_status_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry_status_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `inquiry_issue_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKax09y6q00tf3frbgdq6ggt7l8` (`inquiry_issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_status_issue`
--

LOCK TABLES `inquiry_status_issue` WRITE;
/*!40000 ALTER TABLE `inquiry_status_issue` DISABLE KEYS */;
INSERT INTO `inquiry_status_issue` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `inquiry_status_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_entities`
--

DROP TABLE IF EXISTS `other_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_entities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `other_entity_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjy7dm7xsmqc9u0ilqh7c487nd` (`other_entity_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_entities`
--

LOCK TABLES `other_entities` WRITE;
/*!40000 ALTER TABLE `other_entities` DISABLE KEYS */;
INSERT INTO `other_entities` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `other_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_entity_details`
--

DROP TABLE IF EXISTS `other_entity_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_entity_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  `ref_address_line1` varchar(255) DEFAULT NULL,
  `ref_address_line2` varchar(255) DEFAULT NULL,
  `ref_address_line3` varchar(255) DEFAULT NULL,
  `ref_aka` varchar(255) DEFAULT NULL,
  `ref_city` varchar(255) DEFAULT NULL,
  `ref_country` varchar(255) DEFAULT NULL,
  `ref_email1` varchar(255) DEFAULT NULL,
  `ref_email2` varchar(255) DEFAULT NULL,
  `ref_phone1` varchar(255) DEFAULT NULL,
  `ref_phone2` varchar(255) DEFAULT NULL,
  `ref_pincode` varchar(255) DEFAULT NULL,
  `ref_state` varchar(255) DEFAULT NULL,
  `ref_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_entity_details`
--

LOCK TABLES `other_entity_details` WRITE;
/*!40000 ALTER TABLE `other_entity_details` DISABLE KEYS */;
INSERT INTO `other_entity_details` VALUES (1,'Abhi','','','Dgjkkj','','','','','','','','8622399996','','','',''),(2,'Abhi','','','Dgjkkj','','','','','','','','8622399996','','','','');
/*!40000 ALTER TABLE `other_entity_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tele_no` varchar(255) DEFAULT NULL,
  `tele_no_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (1,'9965421336','P03'),(2,'9965421336','P03');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_details`
--

DROP TABLE IF EXISTS `relation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) DEFAULT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `relation_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6vsxpqgeb7cy5fl0ylj0csrtw` (`relation_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_details`
--

LOCK TABLES `relation_details` WRITE;
/*!40000 ALTER TABLE `relation_details` DISABLE KEYS */;
INSERT INTO `relation_details` VALUES (1,'K15','Abhi',1),(2,'K15','Gjllbvv',1),(3,'K15','Abhi',2),(4,'K15','Gjllbvv',2);
/*!40000 ALTER TABLE `relation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (1),(2);
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_issue`
--

DROP TABLE IF EXISTS `remarks_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remarks_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remarks_issue`
--

LOCK TABLES `remarks_issue` WRITE;
/*!40000 ALTER TABLE `remarks_issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `remarks_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_issue`
--

DROP TABLE IF EXISTS `response_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `inquiry_status_issue_id` bigint DEFAULT NULL,
  `sherlock_report_issue` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi7wrkm4x41ukw0qwa5hf2bmxm` (`inquiry_status_issue_id`),
  KEY `FK1ykirn2w7d35c70cebw2uq4hn` (`sherlock_report_issue`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_issue`
--

LOCK TABLES `response_issue` WRITE;
/*!40000 ALTER TABLE `response_issue` DISABLE KEYS */;
INSERT INTO `response_issue` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `response_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_summary`
--

DROP TABLE IF EXISTS `response_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_summary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `reqServiceType` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remarks_issue_id` bigint DEFAULT NULL,
  `scores_issue_id` bigint DEFAULT NULL,
  `response_summary_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKglo5y9qshlbj01iafo2wf0rix` (`remarks_issue_id`),
  KEY `FKnndwwhli1h2iml4hqqkiw2d6v` (`scores_issue_id`),
  KEY `FKexpffuv22d62djbmflxsgst4b` (`response_summary_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_summary`
--

LOCK TABLES `response_summary` WRITE;
/*!40000 ALTER TABLE `response_summary` DISABLE KEYS */;
INSERT INTO `response_summary` VALUES (1,'Enquired entity PAN does not exist in NSDL','PAN','N',NULL,1,1),(2,'Enquired entity Address not matching in Bureau','ADDRESS','N',NULL,2,1),(3,'Enquired entity Address not matching in Bureau','ADDRESS','N',NULL,3,2),(4,'Technical Error.Please contact to productsupport@crifhighmark.com','VOTERID','E',NULL,4,2),(5,'Enquired entity Address not matching in Bureau','ADDRESS','N',NULL,5,3),(6,'Enquired entity Address not matching in Bureau','ADDRESS','N',NULL,6,4);
/*!40000 ALTER TABLE `response_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score_details`
--

DROP TABLE IF EXISTS `score_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_details`
--

LOCK TABLES `score_details` WRITE;
/*!40000 ALTER TABLE `score_details` DISABLE KEYS */;
INSERT INTO `score_details` VALUES (1,'','PAN_SCORE',0),(2,NULL,'ADDRESS_SCORE',0),(3,NULL,'ADDRESS_SCORE',0),(4,NULL,'ADDRESS_SCORE',0),(5,NULL,'ADDRESS_SCORE',0);
/*!40000 ALTER TABLE `score_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores_issue`
--

DROP TABLE IF EXISTS `scores_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4c7aatgkbphvoh6tlfkfcpuye` (`score_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores_issue`
--

LOCK TABLES `scores_issue` WRITE;
/*!40000 ALTER TABLE `scores_issue` DISABLE KEYS */;
INSERT INTO `scores_issue` VALUES (1,1),(2,2),(3,3),(4,NULL),(5,4),(6,5);
/*!40000 ALTER TABLE `scores_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_details_issue`
--

DROP TABLE IF EXISTS `sherlock_details_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_details_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_details_issue`
--

LOCK TABLES `sherlock_details_issue` WRITE;
/*!40000 ALTER TABLE `sherlock_details_issue` DISABLE KEYS */;
INSERT INTO `sherlock_details_issue` VALUES (1),(2);
/*!40000 ALTER TABLE `sherlock_details_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_error_details`
--

DROP TABLE IF EXISTS `sherlock_error_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_error_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `sherlock_error_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmhvb8diopwse3ayflfacraxug` (`sherlock_error_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_error_details`
--

LOCK TABLES `sherlock_error_details` WRITE;
/*!40000 ALTER TABLE `sherlock_error_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sherlock_error_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_errors`
--

DROP TABLE IF EXISTS `sherlock_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_errors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_errors`
--

LOCK TABLES `sherlock_errors` WRITE;
/*!40000 ALTER TABLE `sherlock_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sherlock_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_issue_error_details`
--

DROP TABLE IF EXISTS `sherlock_issue_error_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_issue_error_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `sherlock_issue_error_details_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnl3m864ojjlh8ej1w9jhrbin1` (`sherlock_issue_error_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_issue_error_details`
--

LOCK TABLES `sherlock_issue_error_details` WRITE;
/*!40000 ALTER TABLE `sherlock_issue_error_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sherlock_issue_error_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_issue_errors`
--

DROP TABLE IF EXISTS `sherlock_issue_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_issue_errors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_issue_errors`
--

LOCK TABLES `sherlock_issue_errors` WRITE;
/*!40000 ALTER TABLE `sherlock_issue_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sherlock_issue_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_issue_request`
--

DROP TABLE IF EXISTS `sherlock_issue_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_issue_request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `case_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `date_of_request` varchar(255) DEFAULT NULL,
  `request_action_type` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `response_format` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_issue_request`
--

LOCK TABLES `sherlock_issue_request` WRITE;
/*!40000 ALTER TABLE `sherlock_issue_request` DISABLE KEYS */;
INSERT INTO `sherlock_issue_request` VALUES (1,23251268672,'2021-07-02 14:58:24','NBF0003073','23-02-2021','SUBMIT','SHERLOCK','XML','2021-07-02 14:58:24'),(2,23251266112,'2021-07-02 14:58:54','NBF0003073','11-06-2021','SUBMIT','SHERLOCK','XML','2021-07-02 14:58:54');
/*!40000 ALTER TABLE `sherlock_issue_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_issue_response`
--

DROP TABLE IF EXISTS `sherlock_issue_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_issue_response` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `date_of_request` varchar(255) DEFAULT NULL,
  `inquiry_id` bigint DEFAULT NULL,
  `response_dt` varchar(255) DEFAULT NULL,
  `response_type` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `error_id` bigint DEFAULT NULL,
  `response_issue_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr8h1pxihy85d3yyxrpndvf8va` (`error_id`),
  KEY `FKg4b30h3tjmrp51hygpsitubwy` (`response_issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_issue_response`
--

LOCK TABLES `sherlock_issue_response` WRITE;
/*!40000 ALTER TABLE `sherlock_issue_response` DISABLE KEYS */;
INSERT INTO `sherlock_issue_response` VALUES (1,'2021-07-02 14:58:25',NULL,NULL,NULL,NULL,'2021-07-02 14:58:25',NULL,1),(2,'2021-07-02 14:58:54',NULL,NULL,NULL,NULL,'2021-07-02 14:58:54',NULL,2);
/*!40000 ALTER TABLE `sherlock_issue_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_report_issue`
--

DROP TABLE IF EXISTS `sherlock_report_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_report_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_issue_id` bigint DEFAULT NULL,
  `sherlock_details_issue_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsg5cirh5s720vsrl5fvo2so2f` (`header_issue_id`),
  KEY `FKbo2oew51k8smmj0l9cr4dk9qj` (`sherlock_details_issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_report_issue`
--

LOCK TABLES `sherlock_report_issue` WRITE;
/*!40000 ALTER TABLE `sherlock_report_issue` DISABLE KEYS */;
INSERT INTO `sherlock_report_issue` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `sherlock_report_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_request`
--

DROP TABLE IF EXISTS `sherlock_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `header_segment_id` bigint DEFAULT NULL,
  `inquiry_segment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5jhpeq0wj4n5nix6t6s0b9tbc` (`header_segment_id`),
  KEY `FKb0lwqy1au5ckpuhe4lb1jh1r9` (`inquiry_segment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_request`
--

LOCK TABLES `sherlock_request` WRITE;
/*!40000 ALTER TABLE `sherlock_request` DISABLE KEYS */;
INSERT INTO `sherlock_request` VALUES (1,'2021-07-02 14:56:49','2021-07-02 14:56:49',1,1),(2,'2021-07-02 14:57:05','2021-07-02 14:57:05',2,2);
/*!40000 ALTER TABLE `sherlock_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sherlock_response`
--

DROP TABLE IF EXISTS `sherlock_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_response` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aapln_id` bigint DEFAULT NULL,
  `case_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `date_of_request` varchar(255) DEFAULT NULL,
  `inquiry_id` bigint DEFAULT NULL,
  `response_dt` varchar(255) DEFAULT NULL,
  `response_type` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `error_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj2vssloo267lgeixp9b98x5sw` (`error_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_response`
--

LOCK TABLES `sherlock_response` WRITE;
/*!40000 ALTER TABLE `sherlock_response` DISABLE KEYS */;
INSERT INTO `sherlock_response` VALUES (1,1622023274936,23251268672,'2021-07-02 14:56:51','02-07-2021',NULL,'02-07-2021','ACKNOWLEDGEMENT','2021-07-02 14:56:51',NULL),(2,1622023274936,23251268673,'2021-07-02 14:57:05','02-07-2021',NULL,'02-07-2021','ACKNOWLEDGEMENT','2021-07-02 14:57:05',NULL);
/*!40000 ALTER TABLE `sherlock_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acct_doc_issue_date` varchar(255) DEFAULT NULL,
  `acct_doc_number` varchar(255) DEFAULT NULL,
  `acct_doc_purpose` varchar(255) DEFAULT NULL,
  `acct_doc_type` varchar(255) DEFAULT NULL,
  `acct_number` varchar(255) DEFAULT NULL,
  `bank_ifsc` varchar(255) DEFAULT NULL,
  `bank_micr` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `place_of_issue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_summary_issue`
--

DROP TABLE IF EXISTS `verification_summary_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_summary_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aml_verification_summary` varchar(255) DEFAULT NULL,
  `litigation_verification_summary` varchar(255) DEFAULT NULL,
  `id_verification_summary_issue_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh39ttmly2mpp4krnctn8yk9tc` (`id_verification_summary_issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_summary_issue`
--

LOCK TABLES `verification_summary_issue` WRITE;
/*!40000 ALTER TABLE `verification_summary_issue` DISABLE KEYS */;
INSERT INTO `verification_summary_issue` VALUES (1,'','',1),(2,'','',2),(3,'','',3),(4,'','',4);
/*!40000 ALTER TABLE `verification_summary_issue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 13:25:29
