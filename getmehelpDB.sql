/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 10.4.32-MariaDB : Database - getmehelp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`getmehelp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `getmehelp`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add category',7,'add_category'),
(26,'Can change category',7,'change_category'),
(27,'Can delete category',7,'delete_category'),
(28,'Can view category',7,'view_category'),
(29,'Can add login',8,'add_login'),
(30,'Can change login',8,'change_login'),
(31,'Can delete login',8,'delete_login'),
(32,'Can view login',8,'view_login'),
(33,'Can add user',9,'add_user'),
(34,'Can change user',9,'change_user'),
(35,'Can delete user',9,'delete_user'),
(36,'Can view user',9,'view_user'),
(37,'Can add service_center',10,'add_service_center'),
(38,'Can change service_center',10,'change_service_center'),
(39,'Can delete service_center',10,'delete_service_center'),
(40,'Can view service_center',10,'view_service_center'),
(41,'Can add service',11,'add_service'),
(42,'Can change service',11,'change_service'),
(43,'Can delete service',11,'delete_service'),
(44,'Can view service',11,'view_service'),
(45,'Can add review',12,'add_review'),
(46,'Can change review',12,'change_review'),
(47,'Can delete review',12,'delete_review'),
(48,'Can view review',12,'view_review'),
(49,'Can add request',13,'add_request'),
(50,'Can change request',13,'change_request'),
(51,'Can delete request',13,'delete_request'),
(52,'Can view request',13,'view_request'),
(53,'Can add payment',14,'add_payment'),
(54,'Can change payment',14,'change_payment'),
(55,'Can delete payment',14,'delete_payment'),
(56,'Can view payment',14,'view_payment'),
(57,'Can add complaint',15,'add_complaint'),
(58,'Can change complaint',15,'change_complaint'),
(59,'Can delete complaint',15,'delete_complaint'),
(60,'Can view complaint',15,'view_complaint'),
(61,'Can add service review',16,'add_servicereview'),
(62,'Can change service review',16,'change_servicereview'),
(63,'Can delete service review',16,'delete_servicereview'),
(64,'Can view service review',16,'view_servicereview'),
(65,'Can add bookings',17,'add_bookings'),
(66,'Can change bookings',17,'change_bookings'),
(67,'Can delete bookings',17,'delete_bookings'),
(68,'Can view bookings',17,'view_bookings'),
(69,'Can add loction',18,'add_loction'),
(70,'Can change loction',18,'change_loction'),
(71,'Can delete loction',18,'delete_loction'),
(72,'Can view loction',18,'view_loction');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(17,'MYAPP','bookings'),
(7,'MYAPP','category'),
(15,'MYAPP','complaint'),
(18,'MYAPP','loction'),
(8,'MYAPP','login'),
(14,'MYAPP','payment'),
(13,'MYAPP','request'),
(12,'MYAPP','review'),
(11,'MYAPP','service'),
(16,'MYAPP','servicereview'),
(10,'MYAPP','service_center'),
(9,'MYAPP','user'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'MYAPP','0001_initial','2024-10-19 08:40:51.697439'),
(2,'MYAPP','0002_auto_20241019_1410','2024-10-19 08:40:52.674547'),
(3,'contenttypes','0001_initial','2024-10-19 08:40:52.763126'),
(4,'auth','0001_initial','2024-10-19 08:40:53.020712'),
(5,'admin','0001_initial','2024-10-19 08:40:53.620714'),
(6,'admin','0002_logentry_remove_auto_add','2024-10-19 08:40:53.809443'),
(7,'admin','0003_logentry_add_action_flag_choices','2024-10-19 08:40:53.856663'),
(8,'contenttypes','0002_remove_content_type_name','2024-10-19 08:40:54.029827'),
(9,'auth','0002_alter_permission_name_max_length','2024-10-19 08:40:54.124846'),
(10,'auth','0003_alter_user_email_max_length','2024-10-19 08:40:54.166680'),
(11,'auth','0004_alter_user_username_opts','2024-10-19 08:40:54.188309'),
(12,'auth','0005_alter_user_last_login_null','2024-10-19 08:40:54.314727'),
(13,'auth','0006_require_contenttypes_0002','2024-10-19 08:40:54.330416'),
(14,'auth','0007_alter_validators_add_error_messages','2024-10-19 08:40:54.346423'),
(15,'auth','0008_alter_user_username_max_length','2024-10-19 08:40:54.394092'),
(16,'auth','0009_alter_user_last_name_max_length','2024-10-19 08:40:54.441432'),
(17,'auth','0010_alter_group_name_max_length','2024-10-19 08:40:54.493698'),
(18,'auth','0011_update_proxy_permissions','2024-10-19 08:40:54.548920'),
(19,'sessions','0001_initial','2024-10-19 08:40:54.584798'),
(20,'MYAPP','0003_service_service_charge','2024-10-19 08:57:55.010537'),
(21,'MYAPP','0004_auto_20241128_1209','2024-11-28 06:39:50.750650'),
(22,'MYAPP','0005_servicereview','2024-12-07 06:30:22.599006'),
(23,'MYAPP','0006_bookings','2024-12-17 08:44:11.079152'),
(24,'MYAPP','0007_auto_20241218_1240','2024-12-18 07:10:40.281357'),
(25,'MYAPP','0008_loction','2025-01-12 06:56:56.200152'),
(26,'MYAPP','0009_remove_servicereview_name','2025-01-12 08:15:24.591406'),
(27,'MYAPP','0010_remove_review_name','2025-01-12 08:29:54.268730');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('8oyeskpur7t0ehlzl30o51u4blym9rfk','MDViZTJiYjFkN2UxNWQ0MTI0ZGMxMzExZWY2ZmU1OWNjMjA3MTI0Mjp7ImxpZCI6MSwiYmlkIjoiMSJ9','2025-01-13 15:40:43.655268'),
('iojqgpn9q2cz1p10wp7uymi21zm3cuxl','NTZiZDBiMmE2NjhhZTAzNGRiZGQyZGU2ZDEzYWFiMjhiMzU1NmE0Njp7ImxpZCI6MX0=','2025-01-13 06:30:36.188797'),
('mod1xpzv3zmek32u5ll2oy3uogpkjbiu','ZTc0N2JlNDE4OTZiNWE4NGQ3YjYyNjcyMmYwODZhM2Y4ZjgwZWRiNzp7ImxpZCI6OSwiYmlkIjoiMSJ9','2025-02-22 06:45:23.097949'),
('p6pia3l7z5z03hn0oq4n27xc2txngidv','YzFiYzQxZjQ1ZWM4MTk5ZTAyY2UwNWUxZjI5OWE1OGZlYTY1MjgzZDp7ImxpZCI6MSwiYmlkIjoiNSJ9','2025-02-22 15:52:13.055319'),
('ztkw1nw6ulejsp69pac0lo8tk6y3x50b','MDViZTJiYjFkN2UxNWQ0MTI0ZGMxMzExZWY2ZmU1OWNjMjA3MTI0Mjp7ImxpZCI6MSwiYmlkIjoiMSJ9','2025-01-13 06:08:40.177955');

/*Table structure for table `myapp_bookings` */

DROP TABLE IF EXISTS `myapp_bookings`;

CREATE TABLE `myapp_bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `USER_id` int(11) NOT NULL,
  `SERVICE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_bookings_USER_id_ba66fd16_fk_MYAPP_user_id` (`USER_id`),
  KEY `MYAPP_bookings_SERVICE_id_cac90f48_fk_MYAPP_service_id` (`SERVICE_id`),
  CONSTRAINT `MYAPP_bookings_SERVICE_id_cac90f48_fk_MYAPP_service_id` FOREIGN KEY (`SERVICE_id`) REFERENCES `myapp_service` (`id`),
  CONSTRAINT `MYAPP_bookings_USER_id_ba66fd16_fk_MYAPP_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_bookings` */

