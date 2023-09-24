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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `contact` decimal(10,0) NOT NULL,
  `address` longtext,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL DEFAULT '(a-z)(0-9)@(a-z).com',
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `contact_no._UNIQUE` (`contact`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Mahesh123','Mahesh Solanki',8511367582,'Chitra','Mahesh123','mahesh123@gmail.com','Ahmedabad'),('Mihir Valand','Mihir ',7359994805,'kheda','123456','mihir111.mjv@gmail.com','Ahmedabad'),('Mihir123','Mihir',8511463232,'Hostel','Mihir123','mjv12@gmail.com','Ahmedabad'),('rah56','Rah',8511364565,'ftgdgc','1234','rta@gmail.com','Ahmedabad'),('Rahul5798','Rahul V Patel',8511367581,'12/135, Vishvanagar flates, Ahmedabad','Rahul5798','rvpatel5898@gmail.com',NULL),('Rahul5799','Rahul',8511367599,'vgdrthyghjvgcgryt','jyfytdrdtyfyugihuj','hjvytdytfyj@gmail.com','Ahmedabad'),('sid','sid',8780689155,'c 86 durga sociey','sid00','x001rocks@gmail.com','Ahmedabad'),('swami5798','Swami',8511367854,'khjfyjdkhjl;kmn hjtfyukhjkln','vhftyftyjg','kjguyfuy32@gmail.com','Ahmedabad'),('vmdelavadiya','vishal',7043431212,'abc','vishal@123','vmd123@gmail.com','Ahmedabad');
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

-- Dump completed on 2019-04-16 12:50:16
