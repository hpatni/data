-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: afx_signdesk
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
  `father_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `is_it_company_bank_account` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `monthly_income` double DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
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
-- Table structure for table `coapplicant_leads`
--

DROP TABLE IF EXISTS `coapplicant_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coapplicant_leads` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `applicant_type` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `bureau_score` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `coppalicant_uniqueid` varchar(255) DEFAULT NULL,
  `consent_status` varchar(255) DEFAULT NULL,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `cust_cif_id` bigint DEFAULT NULL,
  `copplicant_email` varchar(255) DEFAULT NULL,
  `copplicant_mobile` bigint DEFAULT NULL,
  `copplicant_name` varchar(255) DEFAULT NULL,
  `copplicant_pincode` bigint DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `salary_file_path` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_coapplicant` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `leadName` varchar(255) DEFAULT NULL,
  `lms_customer_id` bigint DEFAULT NULL,
  `lms_lead_id` bigint DEFAULT NULL,
  `mainapplicant_UniqueId` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `productId` bigint DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `tvr_remark` varchar(255) DEFAULT NULL,
  `tvr_status` varchar(255) DEFAULT NULL,
  `tvr_date` datetime DEFAULT NULL,
  `tvr_updated_by` varchar(255) DEFAULT NULL,
  `upadated_by` varchar(255) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coapplicant_leads`
--

LOCK TABLES `coapplicant_leads` WRITE;
/*!40000 ALTER TABLE `coapplicant_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `coapplicant_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_master`
--

DROP TABLE IF EXISTS `dealer_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealer_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `book_and_wait` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `dealer_code` varchar(255) DEFAULT NULL,
  `dealer_type` varchar(255) DEFAULT NULL,
  `dealer_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enach_pdc_days` bigint DEFAULT NULL,
  `fund_account_id` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `invoice_insurance_days` bigint DEFAULT NULL,
  `invoice_insurance_percentage` bigint DEFAULT NULL,
  `is_ta_statement_required` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `lead_source_Detail_id` bigint DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `manager_email` varchar(255) DEFAULT NULL,
  `manager_mobile_number` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `max_geo_limit` varchar(255) DEFAULT NULL,
  `max_tenure` bigint DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `nearest_landmark` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `pdd_days` bigint DEFAULT NULL,
  `pdd_percentage` bigint DEFAULT NULL,
  `pending_physical_file_days` bigint DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `point_of_contact_person` varchar(255) DEFAULT NULL,
  `ranking` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_master`
--

