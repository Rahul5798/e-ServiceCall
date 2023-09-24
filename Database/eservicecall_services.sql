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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `service_id` varchar(10) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `sub_s_name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `sub_id_UNIQUE` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES ('s04','app01','appliance','AC Services',300),('s04','app02','appliance','Refrigerator Services',300),('s04','app03','appliance','Gyser Services',100),('s04','app04','appliance','TV Services',100),('s04','app05','appliance','RO Services',200),('s04','app06','appliance','Washing Machine Services',300),('s02','carp01','carpenter','Door Stopper fitting-installation',150),('s02','carp02','carpenter','Door Handle fitting',150),('s02','carp03','carpenter','Door chain fitting-installation',150),('s02','carp04','carpenter','Door chain replacement',150),('s02','carp05','carpenter','Door latch fitting-installation',150),('s02','carp06','carpenter','Door latch replacement',150),('s02','carp07','carpenter','Door peephole fitting-installation',300),('s02','carp08','carpenter','Door peephole replacement',150),('s02','carp09','carpenter','Hings',150),('s02','carp10','carpenter','Other Carpeneter services',100),('s03','elec01','electrician','MCB( Main Control Board )',400),('s03','elec02','electrician','MCB replacement',550),('s03','elec03','electrician','New electric point wiring',100),('s03','elec04','electrician','Any wiring work',100),('s03','elec05','electrician','Tube lights fitting with panel',200),('s03','elec06','electrician','Fancy lights fitting-installation',200),('s03','elec07','electrician','Socket and Holders fitting',150),('s05','paint01','Painting','Texture Painting',50),('s05','paint02','Painting','Exterior Painting',50),('s05','paint03','Painting','Wood Painting',50),('s05','paint04','Painting','Interior Painting',50),('s01','plumb01','plumbing','tap-fitting-installation',150),('s01','plumb02','plumbing','tap-repair',150),('s01','plumb03','plumbing','wash basin-installation',500),('s01','plumb04','plumbing','wash basin-repair',500),('s01','plumb05','plumbing','kitchen sink installation',500),('s01','plumb06','plumbing','kitchen sink repair',500),('s01','plumb07','plumbing','western-toilet installation',100),('s01','plumb08','plumbing','western-toilet removal',100),('s01','plumb09','plumbing','western-toilet seat cover fitting',100),('s01','plumb10','plumbing','flush tank installation',400),('s01','plumb11','plumbing','flush tank repair',100),('s01','plumb12','plumbing','toilet jet installation',150),('s01','plumb13','plumbing','kitchen sink block-leak',250),('s01','plumb14','plumbing','western comode block-leak',250),('s01','plumb15','plumbing','wash basin block-leak',200),('s01','plumb16','plumbing','shower fitting',200),('s01','plumb17','plumbing','shower repair',200),('s01','plumb18','plumbing','pipeline and pumps',100);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
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
