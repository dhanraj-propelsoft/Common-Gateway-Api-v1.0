/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.28-MariaDB : Database - propelmainv1.1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `cf010be6-0738-4029-a61f-5a389cdc8bae` */

DROP TABLE IF EXISTS `cf010be6-0738-4029-a61f-5a389cdc8bae`;

CREATE TABLE `cf010be6-0738-4029-a61f-5a389cdc8bae` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(191) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `default_org` int(11) NOT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cf010be6-0738-4029-a61f-5a389cdc8bae` */

insert  into `cf010be6-0738-4029-a61f-5a389cdc8bae`(`id`,`uid`,`organization_id`,`default_org`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'cf010be6-0738-4029-a61f-5a389cdc8bae',7,1,1,NULL,NULL,NULL,NULL),
(2,'cf010be6-0738-4029-a61f-5a389cdc8bae',8,0,1,NULL,NULL,NULL,NULL),
(3,'cf010be6-0738-4029-a61f-5a389cdc8bae',9,0,1,NULL,NULL,NULL,NULL);

/*Table structure for table `com_property_addresses` */

DROP TABLE IF EXISTS `com_property_addresses`;

CREATE TABLE `com_property_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pims_com_address_type_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `door_no` varchar(255) DEFAULT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `land_mark` varchar(255) DEFAULT NULL,
  `pims_com_district_id` int(11) DEFAULT NULL,
  `pims_com_city_id` int(11) DEFAULT NULL,
  `pims_com_state_id` int(11) DEFAULT NULL,
  `pims_com_country_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `google_link` text DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `com_property_addresses` */

insert  into `com_property_addresses`(`id`,`pims_com_address_type_id`,`address`,`door_no`,`building_name`,`pin`,`area`,`street`,`land_mark`,`pims_com_district_id`,`pims_com_city_id`,`pims_com_state_id`,`pims_com_country_id`,`location`,`google_link`,`latitude`,`longitude`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(2,NULL,NULL,NULL,NULL,NULL,'Air Port','TVS',NULL,NULL,NULL,NULL,NULL,'Trichy',NULL,NULL,NULL,NULL,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(7,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(8,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(9,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(10,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(11,'2',NULL,'Cupidatat nostrud re','Elmo Slater','123','1','Et voluptate volupta','Molestiae et ea mini',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(12,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 10:24:25','2023-10-12 10:24:25',NULL),
(13,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 11:09:22','2023-10-12 11:09:22',NULL),
(14,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2023-10-12 11:09:22','2023-10-12 11:09:22',NULL),
(15,NULL,NULL,NULL,NULL,NULL,'jamal tollgate','Junction',NULL,NULL,NULL,NULL,NULL,'Khaja malai',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(16,NULL,NULL,NULL,NULL,NULL,'jamal tollgate','Junction',NULL,NULL,NULL,NULL,NULL,'Khaja malai',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(17,NULL,NULL,NULL,NULL,NULL,'jamal tollgate','Junction',NULL,NULL,NULL,NULL,NULL,'Khaja malai',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(18,NULL,NULL,NULL,NULL,NULL,'jamal tollgate','Junction',NULL,NULL,NULL,NULL,NULL,'Khaja malai',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(19,NULL,NULL,NULL,NULL,NULL,'jamal tollgate','Junction',NULL,NULL,NULL,NULL,NULL,'Khaja malai',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(20,NULL,NULL,NULL,NULL,NULL,'jamal tollgate','Junction',NULL,NULL,NULL,NULL,NULL,'Khaja malai',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(21,NULL,NULL,NULL,NULL,NULL,'Ut sed enim rerum co','Laudantium est maxi',NULL,NULL,NULL,NULL,NULL,'Suscipit beatae amet',NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL),
(22,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(23,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(24,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(25,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(26,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(27,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(28,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(29,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(30,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(31,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(32,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(33,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(34,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(35,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(36,'1',NULL,'f3','IT Park','622 515','1','TVS','BDU',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(191) NOT NULL,
  `primary_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `pfm_stage_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `members` */

insert  into `members`(`id`,`uid`,`primary_mobile`,`primary_email`,`password`,`pfm_stage_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(2,'383c8fe6-4085-47a5-88f8-414f607bc2b7','8838721805','harish@gmail.com','$2y$10$l3s3WRZjS3tvyuHNhUCMzu5V75k6zhrBFrCGCjD.S.IZpNkcq.Dm6',1,1,NULL,'2023-11-06 08:57:55','2023-11-27 12:03:33',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2023_09_07_084301_create_pfm_origin',1),
(2,'2023_09_07_084340_create_pfm_existence',1),
(3,'2023_09_07_084447_create_pfm_depone_status',1),
(4,'2023_09_07_084506_create_pfm_cachet',1),
(5,'2023_09_07_084524_create_pfm_validation',1),
(6,'2023_09_07_084931_create_pfm_person_stage',1),
(7,'2023_09_07_084948_create_pfm_active_status',1),
(8,'2023_09_07_085454_create_pfm_survival',1),
(9,'2023_09_11_083349_create_subscriber',2),
(10,'2023_09_11_083932_create_subscribers',3),
(12,'2023_09_12_042906_create_temp_organizations',4),
(13,'2023_10_20_084553_create_audio_table',5),
(14,'2023_10_27_041706_create_permission_tables',6),
(15,'2023_10_27_065639_laratrust_setup_tables',7),
(17,'2023_11_04_083746_create_permissions_table',8),
(18,'2023_11_06_084509_create_member_table',9),
(19,'2023_11_06_085434_create_members_table',10);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('070a2ae4ab407917f96c1294c40cce183f6f78c48319dc7110e4c1e482350b1f5bd48e1543500f84',2,2,'Laravel Password Grant Client','[]',0,'2023-11-06 11:22:29','2023-11-06 11:22:29','2024-11-06 11:22:29'),
('1342dfe673e65f018624c14b0e06089a7ede0a9d70347015f3a1d402a3b3056a9a891960a730d2ca',1,2,'Laravel Password Grant Client','[]',0,'2023-11-10 06:19:51','2023-11-10 06:19:51','2024-11-10 06:19:51'),
('17e2f11fa298969a5bf4aa6c4319789d7d5183c395f471c37d712b6f5ae162b718f1f1960d4999a1',1,2,'Laravel Password Grant Client','[]',0,'2023-11-13 06:55:47','2023-11-13 06:55:47','2024-11-13 06:55:47'),
('1a34dcdb2152eada632bbd1e13fd6b6621c63b6843b73f4bf157986e8b829e05ed3b3b5bc7a99ebe',1,2,'Laravel Password Grant Client','[]',0,'2023-11-10 04:09:03','2023-11-10 04:09:03','2024-11-10 04:09:03'),
('1d2059e7d1d318866412aaa4eda20d2574547cf9f8f30a742f3b06c72dfa3dd1d84aad66559f061c',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 09:43:55','2023-12-01 09:43:55','2024-12-01 09:43:55'),
('2249783859c464032fb7767b3f93f2609ceda935d106925c6c914293f54ef6bbdf67ef30f52aa499',1,2,'Laravel Password Grant Client','[]',1,'2023-11-13 09:31:01','2023-11-13 09:31:01','2024-11-13 09:31:01'),
('265eeccdb29cba1121bbff9b7db32c9939a03cde85d5458ad35388cafccc8cef94d1c885e5405915',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 04:43:02','2023-12-01 04:43:02','2024-12-01 04:43:02'),
('26617533a6a616b10868575b33517641749cea50a5363f8a3022bfc7b67d08a6b32e52b407fd6809',2,4,'Laravel Password Grant Client','[]',0,'2023-12-02 08:47:19','2023-12-02 08:47:19','2024-12-02 08:47:19'),
('266a73617a573cf23665b6b3f86f3fdd295102349ddcf0e43d6bad60a1e00f601ab9d2116be1d72b',2,4,'Laravel Password Grant Client','[]',0,'2023-12-05 05:05:50','2023-12-05 05:05:50','2024-12-05 05:05:50'),
('30762dd0352482bd127f6d8574dec6cc6b34a33be62914a925ac29b9b87e8dbf31b9c4f85120eaf4',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 04:49:38','2023-12-01 04:49:38','2024-12-01 04:49:38'),
('334ac7c9a9e667b78369517cb76b888ebd112326fd6ef861a2233d107ef7aa3636905adce078c4d6',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 09:20:01','2023-12-01 09:20:01','2024-12-01 09:20:01'),
('3b51408cfc2a15d942c9775bd84203fd88fbaa1015505de78c380f70b85ab71808b106d915646042',2,4,'Laravel Password Grant Client','[]',0,'2023-11-30 08:42:00','2023-11-30 08:42:00','2024-11-30 08:42:00'),
('3cb4e5331b11022ac8f39bd6e325d2e8e3699652215cbb276ccefc9f092cde92caea79ce9365c6f4',1,2,'Laravel Password Grant Client','[]',0,'2023-11-13 09:27:16','2023-11-13 09:27:16','2024-11-13 09:27:16'),
('3d5057843678c3ac9dbaddc8b2fe0e8374c8cccbd3f71beedf2b62a7ff70a9fe24eafb6e74426470',2,4,'Laravel Password Grant Client','[]',0,'2023-12-02 09:33:39','2023-12-02 09:33:39','2024-12-02 09:33:39'),
('3f614600ab07d5f2fe4eb132c8d736798ecddc43885ccb5995d9fdf3a45802f2164714db5fbe65d1',2,4,'Laravel Password Grant Client','[]',0,'2023-12-02 10:56:43','2023-12-02 10:56:43','2024-12-02 10:56:43'),
('45e2867225737a794306c8a83e920b19fb11d5cd8cec2767b26fb025291b82b390c44d046b62435b',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 09:37:49','2023-12-01 09:37:49','2024-12-01 09:37:49'),
('4bcb4ac9c64aba2dc13351c14e564862a9c92b8bc161148e9f17ffd11bf7a5b5857f553bbe82259c',1,2,'Laravel Password Grant Client','[]',0,'2023-11-17 04:46:18','2023-11-17 04:46:18','2024-11-17 04:46:18'),
('4e16894f8199df9bb7bf563e293ae2dec6ab7258f489f21031dc76585928936c381feb6947c93c02',2,4,'Laravel Password Grant Client','[]',1,'2023-11-30 09:04:52','2023-11-30 09:04:52','2024-11-30 09:04:52'),
('56a578c6ecaa7cc426058cea5e50367ef84abd9a439835cb43f3c6f6057ea439f01ac9a6cd7d082c',2,2,'Laravel Password Grant Client','[]',0,'2023-11-10 06:45:13','2023-11-10 06:45:13','2024-11-10 06:45:13'),
('5fc4685d2a70679bc283af8ee58854ad125d286fef4257fef692e65d693e8d3c9ee3437a5c7ae06b',2,4,'Laravel Password Grant Client','[]',0,'2023-11-30 08:58:57','2023-11-30 08:58:57','2024-11-30 08:58:57'),
('608991b0882d327683f5708e2192379f12e00f5783d02a7530137b17c27a50112275901e58fe4215',1,2,'Laravel Password Grant Client','[]',0,'2023-11-14 05:05:19','2023-11-14 05:05:19','2024-11-14 05:05:19'),
('66accb13e87d862196c9d5cda593329920530cd7dbde82d2fe70625424458e1d73e0b8a3fba5ea66',2,4,'Laravel Password Grant Client','[]',0,'2023-11-22 09:41:39','2023-11-22 09:41:39','2024-11-22 09:41:39'),
('7a7f8fb1df286898c23c09a9ae2fb1b84413521261cfda46513ab993a9547739cd5321502d5b8544',2,4,'Laravel Password Grant Client','[]',1,'2023-11-30 08:46:20','2023-11-30 08:46:20','2024-11-30 08:46:20'),
('7b14b9d82614f40777ecf2f88c8fe9afecec21cf6c905ff503055e3da124486dcf52544b60ce19bc',2,2,'Laravel Password Grant Client','[]',0,'2023-11-06 11:22:17','2023-11-06 11:22:17','2024-11-06 11:22:17'),
('7e76b261a88a71de612e577cf7bf405d0071968d28c3063ac4d9bc40ede54cea0bd7619bd7c2bbdd',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 10:39:23','2023-12-01 10:39:23','2024-12-01 10:39:23'),
('83bbc05322102fed4951b89b3ba86a4aed4cbb21adfb15e139d4315b1095e0455fb049d31219eeec',2,4,'Laravel Password Grant Client','[]',0,'2023-12-02 04:17:54','2023-12-02 04:17:54','2024-12-02 04:17:54'),
('a2534dffad96e0e3da0a6ae404314843c391d5385e15f8ad8e0fe4bacdcc1d9913fdd5185ea70896',2,4,'Laravel Password Grant Client','[]',0,'2023-11-30 08:30:27','2023-11-30 08:30:27','2024-11-30 08:30:27'),
('aac8632c22b1e9c7daf80e78a4ae44d7a1c1758826d7713667f8953689b7e3076172887da158db94',1,2,'Laravel Password Grant Client','[]',0,'2023-11-13 09:29:18','2023-11-13 09:29:18','2024-11-13 09:29:18'),
('b3b0d112ac22a2291af0864fd06160ac472c3e2b869f494f9c2c6f7f22f29704da3a33f22db5ab78',2,4,'Laravel Password Grant Client','[]',0,'2023-11-22 09:40:14','2023-11-22 09:40:14','2024-11-22 09:40:14'),
('b841114462f665b0aa8e55ee566484b8e3d5da365acd9c52a808f07d148af15b385cb24b7206901a',2,4,'Laravel Password Grant Client','[]',0,'2023-11-22 09:40:01','2023-11-22 09:40:01','2024-11-22 09:40:01'),
('ce50870beb6be7d34742ccf220c57f7b9faa931c49d4bc2d004e198076442a4862e2f6b75224d924',2,2,'Laravel Password Grant Client','[]',0,'2023-11-06 10:41:13','2023-11-06 10:41:13','2024-11-06 10:41:13'),
('d2ba6848e0df4c2e62549e4adaf5326d811d110557a2c414bd4fb1cb24197374f6224313c98a2e0e',2,2,'Laravel Password Grant Client','[]',0,'2023-11-14 11:30:12','2023-11-14 11:30:12','2024-11-14 11:30:12'),
('d7869f424ecd75565d809e045d793cf11c064c8b33a50908ded6b46c4c7ef676d3d501f54c65fdc8',2,2,'Laravel Password Grant Client','[]',0,'2023-11-06 10:41:57','2023-11-06 10:41:57','2024-11-06 10:41:57'),
('d8a7d2a40d0578e1b8004ebf6f77ed881cb89b71ad085fd89b0c8a82ac7f6129a462d74e76d3b20c',2,4,'Laravel Password Grant Client','[]',0,'2023-12-04 03:51:17','2023-12-04 03:51:17','2024-12-04 03:51:17'),
('de48a3a5931d59c0c3330050ad01cf062f759453950464c3c952ad44557d8186b36bcdfa3021ae4b',2,4,'Laravel Password Grant Client','[]',0,'2023-12-02 04:01:17','2023-12-02 04:01:17','2024-12-02 04:01:17'),
('dfca665d7e18e6828b500fbedbb2dc5ef24e087acc22bc372792e79d0b6d93bc37d4c804f5963bad',1,2,'Laravel Password Grant Client','[]',0,'2023-11-17 04:52:10','2023-11-17 04:52:10','2024-11-17 04:52:10'),
('e5cbfec5ed1bc1cc0c7dbf414058a23d489a781c072668758f8cc775b04690cbc6312cb39e8eea92',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 09:41:27','2023-12-01 09:41:27','2024-12-01 09:41:27'),
('f4fba18973213b4c494c9cd14392d9f0b41248cdbcbd52c12c029a9333a30267f3c6e7bf5bdf495f',1,2,'Laravel Password Grant Client','[]',0,'2023-11-14 11:32:55','2023-11-14 11:32:55','2024-11-14 11:32:55'),
('f7bfb33c1141704aed541fbf04dfd0f1bd06fdbf965df6a3ced35f05a4386504853d310c28f22a79',2,4,'Laravel Password Grant Client','[]',0,'2023-12-01 09:24:58','2023-12-01 09:24:58','2024-12-01 09:24:58'),
('f961831e748986e150ee90664a01d2af3b8c8882e65f79d9bb4f91908999cfa70897a109cc89dbbc',2,2,'Laravel Password Grant Client','[]',0,'2023-11-14 11:31:46','2023-11-14 11:31:46','2024-11-14 11:31:46');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','uHm1zBNuQGYbxvn2RKicpWGx4rhxAlWsO1qw9KSI',NULL,'http://localhost',1,0,0,'2023-01-19 05:26:36','2023-01-19 05:26:36'),
(2,NULL,'Laravel Personal Access Client','m9LC8jNjcir2q4jDJ07KhVLuwSPNA1HLMvreDNNy',NULL,'http://localhost',1,0,0,'2023-09-27 09:22:49','2023-09-27 09:22:49'),
(3,NULL,'Laravel Password Grant Client','e21N9jahzBJFZYSLwB6z4W15Nv1z3UQ54OEat4gn','users','http://localhost',0,1,0,'2023-09-27 09:22:49','2023-09-27 09:22:49'),
(4,NULL,'Laravel Personal Access Client','5QneTk68bwFVg65jfxDesuavrXhK3SXtJ4jIOg08',NULL,'http://localhost',1,0,0,'2023-11-22 09:38:20','2023-11-22 09:38:20'),
(5,NULL,'Laravel Password Grant Client','txTUeBJmoYkhQxr3A6etXhnvViRHqD9lmdNmtjnM','members','http://localhost',0,1,0,'2023-11-22 09:38:43','2023-11-22 09:38:43');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2023-01-19 05:26:36','2023-01-19 05:26:36'),
(2,2,'2023-09-27 09:22:49','2023-09-27 09:22:49'),
(3,4,'2023-11-22 09:38:20','2023-11-22 09:38:20');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `organization_addresses` */

DROP TABLE IF EXISTS `organization_addresses`;

CREATE TABLE `organization_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `com_property_address_id` int(11) NOT NULL,
  `address_cachet_id` int(11) DEFAULT NULL,
  `address_update_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `organization_addresses` */

insert  into `organization_addresses`(`id`,`org_id`,`com_property_address_id`,`address_cachet_id`,`address_update_on`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,NULL,'2023-10-11 13:04:26',NULL,NULL,'2023-10-11 07:34:26','2023-10-11 07:34:26',NULL),
(2,2,2,NULL,'2023-10-11 13:13:06',NULL,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(3,3,15,NULL,'2023-11-04 12:31:28',NULL,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(4,4,16,NULL,'2023-11-04 12:35:17',NULL,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(5,5,17,NULL,'2023-11-04 12:35:40',NULL,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(6,6,18,NULL,'2023-11-04 12:36:34',NULL,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(7,7,19,NULL,'2023-11-04 12:37:07',NULL,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(8,8,20,NULL,'2023-11-04 12:41:12',NULL,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(9,9,21,NULL,'2023-11-04 12:52:24',NULL,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL);

/*Table structure for table `organization_databases` */

DROP TABLE IF EXISTS `organization_databases`;

CREATE TABLE `organization_databases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `db_name` varchar(150) NOT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `organization_databases` */

insert  into `organization_databases`(`id`,`org_id`,`db_name`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'1697009666SerenaMontoya',1,NULL,'2023-10-11 07:34:26','2023-10-11 07:34:26',NULL),
(2,2,'1697010186TrichyCarCare',1,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(3,3,'1699081288liveSolution',1,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(4,4,'1699081517liveSolution',1,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(5,5,'1699081540liveSolution',1,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(6,6,'1699081594liveSolution',1,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(7,7,'1699081627liveSolution',1,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(8,8,'1699081872liveSolution',1,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(9,9,'1699082544MeghanTate',1,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL);

/*Table structure for table `organization_details` */

DROP TABLE IF EXISTS `organization_details`;

CREATE TABLE `organization_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `title_id` varchar(255) DEFAULT 'M/S',
  `org_name` varchar(255) NOT NULL,
  `org_alias` varchar(255) DEFAULT NULL,
  `started_date` date DEFAULT NULL,
  `year_of_establishment` year(4) DEFAULT NULL,
  `is_registered_org` int(11) DEFAULT NULL,
  `gst_no` varchar(255) DEFAULT NULL,
  `date_of_reg` date DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `organization_details` */

insert  into `organization_details`(`id`,`org_id`,`title_id`,`org_name`,`org_alias`,`started_date`,`year_of_establishment`,`is_registered_org`,`gst_no`,`date_of_reg`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,'Serena Montoya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-10-11 07:34:26','2023-10-11 07:34:26',NULL),
(2,2,NULL,'Trichy Car Care',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(3,3,NULL,'live Solution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(4,4,NULL,'live Solution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(5,5,NULL,'live Solution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(6,6,NULL,'live Solution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(7,7,NULL,'live Solution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(8,8,NULL,'live Solution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(9,9,NULL,'Meghan Tate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL);

/*Table structure for table `organization_emails` */

DROP TABLE IF EXISTS `organization_emails`;

CREATE TABLE `organization_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_cachet_id` int(11) DEFAULT NULL,
  `email_validation_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `organization_emails` */

insert  into `organization_emails`(`id`,`org_id`,`email`,`email_cachet_id`,`email_validation_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'relade@mailinator.com',NULL,NULL,1,NULL,'2023-10-11 07:34:26','2023-10-11 07:34:26',NULL),
(2,2,'care@gmail.com',NULL,NULL,1,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(3,3,'dream@gmail.com',NULL,NULL,1,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(4,4,'dream@gmail.com',NULL,NULL,1,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(5,5,'dream@gmail.com',NULL,NULL,1,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(6,6,'dream@gmail.com',NULL,NULL,1,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(7,7,'dream@gmail.com',NULL,NULL,1,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(8,8,'dream@gmail.com',NULL,NULL,1,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(9,9,'wadu@mailinator.com',NULL,NULL,1,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL);

/*Table structure for table `organization_web_addresses` */

DROP TABLE IF EXISTS `organization_web_addresses`;

CREATE TABLE `organization_web_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `web_address` varchar(255) DEFAULT NULL,
  `web_address_cachet_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `organization_web_addresses` */

insert  into `organization_web_addresses`(`id`,`org_id`,`web_address`,`web_address_cachet_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'https://www.fecaqu.me.uk',NULL,1,NULL,'2023-10-11 07:34:26','2023-10-11 07:34:26',NULL),
(2,2,'testing',NULL,1,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(3,3,'Passion',NULL,1,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(4,4,'Passion',NULL,1,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(5,5,'Passion',NULL,1,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(6,6,'Passion',NULL,1,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(7,7,'Passion',NULL,1,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(8,8,'Passion',NULL,1,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(9,9,'https://www.sehab.in',NULL,1,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL);

/*Table structure for table `organizations` */

DROP TABLE IF EXISTS `organizations`;

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pfm_stage_id` varchar(255) DEFAULT NULL,
  `pfm_origin_id` int(11) DEFAULT NULL,
  `pfm_existence_id` int(11) DEFAULT NULL,
  `pfm_authorization_id` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `organizations` */

insert  into `organizations`(`id`,`pfm_stage_id`,`pfm_origin_id`,`pfm_existence_id`,`pfm_authorization_id`,`reason`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'1',1,NULL,1,NULL,NULL,NULL,'2023-10-11 07:34:26','2023-10-11 07:34:26',NULL),
(2,'1',1,NULL,1,NULL,NULL,NULL,'2023-10-11 07:43:06','2023-10-11 07:43:06',NULL),
(3,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:01:28','2023-11-04 07:01:28',NULL),
(4,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:05:17','2023-11-04 07:05:17',NULL),
(5,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:05:40','2023-11-04 07:05:40',NULL),
(6,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:06:34','2023-11-04 07:06:34',NULL),
(7,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:07:07','2023-11-04 07:07:07',NULL),
(8,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:11:12','2023-11-04 07:11:12',NULL),
(9,'1',1,NULL,1,NULL,NULL,NULL,'2023-11-04 07:22:24','2023-11-04 07:22:24',NULL);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission` varchar(191) NOT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`permission`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'creating',1,NULL,'2023-11-04 09:30:56','2023-11-04 09:32:48',NULL),
(3,'Editing',1,NULL,'2023-11-04 09:32:01','2023-11-04 09:32:31',NULL);

/*Table structure for table `person_addresses` */

DROP TABLE IF EXISTS `person_addresses`;

CREATE TABLE `person_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `com_property_address_id` int(11) NOT NULL,
  `address_cachet_id` int(11) NOT NULL,
  `address_updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_addresses` */

insert  into `person_addresses`(`id`,`uid`,`com_property_address_id`,`address_cachet_id`,`address_updated_on`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'f0964ad9-17e6-4cae-aad7-01648817c4b8',7,1,'2023-10-12 14:44:16',NULL,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(2,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',8,1,'2023-10-12 14:45:00',NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(3,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',9,1,'2023-10-12 14:45:22',NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(4,'4fda754b-e0eb-41c5-b571-d8a371f47a32',10,1,'2023-10-12 14:45:45',NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(5,'fa0a13e9-82ca-467f-a84c-56af71bcab02',11,1,'2023-10-12 15:06:57',NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(6,'f0964ad9-17e6-4cae-aad7-01648817c4b8',12,1,'2023-10-12 15:54:25',NULL,NULL,'2023-10-12 10:24:25','2023-10-12 10:24:25',NULL),
(7,'f0964ad9-17e6-4cae-aad7-01648817c4b8',13,1,'2023-10-12 16:39:22',NULL,NULL,'2023-10-12 11:09:22','2023-10-12 11:09:22',NULL),
(8,'383c8fe6-4085-47a5-88f8-414f607bc2b7',14,1,'2023-11-28 10:21:56',NULL,NULL,'2023-10-12 11:09:22','2023-10-12 11:09:22',NULL),
(9,'e44af4aa-8746-4856-be78-9d48245a5a6f',22,1,'2023-11-29 17:25:40',NULL,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(10,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',23,1,'2023-11-29 17:27:55',NULL,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(11,'62693050-7298-4c8e-ac9a-4c20083ccbd0',24,1,'2023-11-29 17:28:37',NULL,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(12,'5c6ea6c0-337c-4440-9488-70693e6c9b20',25,1,'2023-11-29 17:28:57',NULL,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(13,'2a570d6d-c632-4624-802c-fae2daec7406',26,1,'2023-11-29 17:29:23',NULL,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(14,'639996cb-4c8f-4373-a723-9cd73a9bc61c',27,1,'2023-11-29 17:39:24',NULL,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(15,'3421a278-cca3-4d47-8029-8fe279956e11',28,1,'2023-11-29 17:39:49',NULL,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(16,'5eac1386-164c-4653-a357-0135abd65bb8',29,1,'2023-11-29 17:52:46',NULL,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(17,'943898e1-53dc-4681-b515-f31aa8d65b1e',30,1,'2023-11-29 17:54:01',NULL,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(18,'341e4cba-ac75-4039-9ce2-f3c62457ef96',31,1,'2023-11-29 17:55:22',NULL,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(19,'af9e475e-f61a-43f1-8253-56fbce70b9df',32,1,'2023-11-29 17:55:44',NULL,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(20,'7abf3e4b-40e9-4846-915b-560e38148d78',33,1,'2023-11-29 17:56:10',NULL,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(21,'b5cb8e88-cd95-4d99-8b90-6f899f724278',34,1,'2023-12-01 14:58:02',NULL,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(22,'9e293abf-c126-4eb9-bfb4-7f064819c904',35,1,'2023-12-02 11:20:12',NULL,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(23,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',36,1,'2023-12-02 11:20:45',NULL,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `person_anniversarys` */

DROP TABLE IF EXISTS `person_anniversarys`;

CREATE TABLE `person_anniversarys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `occasions_id` int(11) DEFAULT NULL,
  `anniversary_date` date NOT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_anniversarys` */

insert  into `person_anniversarys`(`id`,`uid`,`occasions_id`,`anniversary_date`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'2000-08-30',1,NULL,'2023-09-05 04:15:02','2023-11-27 10:57:03',NULL),
(3,'07927ca5-7293-4465-beb0-ba6ec4b1d67e',NULL,'2000-08-18',NULL,NULL,'2023-10-06 04:55:13','2023-10-06 04:55:13',NULL),
(13,'f0964ad9-17e6-4cae-aad7-01648817c4b8',NULL,'2000-08-18',NULL,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(14,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',NULL,'2000-08-18',NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(15,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',NULL,'2000-08-18',NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(16,'4fda754b-e0eb-41c5-b571-d8a371f47a32',NULL,'2000-08-18',NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(17,'fa0a13e9-82ca-467f-a84c-56af71bcab02',NULL,'2000-08-18',NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(20,'e44af4aa-8746-4856-be78-9d48245a5a6f',NULL,'2023-06-20',1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(21,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',NULL,'2023-06-20',1,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(22,'62693050-7298-4c8e-ac9a-4c20083ccbd0',NULL,'2023-06-20',1,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(23,'5c6ea6c0-337c-4440-9488-70693e6c9b20',NULL,'2023-06-20',1,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(24,'2a570d6d-c632-4624-802c-fae2daec7406',NULL,'2023-06-20',1,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(25,'639996cb-4c8f-4373-a723-9cd73a9bc61c',NULL,'2023-06-20',1,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(26,'3421a278-cca3-4d47-8029-8fe279956e11',NULL,'2023-06-20',1,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(27,'5eac1386-164c-4653-a357-0135abd65bb8',NULL,'2023-06-20',1,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(28,'943898e1-53dc-4681-b515-f31aa8d65b1e',NULL,'2023-06-20',1,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(29,'341e4cba-ac75-4039-9ce2-f3c62457ef96',NULL,'2023-06-20',1,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(30,'af9e475e-f61a-43f1-8253-56fbce70b9df',NULL,'2023-06-20',1,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(31,'7abf3e4b-40e9-4846-915b-560e38148d78',NULL,'2023-06-20',1,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(32,'b5cb8e88-cd95-4d99-8b90-6f899f724278',NULL,'2023-06-20',1,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(33,'9e293abf-c126-4eb9-bfb4-7f064819c904',NULL,'2023-06-20',1,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(34,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',NULL,'2023-06-20',1,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `person_depone_status` */

DROP TABLE IF EXISTS `person_depone_status`;

CREATE TABLE `person_depone_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `pfm_depone_status_id` int(11) NOT NULL,
  `dep_uid` text NOT NULL,
  `comments` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_depone_status` */

/*Table structure for table `person_details` */

DROP TABLE IF EXISTS `person_details`;

CREATE TABLE `person_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `pims_person_salutation_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `pims_person_gender_id` int(11) NOT NULL,
  `pims_person_blood_group_id` int(11) DEFAULT NULL,
  `pims_person_marital_status_id` int(11) DEFAULT NULL,
  `pims_person_country_id` int(11) DEFAULT NULL,
  `pfm_survial_id` int(11) DEFAULT NULL,
  `decesaed_date` datetime DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_details` */

insert  into `person_details`(`id`,`uid`,`pims_person_salutation_id`,`first_name`,`middle_name`,`last_name`,`nick_name`,`dob`,`birth_place`,`pims_person_gender_id`,`pims_person_blood_group_id`,`pims_person_marital_status_id`,`pims_person_country_id`,`pfm_survial_id`,`decesaed_date`,`comments`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'383c8fe6-4085-47a5-88f8-414f607bc2b7',3,'harish Kumar','Kumar','S','Hari',NULL,'Chennai',2,2,3,NULL,1,NULL,NULL,1,NULL,'2023-09-05 04:15:02','2023-12-02 09:45:24',NULL),
(2,'69111250-d01d-465e-9ff7-0129204a8a98',14,'rahul','prasadth','ragu','A','2000-08-18','',9,11,NULL,NULL,1,NULL,NULL,NULL,NULL,'2023-09-14 09:37:49','2023-09-14 09:37:49',NULL),
(3,'95ed920e-316e-459a-a4e8-735934a1a92b',14,'Dhana','','','','2000-08-18','',9,12,NULL,NULL,1,NULL,NULL,NULL,NULL,'2023-09-20 12:21:25','2023-09-20 12:21:25',NULL),
(7,'0dd53f3d-79af-494f-b237-5237f00da3bf',14,'dinesh',NULL,NULL,NULL,'2000-08-18',NULL,9,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2023-09-21 04:57:48','2023-09-21 04:57:48',NULL),
(8,'ba3349be-babe-4ad3-9628-e750db649900',14,'david','benjamin','dav','B','2000-08-18',NULL,9,12,NULL,NULL,1,NULL,NULL,NULL,NULL,'2023-09-29 12:22:12','2023-09-29 12:22:12',NULL),
(9,'07927ca5-7293-4465-beb0-ba6ec4b1d67e',14,'david','karen','S','dinu','2000-08-18','Trichy',9,12,14,NULL,1,NULL,NULL,NULL,NULL,'2023-10-06 04:55:13','2023-10-06 04:55:13',NULL),
(10,'598dcbb9-05fd-40d9-90c9-9f335c30a9c3',14,'Ravi','Kumar','S','Rave','2000-08-18','Trichy',9,12,14,NULL,1,NULL,NULL,NULL,NULL,'2023-10-12 05:11:21','2023-10-12 05:11:21',NULL),
(18,'f0964ad9-17e6-4cae-aad7-01648817c4b8',15,'vinu','vinesh','r','S','2000-08-18','Trichy',10,13,14,NULL,1,NULL,NULL,NULL,NULL,'2023-10-12 09:14:16','2023-10-12 10:24:25',NULL),
(19,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',1,'vinu','vinesh',NULL,'S','2000-08-18','Trichy',1,1,1,NULL,1,NULL,NULL,NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(20,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',1,'vinu','vinesh',NULL,'S','2000-08-18','Trichy',1,1,1,NULL,1,NULL,NULL,NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(21,'4fda754b-e0eb-41c5-b571-d8a371f47a32',1,'vinu','vinesh',NULL,'S','2000-08-18','Trichy',1,1,1,NULL,1,NULL,NULL,NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(22,'fa0a13e9-82ca-467f-a84c-56af71bcab02',14,'Harlan','Ori Roberson','Duran','Abigail Long','2000-08-18','Fugiat quos consequa',10,12,16,NULL,1,NULL,NULL,NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(23,'9da2b0e2-9434-4dc3-934a-55d519d5a1a3',2,'Siva','Prakash','A','Sivu','2000-08-18',NULL,2,2,NULL,NULL,1,NULL,NULL,NULL,NULL,'2023-11-04 04:20:04','2023-11-04 04:20:04',NULL),
(24,'cf010be6-0738-4029-a61f-5a389cdc8bae',2,'Deepan','Raj','Deepu','S','2000-08-18',NULL,2,3,NULL,NULL,1,NULL,NULL,NULL,NULL,'2023-11-04 06:53:03','2023-11-04 06:53:03',NULL),
(27,'e44af4aa-8746-4856-be78-9d48245a5a6f',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(28,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(29,'62693050-7298-4c8e-ac9a-4c20083ccbd0',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(30,'5c6ea6c0-337c-4440-9488-70693e6c9b20',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(31,'2a570d6d-c632-4624-802c-fae2daec7406',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(32,'639996cb-4c8f-4373-a723-9cd73a9bc61c',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(33,'3421a278-cca3-4d47-8029-8fe279956e11',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(34,'5eac1386-164c-4653-a357-0135abd65bb8',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(35,'943898e1-53dc-4681-b515-f31aa8d65b1e',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(36,'341e4cba-ac75-4039-9ce2-f3c62457ef96',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(37,'af9e475e-f61a-43f1-8253-56fbce70b9df',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(38,'7abf3e4b-40e9-4846-915b-560e38148d78',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(39,'b5cb8e88-cd95-4d99-8b90-6f899f724278',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(40,'9e293abf-c126-4eb9-bfb4-7f064819c904',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(41,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',1,'vinu','vinesh',NULL,'S','2020-06-18','Trichy',1,1,1,NULL,1,NULL,NULL,1,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL),
(42,'9ad200e8-48bd-4fb9-bf8a-675c32e6a1ab',2,'aravind','Ara','S','M','2023-12-01','Trichy',2,2,2,NULL,1,NULL,NULL,1,NULL,'2023-12-02 07:00:24','2023-12-02 07:00:24',NULL);

/*Table structure for table `person_documents` */

DROP TABLE IF EXISTS `person_documents`;

CREATE TABLE `person_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `pims_person_doc_type_id` int(11) DEFAULT NULL,
  `Doc_no` varchar(255) DEFAULT NULL,
  `doc_validity` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `doc_cachet_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_documents` */

insert  into `person_documents`(`id`,`uid`,`pims_person_doc_type_id`,`Doc_no`,`doc_validity`,`attachment`,`doc_cachet_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(8,'f0964ad9-17e6-4cae-aad7-01648817c4b8',1,'57667657756','2023-06-18','C:\\xampp\\tmp\\phpF22F.tmp',NULL,1,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(9,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',1,'57667657756','2023-06-18','C:\\xampp\\tmp\\php9F67.tmp',NULL,1,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(10,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',1,'57667657756','2023-06-18','C:\\xampp\\tmp\\phpF48D.tmp',NULL,1,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(11,'4fda754b-e0eb-41c5-b571-d8a371f47a32',1,'57667657756','2023-06-18','C:\\xampp\\tmp\\php502B.tmp',NULL,1,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(12,'fa0a13e9-82ca-467f-a84c-56af71bcab02',1,'122333','2023-06-18',NULL,NULL,1,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(13,'e44af4aa-8746-4856-be78-9d48245a5a6f',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(14,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(15,'62693050-7298-4c8e-ac9a-4c20083ccbd0',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(16,'5c6ea6c0-337c-4440-9488-70693e6c9b20',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(17,'2a570d6d-c632-4624-802c-fae2daec7406',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(18,'639996cb-4c8f-4373-a723-9cd73a9bc61c',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(19,'3421a278-cca3-4d47-8029-8fe279956e11',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(20,'5eac1386-164c-4653-a357-0135abd65bb8',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(21,'943898e1-53dc-4681-b515-f31aa8d65b1e',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(22,'341e4cba-ac75-4039-9ce2-f3c62457ef96',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(23,'af9e475e-f61a-43f1-8253-56fbce70b9df',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(24,'7abf3e4b-40e9-4846-915b-560e38148d78',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(25,'b5cb8e88-cd95-4d99-8b90-6f899f724278',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(26,'9e293abf-c126-4eb9-bfb4-7f064819c904',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(27,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',1,'57667657756','2023-06-18',NULL,NULL,1,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `person_educations` */

DROP TABLE IF EXISTS `person_educations`;

CREATE TABLE `person_educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(750) DEFAULT NULL,
  `pims_person_qualification_id` varchar(750) DEFAULT NULL,
  `intuition_org_id` int(11) DEFAULT NULL,
  `university_org_id` int(11) DEFAULT NULL,
  `year_of_Pass` varchar(255) DEFAULT NULL,
  `mark` varchar(150) DEFAULT NULL,
  `pims_person_doc_type_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_educations` */

insert  into `person_educations`(`id`,`uid`,`pims_person_qualification_id`,`intuition_org_id`,`university_org_id`,`year_of_Pass`,`mark`,`pims_person_doc_type_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(8,'f0964ad9-17e6-4cae-aad7-01648817c4b8','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(9,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(10,'9e9f5e69-d1cd-4fbd-983f-5e701f264956','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(11,'4fda754b-e0eb-41c5-b571-d8a371f47a32','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(12,'fa0a13e9-82ca-467f-a84c-56af71bcab02','M>Tech',NULL,NULL,'2018','A',NULL,NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(13,'e44af4aa-8746-4856-be78-9d48245a5a6f','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(14,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(15,'62693050-7298-4c8e-ac9a-4c20083ccbd0','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(16,'5c6ea6c0-337c-4440-9488-70693e6c9b20','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(17,'2a570d6d-c632-4624-802c-fae2daec7406','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(18,'639996cb-4c8f-4373-a723-9cd73a9bc61c','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(19,'3421a278-cca3-4d47-8029-8fe279956e11','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(20,'5eac1386-164c-4653-a357-0135abd65bb8','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(21,'943898e1-53dc-4681-b515-f31aa8d65b1e','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(22,'341e4cba-ac75-4039-9ce2-f3c62457ef96','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(23,'af9e475e-f61a-43f1-8253-56fbce70b9df','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(24,'7abf3e4b-40e9-4846-915b-560e38148d78','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(25,'b5cb8e88-cd95-4d99-8b90-6f899f724278','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(26,'9e293abf-c126-4eb9-bfb4-7f064819c904','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(27,'d40207a1-2f43-4517-acaf-e4636e6bc4a4','M.tech',NULL,NULL,'2018','100',NULL,NULL,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `person_emails` */

DROP TABLE IF EXISTS `person_emails`;

CREATE TABLE `person_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_cachet_id` int(11) NOT NULL,
  `email_updated_on` datetime DEFAULT current_timestamp(),
  `otp_received` int(11) DEFAULT NULL,
  `email_validation_id` int(11) DEFAULT NULL,
  `validation_updated_on` datetime DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_emails` */

insert  into `person_emails`(`id`,`uid`,`email`,`email_cachet_id`,`email_updated_on`,`otp_received`,`email_validation_id`,`validation_updated_on`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'383c8fe6-4085-47a5-88f8-414f607bc2b7','harish@gmail.com',1,'2023-09-05 09:45:02',9006,1,'2023-11-27 12:03:33',1,NULL,'2023-09-05 04:15:02','2023-12-01 09:34:20',NULL),
(10,'383c8fe6-4085-47a5-88f8-414f607bc2b7','well@gmail.com',3,'2023-11-28 04:19:14',2080,1,'2023-11-28 04:29:33',NULL,NULL,'2023-09-13 07:22:34','2023-11-28 04:32:12',NULL),
(14,'69111250-d01d-465e-9ff7-0129204a8a98','rahul@gmail.com',1,'2023-09-14 15:07:49',74296,1,'2023-09-14 11:02:44',NULL,NULL,'2023-09-14 09:37:49','2023-09-14 11:02:44',NULL),
(15,'95ed920e-316e-459a-a4e8-735934a1a92b','d@gmail.com',1,'2023-09-20 17:51:25',NULL,NULL,NULL,NULL,NULL,'2023-09-20 12:21:25','2023-09-20 12:21:25',NULL),
(19,'0dd53f3d-79af-494f-b237-5237f00da3bf','dinesh@gmail.com',1,'2023-09-21 10:27:48',NULL,NULL,NULL,NULL,NULL,'2023-09-21 04:57:48','2023-09-21 04:57:48',NULL),
(20,'ba3349be-babe-4ad3-9628-e750db649900','david@gmail.com',1,'2023-09-29 17:52:12',NULL,NULL,NULL,NULL,NULL,'2023-09-29 12:22:12','2023-09-29 12:22:12',NULL),
(21,'07927ca5-7293-4465-beb0-ba6ec4b1d67e','well@gmail.com',1,'2023-10-06 10:25:13',NULL,NULL,NULL,NULL,NULL,'2023-10-06 04:55:13','2023-10-06 04:55:13',NULL),
(22,'598dcbb9-05fd-40d9-90c9-9f335c30a9c3','level@gmail.com',1,'2023-10-12 10:41:21',NULL,NULL,NULL,NULL,NULL,'2023-10-12 05:11:21','2023-10-12 05:11:21',NULL),
(37,'f0964ad9-17e6-4cae-aad7-01648817c4b8','you@gmail.com',1,'2023-10-12 14:44:16',6251,1,'2023-10-12 11:07:50',NULL,NULL,'2023-10-12 09:14:16','2023-10-12 11:11:50',NULL),
(38,'f0964ad9-17e6-4cae-aad7-01648817c4b8','select@gmail.com',2,'2023-10-12 14:44:16',6251,NULL,NULL,NULL,NULL,'2023-10-12 09:14:16','2023-10-12 11:11:50',NULL),
(39,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd','you@gmail.com',1,'2023-10-12 14:45:00',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(40,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd','select@gmail.com',2,'2023-10-12 14:45:00',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(41,'9e9f5e69-d1cd-4fbd-983f-5e701f264956','you@gmail.com',1,'2023-10-12 14:45:22',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(42,'9e9f5e69-d1cd-4fbd-983f-5e701f264956','select@gmail.com',2,'2023-10-12 14:45:22',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(43,'4fda754b-e0eb-41c5-b571-d8a371f47a32','you@gmail.com',1,'2023-10-12 14:45:45',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(44,'4fda754b-e0eb-41c5-b571-d8a371f47a32','select@gmail.com',2,'2023-10-12 14:45:45',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(45,'fa0a13e9-82ca-467f-a84c-56af71bcab02','fake@gmail.com',1,'2023-10-12 15:06:57',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(46,'fa0a13e9-82ca-467f-a84c-56af71bcab02','xunonok@mailinator.com',2,'2023-10-12 15:06:57',NULL,NULL,NULL,NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(50,'9da2b0e2-9434-4dc3-934a-55d519d5a1a3','siva@gmail.com',1,'2023-11-04 09:50:04',NULL,NULL,NULL,NULL,NULL,'2023-11-04 04:20:04','2023-11-04 04:20:04',NULL),
(51,'cf010be6-0738-4029-a61f-5a389cdc8bae','deepan@gmail.com',1,'2023-11-04 12:23:03',NULL,NULL,NULL,NULL,NULL,'2023-11-04 06:53:03','2023-11-04 06:53:03',NULL),
(52,'383c8fe6-4085-47a5-88f8-414f607bc2b7','Kumar@gmail.com',2,'2023-11-28 09:35:31',5140,NULL,NULL,2,NULL,'2023-11-28 04:05:31','2023-11-28 04:05:31',NULL),
(57,'e44af4aa-8746-4856-be78-9d48245a5a6f','you@gmail.com',1,'2023-11-29 17:25:40',NULL,NULL,NULL,1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(87,'9ad200e8-48bd-4fb9-bf8a-675c32e6a1ab','valla@gmail.com',1,'2023-12-02 12:30:24',NULL,NULL,NULL,1,NULL,'2023-12-02 07:00:24','2023-12-02 07:00:24',NULL),
(88,'383c8fe6-4085-47a5-88f8-414f607bc2b7','well@gmail.com',2,'2023-12-02 15:15:24',NULL,NULL,NULL,NULL,NULL,'2023-12-02 09:45:24','2023-12-02 09:45:24',NULL);

/*Table structure for table `person_languages` */

DROP TABLE IF EXISTS `person_languages`;

CREATE TABLE `person_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `pims_com_language_id` int(11) DEFAULT NULL,
  `is_mother_tongue` varchar(255) NOT NULL,
  `spoken` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_languages` */

insert  into `person_languages`(`id`,`uid`,`pims_com_language_id`,`is_mother_tongue`,`spoken`,`read`,`write`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(37,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',1,'1',NULL,NULL,NULL,1,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(38,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',1,'1',NULL,NULL,NULL,1,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(39,'4fda754b-e0eb-41c5-b571-d8a371f47a32',1,'1',NULL,NULL,NULL,1,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(40,'fa0a13e9-82ca-467f-a84c-56af71bcab02',4,'Kannada',NULL,NULL,NULL,1,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(42,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'1',NULL,NULL,NULL,1,NULL,'2023-11-27 10:57:32','2023-11-27 10:57:32',NULL),
(43,'e44af4aa-8746-4856-be78-9d48245a5a6f',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(44,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(45,'62693050-7298-4c8e-ac9a-4c20083ccbd0',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(46,'5c6ea6c0-337c-4440-9488-70693e6c9b20',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(47,'2a570d6d-c632-4624-802c-fae2daec7406',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(48,'639996cb-4c8f-4373-a723-9cd73a9bc61c',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(49,'3421a278-cca3-4d47-8029-8fe279956e11',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(50,'5eac1386-164c-4653-a357-0135abd65bb8',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(51,'943898e1-53dc-4681-b515-f31aa8d65b1e',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(52,'341e4cba-ac75-4039-9ce2-f3c62457ef96',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(53,'af9e475e-f61a-43f1-8253-56fbce70b9df',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(54,'7abf3e4b-40e9-4846-915b-560e38148d78',1,'1',NULL,NULL,NULL,1,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(55,'b5cb8e88-cd95-4d99-8b90-6f899f724278',1,'1',NULL,NULL,NULL,1,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(56,'9e293abf-c126-4eb9-bfb4-7f064819c904',1,'1',NULL,NULL,NULL,1,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(57,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',1,'1',NULL,NULL,NULL,1,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `person_mobiles` */

DROP TABLE IF EXISTS `person_mobiles`;

CREATE TABLE `person_mobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `mobile_cachet_id` int(11) DEFAULT NULL,
  `mobileno_updated_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otp_received` int(11) DEFAULT NULL,
  `mobile_validation_id` int(11) DEFAULT NULL,
  `validation_updated_on` timestamp NULL DEFAULT current_timestamp(),
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_mobiles` */

insert  into `person_mobiles`(`id`,`uid`,`country_id`,`mobile_no`,`mobile_cachet_id`,`mobileno_updated_on`,`otp_received`,`mobile_validation_id`,`validation_updated_on`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'8838721805',1,'2023-12-02 15:24:11',2142,1,'2023-12-02 09:54:11',1,NULL,'2023-09-05 04:15:02','2023-12-02 09:54:11',NULL),
(24,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'8838721801',NULL,'2023-12-02 15:15:24',2101,1,'2023-11-28 04:27:40',1,NULL,'2023-09-13 04:24:58','2023-12-02 09:45:24',NULL),
(26,'69111250-d01d-465e-9ff7-0129204a8a98',NULL,'9698591808',1,'2023-11-27 16:41:13',7330,1,'2023-09-14 11:02:36',NULL,NULL,'2023-09-14 09:37:49','2023-11-27 11:11:13',NULL),
(27,'95ed920e-316e-459a-a4e8-735934a1a92b',NULL,'6374112691',1,'2023-09-20 17:51:25',NULL,NULL,'2023-09-20 17:51:25',NULL,NULL,'2023-09-20 12:21:25','2023-09-20 12:21:25',NULL),
(31,'0dd53f3d-79af-494f-b237-5237f00da3bf',NULL,'9865396190',1,'2023-09-21 10:27:48',NULL,NULL,'2023-09-21 10:27:48',NULL,NULL,'2023-09-21 04:57:48','2023-09-21 04:57:48',NULL),
(32,'ba3349be-babe-4ad3-9628-e750db649900',NULL,'7708121634',1,'2023-09-29 17:52:12',NULL,NULL,'2023-09-29 17:52:12',NULL,NULL,'2023-09-29 12:22:12','2023-09-29 12:22:12',NULL),
(33,'07927ca5-7293-4465-beb0-ba6ec4b1d67e',NULL,'9089789090',1,'2023-10-06 10:25:13',NULL,NULL,'2023-10-06 10:25:13',NULL,NULL,'2023-10-06 04:55:13','2023-10-06 04:55:13',NULL),
(34,'598dcbb9-05fd-40d9-90c9-9f335c30a9c3',NULL,'9908709089',1,'2023-10-12 10:41:21',NULL,NULL,'2023-10-12 10:41:21',NULL,NULL,'2023-10-12 05:11:21','2023-10-12 05:11:21',NULL),
(49,'f0964ad9-17e6-4cae-aad7-01648817c4b8',NULL,'9087654567',1,'2023-10-12 16:41:43',6542,1,'2023-10-12 11:07:36',NULL,NULL,'2023-10-12 09:14:16','2023-10-12 11:11:43',NULL),
(100,'9ad200e8-48bd-4fb9-bf8a-675c32e6a1ab',NULL,'8838721808',1,'2023-12-02 12:30:24',NULL,NULL,'2023-12-02 12:30:24',1,NULL,'2023-12-02 07:00:24','2023-12-02 07:00:24',NULL),
(101,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'8838721801',NULL,'2023-12-02 15:23:07',NULL,NULL,'2023-12-02 15:18:28',1,NULL,'2023-12-02 09:48:28','2023-12-02 09:53:07',NULL),
(102,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'8838721801',2,'2023-12-02 15:24:50',NULL,NULL,'2023-12-02 15:24:50',1,NULL,'2023-12-02 09:54:50','2023-12-02 09:54:50',NULL),
(103,'383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,'8838721801',2,'2023-12-02 15:24:50',NULL,NULL,'2023-12-02 15:24:50',1,NULL,'2023-12-02 09:54:50','2023-12-02 09:54:50',NULL);

/*Table structure for table `person_professions` */

DROP TABLE IF EXISTS `person_professions`;

CREATE TABLE `person_professions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(450) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `experience` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_professions` */

insert  into `person_professions`(`id`,`uid`,`org_id`,`department_id`,`designation_id`,`doj`,`dor`,`experience`,`reason`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(5,'f0964ad9-17e6-4cae-aad7-01648817c4b8',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(6,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(7,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(8,'4fda754b-e0eb-41c5-b571-d8a371f47a32',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(9,'fa0a13e9-82ca-467f-a84c-56af71bcab02',1,1,1,NULL,NULL,'1970-06-17',NULL,NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(10,'e44af4aa-8746-4856-be78-9d48245a5a6f',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(11,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(12,'62693050-7298-4c8e-ac9a-4c20083ccbd0',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(13,'5c6ea6c0-337c-4440-9488-70693e6c9b20',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(14,'2a570d6d-c632-4624-802c-fae2daec7406',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(15,'639996cb-4c8f-4373-a723-9cd73a9bc61c',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(16,'3421a278-cca3-4d47-8029-8fe279956e11',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(17,'5eac1386-164c-4653-a357-0135abd65bb8',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(18,'943898e1-53dc-4681-b515-f31aa8d65b1e',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(19,'341e4cba-ac75-4039-9ce2-f3c62457ef96',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(20,'af9e475e-f61a-43f1-8253-56fbce70b9df',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(21,'7abf3e4b-40e9-4846-915b-560e38148d78',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(22,'b5cb8e88-cd95-4d99-8b90-6f899f724278',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(23,'9e293abf-c126-4eb9-bfb4-7f064819c904',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(24,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',1,1,1,NULL,NULL,'2023-09-29',NULL,NULL,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `person_profile_pics` */

DROP TABLE IF EXISTS `person_profile_pics`;

CREATE TABLE `person_profile_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `profile_pic` text DEFAULT NULL,
  `profile_cachet_id` int(11) NOT NULL,
  `profile_updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pfm_active_status_id` int(11) NOT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_profile_pics` */

insert  into `person_profile_pics`(`id`,`uid`,`profile_pic`,`profile_cachet_id`,`profile_updated_on`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(3,'383c8fe6-4085-47a5-88f8-414f607bc2b7','20230905042014_64f6ac7e210a4.jpg',1,'2023-09-05 09:50:14',1,NULL,'2023-09-05 04:20:14','2023-09-05 04:20:14',NULL);

/*Table structure for table `person_web_addresses` */

DROP TABLE IF EXISTS `person_web_addresses`;

CREATE TABLE `person_web_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `web_add` text NOT NULL,
  `web_cachet_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) NOT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `person_web_addresses` */

insert  into `person_web_addresses`(`id`,`uid`,`web_add`,`web_cachet_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(8,'f0964ad9-17e6-4cae-aad7-01648817c4b8','www.slack.com',1,1,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(9,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd','www.slack.com',1,1,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(10,'9e9f5e69-d1cd-4fbd-983f-5e701f264956','www.slack.com',1,1,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(11,'4fda754b-e0eb-41c5-b571-d8a371f47a32','www.slack.com',1,1,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(12,'fa0a13e9-82ca-467f-a84c-56af71bcab02','https://www.waxewijazyjuk.com',1,1,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(15,'e44af4aa-8746-4856-be78-9d48245a5a6f','www.slack.com',NULL,1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(16,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b','www.slack.com',NULL,1,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(17,'62693050-7298-4c8e-ac9a-4c20083ccbd0','www.slack.com',NULL,1,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(18,'5c6ea6c0-337c-4440-9488-70693e6c9b20','www.slack.com',NULL,1,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(19,'2a570d6d-c632-4624-802c-fae2daec7406','www.slack.com',NULL,1,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(20,'639996cb-4c8f-4373-a723-9cd73a9bc61c','www.slack.com',NULL,1,NULL,'2023-11-29 12:09:24','2023-11-29 12:09:24',NULL),
(21,'3421a278-cca3-4d47-8029-8fe279956e11','www.slack.com',NULL,1,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(22,'5eac1386-164c-4653-a357-0135abd65bb8','www.slack.com',NULL,1,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(23,'943898e1-53dc-4681-b515-f31aa8d65b1e','www.slack.com',NULL,1,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(24,'341e4cba-ac75-4039-9ce2-f3c62457ef96','www.slack.com',NULL,1,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(25,'af9e475e-f61a-43f1-8253-56fbce70b9df','www.slack.com',NULL,1,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(26,'7abf3e4b-40e9-4846-915b-560e38148d78','www.slack.com',NULL,1,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(27,'b5cb8e88-cd95-4d99-8b90-6f899f724278','www.slack.com',NULL,1,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(28,'9e293abf-c126-4eb9-bfb4-7f064819c904','www.slack.com',NULL,1,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(29,'d40207a1-2f43-4517-acaf-e4636e6bc4a4','www.slack.com',NULL,1,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` varchar(255) DEFAULT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`expires_at`,`abilities`,`last_used_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\PimsUser',8,'my-app-token','0d965bc8fbe81db8b1b0a9e6b1e158abb70141521373a6b5bfb2c6ffa697c0be',NULL,'[\"*\"]',NULL,'2023-09-27 11:19:50','2023-09-27 11:19:50'),
(2,'App\\Models\\PimsUser',8,'my-app-token','718499fd8da1943142e67d7c1c896e28f584731496c8cb4de89263712beb76ae',NULL,'[\"*\"]','2023-09-27 11:31:35','2023-09-27 11:21:37','2023-09-27 11:31:35'),
(3,'App\\Models\\PimsUser',8,'my-app-token','e1925a2f5d6c45cdd460b147c734b7129f64e0814ef5375135e8afa63e31c727',NULL,'[\"*\"]','2023-11-04 07:24:23','2023-09-28 03:49:42','2023-11-04 07:24:23'),
(4,'App\\Models\\PimsUser',8,'my-app-token','12ff231599bbb7edb46adcf8b4997160621cc6cce35f7fa76ee825a7db79f1c2',NULL,'[\"*\"]','2023-10-20 09:11:25','2023-09-28 03:59:44','2023-10-20 09:11:25'),
(5,'App\\Models\\PimsUser',8,'my-app-token','590d760a5262a34e1feccde017528078ce98486e1393216b90f0521d6c43d944',NULL,'[\"*\"]',NULL,'2023-09-28 10:54:11','2023-09-28 10:54:11'),
(6,'App\\Models\\PimsUser',8,'my-app-token','6a6f290f00a943e046df51b7d1a2f86eb90f27bff7f2e17d0d02ac0d231d7dff',NULL,'[\"*\"]',NULL,'2023-09-28 10:54:22','2023-09-28 10:54:22'),
(7,'App\\Models\\PimsUser',8,'my-app-token','d4c6a0023c273f110e077218b94a05c870c2c27434191d062fb5e2b75902ca9e',NULL,'[\"*\"]',NULL,'2023-09-28 10:54:29','2023-09-28 10:54:29'),
(8,'App\\Models\\PimsUser',8,'my-app-token','663181a5234998e63839c9e2bff4dcb293bdd8a91bfc1bac7f3274677113dcfa',NULL,'[\"*\"]',NULL,'2023-09-28 10:56:11','2023-09-28 10:56:11'),
(9,'App\\Models\\PimsUser',8,'my-app-token','bd5d0f031e6f316e785e7f388262c4799afe970ad3b533582b0deedbe4f902df',NULL,'[\"*\"]',NULL,'2023-09-28 10:56:22','2023-09-28 10:56:22'),
(10,'App\\Models\\PimsUser',8,'my-app-token','860c6fee939e0603a4eeca58bc2021356427ec3e955be6530b39b50bb26c29ba',NULL,'[\"*\"]',NULL,'2023-09-28 11:00:44','2023-09-28 11:00:44'),
(11,'App\\Models\\PimsUser',8,'my-app-token','05a1606b041538beae8e14374ba098362d3726bcd667e1673a17259f9bb60d8e',NULL,'[\"*\"]',NULL,'2023-09-28 11:36:02','2023-09-28 11:36:02'),
(12,'App\\Models\\PimsUser',8,'my-app-token','7c5110af2bdf9625c2b927a7b6c103067a2dee61c57b7843c45079947b77d68c',NULL,'[\"*\"]',NULL,'2023-09-28 11:36:26','2023-09-28 11:36:26'),
(13,'App\\Models\\PimsUser',8,'my-app-token','58806cc8f8e3a0987cddb586cd16bd8ad09c62d5086621054a41a6247519e86d',NULL,'[\"*\"]',NULL,'2023-09-28 11:53:03','2023-09-28 11:53:03'),
(14,'App\\Models\\PimsUser',8,'my-app-token','05eda8781b5175e6b0a004da7cb87a78e4a5177f1952390f6548af8eb73a3a13',NULL,'[\"*\"]',NULL,'2023-09-28 11:54:02','2023-09-28 11:54:02'),
(15,'App\\Models\\PimsUser',8,'my-app-token','109d3b6274084f020b8ada1e526fc9ae0bafa7c004d2a3bae9512705bfd965e1',NULL,'[\"*\"]',NULL,'2023-09-28 11:54:16','2023-09-28 11:54:16'),
(16,'App\\Models\\PimsUser',8,'my-app-token','fd8ebb6260528759d4d4da5714ca221918a4c0fdc5883015d38d9e204d6a2ba8',NULL,'[\"*\"]','2023-09-28 11:58:57','2023-09-28 11:54:39','2023-09-28 11:58:57'),
(17,'App\\Models\\PimsUser',8,'my-app-token','00f4e2491d5f2307741ca1ef32b81bbdcab14dd3d23b4c7cc81709a2fd55fea1',NULL,'[\"*\"]','2023-09-29 12:07:31','2023-09-29 12:07:20','2023-09-29 12:07:31'),
(18,'App\\Models\\PimsUser',8,'my-app-token','cda19db5ec13082b8d9d867b7cd959c9f917ac9a64d6f576d459520dee675e8f',NULL,'[\"*\"]','2023-10-03 11:34:58','2023-10-03 08:50:17','2023-10-03 11:34:58'),
(19,'App\\Models\\PimsUser',8,'my-app-token','0033df8a8bf0d3c01572ce864a72ad9a20531688f906fe281da2e314c7fee545',NULL,'[\"*\"]','2023-10-10 09:20:25','2023-10-10 09:17:21','2023-10-10 09:20:25'),
(20,'App\\Models\\PimsUser',8,'my-app-token','a3b439997ea124a0aa8975b4cab13bc0dbc9a6f2eb346e3aa0d5f9f722d6f742',NULL,'[\"*\"]','2023-10-13 05:28:58','2023-10-11 11:43:29','2023-10-13 05:28:58'),
(21,'App\\Models\\PimsUser',8,'my-app-token','702ea0d17045d799380480096ad6553497b8e7da3686590bdcdb6c74281f369a',NULL,'[\"*\"]',NULL,'2023-10-12 06:07:00','2023-10-12 06:07:00'),
(22,'App\\Models\\PimsUser',8,'my-app-token','8bf45ef273b8fecdbb769bc6e418ab239cc6ebec6e26d3346366554c926ff3ef',NULL,'[\"*\"]','2023-10-13 04:24:50','2023-10-13 04:24:44','2023-10-13 04:24:50'),
(23,'App\\Models\\PimsUser',8,'my-app-token','cdc0edf4e70ff729a6a1348fdeb5c0dbad8951d43a820d7fbf80633bdc38ea43',NULL,'[\"*\"]','2023-10-17 04:24:46','2023-10-17 04:24:33','2023-10-17 04:24:46'),
(24,'App\\Models\\PimsUser',8,'my-app-token','887d5fb62d865d7b4f05147f3ad438f2e9d50dedb11ed2c69ff2b6273644de1c',NULL,'[\"*\"]','2023-10-17 12:32:38','2023-10-17 09:04:45','2023-10-17 12:32:38'),
(25,'App\\Models\\PimsUser',8,'my-app-token','fc02f37e82f52b7f9dd54d6d5aae7fa823cecea63b05f7f31211fd9dde8601b6',NULL,'[\"*\"]','2023-10-18 04:31:14','2023-10-18 04:30:12','2023-10-18 04:31:14'),
(26,'App\\Models\\PimsUser',8,'my-app-token','e5f977d57b31705699cc67b152b51a89813352a13899a921b40724a94393c9f9',NULL,'[\"*\"]','2023-10-27 04:14:05','2023-10-27 04:13:17','2023-10-27 04:14:05'),
(27,'App\\Models\\PimsUser',8,'my-app-token','f22bb0342fd570d52bbb5887f66a0ca356f541b31a4dfdc1460033ea98d79467',NULL,'[\"*\"]','2023-10-27 04:29:05','2023-10-27 04:29:04','2023-10-27 04:29:05'),
(28,'App\\Models\\PimsUser',8,'my-app-token','4fc67a8ba041bea9a1d2f42c30fe4672979719461f87dd50c96be1acb36341ec',NULL,'[\"*\"]',NULL,'2023-10-27 04:30:17','2023-10-27 04:30:17'),
(29,'App\\Models\\PimsUser',8,'my-app-token','48ce726dd7c417f3ba2763c7e1aceb152309227d6ab2f8da8e039895d8c684e7',NULL,'[\"*\"]',NULL,'2023-10-27 04:31:53','2023-10-27 04:31:53'),
(30,'App\\Models\\PimsUser',8,'my-app-token','198b5b409489eea4101884fa46d839845b00c835307c3d9caf1b7d38781ef3c1',NULL,'[\"*\"]',NULL,'2023-10-27 04:32:00','2023-10-27 04:32:00'),
(31,'App\\Models\\PimsUser',8,'my-app-token','440ee3c0eac762442e1fd2e590c3abf97801f1f525dbea20465d7316551e2e94',NULL,'[\"*\"]',NULL,'2023-10-27 04:32:47','2023-10-27 04:32:47'),
(32,'App\\Models\\PimsUser',8,'my-app-token','ec946b1d00e0cbd6a0ef251de5e0b1fb46f261a7edd1b68b877675375fb92e87',NULL,'[\"*\"]',NULL,'2023-10-27 04:41:05','2023-10-27 04:41:05'),
(33,'App\\Models\\PimsUser',8,'my-app-token','fb2b7f2c0ab2871eeda4c08aa36ab63306c1e7b26444e600ce27352df508f048',NULL,'[\"*\"]',NULL,'2023-10-27 04:41:45','2023-10-27 04:41:45'),
(34,'App\\Models\\PimsUser',8,'my-app-token','dba68e6d3aab5d5f26c134815cb0f036c57fffcdb9207398a3d331d30955a661',NULL,'[\"*\"]',NULL,'2023-10-27 04:44:16','2023-10-27 04:44:16'),
(35,'App\\Models\\PimsUser',8,'my-app-token','af5d1bbf84cb00e9fc4f244192ee5df8ddd8df97bf33fa0c025d9d637e3ac939',NULL,'[\"*\"]',NULL,'2023-10-27 04:46:39','2023-10-27 04:46:39'),
(36,'App\\Models\\PimsUser',8,'my-app-token','e18afd53be6a1f1480817731bb07718fda1bf76da61194ffd8006a0b2aa2a217',NULL,'[\"*\"]',NULL,'2023-10-27 04:46:48','2023-10-27 04:46:48'),
(37,'App\\Models\\PimsUser',8,'my-app-token','fe3132936217070d7a2c8d7fd765507d1f9e7cf8ee38ecbf5c9e5c7bc5f0408f',NULL,'[\"*\"]',NULL,'2023-10-27 04:47:00','2023-10-27 04:47:00'),
(38,'App\\Models\\PimsUser',8,'my-app-token','807782b783852fba618c9ca0948b1c36d455487097ab6e8762788de440ea2414',NULL,'[\"*\"]',NULL,'2023-10-27 04:52:13','2023-10-27 04:52:13'),
(39,'App\\Models\\PimsUser',8,'my-app-token','4b538f418824d92a04b4128ba222c8577ffd6adc720de1b2e942b9593358ebbc',NULL,'[\"*\"]',NULL,'2023-10-27 04:52:52','2023-10-27 04:52:52'),
(40,'App\\Models\\PimsUser',8,'my-app-token','b8f22079022aea874f364f4eeabadef943e4af501df7efe5dd6606722584259c',NULL,'[\"*\"]',NULL,'2023-10-27 04:53:03','2023-10-27 04:53:03'),
(41,'App\\Models\\PimsUser',8,'my-app-token','e44c980fd5ac9c5a7a637583b8c5f1a9e72b8251be8185880d790661f4762818',NULL,'[\"*\"]',NULL,'2023-10-27 04:53:15','2023-10-27 04:53:15'),
(42,'App\\Models\\PimsUser',8,'my-app-token','181c43770655a2d8bbe9a90b1594b8e00272114dbc2334bbc9fb10376670b428',NULL,'[\"*\"]',NULL,'2023-10-27 04:54:19','2023-10-27 04:54:19'),
(43,'App\\Models\\PimsUser',8,'my-app-token','60a51deb8e642fe877e4ab9ba3b162de2c532b2dad0a27310de14067424d7024',NULL,'[\"*\"]',NULL,'2023-10-27 04:54:33','2023-10-27 04:54:33'),
(44,'App\\Models\\PimsUser',8,'my-app-token','16b9591c6f38614f1ddf49ea488d80267df725c83e8f7b314abbf050b277e8a1',NULL,'[\"*\"]',NULL,'2023-10-27 05:01:40','2023-10-27 05:01:40'),
(45,'App\\Models\\PimsUser',8,'my-app-token','d1bfb3b1f1f5c676c867febd6342182e510e05438ce07bddeeaafbb15a119ec8',NULL,'[\"*\"]',NULL,'2023-10-27 05:02:07','2023-10-27 05:02:07'),
(46,'App\\Models\\PimsUser',8,'my-app-token','0dd091fb51273e3755914ddc08961ffaaa855725d59cfc4137d90447909222ef',NULL,'[\"*\"]',NULL,'2023-10-27 05:02:25','2023-10-27 05:02:25'),
(47,'App\\Models\\PimsUser',8,'my-app-token','18b2d09d7f38686418e5c02cafe3f44e77f7e9fe0c5d703e3a70d92e038477f7',NULL,'[\"*\"]',NULL,'2023-10-27 05:02:33','2023-10-27 05:02:33'),
(48,'App\\Models\\PimsUser',8,'my-app-token','fcf3b2838719248d0d68b435bad47d45d82c10c65211f05bd2fc6a074fb5fa6f',NULL,'[\"*\"]',NULL,'2023-10-27 05:41:41','2023-10-27 05:41:41'),
(49,'App\\Models\\PimsUser',8,'my-app-token','f162f87395ba507227738b6070b00ea634ed86184a43cd13becb9457a639ac2b',NULL,'[\"*\"]','2023-10-27 05:46:31','2023-10-27 05:42:44','2023-10-27 05:46:31'),
(50,'App\\Models\\PimsUser',8,'my-app-token','5de08485ca977f35e43bfc707f0237fe4a51c6aee182a188887eee5ad001dd65',NULL,'[\"*\"]',NULL,'2023-10-27 05:46:47','2023-10-27 05:46:47'),
(51,'App\\Models\\PimsUser',8,'my-app-token','b69fc34615604281697c9bb6fe3e9219fb3394568b539da6f6019e8ae432076f',NULL,'[\"*\"]',NULL,'2023-10-27 05:46:52','2023-10-27 05:46:52'),
(52,'App\\Models\\PimsUser',8,'my-app-token','2ef31c924c5c7e440adc105cc590ae155725112908b3928f63e44b36214e9d24',NULL,'[\"*\"]',NULL,'2023-10-27 05:47:26','2023-10-27 05:47:26');

/*Table structure for table `persons` */

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `pfm_stage_id` int(11) DEFAULT NULL,
  `pfm_origin_id` int(11) NOT NULL,
  `pfm_existence_id` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `persons` */

insert  into `persons`(`id`,`uid`,`pfm_stage_id`,`pfm_origin_id`,`pfm_existence_id`,`reason`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'383c8fe6-4085-47a5-88f8-414f607bc2b7',1,1,1,NULL,1,NULL,'2023-09-05 04:15:02','2023-11-27 10:57:02',NULL),
(3,'69111250-d01d-465e-9ff7-0129204a8a98',1,1,1,NULL,NULL,NULL,'2023-09-14 09:37:49','2023-09-14 09:37:49',NULL),
(4,'95ed920e-316e-459a-a4e8-735934a1a92b',1,1,1,NULL,NULL,NULL,'2023-09-20 12:21:25','2023-09-20 12:21:25',NULL),
(18,'0dd53f3d-79af-494f-b237-5237f00da3bf',1,1,1,NULL,NULL,NULL,'2023-09-21 04:57:48','2023-09-21 04:57:48',NULL),
(19,'ba3349be-babe-4ad3-9628-e750db649900',1,1,1,NULL,NULL,NULL,'2023-09-29 12:22:12','2023-09-29 12:22:12',NULL),
(20,'07927ca5-7293-4465-beb0-ba6ec4b1d67e',1,1,1,NULL,NULL,NULL,'2023-10-06 04:55:13','2023-10-06 04:55:13',NULL),
(23,'598dcbb9-05fd-40d9-90c9-9f335c30a9c3',1,1,1,NULL,NULL,NULL,'2023-10-12 05:11:21','2023-10-12 05:11:21',NULL),
(31,'f0964ad9-17e6-4cae-aad7-01648817c4b8',1,1,1,NULL,NULL,NULL,'2023-10-12 09:14:16','2023-10-12 09:14:16',NULL),
(32,'e72d0f8e-ec0f-4d68-84a3-6e2df89ccbfd',1,1,1,NULL,NULL,NULL,'2023-10-12 09:15:00','2023-10-12 09:15:00',NULL),
(33,'9e9f5e69-d1cd-4fbd-983f-5e701f264956',1,1,1,NULL,NULL,NULL,'2023-10-12 09:15:22','2023-10-12 09:15:22',NULL),
(34,'4fda754b-e0eb-41c5-b571-d8a371f47a32',1,1,1,NULL,NULL,NULL,'2023-10-12 09:15:45','2023-10-12 09:15:45',NULL),
(35,'fa0a13e9-82ca-467f-a84c-56af71bcab02',1,1,1,NULL,NULL,NULL,'2023-10-12 09:36:57','2023-10-12 09:36:57',NULL),
(36,'9da2b0e2-9434-4dc3-934a-55d519d5a1a3',1,1,1,NULL,NULL,NULL,'2023-11-04 04:20:04','2023-11-04 04:20:04',NULL),
(37,'cf010be6-0738-4029-a61f-5a389cdc8bae',1,1,1,NULL,NULL,NULL,'2023-11-04 06:53:03','2023-11-04 06:53:03',NULL),
(40,'e44af4aa-8746-4856-be78-9d48245a5a6f',1,1,1,NULL,1,NULL,'2023-11-29 11:55:40','2023-11-29 11:55:40',NULL),
(41,'cbf6d9a9-03d5-432a-9bca-d6c7a1243e3b',1,1,1,NULL,1,NULL,'2023-11-29 11:57:55','2023-11-29 11:57:55',NULL),
(42,'62693050-7298-4c8e-ac9a-4c20083ccbd0',1,1,1,NULL,1,NULL,'2023-11-29 11:58:37','2023-11-29 11:58:37',NULL),
(43,'5c6ea6c0-337c-4440-9488-70693e6c9b20',1,1,1,NULL,1,NULL,'2023-11-29 11:58:57','2023-11-29 11:58:57',NULL),
(44,'2a570d6d-c632-4624-802c-fae2daec7406',1,1,1,NULL,1,NULL,'2023-11-29 11:59:23','2023-11-29 11:59:23',NULL),
(45,'639996cb-4c8f-4373-a723-9cd73a9bc61c',1,1,1,NULL,1,NULL,'2023-11-29 12:09:23','2023-11-29 12:09:23',NULL),
(46,'3421a278-cca3-4d47-8029-8fe279956e11',1,1,1,NULL,1,NULL,'2023-11-29 12:09:49','2023-11-29 12:09:49',NULL),
(47,'5eac1386-164c-4653-a357-0135abd65bb8',1,1,1,NULL,1,NULL,'2023-11-29 12:22:46','2023-11-29 12:22:46',NULL),
(48,'943898e1-53dc-4681-b515-f31aa8d65b1e',1,1,1,NULL,1,NULL,'2023-11-29 12:24:01','2023-11-29 12:24:01',NULL),
(49,'341e4cba-ac75-4039-9ce2-f3c62457ef96',1,1,1,NULL,1,NULL,'2023-11-29 12:25:22','2023-11-29 12:25:22',NULL),
(50,'af9e475e-f61a-43f1-8253-56fbce70b9df',1,1,1,NULL,1,NULL,'2023-11-29 12:25:44','2023-11-29 12:25:44',NULL),
(51,'7abf3e4b-40e9-4846-915b-560e38148d78',1,1,1,NULL,1,NULL,'2023-11-29 12:26:10','2023-11-29 12:26:10',NULL),
(52,'b5cb8e88-cd95-4d99-8b90-6f899f724278',1,1,1,NULL,1,NULL,'2023-12-01 09:28:02','2023-12-01 09:28:02',NULL),
(53,'9e293abf-c126-4eb9-bfb4-7f064819c904',1,1,1,NULL,1,NULL,'2023-12-02 05:50:12','2023-12-02 05:50:12',NULL),
(54,'d40207a1-2f43-4517-acaf-e4636e6bc4a4',1,1,1,NULL,1,NULL,'2023-12-02 05:50:45','2023-12-02 05:50:45',NULL),
(55,'9ad200e8-48bd-4fb9-bf8a-675c32e6a1ab',1,1,1,NULL,1,NULL,'2023-12-02 07:00:24','2023-12-02 07:00:24',NULL);

/*Table structure for table `pfm_active_status` */

DROP TABLE IF EXISTS `pfm_active_status`;

CREATE TABLE `pfm_active_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active_type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_active_status` */

insert  into `pfm_active_status`(`id`,`active_type`,`description`,`active_status`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Active','This data is Activation.',NULL,NULL,'8','2023-10-17 09:11:16','8','2023-10-17 09:14:11',NULL),
(2,'InActive','In active this data',NULL,NULL,'8','2023-10-17 09:11:58',NULL,'2023-10-17 09:11:58',NULL);

/*Table structure for table `pfm_authorizations` */

DROP TABLE IF EXISTS `pfm_authorizations`;

CREATE TABLE `pfm_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorization` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pfm_authorizations` */

insert  into `pfm_authorizations`(`id`,`authorization`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Approval',NULL,1,NULL,NULL,'2023-11-02 10:19:41','2023-11-02 10:19:10',NULL,NULL),
(3,'Unapproval',NULL,1,NULL,NULL,'2023-11-02 10:19:43','2023-11-02 10:19:19',NULL,NULL);

/*Table structure for table `pfm_cachet` */

DROP TABLE IF EXISTS `pfm_cachet`;

CREATE TABLE `pfm_cachet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cachet` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_cachet` */

insert  into `pfm_cachet`(`id`,`cachet`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(3,'Primary',NULL,1,NULL,NULL,'2023-11-02 10:02:18',NULL,'2023-11-02 10:02:18',NULL),
(4,'Secondary',NULL,1,NULL,NULL,'2023-11-02 10:02:31',NULL,'2023-11-02 10:02:31',NULL),
(5,'Pervious',NULL,1,NULL,NULL,'2023-11-02 10:02:39',NULL,'2023-11-02 10:02:39',NULL);

/*Table structure for table `pfm_depone_status` */

DROP TABLE IF EXISTS `pfm_depone_status`;

CREATE TABLE `pfm_depone_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `depone_status` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_depone_status` */

insert  into `pfm_depone_status`(`id`,`depone_status`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(3,'Family',NULL,1,NULL,NULL,'2023-11-02 10:20:00',NULL,'2023-11-02 10:20:00',NULL),
(4,'Friends',NULL,1,NULL,NULL,'2023-11-02 10:20:03',NULL,'2023-11-02 10:20:03',NULL);

/*Table structure for table `pfm_existence` */

DROP TABLE IF EXISTS `pfm_existence`;

CREATE TABLE `pfm_existence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `existence` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_existence` */

/*Table structure for table `pfm_origin` */

DROP TABLE IF EXISTS `pfm_origin`;

CREATE TABLE `pfm_origin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origin` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_origin` */

/*Table structure for table `pfm_person_stage` */

DROP TABLE IF EXISTS `pfm_person_stage`;

CREATE TABLE `pfm_person_stage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_stage` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_person_stage` */

/*Table structure for table `pfm_survival` */

DROP TABLE IF EXISTS `pfm_survival`;

CREATE TABLE `pfm_survival` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `survival` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_survival` */

/*Table structure for table `pfm_validation` */

DROP TABLE IF EXISTS `pfm_validation`;

CREATE TABLE `pfm_validation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `validation` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pfm_validation` */

insert  into `pfm_validation`(`id`,`validation`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(3,'verified',NULL,1,NULL,NULL,'2023-11-02 10:20:59',NULL,'2023-11-02 10:20:59',NULL),
(4,'unverified',NULL,1,NULL,NULL,'2023-11-02 10:21:03',NULL,'2023-11-02 10:21:03',NULL);

/*Table structure for table `pims_bank_account_types` */

DROP TABLE IF EXISTS `pims_bank_account_types`;

CREATE TABLE `pims_bank_account_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_account_type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_bank_account_types` */

insert  into `pims_bank_account_types`(`id`,`bank_account_type`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Saving','Saving Account',1,NULL,'8','2023-10-17 10:29:42','8','2023-10-17 10:29:59',NULL),
(4,'Current',NULL,1,NULL,NULL,'2023-11-02 10:21:43',NULL,'2023-11-02 10:21:43',NULL);

/*Table structure for table `pims_bank_addresses` */

DROP TABLE IF EXISTS `pims_bank_addresses`;

CREATE TABLE `pims_bank_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_bank_addresses` */

/*Table structure for table `pims_banks` */

DROP TABLE IF EXISTS `pims_banks`;

CREATE TABLE `pims_banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_alias` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_banks` */

insert  into `pims_banks`(`id`,`org_id`,`bank`,`bank_alias`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,NULL,'IB',NULL,NULL,1,NULL,'8','2023-10-17 10:58:22',NULL,'2023-10-17 10:58:22',NULL),
(2,NULL,'SBI',NULL,NULL,1,NULL,NULL,'2023-11-02 10:22:00',NULL,'2023-11-02 10:22:00',NULL);

/*Table structure for table `pims_banks_branchs` */

DROP TABLE IF EXISTS `pims_banks_branchs`;

CREATE TABLE `pims_banks_branchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `micr` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_banks_branchs` */

/*Table structure for table `pims_com_address_types` */

DROP TABLE IF EXISTS `pims_com_address_types`;

CREATE TABLE `pims_com_address_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_of` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_address_types` */

insert  into `pims_com_address_types`(`id`,`address_of`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Office','Tempaory',1,NULL,'8','2023-10-17 10:59:42','8','2023-10-17 11:01:29',NULL),
(4,'Home',NULL,1,NULL,NULL,'2023-11-02 10:03:37',NULL,'2023-11-02 10:03:37',NULL),
(5,'bank',NULL,1,NULL,NULL,'2023-11-02 10:17:33',NULL,'2023-11-02 10:17:33',NULL),
(6,'Warehouse',NULL,1,NULL,NULL,'2023-11-02 10:17:36',NULL,'2023-11-02 10:17:36',NULL),
(7,'Godown',NULL,1,NULL,NULL,'2023-11-02 10:17:39',NULL,'2023-11-02 10:17:39',NULL),
(8,'Shop',NULL,1,NULL,NULL,'2023-11-02 10:17:42',NULL,'2023-11-02 10:17:42',NULL),
(9,'Factory',NULL,1,NULL,NULL,'2023-11-02 10:17:49',NULL,'2023-11-02 10:17:49',NULL);

/*Table structure for table `pims_com_area` */

DROP TABLE IF EXISTS `pims_com_area`;

CREATE TABLE `pims_com_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pin_code` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_area` */

insert  into `pims_com_area`(`id`,`pin_code`,`city_id`,`area`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,622515,1,'LIC Nagar','this is small area',1,NULL,'8','2023-10-17 15:48:55','8','2023-10-17 10:18:55',NULL);

/*Table structure for table `pims_com_cities` */

DROP TABLE IF EXISTS `pims_com_cities`;

CREATE TABLE `pims_com_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_cities` */

insert  into `pims_com_cities`(`id`,`city`,`district_id`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Srirangam',1,'This is Main City',1,NULL,'8','2023-10-17 10:11:11','8','2023-10-17 10:12:00',NULL);

/*Table structure for table `pims_com_countries` */

DROP TABLE IF EXISTS `pims_com_countries`;

CREATE TABLE `pims_com_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `numeric_code` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_countries` */

insert  into `pims_com_countries`(`id`,`country`,`numeric_code`,`phone_code`,`capital`,`flag`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'India','91','91','Delhi','IND','this is Indian Country',1,NULL,'8','2023-10-17 09:16:54','8','2023-10-17 09:18:41',NULL);

/*Table structure for table `pims_com_country_currency` */

DROP TABLE IF EXISTS `pims_com_country_currency`;

CREATE TABLE `pims_com_country_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_short_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_country_currency` */

/*Table structure for table `pims_com_country_time` */

DROP TABLE IF EXISTS `pims_com_country_time`;

CREATE TABLE `pims_com_country_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `gmt_difference` varchar(255) DEFAULT NULL,
  `is_daylight` varchar(255) DEFAULT NULL,
  `daylight` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_country_time` */

/*Table structure for table `pims_com_districts` */

DROP TABLE IF EXISTS `pims_com_districts`;

CREATE TABLE `pims_com_districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_districts` */

insert  into `pims_com_districts`(`id`,`district`,`state_id`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'TrichyS',1,'this is District Trichy',2,NULL,'8','2023-10-17 16:49:17','8','2023-10-17 11:19:17',NULL);

/*Table structure for table `pims_com_languages` */

DROP TABLE IF EXISTS `pims_com_languages`;

CREATE TABLE `pims_com_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_languages` */

insert  into `pims_com_languages`(`id`,`language`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Tamil',NULL,2,NULL,'8','2023-10-17 11:02:47',NULL,'2023-10-17 11:07:55',NULL),
(2,'English','English Language',1,NULL,'8','2023-10-17 11:06:09',NULL,'2023-10-17 11:06:09',NULL);

/*Table structure for table `pims_com_states` */

DROP TABLE IF EXISTS `pims_com_states`;

CREATE TABLE `pims_com_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(355) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_com_states` */

insert  into `pims_com_states`(`id`,`state`,`country_id`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Tamil Nadu',1,'This  is State',1,NULL,'8','2023-10-17 09:20:47','8','2023-10-17 09:21:49',NULL);

/*Table structure for table `pims_hrm_resource_activities` */

DROP TABLE IF EXISTS `pims_hrm_resource_activities`;

CREATE TABLE `pims_hrm_resource_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `activity_status_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_hrm_resource_activities` */

insert  into `pims_hrm_resource_activities`(`id`,`name`,`activity_status_id`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'DateOfjoining',0,NULL,1,NULL,NULL,'2023-11-02 10:16:27',NULL,'2023-11-02 10:16:27',NULL),
(2,'Rejoin',0,NULL,1,NULL,NULL,'2023-11-02 10:16:30',NULL,'2023-11-02 10:16:30',NULL),
(3,'Break',0,NULL,1,NULL,NULL,'2023-11-02 10:16:33',NULL,'2023-11-02 10:16:33',NULL);

/*Table structure for table `pims_hrm_resource_activity_statuses` */

DROP TABLE IF EXISTS `pims_hrm_resource_activity_statuses`;

CREATE TABLE `pims_hrm_resource_activity_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) NOT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_hrm_resource_activity_statuses` */

insert  into `pims_hrm_resource_activity_statuses`(`id`,`name`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Working',NULL,1,NULL,NULL,'2023-11-02 10:15:59',NULL,'2023-11-02 10:15:59',NULL),
(2,'AdmitBreak',NULL,1,NULL,NULL,'2023-11-02 10:16:04',NULL,'2023-11-02 10:16:04',NULL),
(3,'Relive Resource',NULL,1,NULL,NULL,'2023-11-02 10:16:07',NULL,'2023-11-02 10:16:07',NULL),
(4,'suspension',NULL,1,NULL,NULL,'2023-11-02 10:16:10',NULL,'2023-11-02 10:16:10',NULL),
(5,'(NULLterminated)',NULL,1,NULL,NULL,'2023-11-02 10:16:12',NULL,'2023-11-02 10:16:12',NULL);

/*Table structure for table `pims_org_administrator_types` */

DROP TABLE IF EXISTS `pims_org_administrator_types`;

CREATE TABLE `pims_org_administrator_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_administrator_type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_administrator_types` */

insert  into `pims_org_administrator_types`(`id`,`org_administrator_type`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Owner',NULL,1,NULL,NULL,'2023-11-02 10:15:11',NULL,'2023-11-02 10:15:11',NULL),
(3,'Partner',NULL,1,NULL,NULL,'2023-11-02 10:15:16',NULL,'2023-11-02 10:15:16',NULL),
(4,'Manging Director',NULL,1,NULL,NULL,'2023-11-02 10:15:17',NULL,'2023-11-02 10:15:17',NULL),
(5,'Director',NULL,1,NULL,NULL,'2023-11-02 10:15:23',NULL,'2023-11-02 10:15:23',NULL),
(6,'Employer',NULL,1,NULL,NULL,'2023-11-02 10:15:25',NULL,'2023-11-02 10:15:25',NULL),
(7,'Employee',NULL,1,NULL,NULL,'2023-11-02 10:15:31',NULL,'2023-11-02 10:15:31',NULL),
(8,'Auditor',NULL,1,NULL,NULL,'2023-11-02 10:15:32',NULL,'2023-11-02 10:15:32',NULL);

/*Table structure for table `pims_org_business_activities` */

DROP TABLE IF EXISTS `pims_org_business_activities`;

CREATE TABLE `pims_org_business_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_activity` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_business_activities` */

insert  into `pims_org_business_activities`(`id`,`business_activity`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Sales',NULL,1,NULL,NULL,'2023-11-02 10:14:37',NULL,'2023-11-02 10:14:37',NULL),
(3,'Service',NULL,1,NULL,NULL,'2023-11-02 10:14:41',NULL,'2023-11-02 10:14:41',NULL),
(4,'Manufacturing',NULL,1,NULL,NULL,'2023-11-02 10:14:44',NULL,'2023-11-02 10:14:44',NULL),
(5,'Production ',NULL,1,NULL,NULL,'2023-11-02 10:14:48',NULL,'2023-11-02 10:14:48',NULL),
(6,'Export',NULL,1,NULL,NULL,'2023-11-02 10:14:53',NULL,'2023-11-02 10:14:53',NULL);

/*Table structure for table `pims_org_business_sale_subsets` */

DROP TABLE IF EXISTS `pims_org_business_sale_subsets`;

CREATE TABLE `pims_org_business_sale_subsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_sale_subset` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_business_sale_subsets` */

insert  into `pims_org_business_sale_subsets`(`id`,`business_sale_subset`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Retail',NULL,1,NULL,NULL,'2023-11-02 10:14:04',NULL,'2023-11-02 10:14:04',NULL),
(3,'Whole Sale',NULL,1,NULL,NULL,'2023-11-02 10:14:07',NULL,'2023-11-02 10:14:07',NULL),
(4,'Trading',NULL,1,NULL,NULL,'2023-11-02 10:14:15',NULL,'2023-11-02 10:14:15',NULL),
(5,'E-commerce',NULL,1,NULL,NULL,'2023-11-02 10:14:19',NULL,'2023-11-02 10:14:19',NULL);

/*Table structure for table `pims_org_business_sectors` */

DROP TABLE IF EXISTS `pims_org_business_sectors`;

CREATE TABLE `pims_org_business_sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_sector` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_business_sectors` */

insert  into `pims_org_business_sectors`(`id`,`business_sector`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Sector',NULL,1,NULL,NULL,'2023-11-02 10:13:48',NULL,'2023-11-02 10:13:48',NULL);

/*Table structure for table `pims_org_categories` */

DROP TABLE IF EXISTS `pims_org_categories`;

CREATE TABLE `pims_org_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_category` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_categories` */

insert  into `pims_org_categories`(`id`,`org_category`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Business',NULL,1,NULL,NULL,'2023-11-02 10:13:12',NULL,'2023-11-02 10:13:12',NULL),
(3,'Goverment',NULL,1,NULL,NULL,'2023-11-02 10:13:15',NULL,'2023-11-02 10:13:15',NULL),
(4,'NGO-Non Gov Org',NULL,1,NULL,NULL,'2023-11-02 10:13:20',NULL,'2023-11-02 10:13:20',NULL),
(5,'Social Party',NULL,1,NULL,NULL,'2023-11-02 10:13:23',NULL,'2023-11-02 10:13:23',NULL),
(6,'Society',NULL,1,NULL,NULL,'2023-11-02 10:13:25',NULL,'2023-11-02 10:13:25',NULL);

/*Table structure for table `pims_org_document_types` */

DROP TABLE IF EXISTS `pims_org_document_types`;

CREATE TABLE `pims_org_document_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_doc_type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_document_types` */

insert  into `pims_org_document_types`(`id`,`org_doc_type`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'GST ',NULL,1,NULL,NULL,'2023-11-02 10:08:38',NULL,'2023-11-02 10:08:38',NULL),
(3,'PAN',NULL,1,NULL,NULL,'2023-11-02 10:08:41',NULL,'2023-11-02 10:08:41',NULL),
(4,'CIN',NULL,1,NULL,NULL,'2023-11-02 10:12:22',NULL,'2023-11-02 10:12:22',NULL),
(5,'TAN',NULL,1,NULL,NULL,'2023-11-02 10:12:25',NULL,'2023-11-02 10:12:25',NULL),
(6,'TIN',NULL,1,NULL,NULL,'2023-11-02 10:12:28',NULL,'2023-11-02 10:12:28',NULL),
(7,'SME',NULL,1,NULL,NULL,'2023-11-02 10:12:32',NULL,'2023-11-02 10:12:32',NULL),
(8,'FSSAI',NULL,1,NULL,NULL,'2023-11-02 10:12:35',NULL,'2023-11-02 10:12:35',NULL),
(9,'Partner_registration',NULL,1,NULL,NULL,'2023-11-02 10:12:42',NULL,'2023-11-02 10:12:42',NULL),
(10,'Registration Of Factories',NULL,1,NULL,NULL,'2023-11-02 10:12:50',NULL,'2023-11-02 10:12:50',NULL),
(11,'Udyog aadhar',NULL,1,NULL,NULL,'2023-11-02 10:12:51',NULL,'2023-11-02 10:12:51',NULL);

/*Table structure for table `pims_org_ownerships` */

DROP TABLE IF EXISTS `pims_org_ownerships`;

CREATE TABLE `pims_org_ownerships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_ownership` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_ownerships` */

insert  into `pims_org_ownerships`(`id`,`org_ownership`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Professional',NULL,1,NULL,NULL,'2023-11-02 10:08:07',NULL,'2023-11-02 10:08:07',NULL),
(3,'Sole Proprietorship',NULL,1,NULL,NULL,'2023-11-02 10:08:08',NULL,'2023-11-02 10:08:08',NULL),
(4,'Partnership',NULL,1,NULL,NULL,'2023-11-02 10:11:18',NULL,'2023-11-02 10:11:18',NULL),
(5,'LIC',NULL,1,NULL,NULL,'2023-11-02 10:11:23',NULL,'2023-11-02 10:11:23',NULL),
(6,'Pvt Limited',NULL,1,NULL,NULL,'2023-11-02 10:11:31',NULL,'2023-11-02 10:11:31',NULL),
(7,'Public Limited',NULL,1,NULL,NULL,'2023-11-02 10:11:36',NULL,'2023-11-02 10:11:36',NULL),
(8,'Trust/Foundation',NULL,1,NULL,NULL,'2023-11-02 10:11:40',NULL,'2023-11-02 10:11:40',NULL);

/*Table structure for table `pims_org_structures` */

DROP TABLE IF EXISTS `pims_org_structures`;

CREATE TABLE `pims_org_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_structure` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_org_structures` */

insert  into `pims_org_structures`(`id`,`org_structure`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Business',NULL,1,NULL,NULL,'2023-11-02 10:09:02',NULL,'2023-11-02 10:08:52',NULL),
(3,'Shop',NULL,1,NULL,NULL,'2023-11-02 10:09:04',NULL,'2023-11-02 10:08:55',NULL);

/*Table structure for table `pims_person_blood_groups` */

DROP TABLE IF EXISTS `pims_person_blood_groups`;

CREATE TABLE `pims_person_blood_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_blood_groups` */

insert  into `pims_person_blood_groups`(`id`,`blood_group`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'A+ve',NULL,1,NULL,NULL,'2023-11-02 10:07:24',NULL,'2023-11-02 10:07:24',NULL),
(3,'B+ve ',NULL,1,NULL,NULL,'2023-11-02 10:07:28',NULL,'2023-11-02 10:07:28',NULL),
(4,'O+ve',NULL,1,NULL,NULL,'2023-11-02 10:07:33',NULL,'2023-11-02 10:07:33',NULL);

/*Table structure for table `pims_person_document_types` */

DROP TABLE IF EXISTS `pims_person_document_types`;

CREATE TABLE `pims_person_document_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_doc_type` varchar(255) NOT NULL,
  `mandatory_status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_document_types` */

insert  into `pims_person_document_types`(`id`,`person_doc_type`,`mandatory_status`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Adhaar Card',1,NULL,1,NULL,NULL,'2023-11-02 10:06:39',NULL,'2023-11-02 10:06:39',NULL),
(3,'Vote Id',1,NULL,1,NULL,NULL,'2023-11-02 10:06:49',NULL,'2023-11-02 10:06:49',NULL),
(4,'Linesce',1,NULL,1,NULL,NULL,'2023-11-02 10:07:04',NULL,'2023-11-02 10:07:04',NULL);

/*Table structure for table `pims_person_genders` */

DROP TABLE IF EXISTS `pims_person_genders`;

CREATE TABLE `pims_person_genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_genders` */

insert  into `pims_person_genders`(`id`,`gender`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Male',NULL,1,NULL,NULL,'2023-10-27 14:54:17',NULL,'2023-10-27 14:54:17',NULL),
(3,'Female',NULL,1,NULL,NULL,'2023-10-27 14:54:17',NULL,'2023-10-27 14:54:17',NULL),
(4,'Other',NULL,1,NULL,NULL,'2023-10-27 14:54:17',NULL,'2023-10-27 14:54:17',NULL);

/*Table structure for table `pims_person_marital_statues` */

DROP TABLE IF EXISTS `pims_person_marital_statues`;

CREATE TABLE `pims_person_marital_statues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_status` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_marital_statues` */

insert  into `pims_person_marital_statues`(`id`,`marital_status`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Married',NULL,1,NULL,NULL,'2023-11-02 10:05:54',NULL,'2023-11-02 10:05:54',NULL),
(3,'Single',NULL,1,NULL,NULL,'2023-11-02 10:06:05',NULL,'2023-11-02 10:06:05',NULL);

/*Table structure for table `pims_person_qualifications` */

DROP TABLE IF EXISTS `pims_person_qualifications`;

CREATE TABLE `pims_person_qualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qualification` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_qualifications` */

insert  into `pims_person_qualifications`(`id`,`qualification`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'Bcoms','Ugs',1,NULL,'8','2023-10-17 11:44:29','8','2023-10-17 11:45:04',NULL),
(2,'B.Tech',NULL,1,NULL,NULL,'2023-11-02 10:05:23',NULL,'2023-11-02 10:05:23',NULL),
(3,'M.Tech',NULL,1,NULL,NULL,'2023-11-02 10:05:38',NULL,'2023-11-02 10:05:38',NULL);

/*Table structure for table `pims_person_relationships` */

DROP TABLE IF EXISTS `pims_person_relationships`;

CREATE TABLE `pims_person_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_relationship` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_relationships` */

insert  into `pims_person_relationships`(`id`,`person_relationship`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(1,'marrieds','lifes',1,NULL,'8','2023-10-17 11:43:41','8','2023-10-17 11:44:13',NULL),
(2,'Single',NULL,1,NULL,NULL,'2023-11-02 10:04:54',NULL,'2023-11-02 10:04:54',NULL);

/*Table structure for table `pims_person_salutations` */

DROP TABLE IF EXISTS `pims_person_salutations`;

CREATE TABLE `pims_person_salutations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_person_salutations` */

insert  into `pims_person_salutations`(`id`,`salutation`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`created_at`,`last_updated_by`,`updated_at`,`deleted_at`) values 
(2,'Mr',NULL,1,NULL,'8','2023-10-17 11:32:38',NULL,'2023-10-17 11:32:38',NULL),
(3,'MS',NULL,1,NULL,NULL,'2023-11-02 10:04:45',NULL,'2023-11-02 10:04:45',NULL);

/*Table structure for table `pims_user_permission` */

DROP TABLE IF EXISTS `pims_user_permission`;

CREATE TABLE `pims_user_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_user_permission` */

/*Table structure for table `pims_user_role_masters` */

DROP TABLE IF EXISTS `pims_user_role_masters`;

CREATE TABLE `pims_user_role_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_user_role_masters` */

/*Table structure for table `pims_user_roles` */

DROP TABLE IF EXISTS `pims_user_roles`;

CREATE TABLE `pims_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pims_role_master_id` int(11) DEFAULT NULL,
  `pims_user_permission_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_user_roles` */

/*Table structure for table `pims_users` */

DROP TABLE IF EXISTS `pims_users`;

CREATE TABLE `pims_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pims_user_role_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pims_users` */

insert  into `pims_users`(`id`,`name`,`mobile_no`,`email`,`password`,`pims_user_role_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(5,'harish Kumar','9698591808','kumar@gmail.com','$2y$10$/muN/hB/MzABhW51ezS.3eXUZul.Eh0RzsPfdI6.hYbpo.K5SYvcm',6,NULL,NULL,'2023-07-21 06:44:45','2023-09-25 10:03:35',NULL),
(6,'dinesh','9865395029','dinesh@gmail.com','$2y$10$yelHkCorZ1BGHOpCC/f96.Jzs9cgB3G8lqvpk2B90oOSX8bxjeJLO',4,NULL,NULL,'2023-08-05 03:57:30','2023-08-05 09:40:10',NULL),
(7,'Ravi','9890987656','Ravi@gmail.com','$2y$10$/muN/hB/MzABhW51ezS.3eXUZul.Eh0RzsPfdI6.hYbpo.K5SYvcm',5,NULL,NULL,'2023-08-05 04:50:06','2023-08-05 04:50:06',NULL),
(8,'harish','8838721805','harish@gmail.com','$2y$10$v43SgwWxJZnJf.2HqqnACe3Pnqui9APxJ30STcv8NI1xUlSprAK02',12,NULL,NULL,'2023-09-25 10:04:48','2023-10-27 12:28:53',NULL);

/*Table structure for table `sms_manipulations` */

DROP TABLE IF EXISTS `sms_manipulations`;

CREATE TABLE `sms_manipulations` (
  `id` int(11) DEFAULT NULL,
  `mobile_no` varchar(150) DEFAULT NULL,
  `sms_type_id` int(11) DEFAULT NULL,
  `sms_content` text DEFAULT NULL,
  `uid` varchar(150) DEFAULT NULL,
  `pfm_active_status_id` int(1) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `sms_manipulations` */

insert  into `sms_manipulations`(`id`,`mobile_no`,`sms_type_id`,`sms_content`,`uid`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(NULL,'8838721805',1,'8309','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-09-05 05:11:53','2023-09-05 05:11:53',NULL),
(NULL,'9698591808',1,'8973','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 09:53:37','2023-09-14 09:53:37',NULL),
(NULL,'9698591808',1,'3798','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 09:53:52','2023-09-14 09:53:52',NULL),
(NULL,'9698591808',1,'8447','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 09:53:57','2023-09-14 09:53:57',NULL),
(NULL,'9698591808',1,'4543','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 09:53:59','2023-09-14 09:53:59',NULL),
(NULL,'9698591808',1,'9564','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 09:58:42','2023-09-14 09:58:42',NULL),
(NULL,'9698591808',1,'2877','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 09:59:30','2023-09-14 09:59:30',NULL),
(NULL,'9698591808',1,'8136','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 10:33:33','2023-09-14 10:33:33',NULL),
(NULL,'9698591808',1,'3730','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 10:50:21','2023-09-14 10:50:21',NULL),
(NULL,'9698591808',1,'5848','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 10:50:22','2023-09-14 10:50:22',NULL),
(NULL,'9698591808',1,'8367','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 10:51:43','2023-09-14 10:51:43',NULL),
(NULL,'9698591808',1,'9480','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 10:51:53','2023-09-14 10:51:53',NULL),
(NULL,'9698591808',1,'3285','69111250-d01d-465e-9ff7-0129204a8a98',NULL,NULL,'2023-09-14 11:02:22','2023-09-14 11:02:22',NULL),
(NULL,'8838721805',1,'1261','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-10-05 06:40:26','2023-10-05 06:40:26',NULL),
(NULL,'8838721805',1,'4001','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-10-05 06:58:09','2023-10-05 06:58:09',NULL),
(NULL,'9087654567',1,'4993','f0964ad9-17e6-4cae-aad7-01648817c4b8',NULL,NULL,'2023-10-12 10:16:17','2023-10-12 10:16:17',NULL),
(NULL,'9087654567',1,'2644','f0964ad9-17e6-4cae-aad7-01648817c4b8',NULL,NULL,'2023-10-12 10:55:39','2023-10-12 10:55:39',NULL),
(NULL,'8838721805',1,'8488','31bc3500-1d07-4867-9b34-35e9225c3f7e',NULL,NULL,'2023-11-03 04:34:33','2023-11-03 04:34:33',NULL),
(NULL,'9087890678',1,'7858','fa0a13e9-82ca-467f-a84c-56af71bcab02',NULL,NULL,'2023-11-22 06:02:11','2023-11-22 06:02:11',NULL),
(NULL,'9087890678',1,'8467','fa0a13e9-82ca-467f-a84c-56af71bcab02',NULL,NULL,'2023-11-22 06:02:34','2023-11-22 06:02:34',NULL),
(NULL,'8838721805',1,'6863','31bc3500-1d07-4867-9b34-35e9225c3f7e',NULL,NULL,'2023-11-22 06:13:59','2023-11-22 06:13:59',NULL),
(NULL,'9087890678',1,'3417','fa0a13e9-82ca-467f-a84c-56af71bcab02',NULL,NULL,'2023-11-27 11:01:52','2023-11-27 11:01:52',NULL),
(NULL,'8838721805',1,'3659','fa0a13e9-82ca-467f-a84c-56af71bcab02',NULL,NULL,'2023-11-27 11:02:14','2023-11-27 11:02:14',NULL),
(NULL,'566867876867867867867',1,'9454','fa0a13e9-82ca-467f-a84c-56af71bcab02',NULL,NULL,'2023-11-27 11:02:31','2023-11-27 11:02:31',NULL),
(NULL,'8838721805',1,'8674','95ed920e-316e-459a-a4e8-735934a1a92b',NULL,NULL,'2023-11-27 11:08:44','2023-11-27 11:08:44',NULL),
(NULL,'8838721805',1,'4015','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-27 11:21:15','2023-11-27 11:21:15',NULL),
(NULL,'8838721805',1,'1003','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-28 04:40:11','2023-11-28 04:40:11',NULL),
(NULL,'8838721805',1,'9056','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:33:26','2023-11-30 04:33:26',NULL),
(NULL,'8838721805',1,'1065','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:37:45','2023-11-30 04:37:45',NULL),
(NULL,'8838721805',1,'8703','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:38:03','2023-11-30 04:38:03',NULL),
(NULL,'8838721805',1,'9253','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:38:11','2023-11-30 04:38:11',NULL),
(NULL,'8838721805',1,'7324','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:47:22','2023-11-30 04:47:22',NULL),
(NULL,'8838721805',1,'6441','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:48:22','2023-11-30 04:48:22',NULL),
(NULL,'8838721805',1,'4571','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:48:32','2023-11-30 04:48:32',NULL),
(NULL,'8838721805',1,'4824','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:49:39','2023-11-30 04:49:39',NULL),
(NULL,'8838721805',1,'7699','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:49:54','2023-11-30 04:49:54',NULL),
(NULL,'8838721805',1,'9898','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:50:15','2023-11-30 04:50:15',NULL),
(NULL,'8838721805',1,'3438','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 04:50:25','2023-11-30 04:50:25',NULL),
(NULL,'8838721805',1,'1034','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 05:46:24','2023-11-30 05:46:24',NULL),
(NULL,'8838721805',1,'2608','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-11-30 05:47:37','2023-11-30 05:47:37',NULL),
(NULL,'8838721805',1,'4550','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-01 10:03:15','2023-12-01 10:03:15',NULL),
(NULL,'8838721805',1,'4259','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-01 10:45:36','2023-12-01 10:45:36',NULL),
(NULL,'8838721805',1,'4381','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-01 10:46:00','2023-12-01 10:46:00',NULL),
(NULL,'8838721805',1,'5357','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-01 10:46:05','2023-12-01 10:46:05',NULL),
(NULL,'8838721805',1,'4848','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-02 04:18:43','2023-12-02 04:18:43',NULL),
(NULL,'8838721805',1,'6119','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-02 05:27:01','2023-12-02 05:27:01',NULL),
(NULL,'8838721805',1,'9065','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-02 06:04:42','2023-12-02 06:04:42',NULL),
(NULL,'8838721805',1,'4857','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-02 07:01:08','2023-12-02 07:01:08',NULL),
(NULL,'8838721805',1,'6255','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-02 08:49:07','2023-12-02 08:49:07',NULL),
(NULL,'8838721805',1,'2142','383c8fe6-4085-47a5-88f8-414f607bc2b7',NULL,NULL,'2023-12-02 09:34:24','2023-12-02 09:34:24',NULL);

/*Table structure for table `sms_types` */

DROP TABLE IF EXISTS `sms_types`;

CREATE TABLE `sms_types` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `sms_types` */

insert  into `sms_types`(`id`,`name`,`description`,`pfm_active_status_id`,`deleted_flag`,`created_by`,`last_updated_by`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'PersonToMember',NULL,1,NULL,NULL,NULL,'2023-09-08 11:09:34','2023-09-08 11:09:34',NULL);

/*Table structure for table `temp_organizations` */

DROP TABLE IF EXISTS `temp_organizations`;

CREATE TABLE `temp_organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authorized_person_id` varchar(191) DEFAULT NULL,
  `organization_detail` text DEFAULT NULL,
  `organization_address` text DEFAULT NULL,
  `organization_doc_type` text DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `temp_organizations` */

insert  into `temp_organizations`(`id`,`authorized_person_id`,`organization_detail`,`organization_address`,`organization_doc_type`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(71,NULL,'{\"orgName\":\"live Solution\",\"orgEmail\":\"dream@gmail.com\",\"orgwebsite\":\"Passion\",\"orgStructureId\":\"8\",\"orgCategoryId\":\"8\",\"orgOwnershipId\":\"8\"}','{\"doorNo\":\"90\",\"buildingName\":\"FSM\",\"street\":\"Junction\",\"landMark\":\"Law\",\"pinCode\":\"65555\",\"districtId\":\"4\",\"stateId\":\"2\",\"CityId\":\"3\",\"area\":\"jamal tollgate\",\"location\":\"Khaja malai\"}','[{\"doctypeId\":\"45\",\"docNo\":\"89076787\",\"docValid\":\"2050\",\"docFilePath\":\"\"}]',NULL,NULL,'2023-11-23 07:27:34','2023-11-23 07:27:34',NULL),
(72,NULL,'{\"orgName\":\"live Solution\",\"orgEmail\":\"dream@gmail.com\",\"orgwebsite\":\"Passion\",\"orgStructureId\":\"8\",\"orgCategoryId\":\"8\",\"orgOwnershipId\":\"8\"}','{\"doorNo\":\"90\",\"buildingName\":\"FSM\",\"street\":\"Junction\",\"landMark\":\"Law\",\"pinCode\":\"65555\",\"districtId\":\"4\",\"stateId\":\"2\",\"CityId\":\"3\",\"area\":\"jamal tollgate\",\"location\":\"Khaja malai\"}','[{\"doctypeId\":\"45\",\"docNo\":\"89076787\",\"docValid\":\"2050\",\"docFilePath\":\"\"}]',NULL,NULL,'2023-11-23 09:46:46','2023-11-23 09:46:46',NULL),
(73,NULL,'{\"orgName\":\"Madeline Camacho\",\"orgEmail\":\"vyfog@mailinator.com\",\"orgwebsite\":\"https:\\/\\/www.dizezocad.cc\",\"orgStructureId\":\"2\",\"orgCategoryId\":\"4\",\"orgOwnershipId\":\"3\"}','{\"doorNo\":\"Similique esse maxi\",\"buildingName\":\"Nita Burris\",\"street\":\"Sed debitis voluptat\",\"landMark\":\"Dolorem aliquip numq\",\"pinCode\":\"51\",\"districtId\":null,\"stateId\":\"1\",\"CityId\":\"undefined\",\"area\":\"Deleniti magni aliqu\",\"location\":\"Exercitationem aut e\"}',NULL,NULL,NULL,'2023-12-01 09:42:13','2023-12-01 09:42:13',NULL);

/*Table structure for table `temp_persons` */

DROP TABLE IF EXISTS `temp_persons`;

CREATE TABLE `temp_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `personal_data` text DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `pfm_stage_id` int(11) NOT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `temp_persons` */

/*Table structure for table `user_organization_relationals` */

DROP TABLE IF EXISTS `user_organization_relationals`;

CREATE TABLE `user_organization_relationals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `default_org` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_organization_relationals` */

insert  into `user_organization_relationals`(`id`,`uid`,`organization_id`,`default_org`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(5,'383c8fe6-4085-47a5-88f8-414f607bc2b7',1,1,1,NULL,'2023-10-11 07:34:28','2023-10-11 07:34:28',NULL),
(6,'383c8fe6-4085-47a5-88f8-414f607bc2b7',2,0,1,NULL,'2023-10-11 07:43:08','2023-10-11 07:43:08',NULL);

/*Table structure for table `user_token_logs` */

DROP TABLE IF EXISTS `user_token_logs`;

CREATE TABLE `user_token_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `token_in_time` time DEFAULT NULL,
  `token_out_time` time DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_token_logs` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `primary_mobile` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pfm_stage_id` int(11) DEFAULT NULL,
  `pfm_active_status_id` int(11) DEFAULT NULL,
  `deleted_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`uid`,`primary_mobile`,`primary_email`,`password`,`pfm_stage_id`,`pfm_active_status_id`,`deleted_flag`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'383c8fe6-4085-47a5-88f8-414f607bc2b7','8838721805','harish@gmail.com','$2y$10$v43SgwWxJZnJf.2HqqnACe3Pnqui9APxJ30STcv8NI1xUlSprAK02',2,NULL,NULL,'2023-09-05 05:13:02','2023-11-18 07:18:56',NULL),
(2,'69111250-d01d-465e-9ff7-0129204a8a98','9698591808','rahul@gmail.com','$2y$10$4mASR22YVLzRFwnaM7ttHOs9f/xdjM4y6kcGEoZgb5.EIAd1rFC8S',1,NULL,NULL,'2023-09-14 11:10:43','2023-09-14 11:10:43',NULL),
(3,'95ed920e-316e-459a-a4e8-735934a1a92b','6374112691','d@gmail.com','$2y$10$FRjmFnXWy8PWqHvIotE9Ue.WO1gmOxJd.2sF2BRn6kDDCosJ3E93a',1,NULL,NULL,'2023-09-20 12:21:37','2023-09-20 12:21:37',NULL),
(5,'0dd53f3d-79af-494f-b237-5237f00da3bf','9865396190','dinesh@gmail.com','$2y$10$VbMXrYtpqGjjJ1fdHp3gg.lk66RZb4aH6xWTEW8hPO2eiyRs1mgHO',1,NULL,NULL,'2023-09-21 04:57:55','2023-09-21 04:57:55',NULL),
(6,'ba3349be-babe-4ad3-9628-e750db649900','7708121634','david@gmail.com','$2y$10$D6qtMGFFtTXJIE5zslozMO5Ap/luNAl0klRcfzZ2d5IBKLRforAMe',1,NULL,NULL,'2023-09-29 12:22:19','2023-09-29 12:22:19',NULL),
(7,'9da2b0e2-9434-4dc3-934a-55d519d5a1a3','8838721806','siva@gmail.com','$2y$10$rrgQIazPp7UtuugS5FvJQOu1lttQxtPyEoHQnqiYmGWO0CGr0gY/S',1,NULL,NULL,'2023-11-04 04:20:25','2023-11-04 04:20:25',NULL),
(8,'cf010be6-0738-4029-a61f-5a389cdc8bae','8838721807','deepan@gmail.com','$2y$10$zWaL8IbCbZf6ct0e7.96lOd8OttRQdxOlcX3971D8F7z3UyQ39GH6',1,NULL,NULL,'2023-11-04 06:53:13','2023-11-04 06:53:13',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
