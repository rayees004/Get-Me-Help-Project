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

/*Data for the table `auth_group` */

/*Data for the table `auth_group_permissions` */

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
(25,'Can add bookings',7,'add_bookings'),
(26,'Can change bookings',7,'change_bookings'),
(27,'Can delete bookings',7,'delete_bookings'),
(28,'Can view bookings',7,'view_bookings'),
(29,'Can add category',8,'add_category'),
(30,'Can change category',8,'change_category'),
(31,'Can delete category',8,'delete_category'),
(32,'Can view category',8,'view_category'),
(33,'Can add login',9,'add_login'),
(34,'Can change login',9,'change_login'),
(35,'Can delete login',9,'delete_login'),
(36,'Can view login',9,'view_login'),
(37,'Can add service',10,'add_service'),
(38,'Can change service',10,'change_service'),
(39,'Can delete service',10,'delete_service'),
(40,'Can view service',10,'view_service'),
(41,'Can add user',11,'add_user'),
(42,'Can change user',11,'change_user'),
(43,'Can delete user',11,'delete_user'),
(44,'Can view user',11,'view_user'),
(45,'Can add service review',12,'add_servicereview'),
(46,'Can change service review',12,'change_servicereview'),
(47,'Can delete service review',12,'delete_servicereview'),
(48,'Can view service review',12,'view_servicereview'),
(49,'Can add service_center',13,'add_service_center'),
(50,'Can change service_center',13,'change_service_center'),
(51,'Can delete service_center',13,'delete_service_center'),
(52,'Can view service_center',13,'view_service_center'),
(53,'Can add review',14,'add_review'),
(54,'Can change review',14,'change_review'),
(55,'Can delete review',14,'delete_review'),
(56,'Can view review',14,'view_review'),
(57,'Can add request',15,'add_request'),
(58,'Can change request',15,'change_request'),
(59,'Can delete request',15,'delete_request'),
(60,'Can view request',15,'view_request'),
(61,'Can add payment',16,'add_payment'),
(62,'Can change payment',16,'change_payment'),
(63,'Can delete payment',16,'delete_payment'),
(64,'Can view payment',16,'view_payment'),
(65,'Can add loction',17,'add_loction'),
(66,'Can change loction',17,'change_loction'),
(67,'Can delete loction',17,'delete_loction'),
(68,'Can view loction',17,'view_loction'),
(69,'Can add complaint',18,'add_complaint'),
(70,'Can change complaint',18,'change_complaint'),
(71,'Can delete complaint',18,'delete_complaint'),
(72,'Can view complaint',18,'view_complaint'),
(73,'Can add location',17,'add_location'),
(74,'Can change location',17,'change_location'),
(75,'Can delete location',17,'delete_location'),
(76,'Can view location',17,'view_location');

/*Data for the table `auth_user` */

/*Data for the table `auth_user_groups` */

/*Data for the table `auth_user_user_permissions` */