LOCK TABLES `dealer_master` WRITE;
/*!40000 ALTER TABLE `dealer_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealer_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esign_callback_dtls`
--

DROP TABLE IF EXISTS `esign_callback_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esign_callback_dtls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `creted_on` datetime DEFAULT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `docket_id` varchar(255) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `content` longtext,
  `status` varchar(255) DEFAULT NULL,
  `tiff_data` longtext,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hhtouakuu53m9nngc9ic7q2ee` (`docket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esign_callback_dtls`
--

LOCK TABLES `esign_callback_dtls` WRITE;
/*!40000 ALTER TABLE `esign_callback_dtls` DISABLE KEYS */;
/*!40000 ALTER TABLE `esign_callback_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estamp_callback_dtls`
--

DROP TABLE IF EXISTS `estamp_callback_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estamp_callback_dtls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `creted_on` datetime DEFAULT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `error_code` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `reference_id` varchar(255) DEFAULT NULL,
  `stamp_paper_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estamp_callback_dtls`
--

LOCK TABLES `estamp_callback_dtls` WRITE;
/*!40000 ALTER TABLE `estamp_callback_dtls` DISABLE KEYS */;
/*!40000 ALTER TABLE `estamp_callback_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_ref`
--

DROP TABLE IF EXISTS `family_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_ref` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addres` varchar(255) DEFAULT NULL,
  `applicant_uniqid` varchar(255) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `mobNo` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `tvr_remark` varchar(255) DEFAULT NULL,
  `tvr_status` varchar(255) DEFAULT NULL,
  `tvr_date` datetime DEFAULT NULL,
  `tvr_updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_ref`
--

LOCK TABLES `family_ref` WRITE;
/*!40000 ALTER TABLE `family_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gst_dts`
--

DROP TABLE IF EXISTS `gst_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gst_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `data_updated_api` varchar(255) DEFAULT NULL,
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
  `pan_address` varchar(255) DEFAULT NULL,
  `pan_lead_name_match_score` double DEFAULT NULL,
  `pan_name` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `pan_profile_data` bit(1) DEFAULT NULL,
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
  `aa_consent_status` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `agreement_no` varchar(255) DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  `applicant_uniqid` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `bre_Final_status` varchar(255) DEFAULT NULL,
  `bre_temporary_final_status` varchar(255) DEFAULT NULL,
  `bureau_bre_type` varchar(255) DEFAULT NULL,
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
  `disburse_lender_name` varchar(255) DEFAULT NULL,
  `disbursement_comments` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `fi_request_dt` datetime DEFAULT NULL,
  `fi_request_status` varchar(255) DEFAULT NULL,
  `fi_user_id` varchar(255) DEFAULT NULL,
  `salary_file_path` longtext,
  `final_status` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `from_module` varchar(255) DEFAULT NULL,
  `geo_location_out_of_service` bit(1) DEFAULT NULL,
  `income_type_AA` varchar(255) DEFAULT NULL,
  `is_dedupe_match` varchar(255) DEFAULT NULL,
  `is_loan_scheme_edited` bit(1) DEFAULT NULL,
  `is_mail_send_to_dealer` varchar(255) DEFAULT NULL,
  `is_sign_check` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `karza_los_name_match_score` double DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `lead_date` datetime DEFAULT NULL,
  `lead_level_source_name` varchar(255) DEFAULT NULL,
  `lead_name` varchar(255) DEFAULT NULL,
  `lms_customer_id` bigint DEFAULT NULL,
  `lms_finance_id` bigint DEFAULT NULL,
  `lms_lead_id` bigint DEFAULT NULL,
  `loan_score` bigint DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
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
  `tw_migrate` varchar(255) DEFAULT NULL,
  `tvr_remark` varchar(255) DEFAULT NULL,
  `tvr_status` varchar(255) DEFAULT NULL,
  `tvr_date` datetime DEFAULT NULL,
  `tvr_updated_by` varchar(255) DEFAULT NULL,
  `tvr_waiver` bit(1) DEFAULT NULL,
  `tvr_waiver_rule` varchar(255) DEFAULT NULL,
  `twin2_flag` bit(1) DEFAULT NULL,
  `twin2_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `leegality_esign_transaction_details`
--

DROP TABLE IF EXISTS `leegality_esign_transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leegality_esign_transaction_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `audit_trial_coapp` varchar(255) DEFAULT NULL,
  `audit_trial_gurantor` varchar(255) DEFAULT NULL,
  `audit_trial_mainapp` varchar(255) DEFAULT NULL,
  `esign_code` varchar(255) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `doc_file_path` varchar(255) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `esign_request` longtext,
  `esign_response` longtext,
  `is_coapplicant_signed` bit(1) DEFAULT NULL,
  `is_guarantor_signed` bit(1) DEFAULT NULL,
  `is_main_applicant_signed` bit(1) DEFAULT NULL,
  `esign_message` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `esign_status` varchar(255) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `webhook_error_code_coapp` varchar(255) DEFAULT NULL,
  `webhook_error_code_guarantor` varchar(255) DEFAULT NULL,
  `webhook_error_code_mainapp` varchar(255) DEFAULT NULL,
  `webhook_error_mainapp_request` longtext,
  `webhook_error_message_coapp` varchar(255) DEFAULT NULL,
  `webhook_error_message_guarantor` varchar(255) DEFAULT NULL,
  `webhook_error_message_mainapp` varchar(255) DEFAULT NULL,
  `webhook_success_coapp_request` longtext,
  `webhook_success_coapp_response` longtext,
  `webhook_success_guarantor_request` longtext,
  `webhook_success_guarantor_response` longtext,
  `webhook_success_mainapp_request` longtext,
  `webhook_success_mainapp_response` longtext,
  `webhook_error_coapp_request` longtext,
  `webhook_error_coapp_response` longtext,
  `webhook_error_guarantor_request` longtext,
  `webhook_error_guarantor_response` longtext,
  `webhook_error_mainapp_response` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leegality_esign_transaction_details`
--

LOCK TABLES `leegality_esign_transaction_details` WRITE;
/*!40000 ALTER TABLE `leegality_esign_transaction_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `leegality_esign_transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lender_profile_details`
--

DROP TABLE IF EXISTS `lender_profile_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lender_profile_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `field_id` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_type` varchar(255) DEFAULT NULL,
  `is_required` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lender_profile_details`
--

LOCK TABLES `lender_profile_details` WRITE;
/*!40000 ALTER TABLE `lender_profile_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `lender_profile_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lender_profile_mapping`
--

DROP TABLE IF EXISTS `lender_profile_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lender_profile_mapping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `default_invitee1_email` varchar(255) DEFAULT NULL,
  `default_invitee1_name` varchar(255) DEFAULT NULL,
  `default_invitee1_phone` varchar(255) DEFAULT NULL,
  `lender_name` varchar(255) DEFAULT NULL,
  `no_of_invitees` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lender_profile_mapping`
--

LOCK TABLES `lender_profile_mapping` WRITE;
/*!40000 ALTER TABLE `lender_profile_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `lender_profile_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_dts`
--

DROP TABLE IF EXISTS `loan_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `admin_fees` double DEFAULT NULL,
  `amount_selected` double DEFAULT NULL,
  `amt_requested` double DEFAULT NULL,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `brand_nm` varchar(255) DEFAULT NULL,
  `bureau_bre_rule` varchar(255) DEFAULT NULL,
  `bureau_charges` double DEFAULT NULL,
  `cif` bigint DEFAULT NULL,
  `convenience_charges` double DEFAULT NULL,
  `current_stage` varchar(255) DEFAULT NULL,
  `dateOf_birth` varchar(255) DEFAULT NULL,
  `dealer_charges` double DEFAULT NULL,
  `dealer_payout` double DEFAULT NULL,
  `dealer_payouttype` varchar(255) DEFAULT NULL,
  `dealer_subvention` double DEFAULT NULL,
  `dealer_name` varchar(255) DEFAULT NULL,
  `disbursed_amount` double DEFAULT NULL,
  `disbursed_date` datetime DEFAULT NULL,
  `down_payment` double DEFAULT NULL,
  `emi` float DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `entry_by` varchar(255) DEFAULT NULL,
  `entry_dt` datetime DEFAULT NULL,
  `ex_showroom` double DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `insurance_amt` double DEFAULT NULL,
  `is_opd_coverage` bit(1) DEFAULT NULL,
  `is_opd_coverage_added_in_loan` bit(1) DEFAULT NULL,
  `is_premiumamt` bit(1) DEFAULT NULL,
  `is_rsa` bit(1) DEFAULT NULL,
  `is_rsa_added_in_loan` bit(1) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `islife_insurance` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `loan_id` varchar(255) DEFAULT NULL,
  `ltv_grid_id` bigint DEFAULT NULL,
  `ltv_grid_percentage` double DEFAULT NULL,
  `ltv_grid_rule` varchar(255) DEFAULT NULL,
  `ltv_percentage` double DEFAULT NULL,
  `ltv_percentage_with_kli` double DEFAULT NULL,
  `ltv_percentage_without_kli` double DEFAULT NULL,
  `ltv_surrogate_rule` varchar(255) DEFAULT NULL,
  `max_amt` double DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `nach_charges` double DEFAULT NULL,
  `nach_charges_master` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ntc_ltv_bre_status` bit(1) DEFAULT NULL,
  `on_road_price` double DEFAULT NULL,
  `opd_coverage` double DEFAULT NULL,
  `opd_coverage_plan_id` varchar(255) DEFAULT NULL,
  `other_charges` double DEFAULT NULL,
  `pdd_charges` double DEFAULT NULL,
  `pf_amount_master` double DEFAULT NULL,
  `pf_amount_type` varchar(255) DEFAULT NULL,
  `pf_amount_type_master` varchar(255) DEFAULT NULL,
  `pre_emi` double DEFAULT NULL,
  `premium_amt` double DEFAULT NULL,
  `premium_amount_freeze` bit(1) DEFAULT NULL,
  `processing_fees` double DEFAULT NULL,
  `rateOfInterest` double DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `rsa_amount` double DEFAULT NULL,
  `rsa_plan_id` varchar(255) DEFAULT NULL,
  `sanction_date` datetime DEFAULT NULL,
  `scheme` varchar(255) DEFAULT NULL,
  `scheme_code` varchar(255) DEFAULT NULL,
  `scheme_dealer_name` varchar(255) DEFAULT NULL,
  `scheme_name` varchar(255) DEFAULT NULL,
  `stamp_duty` double DEFAULT NULL,
  `stamp_duty_master` double DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `sub_DealerName` varchar(255) DEFAULT NULL,
  `submodel` varchar(255) DEFAULT NULL,
  `tenure_requested` double DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `verified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_dts`
--

LOCK TABLES `loan_dts` WRITE;
/*!40000 ALTER TABLE `loan_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_dts` ENABLE KEYS */;
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
  `encrypted_aadhar_number` varchar(255) DEFAULT NULL,
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
-- Table structure for table `reporting_email_master`
--

