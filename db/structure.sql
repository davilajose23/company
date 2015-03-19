-- MySQL dump 10.13  Distrib 5.6.21, for osx10.10 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `assignations`
--

DROP TABLE IF EXISTS `assignations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignations` (
  `essn` char(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pNo` int(11) NOT NULL DEFAULT '0',
  `hours` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`essn`,`pNo`),
  KEY `pNo` (`pNo`),
  CONSTRAINT `assignations_ibfk_1` FOREIGN KEY (`pNo`) REFERENCES `projects` (`pnumber`),
  CONSTRAINT `assignations_ibfk_2` FOREIGN KEY (`essn`) REFERENCES `employees` (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `DName` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Dnumber` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `MgrSsn` char(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MgrStartDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Dnumber`),
  KEY `MgrSsn` (`MgrSsn`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`MgrSsn`) REFERENCES `employees` (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependents` (
  `essn` char(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Dependent_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  `relationship` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`essn`,`Dependent_name`),
  CONSTRAINT `dependents_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employees` (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `FName` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MInit` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ssn` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `BDate` datetime DEFAULT NULL,
  `Addres` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `SuperSsn` char(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Ssn`),
  KEY `SuperSsn` (`SuperSsn`),
  KEY `DNo` (`DNo`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`SuperSsn`) REFERENCES `employees` (`Ssn`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`DNo`) REFERENCES `departments` (`Dnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `dnumber` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dlocation` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`dnumber`,`dlocation`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`dnumber`) REFERENCES `departments` (`Dnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `pname` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnumber` int(11) NOT NULL DEFAULT '0',
  `plocation` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dnum` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pnumber`),
  KEY `dnum` (`dnum`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`dnum`) REFERENCES `departments` (`Dnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-18 19:44:27
