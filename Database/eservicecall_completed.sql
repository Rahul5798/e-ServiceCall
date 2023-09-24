CREATE DATABASE  IF NOT EXISTS `eservicecall` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `eservicecall`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: eservicecall
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `completed`
--

DROP TABLE IF EXISTS `completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed` (
  `booking_id` varchar(15) NOT NULL,
  `worker_id` varchar(15) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `service_id` varchar(15) NOT NULL,
  `customer` varchar(45) NOT NULL,
  `service` varchar(45) NOT NULL,
  `requirement` varchar(45) NOT NULL,
  `worker` varchar(45) NOT NULL,
  `worker_contact` decimal(10,0) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(15) NOT NULL,
  `area` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `customer_contact` decimal(10,0) NOT NULL,
  `service_charges` int(11) NOT NULL,
  `extra_charges` int(11) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `total_charges` int(11) GENERATED ALWAYS AS ((`service_charges` + `extra_charges`)) VIRTUAL,
  `wages` float GENERATED ALWAYS AS ((`total_charges` * 0.75)) VIRTUAL,
  `wages_paid` varchar(45) NOT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed`
--

LOCK TABLES `completed` WRITE;
/*!40000 ALTER TABLE `completed` DISABLE KEYS */;
INSERT INTO `completed` (`booking_id`, `worker_id`, `user_id`, `service_id`, `customer`, `service`, `requirement`, `worker`, `worker_contact`, `date`, `time`, `area`, `address`, `city`, `customer_contact`, `service_charges`, `extra_charges`, `paid`, `wages_paid`) VALUES ('20','w0010','Mihir123','s04','Mihir','AC Services','AC Services','Dhruv',7788996633,'2019-04-10','14:00','Vatva','Hostel','Ahmedabad',8511463232,300,0,'no','no'),('21','w0006','Mihir123','s01','Mihir','tap-fitting-installation','tap fititng','Chagan',6598741230,'2019-04-25','13:01','Vatva','Hostel','Ahmedabad',8511463232,150,0,'no','no'),('22','w0006','Rahul5798','s01','Rahul V Patel','tap-fitting-installation','tap fitting','Chagan',6598741230,'2019-03-31','13:00','Vatva','12/135, Vishvanagar flates, Ahmedabad','Ahmedabad',8511367581,150,0,'no','no'),('23','w0006','Rahul5798','s01','Rahul V Patel','tap-repair','tap repair','Chagan',6598741230,'2019-03-30','17:01','Vatva','12/135, Vishvanagar flates, Ahmedabad','Ahmedabad',8511367581,150,0,'no','no');
/*!40000 ALTER TABLE `completed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 12:50:16
