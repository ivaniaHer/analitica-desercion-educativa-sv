CREATE DATABASE  IF NOT EXISTS `desercion_educativa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `desercion_educativa`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: desercion_educativa
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `acceso_tecnológico`
--

DROP TABLE IF EXISTS `acceso_tecnológico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acceso_tecnológico` (
  `id_estudiante` int NOT NULL,
  `acceso_internet` tinyint(1) NOT NULL DEFAULT '0',
  `dispositivo_tecnologico` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad_educativa` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `idx_acceso_internet` (`acceso_internet`),
  KEY `idx_modalidad_educativa` (`modalidad_educativa`),
  CONSTRAINT `fk_tecnologico_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_dispositivo_tecnologico` CHECK ((`dispositivo_tecnologico` in (_utf8mb4'Laptop',_utf8mb4'Tablet',_utf8mb4'Smartphone',_utf8mb4'Computadora de Escritorio',_utf8mb4'Ninguno'))),
  CONSTRAINT `chk_modalidad_educativa` CHECK ((`modalidad_educativa` in (_utf8mb4'Presencial',_utf8mb4'Virtual',_utf8mb4'Híbrida')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Registra el acceso a recursos tecnológicos y modalidad educativa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acceso_tecnológico`
--

LOCK TABLES `acceso_tecnológico` WRITE;
/*!40000 ALTER TABLE `acceso_tecnológico` DISABLE KEYS */;
INSERT INTO `acceso_tecnológico` VALUES (1,1,'Tablet','Presencial'),(2,1,'Laptop','Presencial'),(3,0,'Ninguno','Presencial'),(4,1,'Smartphone','Presencial'),(5,1,'Tablet','Presencial'),(6,1,'Laptop','Presencial'),(7,0,'Ninguno','Presencial'),(8,1,'Laptop','Presencial'),(9,1,'Smartphone','Presencial'),(10,1,'Laptop','Presencial'),(11,0,'Ninguno','Presencial'),(12,1,'Smartphone','Presencial'),(13,1,'Tablet','Presencial'),(14,1,'Laptop','Presencial'),(15,0,'Smartphone','Presencial'),(16,1,'Smartphone','Presencial'),(17,1,'Tablet','Presencial'),(18,1,'Laptop','Presencial'),(19,0,'Ninguno','Presencial'),(20,1,'Laptop','Presencial'),(21,1,'Smartphone','Presencial'),(22,1,'Laptop','Presencial'),(23,0,'Ninguno','Presencial'),(24,1,'Smartphone','Presencial'),(25,1,'Tablet','Presencial'),(26,1,'Tablet','Virtual'),(27,1,'Laptop','Virtual'),(28,0,'Ninguno','Virtual'),(29,1,'Smartphone','Virtual'),(30,1,'Tablet','Virtual'),(31,1,'Laptop','Virtual'),(32,0,'Ninguno','Virtual'),(33,1,'Laptop','Virtual'),(34,1,'Smartphone','Virtual'),(35,1,'Laptop','Virtual'),(36,0,'Smartphone','Virtual'),(37,1,'Smartphone','Virtual'),(38,1,'Tablet','Virtual'),(39,1,'Laptop','Virtual'),(40,0,'Ninguno','Virtual'),(41,1,'Tablet','Híbrida'),(42,1,'Laptop','Híbrida'),(43,0,'Ninguno','Híbrida'),(44,1,'Smartphone','Híbrida'),(45,1,'Tablet','Híbrida'),(46,1,'Laptop','Híbrida'),(47,0,'Smartphone','Híbrida'),(48,1,'Laptop','Híbrida'),(49,1,'Smartphone','Híbrida'),(50,1,'Laptop','Híbrida'),(51,0,'Ninguno','Híbrida'),(52,1,'Smartphone','Híbrida'),(53,1,'Tablet','Presencial'),(54,1,'Laptop','Presencial'),(55,0,'Ninguno','Presencial'),(56,1,'Laptop','Presencial'),(57,1,'Tablet','Presencial'),(58,1,'Laptop','Presencial'),(59,0,'Ninguno','Presencial'),(60,1,'Laptop','Presencial'),(61,1,'Smartphone','Presencial'),(62,1,'Laptop','Presencial'),(63,0,'Smartphone','Presencial'),(64,1,'Laptop','Presencial'),(65,1,'Tablet','Presencial'),(66,1,'Laptop','Presencial'),(67,0,'Ninguno','Presencial'),(68,1,'Laptop','Presencial'),(69,1,'Tablet','Virtual'),(70,1,'Laptop','Virtual'),(71,0,'Ninguno','Virtual'),(72,1,'Laptop','Virtual'),(73,1,'Smartphone','Virtual'),(74,1,'Laptop','Virtual'),(75,0,'Smartphone','Virtual'),(76,1,'Laptop','Virtual'),(77,1,'Tablet','Híbrida'),(78,1,'Laptop','Híbrida'),(79,0,'Smartphone','Híbrida'),(80,1,'Laptop','Híbrida'),(81,1,'Smartphone','Híbrida'),(82,1,'Laptop','Híbrida'),(83,0,'Ninguno','Híbrida'),(84,1,'Laptop','Híbrida'),(85,0,'Smartphone','Presencial'),(86,1,'Smartphone','Presencial'),(87,1,'Tablet','Presencial'),(88,1,'Laptop','Presencial'),(89,0,'Ninguno','Presencial'),(90,1,'Laptop','Presencial'),(91,1,'Smartphone','Presencial'),(92,1,'Laptop','Presencial'),(93,0,'Ninguno','Virtual'),(94,1,'Smartphone','Virtual'),(95,1,'Tablet','Virtual'),(96,1,'Laptop','Virtual'),(97,0,'Ninguno','Híbrida'),(98,1,'Smartphone','Híbrida'),(99,1,'Tablet','Híbrida'),(100,1,'Laptop','Híbrida'),(101,0,'Smartphone','Presencial'),(102,1,'Laptop','Presencial'),(103,1,'Tablet','Presencial'),(104,1,'Laptop','Presencial'),(105,0,'Ninguno','Presencial'),(106,1,'Laptop','Presencial'),(107,1,'Smartphone','Presencial'),(108,1,'Laptop','Presencial'),(109,0,'Ninguno','Virtual'),(110,1,'Laptop','Virtual'),(111,1,'Tablet','Virtual'),(112,1,'Laptop','Virtual'),(113,0,'Smartphone','Híbrida'),(114,1,'Laptop','Híbrida'),(115,1,'Smartphone','Híbrida'),(116,1,'Laptop','Híbrida'),(117,1,'Tablet','Presencial'),(118,1,'Smartphone','Presencial'),(119,1,'Tablet','Presencial'),(120,1,'Laptop','Presencial'),(121,1,'Smartphone','Presencial'),(122,1,'Smartphone','Presencial'),(123,1,'Tablet','Presencial'),(124,1,'Laptop','Presencial'),(125,1,'Tablet','Virtual'),(126,1,'Smartphone','Virtual'),(127,1,'Tablet','Virtual'),(128,1,'Laptop','Virtual'),(129,1,'Smartphone','Híbrida'),(130,1,'Smartphone','Híbrida'),(131,1,'Tablet','Híbrida'),(132,1,'Laptop','Híbrida'),(133,1,'Laptop','Presencial'),(134,0,'Smartphone','Presencial'),(135,1,'Laptop','Presencial'),(136,1,'Tablet','Presencial'),(137,1,'Laptop','Presencial'),(138,0,'Smartphone','Presencial'),(139,1,'Laptop','Presencial'),(140,1,'Smartphone','Presencial'),(141,1,'Laptop','Virtual'),(142,0,'Ninguno','Virtual'),(143,1,'Laptop','Virtual'),(144,1,'Tablet','Virtual'),(145,1,'Laptop','Híbrida'),(146,0,'Smartphone','Híbrida'),(147,1,'Smartphone','Híbrida'),(148,1,'Smartphone','Híbrida'),(149,1,'Laptop','Presencial'),(150,0,'Ninguno','Presencial'),(151,1,'Laptop','Presencial'),(152,1,'Tablet','Presencial'),(153,1,'Laptop','Presencial'),(154,0,'Ninguno','Presencial'),(155,1,'Laptop','Presencial'),(156,1,'Smartphone','Presencial'),(157,1,'Laptop','Virtual'),(158,0,'Ninguno','Virtual'),(159,1,'Laptop','Virtual'),(160,1,'Smartphone','Virtual'),(161,1,'Laptop','Híbrida'),(162,0,'Ninguno','Híbrida'),(163,1,'Laptop','Híbrida'),(164,1,'Smartphone','Híbrida'),(165,1,'Laptop','Presencial'),(166,1,'Tablet','Presencial'),(167,1,'Laptop','Presencial'),(168,0,'Smartphone','Presencial'),(169,1,'Smartphone','Presencial'),(170,1,'Tablet','Presencial'),(171,1,'Laptop','Presencial'),(172,0,'Smartphone','Presencial'),(173,1,'Smartphone','Virtual'),(174,1,'Tablet','Virtual'),(175,1,'Laptop','Virtual'),(176,0,'Ninguno','Virtual'),(177,1,'Smartphone','Híbrida'),(178,1,'Tablet','Híbrida'),(179,1,'Laptop','Híbrida'),(180,0,'Ninguno','Híbrida'),(181,1,'Laptop','Presencial'),(182,1,'Smartphone','Presencial'),(183,1,'Laptop','Presencial'),(184,0,'Smartphone','Presencial'),(185,1,'Laptop','Presencial'),(186,1,'Smartphone','Presencial'),(187,1,'Laptop','Presencial'),(188,0,'Ninguno','Presencial'),(189,1,'Laptop','Virtual'),(190,1,'Tablet','Virtual'),(191,1,'Laptop','Virtual'),(192,0,'Ninguno','Virtual'),(193,1,'Laptop','Híbrida'),(194,1,'Smartphone','Híbrida'),(195,1,'Laptop','Híbrida'),(196,0,'Ninguno','Híbrida'),(197,1,'Laptop','Presencial'),(198,0,'Smartphone','Presencial'),(199,1,'Laptop','Presencial'),(200,1,'Tablet','Presencial'),(201,1,'Laptop','Presencial'),(202,0,'Smartphone','Presencial'),(203,1,'Laptop','Presencial'),(204,1,'Smartphone','Presencial'),(205,1,'Laptop','Virtual'),(206,0,'Ninguno','Virtual'),(207,1,'Smartphone','Virtual'),(208,1,'Tablet','Virtual'),(209,1,'Laptop','Híbrida'),(210,0,'Smartphone','Híbrida'),(211,1,'Smartphone','Híbrida'),(212,1,'Smartphone','Híbrida'),(213,1,'Laptop','Presencial'),(214,0,'Ninguno','Presencial'),(215,1,'Laptop','Presencial'),(216,1,'Smartphone','Presencial'),(217,1,'Laptop','Presencial'),(218,0,'Smartphone','Presencial'),(219,1,'Laptop','Presencial'),(220,1,'Smartphone','Presencial'),(221,1,'Laptop','Virtual'),(222,0,'Ninguno','Virtual'),(223,1,'Laptop','Virtual'),(224,1,'Tablet','Virtual'),(225,1,'Laptop','Híbrida'),(226,0,'Ninguno','Híbrida'),(227,1,'Laptop','Híbrida'),(228,1,'Smartphone','Híbrida'),(229,1,'Laptop','Presencial'),(230,1,'Tablet','Presencial'),(231,1,'Smartphone','Presencial'),(232,1,'Smartphone','Presencial'),(233,1,'Smartphone','Virtual'),(234,1,'Tablet','Virtual'),(235,1,'Smartphone','Híbrida'),(236,1,'Smartphone','Híbrida'),(237,1,'Laptop','Presencial'),(238,0,'Smartphone','Presencial'),(239,1,'Laptop','Presencial'),(240,0,'Smartphone','Presencial'),(241,1,'Laptop','Virtual'),(242,0,'Ninguno','Virtual'),(243,1,'Laptop','Híbrida'),(244,0,'Ninguno','Híbrida'),(245,1,'Laptop','Presencial'),(246,0,'Smartphone','Presencial'),(247,1,'Smartphone','Virtual'),(248,0,'Ninguno','Híbrida'),(249,1,'Laptop','Presencial'),(250,0,'Smartphone','Híbrida');
/*!40000 ALTER TABLE `acceso_tecnológico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_departamento`
--

DROP TABLE IF EXISTS `cat_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_departamento` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_departamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_departamento`
--

LOCK TABLES `cat_departamento` WRITE;
/*!40000 ALTER TABLE `cat_departamento` DISABLE KEYS */;
INSERT INTO `cat_departamento` VALUES (1,'Ahuachapán','AH','Occidental'),(2,'Santa Ana','SA','Occidental'),(3,'Sonsonate','SO','Occidental'),(4,'Chalatenango','CH','Central'),(5,'La Libertad','LL','Central'),(6,'San Salvador','SS','Central'),(7,'Cuscatlán','CU','Central'),(8,'La Paz','LP','Central'),(9,'Cabañas','CA','Paracentral'),(10,'San Vicente','SV','Paracentral'),(11,'Usulután','US','Oriental'),(12,'San Miguel','SM','Oriental'),(13,'Morazán','MO','Oriental'),(14,'La Unión','LU','Oriental');
/*!40000 ALTER TABLE `cat_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_nivel_educativo`
--

DROP TABLE IF EXISTS `cat_nivel_educativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_nivel_educativo` (
  `id_nivel` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` int NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id_nivel`),
  UNIQUE KEY `nivel` (`nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_nivel_educativo`
--

LOCK TABLES `cat_nivel_educativo` WRITE;
/*!40000 ALTER TABLE `cat_nivel_educativo` DISABLE KEYS */;
INSERT INTO `cat_nivel_educativo` VALUES (1,'Primer Ciclo',1,'Comprende de 1° a 3° grado de educación básica'),(2,'Segundo Ciclo',2,'Comprende de 4° a 6° grado de educación básica'),(3,'Tercer Ciclo',3,'Comprende de 7° a 9° grado de educación básica'),(4,'Educación Media',4,'Comprende de 1° a 2° año de bachillerato (10° y 11°)');
/*!40000 ALTER TABLE `cat_nivel_educativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condición_socioeconómica`
--

DROP TABLE IF EXISTS `condición_socioeconómica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condición_socioeconómica` (
  `id_estudiante` int NOT NULL,
  `ingreso_hogar` decimal(10,2) NOT NULL,
  `trabaja` tinyint(1) NOT NULL DEFAULT '0',
  `apoyo_familiar` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `migración_familiar` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_estudiante`),
  KEY `idx_ingreso_hogar` (`ingreso_hogar`),
  KEY `idx_trabaja` (`trabaja`),
  KEY `idx_apoyo_familiar` (`apoyo_familiar`),
  CONSTRAINT `fk_socioeconomica_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_apoyo_familiar` CHECK ((`apoyo_familiar` in (_utf8mb4'Alto',_utf8mb4'Medio',_utf8mb4'Bajo',_utf8mb4'Nulo'))),
  CONSTRAINT `chk_ingreso_hogar` CHECK ((`ingreso_hogar` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Almacena información sobre el contexto socioeconómico familiar del estudiante';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condición_socioeconómica`
--

LOCK TABLES `condición_socioeconómica` WRITE;
/*!40000 ALTER TABLE `condición_socioeconómica` DISABLE KEYS */;
INSERT INTO `condición_socioeconómica` VALUES (1,285.50,0,'Medio',0),(2,650.00,0,'Alto',0),(3,195.00,1,'Bajo',1),(4,420.00,0,'Medio',0),(5,240.00,0,'Medio',0),(6,580.00,0,'Alto',0),(7,180.00,1,'Bajo',1),(8,520.00,0,'Alto',0),(9,270.00,0,'Medio',0),(10,710.00,0,'Alto',0),(11,190.00,1,'Bajo',1),(12,480.00,0,'Medio',0),(13,260.00,0,'Medio',0),(14,680.00,0,'Alto',0),(15,210.00,1,'Bajo',0),(16,450.00,0,'Medio',0),(17,255.00,0,'Medio',0),(18,620.00,0,'Alto',0),(19,185.00,1,'Bajo',1),(20,540.00,0,'Alto',0),(21,275.00,0,'Medio',0),(22,730.00,0,'Alto',0),(23,195.00,1,'Bajo',1),(24,490.00,0,'Medio',0),(25,250.00,0,'Medio',0),(26,245.00,0,'Medio',0),(27,640.00,0,'Alto',0),(28,175.00,1,'Bajo',1),(29,410.00,0,'Medio',0),(30,265.00,0,'Medio',0),(31,600.00,0,'Alto',0),(32,180.00,1,'Bajo',1),(33,530.00,0,'Alto',0),(34,270.00,0,'Medio',0),(35,690.00,0,'Alto',0),(36,200.00,1,'Bajo',1),(37,470.00,0,'Medio',0),(38,280.00,0,'Medio',0),(39,720.00,0,'Alto',0),(40,185.00,1,'Bajo',1),(41,255.00,0,'Medio',0),(42,630.00,0,'Alto',0),(43,170.00,1,'Bajo',1),(44,400.00,0,'Medio',0),(45,275.00,0,'Medio',0),(46,660.00,0,'Alto',0),(47,190.00,1,'Bajo',1),(48,550.00,0,'Alto',0),(49,260.00,0,'Medio',0),(50,700.00,0,'Alto',0),(51,180.00,1,'Bajo',1),(52,480.00,0,'Medio',0),(53,270.00,0,'Medio',0),(54,610.00,0,'Alto',0),(55,195.00,1,'Bajo',1),(56,560.00,0,'Alto',0),(57,265.00,0,'Medio',0),(58,670.00,0,'Alto',0),(59,185.00,1,'Bajo',1),(60,640.00,0,'Alto',0),(61,275.00,0,'Medio',0),(62,690.00,0,'Alto',0),(63,200.00,1,'Bajo',1),(64,580.00,0,'Alto',0),(65,250.00,0,'Medio',0),(66,650.00,0,'Alto',0),(67,190.00,1,'Bajo',1),(68,620.00,0,'Alto',0),(69,240.00,0,'Medio',0),(70,680.00,0,'Alto',0),(71,175.00,1,'Bajo',1),(72,540.00,0,'Alto',0),(73,270.00,0,'Medio',0),(74,660.00,0,'Alto',0),(75,180.00,1,'Bajo',1),(76,600.00,0,'Alto',0),(77,260.00,0,'Medio',0),(78,710.00,0,'Alto',0),(79,190.00,1,'Bajo',1),(80,590.00,0,'Alto',0),(81,275.00,0,'Medio',0),(82,720.00,0,'Alto',0),(83,185.00,1,'Bajo',1),(84,630.00,0,'Alto',0),(85,205.00,1,'Bajo',0),(86,490.00,0,'Medio',0),(87,255.00,0,'Medio',0),(88,670.00,0,'Alto',0),(89,195.00,1,'Bajo',1),(90,510.00,0,'Alto',0),(91,270.00,0,'Medio',0),(92,640.00,0,'Alto',0),(93,180.00,1,'Bajo',1),(94,460.00,0,'Medio',0),(95,265.00,0,'Medio',0),(96,660.00,0,'Alto',0),(97,185.00,1,'Bajo',1),(98,480.00,0,'Medio',0),(99,275.00,0,'Medio',0),(100,700.00,0,'Alto',0),(101,200.00,1,'Bajo',1),(102,570.00,0,'Alto',0),(103,260.00,0,'Medio',0),(104,650.00,0,'Alto',0),(105,190.00,1,'Bajo',1),(106,600.00,0,'Alto',0),(107,275.00,0,'Medio',0),(108,680.00,0,'Alto',0),(109,175.00,1,'Bajo',1),(110,620.00,0,'Alto',0),(111,250.00,0,'Medio',0),(112,670.00,0,'Alto',0),(113,180.00,1,'Bajo',1),(114,640.00,0,'Alto',0),(115,270.00,0,'Medio',0),(116,710.00,0,'Alto',0),(117,280.00,0,'Medio',0),(118,500.00,0,'Medio',0),(119,265.00,0,'Medio',0),(120,650.00,0,'Alto',0),(121,275.00,0,'Medio',0),(122,490.00,0,'Medio',0),(123,260.00,0,'Medio',0),(124,670.00,0,'Alto',0),(125,245.00,0,'Medio',0),(126,470.00,0,'Medio',0),(127,255.00,0,'Medio',0),(128,690.00,0,'Alto',0),(129,270.00,0,'Medio',0),(130,420.00,0,'Medio',0),(131,275.00,0,'Medio',0),(132,700.00,0,'Alto',0),(133,740.00,0,'Alto',0),(134,210.00,1,'Bajo',0),(135,560.00,0,'Alto',0),(136,265.00,0,'Medio',0),(137,750.00,0,'Alto',0),(138,205.00,1,'Bajo',1),(139,580.00,0,'Alto',0),(140,280.00,0,'Medio',0),(141,640.00,0,'Alto',0),(142,185.00,1,'Bajo',1),(143,510.00,0,'Alto',0),(144,260.00,0,'Medio',0),(145,670.00,0,'Alto',0),(146,195.00,1,'Bajo',1),(147,490.00,0,'Medio',0),(148,270.00,0,'Medio',0),(149,680.00,0,'Alto',0),(150,200.00,1,'Bajo',1),(151,590.00,0,'Alto',0),(152,265.00,0,'Medio',0),(153,700.00,0,'Alto',0),(154,180.00,1,'Bajo',1),(155,620.00,0,'Alto',0),(156,275.00,0,'Medio',0),(157,660.00,0,'Alto',0),(158,175.00,1,'Bajo',1),(159,540.00,0,'Alto',0),(160,270.00,0,'Medio',0),(161,720.00,0,'Alto',0),(162,185.00,1,'Bajo',1),(163,600.00,0,'Alto',0),(164,280.00,0,'Medio',0),(165,550.00,0,'Alto',0),(166,255.00,0,'Medio',0),(167,650.00,0,'Alto',0),(168,195.00,1,'Bajo',1),(169,500.00,0,'Medio',0),(170,265.00,0,'Medio',0),(171,670.00,0,'Alto',0),(172,190.00,1,'Bajo',1),(173,480.00,0,'Medio',0),(174,260.00,0,'Medio',0),(175,680.00,0,'Alto',0),(176,180.00,1,'Bajo',1),(177,430.00,0,'Medio',0),(178,275.00,0,'Medio',0),(179,710.00,0,'Alto',0),(180,185.00,1,'Bajo',1),(181,640.00,0,'Alto',0),(182,270.00,0,'Medio',0),(183,670.00,0,'Alto',0),(184,200.00,1,'Bajo',1),(185,630.00,0,'Alto',0),(186,275.00,0,'Medio',0),(187,690.00,0,'Alto',0),(188,190.00,1,'Bajo',1),(189,610.00,0,'Alto',0),(190,265.00,0,'Medio',0),(191,700.00,0,'Alto',0),(192,175.00,1,'Bajo',1),(193,620.00,0,'Alto',0),(194,270.00,0,'Medio',0),(195,720.00,0,'Alto',0),(196,180.00,1,'Bajo',1),(197,760.00,0,'Alto',0),(198,205.00,1,'Bajo',1),(199,530.00,0,'Alto',0),(200,260.00,0,'Medio',0),(201,770.00,0,'Alto',0),(202,195.00,1,'Bajo',1),(203,510.00,0,'Alto',0),(204,280.00,0,'Medio',0),(205,640.00,0,'Alto',0),(206,185.00,1,'Bajo',1),(207,490.00,0,'Medio',0),(208,265.00,0,'Medio',0),(209,670.00,0,'Alto',0),(210,190.00,1,'Bajo',1),(211,410.00,0,'Medio',0),(212,275.00,0,'Medio',0),(213,680.00,0,'Alto',0),(214,180.00,1,'Bajo',1),(215,600.00,0,'Alto',0),(216,270.00,0,'Medio',0),(217,700.00,0,'Alto',0),(218,195.00,1,'Bajo',1),(219,630.00,0,'Alto',0),(220,280.00,0,'Medio',0),(221,670.00,0,'Alto',0),(222,175.00,1,'Bajo',1),(223,570.00,0,'Alto',0),(224,265.00,0,'Medio',0),(225,720.00,0,'Alto',0),(226,185.00,1,'Bajo',1),(227,610.00,0,'Alto',0),(228,275.00,0,'Medio',0),(229,520.00,0,'Alto',0),(230,260.00,0,'Medio',0),(231,500.00,0,'Medio',0),(232,280.00,0,'Medio',0),(233,470.00,0,'Medio',0),(234,255.00,0,'Medio',0),(235,440.00,0,'Medio',0),(236,270.00,0,'Medio',0),(237,650.00,0,'Alto',0),(238,210.00,1,'Bajo',0),(239,670.00,0,'Alto',0),(240,205.00,1,'Bajo',1),(241,690.00,0,'Alto',0),(242,190.00,1,'Bajo',1),(243,710.00,0,'Alto',0),(244,185.00,1,'Bajo',1),(245,560.00,0,'Alto',0),(246,195.00,1,'Bajo',1),(247,480.00,0,'Medio',0),(248,180.00,1,'Bajo',1),(249,640.00,0,'Alto',0),(250,200.00,1,'Bajo',1);
/*!40000 ALTER TABLE `condición_socioeconómica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desempeño_académico`
--

DROP TABLE IF EXISTS `desempeño_académico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desempeño_académico` (
  `id_estudiante` int NOT NULL,
  `promedio_general` decimal(3,1) NOT NULL,
  `materias_reprobadas` int NOT NULL DEFAULT '0',
  `asistencia_porcentaje` decimal(5,2) NOT NULL,
  `repitencia` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_estudiante`),
  KEY `idx_promedio_general` (`promedio_general`),
  KEY `idx_repitencia` (`repitencia`),
  CONSTRAINT `fk_desempeño_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_asistencia_porcentaje` CHECK ((`asistencia_porcentaje` between 0.00 and 100.00)),
  CONSTRAINT `chk_materias_reprobadas` CHECK ((`materias_reprobadas` >= 0)),
  CONSTRAINT `chk_promedio_general` CHECK ((`promedio_general` between 0.0 and 10.0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Almacena métricas de rendimiento académico del estudiante';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desempeño_académico`
--

LOCK TABLES `desempeño_académico` WRITE;
/*!40000 ALTER TABLE `desempeño_académico` DISABLE KEYS */;
INSERT INTO `desempeño_académico` VALUES (1,7.2,0,88.50,0),(2,8.1,0,92.30,0),(3,5.8,2,72.10,1),(4,6.4,1,78.50,0),(5,6.9,1,85.20,0),(6,8.5,0,94.70,0),(7,5.2,3,68.30,1),(8,7.8,0,89.10,0),(9,7.5,0,87.90,0),(10,8.3,0,93.20,0),(11,5.5,2,70.80,1),(12,7.1,1,81.40,0),(13,7.3,0,86.70,0),(14,8.4,0,91.80,0),(15,5.9,2,73.50,0),(16,6.8,1,79.20,0),(17,7.0,1,84.30,0),(18,8.2,0,90.50,0),(19,5.4,3,69.70,1),(20,7.6,0,88.20,0),(21,7.1,0,85.80,0),(22,8.6,0,95.10,0),(23,5.7,2,71.90,1),(24,7.3,1,82.60,0),(25,6.8,1,80.40,0),(26,6.5,1,76.80,0),(27,7.9,0,89.70,0),(28,5.1,3,67.20,1),(29,6.2,2,74.50,0),(30,6.7,1,78.90,0),(31,8.0,0,90.30,0),(32,5.3,3,68.70,1),(33,7.4,0,85.60,0),(34,6.9,1,79.80,0),(35,8.1,0,91.20,0),(36,5.6,2,72.40,1),(37,7.2,1,83.10,0),(38,7.0,0,84.70,0),(39,8.3,0,92.80,0),(40,5.4,3,69.10,1),(41,6.8,1,77.50,0),(42,7.8,0,88.90,0),(43,5.2,3,66.80,1),(44,6.3,2,75.20,0),(45,7.1,0,83.40,0),(46,8.2,0,91.60,0),(47,5.5,2,71.30,1),(48,7.5,0,86.80,0),(49,6.6,1,78.20,0),(50,8.4,0,93.50,0),(51,5.3,3,68.90,1),(52,7.0,1,82.30,0),(53,6.9,1,80.10,0),(54,8.0,0,90.70,0),(55,5.7,2,73.60,1),(56,7.6,0,87.40,0),(57,6.8,1,79.50,0),(58,8.1,0,91.90,0),(59,5.4,3,69.80,1),(60,7.9,0,89.30,0),(61,7.2,0,84.90,0),(62,8.3,0,92.40,0),(63,5.6,2,72.70,1),(64,7.7,0,88.10,0),(65,6.7,1,77.90,0),(66,8.2,0,90.80,0),(67,5.5,3,70.50,1),(68,7.8,0,89.60,0),(69,6.5,1,76.30,0),(70,8.0,0,91.10,0),(71,5.2,3,67.80,1),(72,7.4,0,85.20,0),(73,6.9,1,80.70,0),(74,8.1,0,90.50,0),(75,5.3,3,68.40,1),(76,7.6,0,87.80,0),(77,6.8,1,78.60,0),(78,8.3,0,92.10,0),(79,5.4,2,71.20,1),(80,7.7,0,88.50,0),(81,7.0,1,83.70,0),(82,8.4,0,93.30,0),(83,5.5,3,69.40,1),(84,7.8,0,89.80,0),(85,5.8,2,73.10,1),(86,7.3,1,84.60,0),(87,6.6,1,77.20,0),(88,8.0,0,90.90,0),(89,5.6,2,72.30,1),(90,7.4,0,85.80,0),(91,7.1,0,83.90,0),(92,8.2,0,91.40,0),(93,5.3,3,68.10,1),(94,7.0,1,81.70,0),(95,6.7,1,78.40,0),(96,8.1,0,90.60,0),(97,5.4,3,69.90,1),(98,7.2,1,83.20,0),(99,6.9,0,82.50,0),(100,8.3,0,92.70,0),(101,5.7,2,73.80,1),(102,7.5,0,86.30,0),(103,6.8,1,79.10,0),(104,8.0,0,90.20,0),(105,5.5,3,70.60,1),(106,7.6,0,87.50,0),(107,7.0,1,83.80,0),(108,8.2,0,91.30,0),(109,5.2,3,67.40,1),(110,7.7,0,88.70,0),(111,6.6,1,77.60,0),(112,8.1,0,90.80,0),(113,5.3,3,68.50,1),(114,7.8,0,89.40,0),(115,6.9,1,80.30,0),(116,8.3,0,92.50,0),(117,7.1,0,84.20,0),(118,7.4,1,85.90,0),(119,6.7,1,78.80,0),(120,8.0,0,90.40,0),(121,7.2,0,85.10,0),(122,7.3,1,84.30,0),(123,6.8,1,79.70,0),(124,8.1,0,91.00,0),(125,6.5,1,76.90,0),(126,7.0,1,82.10,0),(127,6.6,1,77.80,0),(128,8.2,0,91.70,0),(129,6.9,1,80.60,0),(130,6.4,2,75.30,0),(131,7.0,1,83.50,0),(132,8.3,0,92.20,0),(133,8.4,0,93.80,0),(134,5.9,2,74.20,1),(135,7.5,0,86.50,0),(136,6.8,1,79.30,0),(137,8.5,0,94.10,0),(138,5.8,2,73.40,1),(139,7.6,0,87.20,0),(140,7.1,0,84.80,0),(141,8.0,0,90.10,0),(142,5.4,3,69.50,1),(143,7.3,1,84.10,0),(144,6.7,1,78.10,0),(145,8.1,0,91.50,0),(146,5.5,2,71.70,1),(147,7.2,1,83.60,0),(148,6.9,1,80.90,0),(149,8.2,0,91.80,0),(150,5.6,2,72.90,1),(151,7.7,0,88.30,0),(152,6.8,1,79.40,0),(153,8.3,0,92.60,0),(154,5.3,3,68.20,1),(155,7.8,0,89.20,0),(156,7.0,1,83.10,0),(157,8.1,0,90.70,0),(158,5.2,3,67.60,1),(159,7.4,0,85.40,0),(160,6.9,1,80.20,0),(161,8.4,0,93.10,0),(162,5.4,3,69.30,1),(163,7.6,0,87.70,0),(164,7.1,1,84.50,0),(165,7.5,0,86.90,0),(166,6.6,1,77.40,0),(167,8.0,0,90.30,0),(168,5.7,2,73.20,1),(169,7.2,1,83.80,0),(170,6.8,1,79.60,0),(171,8.1,0,91.20,0),(172,5.5,2,71.50,1),(173,7.1,1,82.40,0),(174,6.7,1,78.30,0),(175,8.2,0,91.90,0),(176,5.3,3,68.60,1),(177,6.5,2,75.80,0),(178,7.0,1,83.30,0),(179,8.3,0,92.30,0),(180,5.4,3,69.70,1),(181,7.9,0,89.50,0),(182,6.9,1,80.50,0),(183,8.1,0,91.10,0),(184,5.6,2,72.80,1),(185,7.8,0,88.90,0),(186,7.0,1,83.70,0),(187,8.2,0,91.60,0),(188,5.5,3,70.40,1),(189,7.6,0,87.60,0),(190,6.8,1,79.80,0),(191,8.3,0,92.40,0),(192,5.2,3,67.90,1),(193,7.7,0,88.60,0),(194,6.9,1,80.80,0),(195,8.4,0,93.20,0),(196,5.3,3,68.30,1),(197,8.5,0,94.30,0),(198,5.8,2,73.70,1),(199,7.4,0,85.70,0),(200,6.7,1,78.50,0),(201,8.6,0,94.60,0),(202,5.7,2,72.50,1),(203,7.3,1,84.40,0),(204,7.1,0,84.90,0),(205,8.0,0,90.50,0),(206,5.4,3,69.20,1),(207,7.2,1,83.40,0),(208,6.8,1,79.90,0),(209,8.1,0,91.30,0),(210,5.5,2,71.80,1),(211,6.6,2,76.40,0),(212,7.0,1,83.90,0),(213,8.2,0,91.70,0),(214,5.3,3,68.70,1),(215,7.7,0,88.40,0),(216,6.9,1,80.40,0),(217,8.3,0,92.50,0),(218,5.6,2,72.60,1),(219,7.8,0,89.10,0),(220,7.1,1,84.60,0),(221,8.1,0,90.90,0),(222,5.2,3,67.50,1),(223,7.5,0,86.70,0),(224,6.8,1,79.20,0),(225,8.4,0,93.40,0),(226,5.4,3,69.60,1),(227,7.6,0,87.90,0),(228,7.0,1,83.60,0),(229,7.4,1,85.30,0),(230,6.7,1,78.70,0),(231,7.3,1,84.20,0),(232,7.2,0,85.50,0),(233,7.0,1,81.80,0),(234,6.6,1,77.30,0),(235,6.7,2,76.20,0),(236,6.9,1,80.70,0),(237,8.0,0,90.60,0),(238,5.9,2,74.10,1),(239,8.1,0,91.40,0),(240,5.8,2,73.90,1),(241,8.2,0,91.80,0),(242,5.5,3,70.80,1),(243,8.3,0,92.90,0),(244,5.4,3,69.80,1),(245,7.5,0,86.40,0),(246,5.7,2,73.30,1),(247,7.1,1,82.90,0),(248,5.3,3,68.80,1),(249,7.9,0,89.70,0),(250,5.6,2,72.20,1);
/*!40000 ALTER TABLE `desempeño_académico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL AUTO_INCREMENT,
  `año_lectivo` int NOT NULL,
  `nivel_educativo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona_residencia` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `idx_año_lectivo` (`año_lectivo`),
  KEY `idx_nivel_educativo` (`nivel_educativo`),
  KEY `idx_zona_residencia` (`zona_residencia`),
  KEY `idx_departamento` (`departamento`),
  CONSTRAINT `chk_año_lectivo` CHECK ((`año_lectivo` between 2000 and 2100)),
  CONSTRAINT `chk_departamento` CHECK ((`departamento` in (_utf8mb4'Ahuachapán',_utf8mb4'Cabañas',_utf8mb4'Chalatenango',_utf8mb4'Cuscatlán',_utf8mb4'La Libertad',_utf8mb4'La Paz',_utf8mb4'La Unión',_utf8mb4'Morazán',_utf8mb4'San Miguel',_utf8mb4'San Salvador',_utf8mb4'San Vicente',_utf8mb4'Santa Ana',_utf8mb4'Sonsonate',_utf8mb4'Usulután'))),
  CONSTRAINT `chk_nivel_educativo` CHECK ((`nivel_educativo` in (_utf8mb4'Primer Ciclo',_utf8mb4'Segundo Ciclo',_utf8mb4'Tercer Ciclo',_utf8mb4'Educación Media'))),
  CONSTRAINT `chk_zona_residencia` CHECK ((`zona_residencia` in (_utf8mb4'Rural',_utf8mb4'Urbana')))
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabla principal que almacena la identificación y contexto básico de cada estudiante';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,2018,'Primer Ciclo','Rural','La Libertad'),(2,2018,'Segundo Ciclo','Urbana','San Salvador'),(3,2018,'Tercer Ciclo','Rural','Usulután'),(4,2018,'Educación Media','Urbana','San Salvador'),(5,2018,'Primer Ciclo','Rural','Cabañas'),(6,2018,'Segundo Ciclo','Urbana','Santa Ana'),(7,2018,'Tercer Ciclo','Rural','Morazán'),(8,2018,'Educación Media','Urbana','La Libertad'),(9,2018,'Primer Ciclo','Rural','San Miguel'),(10,2018,'Segundo Ciclo','Urbana','San Salvador'),(11,2018,'Tercer Ciclo','Rural','Chalatenango'),(12,2018,'Educación Media','Urbana','Santa Ana'),(13,2019,'Primer Ciclo','Rural','La Paz'),(14,2019,'Segundo Ciclo','Urbana','San Salvador'),(15,2019,'Tercer Ciclo','Rural','Ahuachapán'),(16,2019,'Educación Media','Urbana','San Salvador'),(17,2019,'Primer Ciclo','Rural','Sonsonate'),(18,2019,'Segundo Ciclo','Urbana','La Libertad'),(19,2019,'Tercer Ciclo','Rural','Cuscatlán'),(20,2019,'Educación Media','Urbana','Santa Ana'),(21,2019,'Primer Ciclo','Rural','San Vicente'),(22,2019,'Segundo Ciclo','Urbana','San Salvador'),(23,2019,'Tercer Ciclo','Rural','La Unión'),(24,2019,'Educación Media','Urbana','San Miguel'),(25,2019,'Primer Ciclo','Rural','Morazán'),(26,2020,'Primer Ciclo','Rural','Chalatenango'),(27,2020,'Segundo Ciclo','Urbana','San Salvador'),(28,2020,'Tercer Ciclo','Rural','Cabañas'),(29,2020,'Educación Media','Urbana','San Salvador'),(30,2020,'Primer Ciclo','Rural','Usulután'),(31,2020,'Segundo Ciclo','Urbana','Santa Ana'),(32,2020,'Tercer Ciclo','Rural','La Paz'),(33,2020,'Educación Media','Urbana','La Libertad'),(34,2020,'Primer Ciclo','Rural','Ahuachapán'),(35,2020,'Segundo Ciclo','Urbana','San Salvador'),(36,2020,'Tercer Ciclo','Rural','Sonsonate'),(37,2020,'Educación Media','Urbana','San Miguel'),(38,2020,'Primer Ciclo','Rural','Cuscatlán'),(39,2020,'Segundo Ciclo','Urbana','San Salvador'),(40,2020,'Tercer Ciclo','Rural','San Vicente'),(41,2021,'Primer Ciclo','Rural','La Unión'),(42,2021,'Segundo Ciclo','Urbana','San Salvador'),(43,2021,'Tercer Ciclo','Rural','Morazán'),(44,2021,'Educación Media','Urbana','San Salvador'),(45,2021,'Primer Ciclo','Rural','Chalatenango'),(46,2021,'Segundo Ciclo','Urbana','Santa Ana'),(47,2021,'Tercer Ciclo','Rural','Cabañas'),(48,2021,'Educación Media','Urbana','La Libertad'),(49,2021,'Primer Ciclo','Rural','Usulután'),(50,2021,'Segundo Ciclo','Urbana','San Salvador'),(51,2021,'Tercer Ciclo','Rural','La Paz'),(52,2021,'Educación Media','Urbana','San Miguel'),(53,2018,'Segundo Ciclo','Rural','Ahuachapán'),(54,2018,'Tercer Ciclo','Urbana','San Salvador'),(55,2018,'Educación Media','Rural','Sonsonate'),(56,2018,'Primer Ciclo','Urbana','La Libertad'),(57,2018,'Segundo Ciclo','Rural','Cuscatlán'),(58,2018,'Tercer Ciclo','Urbana','Santa Ana'),(59,2018,'Educación Media','Rural','San Vicente'),(60,2018,'Primer Ciclo','Urbana','San Salvador'),(61,2019,'Segundo Ciclo','Rural','La Unión'),(62,2019,'Tercer Ciclo','Urbana','San Salvador'),(63,2019,'Educación Media','Rural','Morazán'),(64,2019,'Primer Ciclo','Urbana','Santa Ana'),(65,2019,'Segundo Ciclo','Rural','Chalatenango'),(66,2019,'Tercer Ciclo','Urbana','San Salvador'),(67,2019,'Educación Media','Rural','Cabañas'),(68,2019,'Primer Ciclo','Urbana','La Libertad'),(69,2020,'Segundo Ciclo','Rural','Usulután'),(70,2020,'Tercer Ciclo','Urbana','San Salvador'),(71,2020,'Educación Media','Rural','La Paz'),(72,2020,'Primer Ciclo','Urbana','San Miguel'),(73,2020,'Segundo Ciclo','Rural','Ahuachapán'),(74,2020,'Tercer Ciclo','Urbana','Santa Ana'),(75,2020,'Educación Media','Rural','Sonsonate'),(76,2020,'Primer Ciclo','Urbana','San Salvador'),(77,2021,'Segundo Ciclo','Rural','Cuscatlán'),(78,2021,'Tercer Ciclo','Urbana','San Salvador'),(79,2021,'Educación Media','Rural','San Vicente'),(80,2021,'Primer Ciclo','Urbana','La Libertad'),(81,2021,'Segundo Ciclo','Rural','La Unión'),(82,2021,'Tercer Ciclo','Urbana','San Salvador'),(83,2021,'Educación Media','Rural','Morazán'),(84,2021,'Primer Ciclo','Urbana','Santa Ana'),(85,2018,'Tercer Ciclo','Rural','Chalatenango'),(86,2018,'Educación Media','Urbana','San Salvador'),(87,2018,'Primer Ciclo','Rural','Cabañas'),(88,2018,'Segundo Ciclo','Urbana','San Miguel'),(89,2019,'Tercer Ciclo','Rural','Usulután'),(90,2019,'Educación Media','Urbana','San Salvador'),(91,2019,'Primer Ciclo','Rural','La Paz'),(92,2019,'Segundo Ciclo','Urbana','La Libertad'),(93,2020,'Tercer Ciclo','Rural','Ahuachapán'),(94,2020,'Educación Media','Urbana','San Salvador'),(95,2020,'Primer Ciclo','Rural','Sonsonate'),(96,2020,'Segundo Ciclo','Urbana','Santa Ana'),(97,2021,'Tercer Ciclo','Rural','Cuscatlán'),(98,2021,'Educación Media','Urbana','San Salvador'),(99,2021,'Primer Ciclo','Rural','San Vicente'),(100,2021,'Segundo Ciclo','Urbana','San Miguel'),(101,2018,'Educación Media','Rural','La Unión'),(102,2018,'Primer Ciclo','Urbana','San Salvador'),(103,2018,'Segundo Ciclo','Rural','Morazán'),(104,2018,'Tercer Ciclo','Urbana','Santa Ana'),(105,2019,'Educación Media','Rural','Chalatenango'),(106,2019,'Primer Ciclo','Urbana','San Salvador'),(107,2019,'Segundo Ciclo','Rural','Cabañas'),(108,2019,'Tercer Ciclo','Urbana','La Libertad'),(109,2020,'Educación Media','Rural','Usulután'),(110,2020,'Primer Ciclo','Urbana','San Salvador'),(111,2020,'Segundo Ciclo','Rural','La Paz'),(112,2020,'Tercer Ciclo','Urbana','San Miguel'),(113,2021,'Educación Media','Rural','Ahuachapán'),(114,2021,'Primer Ciclo','Urbana','San Salvador'),(115,2021,'Segundo Ciclo','Rural','Sonsonate'),(116,2021,'Tercer Ciclo','Urbana','Santa Ana'),(117,2018,'Primer Ciclo','Rural','Cuscatlán'),(118,2018,'Educación Media','Urbana','San Salvador'),(119,2018,'Segundo Ciclo','Rural','San Vicente'),(120,2018,'Tercer Ciclo','Urbana','La Libertad'),(121,2019,'Primer Ciclo','Rural','La Unión'),(122,2019,'Educación Media','Urbana','San Salvador'),(123,2019,'Segundo Ciclo','Rural','Morazán'),(124,2019,'Tercer Ciclo','Urbana','Santa Ana'),(125,2020,'Primer Ciclo','Rural','Chalatenango'),(126,2020,'Educación Media','Urbana','San Salvador'),(127,2020,'Segundo Ciclo','Rural','Cabañas'),(128,2020,'Tercer Ciclo','Urbana','San Miguel'),(129,2021,'Primer Ciclo','Rural','Usulután'),(130,2021,'Educación Media','Urbana','San Salvador'),(131,2021,'Segundo Ciclo','Rural','La Paz'),(132,2021,'Tercer Ciclo','Urbana','La Libertad'),(133,2018,'Segundo Ciclo','Urbana','San Salvador'),(134,2018,'Tercer Ciclo','Rural','Ahuachapán'),(135,2018,'Educación Media','Urbana','Santa Ana'),(136,2018,'Primer Ciclo','Rural','Sonsonate'),(137,2019,'Segundo Ciclo','Urbana','San Salvador'),(138,2019,'Tercer Ciclo','Rural','Cuscatlán'),(139,2019,'Educación Media','Urbana','San Miguel'),(140,2019,'Primer Ciclo','Rural','San Vicente'),(141,2020,'Segundo Ciclo','Urbana','San Salvador'),(142,2020,'Tercer Ciclo','Rural','La Unión'),(143,2020,'Educación Media','Urbana','La Libertad'),(144,2020,'Primer Ciclo','Rural','Morazán'),(145,2021,'Segundo Ciclo','Urbana','San Salvador'),(146,2021,'Tercer Ciclo','Rural','Chalatenango'),(147,2021,'Educación Media','Urbana','Santa Ana'),(148,2021,'Primer Ciclo','Rural','Cabañas'),(149,2018,'Tercer Ciclo','Urbana','San Salvador'),(150,2018,'Educación Media','Rural','Usulután'),(151,2018,'Primer Ciclo','Urbana','San Miguel'),(152,2018,'Segundo Ciclo','Rural','La Paz'),(153,2019,'Tercer Ciclo','Urbana','San Salvador'),(154,2019,'Educación Media','Rural','Ahuachapán'),(155,2019,'Primer Ciclo','Urbana','La Libertad'),(156,2019,'Segundo Ciclo','Rural','Sonsonate'),(157,2020,'Tercer Ciclo','Urbana','San Salvador'),(158,2020,'Educación Media','Rural','Cuscatlán'),(159,2020,'Primer Ciclo','Urbana','Santa Ana'),(160,2020,'Segundo Ciclo','Rural','San Vicente'),(161,2021,'Tercer Ciclo','Urbana','San Salvador'),(162,2021,'Educación Media','Rural','La Unión'),(163,2021,'Primer Ciclo','Urbana','San Miguel'),(164,2021,'Segundo Ciclo','Rural','Morazán'),(165,2018,'Educación Media','Urbana','San Salvador'),(166,2018,'Primer Ciclo','Rural','Chalatenango'),(167,2018,'Segundo Ciclo','Urbana','La Libertad'),(168,2018,'Tercer Ciclo','Rural','Cabañas'),(169,2019,'Educación Media','Urbana','San Salvador'),(170,2019,'Primer Ciclo','Rural','Usulután'),(171,2019,'Segundo Ciclo','Urbana','Santa Ana'),(172,2019,'Tercer Ciclo','Rural','La Paz'),(173,2020,'Educación Media','Urbana','San Salvador'),(174,2020,'Primer Ciclo','Rural','Ahuachapán'),(175,2020,'Segundo Ciclo','Urbana','San Miguel'),(176,2020,'Tercer Ciclo','Rural','Sonsonate'),(177,2021,'Educación Media','Urbana','San Salvador'),(178,2021,'Primer Ciclo','Rural','Cuscatlán'),(179,2021,'Segundo Ciclo','Urbana','La Libertad'),(180,2021,'Tercer Ciclo','Rural','San Vicente'),(181,2018,'Primer Ciclo','Urbana','San Salvador'),(182,2018,'Segundo Ciclo','Rural','La Unión'),(183,2018,'Tercer Ciclo','Urbana','Santa Ana'),(184,2018,'Educación Media','Rural','Morazán'),(185,2019,'Primer Ciclo','Urbana','San Salvador'),(186,2019,'Segundo Ciclo','Rural','Chalatenango'),(187,2019,'Tercer Ciclo','Urbana','San Miguel'),(188,2019,'Educación Media','Rural','Cabañas'),(189,2020,'Primer Ciclo','Urbana','San Salvador'),(190,2020,'Segundo Ciclo','Rural','Usulután'),(191,2020,'Tercer Ciclo','Urbana','La Libertad'),(192,2020,'Educación Media','Rural','La Paz'),(193,2021,'Primer Ciclo','Urbana','San Salvador'),(194,2021,'Segundo Ciclo','Rural','Ahuachapán'),(195,2021,'Tercer Ciclo','Urbana','Santa Ana'),(196,2021,'Educación Media','Rural','Sonsonate'),(197,2018,'Segundo Ciclo','Urbana','San Salvador'),(198,2018,'Tercer Ciclo','Rural','Cuscatlán'),(199,2018,'Educación Media','Urbana','San Miguel'),(200,2018,'Primer Ciclo','Rural','San Vicente'),(201,2019,'Segundo Ciclo','Urbana','San Salvador'),(202,2019,'Tercer Ciclo','Rural','La Unión'),(203,2019,'Educación Media','Urbana','La Libertad'),(204,2019,'Primer Ciclo','Rural','Morazán'),(205,2020,'Segundo Ciclo','Urbana','San Salvador'),(206,2020,'Tercer Ciclo','Rural','Chalatenango'),(207,2020,'Educación Media','Urbana','Santa Ana'),(208,2020,'Primer Ciclo','Rural','Cabañas'),(209,2021,'Segundo Ciclo','Urbana','San Salvador'),(210,2021,'Tercer Ciclo','Rural','Usulután'),(211,2021,'Educación Media','Urbana','San Miguel'),(212,2021,'Primer Ciclo','Rural','La Paz'),(213,2018,'Tercer Ciclo','Urbana','San Salvador'),(214,2018,'Educación Media','Rural','Ahuachapán'),(215,2018,'Primer Ciclo','Urbana','La Libertad'),(216,2018,'Segundo Ciclo','Rural','Sonsonate'),(217,2019,'Tercer Ciclo','Urbana','San Salvador'),(218,2019,'Educación Media','Rural','Cuscatlán'),(219,2019,'Primer Ciclo','Urbana','Santa Ana'),(220,2019,'Segundo Ciclo','Rural','San Vicente'),(221,2020,'Tercer Ciclo','Urbana','San Salvador'),(222,2020,'Educación Media','Rural','La Unión'),(223,2020,'Primer Ciclo','Urbana','San Miguel'),(224,2020,'Segundo Ciclo','Rural','Morazán'),(225,2021,'Tercer Ciclo','Urbana','San Salvador'),(226,2021,'Educación Media','Rural','Chalatenango'),(227,2021,'Primer Ciclo','Urbana','La Libertad'),(228,2021,'Segundo Ciclo','Rural','Cabañas'),(229,2018,'Educación Media','Urbana','San Salvador'),(230,2018,'Primer Ciclo','Rural','Usulután'),(231,2019,'Educación Media','Urbana','San Salvador'),(232,2019,'Primer Ciclo','Rural','La Paz'),(233,2020,'Educación Media','Urbana','San Salvador'),(234,2020,'Primer Ciclo','Rural','Ahuachapán'),(235,2021,'Educación Media','Urbana','San Salvador'),(236,2021,'Primer Ciclo','Rural','Sonsonate'),(237,2018,'Segundo Ciclo','Urbana','Santa Ana'),(238,2018,'Tercer Ciclo','Rural','Cuscatlán'),(239,2019,'Segundo Ciclo','Urbana','San Miguel'),(240,2019,'Tercer Ciclo','Rural','San Vicente'),(241,2020,'Segundo Ciclo','Urbana','La Libertad'),(242,2020,'Tercer Ciclo','Rural','La Unión'),(243,2021,'Segundo Ciclo','Urbana','Santa Ana'),(244,2021,'Tercer Ciclo','Rural','Morazán'),(245,2018,'Educación Media','Urbana','San Salvador'),(246,2019,'Educación Media','Rural','Chalatenango'),(247,2020,'Educación Media','Urbana','San Miguel'),(248,2021,'Educación Media','Rural','Cabañas'),(249,2018,'Primer Ciclo','Urbana','San Salvador'),(250,2021,'Tercer Ciclo','Rural','Usulután');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable_objetivo`
--

DROP TABLE IF EXISTS `variable_objetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variable_objetivo` (
  `id_estudiante` int NOT NULL,
  `riesgo_desercion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rendimiento_académico` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `idx_riesgo_desercion` (`riesgo_desercion`),
  KEY `idx_rendimiento_académico` (`rendimiento_académico`),
  CONSTRAINT `fk_variable_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_rendimiento_académico` CHECK ((`rendimiento_académico` in (_utf8mb4'Alto',_utf8mb4'Medio',_utf8mb4'Bajo'))),
  CONSTRAINT `chk_riesgo_desercion` CHECK ((`riesgo_desercion` in (_utf8mb4'Alto',_utf8mb4'Medio',_utf8mb4'Bajo')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contiene las variables objetivo para análisis predictivo de deserción';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variable_objetivo`
--

LOCK TABLES `variable_objetivo` WRITE;
/*!40000 ALTER TABLE `variable_objetivo` DISABLE KEYS */;
INSERT INTO `variable_objetivo` VALUES (1,'Bajo','Medio'),(2,'Bajo','Alto'),(3,'Alto','Bajo'),(4,'Medio','Medio'),(5,'Bajo','Medio'),(6,'Bajo','Alto'),(7,'Alto','Bajo'),(8,'Bajo','Alto'),(9,'Bajo','Medio'),(10,'Bajo','Alto'),(11,'Alto','Bajo'),(12,'Medio','Medio'),(13,'Bajo','Medio'),(14,'Bajo','Alto'),(15,'Medio','Bajo'),(16,'Medio','Medio'),(17,'Medio','Medio'),(18,'Bajo','Alto'),(19,'Alto','Bajo'),(20,'Bajo','Alto'),(21,'Bajo','Medio'),(22,'Bajo','Alto'),(23,'Alto','Bajo'),(24,'Medio','Medio'),(25,'Medio','Medio'),(26,'Medio','Medio'),(27,'Bajo','Alto'),(28,'Alto','Bajo'),(29,'Medio','Medio'),(30,'Medio','Medio'),(31,'Bajo','Alto'),(32,'Alto','Bajo'),(33,'Bajo','Medio'),(34,'Medio','Medio'),(35,'Bajo','Alto'),(36,'Alto','Bajo'),(37,'Medio','Medio'),(38,'Bajo','Medio'),(39,'Bajo','Alto'),(40,'Alto','Bajo'),(41,'Medio','Medio'),(42,'Bajo','Alto'),(43,'Alto','Bajo'),(44,'Medio','Medio'),(45,'Bajo','Medio'),(46,'Bajo','Alto'),(47,'Alto','Bajo'),(48,'Bajo','Medio'),(49,'Medio','Medio'),(50,'Bajo','Alto'),(51,'Alto','Bajo'),(52,'Medio','Medio'),(53,'Medio','Medio'),(54,'Bajo','Alto'),(55,'Alto','Bajo'),(56,'Bajo','Medio'),(57,'Medio','Medio'),(58,'Bajo','Alto'),(59,'Alto','Bajo'),(60,'Bajo','Alto'),(61,'Bajo','Medio'),(62,'Bajo','Alto'),(63,'Alto','Bajo'),(64,'Bajo','Medio'),(65,'Medio','Medio'),(66,'Bajo','Alto'),(67,'Alto','Bajo'),(68,'Bajo','Alto'),(69,'Medio','Medio'),(70,'Bajo','Alto'),(71,'Alto','Bajo'),(72,'Bajo','Medio'),(73,'Medio','Medio'),(74,'Bajo','Alto'),(75,'Alto','Bajo'),(76,'Bajo','Medio'),(77,'Medio','Medio'),(78,'Bajo','Alto'),(79,'Alto','Bajo'),(80,'Bajo','Medio'),(81,'Bajo','Medio'),(82,'Bajo','Alto'),(83,'Alto','Bajo'),(84,'Bajo','Alto'),(85,'Alto','Bajo'),(86,'Medio','Medio'),(87,'Medio','Medio'),(88,'Bajo','Alto'),(89,'Alto','Bajo'),(90,'Bajo','Medio'),(91,'Bajo','Medio'),(92,'Bajo','Alto'),(93,'Alto','Bajo'),(94,'Medio','Medio'),(95,'Medio','Medio'),(96,'Bajo','Alto'),(97,'Alto','Bajo'),(98,'Medio','Medio'),(99,'Bajo','Medio'),(100,'Bajo','Alto'),(101,'Alto','Bajo'),(102,'Bajo','Medio'),(103,'Medio','Medio'),(104,'Bajo','Alto'),(105,'Alto','Bajo'),(106,'Bajo','Medio'),(107,'Bajo','Medio'),(108,'Bajo','Alto'),(109,'Alto','Bajo'),(110,'Bajo','Medio'),(111,'Medio','Medio'),(112,'Bajo','Alto'),(113,'Alto','Bajo'),(114,'Bajo','Alto'),(115,'Medio','Medio'),(116,'Bajo','Alto'),(117,'Bajo','Medio'),(118,'Medio','Medio'),(119,'Medio','Medio'),(120,'Bajo','Alto'),(121,'Bajo','Medio'),(122,'Medio','Medio'),(123,'Medio','Medio'),(124,'Bajo','Alto'),(125,'Medio','Medio'),(126,'Medio','Medio'),(127,'Medio','Medio'),(128,'Bajo','Alto'),(129,'Medio','Medio'),(130,'Medio','Medio'),(131,'Bajo','Medio'),(132,'Bajo','Alto'),(133,'Bajo','Alto'),(134,'Medio','Bajo'),(135,'Bajo','Medio'),(136,'Medio','Medio'),(137,'Bajo','Alto'),(138,'Alto','Bajo'),(139,'Bajo','Medio'),(140,'Bajo','Medio'),(141,'Bajo','Alto'),(142,'Alto','Bajo'),(143,'Bajo','Medio'),(144,'Medio','Medio'),(145,'Bajo','Alto'),(146,'Alto','Bajo'),(147,'Medio','Medio'),(148,'Medio','Medio'),(149,'Bajo','Alto'),(150,'Alto','Bajo'),(151,'Bajo','Medio'),(152,'Medio','Medio'),(153,'Bajo','Alto'),(154,'Alto','Bajo'),(155,'Bajo','Alto'),(156,'Bajo','Medio'),(157,'Bajo','Alto'),(158,'Alto','Bajo'),(159,'Bajo','Medio'),(160,'Medio','Medio'),(161,'Bajo','Alto'),(162,'Alto','Bajo'),(163,'Bajo','Medio'),(164,'Bajo','Medio'),(165,'Bajo','Medio'),(166,'Medio','Medio'),(167,'Bajo','Alto'),(168,'Alto','Bajo'),(169,'Medio','Medio'),(170,'Medio','Medio'),(171,'Bajo','Alto'),(172,'Alto','Bajo'),(173,'Medio','Medio'),(174,'Medio','Medio'),(175,'Bajo','Alto'),(176,'Alto','Bajo'),(177,'Medio','Medio'),(178,'Bajo','Medio'),(179,'Bajo','Alto'),(180,'Alto','Bajo'),(181,'Bajo','Alto'),(182,'Medio','Medio'),(183,'Bajo','Alto'),(184,'Alto','Bajo'),(185,'Bajo','Alto'),(186,'Bajo','Medio'),(187,'Bajo','Alto'),(188,'Alto','Bajo'),(189,'Bajo','Medio'),(190,'Medio','Medio'),(191,'Bajo','Alto'),(192,'Alto','Bajo'),(193,'Bajo','Medio'),(194,'Medio','Medio'),(195,'Bajo','Alto'),(196,'Alto','Bajo'),(197,'Bajo','Alto'),(198,'Alto','Bajo'),(199,'Bajo','Medio'),(200,'Medio','Medio'),(201,'Bajo','Alto'),(202,'Alto','Bajo'),(203,'Bajo','Medio'),(204,'Bajo','Medio'),(205,'Bajo','Alto'),(206,'Alto','Bajo'),(207,'Medio','Medio'),(208,'Medio','Medio'),(209,'Bajo','Alto'),(210,'Alto','Bajo'),(211,'Medio','Medio'),(212,'Bajo','Medio'),(213,'Bajo','Alto'),(214,'Alto','Bajo'),(215,'Bajo','Medio'),(216,'Medio','Medio'),(217,'Bajo','Alto'),(218,'Alto','Bajo'),(219,'Bajo','Alto'),(220,'Bajo','Medio'),(221,'Bajo','Alto'),(222,'Alto','Bajo'),(223,'Bajo','Medio'),(224,'Medio','Medio'),(225,'Bajo','Alto'),(226,'Alto','Bajo'),(227,'Bajo','Medio'),(228,'Bajo','Medio'),(229,'Medio','Medio'),(230,'Medio','Medio'),(231,'Medio','Medio'),(232,'Bajo','Medio'),(233,'Medio','Medio'),(234,'Medio','Medio'),(235,'Medio','Medio'),(236,'Medio','Medio'),(237,'Bajo','Alto'),(238,'Medio','Bajo'),(239,'Bajo','Alto'),(240,'Alto','Bajo'),(241,'Bajo','Alto'),(242,'Alto','Bajo'),(243,'Bajo','Alto'),(244,'Alto','Bajo'),(245,'Bajo','Medio'),(246,'Alto','Bajo'),(247,'Medio','Medio'),(248,'Alto','Bajo'),(249,'Bajo','Alto'),(250,'Alto','Bajo');
/*!40000 ALTER TABLE `variable_objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_alto_riesgo`
--

DROP TABLE IF EXISTS `vista_alto_riesgo`;
/*!50001 DROP VIEW IF EXISTS `vista_alto_riesgo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_alto_riesgo` AS SELECT 
 1 AS `id_estudiante`,
 1 AS `año_lectivo`,
 1 AS `nivel_educativo`,
 1 AS `zona_residencia`,
 1 AS `departamento`,
 1 AS `promedio_general`,
 1 AS `asistencia_porcentaje`,
 1 AS `ingreso_hogar`,
 1 AS `apoyo_familiar`,
 1 AS `riesgo_desercion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_estadisticas_departamento`
--

DROP TABLE IF EXISTS `vista_estadisticas_departamento`;
/*!50001 DROP VIEW IF EXISTS `vista_estadisticas_departamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_estadisticas_departamento` AS SELECT 
 1 AS `departamento`,
 1 AS `año_lectivo`,
 1 AS `total_estudiantes`,
 1 AS `promedio_general_dept`,
 1 AS `asistencia_promedio_dept`,
 1 AS `ingreso_promedio_dept`,
 1 AS `estudiantes_alto_riesgo`,
 1 AS `porcentaje_alto_riesgo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_estudiante_completo`
--

DROP TABLE IF EXISTS `vista_estudiante_completo`;
/*!50001 DROP VIEW IF EXISTS `vista_estudiante_completo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_estudiante_completo` AS SELECT 
 1 AS `id_estudiante`,
 1 AS `año_lectivo`,
 1 AS `nivel_educativo`,
 1 AS `zona_residencia`,
 1 AS `departamento`,
 1 AS `promedio_general`,
 1 AS `materias_reprobadas`,
 1 AS `asistencia_porcentaje`,
 1 AS `repitencia`,
 1 AS `ingreso_hogar`,
 1 AS `trabaja`,
 1 AS `apoyo_familiar`,
 1 AS `migración_familiar`,
 1 AS `acceso_internet`,
 1 AS `dispositivo_tecnologico`,
 1 AS `modalidad_educativa`,
 1 AS `riesgo_desercion`,
 1 AS `rendimiento_académico`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_alto_riesgo`
--

/*!50001 DROP VIEW IF EXISTS `vista_alto_riesgo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_alto_riesgo` AS select `e`.`id_estudiante` AS `id_estudiante`,`e`.`año_lectivo` AS `año_lectivo`,`e`.`nivel_educativo` AS `nivel_educativo`,`e`.`zona_residencia` AS `zona_residencia`,`e`.`departamento` AS `departamento`,`da`.`promedio_general` AS `promedio_general`,`da`.`asistencia_porcentaje` AS `asistencia_porcentaje`,`cs`.`ingreso_hogar` AS `ingreso_hogar`,`cs`.`apoyo_familiar` AS `apoyo_familiar`,`vo`.`riesgo_desercion` AS `riesgo_desercion` from (((`estudiante` `e` join `desempeño_académico` `da` on((`e`.`id_estudiante` = `da`.`id_estudiante`))) join `condición_socioeconómica` `cs` on((`e`.`id_estudiante` = `cs`.`id_estudiante`))) join `variable_objetivo` `vo` on((`e`.`id_estudiante` = `vo`.`id_estudiante`))) where (`vo`.`riesgo_desercion` = 'Alto') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_estadisticas_departamento`
--

/*!50001 DROP VIEW IF EXISTS `vista_estadisticas_departamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_estadisticas_departamento` AS select `e`.`departamento` AS `departamento`,`e`.`año_lectivo` AS `año_lectivo`,count(0) AS `total_estudiantes`,avg(`da`.`promedio_general`) AS `promedio_general_dept`,avg(`da`.`asistencia_porcentaje`) AS `asistencia_promedio_dept`,avg(`cs`.`ingreso_hogar`) AS `ingreso_promedio_dept`,sum((case when (`vo`.`riesgo_desercion` = 'Alto') then 1 else 0 end)) AS `estudiantes_alto_riesgo`,round(((sum((case when (`vo`.`riesgo_desercion` = 'Alto') then 1 else 0 end)) * 100.0) / count(0)),2) AS `porcentaje_alto_riesgo` from (((`estudiante` `e` left join `desempeño_académico` `da` on((`e`.`id_estudiante` = `da`.`id_estudiante`))) left join `condición_socioeconómica` `cs` on((`e`.`id_estudiante` = `cs`.`id_estudiante`))) left join `variable_objetivo` `vo` on((`e`.`id_estudiante` = `vo`.`id_estudiante`))) group by `e`.`departamento`,`e`.`año_lectivo` order by `e`.`departamento`,`e`.`año_lectivo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_estudiante_completo`
--

/*!50001 DROP VIEW IF EXISTS `vista_estudiante_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_estudiante_completo` AS select `e`.`id_estudiante` AS `id_estudiante`,`e`.`año_lectivo` AS `año_lectivo`,`e`.`nivel_educativo` AS `nivel_educativo`,`e`.`zona_residencia` AS `zona_residencia`,`e`.`departamento` AS `departamento`,`da`.`promedio_general` AS `promedio_general`,`da`.`materias_reprobadas` AS `materias_reprobadas`,`da`.`asistencia_porcentaje` AS `asistencia_porcentaje`,`da`.`repitencia` AS `repitencia`,`cs`.`ingreso_hogar` AS `ingreso_hogar`,`cs`.`trabaja` AS `trabaja`,`cs`.`apoyo_familiar` AS `apoyo_familiar`,`cs`.`migración_familiar` AS `migración_familiar`,`at`.`acceso_internet` AS `acceso_internet`,`at`.`dispositivo_tecnologico` AS `dispositivo_tecnologico`,`at`.`modalidad_educativa` AS `modalidad_educativa`,`vo`.`riesgo_desercion` AS `riesgo_desercion`,`vo`.`rendimiento_académico` AS `rendimiento_académico` from ((((`estudiante` `e` left join `desempeño_académico` `da` on((`e`.`id_estudiante` = `da`.`id_estudiante`))) left join `condición_socioeconómica` `cs` on((`e`.`id_estudiante` = `cs`.`id_estudiante`))) left join `acceso_tecnológico` `at` on((`e`.`id_estudiante` = `at`.`id_estudiante`))) left join `variable_objetivo` `vo` on((`e`.`id_estudiante` = `vo`.`id_estudiante`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-30 18:57:13
