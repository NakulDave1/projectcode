-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: ketra-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_admin` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Mr. Admin','admin@gmail.com',NULL,'$2y$10$qzyBq54bJZ1K.k/eaUhPhOJl7yVxduYZkgENV2TQYY770VoN9C/K2','active',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_values`
--

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (1,'L','',2,NULL,NULL),(2,'S','',2,NULL,NULL),(3,'M','',2,NULL,NULL),(4,'XL','',2,NULL,NULL),(5,'White','#FFFFFF',1,NULL,NULL),(6,'Black','#000000',1,NULL,NULL),(7,'Red','#ff0000',1,NULL,NULL);
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_color` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'Color',1,NULL,NULL),(2,'Size',0,NULL,NULL),(3,'Brand',0,NULL,NULL);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_type` enum('home','popup','promo') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,NULL,NULL,'home','frontend/assets/images/banners/01.png','active','2023-01-24 11:51:08','2023-01-24 11:51:08'),(2,NULL,NULL,'home','frontend/assets/images/banners/02.jpg','active','2023-01-24 11:51:08','2023-01-24 11:51:08'),(3,NULL,NULL,'promo','frontend/assets/images/banners/promo-banner1.jpg','active','2023-01-24 11:51:08','2023-01-24 11:51:08'),(4,NULL,NULL,'promo','frontend/assets/images/banners/promo-banner2.jpg','active','2023-01-24 11:51:08','2023-01-24 11:51:08');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int DEFAULT '0',
  `position` int DEFAULT '0',
  `parent_id` int DEFAULT '0',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Wedding Dress','wedding-dress',NULL,'frontend/assets/images/icons/wedding-dress.svg',0,0,0,1,1,'active',NULL,NULL,NULL,'2023-01-24 11:51:08','2023-02-23 14:10:04'),(2,'Bridesmaid Dresses','bridesmaid-dresses',NULL,'frontend/assets/images/icons/bridesmaid.svg',0,2,0,1,1,'active',NULL,NULL,NULL,'2023-01-24 11:51:08','2023-01-24 11:51:08'),(5,'Special Occasions','special-occasions',NULL,'frontend/assets/images/icons/special.svg',0,5,0,1,0,'active',NULL,NULL,NULL,'2023-01-24 11:51:08','2023-01-24 11:51:08'),(9,'Men Accessories','men-accessories',NULL,NULL,0,0,0,0,0,'active',NULL,NULL,NULL,'2023-01-24 11:51:08','2023-02-24 00:00:29'),(11,'Luxury Collection','luxury-collection',NULL,NULL,1,0,2,0,0,'active',NULL,NULL,NULL,'2023-01-24 11:51:08','2023-01-24 11:51:08'),(12,'Men','men','backend/assets/img/category/men-1677181204-145.jpg','backend/assets/img/category/men-1677181204-308.jpg',0,1,0,0,0,'active','none','none',NULL,'2023-02-23 14:10:04','2023-02-23 14:10:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `value` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'New Year Offer','ABC1234','2023-01-27','2023-01-31','fixed','active',100.00,'2023-01-27 21:14:23','2023-01-27 21:15:09');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US dollar','$',1.00,'USD','frontend/assets/img/us-flag.jpg','frontend/assets/img/us-flag.jpg','active',NULL,NULL),(2,'Spain Euro','€',0.82,'SPA','frontend/assets/img/spain-flag.jpg','frontend/assets/img/spain-flag.jpg','active',NULL,NULL),(3,'Russian Ruble','₽',72.86,'RUS','frontend/assets/img/russia-flag.jpg','frontend/assets/img/russia-flag.jpg','active',NULL,NULL),(4,'France Euro','€',0.82,'FRA','frontend/assets/img/france-flag.jpg','frontend/assets/img/france-flag.jpg','active',NULL,NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_a_q_s`
--

DROP TABLE IF EXISTS `f_a_q_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `f_a_q_s` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_a_q_s`
--