insert  into `myapp_bookings`(`id`,`date`,`status`,`USER_id`,`SERVICE_id`) values 
(5,'2025-02-08','Approved',1,5),
(6,'2025-02-08','pending',1,5),
(7,'2025-02-08','pending',1,5),
(8,'2025-02-08','pending',1,5),
(9,'2025-02-08','pending',1,6);

/*Table structure for table `myapp_category` */

DROP TABLE IF EXISTS `myapp_category`;

CREATE TABLE `myapp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_category` */

insert  into `myapp_category`(`id`,`category`) values 
(1,'washing.'),
(3,'mechanical'),
(5,'Electric Charge station'),
(6,'Paint work'),
(7,'Fuel Provider'),
(8,'Crain Service');

/*Table structure for table `myapp_complaint` */

DROP TABLE IF EXISTS `myapp_complaint`;

CREATE TABLE `myapp_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `reply` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_complaint_USER_id_013b0fcd_fk_MYAPP_user_id` (`USER_id`),
  CONSTRAINT `MYAPP_complaint_USER_id_013b0fcd_fk_MYAPP_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_complaint` */

insert  into `myapp_complaint`(`id`,`complaint`,`date`,`reply`,`status`,`USER_id`) values 
(1,'bad service','2024-11-28','uufuguufu',' ',1);

