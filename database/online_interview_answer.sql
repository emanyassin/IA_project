-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: online_interview
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,'Java is a high-level programming language and is platform independent.',1),(2,1,'Java is a collection of objects.',1),(3,1,'Java is a low-level programming language',0),(4,1,'Java is a collection of items',0),(5,1,'java is not a programming language',0),(6,1,'none of the above',0),(7,2,'Oops concepts',1),(8,2,'Platform independent',1),(9,2,'explicit pointers',0),(10,2,'operator overloading',0),(11,2,'scope resolution operator',0),(12,2,'sizeof operator',0),(13,3,'Java uses Just In Time compiler to enable high performance',1),(14,3,'it is not a high performance',1),(15,3,'its compiler is so slow',0),(16,3,'due to using libraries',0),(17,3,'because of built in functions',0),(18,3,'it has a guide',0),(19,4,' Eclipse',1),(20,4,'NetBeans',1),(21,4,'Brackets',0),(22,4,'prolog',0),(23,4,'pycharm',0),(24,4,'komodo',0),(25,5,'The constructor is a method which has the same name as class name.',1),(26,5,'if a user doesn’t create a constructor implicitly a default constructor will be created.',1),(27,5,'it does not has same name of class',0),(28,5,'can not be overloaded',0),(29,5,'must be with parameters',0),(30,5,'When a new object is created in a program a constructor do not get invoked corresponding to the class',0),(31,6,'is',1),(32,6,'does',1),(33,6,'do ',0),(34,6,'are',0),(35,6,'were',0),(36,6,'do not',0),(37,7,'much',1),(38,7,'many',1),(39,7,'old',0),(40,7,'is',0),(41,7,'are',0),(42,7,'it',0),(43,8,'do?',1),(44,8,'will',1),(45,8,'is',0),(46,8,'it',0),(47,8,'are',0),(48,8,'can',0),(49,9,'is',1),(50,9,' it',1),(51,9,'are',0),(52,9,'product',0),(53,9,'much',0),(54,9,'many',0),(55,10,'is',1),(56,10,'will be',1),(57,10,'are',0),(58,10,'do',0),(59,10,'go',0),(60,10,'want',0),(61,11,'Dog',1),(62,11,'Mouse',1),(63,11,'Lion',0),(64,11,'Snake',0),(65,11,'Elephant',0),(66,11,'mammel',0),(67,12,'25641',1),(68,12,'26451',1),(69,12,'12654',0),(70,12,'51462',0),(71,12,'15264',0),(72,12,'87878',0),(73,13,'8',1),(74,13,'13',1),(75,13,'21',0),(76,13,'26',0),(77,13,'31',0),(78,13,'33',0),(79,14,'20',1),(80,14,'24',1),(81,14,'25',0),(82,14,'26',0),(83,14,'28',0),(84,14,'30',0),(85,15,'THREE',1),(86,15,'SEVEN',1),(87,15,'EIGHT',0),(88,15,'FIFTEEN',0),(89,15,'THIRTY',0),(90,15,'FIFTY',0),(91,16,'Database is an organized collection of related data',1),(92,16,'the data is stored and organized to serve some specific purpose.',1),(93,16,'groups of unrelated data',0),(94,16,'database is programming language',0),(95,16,'it is low level language',0),(96,16,'it can not store data',0),(97,17,'DBMS stands for Database Management system.',1),(98,17,'It is a collection of application programs which allow the user to organize, restore and retrieve information ',1),(99,17,'Relational Database Management System(RDBMS)',0),(100,17,'based on a relational model of data',0),(101,17,'stored in databases in separate tables ',0),(102,17,'used Structured Query Language (SQL).',0),(103,18,'Relational Database Management System(RDBMS) ',1),(104,18,'is based on a relational model of data',1),(105,18,'DBMS stands for Database Management system',0),(106,18,' It is a collection of application programs',0),(107,18,'restore and retrieve information',0),(108,18,'Some of the popular DBMSs are MySql, Oracle, Sybase.',0),(109,19,'Data is stored in a structured way and hence redundancy is controlled.',1),(110,19,'Provides multiple user interfaces.',1),(111,19,'can not Provides backup and recovery of the data when required.',0),(112,19,'can not Validates the data entered',0),(113,19,'not provide restrictions on unauthorized access to the database.',0),(114,19,'can not recovery of the data when required.',0),(115,20,'it leads to wastage of the storage space and the integrity of the database is destroyed.',1),(116,20,'Duplication of data in the database is known as Data redundancy',1),(117,20,'Duplication of data in the database is known as Data reduction',0),(118,20,'uplication of data in the database is known as Data integration',0),(119,20,'duplicated data is present at same location',0),(120,20,' it does not lead to wastage of the storage space ',0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-27  0:58:36
