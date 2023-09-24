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
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `worker_id` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` decimal(10,0) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `area` varchar(20) NOT NULL,
  `address` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(45) GENERATED ALWAYS AS (`contact_no`) STORED,
  PRIMARY KEY (`worker_id`),
  UNIQUE KEY `worker_id_UNIQUE` (`worker_id`),
  UNIQUE KEY `contact_no_UNIQUE` (`contact_no`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` (`worker_id`, `name`, `contact_no`, `profession`, `city`, `area`, `address`, `age`) VALUES ('w0001','Magan',8745213690,'plumber','Ahmedabad','Vatva','12, x society',35),('w0002','Mahesh',8956230147,'plumber','Ahmedabad','Bapu nagar','1, y society',40),('w0003','Rahul',8956233265,'plumber','Ahmedabad','Vastral','A-10,xy Society',33),('w0004','Ayush',9632147850,'plumber','Ahmedabad','Vastral','Xyz society',36),('w0005','Bhautik',6523987410,'plumber','Ahmedabad','Geeta mandir','A-55,vishvakunj society',34),('w0006','Chagan',6598741230,'plumber','Ahmedabad','Vatva','xy place',32),('w0008','Harsh',9988776655,'electrician','Ahmedabad','Vatva','1, xy society',30),('w0009','Jignesh',6565889989,'electrician','Ahmedabad','Bapu nagar','1, xyz Society',36),('w0010','Dhruv',7788996633,'AC Services','Ahmedabad','Vatva','Abc Society',32),('w0011','Vishal',6565999933,'electrician','Ahmedabad','Vastral','2-cc society',35),('w0012','Dipen',6565888833,'electrician','Ahmedabad','Geeta mandir','2-xy society',35),('w0013','Aslam',6565777733,'carpenter','Ahmedabad','Vatva','2-nn society',35),('w0014','Gopal',6565666633,'carpenter','Ahmedabad','Bapu nagar','3-cc society',36),('w0015','Maulik',6565555533,'carpenter','Ahmedabad','Vastral','1-ccc society',39),('w0016','Vikas',6565444433,'carpenter','Ahmedabad','Geeta mandir','1-xy society',38),('w0017','Mihir',6565333333,'AC Services','Ahmedabad','Bapu nagar','Abc flates',40);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
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
