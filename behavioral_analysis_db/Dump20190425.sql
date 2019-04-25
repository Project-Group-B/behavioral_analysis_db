-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: pgbdatabase.cvn0csjnjxds.us-east-1.rds.amazonaws.com    Database: behavioral_analysis_db
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `SPRING_SESSION`
--

DROP TABLE IF EXISTS `SPRING_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION`
--

LOCK TABLES `SPRING_SESSION` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPRING_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`primary_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `animal` (
  `Animal_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Animal_IsisNumber` int(11) NOT NULL,
  `Animal_Species` int(11) NOT NULL,
  `Animal_Location` int(11) NOT NULL,
  `Animal_Housing` varchar(25) NOT NULL,
  `Animal_ActivityCycle` varchar(15) NOT NULL,
  `Animal_Age` varchar(15) NOT NULL,
  PRIMARY KEY (`Animal_Id`),
  UNIQUE KEY `Animal_IsisNumber_UNIQUE` (`Animal_IsisNumber`),
  KEY `Animal_Species_idx` (`Animal_Species`),
  KEY `Animal_Location_idx` (`Animal_Location`),
  CONSTRAINT `Animal_Location` FOREIGN KEY (`Animal_Location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `Animal_Species` FOREIGN KEY (`Animal_Species`) REFERENCES `species` (`species_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,1234,1,1,'TestAnimalHousing','TestAnimalAct','TestAnimalAge'),(2,1413,1,1,'onExhibit','nocturnal','juvenile'),(3,341,1,1,'individual','nocturnal','adult');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior`
--

DROP TABLE IF EXISTS `behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `behavior` (
  `Behavior_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Behavior_Name` varchar(25) NOT NULL,
  `Behavior_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`Behavior_Id`),
  UNIQUE KEY `Behavior_Name_UNIQUE` (`Behavior_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior`
--

LOCK TABLES `behavior` WRITE;
/*!40000 ALTER TABLE `behavior` DISABLE KEYS */;
INSERT INTO `behavior` VALUES (1,'TestBehavName','TestBehavDesc');
/*!40000 ALTER TABLE `behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(25) NOT NULL,
  `Category_Description` varchar(500) NOT NULL,
  PRIMARY KEY (`Category_Id`),
  UNIQUE KEY `Category_Name_UNIQUE` (`Category_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'TestCategoryName','TestCategoryDesc');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `Department_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Department_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Department_Id`),
  UNIQUE KEY `Department_Name_UNIQUE` (`Department_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'TestDepartmentName');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Enrichment_Contact` int(11) DEFAULT NULL,
  `Enrichment_SafetyQuestions` int(11) NOT NULL,
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
  KEY `Enrichment_Item_idx` (`Enrichment_Item`),
  KEY `Enrichment_Species_idx` (`Enrichment_Species`),
  KEY `Enrichment_Location_idx` (`Enrichment_Location`),
  KEY `Enrichment_ApprovedBy_idx` (`Enrichment_ApprovedBy`),
  KEY `Enrichment_Department_idx` (`Enrichment_Department`),
  CONSTRAINT `Enrichment_Animal` FOREIGN KEY (`Enrichment_Animal`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `Enrichment_ApprovedBy` FOREIGN KEY (`Enrichment_ApprovedBy`) REFERENCES `user` (`user_id`),
  CONSTRAINT `Enrichment_Department` FOREIGN KEY (`Enrichment_Department`) REFERENCES `department` (`department_id`),
  CONSTRAINT `Enrichment_Item` FOREIGN KEY (`Enrichment_Item`) REFERENCES `item` (`item_id`),
  CONSTRAINT `Enrichment_Location` FOREIGN KEY (`Enrichment_Location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `Enrichment_Species` FOREIGN KEY (`Enrichment_Species`) REFERENCES `species` (`species_id`),
  CONSTRAINT `Enrichment_Submittor` FOREIGN KEY (`Enrichment_Submittor`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrichment_experience`
--

LOCK TABLES `enrichment_experience` WRITE;
/*!40000 ALTER TABLE `enrichment_experience` DISABLE KEYS */;
INSERT INTO `enrichment_experience` VALUES (4,'1000-01-01 01:00:00','TestEnrichmentName',1,1,2,1,NULL,'TestEnrichmentDesc',1,'TestPresentationMethod','1000-01-01 01:00:00','1000-01-02 12:00:00',2,0,0,0,0,0,'TestEnrichmentGoal','TestEnrichmentSource',3,'TestEnrichmentConstruction',0,'TestInv','TestEnrichmentConcerns',1,0),(10,'2019-04-24 00:00:00','testenrich',5,1,2,1,1,'testing enrichment',1,'testing how','2019-04-24 00:00:00','2019-04-24 00:00:00',2,1,0,0,1,1,'test behaviors','Other',4,'test construct',0,'test','no concerns',0,0),(11,'2019-04-24 00:00:00','form 2',5,1,2,1,2,'giving ice',1,'with joy','2019-04-24 00:00:00','2019-04-24 00:00:00',5,1,0,0,1,1,'sliding','Other',12,'With refrigerator',1,'none','',0,0),(12,'2019-04-24 00:00:00','Ball',5,1,2,1,1,'red',1,'throw it in cage','2019-04-24 00:00:00','2019-04-24 00:00:00',1,1,0,1,1,1,'kick it','To Be Purchased',30,'the store',1,'','',5,1);
/*!40000 ALTER TABLE `enrichment_experience` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `Incident_Animal` FOREIGN KEY (`Incident_Animal`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `Incident_Department` FOREIGN KEY (`Incident_Department`) REFERENCES `department` (`department_id`),
  CONSTRAINT `Incident_Location` FOREIGN KEY (`Incident_Location`) REFERENCES `location` (`location_id`),
  CONSTRAINT `Incident_Reporter` FOREIGN KEY (`Incident_Reporter`) REFERENCES `user` (`user_id`),
  CONSTRAINT `Incident_Species` FOREIGN KEY (`Incident_Species`) REFERENCES `species` (`species_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_report`
--

LOCK TABLES `incident_report` WRITE;
/*!40000 ALTER TABLE `incident_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `Item_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(100) NOT NULL,
  `Item_PathToPhoto` varchar(1000) NOT NULL,
  `Item_DateApproved` datetime DEFAULT NULL,
  `Item_ApprovalStatus` int(11) NOT NULL,
  `Item_Comments` varchar(1000) DEFAULT NULL,
  `Item_SafetyNotes` varchar(1000) DEFAULT NULL,
  `Item_Exceptions` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Item_Id`),
  UNIQUE KEY `Item_Name_UNIQUE` (`Item_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,'TestItemName','TestPathToPhoto','1000-01-01 01:00:00',1,'TestItemComments','TestItemSafetyNotes','TestItemExceptions');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item/behavior`
--

DROP TABLE IF EXISTS `item/behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item/behavior` (
  `Item_Id` int(11) NOT NULL,
  `Behavior_Id` int(11) NOT NULL,
  PRIMARY KEY (`Item_Id`,`Behavior_Id`),
  KEY `Behavior_Id_idx` (`Behavior_Id`),
  CONSTRAINT `Behavior_Id` FOREIGN KEY (`Behavior_Id`) REFERENCES `behavior` (`behavior_id`),
  CONSTRAINT `Item_IdB` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item/behavior`
--

LOCK TABLES `item/behavior` WRITE;
/*!40000 ALTER TABLE `item/behavior` DISABLE KEYS */;
INSERT INTO `item/behavior` VALUES (2,1);
/*!40000 ALTER TABLE `item/behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item/category`
--

DROP TABLE IF EXISTS `item/category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item/category` (
  `Item_Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  PRIMARY KEY (`Item_Id`,`Category_Id`),
  KEY `Category_Id_idx` (`Category_Id`),
  CONSTRAINT `Category_Id` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `Item_Id` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item/category`
--

LOCK TABLES `item/category` WRITE;
/*!40000 ALTER TABLE `item/category` DISABLE KEYS */;
INSERT INTO `item/category` VALUES (2,1);
/*!40000 ALTER TABLE `item/category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item/species`
--

DROP TABLE IF EXISTS `item/species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item/species` (
  `Item_Id` int(11) NOT NULL,
  `Species_Id` int(11) NOT NULL,
  PRIMARY KEY (`Item_Id`,`Species_Id`),
  KEY `Item_Species_idx` (`Species_Id`),
  CONSTRAINT `Item_IdS` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `Item_Species` FOREIGN KEY (`Species_Id`) REFERENCES `species` (`species_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item/species`
--

LOCK TABLES `item/species` WRITE;
/*!40000 ALTER TABLE `item/species` DISABLE KEYS */;
INSERT INTO `item/species` VALUES (2,1);
/*!40000 ALTER TABLE `item/species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `Location_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Location_Name` varchar(50) NOT NULL,
  `Location_Description` varchar(500) NOT NULL,
  PRIMARY KEY (`Location_Id`),
  UNIQUE KEY `Location_Name_UNIQUE` (`Location_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'TestLocationName','TestLocationDesc');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plant` (
  `Plant_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Plant_Name` varchar(50) NOT NULL,
  `Plant_Description` varchar(50) NOT NULL,
  PRIMARY KEY (`Plant_Id`),
  UNIQUE KEY `Plant_Name_UNIQUE` (`Plant_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES (1,'TestPlantName','TestPlantDescription');
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `species` (
  `Species_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Species_Name` varchar(50) NOT NULL,
  `Species_Description` varchar(500) NOT NULL,
  PRIMARY KEY (`Species_Id`),
  UNIQUE KEY `Species_Name_UNIQUE` (`Species_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'TestSpeciesName','TestSpeciesDesc');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxa`
--

DROP TABLE IF EXISTS `taxa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taxa` (
  `Taxa_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Taxa_Name` varchar(50) NOT NULL,
  `Taxa_Description` varchar(1000) NOT NULL,
  PRIMARY KEY (`Taxa_Id`),
  UNIQUE KEY `Taxa_Name_UNIQUE` (`Taxa_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxa`
--

LOCK TABLES `taxa` WRITE;
/*!40000 ALTER TABLE `taxa` DISABLE KEYS */;
INSERT INTO `taxa` VALUES (1,'TestTaxaName','TestTaxaDesc');
/*!40000 ALTER TABLE `taxa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxa/species`
--

DROP TABLE IF EXISTS `taxa/species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taxa/species` (
  `Taxa_Id` int(11) NOT NULL,
  `Species_Id` int(11) NOT NULL,
  PRIMARY KEY (`Taxa_Id`,`Species_Id`),
  KEY `Species_Id_idx` (`Species_Id`),
  CONSTRAINT `Species_Id` FOREIGN KEY (`Species_Id`) REFERENCES `species` (`species_id`),
  CONSTRAINT `Taxa_Id` FOREIGN KEY (`Taxa_Id`) REFERENCES `taxa` (`taxa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxa/species`
--

LOCK TABLES `taxa/species` WRITE;
/*!40000 ALTER TABLE `taxa/species` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxa/species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(25) NOT NULL,
  `User_Pass` varchar(256) NOT NULL,
  `User_Status` int(11) NOT NULL,
  `User_Department` int(11) NOT NULL,
  `User_FirstName` varchar(50) NOT NULL,
  `User_LastName` varchar(45) NOT NULL,
  PRIMARY KEY (`User_Id`),
  UNIQUE KEY `User_Name_UNIQUE` (`User_Name`),
  KEY `Enrichment_Department_idx` (`User_Department`),
  KEY `User_Department_idx` (`User_Department`),
  CONSTRAINT `User_Department` FOREIGN KEY (`User_Department`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'notapproved','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',0,1,'Not','Approved'),(1,'TestUserName','TestUserPass',1,1,'TestUserFirstName','TestUserLastName'),(2,'TestUserName2','TestUserPass2',0,1,'TestUserFirstName2','TestUserLastName2'),(5,'AdminUser','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',1,1,'AdminFirst','AdminLast'),(7,'AdminUser2','45961da9ce13da68788eac0836edf79c1a0b510746b26bb471acf8c53a9dd63e',0,1,'TestUserFirstName3','TestUserLastName3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'behavioral_analysis_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 15:01:21
