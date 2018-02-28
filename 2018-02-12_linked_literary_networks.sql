-- MySQL dump 10.13  Distrib 5.7.19, for osx10.10 (x86_64)
--
-- Host: localhost    Database: linked_literary_networks
-- ------------------------------------------------------
-- Server version	5.7.19

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
  `descriptive_bibliography_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_id` (`people_id`),
  KEY `occupations_id` (`occupations_id`),
  KEY `descriptive_bibliography_id` (`descriptive_bibliography_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`occupations_id`) REFERENCES `occupations` (`id`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`descriptive_bibliography_id`) REFERENCES `descriptive_bibliography` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Virginia Woolf, Orlando y Cía','1938-01-08','1.50 m/n','',1,1,NULL),(2,'Supremacía del Alma y de la Sangre','1935-01-01','1.00 m/n','',1,1,NULL),(3,'Ficciones','1944-12-04','','',2,2,NULL),(4,'El jardín de senderos que se bifurcan','1941-12-30','',NULL,2,2,1),(5,'Enumeración de la patria','1942-11-27','3.00 m/n','',5,2,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribution_role_person_contribution`
--

DROP TABLE IF EXISTS `contribution_role_person_contribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribution_role_person_contribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contributions_id` int(11) DEFAULT NULL,
  `contribution_role_type_id` int(11) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `people_id` (`people_id`),
  KEY `contribution_role_type_id` (`contribution_role_type_id`),
  KEY `contribution_id` (`contributions_id`),
  CONSTRAINT `contribution_role_person_contribution_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`),
  CONSTRAINT `contribution_role_person_contribution_ibfk_2` FOREIGN KEY (`contribution_role_type_id`) REFERENCES `contribution_role_type` (`id`),
  CONSTRAINT `contribution_role_person_contribution_ibfk_3` FOREIGN KEY (`contributions_id`) REFERENCES `contributions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution_role_person_contribution`
--

