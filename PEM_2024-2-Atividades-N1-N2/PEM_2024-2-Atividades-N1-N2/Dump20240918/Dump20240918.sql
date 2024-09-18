-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeers`
--

DROP TABLE IF EXISTS `employeers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `position_id` int NOT NULL,
  `department_id` int NOT NULL,
  `filial_id` int NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeers`
--

LOCK TABLES `employeers` WRITE;
/*!40000 ALTER TABLE `employeers` DISABLE KEYS */;
INSERT INTO `employeers` VALUES (1,'John Doe','1985-01-12','m',1,1,1,7000.00,'2015-06-01'),(2,'Jane Smith','1990-02-20','f',2,1,2,8500.00,'2016-09-15'),(3,'Mike Johnson','1978-07-30','m',3,2,3,5000.00,'2014-03-12'),(4,'Laura Brown','1988-05-23','f',4,3,4,6000.00,'2017-11-20'),(5,'Evan Lee','1982-11-08','m',5,1,5,7500.00,'2019-01-10'),(6,'Sophia Davis','1995-09-15','f',6,2,1,6800.00,'2020-03-18'),(7,'Daniel Garcia','1981-03-09','m',7,3,2,7800.00,'2016-05-22'),(8,'Emily Harris','1993-06-17','f',8,3,3,5200.00,'2018-07-13'),(9,'Chris Wilson','1987-12-05','m',9,1,4,7300.00,'2015-10-30'),(10,'Mia Clark','1992-04-12','f',10,3,5,4800.00,'2021-08-01'),(11,'Liam Martinez','1984-02-28','m',11,2,1,6900.00,'2013-12-14'),(12,'Olivia Lewis','1991-11-19','f',12,3,2,5500.00,'2018-02-27'),(13,'Noah Walker','1989-08-21','m',13,2,3,7200.00,'2020-11-10'),(14,'Isabella Moore','1990-10-04','f',14,3,4,6200.00,'2017-06-09'),(15,'James Thomas','1983-09-13','m',15,4,5,7600.00,'2016-08-25'),(16,'Ava Martinez','1994-07-03','f',16,3,1,5300.00,'2019-12-01'),(17,'Benjamin Taylor','1986-05-29','m',17,4,2,8300.00,'2014-04-18'),(18,'Sophia White','1987-08-09','f',18,1,3,7100.00,'2017-01-30'),(19,'Jacob Hall','1985-12-22','m',19,1,4,9500.00,'2012-09-05'),(20,'Grace Green','1992-03-25','f',20,5,5,5800.00,'2019-10-11'),(21,'Ethan Robinson','1989-06-15','m',21,1,1,6700.00,'2018-04-12'),(22,'Chloe Lewis','1993-01-30','f',22,2,2,5400.00,'2020-07-01'),(23,'Alexander Walker','1986-09-05','m',23,3,3,7200.00,'2017-09-15'),(24,'Megan Carter','1995-04-22','f',24,4,4,5900.00,'2019-11-21'),(25,'William Davis','1982-12-12','m',25,5,5,8000.00,'2021-01-08');
/*!40000 ALTER TABLE `employeers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiais`
--

DROP TABLE IF EXISTS `filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiais`
--

LOCK TABLES `filiais` WRITE;
/*!40000 ALTER TABLE `filiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(50) NOT NULL,
  `salary_range` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cadastro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-18 10:59:01
