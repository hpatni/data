-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: cwc_pl_ckyc
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
-- Table structure for table `buisness_information_dts`
--

DROP TABLE IF EXISTS `buisness_information_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buisness_information_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `bank_account_type` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cin` bigint DEFAULT NULL,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `is_it_company_bank_account` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `monthly_income` double DEFAULT NULL,
  `networth` double DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `segment` varchar(255) DEFAULT NULL,
  `subindustry` varchar(255) DEFAULT NULL,
  `turnover` double DEFAULT NULL,
  `upadated_by` varchar(255) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `verified` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buisness_information_dts`
--

LOCK TABLES `buisness_information_dts` WRITE;
/*!40000 ALTER TABLE `buisness_information_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `buisness_information_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckyc_config`
--

DROP TABLE IF EXISTS `ckyc_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ckyc_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ckyc_download_url` varchar(255) DEFAULT NULL,
  `ckyc_search_url` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `consent` bit(1) DEFAULT NULL,
  `consent_purpose` varchar(255) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `module_secret` varchar(255) DEFAULT NULL,
  `perform_ocr` bit(1) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckyc_config`
--

LOCK TABLES `ckyc_config` WRITE;
/*!40000 ALTER TABLE `ckyc_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckyc_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckyc_search_details`
--

DROP TABLE IF EXISTS `ckyc_search_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ckyc_search_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aadhar_file_path` varchar(255) DEFAULT NULL,
  `applicant_unique_id` varchar(255) DEFAULT NULL,
  `ckyc_aadhaar_id` varchar(255) DEFAULT NULL,
  `ckyc_download_request` longtext,
  `ckyc_download_response` longtext,
  `ckyc_dl` varchar(255) DEFAULT NULL,
  `ckyc_id` varchar(255) DEFAULT NULL,
  `ckyc_pan_number` varchar(255) DEFAULT NULL,
  `ckyc_passport` varchar(255) DEFAULT NULL,
  `ckyc_search_request` longtext,
  `ckyc_search_response` longtext,
  `ckyc_voter_id` varchar(255) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `dl_file_path` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `download_kyc_status` varchar(255) DEFAULT NULL,
  `ekyc_auth_file_path` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `pan_file_path` varchar(255) DEFAULT NULL,
  `passport_file_path` varchar(255) DEFAULT NULL,
  `photo_file_path` varchar(255) DEFAULT NULL,
  `reference_id` bigint DEFAULT NULL,
  `search_kyc_status` varchar(255) DEFAULT NULL,
  `signature_file_path` varchar(255) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `voter_file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckyc_search_details`
--

LOCK TABLES `ckyc_search_details` WRITE;
/*!40000 ALTER TABLE `ckyc_search_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckyc_search_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gst_dts`
--

DROP TABLE IF EXISTS `gst_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gst_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ipadd` varchar(255) DEFAULT NULL,
  `updt_by` varchar(255) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_type` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `gst_ind` varchar(255) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `mark_as_viewed` tinyint(1) DEFAULT '0',
  `occupation_type` varchar(255) DEFAULT NULL,
  `pan_lead_name_match_score` double DEFAULT NULL,
  `pan_name` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `tin_number` varchar(255) DEFAULT NULL,
  `verify_by` varchar(255) DEFAULT NULL,
  `verify_date` datetime DEFAULT NULL,
  `verify_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gst_dts`
--

