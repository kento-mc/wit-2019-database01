-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Admission`
--

DROP TABLE IF EXISTS `Admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Admission` (
  `admitID` int(11) NOT NULL AUTO_INCREMENT,
  `wardID` int(11) DEFAULT NULL,
  `inDate` date DEFAULT NULL,
  `inTime` time DEFAULT NULL,
  `outDate` date DEFAULT NULL,
  `outTime` time DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL,
  PRIMARY KEY (`admitID`),
  KEY `wardID` (`wardID`),
  KEY `patientID` (`patientID`),
  CONSTRAINT `admission_ibfk_1` FOREIGN KEY (`wardID`) REFERENCES `ward` (`wardID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `admission_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10058 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admission`
--

LOCK TABLES `Admission` WRITE;
/*!40000 ALTER TABLE `Admission` DISABLE KEYS */;
INSERT INTO `Admission` VALUES (10001,108,'2017-02-14','09:10:24','2019-11-24','21:56:38',10001),(10002,108,'2017-03-12','10:11:04','2017-03-12','17:20:14',10002),(10003,108,'2017-03-22','22:18:11','2017-03-23','08:18:11',10003),(10004,108,'2017-04-16','02:02:33','2017-04-16','10:02:33',10001),(10005,108,'2017-05-29','04:40:15','2017-05-29','12:40:15',10004),(10006,108,'2017-06-02','16:05:39','2017-06-04','20:05:39',10001),(10007,108,'2017-06-14','21:29:02','2017-06-15','09:29:02',10002),(10008,108,'2017-07-04','18:04:55','2017-07-04','22:04:55',10005),(10009,108,'2017-08-13','20:54:03','2017-08-14','12:54:03',10004),(10010,108,'2017-09-08','21:44:12','2017-09-09','08:44:12',10006),(10011,108,'2017-09-10','12:59:48','2017-09-10','17:59:48',10007),(10012,108,'2017-10-11','01:20:34','2017-10-11','11:20:34',10008),(10013,108,'2017-11-22','06:32:55','2017-11-22','14:32:55',10003),(10014,108,'2017-11-24','08:10:28','2017-11-24','13:10:28',10009),(10015,108,'2017-12-25','14:45:11','2017-12-26','19:45:11',10010),(10016,108,'2017-12-30','19:05:59','2017-12-30','23:05:59',10001),(10017,108,'2018-01-05','23:02:18','2018-01-06','14:02:18',10011),(10018,108,'2018-02-14','07:47:00','2018-02-17','16:47:00',10012),(10019,108,'2018-04-03','00:22:28','2018-04-03','09:22:28',10006),(10020,108,'2018-07-27','04:06:05','2018-07-27','12:06:05',10013),(10021,108,'2018-10-03','14:37:51','2018-10-03','21:37:51',10007),(10022,108,'2018-12-02','15:01:28','2018-12-02','22:01:28',10014),(10023,108,'2019-02-19','22:18:23','2019-02-20','09:18:23',10014),(10024,108,'2019-04-30','20:45:55','2019-05-01','08:45:55',10015),(10025,108,'2019-05-14','03:12:58','2019-05-14','10:12:58',10016),(10026,108,'2019-05-25','12:14:05','2019-05-25','18:14:05',10004),(10027,108,'2019-06-02','06:34:58','2019-06-02','09:34:58',10007),(10028,108,'2019-06-10','16:56:14','2019-06-10','19:56:14',10017),(10029,108,'2019-06-12','23:21:36','2019-06-13','13:21:36',10018),(10030,108,'2019-06-08','01:09:44','2019-06-08','11:09:44',10019),(10031,108,'2019-07-11','09:18:49','2019-07-11','15:18:49',10010),(10032,108,'2019-07-18','12:24:57','2019-07-18','20:24:57',10012),(10033,108,'2019-07-24','20:33:21','2019-07-24','22:33:21',10020),(10034,108,'2019-07-30','05:50:33','2019-07-30','10:50:33',10005),(10035,108,'2019-07-31','23:12:16','2019-08-01','12:12:16',10013),(10036,108,'2019-08-02','10:55:20','2019-08-02','16:55:20',10021),(10037,108,'2019-08-08','03:21:27','2019-08-08','15:21:27',10022),(10038,108,'2019-08-11','17:02:41','2019-08-11','18:02:41',10023),(10039,108,'2019-08-16','22:20:55','2019-08-17','07:20:55',10018),(10040,108,'2019-09-05','19:08:06','2019-09-05','21:08:06',10001),(10041,108,'2019-09-08','00:26:14','2019-09-08','08:26:14',10008),(10042,108,'2019-09-18','02:44:08','2019-09-18','10:44:08',10005),(10043,108,'2019-09-27','14:39:28','2019-09-27','17:39:28',10024),(10044,108,'2019-09-28','18:52:45','2019-09-29','09:52:45',10025),(10045,108,'2019-10-20','09:34:05','2019-10-20','13:34:05',10026),(10046,108,'2019-11-03','15:43:20',NULL,NULL,10001),(10047,101,'2019-11-04','09:30:14',NULL,NULL,10003),(10048,104,'2019-11-04','11:16:50',NULL,NULL,10015),(10049,105,'2019-11-05','19:40:12',NULL,NULL,10001),(10050,105,'2019-11-06','08:37:05',NULL,NULL,10007),(10051,102,'2019-11-06','14:25:33',NULL,NULL,10016),(10052,103,'2019-11-06','17:05:40',NULL,NULL,10024),(10053,106,'2019-11-07','08:55:18',NULL,NULL,10006),(10054,107,'2019-11-07','20:08:00',NULL,NULL,10025),(10055,106,'2019-11-07','21:25:40',NULL,NULL,10009),(10056,108,'2019-11-07','22:12:48',NULL,NULL,10021),(10057,108,'2019-11-24','21:56:38',NULL,NULL,10003);
/*!40000 ALTER TABLE `Admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `admissionslastmonth`
--

DROP TABLE IF EXISTS `admissionslastmonth`;
/*!50001 DROP VIEW IF EXISTS `admissionslastmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `admissionslastmonth` AS SELECT 
 1 AS `Name`,
 1 AS `Ward`,
 1 AS `Date Admitted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `admissionslastweek`
--

DROP TABLE IF EXISTS `admissionslastweek`;
/*!50001 DROP VIEW IF EXISTS `admissionslastweek`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `admissionslastweek` AS SELECT 
 1 AS `Name`,
 1 AS `Ward`,
 1 AS `Date Admitted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `admissionslastyear`
--

DROP TABLE IF EXISTS `admissionslastyear`;
/*!50001 DROP VIEW IF EXISTS `admissionslastyear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `admissionslastyear` AS SELECT 
 1 AS `Name`,
 1 AS `Ward`,
 1 AS `Date Admitted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `admittedawaitingvisit`
--

DROP TABLE IF EXISTS `admittedawaitingvisit`;
/*!50001 DROP VIEW IF EXISTS `admittedawaitingvisit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `admittedawaitingvisit` AS SELECT 
 1 AS `Name`,
 1 AS `Ward`,
 1 AS `Bed`,
 1 AS `Date Admitted`,
 1 AS `Visited on`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Bed`
--

DROP TABLE IF EXISTS `Bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Bed` (
  `bedNumber` int(11) NOT NULL AUTO_INCREMENT,
  `bedType` enum('big','small','maternity') DEFAULT NULL,
  `wardID` int(11) DEFAULT NULL,
  `admitID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bedNumber`),
  KEY `wardID` (`wardID`),
  KEY `admitID` (`admitID`),
  CONSTRAINT `bed_ibfk_1` FOREIGN KEY (`wardID`) REFERENCES `ward` (`wardID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `bed_ibfk_2` FOREIGN KEY (`admitID`) REFERENCES `admission` (`admitID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bed`
--

LOCK TABLES `Bed` WRITE;
/*!40000 ALTER TABLE `Bed` DISABLE KEYS */;
INSERT INTO `Bed` VALUES (101,'small',101,10047),(102,'small',101,NULL),(103,'small',101,NULL),(104,'small',101,NULL),(105,'small',101,NULL),(106,'small',101,NULL),(107,'small',101,NULL),(108,'small',101,NULL),(109,'small',101,NULL),(110,'small',101,NULL),(111,'big',102,10051),(112,'big',102,NULL),(113,'big',102,NULL),(114,'big',102,NULL),(115,'big',102,NULL),(116,'big',102,NULL),(117,'big',102,NULL),(118,'big',102,NULL),(119,'big',102,NULL),(120,'big',102,NULL),(121,'big',103,10052),(122,'big',103,NULL),(123,'big',103,NULL),(124,'big',103,NULL),(125,'big',103,NULL),(126,'big',103,NULL),(127,'big',103,NULL),(128,'big',103,NULL),(129,'big',103,NULL),(130,'big',103,NULL),(131,'maternity',104,10048),(132,'maternity',104,NULL),(133,'maternity',104,NULL),(134,'maternity',104,NULL),(135,'maternity',104,NULL),(136,'maternity',104,NULL),(137,'maternity',104,NULL),(138,'maternity',104,NULL),(139,'maternity',104,NULL),(140,'maternity',104,NULL),(141,'big',105,10049),(142,'big',105,10050),(143,'big',105,NULL),(144,'big',105,NULL),(145,'big',105,NULL),(146,'big',105,NULL),(147,'big',105,NULL),(148,'big',105,NULL),(149,'big',105,NULL),(150,'big',105,NULL),(151,'big',106,10053),(152,'big',106,10055),(153,'big',106,NULL),(154,'big',106,NULL),(155,'big',106,NULL),(156,'big',106,NULL),(157,'big',106,NULL),(158,'big',106,NULL),(159,'big',106,NULL),(160,'big',106,NULL),(161,'big',107,10054),(162,'big',107,NULL),(163,'big',107,NULL),(164,'big',107,NULL),(165,'big',107,NULL),(166,'big',107,NULL),(167,'big',107,NULL),(168,'big',107,NULL),(169,'big',107,NULL),(170,'big',107,NULL),(171,'big',108,10046),(172,'big',108,10056),(173,'big',108,NULL),(174,'big',108,NULL),(175,'big',108,NULL),(176,'big',108,NULL),(177,'big',108,NULL),(178,'big',108,NULL),(179,'big',108,NULL),(180,'big',108,NULL);
/*!40000 ALTER TABLE `Bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `currentlyadmitted`
--

DROP TABLE IF EXISTS `currentlyadmitted`;
/*!50001 DROP VIEW IF EXISTS `currentlyadmitted`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `currentlyadmitted` AS SELECT 
 1 AS `Name`,
 1 AS `Ward`,
 1 AS `Bed`,
 1 AS `Date Admitted`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `doctor` (
  `PPS` varchar(15) NOT NULL,
  `fName` varchar(15) DEFAULT NULL,
  `lName` varchar(15) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `contactNo` int(11) DEFAULT NULL,
  `hireDate` date DEFAULT NULL,
  `specialisation` enum('General','Pediatrics','Oncology','ENT','OBGYN','Incompetence','Psychotherapy','Plastic Surgery') DEFAULT NULL,
  PRIMARY KEY (`PPS`),
  KEY `doctorLastNameInd` (`lName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('11345672A','Nick','Riviera','103 Doctor St','Springfield','USA County',324323423,'2019-11-24','Incompetence'),('12423422A','Julius','Hibbert','101 Doctor St','Springfield','USA County',324323423,'2019-11-24','General'),('12573426A','Marvin','Monroe','102 Doctor St','Springfield','USA County',324323423,'2019-11-24','Psychotherapy'),('14234563A','V','Velimirovic','104 Doctor St','Springfield','USA County',324323423,'2019-11-24','Plastic Surgery');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drug`
--

DROP TABLE IF EXISTS `Drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Drug` (
  `drugID` int(11) NOT NULL AUTO_INCREMENT,
  `drugName` varchar(20) DEFAULT NULL,
  `manufacturer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`drugID`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drug`
--

LOCK TABLES `Drug` WRITE;
/*!40000 ALTER TABLE `Drug` DISABLE KEYS */;
INSERT INTO `Drug` VALUES (1001,'Super Drug 01','Big Pharma Co.'),(1002,'Super Drug 02','Big Pharma Co.'),(1003,'Super Drug 03','Big Pharma Co.'),(1004,'Super Drug 04','Big Pharma Co.'),(1005,'Super Drug 05','Big Pharma Co.'),(1006,'Super Drug 06','Big Pharma Co.'),(1007,'Super Drug 07','Big Pharma Co.'),(1008,'Super Drug 08','Big Pharma Co.'),(1009,'Super Drug 09','Big Pharma Co.'),(1010,'Super Drug 10','Big Pharma Co.');
/*!40000 ALTER TABLE `Drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `freebeds`
--

DROP TABLE IF EXISTS `freebeds`;
/*!50001 DROP VIEW IF EXISTS `freebeds`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `freebeds` AS SELECT 
 1 AS `Ward`,
 1 AS `Free Beds`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numfreebeds`
--

DROP TABLE IF EXISTS `numfreebeds`;
/*!50001 DROP VIEW IF EXISTS `numfreebeds`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `numfreebeds` AS SELECT 
 1 AS `Ward`,
 1 AS `Free Beds`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(20) DEFAULT NULL,
  `lName` varchar(20) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`patientID`),
  KEY `patientLastNameInd` (`lName`)
) ENGINE=InnoDB AUTO_INCREMENT=10028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (10001,'Homer','Simpson','742 Evergreen Terrace','Springfield','USA County',1234567899,'1970-01-01'),(10002,'Marge','Simpson','742 Evergreen Terrace','Springfield','USA County',1234567899,'1972-03-20'),(10003,'Bart','Simpson','742 Evergreen Terrace','Springfield','USA County',1234567899,'2010-04-05'),(10004,'Lisa','Simpson','742 Evergreen Terrace','Springfield','USA County',1234567899,'2009-08-15'),(10005,'Maggie','Simpson','742 Evergreen Terrace','Springfield','USA County',1234567899,'2017-12-10'),(10006,'Abraham','Simpson','Springfield Retirement Castle','Springfield','USA County',1234234881,'1938-11-06'),(10007,'Barney','Gumble','101 Barney St','Springfield','USA County',2141038535,'1970-08-07'),(10008,'Moe','Szyslak','Moe\'s Tavern','Springfield','USA County',8543745588,'1967-05-30'),(10009,'C. Montgomery','Burns','Burns Manor','Springfield','USA County',2344435466,'1898-02-09'),(10010,'Waylon','Smithers','Smithers Lane','Springfield','USA County',4588404438,'1975-01-22'),(10011,'Ned','Flanders','744 Evergreen Terrace','Springfield','USA County',5759388843,'1960-07-02'),(10012,'Rod','Flanders','744 Evergreen Terrace','Springfield','USA County',5759388843,'2010-02-18'),(10013,'Todd','Flanders','744 Evergreen Terrace','Springfield','USA County',5759388843,'2009-12-20'),(10014,'Apu','Nahasapeemapetilon','Kwik-E-Mart','Springfield','USA County',1123994398,'1970-01-04'),(10015,'Manjula','Nahasapeemapetilon','Kwik-E-Mart','Springfield','USA County',1123994398,'1974-09-08'),(10016,'Kirk','Van Houten','4 Milhouse Lane','Springfield','USA County',3804775643,'1970-06-12'),(10017,'Luann','Van Houten','4 Milhouse Lane','Springfield','USA County',3804775643,'1971-03-21'),(10018,'Milhouse','Van Houten','4 Milhouse Lane','Springfield','USA County',3804775643,'2010-01-19'),(10019,'Seymour','Skinner','432 Skinner Rd','Springfield','USA County',3349985849,'1966-10-10'),(10020,'Agnes','Skinner','432 Skinner Rd','Springfield','USA County',3349985849,'1932-09-20'),(10021,'Edna','Krabappel','22 Krabappel St','Springfield','USA County',4453478433,'1972-01-30'),(10022,'Clancy','Wigum','1 Wigum Way','Springfield','USA County',4338889749,'1969-08-01'),(10023,'Sarah','Wigum','1 Wigum Way','Springfield','USA County',4338889749,'1974-10-31'),(10024,'Ralph','Wigum','1 Wigum Way','Springfield','USA County',4338889749,'2010-04-26'),(10025,'Lenny','Leonard','500 Lenny Lane','Springfield','USA County',3480289898,'1970-12-03'),(10026,'Carl','Carlson','500 Carl Court','Springfield','USA County',3458977566,'1970-08-11'),(10027,'Poochy','Simpson','742 Evergreen Terrace','Springfield','USA County',1234567899,'2016-10-14');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patienthistories`
--

DROP TABLE IF EXISTS `patienthistories`;
/*!50001 DROP VIEW IF EXISTS `patienthistories`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `patienthistories` AS SELECT 
 1 AS `Name`,
 1 AS `Visits`,
 1 AS `Last Visit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Prescription`
--

DROP TABLE IF EXISTS `Prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Prescription` (
  `visitID` int(11) NOT NULL,
  `drugID` int(11) NOT NULL,
  `dosageDetails` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`visitID`,`drugID`),
  KEY `drugID` (`drugID`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`visitID`) REFERENCES `visit` (`visitID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prescription`
--

LOCK TABLES `Prescription` WRITE;
/*!40000 ALTER TABLE `Prescription` DISABLE KEYS */;
INSERT INTO `Prescription` VALUES (10001,1001,'3 a day at meal time'),(10002,1001,'3 a day at meal time'),(10003,1004,'1 a day at meal time'),(10004,1002,'3 a day at meal time'),(10005,1007,'1 a day at meal time'),(10006,1009,'2 a day at meal time'),(10007,1002,'3 a day at meal time'),(10008,1010,'2 a day at meal time'),(10009,1001,'2 a day at meal time'),(10010,1002,'1 a day at meal time'),(10011,1003,'3 a day at meal time'),(10012,1006,'2 a day at meal time'),(10013,1010,'3 a day at meal time'),(10014,1001,'3 a day at meal time'),(10015,1006,'3 a day at meal time'),(10016,1008,'1 a day at meal time'),(10017,1008,'1 a day at meal time'),(10018,1002,'2 a day at meal time'),(10019,1004,'3 a day at meal time'),(10020,1005,'3 a day at meal time'),(10021,1005,'2 a day at meal time'),(10022,1006,'1 a day at meal time'),(10023,1002,'3 a day at meal time'),(10024,1010,'3 a day at meal time'),(10025,1001,'1 a day at meal time'),(10026,1001,'3 a day at meal time'),(10027,1003,'3 a day at meal time'),(10028,1002,'3 a day at meal time'),(10029,1007,'3 a day at meal time'),(10030,1007,'2 a day at meal time'),(10031,1009,'3 a day at meal time'),(10032,1010,'3 a day at meal time'),(10033,1008,'1 a day at meal time'),(10034,1004,'3 a day at meal time'),(10035,1007,'2 a day at meal time'),(10036,1006,'3 a day at meal time'),(10037,1002,'1 a day at meal time'),(10038,1003,'3 a day at meal time'),(10039,1003,'3 a day at meal time'),(10040,1002,'1 a day at meal time'),(10041,1006,'2 a day at meal time'),(10042,1008,'3 a day at meal time'),(10043,1010,'3 a day at meal time'),(10044,1003,'3 a day at meal time'),(10045,1007,'3 a day at meal time'),(10046,1007,'3 a day at meal time'),(10047,1008,'1 a day at meal time'),(10048,1009,'3 a day at meal time'),(10049,1009,'1 a day at meal time'),(10050,1002,'3 a day at meal time'),(10051,1004,'3 a day at meal time'),(10052,1003,'3 a day at meal time'),(10053,1001,'1 a day at meal time'),(10054,1001,'3 a day at meal time'),(10055,1002,'3 a day at meal time'),(10056,1003,'1 a day at meal time'),(10056,1004,'3 a day at meal time');
/*!40000 ALTER TABLE `Prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prescriptionlastyear`
--

DROP TABLE IF EXISTS `prescriptionlastyear`;
/*!50001 DROP VIEW IF EXISTS `prescriptionlastyear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `prescriptionlastyear` AS SELECT 
 1 AS `Drug`,
 1 AS `Prescriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prescriptionslastmonth`
--

DROP TABLE IF EXISTS `prescriptionslastmonth`;
/*!50001 DROP VIEW IF EXISTS `prescriptionslastmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `prescriptionslastmonth` AS SELECT 
 1 AS `Drug`,
 1 AS `Prescriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prescriptionslastweek`
--

DROP TABLE IF EXISTS `prescriptionslastweek`;
/*!50001 DROP VIEW IF EXISTS `prescriptionslastweek`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `prescriptionslastweek` AS SELECT 
 1 AS `Drug`,
 1 AS `Prescriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Visit`
--

DROP TABLE IF EXISTS `Visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Visit` (
  `visitID` int(11) NOT NULL AUTO_INCREMENT,
  `admitID` int(11) NOT NULL,
  `PPS` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`visitID`),
  KEY `admitID` (`admitID`),
  KEY `PPS` (`PPS`),
  CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`admitID`) REFERENCES `admission` (`admitID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`PPS`) REFERENCES `doctor` (`PPS`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10057 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visit`
--

LOCK TABLES `Visit` WRITE;
/*!40000 ALTER TABLE `Visit` DISABLE KEYS */;
INSERT INTO `Visit` VALUES (10001,10001,'12423422A','2017-02-14','09:10:24'),(10002,10002,'12423422A','2017-03-12','10:11:04'),(10003,10003,'11345672A','2017-03-22','22:18:11'),(10004,10004,'12573426A','2017-04-16','02:02:33'),(10005,10005,'12423422A','2017-05-29','04:40:15'),(10006,10006,'12573426A','2017-06-02','16:05:39'),(10007,10007,'11345672A','2017-06-14','21:29:02'),(10008,10008,'14234563A','2017-07-04','18:04:55'),(10009,10009,'12573426A','2017-08-13','20:54:03'),(10010,10010,'12573426A','2017-09-08','21:44:12'),(10011,10011,'12423422A','2017-09-10','12:59:48'),(10012,10012,'11345672A','2017-10-11','01:20:34'),(10013,10013,'12423422A','2017-11-22','06:32:55'),(10014,10014,'12573426A','2017-11-24','08:10:28'),(10015,10015,'12423422A','2017-12-25','14:45:11'),(10016,10016,'14234563A','2017-12-30','19:05:59'),(10017,10017,'11345672A','2018-01-05','23:02:18'),(10018,10018,'12573426A','2018-02-14','07:47:00'),(10019,10019,'12423422A','2018-04-03','00:22:28'),(10020,10020,'12423422A','2018-07-27','04:06:05'),(10021,10021,'11345672A','2018-10-03','14:37:51'),(10022,10022,'11345672A','2018-12-02','15:01:28'),(10023,10023,'14234563A','2019-02-19','22:18:23'),(10024,10024,'12423422A','2019-04-30','20:45:55'),(10025,10025,'12573426A','2019-05-14','03:12:58'),(10026,10026,'12423422A','2019-05-25','12:14:05'),(10027,10027,'11345672A','2019-06-02','06:34:58'),(10028,10028,'11345672A','2019-06-10','16:56:14'),(10029,10029,'12423422A','2019-06-12','23:21:36'),(10030,10030,'12423422A','2019-06-08','01:09:44'),(10031,10031,'14234563A','2019-07-11','09:18:49'),(10032,10032,'12423422A','2019-07-18','12:24:57'),(10033,10033,'12573426A','2019-07-24','20:33:21'),(10034,10034,'12573426A','2019-07-30','05:50:33'),(10035,10035,'12573426A','2019-07-31','23:12:16'),(10036,10036,'11345672A','2019-08-02','10:55:20'),(10037,10037,'12423422A','2019-08-08','03:21:27'),(10038,10038,'12423422A','2019-08-11','17:02:41'),(10039,10039,'14234563A','2019-08-16','22:20:55'),(10040,10040,'12423422A','2019-09-05','19:08:06'),(10041,10041,'12573426A','2019-09-08','00:26:14'),(10042,10042,'11345672A','2019-09-18','02:44:08'),(10043,10043,'12423422A','2019-09-27','14:39:28'),(10044,10044,'11345672A','2019-09-28','18:52:45'),(10045,10045,'12423422A','2019-10-20','09:34:05'),(10046,10046,'12573426A','2019-11-03','15:43:20'),(10047,10047,'11345672A','2019-11-04','09:30:14'),(10048,10048,'12423422A','2019-11-04','11:16:50'),(10049,10049,'14234563A','2019-11-05','19:40:12'),(10050,10050,'12423422A','2019-11-06','08:37:05'),(10051,10051,'14234563A','2019-11-06','14:25:33'),(10052,10052,'11345672A','2019-11-06','17:05:40'),(10053,10053,'12423422A','2019-11-07','08:55:18'),(10054,10054,'12573426A','2019-11-07','20:08:00'),(10055,10055,'12423422A','2019-11-07','21:25:40'),(10056,10056,'11345672A','2019-11-07','22:12:48');
/*!40000 ALTER TABLE `Visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ward` (
  `wardID` int(11) NOT NULL AUTO_INCREMENT,
  `wardName` varchar(20) DEFAULT NULL,
  `wardType` enum('OBGYN','Pediatric','Oncology','Emergency','Cardiology','ICU','Neurology','General') DEFAULT NULL,
  PRIMARY KEY (`wardID`),
  KEY `wardNameInd` (`wardName`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
INSERT INTO `ward` VALUES (101,'Pedes Ward','Pediatric'),(102,'Cancer Ward','Oncology'),(103,'Emergency Ward','Emergency'),(104,'Maternity Ward','OBGYN'),(105,'Cardiology Ward','Cardiology'),(106,'Intensive Care Unit','ICU'),(107,'Neurology Ward','Neurology'),(108,'General Ward','General');
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `admissionslastmonth`
--

/*!50001 DROP VIEW IF EXISTS `admissionslastmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admissionslastmonth` AS select concat(`patient`.`lName`,', ',`patient`.`fName`) AS `Name`,`ward`.`wardName` AS `Ward`,`admission`.`inDate` AS `Date Admitted` from ((`patient` join `admission` on((`patient`.`patientID` = `admission`.`patientID`))) join `ward` on((`admission`.`wardID` = `ward`.`wardID`))) where ((to_days(curdate()) - to_days(str_to_date(`admission`.`inDate`,'%Y-%m-%d'))) <= 31) order by `admission`.`inDate` desc,concat(`patient`.`lName`,', ',`patient`.`fName`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `admissionslastweek`
--

/*!50001 DROP VIEW IF EXISTS `admissionslastweek`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admissionslastweek` AS select concat(`patient`.`lName`,', ',`patient`.`fName`) AS `Name`,`ward`.`wardName` AS `Ward`,`admission`.`inDate` AS `Date Admitted` from ((`patient` join `admission` on((`patient`.`patientID` = `admission`.`patientID`))) join `ward` on((`admission`.`wardID` = `ward`.`wardID`))) where ((to_days(curdate()) - to_days(str_to_date(`admission`.`inDate`,'%Y-%m-%d'))) <= 7) order by `admission`.`inDate` desc,concat(`patient`.`lName`,', ',`patient`.`fName`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `admissionslastyear`
--

/*!50001 DROP VIEW IF EXISTS `admissionslastyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admissionslastyear` AS select concat(`patient`.`lName`,', ',`patient`.`fName`) AS `Name`,`ward`.`wardName` AS `Ward`,`admission`.`inDate` AS `Date Admitted` from ((`patient` join `admission` on((`patient`.`patientID` = `admission`.`patientID`))) join `ward` on((`admission`.`wardID` = `ward`.`wardID`))) where ((to_days(curdate()) - to_days(str_to_date(`admission`.`inDate`,'%Y-%m-%d'))) <= 365) order by `admission`.`inDate` desc,concat(`patient`.`lName`,', ',`patient`.`fName`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `admittedawaitingvisit`
--

/*!50001 DROP VIEW IF EXISTS `admittedawaitingvisit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admittedawaitingvisit` AS select concat(`patient`.`lName`,', ',`patient`.`fName`) AS `Name`,`ward`.`wardName` AS `Ward`,`bed`.`bedNumber` AS `Bed`,`admission`.`inDate` AS `Date Admitted`,`visit`.`date` AS `Visited on` from ((((`patient` join `admission` on((`patient`.`patientID` = `admission`.`patientID`))) join `ward` on((`admission`.`wardID` = `ward`.`wardID`))) join `bed` on(((`admission`.`wardID` = `bed`.`wardID`) and (`admission`.`admitID` = `bed`.`admitID`)))) left join `visit` on((`admission`.`admitID` = `visit`.`admitID`))) where (`visit`.`date` is null) order by concat(`patient`.`lName`,', ',`patient`.`fName`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `currentlyadmitted`
--

/*!50001 DROP VIEW IF EXISTS `currentlyadmitted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `currentlyadmitted` AS select concat(`patient`.`lName`,', ',`patient`.`fName`) AS `Name`,`ward`.`wardName` AS `Ward`,`bed`.`bedNumber` AS `Bed`,`admission`.`inDate` AS `Date Admitted` from (((`patient` join `admission` on((`patient`.`patientID` = `admission`.`patientID`))) join `bed` on(((`admission`.`admitID` = `bed`.`admitID`) and (`admission`.`wardID` = `bed`.`wardID`)))) join `ward` on((`admission`.`wardID` = `ward`.`wardID`))) order by concat(`patient`.`lName`,', ',`patient`.`fName`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `freebeds`
--

/*!50001 DROP VIEW IF EXISTS `freebeds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `freebeds` AS select `ward`.`wardName` AS `Ward`,`bed`.`bedNumber` AS `Free Beds` from (`ward` join `bed` on((`ward`.`wardID` = `bed`.`wardID`))) where (`bed`.`admitID` is null) order by `ward`.`wardName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numfreebeds`
--

/*!50001 DROP VIEW IF EXISTS `numfreebeds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numfreebeds` AS select `ward`.`wardName` AS `Ward`,count(`bed`.`bedNumber`) AS `Free Beds` from (`ward` join `bed` on((`ward`.`wardID` = `bed`.`wardID`))) where (`bed`.`admitID` is null) group by `Ward` order by `ward`.`wardName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patienthistories`
--

/*!50001 DROP VIEW IF EXISTS `patienthistories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patienthistories` AS select concat(`patient`.`lName`,', ',`patient`.`fName`) AS `Name`,count(`visit`.`visitID`) AS `Visits`,max(`visit`.`date`) AS `Last Visit` from ((`patient` join `admission` on((`patient`.`patientID` = `admission`.`patientID`))) join `visit` on((`admission`.`admitID` = `visit`.`admitID`))) group by `Name` order by `Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prescriptionlastyear`
--

/*!50001 DROP VIEW IF EXISTS `prescriptionlastyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prescriptionlastyear` AS select `drug`.`drugName` AS `Drug`,count(`visit`.`visitID`) AS `Prescriptions` from ((`drug` join `prescription` on((`drug`.`drugID` = `prescription`.`drugID`))) join `visit` on((`prescription`.`visitID` = `visit`.`visitID`))) where ((to_days(curdate()) - to_days(str_to_date(`visit`.`date`,'%Y-%m-%d'))) <= 365) group by `drug`.`drugName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prescriptionslastmonth`
--

/*!50001 DROP VIEW IF EXISTS `prescriptionslastmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prescriptionslastmonth` AS select `drug`.`drugName` AS `Drug`,count(`visit`.`visitID`) AS `Prescriptions` from ((`drug` join `prescription` on((`drug`.`drugID` = `prescription`.`drugID`))) join `visit` on((`prescription`.`visitID` = `visit`.`visitID`))) where ((to_days(curdate()) - to_days(str_to_date(`visit`.`date`,'%Y-%m-%d'))) <= 31) group by `drug`.`drugName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prescriptionslastweek`
--

/*!50001 DROP VIEW IF EXISTS `prescriptionslastweek`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prescriptionslastweek` AS select `drug`.`drugName` AS `Drug`,count(`visit`.`visitID`) AS `Prescriptions` from ((`drug` join `prescription` on((`drug`.`drugID` = `prescription`.`drugID`))) join `visit` on((`prescription`.`visitID` = `visit`.`visitID`))) where ((to_days(curdate()) - to_days(str_to_date(`visit`.`date`,'%Y-%m-%d'))) <= 7) group by `drug`.`drugName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-24 21:59:14