/*Table structure for table `myapp_loction` */

DROP TABLE IF EXISTS `myapp_loction`;

CREATE TABLE `myapp_loction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_loction_LOGIN_id_dc2050fa_fk_MYAPP_login_id` (`LOGIN_id`),
  CONSTRAINT `MYAPP_loction_LOGIN_id_dc2050fa_fk_MYAPP_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_loction` */

/*Table structure for table `myapp_login` */

DROP TABLE IF EXISTS `myapp_login`;

CREATE TABLE `myapp_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_login` */

insert  into `myapp_login`(`id`,`username`,`password`,`type`) values 
(1,'admin','123','admin'),
(2,'Jasim','123','user'),
(3,'yamaha','123','pending'),
(4,'tvs','123','pending'),
(5,'hoonda','honda25','Rejected'),
(7,'pranaya123@gmail.com','123','servicecenter'),
(8,'bandb@gmail.com','akhil123','Rejected'),
(9,'ather@gmail.com','123','servicecenter');

/*Table structure for table `myapp_payment` */

DROP TABLE IF EXISTS `myapp_payment`;

CREATE TABLE `myapp_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `REQUEST_id` int(11) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_payment_REQUEST_id_0c713081_fk_MYAPP_request_id` (`REQUEST_id`),
  KEY `MYAPP_payment_USER_id_a9d92077_fk_MYAPP_user_id` (`USER_id`),
  CONSTRAINT `MYAPP_payment_REQUEST_id_0c713081_fk_MYAPP_request_id` FOREIGN KEY (`REQUEST_id`) REFERENCES `myapp_request` (`id`),
  CONSTRAINT `MYAPP_payment_USER_id_a9d92077_fk_MYAPP_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_payment` */

/*Table structure for table `myapp_request` */

DROP TABLE IF EXISTS `myapp_request`;

CREATE TABLE `myapp_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `work_status` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `SERVICE_id` int(11) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_request_SERVICE_id_6beefee6_fk_MYAPP_service_id` (`SERVICE_id`),
  KEY `MYAPP_request_USER_id_1fb5a155_fk_MYAPP_user_id` (`USER_id`),
  CONSTRAINT `MYAPP_request_SERVICE_id_6beefee6_fk_MYAPP_service_id` FOREIGN KEY (`SERVICE_id`) REFERENCES `myapp_service` (`id`),
  CONSTRAINT `MYAPP_request_USER_id_1fb5a155_fk_MYAPP_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_request` */

/*Table structure for table `myapp_review` */

DROP TABLE IF EXISTS `myapp_review`;

CREATE TABLE `myapp_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `review` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_review_LOGIN_id_64f797ad_fk_MYAPP_login_id` (`LOGIN_id`),
  CONSTRAINT `MYAPP_review_LOGIN_id_64f797ad_fk_MYAPP_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_review` */

insert  into `myapp_review`(`id`,`date`,`review`,`LOGIN_id`) values 
(1,'2024-11-28','best',2);

/*Table structure for table `myapp_service` */

DROP TABLE IF EXISTS `myapp_service`;