/*Data for the table `django_admin_log` */

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(7,'MYAPP','bookings'),
(8,'MYAPP','category'),
(18,'MYAPP','complaint'),
(17,'MYAPP','location'),
(9,'MYAPP','login'),
(16,'MYAPP','payment'),
(15,'MYAPP','request'),
(14,'MYAPP','review'),
(10,'MYAPP','service'),
(12,'MYAPP','servicereview'),
(13,'MYAPP','service_center'),
(11,'MYAPP','user'),
(6,'sessions','session');

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'MYAPP','0001_initial','2025-02-09 07:26:58.284492'),
(2,'contenttypes','0001_initial','2025-02-09 07:26:59.302413'),
(3,'auth','0001_initial','2025-02-09 07:26:59.522315'),
(4,'admin','0001_initial','2025-02-09 07:27:00.310506'),
(5,'admin','0002_logentry_remove_auto_add','2025-02-09 07:27:00.449141'),
(6,'admin','0003_logentry_add_action_flag_choices','2025-02-09 07:27:00.469409'),
(7,'contenttypes','0002_remove_content_type_name','2025-02-09 07:27:00.604940'),
(8,'auth','0002_alter_permission_name_max_length','2025-02-09 07:27:00.754811'),
(9,'auth','0003_alter_user_email_max_length','2025-02-09 07:27:00.794053'),
(10,'auth','0004_alter_user_username_opts','2025-02-09 07:27:00.822531'),
(11,'auth','0005_alter_user_last_login_null','2025-02-09 07:27:00.938681'),
(12,'auth','0006_require_contenttypes_0002','2025-02-09 07:27:00.952816'),
(13,'auth','0007_alter_validators_add_error_messages','2025-02-09 07:27:00.978887'),
(14,'auth','0008_alter_user_username_max_length','2025-02-09 07:27:01.038774'),
(15,'auth','0009_alter_user_last_name_max_length','2025-02-09 07:27:01.094630'),
(16,'auth','0010_alter_group_name_max_length','2025-02-09 07:27:01.148603'),
(17,'auth','0011_update_proxy_permissions','2025-02-09 07:27:01.224010'),
(18,'sessions','0001_initial','2025-02-09 07:27:01.301302'),
(19,'MYAPP','0002_remove_request_user','2025-02-09 08:25:24.635404'),
(20,'MYAPP','0003_request_status','2025-02-25 07:26:33.021558'),
(21,'MYAPP','0004_auto_20250225_1258','2025-02-25 07:28:03.474564'),
(22,'MYAPP','0005_auto_20250225_1512','2025-02-25 09:43:05.627436'),
(23,'MYAPP','0006_auto_20250225_1641','2025-02-25 11:11:41.428568'),
(24,'MYAPP','0007_auto_20250225_1646','2025-02-25 11:17:01.711914');

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('8oyeskpur7t0ehlzl30o51u4blym9rfk','MDViZTJiYjFkN2UxNWQ0MTI0ZGMxMzExZWY2ZmU1OWNjMjA3MTI0Mjp7ImxpZCI6MSwiYmlkIjoiMSJ9','2025-01-13 15:40:43.655268'),
('iojqgpn9q2cz1p10wp7uymi21zm3cuxl','NTZiZDBiMmE2NjhhZTAzNGRiZGQyZGU2ZDEzYWFiMjhiMzU1NmE0Njp7ImxpZCI6MX0=','2025-01-13 06:30:36.188797'),
('mod1xpzv3zmek32u5ll2oy3uogpkjbiu','ZjZiMDgyMDhiYzc4ZDFkYTA5ODg3Mzk1MDE5ZDZjNzc3MzZkMDI4Zjp7ImxpZCI6OCwiYmlkIjoiMSJ9','2025-02-23 08:25:47.016846'),
('p6pia3l7z5z03hn0oq4n27xc2txngidv','ZTAwZGRjY2JjZDUxZTk0ODY2ZWRlZGFmZTVhNTk1ZGMwOTIwMzk1MTp7ImxpZCI6MywiYmlkIjoiNyIsInNpZCI6IjcifQ==','2025-03-06 09:28:05.985692'),
('st8z3eag4n78wdgoy5v9qhveq2p8siu3','NjhlNThmZmQwMzY1ZDQ2ZjdmZTZmYWYxMmE3MmNmZDkxMTM1MGE2Njp7ImxpZCI6M30=','2025-03-24 09:34:08.178979'),
('ztkw1nw6ulejsp69pac0lo8tk6y3x50b','MDViZTJiYjFkN2UxNWQ0MTI0ZGMxMzExZWY2ZmU1OWNjMjA3MTI0Mjp7ImxpZCI6MSwiYmlkIjoiMSJ9','2025-01-13 06:08:40.177955');

/*Data for the table `myapp_bookings` */

insert  into `myapp_bookings`(`id`,`date`,`status`,`SERVICE_id`,`USER_id`) values 
(1,'2025-02-09','Approved',10,3),
(2,'2025-02-09','pending',10,3),
(3,'2025-02-09','Approved',13,3),
(4,'2025-02-16','pending',13,3),
(5,'2025-02-16','pending',10,3),
(6,'2025-02-16','pending',13,3),
(7,'2025-02-16','pending',13,3),
(8,'2025-02-20','pending',13,3),
(9,'2025-02-20','pending',10,3),
(10,'2025-02-20','pending',10,3),
(11,'2025-03-09','pending',12,3);

/*Data for the table `myapp_category` */

insert  into `myapp_category`(`id`,`category`) values 
(1,'Fuel Provider'),
(2,'Electric Power Station'),
(3,'Mechanical '),
(4,'washing'),
(5,'Electrical');

/*Data for the table `myapp_complaint` */

insert  into `myapp_complaint`(`id`,`complaint`,`date`,`reply`,`status`,`USER_id`) values 
(12,'bad service ','2025-02-20','will manage it','replied',3),
(13,'pooi','2025-02-20','','pending',3),
(14,'kooi','2025-02-20','','pending',3),
(15,'kooi','2025-02-20','','pending',3);

/*Data for the table `myapp_location` */

insert  into `myapp_location`(`id`,`latitude`,`longitude`,`LOGIN_id`) values 
(1,'10.9249677','76.0254143',9);

/*Data for the table `myapp_login` */

insert  into `myapp_login`(`id`,`username`,`password`,`type`) values 
(1,'admin','12','admin'),
(2,'yamaha@gmail.com','12','servicecenter'),
(3,'tvs1@gmail.com','12','servicecenter'),
(4,'SUZUKI@gmail.com','12','Rejected'),
(5,'VOLKSWAGEN@gmail.com','12','pending'),
(6,'HYUNDAI@gmail.com','12','servicecenter'),
(7,'ather@gmail.com','12','servicecenter'),
(8,'indianoil@gmail.com','12','servicecenter'),
(9,'ajzel','123','user'),
(17,'TATA12@GMAIL.COM','12','pending');

