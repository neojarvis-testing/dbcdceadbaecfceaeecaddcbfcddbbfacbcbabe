-- MariaDB dump 10.19  Distrib 10.5.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: appdb
-- ------------------------------------------------------
-- Server version	5.6.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `appdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `appdb`;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `bidding_price` double NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sold` bit(1) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdvd6ljes11r44igawmpm1mc5s` (`team_id`),
  CONSTRAINT `FKdvd6ljes11r44igawmpm1mc5s` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(2,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(3,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(4,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(5,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(6,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(7,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(8,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(9,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(10,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(11,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(12,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maximum_budget` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,15000,'Demo'),(2,15000,'Demo'),(3,15000,'Demo'),(4,15000,'Demo'),(5,15000,'Demo'),(6,15000,'Demo'),(7,15000,'Demo'),(8,15000,'Demo'),(9,15000,'Demo'),(10,15000,'Demo'),(11,15000,'Demo'),(12,15000,'Demo');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$aLnKsq9gG7ZRDxYPxDttpeRdqhOatcbTRs56wK8OHH5YKQt1MilWu','ADMIN','admin'),(2,'$2a$10$FsTiI9xCcdOCDROfZlf.ku47HixBiBJaJdufHjc6.KxL.tev3DgNu','ADMIN','admin'),(3,'$2a$10$Ozw2X5/7i.kwhKyHo4f4AuNtm1iTZVjoujkV/VwHyfhaxhgADo34i','ADMIN','admin'),(4,'$2a$10$yBlK9WZ9Tz/2/dHzpXB19uUK8PmpDSSDbTcdyCtRIa3p0VHrUvCXK','ADMIN','admin'),(5,'$2a$10$.pX8wPkE8DNsqdsOjXrV3O3QPagwC28zRidJq6ri.2QeViLMhV8gK','ADMIN','admin'),(6,'$2a$10$HvgaTDjdfyRCYX3BA1CVpe46TMfGWdeXUpOWjQGaVHL.DUBizjhWK','ADMIN','admin'),(7,'$2a$10$pVRWP4.H.HfRvUcVRa/KYOvAPxB8c69ytt/IZTcIgd2TXVaTm1zP2','ADMIN','admin'),(8,'$2a$10$..8SYWVVSspkmFT5JP7nAONP5ASB8f4T6vtiQaB1018Ju4NMctO9i','ADMIN','admin'),(9,'$2a$10$Dkf4m2YqWtyz7k51fHp8/eCB5E5AOL/AoZxRHvUmb3A2Q9ng.EOTm','ADMIN','admin'),(10,'$2a$10$J.sqqxGzNqEvcVQzXqL1HeAu06Hbykhtch59odrNAv4USGg3A.TsC','ADMIN','admin'),(11,'$2a$10$Fqhw0hqq.ZrAhZJi7czQquAaTpKoyvFu8tzxnuZ2S3UKeYtWSyGgK','ADMIN','admin'),(12,'$2a$10$cqP4Kvhsmpe7fA/9T4M1Ne6SnrqMXorOR36wxmognvXupThVgC2VW','ADMIN','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-02  9:31:12