LOCK TABLES `f_a_q_s` WRITE;
/*!40000 ALTER TABLE `f_a_q_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `f_a_q_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (7,'Full Moon in Pisces – Saturday, August 29, 2015.jpeg','lK0MF-1676912174.jpeg',1,'2023-02-20 11:26:15','2023-02-20 11:26:15'),(8,'realme-XT-review-pros-and-cons-india-14.jpg','y9gyY-1676912245.jpg',1,'2023-02-20 11:27:25','2023-02-20 11:27:25'),(9,'man1.jpg','lA1P0-1677216199.jpg',1,'2023-02-23 23:53:20','2023-02-23 23:53:20');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `app_id` int DEFAULT NULL,
  `app_user_id` int DEFAULT NULL,
  `file_width` int DEFAULT NULL,
  `file_height` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,'avatar','demo/general/avatar.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'avatar-2','demo/general/avatar-2.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'avatar-3','demo/general/avatar-3.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'ico_adventurous','demo/general/ico_adventurous.png',NULL,'image/png','png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'ico_localguide','demo/general/ico_localguide.png',NULL,'image/png','png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'ico_maps','demo/general/ico_maps.png',NULL,'image/png','png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'ico_paymethod','demo/general/ico_paymethod.png',NULL,'image/png','png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'logo','demo/general/logo.svg',NULL,'image/svg+xml','svg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'bg_contact','demo/general/bg-contact.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'favicon','demo/general/favicon.png',NULL,'image/png','png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'thumb-vendor-register','demo/general/thumb-vendor-register.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'bg-video-vendor-register1','demo/general/bg-video-vendor-register1.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'ico_chat_1','demo/general/ico_chat_1.svg',NULL,'image/svg','svg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'ico_friendship_1','demo/general/ico_friendship_1.svg',NULL,'image/svg','svg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'ico_piggy-bank_1','demo/general/ico_piggy-bank_1.svg',NULL,'image/svg','svg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'home-mix','demo/general/home-mix.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'image_home_mix_1','demo/general/image_home_mix_1.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'image_home_mix_2','demo/general/image_home_mix_2.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'image_home_mix_3','demo/general/image_home_mix_3.jpg',NULL,'image/jpeg','jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_01_01_000001_create_admins_table',1),(5,'2021_01_12_074306_create_banners_table',1),(6,'2021_01_15_162252_create_categories_table',1),(7,'2021_01_17_050422_create_products_table',1),(8,'2021_01_30_045614_create_coupons_table',1),(9,'2021_01_31_104325_create_orders_table',1),(10,'2021_02_04_035507_create_shippings_table',1),(11,'2021_02_10_161501_create_product_attributes_table',1),(12,'2021_02_11_115831_create_product_reviews_table',1),(13,'2021_02_23_084922_create_product_orders_table',1),(14,'2021_02_25_091025_create_settings_table',1),(15,'2021_04_12_155631_create_currencies_table',1),(16,'2021_04_25_121025_create_subscribes_table',1),(17,'2021_05_13_135936_create_media_table',1),(18,'2021_05_18_175912_create_wishlists_table',1),(19,'2021_05_24_095153_create_attributes_table',1),(20,'2021_06_05_181249_create_f_a_q_s_table',1),(21,'2021_06_06_025550_create_why_chooses_table',1),(22,'2021_06_06_132026_create_contact_messages_table',1),(23,'2021_06_13_034706_create_shipping_addresses_table',1),(24,'2021_06_13_035342_create_order_details_table',1),(25,'2021_10_25_151521_create_roles_table',1),(26,'2021_10_25_151715_create_staff_table',1),(27,'2021_12_03_040115_create_attribute_values_table',1),(28,'2021_12_04_113908_create_product_variations_table',1),(29,'2021_12_04_114002_create_product_variation_combinations_table',1),(30,'2021_12_04_114428_create_product_attribute_values_table',1),(31,'2022_02_01_142250_create_product_stocks_table',1),(32,'2022_02_02_175447_create_media_files_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` int DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `variation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_method_id` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,4,'{\"id\":4,\"title\":\"Prajwal product\",\"slug\":\"prajwal-product\",\"summary\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><br><\\/p>\",\"description\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br><\\/p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span>\",\"features\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br><\\/p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span>\",\"current_stock\":0,\"product_label\":\"hot\",\"cat_ids\":1,\"unit\":\"pc\",\"min_qty\":10,\"refundable\":1,\"thumbnail_image\":\"storage\\/images\\/products\\/1-1674756662.png\",\"images\":\"[\\\"storage\\\\\\/images\\\\\\/products\\\\\\/1-1674756766.jpg\\\",\\\"storage\\\\\\/images\\\\\\/products\\\\\\/1-1674756789.jpg\\\",null,null,null,null]\",\"is_featured\":1,\"unit_price\":\"1200.00\",\"purchase_price\":\"1000.00\",\"discount\":\"200.00\",\"discount_type\":\"amount\",\"colors\":\"[\\\"#FFFFFF\\\",\\\"#000000\\\"]\",\"variant_products\":0,\"attributes\":\"[\\\"2\\\"]\",\"choice_options\":\"[{\\\"attribute_id\\\":\\\"2\\\",\\\"values\\\":[\\\"L\\\",\\\"S\\\"]}]\",\"variation\":\"[]\",\"processing_time\":null,\"shipping_time\":null,\"user_id\":1,\"added_by\":\"admin\",\"status\":\"active\",\"meta_title\":\"Prajwal product\",\"meta_keywords\":null,\"meta_description\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><br><\\/p>\",\"deleted_at\":null,\"created_at\":\"2023-01-26T18:13:41.000000Z\",\"updated_at\":\"2023-01-26T18:13:41.000000Z\"}',4,2400.00,800.00,'White-S',NULL,1,NULL,'2023-01-27 21:39:39','2023-01-27 21:39:39'),(2,1,5,'{\"id\":5,\"title\":\"Prajwal product\",\"slug\":\"prajwal-product-uprrV\",\"summary\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><br><\\/p>\",\"description\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br><\\/p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span>\",\"features\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br><\\/p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span>\",\"current_stock\":0,\"product_label\":\"hot\",\"cat_ids\":1,\"unit\":\"pc\",\"min_qty\":10,\"refundable\":1,\"thumbnail_image\":\"storage\\/images\\/products\\/1-1674756662.png\",\"images\":\"[\\\"storage\\\\\\/images\\\\\\/products\\\\\\/1-1674756766.jpg\\\",\\\"storage\\\\\\/images\\\\\\/products\\\\\\/1-1674756789.jpg\\\",null,null,null,null]\",\"is_featured\":1,\"unit_price\":\"1200.00\",\"purchase_price\":\"1000.00\",\"discount\":\"200.00\",\"discount_type\":\"amount\",\"colors\":\"[\\\"#FFFFFF\\\",\\\"#000000\\\"]\",\"variant_products\":1,\"attributes\":\"[\\\"2\\\"]\",\"choice_options\":\"[{\\\"attribute_id\\\":\\\"2\\\",\\\"values\\\":[\\\"L\\\",\\\"S\\\"]}]\",\"variation\":\"[]\",\"processing_time\":null,\"shipping_time\":null,\"user_id\":1,\"added_by\":\"admin\",\"status\":\"active\",\"meta_title\":\"Prajwal product\",\"meta_keywords\":null,\"meta_description\":\"<p><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">Hi,<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">:<\\/span><br style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\"><span style=\\\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\\\">there is around approx. 10-12 Ready functionals Forms where you need to add\\/remove some text fields and need some functionally changes\\/add-on etc.<\\/span><br><\\/p>\",\"deleted_at\":null,\"created_at\":\"2023-01-26T18:24:07.000000Z\",\"updated_at\":\"2023-01-26T18:24:07.000000Z\"}',2,600.00,400.00,'Black-S',NULL,1,NULL,'2023-01-27 21:39:39','2023-01-27 21:39:39');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `order_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `subtotal` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` enum('pending','process','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `delivery_charge` double(8,2) DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '0',
  `coupon` double(8,2) DEFAULT '0.00',
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scountry` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spostcode` int DEFAULT NULL,
  `sstate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saddress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saddress2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_number_unique` (`order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'KETRA-1000',3000.00,3000.00,'cod','unpaid','pending',NULL,100.00,2,100.00,'Prajwal','Rai','prajwal.iar@gmail.com','+9773568684364','Nepal',31091,'Koshi','Kadaghari','Kadaghari','Nepal',31091,'Koshi','Kadaghari',NULL,'Can u delivery within this week.','2023-02-20 11:25:15','2023-01-27 21:39:39','2023-02-20 11:25:15');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('nakuldavect19@acropolis.in','$2y$10$aW5/v1VsKy.LFlC2JvihQuR9TGmd2InXoNcAiMOus9WvyEm9F.HqC','2023-02-23 13:49:30');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute_values`
--

DROP TABLE IF EXISTS `product_attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `attribute_value_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute_values`
--

LOCK TABLES `product_attribute_values` WRITE;
/*!40000 ALTER TABLE `product_attribute_values` DISABLE KEYS */;
INSERT INTO `product_attribute_values` VALUES (1,4,1,5,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(2,4,1,6,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(3,4,2,1,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(4,4,2,2,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(5,5,1,5,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(6,5,1,6,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(7,5,2,1,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(8,5,2,2,'2023-01-26 12:39:07','2023-01-26 12:39:07');
/*!40000 ALTER TABLE `product_attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
INSERT INTO `product_attributes` VALUES (1,4,1,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(2,4,2,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(3,5,1,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(4,5,2,'2023-01-26 12:39:07','2023-01-26 12:39:07');
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_orders`
--

DROP TABLE IF EXISTS `product_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_orders_product_id_foreign` (`product_id`),
  KEY `product_orders_order_id_foreign` (`order_id`),
  CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_orders`
--

LOCK TABLES `product_orders` WRITE;
/*!40000 ALTER TABLE `product_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `rate` double(8,2) NOT NULL DEFAULT '0.00',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_product_id_foreign` (`product_id`),
  CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (1,'Prajwal R.',1,2.50,'Hello Just testing','active','2023-01-25 08:47:42','2023-01-25 08:47:42');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `variant` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(20,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stocks`
--

LOCK TABLES `product_stocks` WRITE;
/*!40000 ALTER TABLE `product_stocks` DISABLE KEYS */;
INSERT INTO `product_stocks` VALUES (1,4,'White-L',800.00,111,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(2,4,'White-S',600.00,111,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(3,4,'Black-L',400.00,111,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(4,4,'Black-S',300.00,111,'2023-01-26 12:28:41','2023-01-26 12:28:41'),(5,5,'White-L',800.00,111,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(6,5,'White-S',600.00,111,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(7,5,'Black-L',400.00,111,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(8,5,'Black-S',300.00,111,'2023-01-26 12:39:07','2023-01-26 12:39:07'),(9,6,'Black-XL',31.00,12,'2023-02-20 11:32:24','2023-02-20 11:32:24'),(10,7,'Black-M',119.00,20,'2023-02-23 23:55:05','2023-02-23 23:55:05'),(11,7,'Black-XL',129.00,20,'2023-02-23 23:55:05','2023-02-23 23:55:05');
/*!40000 ALTER TABLE `product_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation_combinations`
--

DROP TABLE IF EXISTS `product_variation_combinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation_combinations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `product_variation_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `attribute_value_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation_combinations`
--

LOCK TABLES `product_variation_combinations` WRITE;
/*!40000 ALTER TABLE `product_variation_combinations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variation_combinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_stock` int NOT NULL DEFAULT '0',
  `product_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_ids` bigint unsigned NOT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_qty` int DEFAULT '1',
  `refundable` tinyint NOT NULL DEFAULT '1',
  `thumbnail_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(1) DEFAULT '0',
  `unit_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) DEFAULT '0.00',
  `discount_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant_products` tinyint(1) NOT NULL DEFAULT '0',
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `choice_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `processing_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '1',
  `added_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Canon EOS185','canon-eos185','<p>The biggest change in the\\u00a0<strong>Canon EOS 1500D</strong>\\u00a0is the sensor resolution.</p>','<p>The biggest change in the\\u00a0<strong>Canon EOS 1500D</strong>\\u00a0is the sensor resolution. It\'s now a 24.1-megapixel APS-C sensor, compared to the 18-megapixel APS-C sensor on the 1300D. ... Just like the 1300D, the\\u00a0<strong>EOS 1500D<\\/strong>\\u00a0features NFC and Wi-Fi for connecting it to your smartphone<\\/p>',NULL,100,'new',2,'pc',5,0,'frontend/assets/images/products/1.jpg',NULL,1,324.36,324.36,0.00,'amount','[]',0,'null','[]',NULL,NULL,NULL,1,'admin','active',NULL,NULL,NULL,'2023-02-23 23:59:53','2023-01-24 11:51:08','2023-02-23 23:59:53'),(2,'Test Product','test-product','<p>The biggest change in the\\u00a0<strong>Canon EOS 1500D</strong>\\u00a0is the sensor resolution.</p>','<p>The biggest change in the\\u00a0<strong>Canon EOS 1500D</strong>\\u00a0is the sensor resolution. It\'s now a 24.1-megapixel APS-C sensor, compared to the 18-megapixel APS-C sensor on the 1300D. ... Just like the 1300D, the\\u00a0<strong>EOS 1500D<\\/strong>\\u00a0features NFC and Wi-Fi for connecting it to your smartphone<\\/p>',NULL,100,'new',1,'pc',5,0,'frontend/assets/images/products/2.jpg',NULL,1,100.00,90.00,10.00,'amount','[]',0,'null','[]',NULL,NULL,NULL,1,'admin','active',NULL,NULL,NULL,'2023-02-23 23:59:53','2023-01-24 11:51:08','2023-02-23 23:59:53'),(3,'Test Product 2','test-product-2','<p>The biggest change in the\\u00a0<strong>Canon EOS 1500D</strong>\\u00a0is the sensor resolution.</p>','<p>The biggest change in the\\u00a0<strong>Canon EOS 1500D</strong>\\u00a0is the sensor resolution. It\'s now a 24.1-megapixel APS-C sensor, compared to the 18-megapixel APS-C sensor on the 1300D. ... Just like the 1300D, the\\u00a0<strong>EOS 1500D<\\/strong>\\u00a0features NFC and Wi-Fi for connecting it to your smartphone<\\/p>',NULL,100,'new',2,'pc',5,0,'frontend/assets/images/products/3.jpg',NULL,1,1000.00,500.00,50.00,'percent','[]',0,'null','[]',NULL,NULL,NULL,1,'admin','active',NULL,NULL,NULL,'2023-02-23 23:59:53','2023-01-24 11:51:08','2023-02-23 23:59:53'),(4,'product','product','<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><br></p>','<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br></p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span>','<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br></p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span>',0,'hot',1,'pc',10,1,'storage/images/products/1-1674756662.png','[\"storage\\/images\\/products\\/1-1674756766.jpg\",\"storage\\/images\\/products\\/1-1674756789.jpg\",null,null,null,null]',1,1200.00,1000.00,200.00,'amount','[\"#FFFFFF\",\"#000000\"]',0,'[\"2\"]','[{\"attribute_id\":\"2\",\"values\":[\"L\",\"S\"]}]','[]',NULL,NULL,1,'admin','active','Prajwal product',NULL,'<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><br></p>','2023-02-23 23:59:53','2023-01-26 12:28:41','2023-02-23 23:59:53'),(5,'product','product-uprrV','<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><br></p>','<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br></p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span>','<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br></p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span>',0,'hot',1,'pc',10,1,'storage/images/products/1-1674756662.png','[\"storage\\/images\\/products\\/1-1674756766.jpg\",\"storage\\/images\\/products\\/1-1674756789.jpg\",null,null,null,null]',1,1200.00,1000.00,200.00,'amount','[\"#FFFFFF\",\"#000000\"]',1,'[\"2\"]','[{\"attribute_id\":\"2\",\"values\":[\"L\",\"S\"]}]','[]',NULL,NULL,1,'admin','active','Prajwal product',NULL,'<p><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">Hi,</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">I am looking for experienced laravel php web developer for some simple customisation on readymade POS system</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">:</span><br style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\"><span style=\"color: rgb(0, 30, 0); font-family: &quot;Neue Montreal&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.6px;\">there is around approx. 10-12 Ready functionals Forms where you need to add/remove some text fields and need some functionally changes/add-on etc.</span><br></p>','2023-02-23 23:59:53','2023-01-26 12:39:07','2023-02-23 23:59:53'),(6,'phone','phone','<p>scsdcsdcdscdsc<br></p>','<p>scasasdas<br></p>','<p>acasdasdd<br></p>',0,'new',6,NULL,NULL,1,'storage/images/products/y9gyY-1676912245.jpg','[\"storage\\/images\\/products\\/lK0MF-1676912174.jpeg\",null,null,null,null,null]',1,31.00,28.52,8.00,'percent','[\"#000000\"]',1,'[\"2\"]','[{\"attribute_id\":\"2\",\"values\":[\"XL\"]}]','[]',NULL,NULL,1,'admin','active','5','5','5','2023-02-23 23:59:53','2023-02-20 11:32:24','2023-02-23 23:59:53'),(7,'Men Color Block Round Neck Black T-Shirt','men-color-block-round-neck-black-t-shirt','<h1 class=\"yhB1nd\"><span class=\"B_NuCI\">Men Color Block Round Neck Black T-Shirt</span></h1><p></p>','<h1 class=\"yhB1nd\"><span class=\"B_NuCI\">Men Color Block Round Neck Black T-Shirt</span></h1><p></p>','<h1 class=\"yhB1nd\"><span class=\"B_NuCI\">Men Color Block Round Neck Black T-Shirt</span></h1><p></p>',0,'new',12,NULL,NULL,0,'storage/images/products/lA1P0-1677216199.jpg','[\"storage\\/images\\/products\\/lA1P0-1677216199.jpg\",null,null,null,null,null]',1,110.00,109.00,1.00,'amount','[\"#000000\"]',1,'[\"2\"]','[{\"attribute_id\":\"2\",\"values\":[\"M\",\"XL\"]}]','[]',NULL,NULL,1,'admin','active','Men Color Block Round Neck Black T-Shirt','Men , Blacck ,Round ,Neck, Black, T-Shirt','<h1 class=\"yhB1nd\"><span class=\"B_NuCI\">Men Color Block Round Neck Black T-Shirt</span></h1><p></p>',NULL,'2023-02-23 23:55:04','2023-02-23 23:55:05');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `system_version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1.0',
  `website_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT '0',
  `recaptcha_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitors` int NOT NULL DEFAULT '0',
  `copyright_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '© Copyrights 2023. All rights reserved.',
  `about_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `return_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_payment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms_conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancellation_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paypal_sandbox` tinyint(1) NOT NULL DEFAULT '1',
  `delivery_time` int NOT NULL DEFAULT '20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Shopping Site','online Shopping ','Shopping, Fashion dress, ecommerce','backend/assets/images/logo.png','','9425897084','None','none@gmail.com','India','INR','1.0',NULL,'https://facebook.com/','https://instagram.com/','https://twitter.com/','https://youtube.com/',0,NULL,NULL,8,'G-5','{\"description1\":\"Testing\",\"description2\":\"Hello\",\"image1\":\"1674697447-Category01.png\",\"image1_path\":\"storage\\/frontend\\/images\\/settings\\/1674697447-Category01.png\",\"image2\":\"1674697447-Category02.png\",\"image2_path\":\"storage\\/frontend\\/images\\/settings\\/1674697447-Category02.png\"}',NULL,NULL,NULL,'Terms and condition','Cancellation page.',0,20,NULL,'2023-02-23 23:44:19');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scountry` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spostcode` int DEFAULT NULL,
  `sstate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saddress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saddress2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipping_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `shipping_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` double(8,2) NOT NULL DEFAULT '0.00',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES (1,'MP','4-5 days',100.00,'active',NULL,NULL),(2,'India','8-9 days',300.00,'active',NULL,NULL);
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribes_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mr. Customer','Customer','customer@gmail.com',NULL,'$2y$10$44yt.jK.hlMiruipMfqyBunuimcpokCqD1PHJ6wKk4ZDIoUm2rqE6',NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL),(2,'Nakul',NULL,'nakuldavect19@acropolis.in',NULL,'$2y$10$s/5JVD6au6Coh7PK/O78S.kXg2sRElBhH.9ZRsYEXG0dYzLMZnt9C',NULL,NULL,NULL,'active',NULL,NULL,NULL,'2023-02-23 13:31:55','2023-02-23 13:31:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `why_chooses`
--

DROP TABLE IF EXISTS `why_chooses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `why_chooses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `why_chooses`
--

LOCK TABLES `why_chooses` WRITE;
/*!40000 ALTER TABLE `why_chooses` DISABLE KEYS */;
/*!40000 ALTER TABLE `why_chooses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`),
  KEY `wishlists_product_id_foreign` (`product_id`),
  CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,2,5,'2023-02-23 13:57:37','2023-02-23 13:57:37');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-24 11:49:59
