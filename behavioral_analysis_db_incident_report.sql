-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: behavioral_analysis_db
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `incident_report`
--

DROP TABLE IF EXISTS `incident_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `incident_report` (
  `Incident_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Incident_Reporter` int(11) NOT NULL,
  `Incident_DateHappened` datetime NOT NULL,
  `Incident_DateReported` datetime NOT NULL,
  `Incident_Department` int(11) NOT NULL,
  `Incident_Location` int(11) NOT NULL,
  `Incident_Species` int(11) NOT NULL,
  `Incident_Animal` int(11) DEFAULT NULL,
  `Incident_EnrichmentType` varchar(100) NOT NULL,
  `Incident_WasApproved` int(11) NOT NULL,
  `Incident_Description` varchar(100) NOT NULL,
  `Incident_DetailedDescription` varchar(1000) NOT NULL,
  `Incident_ActionsTaken` varchar(1000) NOT NULL,
  `Incident_Resolution` varchar(100) DEFAULT NULL,
  `Incident_IsResolved` int(11) NOT NULL,
  PRIMARY KEY (`Incident_Id`),
  KEY `Incident_Reporter_idx` (`Incident_Reporter`),
  KEY `Incident_Location_idx` (`Incident_Location`),
  KEY `Incident_Species_idx` (`Incident_Species`),
  KEY `Incident_Animal_idx` (`Incident_Animal`),
  KEY `Incident_Department_idx` (`Incident_Department`),
  CONSTRAINT `Incident_Animal` FOREIGN KEY (`Incident_Animal`) REFERENCES `animal` (`Animal_Id`),
  CONSTRAINT `Incident_Department` FOREIGN KEY (`Incident_Department`) REFERENCES `department` (`Department_Id`),
  CONSTRAINT `Incident_Location` FOREIGN KEY (`Incident_Location`) REFERENCES `location` (`Location_Id`),
  CONSTRAINT `Incident_Reporter` FOREIGN KEY (`Incident_Reporter`) REFERENCES `user` (`User_Id`),
  CONSTRAINT `Incident_Species` FOREIGN KEY (`Incident_Species`) REFERENCES `species` (`Species_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_report`
--

LOCK TABLES `incident_report` WRITE;
/*!40000 ALTER TABLE `incident_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28 17:27:54
