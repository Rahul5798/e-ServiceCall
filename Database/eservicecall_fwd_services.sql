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
-- Table structure for table `fwd_services`
--

DROP TABLE IF EXISTS `fwd_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fwd_services` (
  `booking_id` varchar(10) NOT NULL,
  `worker_id` varchar(10) NOT NULL,
  `worker_name` varchar(30) NOT NULL,
  `serviceid` varchar(15) NOT NULL,
  `service` varchar(45) NOT NULL,
  `requirement` varchar(45) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL,
  `area` varchar(20) NOT NULL,
  `address` varchar(45) NOT NULL,
  `userid` varchar(15) NOT NULL,
  `customer` varchar(45) NOT NULL,
  `customer_contact` decimal(10,0) NOT NULL,
  `worker_contact` decimal(10,0) NOT NULL,
  PRIMARY KEY (`booking_id`,`worker_id`,`date`),
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fwd_services`
--

LOCK TABLES `fwd_services` WRITE;
/*!40000 ALTER TABLE `fwd_services` DISABLE KEYS */;
INSERT INTO `fwd_services` VALUES ('24','w0001','Magan','s01','tap-fitting-installation','tap fitting','2019-04-02','14:00','Ahmedabad','Vatva','12/135, Vishvanagar flates, Ahmedabad','Rahul5798','Rahul V Patel',8511367581,8745213690);
/*!40000 ALTER TABLE `fwd_services` ENABLE KEYS */;
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
