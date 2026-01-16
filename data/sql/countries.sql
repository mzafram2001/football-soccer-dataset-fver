CREATE DATABASE  IF NOT EXISTS `footballr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `footballr`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: footballr
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','FR'),(2,'Germany','DE'),(3,'Italy','IT'),(4,'Spain','ES'),(5,'England','EN'),(6,'Netherlands','NL'),(7,'Portugal','PT'),(8,'Belgium','BE'),(9,'Turkey','TR'),(10,'Denmark','DK'),(11,'Greece','GR'),(12,'Scotland','SC'),(13,'Ukraine','UA'),(14,'Russia','RU'),(15,'Austria','AT'),(16,'Poland','PL'),(17,'Norway','NO'),(18,'Croatia','HR'),(19,'Hungary','HU'),(20,'Sweden','SE'),(21,'Romania','RO'),(22,'Switzerland','CH'),(23,'Moldova','MD'),(24,'Kosovo','XK'),(25,'Czech Republic','CZ'),(26,'Ireland','IE'),(27,'Australia','AU'),(28,'New Zealand','NZ'),(29,'Estonia','EE'),(30,'Lithuania','LT'),(31,'Malta','MT'),(32,'Mozambique','MZ'),(33,'Bulgaria','BG'),(34,'Slovakia','SK'),(35,'Belarus','BY'),(36,'Israel','IL'),(37,'Serbia','RS'),(38,'Cyprus','CY'),(39,'Slovenia','SI'),(40,'Montenegro','ME'),(41,'Bosnia and Herzegovina','BA'),(42,'Albania','AL'),(43,'Kazakhstan','KZ'),(44,'Azerbaijan','AZ'),(45,'Finland','FI'),(46,'United States','US'),(47,'Canada','CA'),(48,'Mexico','MX'),(49,'Bermuda','BM'),(50,'Greenland','GL'),(51,'Belize','BZ'),(52,'Costa Rica','CR'),(53,'El Salvador','SV'),(54,'Guatemala','GT'),(55,'Honduras','HN'),(56,'Nicaragua','NI'),(57,'Panama','PA'),(58,'Jamaica','JM'),(59,'Haiti','HT'),(60,'Dominican Republic','DO'),(61,'Cuba','CU'),(62,'Trinidad and Tobago','TT'),(63,'Bahamas','BS'),(64,'Barbados','BB'),(65,'Dominica','DM'),(66,'Grenada','GD'),(67,'Antigua and Barbuda','AG'),(68,'Aruba','AW'),(69,'Curacao','CW'),(70,'Puerto Rico','PR'),(71,'Martinique','MQ'),(72,'Guadeloupe','GP'),(73,'Argentina','AR'),(74,'Brazil','BR'),(75,'Chile','CL'),(76,'Colombia','CO'),(77,'Ecuador','EC'),(78,'Guyana','GY'),(79,'Paraguay','PY'),(80,'Peru','PE'),(81,'Suriname','SR'),(82,'Uruguay','UY'),(83,'Venezuela','VE'),(84,'French Guiana','GF'),(85,'Falkland Islands','FK'),(86,'Bolivia','BO'),(87,'China','CN'),(88,'Japan','JP'),(89,'South Korea','KR'),(90,'North Korea','KP'),(91,'Taiwan','TW'),(92,'Mongolia','MN'),(93,'Hong Kong','HK'),(94,'Macao','MO'),(95,'India','IN'),(96,'Indonesia','ID'),(97,'Pakistan','PK'),(98,'Bangladesh','BD'),(99,'Philippines','PH'),(100,'Viet Nam','VN'),(101,'Thailand','TH'),(102,'Myanmar','MM'),(103,'Malaysia','MY'),(104,'Singapore','SG'),(105,'Cambodia','KH'),(106,'Brunei Darussalam','BN'),(107,'Timor-Leste','TL'),(108,'Sri Lanka','LK'),(109,'Maldives','MV'),(110,'Nepal','NP'),(111,'Bhutan','BT'),(112,'Afghanistan','AF'),(113,'Iran','IR'),(114,'Iraq','IQ'),(115,'Saudi Arabia','SA'),(116,'United Arab Emirates','AE'),(117,'Qatar','QA'),(118,'Kuwait','KW'),(119,'Oman','OM'),(120,'Yemen','YE'),(121,'Jordan','JO'),(122,'Lebanon','LB'),(123,'Syria','SY'),(124,'Wales','WA'),(125,'Bahrain','BH'),(126,'Palestine','PS'),(127,'Georgia','GE'),(128,'Armenia','AM'),(129,'Uzbekistan','UZ'),(130,'Turkmenistan','TM'),(131,'Kyrgyzstan','KG'),(132,'Tajikistan','TJ'),(133,'Egypt','EG'),(134,'Algeria','DZ'),(135,'Morocco','MA'),(136,'Tunisia','TN'),(137,'Libya','LY'),(138,'Sudan','SD'),(139,'Western Sahara','EH'),(140,'Nigeria','NG'),(141,'Ghana','GH'),(142,'Cote d\'Ivoire','CI'),(143,'Senegal','SN'),(144,'Mali','ML'),(145,'Burkina Faso','BF'),(146,'Guinea','GN'),(147,'Benin','BJ'),(148,'Togo','TG'),(149,'Sierra Leone','SL'),(150,'Liberia','LR'),(151,'Mauritania','MR'),(152,'Gambia','GM'),(153,'Guinea-Bissau','GW'),(154,'Cabo Verde','CV'),(155,'Niger','NE'),(156,'Cameroon','CM'),(157,'Central African Republic','CF'),(158,'Chad','TD'),(159,'Congo','CG'),(160,'Democratic Republic of the Congo','CD'),(161,'Equatorial Guinea','GQ'),(162,'Gabon','GA'),(163,'Ethiopia','ET'),(164,'Kenya','KE'),(165,'Uganda','UG'),(166,'Rwanda','RW'),(167,'Burundi','BI'),(168,'South Sudan','SS'),(169,'Somalia','SO'),(170,'Djibouti','DJ'),(171,'Eritrea','ER'),(172,'Mauritius','MU'),(173,'Comoros','KM'),(174,'Madagascar','MG');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-31 11:31:22
