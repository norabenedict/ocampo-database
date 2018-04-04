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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add contribution',7,'add_contribution'),(20,'Can change contribution',7,'change_contribution'),(21,'Can delete contribution',7,'delete_contribution'),(22,'Can add event',8,'add_event'),(23,'Can change event',8,'change_event'),(24,'Can delete event',8,'delete_event'),(25,'Can add creator book',9,'add_creatorbook'),(26,'Can change creator book',9,'change_creatorbook'),(27,'Can delete creator book',9,'delete_creatorbook'),(28,'Can add creator contribution',10,'add_creatorcontribution'),(29,'Can change creator contribution',10,'change_creatorcontribution'),(30,'Can delete creator contribution',10,'delete_creatorcontribution'),(31,'Can add repository',11,'add_repository'),(32,'Can change repository',11,'change_repository'),(33,'Can delete repository',11,'delete_repository'),(34,'Can add people',12,'add_people'),(35,'Can change people',12,'change_people'),(36,'Can delete people',12,'delete_people'),(37,'Can add periodical',13,'add_periodicals'),(38,'Can change periodical',13,'change_periodicals'),(39,'Can delete periodical',13,'delete_periodicals'),(40,'Can add book',14,'add_book'),(41,'Can change book',14,'change_book'),(42,'Can delete book',14,'delete_book'),(43,'Can add issue',15,'add_issue'),(44,'Can change issue',15,'change_issue'),(45,'Can delete issue',15,'delete_issue'),(46,'Can add correspondence',16,'add_correspondence'),(47,'Can change correspondence',16,'change_correspondence'),(48,'Can delete correspondence',16,'delete_correspondence'),(49,'Can add place',17,'add_place'),(50,'Can change place',17,'change_place'),(51,'Can delete place',17,'delete_place'),(52,'Can add occupation',18,'add_occupation'),(53,'Can change occupation',18,'change_occupation'),(54,'Can delete occupation',18,'delete_occupation');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$RqVkRAgwiPlU$ffgjl06pbxJk+yJ0AhYnyMABd0O1MuUoPqYKaiaNCxU=','2018-03-26 14:37:30.751946',1,'nora','','','nfrye@princeton.edu',1,1,'2018-03-26 14:36:45.045742');
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
  `notes` longtext,
  `occupations_id` int(11) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `binding` longtext,
  `colophon` longtext,
  `paper` longtext,
  `repository_id` int(11) DEFAULT NULL,
  `typography` longtext,
  PRIMARY KEY (`id`),
  KEY `books_occupations_id_4b70819b_fk_occupations_id` (`occupations_id`),
  KEY `books_people_id_799d0b3f_fk_people_id` (`people_id`),
  KEY `books_repository_id_4981a3dd_fk_repository_id` (`repository_id`),
  CONSTRAINT `books_occupations_id_4b70819b_fk_occupations_id` FOREIGN KEY (`occupations_id`) REFERENCES `occupations` (`id`),
  CONSTRAINT `books_people_id_799d0b3f_fk_people_id` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`),
  CONSTRAINT `books_repository_id_4981a3dd_fk_repository_id` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
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
  `title` varchar(250) DEFAULT NULL,
  `start_page` varchar(10) DEFAULT NULL,
  `end_page` varchar(10) DEFAULT NULL,
  `notes` longtext,
  `contribution_type` varchar(2) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contributions_issue_id_147cfe26_fk_issues_id` (`issue_id`),
  CONSTRAINT `contributions_issue_id_147cfe26_fk_issues_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributions`
--

