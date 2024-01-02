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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(2,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(3,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(4,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(5,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(6,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(7,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(8,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(9,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(10,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(11,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(12,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(13,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(14,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(15,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(16,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,15000,'Demo'),(2,15000,'Demo'),(3,15000,'Demo'),(4,15000,'Demo'),(5,15000,'Demo'),(6,15000,'Demo'),(7,15000,'Demo'),(8,15000,'Demo'),(9,15000,'Demo'),(10,15000,'Demo'),(11,15000,'Demo'),(12,15000,'Demo'),(13,15000,'Demo'),(14,15000,'Demo'),(15,15000,'Demo'),(16,15000,'Demo');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$lK/oVktm8JHqOMuqgdAuAe.DmKpSX8nuOvN5G2dVe4AfTEJAJc3Jm','ADMIN','admin'),(2,'$2a$10$ZrSjss0cNtnhEGICiiNkm.psNSwVcbpA317SsToLSB2/ELtPN7c7K','ADMIN','admin'),(3,'$2a$10$7scGU40rpxKYx15NdbwEq.tQLbmf70lOtJGP8Nm2jkTE6ZDPY1gue','ADMIN','admin'),(4,'$2a$10$pnVZ8IC.vt8cNMa/PG5leuLAy/mY8kWnRvoXIv60Taes2qTM0c1z2','ADMIN','admin'),(5,'$2a$10$UPNwUHw7TNU6ncCd74cNCe4vxZYzvCepReevV4dX5iT4q2/bjAO1q','ADMIN','admin'),(6,'$2a$10$Ypbt2onCavfKayQE.x3DfuzKC8oqH5F0NDQGBpLQN4T0xX7yOxvby','ADMIN','admin'),(7,'$2a$10$AzOtIY486VGMTe.SF.bNF.P6bQkI5tt06xoRJPrMPISMFIs9E8.LW','ADMIN','admin'),(8,'$2a$10$Ub1LG6c48bfqAybdbjnsSufeCTBQJurvsIJbLXVUD0MqjgsVib9s.','ADMIN','admin'),(9,'$2a$10$FbmkNL7P8gHhpjXCNfOlDuUwwni/G.OWkyDvXUGzk8xkkDRIVLksO','ADMIN','admin'),(10,'$2a$10$YTsHGq9RtIcmoza6E22AV.kgqyXdE48c8sBj4NSDkKR.EEhdwZUEi','ADMIN','admin'),(11,'$2a$10$s9h9VLKOxYhh9SSvZ5Rh0uvteqm6d.bjAawusf4Y6KZCTI2WFp1KC','ADMIN','admin'),(12,'$2a$10$aEwauDEOpTFRZf9GXtdoEudNvs9J2HaOHXEDR97TIIqqCKRN65UP.','ADMIN','admin'),(13,'$2a$10$Z4hoxIQcuETk3twjwJeYe.9Y76evXWCDcTE2od.CcFYQ/EPwBh/Uu','ADMIN','admin'),(14,'$2a$10$8qCQjn0r5PrCbtTAyDTgTObVU4lAJIeg4I4JB3ieeGMSrYo4Gt6Zu','ADMIN','admin'),(15,'$2a$10$zE/60RizDg4H5xPB6DQAa.vVxSyPvAEr3Zd4lpUWz7OnrUZdo13Uu','ADMIN','admin'),(16,'$2a$10$n1OY.YA4e49EiIt/LbohyOWg7ZhSVPwgw6Nff4ZNFgqfX35h.wwHS','ADMIN','admin');
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

-- Dump completed on 2024-01-02  8:34:22
