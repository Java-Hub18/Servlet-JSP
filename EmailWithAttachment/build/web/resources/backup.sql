-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: ff
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

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
-- Current Database: `ff`
--

/*!40000 DROP DATABASE IF EXISTS `ff`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ff` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ff`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','123','2017-12-14 09:17:18');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` int(255) DEFAULT NULL,
  `rpn` int(11) DEFAULT NULL,
  `date` mediumtext,
  `username` mediumtext NOT NULL,
  `shift` mediumtext,
  `item_name` mediumtext,
  `quantity` mediumtext,
  `price` mediumtext,
  `gst` mediumtext,
  `cgst` mediumtext,
  `sgst` mediumtext,
  `igst` float DEFAULT NULL,
  `total` mediumtext,
  `shop_name` mediumtext NOT NULL,
  `nc` mediumtext NOT NULL,
  `discount` mediumtext,
  `mode` mediumtext,
  `flag` int(11) NOT NULL,
  `added_date` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,100,1,'25/01/2018 13:40:02','tt','Shift-1','Pizza','1','55.0','5.5','2.75','2.75',0,'55','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(2,101,1,'25/01/2018 13:45:00','tt','Shift-1','Kachori','3','25.0','7.5','3.75','3.75',0,'75','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(3,101,1,'25/01/2018 13:45:00','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(4,101,1,'25/01/2018 13:45:00','tt','Shift-1','Kachori','1','25.0','2.5','1.25','1.25',0,'25','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(5,101,1,'25/01/2018 13:45:00','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(6,101,1,'25/01/2018 13:45:00','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(7,101,1,'25/01/2018 13:45:00','tt','Shift-1','Kachori','1','25.0','2.5','1.25','1.25',0,'25','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(8,101,1,'25/01/2018 13:45:00','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(9,102,1,'25/01/2018 13:47:58','tt','Shift-1','Dabeli','50','12.0','125.0','62.5','62.5',0,'600','Golden Vada Pav','0','0','cash',1,'2018-01-25'),(10,103,1,'25/01/2018 13:50:03','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','1','0','cash',1,'2018-01-25'),(11,103,1,'25/01/2018 13:50:03','tt','Shift-1','Dabeli','1','12.0','2.5','1.25','1.25',0,'12','Golden Vada Pav','1','0','cash',1,'2018-01-25'),(12,104,1,'25/01/2018 13:50:19','tt','Shift-1','Bhaji Pav','20','20.0','40.0','20.0','20.0',0,'380','Golden Vada Pav','0','5','cash',1,'2018-01-25'),(13,105,1,'31/01/2018 10:19:21','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','0','0','cash',1,'2018-01-31'),(14,106,1,'31/01/2018 10:20:13','tt','Shift-1','Kachori','1','25.0','2.5','1.25','1.25',0,'25','Golden Vada Pav','1','0','cash',1,'2018-01-31'),(15,107,1,'07/04/2018 11:26:29','tt','Shift-1','Samosa','1','12.0','0.6','0.3','0.3',0,'12','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(16,107,1,'07/04/2018 11:26:29','tt','Shift-1','Bhaji Pav','1','20.0','2.0','1.0','1.0',0,'20','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(17,107,1,'07/04/2018 11:26:29','tt','Shift-1','Kachori','1','25.0','2.5','1.25','1.25',0,'25','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(18,108,1,'07/04/2018 11:27:01','tt','Shift-1','Vada Pav','1','20.0','1.5','0.75','0.75',0,'20','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(19,108,1,'07/04/2018 11:27:01','tt','Shift-1','Kachori','1','25.0','2.5','1.25','1.25',0,'25','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(20,108,1,'07/04/2018 11:27:01','tt','Shift-1','Samosa','1','12.0','0.6','0.3','0.3',0,'12','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(21,109,1,'07/04/2018 11:27:36','tt','Shift-1','Pizza','1','55.0','5.5','2.75','2.75',0,'55','Golden Vada Pav','0','0','cash',0,'2018-04-07'),(22,109,1,'07/04/2018 11:27:36','tt','Shift-1','Kachori','1','25.0','2.5','1.25','1.25',0,'25','Golden Vada Pav','0','0','cash',0,'2018-04-07');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_number`
--

DROP TABLE IF EXISTS `bill_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `bill_no` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_number`
--

LOCK TABLES `bill_number` WRITE;
/*!40000 ALTER TABLE `bill_number` DISABLE KEYS */;
INSERT INTO `bill_number` VALUES (1,'Golden Vada Pav',100,'2018-01-01 08:00:45');
/*!40000 ALTER TABLE `bill_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_branch` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier`
--

LOCK TABLES `cashier` WRITE;
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
INSERT INTO `cashier` VALUES (1,1,'yy','yy','Cashier','yy','yy','Golden Vada Pav','Mulund','Food Coupons ','31/12/2017 14:39:38'),(2,1,'tt','tt','Cashier','tt','tt','Golden Vada Pav','Mulund','Food Coupons Reports Utilities ','31/12/2017 15:48:33');
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `gst` float NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,1,'FOOD',12,0.5,0.5,0,'Golden Vada Pav'),(2,2,'Drinks',5,2.5,2.5,0,'Golden Vada Pav');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_name` (`company_name`),
  UNIQUE KEY `company_email` (`company_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'GOLDEN FAST FOOD','Mulund West','1234569778','support@golden.com','2017-12-26 05:29:19');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_cancel`
--

DROP TABLE IF EXISTS `coupon_cancel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_cancel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` int(255) DEFAULT NULL,
  `rpn` int(11) DEFAULT NULL,
  `date` mediumtext,
  `username` mediumtext NOT NULL,
  `shift` mediumtext,
  `item_name` mediumtext,
  `quantity` mediumtext,
  `price` mediumtext,
  `gst` mediumtext,
  `cgst` mediumtext,
  `sgst` mediumtext,
  `igst` float DEFAULT NULL,
  `total` mediumtext,
  `shop_name` mediumtext NOT NULL,
  `nc` mediumtext NOT NULL,
  `discount` mediumtext,
  `mode` mediumtext,
  `flag` int(11) NOT NULL,
  `added_date` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_cancel`
--

LOCK TABLES `coupon_cancel` WRITE;
/*!40000 ALTER TABLE `coupon_cancel` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_cancel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_closed`
--

DROP TABLE IF EXISTS `day_closed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day_closed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_closed`
--

LOCK TABLES `day_closed` WRITE;
/*!40000 ALTER TABLE `day_closed` DISABLE KEYS */;
INSERT INTO `day_closed` VALUES (3,'tt',0,'2018-04-07','Golden Vada Pav','2018-04-07 07:17:20');
/*!40000 ALTER TABLE `day_closed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_open`
--

DROP TABLE IF EXISTS `day_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_open`
--

LOCK TABLES `day_open` WRITE;
/*!40000 ALTER TABLE `day_open` DISABLE KEYS */;
INSERT INTO `day_open` VALUES (1,'2018-06-01',NULL);
/*!40000 ALTER TABLE `day_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'vinay','vinayit986@gmail.com','Golden Vada Pav','28-12-2017'),(2,'Dharmesh','dharmeshmourya043@gmail.com','Golden Vada Pav','31-12-2017'),(3,'Saddam','saddamansari1995@gmail.com','Golden Vada Pav','02-01-2018');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sub_category`
--

DROP TABLE IF EXISTS `product_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sub_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `spname` varchar(255) NOT NULL,
  `alias_name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `gst_percent` float NOT NULL,
  `gst_amt` float NOT NULL,
  `cgst_amt` float NOT NULL,
  `sgst_amt` float NOT NULL,
  `igst_amt` float NOT NULL,
  `net_amt` float NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sub_category`
--

LOCK TABLES `product_sub_category` WRITE;
/*!40000 ALTER TABLE `product_sub_category` DISABLE KEYS */;
INSERT INTO `product_sub_category` VALUES (1,1,'FOOD','Samosa','sp',12,5,0.6,0.3,0.3,0,11.4,'Golden Vada Pav'),(2,1,'FOOD','Pizza','pz',55,10,5.5,2.75,2.75,0,49.5,'Golden Vada Pav'),(3,1,'FOOD','Bhaji Pav','bp',20,10,2,1,1,0,18,'Golden Vada Pav'),(4,1,'FOOD','Vada Pav','vp',20,10,1.5,0.75,0.75,0,13.5,'Golden Vada Pav'),(5,1,'FOOD','Kachori','kc',25,10,2.5,1.25,1.25,0,22.5,'Golden Vada Pav'),(6,1,'FOOD','Dabeli','db',12,10,2.5,1.25,1.25,0,22.5,'Golden Vada Pav');
/*!40000 ALTER TABLE `product_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_no` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_branch` varchar(255) NOT NULL,
  `shop_contact` varchar(255) NOT NULL,
  `shop_email` varchar(255) NOT NULL,
  `shop_address` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'1','Golden Vada Pav','Mulund','75777877','golden12@gmail.com','Mulund West','24/01/2018 18:06:47');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-07 12:49:18
