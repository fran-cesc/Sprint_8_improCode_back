-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: improcode
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map` (
  `map_id` int NOT NULL AUTO_INCREMENT,
  `race_point` varchar(20) NOT NULL,
  `longitude` decimal(7,5) NOT NULL,
  `latitude` decimal(7,5) NOT NULL,
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
INSERT INTO `map` (`map_id`, `race_point`, `longitude`, `latitude`) VALUES (1,'Start',2.14899,41.37499),(2,'Km 10',2.11706,41.38915),(3,'km 20',2.16062,41.41731),(4,'km 30',2.19432,41.40237),(5,'End',2.16997,41.38676);
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runners`
--

DROP TABLE IF EXISTS `runners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `runners` (
  `ID` smallint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `country` varchar(45) NOT NULL,
  `race_time` time NOT NULL,
  `best_time` time NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runners`
--

LOCK TABLES `runners` WRITE;
/*!40000 ALTER TABLE `runners` DISABLE KEYS */;
INSERT INTO `runners` (`ID`, `first_name`, `last_name`, `gender`, `country`, `race_time`, `best_time`) VALUES (2,'Samantha','Smith','F','United States','02:10:55','02:11:42'),(3,'Vladislaw','Petroshenko','M','Rüssia','02:00:22','02:01:11'),(4,'Eliud','Kipchoge','M','Kenya','01:59:00','01:57:11'),(6,'Frodo','Bolson','M','La Comarca','06:10:55','06:11:42'),(8,'Margueritte','Bonsoir','F','France','02:01:55','02:00:15'),(26,'Marie','Brizard','F','France','02:23:22','02:25:35'),(29,'Super','Mario','M','Sweden','00:59:01','00:59:02'),(33,'Xavi','Gomez','M','spain','02:00:50','00:50:50'),(38,'Chuck','Norris','M','United States','01:59:55','01:45:22'),(42,'Lao','Tse','M','China','01:00:01','00:00:02');
/*!40000 ALTER TABLE `runners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_numbers`
--

DROP TABLE IF EXISTS `total_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_numbers` (
  `id_total` int NOT NULL AUTO_INCREMENT,
  `Country` varchar(20) NOT NULL,
  `participants` int NOT NULL,
  `men` int NOT NULL,
  `women` int NOT NULL,
  PRIMARY KEY (`id_total`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_numbers`
--

LOCK TABLES `total_numbers` WRITE;
/*!40000 ALTER TABLE `total_numbers` DISABLE KEYS */;
INSERT INTO `total_numbers` (`id_total`, `Country`, `participants`, `men`, `women`) VALUES (1,'United States',500,300,200),(2,'Russia',600,250,350),(3,'Kenya',800,625,175),(4,'La Comarca',300,75,225),(5,'France',550,225,225),(6,'Sweden',250,50,200),(7,'Catalonia',1000,400,600);
/*!40000 ALTER TABLE `total_numbers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 22:07:04
