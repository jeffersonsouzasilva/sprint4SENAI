CREATE DATABASE  IF NOT EXISTS `bd_vsconnect` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_vsconnect`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_vsconnect
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tb_cotacao`
--

DROP TABLE IF EXISTS `tb_cotacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cotacao` (
  `id` binary(16) NOT NULL,
  `id_dev` binary(16) NOT NULL,
  `id_servico` binary(16) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dev` (`id_dev`),
  KEY `id_servico` (`id_servico`),
  CONSTRAINT `tb_cotacao_ibfk_1` FOREIGN KEY (`id_dev`) REFERENCES `tb_usuario` (`id`),
  CONSTRAINT `tb_cotacao_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `tb_servico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cotacao`
--

LOCK TABLES `tb_cotacao` WRITE;
/*!40000 ALTER TABLE `tb_cotacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cotacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dev_tech`
--

DROP TABLE IF EXISTS `tb_dev_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dev_tech` (
  `id_dev` binary(16) NOT NULL,
  `id_tech` binary(16) NOT NULL,
  KEY `id_dev` (`id_dev`),
  KEY `id_tech` (`id_tech`),
  CONSTRAINT `tb_dev_tech_ibfk_1` FOREIGN KEY (`id_dev`) REFERENCES `tb_usuario` (`id`),
  CONSTRAINT `tb_dev_tech_ibfk_2` FOREIGN KEY (`id_tech`) REFERENCES `tb_tech` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dev_tech`
--

LOCK TABLES `tb_dev_tech` WRITE;
/*!40000 ALTER TABLE `tb_dev_tech` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_dev_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_servico`
--

DROP TABLE IF EXISTS `tb_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_servico` (
  `id` binary(16) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `proposta` decimal(38,2) DEFAULT NULL,
  `status_servico` varchar(255) NOT NULL,
  `id_cliente` binary(16) NOT NULL,
  `id_dev` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_dev` (`id_dev`),
  CONSTRAINT `tb_servico_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tb_usuario` (`id`),
  CONSTRAINT `tb_servico_ibfk_2` FOREIGN KEY (`id_dev`) REFERENCES `tb_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_servico`
--

LOCK TABLES `tb_servico` WRITE;
/*!40000 ALTER TABLE `tb_servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tech`
--

DROP TABLE IF EXISTS `tb_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tech` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tech`
--

LOCK TABLES `tb_tech` WRITE;
/*!40000 ALTER TABLE `tb_tech` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tech_servico`
--

DROP TABLE IF EXISTS `tb_tech_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tech_servico` (
  `id_tech` binary(16) NOT NULL,
  `id_servico` binary(16) NOT NULL,
  KEY `id_tech` (`id_tech`),
  KEY `id_servico` (`id_servico`),
  CONSTRAINT `tb_tech_servico_ibfk_1` FOREIGN KEY (`id_tech`) REFERENCES `tb_tech` (`id`),
  CONSTRAINT `tb_tech_servico_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `tb_servico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tech_servico`
--

LOCK TABLES `tb_tech_servico` WRITE;
/*!40000 ALTER TABLE `tb_tech_servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tech_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_usuario`
--

DROP TABLE IF EXISTS `tb_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_usuario` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_usuario`
--

LOCK TABLES `tb_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tb_tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `url_img` varchar(255) DEFAULT NULL,
  `tipo_usuario` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (_binary 'B\Ý)N—„Lø€þ\ã³Pd˜','Thiago Nascimento','tailon2@imail.com','$2a$10$V97I85E9Sqb/RGESdKXKgeo1OoS7mVDV2krpPa.bcDMhmsbT2NHb6','Rua maria, 0','09784122',NULL,NULL,'09112023193422.jpg',0),(_binary 'i\Þ:õe#K\ã•EÁ°(\å<','Thiago Rocha','thiagorocha@email.com','senhadothiago','Rua da Casa do Thiago, 100','09250720',NULL,NULL,'',NULL),(_binary '\0‡iN|©½†C›‚ò','Jeffe Nascimento','Amaral@imail.com','$2a$10$VOeDGeDAXXZN.6KaEWMX9.JVVl2gKu/tWtQ1gyhy57G/LyBFGDc5.','Rua maria, 0','09784122',NULL,NULL,'13112023194142.jpg',0),(_binary '¿² ,\ßNC ˆð\í\r\íz8\æ','Thiago Nascimento','thiago@email.com','senhadothiago','Rua da Casa do Thiago, 100','09250720',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16 21:24:35