LOCK TABLES `contribution_role_person_contribution` WRITE;
/*!40000 ALTER TABLE `contribution_role_person_contribution` DISABLE KEYS */;
INSERT INTO `contribution_role_person_contribution` VALUES (1,1,1,1,'The very first piece published in SUR');
/*!40000 ALTER TABLE `contribution_role_person_contribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribution_role_type`
--

DROP TABLE IF EXISTS `contribution_role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribution_role_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contribution_role_type_name` text,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution_role_type`
--

LOCK TABLES `contribution_role_type` WRITE;
/*!40000 ALTER TABLE `contribution_role_type` DISABLE KEYS */;
INSERT INTO `contribution_role_type` VALUES (1,'author',''),(2,'artist',''),(3,'editor',''),(4,'translator','');
/*!40000 ALTER TABLE `contribution_role_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributions`
--

DROP TABLE IF EXISTS `contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issues_id` int(11) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `start_page` varchar(10) DEFAULT NULL,
  `end_page` varchar(10) DEFAULT NULL,
  `page_total` text,
  `notes` text,
  `contribution_type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_id` (`issues_id`),
  KEY `people_id` (`people_id`),
  CONSTRAINT `contributions_ibfk_1` FOREIGN KEY (`issues_id`) REFERENCES `issues` (`id`),
  CONSTRAINT `contributions_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributions`
--

LOCK TABLES `contributions` WRITE;
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
INSERT INTO `contributions` VALUES (1,1,1,'Carta a Waldo Frank','7','18','12','','Letter'),(2,1,3,'La selva','19','52','35','','Short Story'),(3,1,2,'El coronel Ascasubi','129','140','12','','Short Story');
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
  `descriptive_bibliography_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `location_received_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_id` (`sender_id`),
  KEY `place_id` (`location_sent_id`),
  KEY `descriptive_bibliography_id` (`descriptive_bibliography_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `location_received_id` (`location_received_id`),
  CONSTRAINT `correspondence_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `people` (`id`),
  CONSTRAINT `correspondence_ibfk_2` FOREIGN KEY (`location_sent_id`) REFERENCES `places` (`id`),
  CONSTRAINT `correspondence_ibfk_3` FOREIGN KEY (`descriptive_bibliography_id`) REFERENCES `descriptive_bibliography` (`id`),
  CONSTRAINT `correspondence_ibfk_4` FOREIGN KEY (`recipient_id`) REFERENCES `people` (`id`),
  CONSTRAINT `correspondence_ibfk_5` FOREIGN KEY (`location_received_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondence`
--

LOCK TABLES `correspondence` WRITE;
/*!40000 ALTER TABLE `correspondence` DISABLE KEYS */;
INSERT INTO `correspondence` VALUES (1,1,'1929-01-23',7,'Mentions the receipt of a telegram from her mother in the first line',NULL,7,6),(2,1,'1933-12-31',6,'Victoria describes her first night back in Mar del Plata',NULL,6,1);
/*!40000 ALTER TABLE `correspondence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptive_bibliography`
--

DROP TABLE IF EXISTS `descriptive_bibliography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descriptive_bibliography` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper` text,
  `binding` text,
  `typography` text,
  `colophon` text,
  `repository_id` int(11) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `repository_id` (`repository_id`),
  CONSTRAINT `descriptive_bibliography_ibfk_1` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptive_bibliography`
--

LOCK TABLES `descriptive_bibliography` WRITE;
/*!40000 ALTER TABLE `descriptive_bibliography` DISABLE KEYS */;
INSERT INTO `descriptive_bibliography` VALUES (1,'Wove. Vertical chain lines on each of the pages. The pages are quite light with very little yellowing or age damage. In comparison with other works published by the Editorial Sur during this time, the paper seems of a much higher quality. There are organic flecks throughout the pages, which also suggests a higher quality of material. The pages are also cut to a more uniform length with slight deckle edges, but it is impossible to say whether the pages were trimmed while the text block was being rebound, or if this quality is from the original state of binding of the book itself.','Blue soft-cover book. The cover has white lettering: “JORGE LUIS BORGES | EL JARDIN | DE SENDEROS | QUE SE BIFURCAN | SUR [with a blue arrow going through the center of the word] | BUENOS AIRES”. Even though the book has been rebound, the original covers are conserved. The back cover lists the original price of the volume in white: “$ 2.80 m/arg.” Unlike his later Ficciones (Editorial Sur, 1944), this edition lists previously published works by the author and includes two of his collaborative anthologies published to date: Antología clásica de la literatura argentina (1937) and Antología de la literatura fantástica (1940). It is curious that the Antología poética argentina (1941) is not included in this list as well since it was produced almost simultaneously with El jardín de senderos que se bifurcan.\n\n','','ESTE LIBRO SE TERMINO DE IMPRIMIR EL 30 DE DICIEMBRE DEL AÑO MIL NOVECIENTOS CUARENTA Y UNO, EN LA IMPRENTA LÓPEZ PERU 666, BUENOS AIRES ([126]).',NULL,'');
/*!40000 ALTER TABLE `descriptive_bibliography` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `places_id` (`places_id`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'1938-11-11','Dinner in Honor of Victoria Ocampo',7,'Given by the French division of the P.E.N. clubs international at the Elysées Palace');
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
  PRIMARY KEY (`id`),
  KEY `periodicals_id` (`periodicals_id`),
  CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`periodicals_id`) REFERENCES `periodicals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,'1','1931-01-01','Francisco A. Colombo','verano'),(2,1,'2','1931-05-01','Francisco A. Colombo','otoño'),(3,1,'3','1931-08-01','Francisco A. Colombo','invierno'),(4,1,'4','1931-11-01','Francisco A. Colombo','primavera');
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
-- Table structure for table `periodicals`
--

DROP TABLE IF EXISTS `periodicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(15) DEFAULT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `notes` text,
  `descriptive_bibliography_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repository_id` (`repository_id`),
  KEY `descriptive_bibliography_id` (`descriptive_bibliography_id`),
  CONSTRAINT `periodicals_ibfk_1` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`),
  CONSTRAINT `periodicals_ibfk_2` FOREIGN KEY (`descriptive_bibliography_id`) REFERENCES `descriptive_bibliography` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicals`
--

LOCK TABLES `periodicals` WRITE;
/*!40000 ALTER TABLE `periodicals` DISABLE KEYS */;
INSERT INTO `periodicals` VALUES (1,'SUR',NULL,'Founded by Victoria Ocampo in 1931',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,-34.60,-58.38,'Buenos Aires, Argentina','hub of activity'),(2,-34.46,-58.53,'Beccar, Argentina',''),(3,46.20,6.14,'Geneva, Switzerland',''),(4,40.30,73.99,'Long Branch, New Jersey',''),(5,41.03,73.76,'White Plains, New York',''),(6,38.01,57.54,'Mar del Plata, Argentina',''),(7,48.86,2.35,'Paris, France','');
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
  `places_id` int(11) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `places_id` (`places_id`),
  CONSTRAINT `repository_ibfk_1` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
INSERT INTO `repository` VALUES (1,'Biblioteca Nacional Mariano Moreno de la República Argentina',1,'Part of their digital repository, Trapalanda Biblioteca Digital');
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

-- Dump completed on 2018-02-12 17:03:35