LOCK TABLES `contributions` WRITE;
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
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
  `date` date DEFAULT NULL,
  `notes` longtext,
  `location_received_id` int(11) DEFAULT NULL,
  `location_sent_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `paper` longtext,
  `repository_id` int(11) DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`id`),
  KEY `correspondence_location_received_id_0183608f_fk_places_id` (`location_received_id`),
  KEY `correspondence_location_sent_id_a8c497ef_fk_places_id` (`location_sent_id`),
  KEY `correspondence_recipient_id_eb8e4879_fk_people_id` (`recipient_id`),
  KEY `correspondence_sender_id_192eda14_fk_people_id` (`sender_id`),
  KEY `correspondence_repository_id_07b0c74d_fk_repository_id` (`repository_id`),
  CONSTRAINT `correspondence_location_received_id_0183608f_fk_places_id` FOREIGN KEY (`location_received_id`) REFERENCES `places` (`id`),
  CONSTRAINT `correspondence_location_sent_id_a8c497ef_fk_places_id` FOREIGN KEY (`location_sent_id`) REFERENCES `places` (`id`),
  CONSTRAINT `correspondence_recipient_id_eb8e4879_fk_people_id` FOREIGN KEY (`recipient_id`) REFERENCES `people` (`id`),
  CONSTRAINT `correspondence_repository_id_07b0c74d_fk_repository_id` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`),
  CONSTRAINT `correspondence_sender_id_192eda14_fk_people_id` FOREIGN KEY (`sender_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondence`
--

LOCK TABLES `correspondence` WRITE;
/*!40000 ALTER TABLE `correspondence` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-03-26 17:24:14.825884','4','Choreographer',3,'',18,1),(2,'2018-03-26 17:27:15.385848','200','Choreographer',3,'',18,1),(3,'2018-03-26 17:27:15.390231','199','Physicist',3,'',18,1),(4,'2018-03-26 17:27:15.393187','198','Astronomer',3,'',18,1),(5,'2018-03-26 17:27:15.395711','197','Cultural Theorist',3,'',18,1),(6,'2018-03-26 17:27:15.397573','196','Social Theorist',3,'',18,1),(7,'2018-03-26 17:27:15.399786','195','Reporter',3,'',18,1),(8,'2018-03-26 17:27:15.401534','194','Editorialist',3,'',18,1),(9,'2018-03-26 17:27:15.403678','193','Secretary',3,'',18,1),(10,'2018-03-26 17:27:15.405480','192','Cattleman',3,'',18,1),(11,'2018-03-26 17:27:15.407613','191','Civil Rights Leader',3,'',18,1),(12,'2018-03-26 17:27:15.409379','190','Agronomist',3,'',18,1),(13,'2018-03-26 17:27:15.411766','189','Existentialist',3,'',18,1),(14,'2018-03-26 17:27:15.413563','188','Political Figure',3,'',18,1),(15,'2018-03-26 17:27:15.415777','187','General',3,'',18,1),(16,'2018-03-26 17:27:15.417605','186','Mistress',3,'',18,1),(17,'2018-03-26 17:27:15.419706','185','Baroness',3,'',18,1),(18,'2018-03-26 17:27:15.421529','184','Style Leader',3,'',18,1),(19,'2018-03-26 17:27:15.423724','183','Comic Writer',3,'',18,1),(20,'2018-03-26 17:27:15.426307','182','Aristocrat',3,'',18,1),(21,'2018-03-26 17:27:15.428639','181','Mime Artist',3,'',18,1),(22,'2018-03-26 17:27:15.430587','180','Artist',3,'',18,1),(23,'2018-03-26 17:27:15.432758','179','Organizer',3,'',18,1),(24,'2018-03-26 17:27:15.434618','178','Biologist',3,'',18,1),(25,'2018-03-26 17:27:15.436835','177','Singer',3,'',18,1),(26,'2018-03-26 17:27:15.438577','176','Film Producer',3,'',18,1),(27,'2018-03-26 17:27:15.440745','175','Epidemiologist',3,'',18,1),(28,'2018-03-26 17:27:15.442479','174','Board Member',3,'',18,1),(29,'2018-03-26 17:27:15.444710','173','Dancer',3,'',18,1),(30,'2018-03-26 17:27:15.446660','172','Harpsichordist',3,'',18,1),(31,'2018-03-26 17:27:15.448894','171','Prime Minister',3,'',18,1),(32,'2018-03-26 17:27:15.450814','170','Lobbyist',3,'',18,1),(33,'2018-03-26 17:27:15.452916','169','Businessman',3,'',18,1),(34,'2018-03-26 17:27:15.454741','168','Photographer',3,'',18,1),(35,'2018-03-26 17:27:15.456802','167','Photojournalist',3,'',18,1),(36,'2018-03-26 17:27:15.459555','166','Speaker',3,'',18,1),(37,'2018-03-26 17:27:15.461472','165','School Director',3,'',18,1),(38,'2018-03-26 17:27:15.463677','164','Banker',3,'',18,1),(39,'2018-03-26 17:27:15.465512','163','Filmmaker',3,'',18,1),(40,'2018-03-26 17:27:15.467665','162','Model',3,'',18,1),(41,'2018-03-26 17:27:15.469400','161','Museologist',3,'',18,1),(42,'2018-03-26 17:27:15.471568','160','Founder',3,'',18,1),(43,'2018-03-26 17:27:15.473362','159','Noblewoman',3,'',18,1),(44,'2018-03-26 17:27:15.475447','158','Pastor',3,'',18,1),(45,'2018-03-26 17:27:15.477197','157','Scientist',3,'',18,1),(46,'2018-03-26 17:27:15.479139','156','Humorist',3,'',18,1),(47,'2018-03-26 17:27:15.481440','155','Printer',3,'',18,1),(48,'2018-03-26 17:27:15.483533','154','Reviewer',3,'',18,1),(49,'2018-03-26 17:27:15.485300','153','Pedagogue',3,'',18,1),(50,'2018-03-26 17:27:15.487093','152','Cultural Attaché',3,'',18,1),(51,'2018-03-26 17:27:15.489235','151','Music Critic',3,'',18,1),(52,'2018-03-26 17:27:15.492172','150','Theatre Critic',3,'',18,1),(53,'2018-03-26 17:27:15.494128','149','Anarquist',3,'',18,1),(54,'2018-03-26 17:27:15.496518','148','Compiler',3,'',18,1),(55,'2018-03-26 17:27:15.498331','147','Secretary of the Municipal Government',3,'',18,1),(56,'2018-03-26 17:27:15.500510','146','Literary Journal Director',3,'',18,1),(57,'2018-03-26 17:27:15.502289','145','Bibliophile',3,'',18,1),(58,'2018-03-26 17:27:15.504458','144','Art Historian',3,'',18,1),(59,'2018-03-26 17:27:15.506279','143','Literary Agent',3,'',18,1),(60,'2018-03-26 17:27:15.508352','142','Erudite',3,'',18,1),(61,'2018-03-26 17:27:15.510049','141','Polemicist',3,'',18,1),(62,'2018-03-26 17:27:15.512259','140','Musicologist',3,'',18,1),(63,'2018-03-26 17:27:15.514106','139','Folklorist',3,'',18,1),(64,'2018-03-26 17:27:15.516304','138','Curator',3,'',18,1),(65,'2018-03-26 17:27:15.518047','137','Film Critic',3,'',18,1),(66,'2018-03-26 17:27:15.520325','136','Radio Host',3,'',18,1),(67,'2018-03-26 17:27:15.522076','135','Investigator',3,'',18,1),(68,'2018-03-26 17:27:15.524090','134','Minister of Economy',3,'',18,1),(69,'2018-03-26 17:27:15.526598','133','Policy Maker',3,'',18,1),(70,'2018-03-26 17:27:15.528726','132','Linotypist',3,'',18,1),(71,'2018-03-26 17:27:15.530762','131','Editorial Director',3,'',18,1),(72,'2018-03-26 17:27:15.532909','130','Supreme Court Minister',3,'',18,1),(73,'2018-03-26 17:27:15.534756','129','Supreme Court Justice',3,'',18,1),(74,'2018-03-26 17:27:15.536975','128','Accountant',3,'',18,1),(75,'2018-03-26 17:27:15.538820','127','Archaeologist',3,'',18,1),(76,'2018-03-26 17:27:15.541747','126','Activist',3,'',18,1),(77,'2018-03-26 17:27:15.544112','125','Statesman',3,'',18,1),(78,'2018-03-26 17:27:15.546138','124','Humanitarian',3,'',18,1),(79,'2018-03-26 17:27:15.548411','123','Organist',3,'',18,1),(80,'2018-03-26 17:27:15.550910','122','Orientalist',3,'',18,1),(81,'2018-03-26 17:27:15.553277','121','Syndicalist',3,'',18,1),(82,'2018-03-26 17:27:15.555581','120','Libertarian',3,'',18,1),(83,'2018-03-26 17:27:15.558656','119','Theologian',3,'',18,1),(84,'2018-03-26 17:27:15.560928','118','Priest',3,'',18,1),(85,'2018-03-26 17:27:15.562987','117','Neuroscientist',3,'',18,1),(86,'2018-03-26 17:27:15.565321','116','Clerk',3,'',18,1),(87,'2018-03-26 17:27:15.567781','115','Artistic Director',3,'',18,1),(88,'2018-03-26 17:27:15.569811','114','Soldier',3,'',18,1),(89,'2018-03-26 17:27:15.572139','113','Broadcaster',3,'',18,1),(90,'2018-03-26 17:27:15.574402','112','Parliamentarian',3,'',18,1),(91,'2018-03-26 17:27:15.577568','111','Theosophist',3,'',18,1),(92,'2018-03-26 17:27:15.580177','110','Actress',3,'',18,1),(93,'2018-03-26 17:27:15.582407','109','Botonist',3,'',18,1),(94,'2018-03-26 17:27:15.584758','108','Egyptian Delegate',3,'',18,1),(95,'2018-03-26 17:27:15.586590','107','Humanist',3,'',18,1),(96,'2018-03-26 17:27:15.588806','106','Eugenicist',3,'',18,1),(97,'2018-03-26 17:27:15.590685','105','Physician',3,'',18,1),(98,'2018-03-26 17:27:15.592938','104','Jurist',3,'',18,1),(99,'2018-03-26 17:27:15.594708','103','Illustrator',3,'',18,1),(100,'2018-03-26 17:27:15.597366','102','Graphic Artist',3,'',18,1),(101,'2018-03-26 17:27:15.599630','101','Garden Designer',3,'',18,1),(102,'2018-03-26 17:27:36.603783','100','Mathematician',3,'',18,1),(103,'2018-03-26 17:27:36.606430','99','Engineer',3,'',18,1),(104,'2018-03-26 17:27:36.608890','98','Lecturer',3,'',18,1),(105,'2018-03-26 17:27:36.610794','97','Science Writer',3,'',18,1),(106,'2018-03-26 17:27:36.612924','96','Musciographer',3,'',18,1),(107,'2018-03-26 17:27:36.614810','95','Producer',3,'',18,1),(108,'2018-03-26 17:27:36.616898','94','Film Director',3,'',18,1),(109,'2018-03-26 17:27:36.618592','93','Pacifist',3,'',18,1),(110,'2018-03-26 17:27:36.620767','92','Prologuist',3,'',18,1),(111,'2018-03-26 17:27:36.622579','91','Librarian',3,'',18,1),(112,'2018-03-26 17:27:36.624755','90','Archivist',3,'',18,1),(113,'2018-03-26 17:27:36.626646','89','Columnist',3,'',18,1),(114,'2018-03-26 17:27:36.628777','88','Actor',3,'',18,1),(115,'2018-03-26 17:27:36.630646','87','Indologist',3,'',18,1),(116,'2018-03-26 17:27:36.633643','86','Geographer',3,'',18,1),(117,'2018-03-26 17:27:36.635974','85','Farm Worker',3,'',18,1),(118,'2018-03-26 17:27:36.637998','84','Entrepreneur',3,'',18,1),(119,'2018-03-26 17:27:36.640357','83','Urbanist',3,'',18,1),(120,'2018-03-26 17:27:36.642253','82','Philanthropist',3,'',18,1),(121,'2018-03-26 17:27:36.644411','81','Doctor',3,'',18,1),(122,'2018-03-26 17:27:36.646260','80','Propaganda Adviser',3,'',18,1),(123,'2018-03-26 17:27:36.648378','79','Socialite',3,'',18,1),(124,'2018-03-26 17:27:36.650131','78','Collector',3,'',18,1),(125,'2018-03-26 17:27:36.652307','77','Patron',3,'',18,1),(126,'2018-03-26 17:27:36.654020','76','Chemist',3,'',18,1),(127,'2018-03-26 17:27:36.656469','75','Academic',3,'',18,1),(128,'2018-03-26 17:27:36.658231','74','Civil Engineer',3,'',18,1),(129,'2018-03-26 17:27:36.660466','73','Hispanist',3,'',18,1),(130,'2018-03-26 17:27:36.662271','72','University Reformer',3,'',18,1),(131,'2018-03-26 17:27:36.664602','71','Linguist',3,'',18,1),(132,'2018-03-26 17:27:36.667609','70','Editor',3,'',18,1),(133,'2018-03-26 17:27:36.669871','69','Ambassador',3,'',18,1),(134,'2018-03-26 17:27:36.672230','68','Economist',3,'',18,1),(135,'2018-03-26 17:27:36.674058','67','Sociologist',3,'',18,1),(136,'2018-03-26 17:27:36.676356','66','Historian',3,'',18,1),(137,'2018-03-26 17:27:36.678107','65','Human Rights Leader',3,'',18,1),(138,'2018-03-26 17:27:36.680318','64','Anthropologist',3,'',18,1),(139,'2018-03-26 17:27:36.682110','63','Scholar',3,'',18,1),(140,'2018-03-26 17:27:36.684268','62','Ethnologist',3,'',18,1),(141,'2018-03-26 17:27:36.686050','61','Archaeologist',3,'',18,1),(142,'2018-03-26 17:27:36.688123','60','Lithographer',3,'',18,1),(143,'2018-03-26 17:27:36.689911','59','Stage Designer',3,'',18,1),(144,'2018-03-26 17:27:36.692295','58','Ceramicist',3,'',18,1),(145,'2018-03-26 17:27:36.694110','57','Printmaker',3,'',18,1),(146,'2018-03-26 17:27:36.696569','56','Sculptor',3,'',18,1),(147,'2018-03-26 17:27:36.698583','55','Engraver',3,'',18,1),(148,'2018-03-26 17:27:36.701267','54','Critic',3,'',18,1),(149,'2018-03-26 17:27:36.703092','53','Urban Planner',3,'',18,1),(150,'2018-03-26 17:27:36.705554','52','Designer',3,'',18,1),(151,'2018-03-26 17:27:36.707817','51','Architect',3,'',18,1),(152,'2018-03-26 17:27:36.709787','50','Minister of Cultural Affairs',3,'',18,1),(153,'2018-03-26 17:27:36.711910','49','Art Theorist',3,'',18,1),(154,'2018-03-26 17:27:36.713628','48','Art Critic',3,'',18,1),(155,'2018-03-26 17:27:36.715804','47','Orchestral Director',3,'',18,1),(156,'2018-03-26 17:27:36.717512','46','Violinist',3,'',18,1),(157,'2018-03-26 17:27:36.719604','45','Pianist',3,'',18,1),(158,'2018-03-26 17:27:36.721418','44','Teacher',3,'',18,1),(159,'2018-03-26 17:27:36.724011','43','Researcher',3,'',18,1),(160,'2018-03-26 17:27:36.726230','42','Lawyer',3,'',18,1),(161,'2018-03-26 17:27:36.728793','41','Philologist',3,'',18,1),(162,'2018-03-26 17:27:36.731655','40','President',3,'',18,1),(163,'2018-03-26 17:27:36.734434','39','Polymath',3,'',18,1),(164,'2018-03-26 17:27:36.736719','38','Entomologist',3,'',18,1),(165,'2018-03-26 17:27:36.738826','37','Biographer',3,'',18,1),(166,'2018-03-26 17:27:36.741398','36','Political Activist',3,'',18,1),(167,'2018-03-26 17:27:36.743515','35','Professor',3,'',18,1),(168,'2018-03-26 17:27:36.745302','34','Journalist',3,'',18,1),(169,'2018-03-26 17:27:36.748763','33','Screenwriter',3,'',18,1),(170,'2018-03-26 17:27:36.751265','32','Short Story Writer',3,'',18,1),(171,'2018-03-26 17:27:36.753486','31','Politician',3,'',18,1),(172,'2018-03-26 17:27:36.756110','30','Educator',3,'',18,1),(173,'2018-03-26 17:27:36.758298','29','Diplomat',3,'',18,1),(174,'2018-03-26 17:27:36.760669','28','Psychoanalyst',3,'',18,1),(175,'2018-03-26 17:27:36.763988','27','Psychiatrist',3,'',18,1),(176,'2018-03-26 17:27:36.767200','26','Composer',3,'',18,1),(177,'2018-03-26 17:27:36.770400','25','Philosopher',3,'',18,1),(178,'2018-03-26 17:27:36.773371','24','Literary Critic',3,'',18,1),(179,'2018-03-26 17:27:36.775664','23','Playwright',3,'',18,1),(180,'2018-03-26 17:27:36.778008','22','Novelist',3,'',18,1),(181,'2018-03-26 17:27:36.781060','21','Secretario de Redacción',3,'',18,1),(182,'2018-03-26 17:27:36.784666','20','Painter',3,'',18,1),(183,'2018-03-26 17:27:36.787184','19','Translator',3,'',18,1),(184,'2018-03-26 17:27:36.789518','18','Musician',3,'',18,1),(185,'2018-03-26 17:27:36.791773','17','Conductor',3,'',18,1),(186,'2018-03-26 17:27:36.793991','16','Dramatist',3,'',18,1),(187,'2018-03-26 17:27:36.797672','15','Author',3,'',18,1),(188,'2018-03-26 17:27:36.800363','14','Poet',3,'',18,1),(189,'2018-03-26 17:27:36.802499','13','Consejo Extranjero',3,'',18,1),(190,'2018-03-26 17:27:36.804795','12','Consejo de Redacción',3,'',18,1),(191,'2018-03-26 17:27:36.806723','11','Intellectual',3,'',18,1),(192,'2018-03-26 17:27:36.808991','10','Feminist',3,'',18,1),(193,'2018-03-26 17:27:36.811722','9','Publisher',3,'',18,1),(194,'2018-03-26 17:27:36.814228','8','Collaborator',3,'',18,1),(195,'2018-03-26 17:27:36.817848','7','Essayist',3,'',18,1),(196,'2018-03-26 17:27:36.824366','6','Writer',3,'',18,1),(197,'2018-03-26 17:27:36.827256','5','Director',3,'',18,1),(198,'2018-03-26 17:28:24.653935','388','Cattleman',2,'[]',18,1),(199,'2018-03-26 19:43:29.979655','497','Zurich, Switzerland',3,'',17,1),(200,'2018-03-26 19:43:43.326259','479','Viña del Mar, Chile',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(201,'2018-03-27 01:19:06.123754','1','Sur',1,'[{\"added\": {}}]',13,1),(202,'2018-03-27 12:10:17.701372','497','Princeton University',1,'[{\"added\": {}}]',17,1),(203,'2018-03-27 12:10:38.082872','498','Cambridge, Massachusetts',1,'[{\"added\": {}}]',17,1),(204,'2018-03-27 12:11:00.421175','499','Charlottesville, Virginia',1,'[{\"added\": {}}]',17,1),(205,'2018-03-27 12:11:11.300675','497','Princeton, New Jersey',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(206,'2018-03-27 13:09:46.881202','2','1 (1931)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(207,'2018-03-27 13:09:54.451320','3','2 (1931)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(208,'2018-03-27 13:10:00.764013','4','3 (1931)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(209,'2018-03-27 13:10:08.098937','5','4 (1931)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(210,'2018-03-27 13:10:13.069927','5','4 (1931)',2,'[]',15,1),(211,'2018-03-27 13:10:18.753120','6','5 (1932)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(212,'2018-03-27 13:10:23.364769','6','5 (1932)',2,'[]',15,1),(213,'2018-03-27 13:10:29.190217','7','6 (1932)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(214,'2018-03-27 13:10:34.771784','8','7 (1933)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(215,'2018-03-27 13:10:40.258827','9','8 (1933)',2,'[{\"changed\": {\"fields\": [\"periodicals\"]}}]',15,1),(216,'2018-03-27 13:18:02.247784','9','8 (1933)',3,'',15,1),(217,'2018-03-27 13:18:02.249973','8','7 (1933)',3,'',15,1),(218,'2018-03-27 13:18:02.252896','7','6 (1932)',3,'',15,1),(219,'2018-03-27 13:18:02.254316','6','5 (1932)',3,'',15,1),(220,'2018-03-27 13:18:02.256026','5','4 (1931)',3,'',15,1),(221,'2018-03-27 13:18:02.258092','4','3 (1931)',3,'',15,1),(222,'2018-03-27 13:18:02.259599','3','2 (1931)',3,'',15,1),(223,'2018-03-27 13:18:02.260962','2','1 (1931)',3,'',15,1),(224,'2018-03-27 13:21:57.739751','87','78 (1941)',3,'',15,1),(225,'2018-03-27 13:21:57.742357','86','77 (1941)',3,'',15,1),(226,'2018-03-27 13:21:57.746097','85','76 (1941)',3,'',15,1),(227,'2018-03-27 13:21:57.747911','84','75 (1940)',3,'',15,1),(228,'2018-03-27 13:21:57.750024','83','74 (1940)',3,'',15,1),(229,'2018-03-27 13:21:57.753216','82','73 (1940)',3,'',15,1),(230,'2018-03-27 13:21:57.755003','81','72 (1940)',3,'',15,1),(231,'2018-03-27 13:21:57.757127','80','71 (1940)',3,'',15,1),(232,'2018-03-27 13:21:57.759132','79','70 (1940)',3,'',15,1),(233,'2018-03-27 13:21:57.761384','78','69 (1940)',3,'',15,1),(234,'2018-03-27 13:21:57.763194','77','68 (1940)',3,'',15,1),(235,'2018-03-27 13:21:57.765391','76','67 (1940)',3,'',15,1),(236,'2018-03-27 13:21:57.767273','75','66 (1940)',3,'',15,1),(237,'2018-03-27 13:21:57.770119','74','65 (1940)',3,'',15,1),(238,'2018-03-27 13:21:57.771930','73','64 (1940)',3,'',15,1),(239,'2018-03-27 13:21:57.774016','72','63 (1939)',3,'',15,1),(240,'2018-03-27 13:21:57.775813','71','62 (1939)',3,'',15,1),(241,'2018-03-27 13:21:57.777997','70','61 (1939)',3,'',15,1),(242,'2018-03-27 13:21:57.779829','69','60 (1939)',3,'',15,1),(243,'2018-03-27 13:21:57.782244','68','59 (1939)',3,'',15,1),(244,'2018-03-27 13:21:57.784092','67','58 (1939)',3,'',15,1),(245,'2018-03-27 13:21:57.786184','66','57 (1939)',3,'',15,1),(246,'2018-03-27 13:21:57.787999','65','56 (1939)',3,'',15,1),(247,'2018-03-27 13:21:57.789974','64','55 (1939)',3,'',15,1),(248,'2018-03-27 13:21:57.791684','63','54 (1939)',3,'',15,1),(249,'2018-03-27 13:21:57.793924','62','53 (1939)',3,'',15,1),(250,'2018-03-27 13:21:57.795696','61','52 (1939)',3,'',15,1),(251,'2018-03-27 13:21:57.797834','60','51 (1938)',3,'',15,1),(252,'2018-03-27 13:21:57.799541','59','50 (1938)',3,'',15,1),(253,'2018-03-27 13:21:57.802101','58','49 (1938)',3,'',15,1),(254,'2018-03-27 13:21:57.803996','57','48 (1938)',3,'',15,1),(255,'2018-03-27 13:21:57.806108','56','47 (1938)',3,'',15,1),(256,'2018-03-27 13:21:57.807857','55','46 (1938)',3,'',15,1),(257,'2018-03-27 13:21:57.810125','54','45 (1938)',3,'',15,1),(258,'2018-03-27 13:21:57.812526','53','44 (1938)',3,'',15,1),(259,'2018-03-27 13:21:57.814267','52','43 (1938)',3,'',15,1),(260,'2018-03-27 13:21:57.816096','51','42 (1938)',3,'',15,1),(261,'2018-03-27 13:21:57.819042','50','41 (1938)',3,'',15,1),(262,'2018-03-27 13:21:57.821241','49','40 (1938)',3,'',15,1),(263,'2018-03-27 13:21:57.823039','48','39 (1937)',3,'',15,1),(264,'2018-03-27 13:21:57.825679','47','38 (1937)',3,'',15,1),(265,'2018-03-27 13:21:57.827815','46','37 (1937)',3,'',15,1),(266,'2018-03-27 13:21:57.829953','45','36 (1937)',3,'',15,1),(267,'2018-03-27 13:21:57.831738','44','35 (1937)',3,'',15,1),(268,'2018-03-27 13:21:57.834086','43','34 (1937)',3,'',15,1),(269,'2018-03-27 13:21:57.836754','42','33 (1937)',3,'',15,1),(270,'2018-03-27 13:21:57.838437','41','32 (1937)',3,'',15,1),(271,'2018-03-27 13:21:57.840889','40','31 (1937)',3,'',15,1),(272,'2018-03-27 13:21:57.843078','39','30 (1937)',3,'',15,1),(273,'2018-03-27 13:21:57.845397','38','29 (1937)',3,'',15,1),(274,'2018-03-27 13:21:57.847377','37','28 (1937)',3,'',15,1),(275,'2018-03-27 13:21:57.849686','36','27 (1936)',3,'',15,1),(276,'2018-03-27 13:21:57.852121','35','26 (1936)',3,'',15,1),(277,'2018-03-27 13:21:57.854218','34','25 (1936)',3,'',15,1),(278,'2018-03-27 13:21:57.856095','33','24 (1936)',3,'',15,1),(279,'2018-03-27 13:21:57.859000','32','23 (1936)',3,'',15,1),(280,'2018-03-27 13:21:57.861614','31','22 (1936)',3,'',15,1),(281,'2018-03-27 13:21:57.863441','30','21 (1936)',3,'',15,1),(282,'2018-03-27 13:21:57.866141','29','20 (1936)',3,'',15,1),(283,'2018-03-27 13:21:57.869605','28','19 (1936)',3,'',15,1),(284,'2018-03-27 13:21:57.871364','27','18 (1936)',3,'',15,1),(285,'2018-03-27 13:21:57.873948','26','17 (1936)',3,'',15,1),(286,'2018-03-27 13:21:57.875944','25','16 (1936)',3,'',15,1),(287,'2018-03-27 13:21:57.878500','24','15 (1935)',3,'',15,1),(288,'2018-03-27 13:21:57.881376','23','14 (1935)',3,'',15,1),(289,'2018-03-27 13:21:57.883591','22','13 (1935)',3,'',15,1),(290,'2018-03-27 13:21:57.886623','21','12 (1935)',3,'',15,1),(291,'2018-03-27 13:21:57.889222','20','11 (1935)',3,'',15,1),(292,'2018-03-27 13:21:57.891071','19','10 (1935)',3,'',15,1),(293,'2018-03-27 13:21:57.893475','18','9 (1934)',3,'',15,1),(294,'2018-03-27 13:21:57.895330','17','3 (1933)',3,'',15,1),(295,'2018-03-27 13:21:57.897642','16','3 (1933)',3,'',15,1),(296,'2018-03-27 13:21:57.899706','15','2 (1932)',3,'',15,1),(297,'2018-03-27 13:21:57.903322','14','2 (1932)',3,'',15,1),(298,'2018-03-27 13:21:57.906589','13','1 (1931)',3,'',15,1),(299,'2018-03-27 13:21:57.908929','12','1 (1931)',3,'',15,1),(300,'2018-03-27 13:21:57.910776','11','1 (1931)',3,'',15,1),(301,'2018-03-27 13:21:57.913648','10','1 (1931)',3,'',15,1),(302,'2018-03-27 13:37:27.486777','2','Princeton University',3,'',11,1),(303,'2018-03-27 13:37:27.489790','1','Biblioteca Nacional Mariano Moreno',3,'',11,1),(304,'2018-03-27 13:39:10.511649','5','Harvard University',1,'[{\"added\": {}}]',11,1),(305,'2018-03-27 13:39:27.422867','6','Villa Ocampo',1,'[{\"added\": {}}]',11,1),(306,'2018-03-27 13:39:58.687289','7','University of Virginia',1,'[{\"added\": {}}]',11,1),(307,'2018-03-27 13:40:56.273072','88','1 . 1 (1931)',2,'[{\"changed\": {\"fields\": [\"repository\"]}}]',15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(14,'people','book'),(7,'people','contribution'),(16,'people','correspondence'),(9,'people','creatorbook'),(10,'people','creatorcontribution'),(8,'people','event'),(15,'people','issue'),(18,'people','occupation'),(12,'people','people'),(13,'people','periodicals'),(17,'people','place'),(11,'people','repository'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-26 14:30:53.302939'),(2,'auth','0001_initial','2018-03-26 14:30:53.479473'),(3,'admin','0001_initial','2018-03-26 14:30:53.552493'),(4,'admin','0002_logentry_remove_auto_add','2018-03-26 14:30:53.569796'),(5,'contenttypes','0002_remove_content_type_name','2018-03-26 14:30:53.654227'),(6,'auth','0002_alter_permission_name_max_length','2018-03-26 14:30:53.678505'),(7,'auth','0003_alter_user_email_max_length','2018-03-26 14:30:53.693734'),(8,'auth','0004_alter_user_username_opts','2018-03-26 14:30:53.707005'),(9,'auth','0005_alter_user_last_login_null','2018-03-26 14:30:53.739280'),(10,'auth','0006_require_contenttypes_0002','2018-03-26 14:30:53.742928'),(11,'auth','0007_alter_validators_add_error_messages','2018-03-26 14:30:53.763577'),(12,'auth','0008_alter_user_username_max_length','2018-03-26 14:30:53.820096'),(13,'people','0001_updates_to_models','2018-03-26 14:30:54.667964'),(14,'people','0002_post_managed_revisions','2018-03-26 14:30:54.766508'),(15,'people','0003_eliminated_descriptive_bibliography__table','2018-03-26 14:30:55.214382'),(16,'people','0004_updated_choice_options_in_occupations_model','2018-03-26 14:30:55.276909'),(17,'people','0005_updated_data_in_occupations_model','2018-03-26 14:30:55.335429'),(18,'people','0006_updated_occupation_types_model','2018-03-26 14:30:55.359296'),(19,'people','0007_updated_occupation_CharField','2018-03-26 14:30:55.376791'),(20,'people','0008_changed_occupations_model','2018-03-26 14:30:55.399337'),(21,'sessions','0001_initial','2018-03-26 14:30:55.419394'),(22,'people','0009_updated_charfield_in_occupations','2018-03-26 15:57:36.647381'),(23,'people','0010_updated_issues_model','2018-03-27 12:49:30.647297'),(24,'people','0011_updated_CharField_in_issues','2018-03-27 12:51:47.966130');
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
INSERT INTO `django_session` VALUES ('6f02y81bocaqiwhrzwshowbtcwcrvfzt','OGMyNDhmYmNmMWMwOWRjYWVlYTE0MTYzMWU1ZDNhYjQ1Y2U1NzBhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZmMDg2N2E1ZjQ2NDgzYTdiN2U4ODc0Y2ZlZTI5NzQ5NGJmZWY0MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-09 14:37:30.771834');
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
  `notes` longtext,
  `place_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_place_id_a3a3617d_fk_places_id` (`place_id`),
  CONSTRAINT `events_place_id_a3a3617d_fk_places_id` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
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
  `number` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `printer` varchar(20) DEFAULT NULL,
  `notes` longtext,
  `periodicals_id` int(11) DEFAULT NULL,
  `colophon` longtext,
  `repository_id` int(11) DEFAULT NULL,
  `arrow_color` varchar(30) DEFAULT NULL,
  `cover_color` varchar(20) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_periodicals_id_c5eb00e2_fk_periodicals_id` (`periodicals_id`),
  KEY `issues_repository_id_a72907c6_fk_repository_id` (`repository_id`),
  CONSTRAINT `issues_periodicals_id_c5eb00e2_fk_periodicals_id` FOREIGN KEY (`periodicals_id`) REFERENCES `periodicals` (`id`),
  CONSTRAINT `issues_repository_id_a72907c6_fk_repository_id` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (88,'1','1931-01-01','Francisco A. Colombo','',NULL,'\"verano\"; el colofon se presenta en la forma de una flecha ; el numero esta lleno de imagenes y fotos ; \"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',3,'green','creme','$2.00','1'),(89,'2','1931-05-01','Francisco A. Colombo',NULL,NULL,'\"otono\" ; el numero esta lleno de imagenes y fotos ; \"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'yellow','creme','$2.00','1'),(90,'3','1931-08-01','Francisco A. Colombo',NULL,NULL,'\"invierno\" ; el numero esta lleno de imagenes y fotos ; \"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'red','creme','$2.00','1'),(91,'4','1931-11-01','Francisco A. Colombo',NULL,NULL,'\"primavera\" ; el numero esta lleno de imagenes y fotos ; \"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'blue','creme','$2.00','1'),(92,'5','1932-05-01','Francisco A. Colombo',NULL,NULL,'\"verano\" ; \"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'grey','creme','$2.00','2'),(93,'6','1932-11-01','Francisco A. Colombo',NULL,NULL,'\"otono\" ; \"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'violet','creme','$2.00','2'),(94,'7','1933-04-01','Francisco A. Colombo',NULL,NULL,'\"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'marigold','creme','$2.00','3'),(95,'8','1933-09-01','Francisco A. Colombo',NULL,NULL,'\"De este numero se han impreso cien ejemplares en papel hilo Stratton Bond, numerados del 1 al 100 y reservados exclusivamente a los subscriptores de la edicion de lujo\"',NULL,'grey','creme','$2.00','3'),(96,'9','1934-07-01','Imprenta Lopez',NULL,NULL,'',NULL,'pink','creme','$2.00','4'),(97,'10','1935-07-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','5'),(98,'11','1935-08-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red-orange','$1.00','5'),(99,'12','1935-09-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow','$1.00','5'),(100,'13','1935-10-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','turquoise','$1.00','5'),(101,'14','1935-11-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','creamsicle','$1.00','5'),(102,'15','1935-12-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey','$1.00','5'),(103,'16','1936-01-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow','$1.00','6'),(104,'17','1936-02-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','khaki','$1.00','6'),(105,'18','1936-03-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','indigo','$1.00','6'),(106,'19','1936-04-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','burnt orange-red','$1.00','6'),(107,'20','1936-05-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','navy blue','$1.00','6'),(108,'21','1936-06-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','dark khaki','$1.00','6'),(109,'22','1936-07-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','6'),(110,'23','1936-08-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red','$1.00','6'),(111,'24','1936-09-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','blue grey','$1.00','6'),(112,'25','1936-10-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','mustard yellow','$1.00','6'),(113,'26','1936-11-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','peach','$1.00','6'),(114,'27','1936-12-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','6'),(115,'28','1937-01-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey-brown','$1.00','7'),(116,'29','1937-02-27','Imprenta Lopez',NULL,NULL,'',NULL,'creme','burnt sienna','$1.00','7'),(117,'30','1937-03-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','purple','$1.00','7'),(118,'31','1937-04-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','burgundy','$1.00','7'),(119,'32','1937-05-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey-purple','$1.00','7'),(120,'33','1937-06-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','orange','$1.00','7'),(121,'34','1937-07-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','7'),(122,'35','1937-08-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow','$1.00','7'),(123,'36','1937-09-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','salmon','$1.00','7'),(124,'37','1937-10-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey-teal','$1.00','7'),(125,'38','1937-11-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','blue','$1.00','7'),(126,'39','1937-12-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red','$1.00','7'),(127,'40','1938-01-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','purple','$1.00','8'),(128,'41','1938-02-28','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','8'),(129,'42','1938-03-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','orange','$1.00','8'),(130,'43','1938-04-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','purple','$1.00','8'),(131,'44','1938-05-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey','$1.00','8'),(132,'45','1938-06-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red-pink','$1.00','8'),(133,'46','1938-07-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey-purple','$1.00','8'),(134,'47','1938-08-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','brown-orange','$1.00','8'),(135,'48','1938-09-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','plum','$1.00','8'),(136,'49','1938-10-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow','$1.00','8'),(137,'50','1938-11-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','light teal','$1.00','8'),(138,'51','1938-12-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red','$1.00','8'),(139,'52','1939-01-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','9'),(140,'53','1939-02-28','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow-orange','$1.00','9'),(141,'54','1939-03-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','burnt yellow','$1.00','9'),(142,'55','1939-04-29','Imprenta Lopez',NULL,NULL,'',NULL,'creme','teal','$1.00','9'),(143,'56','1939-05-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey-yellow','$1.00','9'),(144,'57','1939-06-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red','$1.00','9'),(145,'58','1939-07-29','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','9'),(146,'59','1939-08-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red-purple','$1.00','9'),(147,'60','1939-09-29','Imprenta Lopez',NULL,NULL,'',NULL,'creme','light orange','$1.00','9'),(148,'61','1939-10-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','blue','$1.00','9'),(149,'62','1939-11-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow','$1.00','9'),(150,'63','1939-12-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','burnt sienna','$1.00','9'),(151,'64','1940-01-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','10'),(152,'65','1940-02-29','Imprenta Lopez',NULL,NULL,'',NULL,'creme','light green','$1.00','10'),(153,'66','1940-03-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','light purple-red','$1.00','10'),(154,'67','1940-04-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow-orange','$1.00','10'),(155,'68','1940-05-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','teal','$1.00','10'),(156,'69','1940-06-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey','$1.00','10'),(157,'70','1940-07-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red','$1.00','10'),(158,'71','1940-08-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','orange','$1.00','10'),(159,'72','1940-09-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','grey-blue','$1.00','10'),(160,'73','1940-10-01','Imprenta Lopez',NULL,NULL,'',NULL,'creme','red-purple','$1.00','10'),(161,'74','1940-11-30','Imprenta Lopez',NULL,NULL,'',NULL,'creme','brown','$1.00','10'),(162,'75','1940-12-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','green','$1.00','10'),(163,'76','1941-01-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','peach','$1.00','10'),(164,'77','1941-02-28','Imprenta Lopez',NULL,NULL,'',NULL,'creme','yellow','$1.00','10'),(165,'78','1941-03-31','Imprenta Lopez',NULL,NULL,'',NULL,'creme','light green','$1.00','10');
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
  `name` varchar(150) NOT NULL,
  `notes` longtext,
  `occupation_type` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupations`
--

LOCK TABLES `occupations` WRITE;
/*!40000 ALTER TABLE `occupations` DISABLE KEYS */;
INSERT INTO `occupations` VALUES (201,'Director',NULL,'PR'),(202,'Writer',NULL,'WR'),(203,'Essayist',NULL,'WR'),(204,'Collaborator',NULL,'WR'),(205,'Publisher',NULL,'PR'),(206,'Feminist',NULL,'AT'),(207,'Intellectual',NULL,'AC'),(208,'Consejo de Redacción',NULL,'PR'),(209,'Consejo Extranjero',NULL,'PR'),(210,'Poet',NULL,'WR'),(211,'Author',NULL,'WR'),(212,'Dramatist',NULL,'WR'),(213,'Conductor',NULL,'AR'),(214,'Musician',NULL,'AR'),(215,'Translator',NULL,'WR'),(216,'Painter',NULL,'AR'),(217,'Secretario de Redacción',NULL,'PR'),(218,'Novelist',NULL,'WR'),(219,'Playwright',NULL,'WR'),(220,'Literary Critic',NULL,'WR'),(221,'Philosopher',NULL,'AC'),(222,'Composer',NULL,'AR'),(223,'Psychiatrist',NULL,'AC'),(224,'Psychoanalyst',NULL,'AC'),(225,'Diplomat',NULL,'AT'),(226,'Educator',NULL,'AC'),(227,'Politician',NULL,'AT'),(228,'Short Story Writer',NULL,'WR'),(229,'Screenwriter',NULL,'WR'),(230,'Journalist',NULL,'WR'),(231,'Professor',NULL,'AC'),(232,'Political Activist',NULL,'AT'),(233,'Biographer',NULL,'WR'),(234,'Entomologist',NULL,'AC'),(235,'Polymath',NULL,'AC'),(236,'President',NULL,'AT'),(237,'Philologist',NULL,'AC'),(238,'Lawyer',NULL,'AC'),(239,'Researcher',NULL,'AC'),(240,'Teacher',NULL,'AC'),(241,'Pianist',NULL,'AR'),(242,'Violinist',NULL,'AR'),(243,'Orchestral Director',NULL,'AR'),(244,'Art Critic',NULL,'WR'),(245,'Art Theorist',NULL,'AC'),(246,'Minister of Cultural Affairs',NULL,'AT'),(247,'Architect',NULL,'AR'),(248,'Designer',NULL,'AR'),(249,'Urban Planner',NULL,'AR'),(250,'Critic',NULL,'WR'),(251,'Engraver',NULL,'AR'),(252,'Sculptor',NULL,'AR'),(253,'Printmaker',NULL,'AR'),(254,'Ceramicist',NULL,'AR'),(255,'Stage Designer',NULL,'AR'),(256,'Lithographer',NULL,'AR'),(257,'Archaeologist',NULL,'AC'),(258,'Ethnologist',NULL,'AC'),(259,'Scholar',NULL,'AC'),(260,'Anthropologist',NULL,'AC'),(261,'Human Rights Leader',NULL,'AT'),(262,'Historian',NULL,'AC'),(263,'Sociologist',NULL,'AC'),(264,'Economist',NULL,'AC'),(265,'Ambassador',NULL,'AT'),(266,'Editor',NULL,'PR'),(267,'Linguist',NULL,'AC'),(268,'University Reformer',NULL,'AT'),(269,'Hispanist',NULL,'AT'),(270,'Civil Engineer',NULL,'AC'),(271,'Academic',NULL,'AC'),(272,'Chemist',NULL,'AC'),(273,'Patron',NULL,'AR'),(274,'Collector',NULL,'AR'),(275,'Socialite',NULL,'SO'),(276,'Propaganda Adviser',NULL,'AT'),(277,'Doctor',NULL,'AC'),(278,'Philanthropist',NULL,'SO'),(279,'Urbanist',NULL,'AR'),(280,'Entrepreneur',NULL,'AT'),(281,'Farm Worker',NULL,'AT'),(282,'Geographer',NULL,'AC'),(283,'Indologist',NULL,'AC'),(284,'Actor',NULL,'AR'),(285,'Columnist',NULL,'WR'),(286,'Archivist',NULL,'AC'),(287,'Librarian',NULL,'AC'),(288,'Prologuist',NULL,'WR'),(289,'Pacifist',NULL,'AT'),(290,'Film Director',NULL,'PR'),(291,'Producer',NULL,'PR'),(292,'Musciographer',NULL,'AC'),(293,'Science Writer',NULL,'WR'),(294,'Lecturer',NULL,'AC'),(295,'Engineer',NULL,'AC'),(296,'Mathematician',NULL,'AC'),(297,'Garden Designer',NULL,'AR'),(298,'Graphic Artist',NULL,'AR'),(299,'Illustrator',NULL,'AR'),(300,'Jurist',NULL,'AC'),(301,'Physician',NULL,'AC'),(302,'Eugenicist',NULL,'AC'),(303,'Humanist',NULL,'AC'),(304,'Egyptian Delegate',NULL,'AT'),(305,'Botonist',NULL,'AC'),(306,'Actress',NULL,'AR'),(307,'Theosophist',NULL,'AC'),(308,'Parliamentarian',NULL,'AT'),(309,'Broadcaster',NULL,'PR'),(310,'Soldier',NULL,'AT'),(311,'Artistic Director',NULL,'PR'),(312,'Clerk',NULL,'AC'),(313,'Neuroscientist',NULL,'AC'),(314,'Priest',NULL,'AT'),(315,'Theologian',NULL,'AC'),(316,'Libertarian',NULL,'AT'),(317,'Syndicalist',NULL,'AT'),(318,'Orientalist',NULL,'AC'),(319,'Organist',NULL,'AR'),(320,'Humanitarian',NULL,'AT'),(321,'Statesman',NULL,'AT'),(322,'Activist',NULL,'AT'),(323,'Archaeologist',NULL,'AC'),(324,'Accountant',NULL,'AC'),(325,'Supreme Court Justice',NULL,'AC'),(326,'Supreme Court Minister',NULL,'AC'),(327,'Editorial Director',NULL,'PR'),(328,'Linotypist',NULL,'PR'),(329,'Policy Maker',NULL,'AT'),(330,'Minister of Economy',NULL,'AC'),(331,'Investigator',NULL,'AC'),(332,'Radio Host',NULL,'AR'),(333,'Film Critic',NULL,'WR'),(334,'Curator',NULL,'AR'),(335,'Folklorist',NULL,'WR'),(336,'Musicologist',NULL,'AC'),(337,'Polemicist',NULL,'AT'),(338,'Erudite',NULL,'SO'),(339,'Literary Agent',NULL,'PR'),(340,'Art Historian',NULL,'AC'),(341,'Bibliophile',NULL,'AC'),(342,'Literary Journal Director',NULL,'PR'),(343,'Secretary of the Municipal Government',NULL,'AT'),(344,'Compiler',NULL,'PR'),(345,'Anarquist',NULL,'AT'),(346,'Theatre Critic',NULL,'WR'),(347,'Music Critic',NULL,'WR'),(348,'Cultural Attaché',NULL,'AT'),(349,'Pedagogue',NULL,'AC'),(350,'Reviewer',NULL,'WR'),(351,'Printer',NULL,'PR'),(352,'Humorist',NULL,'AR'),(353,'Scientist',NULL,'AC'),(354,'Pastor',NULL,'AT'),(355,'Noblewoman',NULL,'SO'),(356,'Founder',NULL,'AT'),(357,'Museologist',NULL,'AC'),(358,'Model',NULL,'AR'),(359,'Filmmaker',NULL,'AR'),(360,'Banker',NULL,'AC'),(361,'School Director',NULL,'AC'),(362,'Speaker',NULL,'AC'),(363,'Photojournalist',NULL,'AR'),(364,'Photographer',NULL,'AR'),(365,'Businessman',NULL,'AC'),(366,'Lobbyist',NULL,'AT'),(367,'Prime Minister',NULL,'AT'),(368,'Harpsichordist',NULL,'AR'),(369,'Dancer',NULL,'AR'),(370,'Board Member',NULL,'AT'),(371,'Epidemiologist',NULL,'AC'),(372,'Film Producer',NULL,'PR'),(373,'Singer',NULL,'AR'),(374,'Biologist',NULL,'AC'),(375,'Organizer',NULL,'AT'),(376,'Artist',NULL,'AR'),(377,'Mime Artist',NULL,'AR'),(378,'Aristocrat',NULL,'SO'),(379,'Comic Writer',NULL,'WR'),(380,'Style Leader',NULL,'SO'),(381,'Baroness',NULL,'SO'),(382,'Mistress',NULL,'SO'),(383,'General',NULL,'AT'),(384,'Political Figure',NULL,'AT'),(385,'Existentialist',NULL,'AC'),(386,'Agronomist',NULL,'AC'),(387,'Civil Rights Leader',NULL,'AT'),(388,'Cattleman','','AT'),(389,'Secretary',NULL,'AT'),(390,'Editorialist',NULL,'PR'),(391,'Reporter',NULL,'WR'),(392,'Social Theorist',NULL,'AC'),(393,'Cultural Theorist',NULL,'AC'),(394,'Astronomer',NULL,'AC'),(395,'Physicist',NULL,'AC'),(396,'Choreographer',NULL,'AR');
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
  `deathdate` date DEFAULT NULL,
  `notes` longtext,
  `sex` varchar(20) DEFAULT NULL,
  `viaf_id` int(11) DEFAULT NULL,
  `birthplace_id` int(11) DEFAULT NULL,
  `deathplace_id` int(11) DEFAULT NULL,
  `occupations_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_birthplace_id_7e0ea343_fk_places_id` (`birthplace_id`),
  KEY `people_deathplace_id_b48ac2f7_fk_places_id` (`deathplace_id`),
  KEY `people_occupations_id_eef74f7b_fk_occupations_id` (`occupations_id`),
  CONSTRAINT `people_birthplace_id_7e0ea343_fk_places_id` FOREIGN KEY (`birthplace_id`) REFERENCES `places` (`id`),
  CONSTRAINT `people_deathplace_id_b48ac2f7_fk_places_id` FOREIGN KEY (`deathplace_id`) REFERENCES `places` (`id`),
  CONSTRAINT `people_occupations_id_eef74f7b_fk_occupations_id` FOREIGN KEY (`occupations_id`) REFERENCES `occupations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_creatorbook`
--

LOCK TABLES `people_creatorbook` WRITE;
/*!40000 ALTER TABLE `people_creatorbook` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_creatorcontribution`
--

LOCK TABLES `people_creatorcontribution` WRITE;
/*!40000 ALTER TABLE `people_creatorcontribution` DISABLE KEYS */;
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
  `notes` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicals`
--

LOCK TABLES `periodicals` WRITE;
/*!40000 ALTER TABLE `periodicals` DISABLE KEYS */;
INSERT INTO `periodicals` VALUES (1,'Sur','Founded by Victoria Ocampo in 1931.');
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
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `notes` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,57.149717,-2.094278,'Aberdeen, United Kingdom',NULL),(2,44.618333,-67.744167,'Addison, Maine',NULL),(3,-34.929,138.601,'Adelaide, Australia',NULL),(4,53.6764136,10.2378854,'Ahrensburg, Germany',NULL),(5,43.529742,5.447427,'Aix-en-Provence, France',NULL),(6,44.014336,8.1811741,'Alassio, Italy',NULL),(7,45.4253354,8.9448741,'Albairate, Italy',NULL),(8,-35.0316512,-60.2802699,'Alberti, Buenos Aires, Argentina',NULL),(9,35.0853336,-106.6055534,'Albuquerque, New Mexico',NULL),(10,31.2000924,29.9187387,'Alexandria, Egypt',NULL),(11,25.4358011,81.846311,'Allahabad, India',NULL),(12,41.8492599,-73.5567918,'Amenia, New York',NULL),(13,42.3732216,-72.5198537,'Amherst, Massachusetts',NULL),(14,40.6789893,-73.4170673,'Amityville, New York',NULL),(15,52.3702157,4.8951679,'Amsterdam, Netherlands',NULL),(16,37.5442706,-4.7277528,'Andalusia, Spain',NULL),(17,30.6006773,117.9249002,'Anhui, China',NULL),(18,51.2194475,4.4024643,'Antwerp, Belgium',NULL),(19,40.7928393,17.1011931,'Apulia, Italy',NULL),(20,10.591925,-74.186103,'Aracataca, Colombia',NULL),(21,-16.4090474,-71.537451,'Arequipa, Peru',NULL),(22,-38.416097,-63.616672,'Argentina',NULL),(23,42.4153925,-71.1564729,'Arlington, Massachusetts',NULL),(24,46.1615793,8.7750131,'Ascona, Switzerland',NULL),(25,-25.2637399,-57.575926,'Asuncion, Paraguay',NULL),(26,50.0274106,19.2019829,'Auschwitz, Poland',NULL),(27,-34.6610756,-58.3669739,'Avellaneda, Argentina',NULL),(28,51.837203,-0.266776,'Ayot St Lawrence, United Kingdom',NULL),(29,38.8794495,-6.9706535,'Badajoz, Spain',NULL),(30,48.7656,8.2285,'Baden-Baden, Germany',NULL),(31,-38.7183177,-62.2663478,'Bahia Blanca, Argentina',NULL),(32,41.3850639,2.1734035,'Barcelona, Spain',NULL),(33,44.3876119,-68.2039123,'Bar Harbor, Maine',NULL),(34,48.231209,4.707771,'Bar-sur-Aube, France',NULL),(35,47.5595986,7.5885761,'Basel, Switzerland',NULL),(36,48.6343172,7.5252938,'Bas-Rhin, France',NULL),(37,20.3719163,-76.6297189,'Bayamo, Cuba',NULL),(38,-34.4640891,-58.5347609,'Beccar, Argentina',NULL),(39,50.503887,4.469936,'Belgium',NULL),(40,51.498659,-0.15267,'Belgrave Square, London, United Kingdom',NULL),(41,46.122228,1.051593,'Bellac, France',NULL),(42,45.9641291,9.2461642,'Bellagio, Lombardy, Italy',NULL),(43,37.8715926,-122.272747,'Berkeley, California',NULL),(44,52.5200066,13.404954,'Berlin, Germany',NULL),(45,34.0736204,-118.4003563,'Beverly Hills, California',NULL),(46,43.48,-1.56,'Biarritz, France',NULL),(47,4.7109886,-74.072092,'Bogot͍, Colombia',NULL),(48,44.494887,11.3426162,'Bologna, Italy',NULL),(49,44.837789,-0.57918,'Bordeaux, France',NULL),(50,42.3600825,-71.0588801,'Boston, Massachusetts',NULL),(51,42.3600825,-71.0588801,'Boston, Massachussets',NULL),(52,50.725231,1.613334,'Boulogne-sur-Mer, France',NULL),(53,41.2675956,-73.4417885,'Branchville, Connecticut',NULL),(54,37.931944,-121.695833,'Brentwood, California',NULL),(55,51.454513,-2.58791,'Bristol, United Kingdom',NULL),(56,49.1950602,16.6068371,'Brno, Czech Republic',NULL),(57,51.406025,0.013156,'Bromley, United Kingdom',NULL),(58,42.3317642,-71.1211635,'Brookline, Massachusetts',NULL),(59,50.8503463,4.3517211,'Brussels, Belgium',NULL),(60,44.4267674,26.1025384,'Bucharest, Romania',NULL),(61,47.497912,19.040235,'Budapest, Hungary',NULL),(62,-34.6036844,-58.3815591,'Buenos Aires, Argentina',NULL),(63,42.8864468,-78.8783689,'Buffalo, New York',NULL),(64,3.9005079,-76.3021889,'Buga, Colombia',NULL),(65,42.733883,25.48583,'Bulgaria',NULL),(66,41.587565,-3.0668549,'Burgo de Osma-Ciudad de Osma, Spain',NULL),(67,42.3439925,-3.696906,'Burgos, Spain',NULL),(68,52.2429228,0.7104932,'Bury St Edmunds, United Kingdom',NULL),(69,34.8723179,-89.6906396,'Byhalia, Mississippi',NULL),(70,30.0444196,31.2357116,'Cairo, Egypt',NULL),(71,50.95129,1.858686,'Calais, France',NULL),(72,21.3926035,-77.9053182,'Camaguey, Cuba',NULL),(73,42.3736158,-71.1097335,'Cambridge, Massachusetts',NULL),(74,52.2053,0.1218,'Cambridge, United Kingdom',NULL),(75,-34.1633346,-58.9592643,'Campana, Buenos Aires, Argentina',NULL),(76,-24.907204,-65.6441178,'Campo Quijano, Argentina',NULL),(77,43.552849,7.017369,'Cannes, France',NULL),(78,10.3091314,-68.278778,'Canoabo, Venezuela',NULL),(79,-21.9802716,-42.3625761,'Cantagalo, Rio de Janeiro, Brazil',NULL),(80,10.4805937,-66.9036063,'Caracas, Venezuela',NULL),(81,-33.5482466,-71.6045745,'Cartagena, Chile',NULL),(82,45.8144729,9.0319407,'Cavallasca, Italy',NULL),(83,-11.9947642,-76.7682775,'Chaclacayo, Lima, Peru',NULL),(84,48.956682,4.363073,'Chalons-en-Champagne, France',NULL),(85,48.8265,2.405,'Charenton-le-Pont, France',NULL),(86,48.771896,2.270748,'Chatenay-Malabry, France',NULL),(87,53.7117479,28.4244728,'Chervyen, Belarus',NULL),(88,41.8781136,-87.6297982,'Chicago, Illinois',NULL),(89,-36.6062618,-72.1023351,'Chillan, Chile',NULL),(90,-34.8969795,-60.0190731,'Chivilcoy, Argentina',NULL),(91,-12.1876499,-77.0077636,'Chorrillos, Lima, Peru',NULL),(92,-16.4089164,-67.5276414,'Chulumani, Bolivia',NULL),(93,43.387537,-1.675432,'Ciboure, France',NULL),(94,48.799815,2.257289,'Clamart, France',NULL),(95,51.46231,-0.13857,'Clapham, London, United Kingdom',NULL),(96,41.49932,-81.6943605,'Cleveland, Ohio',NULL),(97,42.844668,-73.8183804,'Clifton Park, New York',NULL),(98,-36.1386156,-72.7945218,'Cobquecura, Chile',NULL),(99,-17.4139766,-66.1653224,'Cochabamba, Bolivia',NULL),(100,41.3345486,-0.7004385,'Codo, Zaragoza, Spain',NULL),(101,45.691046,-0.328744,'Cognac, France',NULL),(102,45.4717,6.5822,'Coise-Saint-Jean-Pied-Gauthier, France',NULL),(103,42.526752,3.084631,'Collioure, France',NULL),(104,48.2242,4.8867,'Colombey-les-Deux-Eglises, France',NULL),(105,4.570868,-74.297333,'Colombia',NULL),(106,45.204444,122.447778,'Colton, Oregon',NULL),(107,33.4956744,-88.4272627,'Columbus, Mississippi',NULL),(108,51.0733094,-3.2130433,'Combe Florey, United Kingdom',NULL),(109,45.8080597,9.0851765,'Como, Italy',NULL),(110,-31.4200833,-64.1887761,'Cordoba, Argentina',NULL),(111,46.9262933,6.6324944,'Couvet, Switzerland',NULL),(112,52.406822,-1.519693,'Coventry, United Kingdom',NULL),(113,19.3437444,-99.1561883,'Coyoacon, Mexico',NULL),(114,48.790367,2.455572,'Creteil, France',NULL),(115,21.521757,-77.781167,'Cuba',NULL),(116,18.9242,99.2216,'Cuernavaca, Mexico',NULL),(117,32.775833,-96.796667,'Dallas, Texas',NULL),(118,32.9594891,-117.2653146,'Del Mar, California',NULL),(119,51.8308166,12.2423302,'Dessau, Germany',NULL),(120,43.2712452,-2.9385576,'Deusto, Spain',NULL),(121,51.353,-1.994,'Devizes, United Kingdom',NULL),(122,40.049722,-75.425556,'Devon, Pennsylvania',NULL),(123,44.092193,6.235976,'Digne-les-Bains, France',NULL),(124,47.322047,5.04148,'Dijon, France',NULL),(125,44.801305,1.217048,'Domme, France',NULL),(126,-34.4938049,-58.6272715,'Don Torcuato, Argentina',NULL),(127,36.6923855,7.730807,'Drean, Algeria',NULL),(128,51.0746657,13.7741132,'Dresden-Neustadt, Germany',NULL),(129,48.736134,1.370889,'Dreux, France',NULL),(130,53.3498053,-6.2603097,'Dublin, Ireland',NULL),(131,40.956944,-72.198889,'East Hampton, New York',NULL),(132,53.018115,-1.308544,'Eastwood, United Kingdom',NULL),(133,38.4500743,-2.0481401,'Elche de la Sierra, Spain',NULL),(134,43.2157113,-2.4128202,'Elgoibar, Gipuzkoa, Spain',NULL),(135,46.274788,-111.946213,'Elkhorn, Montana',NULL),(136,36.6393281,-6.2588369,'El Puerto de Santa Maria',NULL),(137,54.3438243,-7.6315336,'Enniskillen, United Kingdom',NULL),(138,-31.4489859,-60.9303663,'Esperanza, Argentina',NULL),(139,42.0450722,-87.6876969,'Evanston, Illinois',NULL),(140,41.5532,70.6086,'Falmouth, Massachusetts',NULL),(141,40.7674987,-73.833079,'Flushing, New York',NULL),(142,48.404676,2.70162,'Fontainebleau, France',NULL),(143,48.789776,2.287181,'Fontenay-aux-Roses, France',NULL),(144,48.3515609,-1.204626,'Fougeres, France',NULL),(145,50.41094,3.89551,'Frameries, Belgium',NULL),(146,46.227638,2.213749,'France',NULL),(147,50.1109221,8.6821267,'Frankfurt, Germany',NULL),(148,53.8479951,10.7059193,'Free City of Lubeck',NULL),(149,47.9990077,7.8421043,'Freiburg im Breisgau, Germany',NULL),(150,32.6669328,-16.9240554,'Funchal, Portugal',NULL),(151,55.623728,-2.814449,'Galashiels, Scotland',NULL),(152,46.2043907,6.1431577,'Geneva, Switzerland',NULL),(153,51.0543422,3.7174243,'Ghent, Belgium',NULL),(154,43.033889,6.140833,'Giens Peninsula, Hyeres, France',NULL),(155,42.1350268,-87.7581188,'Glencoe, Illinois',NULL),(156,51.185732,-0.612808,'Godalming, United Kingdom',NULL),(157,45.9401812,13.6201754,'Gorizia, Italy',NULL),(158,-37.7217867,-62.6104441,'Goyena, Argentina',NULL),(159,37.1773363,-3.5985571,'Granada, Spain',NULL),(160,40.9263957,-98.3420118,'Grand Island, Nebraska',NULL),(161,45.188529,5.724524,'Grenoble, France',NULL),(162,51.5073509,-0.1277583,'Grosvenor Square, London, United Kingdom',NULL),(163,20.6596988,-103.3496092,'Guadalajara, Mexico',NULL),(164,40.632489,-3.16017,'Guadalajara, Spain',NULL),(165,-33.1503285,-59.3104685,'Gualeguay, Argentina',NULL),(166,-33.0077778,-58.5111667,'Gualeguaychu, Argentina',NULL),(167,21.0190145,-101.2573586,'Guanajuato, Mexico',NULL),(168,-2.1709979,-79.9223592,'Guayaquil, Ecuador',NULL),(169,26.490278,-80.061111,'Gulf Stream, Florida',NULL),(170,52.3758916,9.7320104,'Hanover, Germany',NULL),(171,43.4297135,-98.5273039,'Harrison, South Dakota',NULL),(172,41.7637111,-72.6850932,'Hartford, Connecticut',NULL),(173,48.833333,2.22,'Hauts-de-Seine, France',NULL),(174,23.1135925,-82.3665956,'Havana, Cuba',NULL),(175,55.771718,9.70228,'Hedensted, Denmark',NULL),(176,60.1698557,24.9383791,'Helsinki, Finland',NULL),(177,40.7062128,-73.6187397,'Hempstead, New York',NULL),(178,49.100706,2.128767,'Herouville, France',NULL),(179,48.856614,2.3522219,'Houjarray, France',NULL),(180,43.1205,6.1286,'Hyeres, France',NULL),(181,47.1584549,27.6014418,'Iasi, Romania',NULL),(182,48.804722,2.121782,'Ile-de-France, France',NULL),(183,47.2692124,11.4041024,'Innsbruck, Austria',NULL),(184,40.7313,13.8957,'Ischia, Italy',NULL),(185,28.2915637,-16.6291304,'Islas Canarias, Spain',NULL),(186,45.6290805,11.4421511,'Isola Vicentina, Italy',NULL),(187,41.8719,12.5674,'Italy',NULL),(188,48.813055,2.38822,'Ivry-sur-Seine, France',NULL),(189,50.8333432,4.3666294,'Ixelles, Belgium',NULL),(190,37.7795941,-3.7849057,'Jaen, Spain',NULL),(191,31.768319,35.21371,'Jerusalem, Israel',NULL),(192,35.3192254,139.5466868,'Kamakura, Japan',NULL),(193,39.114053,-94.6274636,'Kansas City, Kansas',NULL),(194,48.13889,7.264023,'Kayserberg, Germany',NULL),(195,54.328006,-2.74629,'Kendal, United Kingdom',NULL),(196,51.5010095,-0.1932794,'Kensington, London, United Kingdom',NULL),(197,51.5010095,-0.1932794,'Kensington, United Kingdom',NULL),(198,47.5935362,9.3177304,'Kesswil, Switzerland',NULL),(199,49.9935,36.230383,'Kharkiv, Ukraine',NULL),(200,50.4501,30.5234,'Kiev, Ukraine',NULL),(201,52.7516798,0.4022963,'King\'s Lynn, United Kingdom',NULL),(202,41.9270367,-73.9973608,'Kingston, New York',NULL),(203,38.5833862,-90.406785,'Kirkwood, Missouri',NULL),(204,51.2662551,0.20557,'Knole House, United Kingdom',NULL),(205,22.572646,88.363895,'Kolkata, India',NULL),(206,58.439,22.7922999,'Konnu, Estonia',NULL),(207,46.8794597,7.6208263,'Konolfingen, Switzerland',NULL),(208,47.3189227,8.5844705,'Kusnacht, Switzerland',NULL),(209,47.1034892,6.8327838,'La Chaux-de-Fonds, Switzerland',NULL),(210,43.3623436,-8.4115401,'La Coruna , Spain',NULL),(211,-31.1,-64.483,'La Cumbre, Cordoba, Argentina',NULL),(212,45.4207,122.6706,'Lake Oswego, Oregon',NULL),(213,-8.1435933,-78.4751945,'La Libertad, Peru',NULL),(214,-0.7015457,10.2403858,'Lambarene, Gabon',NULL),(215,53.7632254,-2.7044052,'Lancashire, England',NULL),(216,-16.489689,-68.1192936,'La Paz, Bolivia',NULL),(217,-34.9204948,-57.9535657,'La Plata, Argentina',NULL),(218,-33.4411269,-70.5340591,'La Reina, Chile',NULL),(219,42.2870733,-2.539603,'La Rioja, Spain',NULL),(220,46.670511,-1.426442,'La Roche-sur-Yon, France',NULL),(221,46.5196535,6.6322734,'Lausanne, Switzerland',NULL),(222,-12.5617279,-41.3898761,'Lecois, Brazil',NULL),(223,51.3396955,12.3730747,'Leipzig, Germany',NULL),(224,41.6175899,0.6200146,'Lerida, Spain',NULL),(225,42.4837725,-1.9722513,'Leon, Spain',NULL),(226,48.894198,2.134716,'Le Vesinet, France',NULL),(227,50.6325574,5.5796662,'Liege, Belgium',NULL),(228,50.62925,3.057256,'Lille, France',NULL),(229,-12.0463731,-77.042754,'Lima, Peru',NULL),(230,38.7222524,-9.1393366,'Lisbon, Portugal',NULL),(231,41.7005989,2.8398194,'Lloret de Mar, Spain',NULL),(232,42.4627195,-2.4449852,'Logrono, Spain',NULL),(233,-34.7611823,-58.4302476,'Lomas de Zamora, Argentina',NULL),(234,59.9107006,29.7359614,'Lomonosov, Russia',NULL),(235,51.5073509,-0.1277583,'London, United Kingdom',NULL),(236,40.3042778,-73.9923596,'Long Branch, New Jersey',NULL),(237,43.1181228,-76.243261,'Long Branch, New York',NULL),(238,34.0522342,-118.2436849,'Los Angeles, California',NULL),(239,34.0522342,-118.2436849,'Los Angeles, California, USA',NULL),(240,43.7696,5.363,'Lourmarin, France',NULL),(241,48.86189,2.112527,'Louveciennes, France',NULL),(242,42.6334247,-71.3161718,'Lowell, Massachusetts',NULL),(243,42.6366,12.11,'Lubriano, Italy',NULL),(244,49.839683,24.029717,'Lviv, Ukraine',NULL),(245,49.8367905,24.028029,'Lvov, France',NULL),(246,13.5603491,78.5036065,'Madanapalle, India',NULL),(247,40.4167754,-3.7037902,'Madrid, Spain',NULL),(248,48.947545,2.1423899,'Maisons-Laffitte, France',NULL),(249,36.7212737,-4.4213988,'Malaga, Spain',NULL),(250,40.7830603,-73.9712488,'Manhattan, New York City, New York',NULL),(251,49.4874592,8.4660395,'Mannheim, Germany',NULL),(252,-38.0054771,-57.5426106,'Mar del Plata, Argentina',NULL),(253,43.296482,5.36978,'Marseille, France',NULL),(254,48.3050874,-0.6185636,'Mayenne, France',NULL),(255,-32.3648617,-54.1665506,'Melo, Uruguay',NULL),(256,-32.8894587,-68.8458386,'Mendoza, Argentina',NULL),(257,20.9673702,-89.5925857,'Merida, Mexico',NULL),(258,8.5698244,-71.1804988,'Merida, Venezuela',NULL),(259,47.9944211,9.1156399,'Messkirch, Germany',NULL),(260,23.634501,-102.552784,'Mexico',NULL),(261,19.4326077,-99.133208,'Mexico City, Mexico',NULL),(262,25.7616798,-80.1917902,'Miami, Florida',NULL),(263,25.7616798,-80.1917902,'Miami, United States',NULL),(264,45.4642035,9.189982,'Milan, Italy',NULL),(265,48.405,2.4678,'Milly-la-Foret, France',NULL),(266,37.27464,-6.8369079,'Moguer, Spain',NULL),(267,43.0648865,-2.4902081,'Mondragon, Spain',NULL),(268,45.60745,4.063338,'Montbrison, France',NULL),(269,43.0986938,11.7872467,'Montepulciano, Italy',NULL),(270,25.6866142,-100.3161126,'Monterrey, Mexico',NULL),(271,-34.9011127,-56.1645314,'Montevideo, Uruguay',NULL),(272,48.0134479,1.234505,'Montigny-le-Gannelon, France',NULL),(273,48.8867148,2.3388895,'Montmartre, Paris, France',NULL),(274,45.5016889,-73.567256,'Montreal, Canada',NULL),(275,46.4312213,6.9106799,'Montreux, Switzerland',NULL),(276,45.5845001,9.2744485,'Monza, Italy',NULL),(277,-34.6558611,-58.6167212,'Moron, Buenos Aires, Argentina',NULL),(278,55.755826,37.6172999,'Moscow, Russia',NULL),(279,36.3566484,43.1640004,'Mosul, Iraq',NULL),(280,26.6469624,84.9088938,'Motihari, India',NULL),(281,43.6023319,7.006491,'Mougins, France',NULL),(282,-36.8841017,174.7155919,'Mount Albert, New Zealand',NULL),(283,48.1351253,11.5819805,'Munich, Germany',NULL),(284,47.9032101,11.3726087,'Munsing, Germany',NULL),(285,46.1729618,8.8056081,'Muralto, Switzerland',NULL),(286,47.6069,15.6717,'Murzzuschlag, Austria',NULL),(287,47.1950111,35.3061096,'Mykhailivka Raion, Ukraine',NULL),(288,35.4875479,137.5005092,'Nakatsugawa, Japan',NULL),(289,50.4673883,4.8719854,'Namur, Belgium',NULL),(290,48.692054,6.184417,'Nancy, France',NULL),(291,47.218371,-1.553621,'Nantes, France',NULL),(292,26.15,-81.8,'Naples, Florida',NULL),(293,43.184277,3.003078,'Narbonne, France',NULL),(294,46.9899874,6.9292732,'Neuchatel, Switzerland',NULL),(295,48.884831,2.26851,'Neuilly-sur-Seine, France',NULL),(296,34.4942683,-89.0078418,'New Albany, Mississippi',NULL),(297,28.613889,77.208889,'New Delhi, India',NULL),(298,36.1023715,-115.1745559,'New York, New York',NULL),(299,40.7127753,-74.0059728,'New York City, New York',NULL),(300,43.836699,4.360054,'Nimes, France',NULL),(301,44.294167,-68.289722,'Northeast Harbor, Maine',NULL),(302,52.6308859,1.297355,'Norwich, United Kingdom',NULL),(303,37.8043637,-122.2711137,'Oakland, California, USA',NULL),(304,50.109938,30.6298846,'Obukhiv, Ukraine',NULL),(305,46.482526,30.7233095,'Odessa, Ukraine',NULL),(306,34.449167,-119.246667,'Ojai, California',NULL),(307,53.1434501,8.2145521,'Oldenburg, Germany',NULL),(308,35.6970697,-0.6307988,'Oran, Algeria',NULL),(309,45.3573429,-122.6067584,'Oregon City, Oregon',NULL),(310,48.7858,2.5383,'Ormesson-sur-Marne, France',NULL),(311,43.6580789,-7.8068851,'Ortigueira, Spain',NULL),(312,59.9138688,10.7522454,'Oslo, Norway',NULL),(313,51.7520209,-1.2577263,'Oxford, United Kingdom',NULL),(314,20.1010608,-98.7591311,'Pachuca, Mexico',NULL),(315,-33.88477,151.22621,'Paddington, Australia',NULL),(316,39.5696005,2.6501603,'Palma de Majorca, Spain',NULL),(317,-31.7413197,-60.5115471,'Parana, Argentina',NULL),(318,48.856614,2.3522219,'Paris, France',NULL),(319,-36.1406484,-71.8227528,'Parral, Chile',NULL),(320,-32.2706789,-58.081134,'Paysandu, Uruguay',NULL),(321,51.474191,-0.069137,'Peckham, London, United Kingdom',NULL),(322,-33.8912831,-60.5745999,'Pergamino, Buenos Aires, Argentina',NULL),(323,-8.8137173,-36.954107,'Pernambuco, Brazil',NULL),(324,42.0253997,13.6505082,'Pescina, Italy',NULL),(325,-33.8961,151.1543,'Petersham, Australia',NULL),(326,59.9342802,30.3350986,'Petrograd (Leningrad), Russia',NULL),(327,-22.5112638,-43.1779137,'Petropolis, Brazil',NULL),(328,39.9525839,-75.1652215,'Philadelphia, Pennsylvania',NULL),(329,22.4076256,-83.8473015,'Pinar del Rio, Cuba',NULL),(330,22.856,-81.839,'Pipian, Havana, Cuba',NULL),(331,47.966667,11.3,'Pocking, Germany',NULL),(332,16.2376869,-61.5340424,'Point-a-Pitre, Guadeloupe',NULL),(333,49.588267,34.5514169,'Poltava, Ukraine',NULL),(334,-32.7921453,-69.6508287,'Polvaredas, Argentina',NULL),(335,46.6667994,6.5107091,'Pompaples, Switzerland',NULL),(336,48.6972499,-3.162961,'Pontrieux, France',NULL),(337,21.6417069,69.6292654,'Porbandar, India',NULL),(338,-27.3621374,-55.9008746,'Posadas, Argentina',NULL),(339,39.0181651,-77.2085914,'Potomac, Maryland',NULL),(340,50.0755381,14.4378005,'Prague, Czech Republic',NULL),(341,19.0414398,-98.2062727,'Puebla, Mexico',NULL),(342,-0.1806532,-78.4678382,'Quito, Ecuador',NULL),(343,22.3723336,-80.1484407,'Ranchuelo, Cuba',NULL),(344,53.3188869,-6.2691599,'Rathgar, Republic of Ireland',NULL),(345,40.341667,-75.926389,'Reading, Pennsylvania',NULL),(346,-29.1448193,-59.6435242,'Reconquista, Argentina',NULL),(347,51.5313,-0.157,'Regent\'s Park, London, United Kingdom',NULL),(348,49.258329,4.031696,'Reims, France',NULL),(349,64.1265206,-21.8174392,'Reykjavik, Iceland',NULL),(350,41.5800945,-71.4774291,'Rhode Island',NULL),(351,42.6513206,-8.8166051,'Rianxo, Spain',NULL),(352,-1.6635508,-78.654646,'Riobamba, Ecuador',NULL),(353,-22.9068467,-43.1728965,'Rio de Janeiro, Brazil',NULL),(354,6.144837,-75.375085,'Rionegro, Colombia',NULL),(355,42.6556505,-70.620363,'Rockport, Massachusetts',NULL),(356,41.9027835,12.4963655,'Rome, Italy',NULL),(357,43.757808,7.473754,'Roquebrune-Cap-Martin, France',NULL),(358,-32.9442426,-60.6505388,'Rosario, Argentina',NULL),(359,-32.9442426,-60.6505388,'Rosario-Santa Fe, Argentina',NULL),(360,47.2357137,39.701505,'Rostov-on-Don, Russia',NULL),(361,51.9244201,4.4777326,'Rotterdam, Netherlands',NULL),(362,51.132377,0.263695,'Royal Tunbridge Wells, United Kingdom',NULL),(363,47.9255629,6.660436,'Rupt-sur-Moselle, France',NULL),(364,61.524,105.3188,'Russia',NULL),(365,40.826489,-74.1068091,'Rutherford, New Jersey',NULL),(366,45.460617,-0.722185,'Saint-Fort-sur-Gironde, France',NULL),(367,43.106895,0.723763,'Saint-Gaudens, Haute-Garonne, France',NULL),(368,43.09324,2.31038,'Saint-Hilaire, France',NULL),(369,45.036187,4.0601969,'Saint-Julien-Chapteuil',NULL),(370,47.706925,-0.744224,'Saint-Martin-du-Bois, France',NULL),(371,59.9342802,30.3350986,'Saint Petersburg, Russia',NULL),(372,45.532569,4.862609,'Saint-Romain-en-Gal, France',NULL),(373,47.618107,3.194848,'Saint-Sauveur-en-Puisaye, Yonne, France',NULL),(374,40.9701039,-5.6635397,'Salamanca, Spain',NULL),(375,-24.7821269,-65.4231976,'Salta, Argentina',NULL),(376,-31.3854988,-57.9600793,'Salta, Uruguay',NULL),(377,-34.295047,-60.2473787,'Salto, Argentina',NULL),(378,16.737,92.6376,'San Cristobal de las Casas, Mexico',NULL),(379,-32.3711039,-61.3593557,'San Genaro, Argentina',NULL),(380,9.9280694,-84.0907246,'San Jose, Costa Rica',NULL),(381,-33.1130905,-61.7021942,'San Jose de la Esquina, Argentina',NULL),(382,-34.3486042,-56.7075141,'San Jose de Mayo, Uruguay',NULL),(383,18.4655394,-66.1057355,'San Juan, Puerto Rico',NULL),(384,40.5932386,-4.1475748,'San Lorenzo de El Escorial, Spain',NULL),(385,-33.3017267,-66.3377522,'San Luis, Argentina',NULL),(386,22.1564699,-100.9855409,'San Luis Potosi, Mexico',NULL),(387,-34.5759506,-58.5372696,'San Martin, Argentina',NULL),(388,-26.8082848,-65.2175903,'San Miguel de Tucuman',NULL),(389,-26.8082848,-65.2175903,'San Miguel de Tucuman, Argentina',NULL),(390,42.3280438,-2.8645685,'San Millan de la Cogolla, Spain',NULL),(391,-33.3334669,-60.2110494,'San Nicolas de los Arroyos, Argentina',NULL),(392,-32.6612397,-65.3055784,'San Pablo, Argentina',NULL),(393,-34.6128922,-68.3390622,'San Rafael, Argentina',NULL),(394,34.4208305,-119.6981901,'Santa Barbara, California',NULL),(395,-31.6106578,-60.697294,'Santa Fe, Argentina',NULL),(396,35.667222,-105.964444,'Santa Fe, New Mexico',NULL),(397,23.0613598,-82.2575659,'Santa Maria del Rosario, Cuba',NULL),(398,-34.6833766,-58.4811204,'San Tammaro, Argentina',NULL),(399,34.0194543,-118.4911912,'Santa Monica, California',NULL),(400,43.4623057,-3.8099803,'Santander, Spain',NULL),(401,-33.4488897,-70.6692655,'Santiago, Chile',NULL),(402,42.8782132,-8.5448445,'Santiago de Compostela, Spain',NULL),(403,-27.7833574,-64.264167,'Santiago del Estero, Argentina',NULL),(404,18.4860575,-69.9312117,'Santo Domingo, Dominican Republic',NULL),(405,-34.5990645,-58.5467344,'Santos Lugares, Argentina',NULL),(406,0.3301924,6.733343,'Santo Tomas',NULL),(407,41.2570604,1.7830973,'Sant Pere de Ribes, Spain',NULL),(408,40.658316,17.706466,'San Vito dei Normanni, Italy',NULL),(409,-23.5505199,-46.6333094,'Sao Paulo, Brazil',NULL),(410,-23.5298156,-47.1374002,'Sao Roque, Brazil',NULL),(411,40.054753,-88.2517165,'Savoy',NULL),(412,52.4893436,13.352548,'Schoneberg, Germany',NULL),(413,48.9137455,2.4845729,'Seine-Saint-Denis, France',NULL),(414,34.6176032,-89.9687011,'Senatobia, Mississippi',NULL),(415,43.7197926,13.2152224,'Senigallia, Italy',NULL),(416,43.4078758,3.7008219,'Sete, France',NULL),(417,37.3890924,-5.9844589,'Sevilla, Spain',NULL),(418,48.93897,2.538716,'Sevran, France',NULL),(419,51.1155223,0.5826609,'Sissinghurst Castle Garden, United Kingdom',NULL),(420,41.3189575,-122.3087674,'Sisson, California',NULL),(421,49.085485,5.462618,'Sommedieue, France',NULL),(422,40.8598656,-72.5678041,'Southhampton, New York',NULL),(423,40.463667,-3.74922,'Spain',NULL),(424,47.4244818,9.3767173,'St. Gallen, Switzerland',NULL),(425,38.6270025,-90.1994042,'St. Louis, Missouri',NULL),(426,27.7676008,-82.6402915,'St. Petersburg, Florida',NULL),(427,59.9342802,30.3350986,'St. Petersburg, Russia',NULL),(428,59.3293235,18.0685808,'Stockholm, Sweden',NULL),(429,-19.0195852,-65.2619615,'Sucre, Bolivia',NULL),(430,43.1836046,-89.2137254,'Sun Prairie, Wisconsin',NULL),(431,48.87,2.22,'Suresnes, France',NULL),(432,50.8670895,-0.087914,'Sussex, United Kingdom',NULL),(433,53.0298854,17.1246243,'Szamocin, Poland',NULL),(434,59.4369608,24.7535747,'Tallinn, Estonia',NULL),(435,41.1188827,1.2444909,'Tarragona, Spain',NULL),(436,50.5138516,14.1652281,'Theresienstadt Concentration Camp, Czech Republic',NULL),(437,50.4777681,3.055458,'Thumeries, France',NULL),(438,36.8338638,-87.1422895,'Todd County, Kentucky',NULL),(439,35.6894875,139.6917064,'Tokyo, Japan',NULL),(440,45.070312,7.6868565,'Torino, Italy',NULL),(441,43.604652,1.444209,'Toulouse, France',NULL),(442,43.6067868,1.4471126,'Toulouse, Italy',NULL),(443,47.394144,0.68484,'Tours, France',NULL),(444,49.858616,1.095163,'Tourville-sur-Arques, France',NULL),(445,53.2833765,-6.1044944,'Tower Hill, Dalkey, Co. Dublin',NULL),(446,51.319664,-2.208853,'Trowbridge, Wiltshire, United Kingdom',NULL),(447,45.070312,7.6868565,'Turin, Italy',NULL),(448,50.8023982,4.34067,'Uccle, Belgium',NULL),(449,40.8673215,-74.5221011,'Union Hill, New Jersey, USA',NULL),(450,-31.2341309,-64.3167114,'Unquillo, Argentina',NULL),(451,51.61789,-3.972711,'Uplands, Swansea, United Kingdom',NULL),(452,41.1692494,-0.4974359,'Urrea de Gaen, Spain',NULL),(453,48.7931426,2.4740337,'Val-de-Marne, France',NULL),(454,38.8113074,-3.4599326,'Valdepenas, Spain',NULL),(455,41.652251,-4.7245321,'Valladolid, Spain',NULL),(456,48.7100091,2.0422148,'Vallee de Chevreuse, France',NULL),(457,49.097092,2.190744,'Valmondois, France',NULL),(458,-33.047238,-71.6126885,'Valparaiso, Chile',NULL),(459,49.25,-123.1,'Vancouver, Canada',NULL),(460,47.658236,-2.760847,'Vannes, Brittany',NULL),(461,23.1401998,-82.379729,'Vedado, Havana, Cuba',NULL),(462,36.7799228,-4.1005589,'Velez-Malaga, Spain',NULL),(463,43.7223216,7.1117033,'Vence, France',NULL),(464,45.4408474,12.3155151,'Venice, Italy',NULL),(465,45.4383842,10.9916215,'Verona, Italy',NULL),(466,46.4628333,6.8419192,'Vevey, Switzerland',NULL),(467,46.131859,3.425488,'Vichy, France',NULL),(468,-30.0319,-70.7081,'Vicuna, Chile',NULL),(469,48.2081743,16.3738189,'Vienna, Austria',NULL),(470,49.0307,2.3717,'Vigny, Val-d\'Oise, France',NULL),(471,41.2151504,1.727446,'Vilanova i la Geltru, Spain',NULL),(472,46.60856,13.85062,'Villach, Austria',NULL),(473,-31.5562575,-63.5356054,'Villa del Rosario, Argentina',NULL),(474,-31.9877299,-58.9635815,'Villa Dominguez, Argentina',NULL),(475,17.989456,-92.9475061,'Villahermosa, Mexico',NULL),(476,48.3240399,3.08279,'Villeblevin, France',NULL),(477,48.8270042,2.1886944,'Ville-d\'Avray, France',NULL),(478,49.177522,3.473478,'Villeneuve-sur-Fere, France',NULL),(479,-33.0153481,-71.5500276,'Viña del Mar, Chile',''),(480,43.6642649,-7.5945348,'Viveiro, Spain',NULL),(481,53.3900441,-2.5969501,'Warrington, Cheshire, United Kingdom',NULL),(482,52.2296756,21.0122287,'Warsaw, Poland',NULL),(483,38.9071923,-77.0368707,'Washington, D.C.',NULL),(484,41.3542395,-72.164816,'Waterford, Connecticut',NULL),(485,50.9794934,11.3235439,'Weimar, Germany',NULL),(486,51.547358,-0.190436,'West Hampstead, London, United Kingdom',NULL),(487,51.4995,-0.1333,'Westminster, United Kingdom',NULL),(488,41.0339862,-73.7629097,'White Plains, New York',NULL),(489,53.528409,-1.461325,'Worsbrough, United Kingdom',NULL),(490,51.1078852,17.0385376,'Wroclaw, Poland',NULL),(491,53.365407,-2.058357,'Wyberslegh Hall, United Kingdom',NULL),(492,35.4437078,139.6380256,'Yokohama, Japan',NULL),(493,53.9599651,-1.0872979,'York, United Kingdom',NULL),(494,41.6488226,-0.8890853,'Zaragoza, Spain',NULL),(495,51.0006721,4.9830118,'Zichem, Belgium',NULL),(496,47.3768866,8.541694,'Zurich, Switzerland',NULL),(497,40.3573,74.6672,'Princeton, New Jersey',''),(499,38.0293,78.4767,'Charlottesville, Virginia','');
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
  `notes` longtext,
  `place_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_place_id_05a22e64_fk_places_id` (`place_id`),
  CONSTRAINT `repository_place_id_05a22e64_fk_places_id` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
INSERT INTO `repository` VALUES (3,'Biblioteca Nacional Mariano Moreno',NULL,62),(4,'Princeton University',NULL,497),(5,'Harvard University','http://oasis.lib.harvard.edu/oasis/deliver/~hou00038',73),(6,'Villa Ocampo','UNESCO World Heritage Site',38),(7,'University of Virginia','',499),(8,'Biblioteca Nacional Mariano Moreno',NULL,62),(9,'Princeton University',NULL,497),(10,'Biblioteca Nacional Mariano Moreno',NULL,62),(11,'Princeton University',NULL,497),(12,'Biblioteca Nacional Mariano Moreno',NULL,62),(13,'Princeton University',NULL,497),(14,'Biblioteca Nacional Mariano Moreno',NULL,62),(15,'Princeton University',NULL,497),(16,'Harvard University',NULL,73),(17,'Villa Ocampo',NULL,38),(18,'University of Virginia',NULL,499);
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

-- Dump completed on 2018-03-28 17:21:10
