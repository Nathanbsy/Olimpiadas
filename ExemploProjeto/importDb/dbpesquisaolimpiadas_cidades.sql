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
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `codCidade` int NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(255) NOT NULL,
  `codEstado` int DEFAULT NULL,
  PRIMARY KEY (`codCidade`),
  KEY `codEstado` (`codEstado`),
  CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`codEstado`) REFERENCES `estados` (`codEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'?',50),(2,'Adamantina',50),(3,'Aguaí',50),(4,'Americana',50),(5,'Amparo',50),(6,'Andradina',50),(7,'Araraquara',50),(8,'Araras',50),(9,'Araçatuba',50),(10,'Artur Nogueira',50),(11,'Arujá',50),(12,'Atibaia',50),(13,'BASTOS',50),(14,'Barra Bonita',50),(15,'Barueri',50),(16,'Bauru',50),(17,'Boa Esperança do Sul',50),(18,'Botucatu',50),(19,'Brasília',50),(20,'CAMPINAS',50),(21,'Caieiras',50),(22,'Campinas',50),(23,'Campo Limpo Paulista',50),(24,'Campos do Jordão',50),(25,'Capivari',50),(26,'Capão Bonito',50),(27,'Caraguatatuba',50),(28,'Carapicuíba',50),(29,'Casa Branca',50),(30,'Catanduva',50),(31,'Colina',50),(32,'Conchal',50),(33,'Coronel Macedo',50),(34,'Cosmopólis',50),(35,'Cotia',50),(36,'Cruzeiro',50),(37,'Cubatão',50),(38,'Descalvado',50),(39,'Diadema',50),(40,'Dracena',50),(41,'Ferraz de Vasconcelos',50),(42,'Franca',50),(43,'Garça',50),(44,'Guararapes',50),(45,'Guaratinguetá',50),(46,'Guarujá',50),(47,'Guarulhos',50),(48,'Guaíra',50),(49,'ITARIRI',50),(50,'ITU',50),(51,'Ibirá',50),(52,'Ibitinga',50),(53,'Iguape',50),(54,'Ilha Solteira',50),(55,'Ilhabela',50),(56,'Indiaporã',50),(57,'Ipaussu',50),(58,'Itanhaém',50),(59,'Itapeva',50),(60,'Itatiba',50),(61,'Itu',50),(62,'Ituverava',50),(63,'Jacareí',50),(64,'Jandira',50),(65,'Jaú',50),(66,'Jundiaí',50),(67,'Juquiá',50),(68,'Leme',50),(69,'Lençóis Paulista',50),(70,'Limeira',50),(71,'Lins',50),(72,'Lorena',50),(73,'Lucélia',50),(74,'Marília',50),(75,'Matão',50),(76,'Mauá',50),(77,'Mococa',50),(78,'Mogi das Cruzes',50),(79,'Morungaba',50),(80,'Nova Odessa',50),(81,'Orlândia',50),(82,'Osasco',50),(83,'Osvaldo Cruz',50),(84,'Pacaembu',50),(85,'Paraguaçu Paulista',50),(86,'Parapuã',50),(87,'Pariquera-Açu',50),(88,'Patrocinio Paulista',50),(89,'Pedregulho',50),(90,'Pedro de Toledo',50),(91,'Penápolis',50),(92,'Peruíbe',50),(93,'Pindamonhangaba',50),(94,'Piracicaba',50),(95,'Piraju',50),(96,'Pirassununga',50),(97,'Porto Ferreira',50),(98,'Potirendaba',50),(99,'Praia Grande',50),(100,'Presidente Prudente',50),(101,'Promissão',50),(102,'Quintana',50),(103,'Registro',50),(104,'Ribeirão Preto',50),(105,'Rio Claro',50),(106,'Rio de Janeiro',50),(107,'Rosárial',50),(108,'Rubineia',50),(109,'Salto',50),(110,'Santa Bárbara d Oeste',50),(111,'Santa Maria da Serra',50),(112,'Santa Rita do Passa Quatro',50),(113,'Santo André',50),(114,'Santo Antônio de Posse',50),(115,'Santos',50),(116,'Saudades',50),(117,'Sertãozinho',50),(118,'Sorocaba',50),(119,'Sumaré',50),(120,'Suzano',50),(121,'São Bernardo do Campo',50),(122,'São Caetano do Sul',50),(123,'São Carlos',50),(124,'São Joaquim da Barra',50),(125,'São José do Rio Preto',50),(126,'São José dos Campos',50),(127,'São João da Boa Vista',50),(128,'São Manuel',50),(129,'São Paulo',50),(130,'São Roque',50),(131,'São Sebastião',50),(132,'São Vicente',50),(133,'Taubaté',50),(134,'Tietê',50),(135,'Tupi Paulista',50),(136,'Tupã',50),(137,'Ubatuba',50),(138,'Valinhos',50),(139,'Vinhedo',50),(140,'Vista Alegre do Alto',50),(141,'Votorantim',50),(142,'Álvares Machado',50),(143,'?',50),(144,'Adamantina',50),(145,'Aguaí',50),(146,'Americana',50),(147,'Amparo',50),(148,'Andradina',50),(149,'Araraquara',50),(150,'Araras',50),(151,'Araçatuba',50),(152,'Artur Nogueira',50),(153,'Arujá',50),(154,'Atibaia',50),(155,'BASTOS',50),(156,'Barra Bonita',50),(157,'Barueri',50),(158,'Bauru',50),(159,'Boa Esperança do Sul',50),(160,'Botucatu',50),(161,'Brasília',50),(162,'CAMPINAS',50),(163,'Caieiras',50),(164,'Campinas',50),(165,'Campo Limpo Paulista',50),(166,'Campos do Jordão',50),(167,'Capivari',50),(168,'Capão Bonito',50),(169,'Caraguatatuba',50),(170,'Carapicuíba',50),(171,'Casa Branca',50),(172,'Catanduva',50),(173,'Colina',50),(174,'Conchal',50),(175,'Coronel Macedo',50),(176,'Cosmopólis',50),(177,'Cotia',50),(178,'Cruzeiro',50),(179,'Cubatão',50),(180,'Descalvado',50),(181,'Diadema',50),(182,'Dracena',50),(183,'Ferraz de Vasconcelos',50),(184,'Franca',50),(185,'Garça',50),(186,'Guararapes',50),(187,'Guaratinguetá',50),(188,'Guarujá',50),(189,'Guarulhos',50),(190,'Guaíra',50),(191,'ITARIRI',50),(192,'ITU',50),(193,'Ibirá',50),(194,'Ibitinga',50),(195,'Iguape',50),(196,'Ilha Solteira',50),(197,'Ilhabela',50),(198,'Indiaporã',50),(199,'Ipaussu',50),(200,'Itanhaém',50),(201,'Itapeva',50),(202,'Itatiba',50),(203,'Itu',50),(204,'Ituverava',50),(205,'Jacareí',50),(206,'Jandira',50),(207,'Jaú',50),(208,'Jundiaí',50),(209,'Juquiá',50),(210,'Leme',50),(211,'Lençóis Paulista',50),(212,'Limeira',50),(213,'Lins',50),(214,'Lorena',50),(215,'Lucélia',50),(216,'Marília',50),(217,'Matão',50),(218,'Mauá',50),(219,'Mococa',50),(220,'Mogi das Cruzes',50),(221,'Morungaba',50),(222,'Nova Odessa',50),(223,'Orlândia',50),(224,'Osasco',50),(225,'Osvaldo Cruz',50),(226,'Pacaembu',50),(227,'Paraguaçu Paulista',50),(228,'Parapuã',50),(229,'Pariquera-Açu',50),(230,'Patrocinio Paulista',50),(231,'Pedregulho',50),(232,'Pedro de Toledo',50),(233,'Penápolis',50),(234,'Peruíbe',50),(235,'Pindamonhangaba',50),(236,'Piracicaba',50),(237,'Piraju',50),(238,'Pirassununga',50),(239,'Porto Ferreira',50),(240,'Potirendaba',50),(241,'Praia Grande',50),(242,'Presidente Prudente',50),(243,'Promissão',50),(244,'Quintana',50),(245,'Registro',50),(246,'Ribeirão Preto',50),(247,'Rio Claro',50),(248,'Rio de Janeiro',50),(249,'Rosárial',50),(250,'Rubineia',50),(251,'Salto',50),(252,'Santa Bárbara d Oeste',50),(253,'Santa Maria da Serra',50),(254,'Santa Rita do Passa Quatro',50),(255,'Santo André',50),(256,'Santo Antônio de Posse',50),(257,'Santos',50),(258,'Saudades',50),(259,'Sertãozinho',50),(260,'Sorocaba',50),(261,'Sumaré',50),(262,'Suzano',50),(263,'São Bernardo do Campo',50),(264,'São Caetano do Sul',50),(265,'São Carlos',50),(266,'São Joaquim da Barra',50),(267,'São José do Rio Preto',50),(268,'São José dos Campos',50),(269,'São João da Boa Vista',50),(270,'São Manuel',50),(271,'São Paulo',50),(272,'São Roque',50),(273,'São Sebastião',50),(274,'São Vicente',50),(275,'Taubaté',50),(276,'Tietê',50),(277,'Tupi Paulista',50),(278,'Tupã',50),(279,'Ubatuba',50),(280,'Valinhos',50),(281,'Vinhedo',50),(282,'Vista Alegre do Alto',50),(283,'Votorantim',50),(284,'Álvares Machado',50);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
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
