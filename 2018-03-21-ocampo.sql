-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: ocampo
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add event',19,'add_event'),(20,'Can change event',19,'change_event'),(21,'Can delete event',19,'delete_event'),(22,'Can add repository',18,'add_repository'),(23,'Can change repository',18,'change_repository'),(24,'Can delete repository',18,'delete_repository'),(25,'Can add book',8,'add_book'),(26,'Can change book',8,'change_book'),(27,'Can delete book',8,'delete_book'),(28,'Can add correspondence',13,'add_correspondence'),(29,'Can change correspondence',13,'change_correspondence'),(30,'Can delete correspondence',13,'delete_correspondence'),(31,'Can add issue',16,'add_issue'),(32,'Can change issue',16,'change_issue'),(33,'Can delete issue',16,'delete_issue'),(34,'Can add Contribution Type',9,'add_contributionrolepersoncontribution'),(35,'Can change Contribution Type',9,'change_contributionrolepersoncontribution'),(36,'Can delete Contribution Type',9,'delete_contributionrolepersoncontribution'),(37,'Can add contribution',14,'add_contribution'),(38,'Can change contribution',14,'change_contribution'),(39,'Can delete contribution',14,'delete_contribution'),(40,'Can add people',7,'add_people'),(41,'Can change people',7,'change_people'),(42,'Can delete people',7,'delete_people'),(43,'Can add Contribution Role',15,'add_contributionroletype'),(44,'Can change Contribution Role',15,'change_contributionroletype'),(45,'Can delete Contribution Role',15,'delete_contributionroletype'),(46,'Can add periodical',17,'add_periodicals'),(47,'Can change periodical',17,'change_periodicals'),(48,'Can delete periodical',17,'delete_periodicals'),(49,'Can add place',11,'add_place'),(50,'Can change place',11,'change_place'),(51,'Can delete place',11,'delete_place'),(52,'Can add descriptive bibliography',12,'add_descriptivebibliography'),(53,'Can change descriptive bibliography',12,'change_descriptivebibliography'),(54,'Can delete descriptive bibliography',12,'delete_descriptivebibliography'),(55,'Can add occupation',10,'add_occupation'),(56,'Can change occupation',10,'change_occupation'),(57,'Can delete occupation',10,'delete_occupation'),(58,'Can add creator book',20,'add_creatorbook'),(59,'Can change creator book',20,'change_creatorbook'),(60,'Can delete creator book',20,'delete_creatorbook'),(61,'Can add creator contribution',21,'add_creatorcontribution'),(62,'Can change creator contribution',21,'change_creatorcontribution'),(63,'Can delete creator contribution',21,'delete_creatorcontribution');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$Jkp8oyXvhzp0$sIhZRbpLOYXYV/b796HRXNBmTHlelULH2NpC276A9Ac=','2018-03-12 19:37:42.616894',1,'nora','','','nbenedict@princeton.edu',1,1,'2018-02-26 18:54:38.471382');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `notes` text,
  `people_id` int(11) DEFAULT NULL,
  `occupations_id` int(11) DEFAULT NULL,
  `binding` longtext,
  `colophon` longtext,
  `paper` longtext,
  `repository_id` int(11) DEFAULT NULL,
  `typography` longtext,
  PRIMARY KEY (`id`),
  KEY `people_id` (`people_id`),
  KEY `occupations_id` (`occupations_id`),
  KEY `books_repository_id_4981a3dd_fk_repository_id` (`repository_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`occupations_id`) REFERENCES `occupations` (`id`),
  CONSTRAINT `books_repository_id_4981a3dd_fk_repository_id` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Virginia Woolf, Orlando y Cía','1938-01-08','1.50 m/n','',1,1,'','','',3,''),(2,'Supremacía del Alma y de la Sangre','1935-01-01','1.00 m/n','',1,1,NULL,NULL,NULL,NULL,NULL),(3,'Ficciones','1944-12-04',NULL,'',2,2,NULL,NULL,NULL,NULL,NULL),(4,'El jardín de senderos que se bifurcan','1941-12-30',NULL,'',2,2,'','','',2,''),(5,'Enumeración de la patria','1942-11-27','3.00 m/n','',5,2,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributions`
--

DROP TABLE IF EXISTS `contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `start_page` varchar(10) DEFAULT NULL,
  `end_page` varchar(10) DEFAULT NULL,
  `notes` text,
  `contribution_type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_id` (`issue_id`),
  CONSTRAINT `contributions_issue_id_147cfe26_fk_issues_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributions`
--

LOCK TABLES `contributions` WRITE;
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
INSERT INTO `contributions` VALUES (1,1,'Carta a Waldo Frank','7','18','','LE'),(2,1,'La selva','19','52','','Short Story'),(3,1,'El coronel Ascasubi','129','140','','Short Story');
/*!40000 ALTER TABLE `contributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correspondence`
--

DROP TABLE IF EXISTS `correspondence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correspondence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `location_sent_id` int(11) DEFAULT NULL,
  `notes` text,
  `recipient_id` int(11) DEFAULT NULL,
  `location_received_id` int(11) DEFAULT NULL,
  `paper` longtext,
  `repository_id` int(11) DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`id`),
  KEY `people_id` (`sender_id`),
  KEY `place_id` (`location_sent_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `location_received_id` (`location_received_id`),
  KEY `correspondence_repository_id_07b0c74d_fk_repository_id` (`repository_id`),
  CONSTRAINT `correspondence_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `people` (`id`),
  CONSTRAINT `correspondence_ibfk_2` FOREIGN KEY (`location_sent_id`) REFERENCES `places` (`id`),
  CONSTRAINT `correspondence_ibfk_4` FOREIGN KEY (`recipient_id`) REFERENCES `people` (`id`),
  CONSTRAINT `correspondence_ibfk_5` FOREIGN KEY (`location_received_id`) REFERENCES `places` (`id`),
  CONSTRAINT `correspondence_repository_id_07b0c74d_fk_repository_id` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondence`
--

LOCK TABLES `correspondence` WRITE;
/*!40000 ALTER TABLE `correspondence` DISABLE KEYS */;
INSERT INTO `correspondence` VALUES (1,1,'1929-01-23',7,'Mentions the receipt of a telegram from her mother in the first line',7,6,NULL,NULL,NULL),(2,1,'1933-12-31',6,'Victoria describes her first night back in Mar del Plata',6,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `correspondence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-03-05 19:35:24.795245','4','Translator',2,'[{\"changed\": {\"fields\": [\"contribution_role_type_name\"]}}]',15,1),(2,'2018-03-05 19:35:29.121280','3','Editor',2,'[{\"changed\": {\"fields\": [\"contribution_role_type_name\"]}}]',15,1),(3,'2018-03-05 19:35:33.752980','2','Artist',2,'[{\"changed\": {\"fields\": [\"contribution_role_type_name\"]}}]',15,1),(4,'2018-03-05 19:35:38.043559','1','Author',2,'[{\"changed\": {\"fields\": [\"contribution_role_type_name\"]}}]',15,1),(5,'2018-03-05 19:36:21.326003','3','Ficciones',2,'[{\"changed\": {\"fields\": [\"descriptive_bibliography\"]}}]',8,1),(6,'2018-03-16 19:00:05.852316','1','Carta a Waldo Frank',2,'[{\"changed\": {\"fields\": [\"contribution_type\"]}}]',14,1),(7,'2018-03-19 19:45:22.842554','1','Author',1,'[{\"added\": {}}]',20,1),(8,'2018-03-19 19:47:41.859274','1','Author',1,'[{\"added\": {}}]',21,1),(9,'2018-03-19 20:24:34.672085','8','Charlottesville, Virginia',1,'[{\"added\": {}}]',11,1),(10,'2018-03-19 20:25:49.822474','2','University of Virginia',1,'[{\"added\": {}}]',18,1),(11,'2018-03-19 20:26:03.286226','4','El jardín de senderos que se bifurcan',2,'[{\"changed\": {\"fields\": [\"repository\"]}}]',8,1),(12,'2018-03-19 20:26:41.754381','9','Princeton, New Jersey',1,'[{\"added\": {}}]',11,1),(13,'2018-03-19 20:26:51.920804','3','Princeton University',1,'[{\"added\": {}}]',18,1),(14,'2018-03-19 20:26:54.263440','1','Virginia Woolf, Orlando y Cía',2,'[{\"changed\": {\"fields\": [\"repository\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'people','book'),(14,'people','contribution'),(9,'people','contributionrolepersoncontribution'),(15,'people','contributionroletype'),(13,'people','correspondence'),(20,'people','creatorbook'),(21,'people','creatorcontribution'),(12,'people','descriptivebibliography'),(19,'people','event'),(16,'people','issue'),(10,'people','occupation'),(7,'people','people'),(17,'people','periodicals'),(11,'people','place'),(18,'people','repository'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-02-26 18:51:51.905133'),(2,'auth','0001_initial','2018-02-26 18:51:52.253748'),(3,'admin','0001_initial','2018-02-26 18:51:52.312655'),(4,'admin','0002_logentry_remove_auto_add','2018-02-26 18:51:52.337245'),(5,'contenttypes','0002_remove_content_type_name','2018-02-26 18:51:52.405192'),(6,'auth','0002_alter_permission_name_max_length','2018-02-26 18:51:52.430023'),(7,'auth','0003_alter_user_email_max_length','2018-02-26 18:51:52.448298'),(8,'auth','0004_alter_user_username_opts','2018-02-26 18:51:52.463108'),(9,'auth','0005_alter_user_last_login_null','2018-02-26 18:51:52.524346'),(10,'auth','0006_require_contenttypes_0002','2018-02-26 18:51:52.529031'),(11,'auth','0007_alter_validators_add_error_messages','2018-02-26 18:51:52.546140'),(12,'auth','0008_alter_user_username_max_length','2018-02-26 18:51:52.606317'),(13,'sessions','0001_initial','2018-02-26 18:51:52.629199'),(14,'people','0001_initial','2018-03-12 18:31:48.786124'),(15,'people','0002_updated_creators','2018-03-12 18:49:31.863110'),(16,'people','0003_updated_foreignkeys','2018-03-12 19:39:11.998121'),(17,'people','0001_updates_to_models','2018-03-19 19:43:16.570603'),(18,'people','0002_post_managed_revisions','2018-03-19 19:43:16.759152'),(19,'people','0003_eliminated_descriptive_bibliography__table','2018-03-19 20:22:56.667495');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('k30w3fzp1o4xbnkex650hah2tnatj7t8','ZGU4YmI4ZWRhZDRiNGMxMzczNzNhMWI0MTRjOGJlOWM3ZDE4ODA4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTJmZDEwMWMwNjU4ZDg2YzU4ZWI5ZmE5YWNjZjE0ZDNmZTgzZjFiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-03-26 19:37:42.621584'),('ye3j5uud3lob0phonrdga6uogz4dcn75','ZDU5NmIxOTc1NjFjNDI2YzY5ZGEyM2Y0N2JmMjAyYTFiYjI4ODM1OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyZmQxMDFjMDY1OGQ4NmM1OGViOWZhOWFjY2YxNGQzZmU4M2YxYjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-03-12 18:55:29.298827');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `places_id` int(11) DEFAULT NULL,
  `notes` text,
  `place_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `places_id` (`places_id`),
  KEY `events_place_id_a3a3617d_fk_places_id` (`place_id`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  CONSTRAINT `events_place_id_a3a3617d_fk_places_id` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'1938-11-11','Dinner in Honor of Victoria Ocampo',7,'Given by the French division of the P.E.N. clubs international at the Elysées Palace',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodicals_id` int(11) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `printer` varchar(20) DEFAULT NULL,
  `notes` text,
  `binding` longtext,
  `colophon` longtext,
  `paper` longtext,
  `repository_id` int(11) DEFAULT NULL,
  `typography` longtext,
  PRIMARY KEY (`id`),
  KEY `periodicals_id` (`periodicals_id`),
  KEY `issues_repository_id_a72907c6_fk_repository_id` (`repository_id`),
  CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`periodicals_id`) REFERENCES `periodicals` (`id`),
  CONSTRAINT `issues_repository_id_a72907c6_fk_repository_id` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,'1','1931-01-01','Francisco A. Colombo','verano',NULL,NULL,NULL,NULL,NULL),(2,1,'2','1931-05-01','Francisco A. Colombo','otoño',NULL,NULL,NULL,NULL,NULL),(3,1,'3','1931-08-01','Francisco A. Colombo','invierno',NULL,NULL,NULL,NULL,NULL),(4,1,'4','1931-11-01','Francisco A. Colombo','primavera',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupations`
--

DROP TABLE IF EXISTS `occupations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `notes` text,
  `occupation_type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupations`
--

LOCK TABLES `occupations` WRITE;
/*!40000 ALTER TABLE `occupations` DISABLE KEYS */;
INSERT INTO `occupations` VALUES (1,'Director','','(Literary) Producer'),(2,'Writer','','Writer'),(3,'Collaborator','','(Literary) Producer'),(4,'Consejo extranjero','','(Literary) Producer'),(5,'Consejo de redacción','','(Literary) Producer'),(6,'Feminist','','Activist'),(7,'Dramatist','','Artist');
/*!40000 ALTER TABLE `occupations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `birthplace_id` int(11) DEFAULT NULL,
  `deathdate` date DEFAULT NULL,
  `deathplace_id` int(11) DEFAULT NULL,
  `occupations_id` int(11) DEFAULT NULL,
  `notes` text,
  `sex` varchar(20) DEFAULT NULL,
  `viaf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `birthplace` (`birthplace_id`),
  KEY `deathplace` (`deathplace_id`),
  KEY `occupations_id` (`occupations_id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`birthplace_id`) REFERENCES `places` (`id`),
  CONSTRAINT `people_ibfk_2` FOREIGN KEY (`deathplace_id`) REFERENCES `places` (`id`),
  CONSTRAINT `people_ibfk_3` FOREIGN KEY (`occupations_id`) REFERENCES `occupations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Victoria Ocampo','1890-04-07',1,'1979-01-27',2,1,'Founder of SUR and the Editorial Sur','female',14774594),(2,'Jorge Luis Borges','1899-08-24',1,'1986-06-14',3,2,'','male',88919448),(3,'Waldo Frank','1889-08-25',4,'1967-01-09',5,4,'','male',39413836),(4,'María Rosa Oliver','1898-09-10',1,'1977-04-19',1,5,'','female',17385432),(5,'Silvina Ocampo','1903-07-01',1,'1993-12-14',1,2,'Sister of Victoria Ocampo','female',100247821),(6,'Angélica Ocampo','1891-12-19',1,'1980-01-17',1,NULL,'Sister of Victoria Ocampo','female',NULL),(7,'Ramona Maxima Aguirre Herrera','1866-01-08',1,'1935-12-10',1,NULL,'Mother of Victoria Ocampo','female',NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_creatorbook`
--

DROP TABLE IF EXISTS `people_creatorbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people_creatorbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_role` varchar(2) NOT NULL,
  `notes` longtext,
  `book_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `people_creatorbook_book_id_4978233b_fk_books_id` (`book_id`),
  KEY `people_creatorbook_person_id_53d78ade_fk_people_id` (`person_id`),
  CONSTRAINT `people_creatorbook_book_id_4978233b_fk_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `people_creatorbook_person_id_53d78ade_fk_people_id` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_creatorbook`
--

LOCK TABLES `people_creatorbook` WRITE;
/*!40000 ALTER TABLE `people_creatorbook` DISABLE KEYS */;
INSERT INTO `people_creatorbook` VALUES (1,'AU','',4,2);
/*!40000 ALTER TABLE `people_creatorbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_creatorcontribution`
--

DROP TABLE IF EXISTS `people_creatorcontribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people_creatorcontribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_role` varchar(2) NOT NULL,
  `notes` longtext,
  `contribution_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `people_creatorcontri_contribution_id_84a33d61_fk_contribut` (`contribution_id`),
  KEY `people_creatorcontribution_person_id_ae45aa52_fk_people_id` (`person_id`),
  CONSTRAINT `people_creatorcontri_contribution_id_84a33d61_fk_contribut` FOREIGN KEY (`contribution_id`) REFERENCES `contributions` (`id`),
  CONSTRAINT `people_creatorcontribution_person_id_ae45aa52_fk_people_id` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_creatorcontribution`
--

LOCK TABLES `people_creatorcontribution` WRITE;
/*!40000 ALTER TABLE `people_creatorcontribution` DISABLE KEYS */;
INSERT INTO `people_creatorcontribution` VALUES (1,'AU','',1,1);
/*!40000 ALTER TABLE `people_creatorcontribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodicals`
--

DROP TABLE IF EXISTS `periodicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(15) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicals`
--

LOCK TABLES `periodicals` WRITE;
/*!40000 ALTER TABLE `periodicals` DISABLE KEYS */;
INSERT INTO `periodicals` VALUES (1,'SUR','Founded by Victoria Ocampo in 1931');
/*!40000 ALTER TABLE `periodicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` float(4,2) DEFAULT NULL,
  `longitude` float(4,2) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,-34.60,-58.38,'Buenos Aires, Argentina','hub of activity'),(2,-34.46,-58.53,'Beccar, Argentina',''),(3,46.20,6.14,'Geneva, Switzerland',''),(4,40.30,73.99,'Long Branch, New Jersey',''),(5,41.03,73.76,'White Plains, New York',''),(6,38.01,57.54,'Mar del Plata, Argentina',''),(7,48.86,2.35,'Paris, France',''),(8,38.03,78.48,'Charlottesville, Virginia',''),(9,40.36,74.67,'Princeton, New Jersey','');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `places_id` (`place_id`),
  CONSTRAINT `repository_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
INSERT INTO `repository` VALUES (1,'Biblioteca Nacional Mariano Moreno de la República Argentina',1,'Part of their digital repository, Trapalanda Biblioteca Digital'),(2,'University of Virginia',8,''),(3,'Princeton University',9,'');
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21 15:48:19
