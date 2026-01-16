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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Alavés','ALA','#0232A0',4),(2,'Athletic Club','BIL','#B0B0B0',4),(3,'Atlético Madrid','ATM','#CB3524',4),(4,'Barcelona','BAR','#A50044',4),(5,'Celta Vigo','CEL','#8ABDFF',4),(6,'Getafe','GET','#005999',4),(7,'Mallorca','MLL','#7A0404',4),(8,'Osasuna','OSA','#D91A21',4),(9,'Real Betis','BET','#25961D',4),(10,'Real Madrid','RMA','#FCF7F7',4),(11,'Real Sociedad','RSO','#446175',4),(12,'Sevilla','SEV','#FAFAFA',4),(13,'Valencia','VAL','#FF8308',4),(14,'Valladolid','VLL','#3D1169',4),(15,'Rayo Vallecano','RAY','#333333',4),(16,'Villarreal','VIL','#FFE667',4),(17,'Espanyol','ESP','#0587D1',4),(18,'Las Palmas','PAL','#FFE400',4),(19,'Leganés','LEG','#DBB731',4),(20,'Girona','GIR','#BD3541',4),(21,'Granada','GRA','#D50032',4),(22,'Elche','ELC','#00793F',4),(23,'Cádiz','CAD','#FFD700',4),(24,'Eibar','EIB','#FF9100',4),(25,'Huesca','HUE','#003DA5',4),(26,'Levante','LEV','#1E1E90',4),(27,'Almería','ALM','#FF0000',4),(28,'Málaga','MLG','#00489A',4),(29,'Deportivo La Coruña','COR','#57175E',4),(30,'Sporting Gijón','GIJ','#E2001A',4),(31,'Oviedo','OVI','#094CA1',4),(32,'Hércules','HRC','#0000FF',4),(33,'Zaragoza','ZAR','#FF0010',4),(34,'Racing Santander','RSA','#143E1B',4);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-31 11:31:21
