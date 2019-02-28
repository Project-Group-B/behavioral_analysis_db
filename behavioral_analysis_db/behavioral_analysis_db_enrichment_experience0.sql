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
-- Table structure for table `enrichment_experience`
--

DROP TABLE IF EXISTS `enrichment_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enrichment_experience` (
  `Enrichment_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Enrichment_DateSubmitted` datetime NOT NULL,
  `Enrichment_Name` varchar(50) NOT NULL,
  `Enrichment_Submittor` int(11) NOT NULL,
  `Enrichment_Department` int(11) NOT NULL,
  `Enrichment_Item` int(11) NOT NULL,
  `Enrichment_Species` int(11) NOT NULL,
  `Enrichment_Animal` int(11) DEFAULT NULL,
  `Enrichment_Description` varchar(1000) NOT NULL,
  `Enrichment_Location` int(11) NOT NULL,
  `Enrichment_PresentationMethod` varchar(1000) NOT NULL,
  `Enrichment_TimeStart` datetime NOT NULL,
  `Enrichment_TimeEnd` datetime NOT NULL,
  `Enrichment_Frequency` int(11) NOT NULL,
  `Enrichment_LifeStrategies` int(11) NOT NULL,
  `Enrichment_PreviousUse` int(11) NOT NULL,
  `Enrichment_ExpectedBehavior` varchar(1000) NOT NULL,
  `Enrichment_SagetyQuestions` int(11) NOT NULL,
  `Enrichment_RisksHazards` int(11) NOT NULL,
  `Enrichment_Goal` varchar(1000) NOT NULL,
  `Enrichment_Source` varchar(50) NOT NULL,
  `Enrichment_TimeRequired` int(11) NOT NULL,
  `Enrichment_Construction` varchar(1000) NOT NULL,
  `Enrichment_Volunteers` int(11) NOT NULL,
  `Enrichment_Inventory` varchar(10) NOT NULL,
  `Enrichment_Concerns` varchar(1000) DEFAULT NULL,
  `Enrichment_ApprovedBy` int(11) NOT NULL,
  `Enrichment_IsApproved` int(11) NOT NULL,
  PRIMARY KEY (`Enrichment_Id`),
  KEY `Enrichment_Animal_idx` (`Enrichment_Animal`),
  KEY `Enrichment_Submittor_idx` (`Enrichment_Submittor`),
  KEY `Enrichment_Department_idx` (`Enrichment_Department`),
  KEY `Enrichment_Item_idx` (`Enrichment_Item`),
  KEY `Enrichment_Species_idx` (`Enrichment_Species`),
  KEY `Enrichment_Location_idx` (`Enrichment_Location`),
  KEY `Enrichment_ApprovedBy_idx` (`Enrichment_ApprovedBy`),
  CONSTRAINT `Enrichment_Animal` FOREIGN KEY (`Enrichment_Animal`) REFERENCES `animal` (`Animal_Id`),
  CONSTRAINT `Enrichment_ApprovedBy` FOREIGN KEY (`Enrichment_ApprovedBy`) REFERENCES `user` (`User_Id`),
  CONSTRAINT `Enrichment_Department` FOREIGN KEY (`Enrichment_Department`) REFERENCES `department` (`Department_Id`),
  CONSTRAINT `Enrichment_Item` FOREIGN KEY (`Enrichment_Item`) REFERENCES `item` (`Item_Id`),
  CONSTRAINT `Enrichment_Location` FOREIGN KEY (`Enrichment_Location`) REFERENCES `location` (`Location_Id`),
  CONSTRAINT `Enrichment_Species` FOREIGN KEY (`Enrichment_Species`) REFERENCES `species` (`Species_Id`),
  CONSTRAINT `Enrichment_Submittor` FOREIGN KEY (`Enrichment_Submittor`) REFERENCES `user` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrichment_experience`
--

LOCK TABLES `enrichment_experience` WRITE;
/*!40000 ALTER TABLE `enrichment_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrichment_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28 16:43:30