CREATE TABLE `myapp_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) NOT NULL,
  `descripton` varchar(100) NOT NULL,
  `CATEGORY_id` int(11) NOT NULL,
  `SERVICE_CENTER_id` int(11) NOT NULL,
  `service_charge` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_service_CATEGORY_id_e71dd01f_fk_MYAPP_category_id` (`CATEGORY_id`),
  KEY `MYAPP_service_SERVICE_CENTER_id_9b28daaf_fk_MYAPP_ser` (`SERVICE_CENTER_id`),
  CONSTRAINT `MYAPP_service_CATEGORY_id_e71dd01f_fk_MYAPP_category_id` FOREIGN KEY (`CATEGORY_id`) REFERENCES `myapp_category` (`id`),
  CONSTRAINT `MYAPP_service_SERVICE_CENTER_id_9b28daaf_fk_MYAPP_ser` FOREIGN KEY (`SERVICE_CENTER_id`) REFERENCES `myapp_service_center` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_service` */

insert  into `myapp_service`(`id`,`service_name`,`descripton`,`CATEGORY_id`,`SERVICE_CENTER_id`,`service_charge`) values 
(5,'car washing ','full body washing ',1,4,250),
(6,'2 strok bike engine works','no spare rate included,only service charge.',3,4,5000),
(7,'bike washing','full body wash',1,6,150),
(8,'access 125 ','no spere price included only service charge.',3,6,2000);

/*Table structure for table `myapp_service_center` */

DROP TABLE IF EXISTS `myapp_service_center`;

CREATE TABLE `myapp_service_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `ownername` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `owneremail` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_service_center_LOGIN_id_bebcde9e_fk_MYAPP_login_id` (`LOGIN_id`),
  CONSTRAINT `MYAPP_service_center_LOGIN_id_bebcde9e_fk_MYAPP_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_service_center` */

insert  into `myapp_service_center`(`id`,`name`,`email`,`phone`,`place`,`post`,`pin`,`district`,`photo`,`ownername`,`status`,`owneremail`,`LOGIN_id`) values 
(1,'yamaha','yamaha@gmail.com',9080706050,'Tirur','tirur','676552','malappuram','','sabah cc','pending','sabah6@gmail.com',3),
(2,'tvs','tvs@gmail.com',5573670867,'tirurangadi','tirurangadi','676503','malappuram','','rayees c','pending','mrc53445@gmail.com',4),
(3,'hoonda','honda@gmail.com',9946339185,'tirur','tirur','676508','malappuram','','ajzel k p','pending','angel@gmail.com',5),
(4,'pranaya service center','pranaya123@gmail.com',6282473642,'valanchery','kavumpuram','676552','malappuram','/media/20250207-153222.jpg','afsal','Approved','afsal123@gmail.com',7),
(5,'B&B Garage','bandb@gmail.com',9745336234,'Vettichira','Punnathala','676301','Malappuram','/media/20250102-124009.jpg','akhil','Rejected','akhil@gmail.com',8),
(6,'ather','ather@gmail.com',548278,'puthanatahni','fj;sjfl','749297','wojow','/media/20250111-114514.jpg','lwejop','Approved','jfls',9);

/*Table structure for table `myapp_servicereview` */

DROP TABLE IF EXISTS `myapp_servicereview`;

CREATE TABLE `myapp_servicereview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `review` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  `SERVICE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_servicereview_LOGIN_id_695479c9_fk_MYAPP_login_id` (`LOGIN_id`),
  KEY `MYAPP_servicereview_SERVICE_id_078ce99d_fk_MYAPP_service_id` (`SERVICE_id`),
  CONSTRAINT `MYAPP_servicereview_LOGIN_id_695479c9_fk_MYAPP_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`),
  CONSTRAINT `MYAPP_servicereview_SERVICE_id_078ce99d_fk_MYAPP_service_id` FOREIGN KEY (`SERVICE_id`) REFERENCES `myapp_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_servicereview` */

/*Table structure for table `myapp_user` */

DROP TABLE IF EXISTS `myapp_user`;

CREATE TABLE `myapp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MYAPP_user_LOGIN_id_bf51953a_fk_MYAPP_login_id` (`LOGIN_id`),
  CONSTRAINT `MYAPP_user_LOGIN_id_bf51953a_fk_MYAPP_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `myapp_user` */

insert  into `myapp_user`(`id`,`name`,`email`,`Phone`,`state`,`district`,`place`,`gender`,`dob`,`LOGIN_id`) values 
(1,'Mohammed Jasim','afsal0967@gmail.com',6282452022,'kerala','malappuram','puthanathani ','Male','2005-05-24',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