/*Data for the table `myapp_payment` */

insert  into `myapp_payment`(`id`,`type`,`status`,`REQUEST_id`,`USER_id`) values 
(24,'completed','paid',9,3);

/*Data for the table `myapp_request` */

insert  into `myapp_request`(`id`,`date`,`work_status`,`BOOKINGS_id`,`status`) values 
(6,'2025-02-22','Started',1,'1'),
(7,'2025-02-22','Ongoing',1,'1'),
(8,'2025-02-22','In finshing Process',1,'1'),
(9,'2025-02-22','Completed',1,'paid'),
(12,'2025-03-09','Started',1,'pending');

/*Data for the table `myapp_review` */

insert  into `myapp_review`(`id`,`date`,`review`,`LOGIN_id`) values 
(17,'2025-02-20','bad',9),
(18,'2025-02-20','jf',9),
(19,'2025-02-20','jfic7d',9),
(20,'2025-02-20','good',9),
(22,'2025-02-25','',9),
(23,'2025-03-03','hey',9),
(24,'2025-03-09','Best ???? ',9);

/*Data for the table `myapp_service` */

insert  into `myapp_service`(`id`,`service_name`,`descripton`,`service_charge`,`CATEGORY_id`,`SERVICE_CENTER_id`) values 
(10,'Engine Works','Full Engine Woks',5000,3,7),
(11,'Head Light, Tail Light','Service charge and Parts price included',3000,5,7),
(12,'Chain Replacing','Full Chain Sprocket Replacement',2500,3,8),
(13,'Petrol providing','per litre value',106,1,13),
(14,'charging','1 hour charging price',100,2,12),
(15,'NTORQ ENGINE WORKS','PIN TO PIN RESTORATION',4250,3,8);

/*Data for the table `myapp_service_center` */

insert  into `myapp_service_center`(`id`,`name`,`email`,`phone`,`place`,`post`,`pin`,`district`,`photo`,`ownername`,`status`,`owneremail`,`LOGIN_id`,`latitude`,`longitude`) values 
(7,'Yamaha','yamaha@gmail.com',1212121212,'Puthanathani','Punnathala','656567','Malappuram','/media/20250209-130603.jpg','Rahees','Approved','rahees@gmail.com',2,'11.2488043','75.7767992'),
(8,'TVS','tvs1@gmail.com',2121212121,'Parappanangadi','Parappanangadi','656552','Malappuram','/media/20250209-130740.jpg','Ajzel','Approved','Ajzel@gmail.com',3,'10.894587','75.993719'),
(9,'SUZUKI','SUZUKI@gmail.com',9121212121,'Parappanangadi','Parappanangadi','656553','Malappuram','/media/20250209-130854.jpg','Afsal','Rejected','Afsal@gmail.com',4,'1','1'),
(10,'VOLKSWAGEN','VOLKSWAGEN@gmail.com',9121212129,'Tirunnavaya','Tirunnavaya','656559','Malappuram','/media/20250209-131108.jpg','Jasil','pending','Jasil@gmail.com',5,'1','1'),
(11,'HYUNDAI','HYUNDAI@gmail.com',9121212189,'Tirur','Tirur','656959','Malappuram','/media/20250209-131213.jpg','Subu','Approved','subu@gmail.com',6,'10.936640','76.009824'),
(12,'Ather Power Station','ather@gmail.com',548278,'Puthanathani','Punnathala','749297','Malappuram','/media/20250209-132933.jpg','Shamsu','Approved','Shamsu@gmail.com',7,'1','1'),
(13,'INDIAN OIL ','indianoil@gmail.com',4545454545,'Puthanathani','Punnathala','656565','Malappuram','/media/20250209-133208.jpg','Sharafu','Approved','Sharafu@gmail.com',8,'1','1'),
(15,'TATA','TATA12@GMAIL.COM',7878787878,'PALAKKAD','PALAKKAD','676589','PALAKKAD','/media/20250306-131132.jpg','RAYEES','pending','RAYEE12@GMAIL.COM',17,'','');

/*Data for the table `myapp_servicereview` */

insert  into `myapp_servicereview`(`id`,`date`,`review`,`LOGIN_id`,`SERVICE_id`) values 
(31,'2025-02-20','best work',9,10),
(32,'2025-02-20','bad works',9,11),
(33,'2025-02-20','tvs',9,12);

/*Data for the table `myapp_user` */

insert  into `myapp_user`(`id`,`name`,`email`,`Phone`,`state`,`district`,`place`,`gender`,`dob`,`LOGIN_id`) values 
(3,'ajzel','ajzel12@gmail.com',9787453734,'kerala','malappuram ','kattilangadii','Male','2020-02-03',9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
