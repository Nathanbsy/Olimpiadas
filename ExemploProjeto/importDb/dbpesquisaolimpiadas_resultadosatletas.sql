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
-- Table structure for table `resultadosatletas`
--

DROP TABLE IF EXISTS `resultadosatletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultadosatletas` (
  `codAtletaRes` int NOT NULL AUTO_INCREMENT,
  `resultado` varchar(255) DEFAULT NULL,
  `medalha` varchar(255) DEFAULT NULL,
  `codAtleta` int DEFAULT NULL,
  `codProva` int DEFAULT NULL,
  `codEdicao` int DEFAULT NULL,
  PRIMARY KEY (`codAtletaRes`),
  KEY `codAtleta` (`codAtleta`),
  KEY `codProva` (`codProva`),
  KEY `codEdicao` (`codEdicao`),
  CONSTRAINT `resultadosatletas_ibfk_1` FOREIGN KEY (`codAtleta`) REFERENCES `atletas` (`codAtleta`),
  CONSTRAINT `resultadosatletas_ibfk_2` FOREIGN KEY (`codProva`) REFERENCES `provas` (`codProva`),
  CONSTRAINT `resultadosatletas_ibfk_3` FOREIGN KEY (`codEdicao`) REFERENCES `edicao` (`codEdicao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultadosatletas`
--

LOCK TABLES `resultadosatletas` WRITE;
/*!40000 ALTER TABLE `resultadosatletas` DISABLE KEYS */;
INSERT INTO `resultadosatletas` VALUES (1,'2°lugar','prata',1,9,24),(2,'2°lugar','prata',1,9,25),(3,'1°lugar','ouro',1,13,24),(4,'2°lugar','prata',1,13,25),(5,'1°lugar','ouro',1,15,25),(6,'3°lugar','bronze',1,7,25),(7,'2º Lugar','prata',2,18,22),(8,'1º Lugar','ouro',2,18,23),(9,'11º Lugar',' ',1,9,23),(62,'3º Lugar','Bronze',10,131,18),(63,'3º Lugar','Bronze',10,131,19),(64,'4º Lugar','0',10,131,20),(65,'1º Lugar','Ouro',10,131,21),(66,'1º Lugar','Ouro',4,78,7),(67,'1º Lugar','Ouro',4,78,8),(68,'3º Lugar','Bronze',6,69,21);
/*!40000 ALTER TABLE `resultadosatletas` ENABLE KEYS */;
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
