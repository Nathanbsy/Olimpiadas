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
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `codEstado` int NOT NULL AUTO_INCREMENT,
  `nomeEstado` varchar(255) NOT NULL,
  PRIMARY KEY (`codEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Acre'),(2,'Alagoas'),(3,'Alemanha'),(4,'Amapá'),(5,'Amazonas'),(6,'Argentina'),(7,'Armênia'),(8,'Austrália'),(9,'Bahia'),(10,'Bielorussia'),(11,'Bélgica'),(12,'Ceará'),(13,'China'),(14,'Colômbia'),(15,'Croácia'),(16,'Cuba'),(17,'Distrito Federal'),(18,'EUA'),(19,'Espanha'),(20,'Espírito Santo'),(21,'França'),(22,'Goiás'),(23,'Grã-Bretanha'),(24,'Holanda'),(25,'Hungria'),(26,'Inglaterra'),(27,'Itália'),(28,'Japão'),(29,'Lituânia'),(30,'Maranhão'),(31,'Mato Grosso'),(32,'Mato Grosso do Sul'),(33,'Minas Gerais'),(34,'Paraná'),(35,'Paraíba'),(36,'Pará'),(37,'Pernambuco'),(38,'Piauí'),(39,'Polônia'),(40,'Portugal'),(41,'Rio Grande do Norte'),(42,'Rio Grande do Sul'),(43,'Rio de Janeiro'),(44,'Rondônia'),(45,'Roraima'),(46,'Santa Catarina'),(47,'Sergipe'),(48,'Suiça'),(49,'Suécia'),(50,'São Paulo'),(51,'Sérvia'),(52,'Uruguai'),(53,'nan');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
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