LOCK TABLES `gst_dts` WRITE;
/*!40000 ALTER TABLE `gst_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gst_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_dts`
--

DROP TABLE IF EXISTS `lead_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ipadd` varchar(255) DEFAULT NULL,
  `updt_by` varchar(255) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `aa_consent_status` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  `applicant_uniqid` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `bre_Final_status` varchar(255) DEFAULT NULL,
  `bre_temporary_final_status` varchar(255) DEFAULT NULL,
  `bureau_score` varchar(255) DEFAULT NULL,
  `case_module` varchar(255) DEFAULT NULL,
  `case_status` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `consent_status` varchar(255) DEFAULT NULL,
  `cust_cif_id` bigint DEFAULT NULL,
  `cust_mailid` varchar(255) DEFAULT NULL,
  `cust_mobile` bigint DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_pincode` bigint DEFAULT NULL,
  `dedupe_matche_applicant_unique_ids` longtext,
  `deviation_employee_id` varchar(255) DEFAULT NULL,
  `deviation_module_status` varchar(255) DEFAULT NULL,
  `disbursement_comments` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `fi_request_dt` datetime DEFAULT NULL,
  `fi_request_status` varchar(255) DEFAULT NULL,
  `fi_user_id` varchar(255) DEFAULT NULL,
  `salary_file_path` longtext,
  `final_status` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `from_module` varchar(255) DEFAULT NULL,
  `income_type_AA` varchar(255) DEFAULT NULL,
  `is_dedupe_match` varchar(255) DEFAULT NULL,
  `is_loan_scheme_edited` bit(1) DEFAULT NULL,
  `is_mail_send_to_dealer` varchar(255) DEFAULT NULL,
  `is_sign_check` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `karza_los_name_match_score` double DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `lead_date` datetime DEFAULT NULL,
  `lead_level_source_name` varchar(255) DEFAULT NULL,
  `lead_name` varchar(255) DEFAULT NULL,
  `lms_customer_id` bigint DEFAULT NULL,
  `lms_finance_id` bigint DEFAULT NULL,
  `lms_lead_id` bigint DEFAULT NULL,
  `loan_score` bigint DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `post_disbursal_comments` varchar(255) DEFAULT NULL,
  `rcu_waiver_doc_status` varchar(255) DEFAULT NULL,
  `ref_type` varchar(255) DEFAULT NULL,
  `repayment_mode` varchar(255) DEFAULT NULL,
  `sanction_id` bigint DEFAULT NULL,
  `sanction_letter__doc_file_path` varchar(255) DEFAULT NULL,
  `sanction_letter__pdf_file_path` varchar(255) DEFAULT NULL,
  `source_cifid` bigint DEFAULT NULL,
  `source_mobile` varchar(255) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `to_module` varchar(255) DEFAULT NULL,
  `tvr_remark` varchar(255) DEFAULT NULL,
  `tvr_status` varchar(255) DEFAULT NULL,
  `tvr_date` datetime DEFAULT NULL,
  `tvr_updated_by` varchar(255) DEFAULT NULL,
  `tvr_waiver` bit(1) DEFAULT NULL,
  `tvr_waiver_rule` varchar(255) DEFAULT NULL,
  `twin2_flag` bit(1) DEFAULT NULL,
  `twin2_status` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcgloc11xn47532twxa0a9rysx` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_dts`
--

LOCK TABLES `lead_dts` WRITE;
/*!40000 ALTER TABLE `lead_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `personal_id` bigint NOT NULL AUTO_INCREMENT,
  `aadhaar_number` varchar(255) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `annual_gross_income` double DEFAULT NULL,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `ifsc_number` varchar(255) DEFAULT NULL,
  `is_coapplicant` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `net_monthly_income` double DEFAULT NULL,
  `net_monthly_obligations` double DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `relation_with_mainapplicant` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `verified` bit(1) DEFAULT NULL,
  PRIMARY KEY (`personal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ipadd` varchar(255) DEFAULT NULL,
  `updt_by` varchar(255) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_collateral_value` double DEFAULT NULL,
  `max_loan_amount` double DEFAULT NULL,
  `max_tenure` int DEFAULT NULL,
  `min_collateral_value` double DEFAULT NULL,
  `min_loan_amount` double DEFAULT NULL,
  `min_tenure` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_master`
--

LOCK TABLES `product_master` WRITE;
/*!40000 ALTER TABLE `product_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 14:35:43