DROP TABLE IF EXISTS `reporting_email_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporting_email_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asm_email_id` varchar(255) DEFAULT NULL,
  `asm_employee_id` varchar(255) DEFAULT NULL,
  `asm_employee_name` varchar(255) DEFAULT NULL,
  `bh_email_id` varchar(255) DEFAULT NULL,
  `bh_employee_id` varchar(255) DEFAULT NULL,
  `bh_employee_name` varchar(255) DEFAULT NULL,
  `fos_email_id` varchar(255) DEFAULT NULL,
  `fos_employee_id` varchar(255) DEFAULT NULL,
  `fos_employee_name` varchar(255) DEFAULT NULL,
  `is_user_active` bit(1) DEFAULT NULL,
  `sh_email_id` varchar(255) DEFAULT NULL,
  `sh_employee_id` varchar(255) DEFAULT NULL,
  `sh_employee_name` varchar(255) DEFAULT NULL,
  `sm_email_id` varchar(255) DEFAULT NULL,
  `sm_employee_id` varchar(255) DEFAULT NULL,
  `sm_employee_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporting_email_master`
--

LOCK TABLES `reporting_email_master` WRITE;
/*!40000 ALTER TABLE `reporting_email_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporting_email_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signer_info_dtls`
--

DROP TABLE IF EXISTS `signer_info_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signer_info_dtls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `docket_id` varchar(255) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `invitation_link` longtext,
  `reference_doc_id` varchar(255) DEFAULT NULL,
  `signer_id` varchar(255) DEFAULT NULL,
  `signer_ref_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signer_info_dtls`
--

LOCK TABLES `signer_info_dtls` WRITE;
/*!40000 ALTER TABLE `signer_info_dtls` DISABLE KEYS */;
/*!40000 ALTER TABLE `signer_info_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bill`
--

DROP TABLE IF EXISTS `utility_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `applicant_uniqueid` varchar(255) DEFAULT NULL,
  `bill_number` varchar(255) DEFAULT NULL,
  `bill_type` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `consumer_number` varchar(255) DEFAULT NULL,
  `dateOfBirth` varchar(255) DEFAULT NULL,
  `drivingLicenceNo` varchar(255) DEFAULT NULL,
  `epicNo` varchar(255) DEFAULT NULL,
  `fileNumber` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_path_back` varchar(255) DEFAULT NULL,
  `is_guarantor` bit(1) DEFAULT NULL,
  `is_mainapplicant` bit(1) DEFAULT NULL,
  `landline_city` varchar(255) DEFAULT NULL,
  `landline_number` varchar(255) DEFAULT NULL,
  `landmark1` varchar(255) DEFAULT NULL,
  `landmark2` varchar(255) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  `lpgid` varchar(255) DEFAULT NULL,
  `mark_as_viewed` tinyint(1) DEFAULT '0',
  `other_residance_type` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `rcu_utility_status` varchar(255) DEFAULT NULL,
  `residence_type` varchar(255) DEFAULT NULL,
  `service_provider` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `std` varchar(255) DEFAULT NULL,
  `telephoneCity` varchar(255) DEFAULT NULL,
  `telephoneNo` varchar(255) DEFAULT NULL,
  `utilityBillAuthResponseStatus` bit(1) DEFAULT NULL,
  `utility_name` varchar(255) DEFAULT NULL,
  `verify_by` varchar(255) DEFAULT NULL,
  `verify_date` datetime DEFAULT NULL,
  `verify_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bill`
--

LOCK TABLES `utility_bill` WRITE;
/*!40000 ALTER TABLE `utility_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_amt_tenure_dts`
--

DROP TABLE IF EXISTS `vehicle_amt_tenure_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_amt_tenure_dts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assecories` double DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `cc` bigint DEFAULT NULL,
  `ex_showroom` double DEFAULT NULL,
  `hpyn_charges` double DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `max_amt` double DEFAULT NULL,
  `mfg_year` bigint DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `on_road_price` double DEFAULT NULL,
  `other_charges` double DEFAULT NULL,
  `other_tax` double DEFAULT NULL,
  `rto` double DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `submodel` varchar(255) DEFAULT NULL,
  `subsidy` double DEFAULT NULL,
  `tenure` bigint DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `vehicle_class_id` bigint DEFAULT NULL,
  `Vehicle_class_variant_id` bigint DEFAULT NULL,
  `vehicle_make_id` bigint DEFAULT NULL,
  `vehicle_type_id` bigint DEFAULT NULL,
  `vehicle_brand` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_amt_tenure_dts`
--

LOCK TABLES `vehicle_amt_tenure_dts` WRITE;
/*!40000 ALTER TABLE `vehicle_amt_tenure_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_amt_tenure_dts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 13:25:51
