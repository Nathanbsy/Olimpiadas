-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpesquisaolimpiadas
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `atletas`
--

DROP TABLE IF EXISTS `atletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atletas` (
  `codAtleta` int NOT NULL AUTO_INCREMENT,
  `nomeAtleta` varchar(255) NOT NULL,
  `dataNascimento` varchar(20) NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `altura` decimal(5,2) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `codCidade` int DEFAULT NULL,
  `codModalidade` int DEFAULT NULL,
  PRIMARY KEY (`codAtleta`),
  KEY `codCidade` (`codCidade`),
  KEY `codModalidade` (`codModalidade`),
  CONSTRAINT `atletas_ibfk_1` FOREIGN KEY (`codCidade`) REFERENCES `cidades` (`codCidade`),
  CONSTRAINT `atletas_ibfk_2` FOREIGN KEY (`codModalidade`) REFERENCES `modalidades` (`codModalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atletas`
--

LOCK TABLES `atletas` WRITE;
/*!40000 ALTER TABLE `atletas` DISABLE KEYS */;
INSERT INTO `atletas` VALUES (1,'Rebeca Rodrigues de Andrade','1999-05-08','F',1.51,46.00,47,1),(2,'Neymar da Silva Santos Junior','1992-02-05','M',1.75,68.00,78,2),(4,'Adhemar Ferreira da Silva','1927-09-29','M',NULL,NULL,129,3),(5,'Aderval Luiz Arvani','1949-01-07','M',NULL,NULL,129,5),(6,'Stephanie Balduccini','2004-09-20','F',NULL,NULL,129,4),(7,'Thaissa Barbosa Presti','1988-04-26','F',NULL,NULL,129,3),(8,'Wanda dos Santos','1932-06-01','F',NULL,NULL,129,3),(9,'Manuel dos Santos Filho','1939-02-22','M',NULL,NULL,129,4),(10,'Marcelo Teles Negrão','1972-10-10','M',NULL,NULL,129,5),(11,'Fofão','1970-03-10','F',NULL,NULL,129,5);
/*!40000 ALTER TABLE `atletas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 17:05:41
