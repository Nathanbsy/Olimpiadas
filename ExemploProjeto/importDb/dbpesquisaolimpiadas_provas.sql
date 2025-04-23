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
-- Table structure for table `provas`
--

DROP TABLE IF EXISTS `provas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provas` (
  `codProva` int NOT NULL AUTO_INCREMENT,
  `nomeProva` varchar(255) NOT NULL,
  `codModalidade` int DEFAULT NULL,
  PRIMARY KEY (`codProva`),
  KEY `codModalidade` (`codModalidade`),
  CONSTRAINT `provas_ibfk_1` FOREIGN KEY (`codModalidade`) REFERENCES `modalidades` (`codModalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provas`
--

LOCK TABLES `provas` WRITE;
/*!40000 ALTER TABLE `provas` DISABLE KEYS */;
INSERT INTO `provas` VALUES (1,'Argolas Masculino',1),(2,'Barra Fixa',1),(3,'Barra Fixa Masculino',1),(4,'Barras Assimétricas Feminino',1),(5,'Barras Paralelas Masculino',1),(6,'Cavalo com Alças Masculino',1),(7,'Equipes Feminino',1),(8,'Equipes Masculino',1),(9,'Individual All-Around Feminino',1),(10,'Individual All-Around Masculino',1),(11,'Individual Geral Feminino',1),(12,'Individual Geral Masculino',1),(13,'Salto sobre a mesa Feminino',1),(14,'Salto sobre a mesa Masculino',1),(15,'Solo Feminino',1),(16,'Solo Masculino',1),(17,'Trave de Equilibrio Feminino',1),(18,'Futebol Masculino',2),(19,'10000m Feminino',3),(20,'10000m Masculino',3),(21,'100m Feminino',3),(22,'100m Masculino',3),(23,'100m com barreiras Feminino',3),(24,'110m com Barreiras Masculino',3),(25,'1500m Masculino',3),(26,'200m Feminino',3),(27,'200m Masculino',3),(28,'20km Marcha Atlética Feminina',3),(29,'20km Marcha Atlética Masculino',3),(30,'3000m com Obstáculos Feminino',3),(31,'3000m com Obstáculos Masculino',3),(32,'400m Feminino',3),(33,'400m Feminino Feminino',3),(34,'400m Masculino',3),(35,'400m com Barreiras Feminina',3),(36,'400m com Barreiras Feminino',3),(37,'400m com Barreiras Masculino',3),(38,'5000m Feminino',3),(39,'5000m Masculino',3),(40,'50km Marcha Atlética',3),(41,'60m Masculino',3),(42,'800m Feminino',3),(43,'800m Masculino',3),(44,'80m com Barreiras Feminino',3),(45,'Arremesso de Peso Feminino',3),(46,'Arremesso de Peso Masculino',3),(47,'Arremesso do Peso Masculino',3),(48,'Cross Country Masculino',3),(49,'Decatlon',3),(50,'Decatlon Masculino',3),(51,'Heptatlo Feminino',3),(52,'Lançamento de Dardo Feminino',3),(53,'Lançamento de Dardo Masculino',3),(54,'Lançamento de Disco Feminino',3),(55,'Lançamento de Disco Masculino',3),(56,'Lançamento do Dardo',3),(57,'Lançamento do Dardo Feminino',3),(58,'Lançamento do Disco Feminino',3),(59,'Lançamento do Disco Masculino',3),(60,'Lançamento do Martelo Masculino',3),(61,'Maratona Feminina',3),(62,'Maratona Masculina',3),(63,'Marcha Atletica Masculina 20km',3),(64,'Marcha Atlética 20 Km Feminino',3),(65,'Marcha Atlética 20 Km Masculino',3),(66,'Marcha Atlética 50 Km Masculino',3),(67,'Marcha Atlética Feminino 20km',3),(68,'Pentatlo Feminino',3),(69,'Revezamento 4 x 100m Feminino',3),(70,'Revezamento 4 x 100m Masculino',3),(71,'Revezamento 4 x 400 Masculino',3),(72,'Revezamento 4 x 400m Feminino',3),(73,'Revezamento 4 x 400m Masculino',3),(74,'Revezamento 4 x 400m Misto',3),(75,'Revezamento Marcha Atlética Misto',3),(76,'Revezametno 4 x 400m Masculino',3),(77,'Salto Triplo Feminino',3),(78,'Salto Triplo Masculino',3),(79,'Salto com Vara Feminino',3),(80,'Salto com Vara Masculino',3),(81,'Salto em Altura Feminino',3),(82,'Salto em Altura Masculino',3),(83,'Salto em Distância Feminino',3),(84,'Salto em Distância Masculino',3),(85,'100m Borboleta Feminino',4),(86,'100m Borboleta Masculino',4),(87,'100m Costas Feminino',4),(88,'100m Costas Masculino',4),(89,'100m Livre Feminino',4),(90,'100m Livre Masculino',4),(91,'100m Nado Livre Masculino',4),(92,'100m Peito Feminino',4),(93,'100m Peito Masculino',4),(94,'1500m Livre Feminino',4),(95,'1500m Livre Masculino',4),(96,'1500m Nado Livre',4),(97,'200m Borboleta Feminino',4),(98,'200m Borboleta Masculino',4),(99,'200m Costas Masculino',4),(100,'200m Livre Feminino',4),(101,'200m Livre Masculino',4),(102,'200m Medley Feminino',4),(103,'200m Medley Masculino',4),(104,'200m Nado Livre',4),(105,'200m Nado Livre Masculino',4),(106,'200m Peito Feminino',4),(107,'200m Peito Masculino',4),(108,'400m Livre Feminino',4),(109,'400m Livre Masculino',4),(110,'400m Medley Feminino',4),(111,'400m Medley Masculino',4),(112,'400m Nado Livre Feminino',4),(113,'400m Nado Livre Masculino',4),(114,'50m Livre Feminino',4),(115,'50m Livre Masculino',4),(116,'800m Livre Feminino',4),(117,'800m Livre Masculino',4),(118,'800m Nado Livre Feminino',4),(119,'800m Nado Livre Natação',4),(120,'Mixed 4 x 100m Medley Relay',4),(121,'Revezamento 4 x 100m Nado Livre Masculino',4),(122,'Revezamento 4 x 200m Nado Livre Masculino',4),(123,'Revezamento 4x100m Livre Feminino',4),(124,'Revezamento 4x100m Livre Masculino',4),(125,'Revezamento 4x100m Medley Feminino',4),(126,'Revezamento 4x100m Medley Masculino',4),(127,'Revezamento 4x100m Medley Misto',4),(128,'Revezamento 4x100m Nado Livre Feminino',4),(129,'Revezamento 4x200m Livre Feminino',4),(130,'Revezamento 4x200m Livre Masculino',4),(131,'Revezamento 4x200m Nado Livre Feminino',4);
/*!40000 ALTER TABLE `provas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 17:05:42
