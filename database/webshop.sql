CREATE DATABASE  IF NOT EXISTS `webshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webshop`;
-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: webshop
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_number` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'123364','PC1','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>'),(2,'125477','PC2','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3000.00,'<img src=/img/pc2.webp>'),(3,'221458','PC3','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1000.00,'<img src=/img/pc3.webp>'),(4,'215454','PC4','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',4000.00,'<img src=/img/pc1.webp>'),(5,'215548','PC5','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3500.00,'<img src=/img/pc4.webp>'),(6,'215647','PC6','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2100.00,'<img src=/img/pc5.webp>'),(7,'215581','PC7','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',950.00,'<img src=/img/pc6.webp>'),(8,'215574','PC8','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(9,'215544','PC9','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(10,'215584','PC10','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(11,'215874','PC11','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(12,'215884','PC12','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(13,'123364','PC13','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>'),(14,'123365','PC14','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3000.00,'<img src=/img/pc2.webp>'),(15,'221466','PC15','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1000.00,'<img src=/img/pc3.webp>'),(16,'215454','PC16','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',4000.00,'<img src=/img/pc1.webp>'),(17,'215548','PC17','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3500.00,'<img src=/img/pc4.webp>'),(18,'215647','PC18','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2100.00,'<img src=/img/pc5.webp>'),(19,'215581','PC19','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',950.00,'<img src=/img/pc6.webp>'),(20,'215574','PC20','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(21,'215544','PC21','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(22,'215584','PC22','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(23,'215874','PC23','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(24,'215884','PC24','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(25,'123364','PC25','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>'),(26,'125477','PC26','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3000.00,'<img src=/img/pc2.webp>'),(27,'221458','PC27','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1000.00,'<img src=/img/pc3.webp>'),(28,'215454','PC28','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',4000.00,'<img src=/img/pc1.webp>'),(29,'215548','PC29','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3500.00,'<img src=/img/pc4.webp>'),(30,'215647','PC30','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2100.00,'<img src=/img/pc5.webp>'),(31,'215581','PC31','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',950.00,'<img src=/img/pc6.webp>'),(32,'215574','PC32','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(33,'215544','PC33','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(34,'215584','PC34','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(35,'215874','PC35','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(36,'215884','PC36','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(37,'123364','PC37','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>'),(38,'125477','PC38','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3000.00,'<img src=/img/pc2.webp>'),(39,'221458','PC39','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1000.00,'<img src=/img/pc3.webp>'),(40,'215454','PC40','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',4000.00,'<img src=/img/pc1.webp>'),(41,'215548','PC41','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3500.00,'<img src=/img/pc4.webp>'),(42,'215647','PC42','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2100.00,'<img src=/img/pc5.webp>'),(43,'215581','PC43','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',950.00,'<img src=/img/pc6.webp>'),(44,'215574','PC44','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(45,'215544','PC45','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(46,'215584','PC46','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(47,'215874','PC47','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(48,'215884','PC48','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(49,'123364','PC49','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>'),(50,'125477','PC50','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3000.00,'<img src=/img/pc2.webp>'),(51,'221458','PC51','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1000.00,'<img src=/img/pc3.webp>'),(52,'215454','PC52','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',4000.00,'<img src=/img/pc1.webp>'),(53,'215548','PC53','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3500.00,'<img src=/img/pc4.webp>'),(54,'215647','PC54','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2100.00,'<img src=/img/pc5.webp>'),(55,'215581','PC55','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',950.00,'<img src=/img/pc6.webp>'),(56,'215574','PC56','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(57,'215544','PC57','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(58,'215584','PC58','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(59,'215874','PC59','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(60,'215884','PC60','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(61,'123364','PC61','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>'),(62,'125477','PC62','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3000.00,'<img src=/img/pc2.webp>'),(63,'221458','PC63','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1000.00,'<img src=/img/pc3.webp>'),(64,'215454','PC64','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',4000.00,'<img src=/img/pc1.webp>'),(65,'215548','PC65','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',3500.00,'<img src=/img/pc4.webp>'),(66,'215647','PC66','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2100.00,'<img src=/img/pc5.webp>'),(67,'215581','PC67','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',950.00,'<img src=/img/pc6.webp>'),(68,'215574','PC68','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(69,'215544','PC69','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(70,'215584','PC70','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(71,'215874','PC71','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(72,'215884','PC72','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',1250.00,'<img src=/img/pc5.webp>'),(73,'123364','PC73','Intel Core i5-12400F 2,6 GHz','Procesor: Intel Core i5-12400F 2,6 GHz 12MB, Matična ploča: Intel B660M, Grafika: nVidia GeForce 3050 8GB DDR6, Ram: 16GB 3200 MHz DDR4, SSD: M.2 NVMe 500 GB. Kućište: Inter-Tech IT-W-III , Napaja...',2000.00,'<img src=/img/pc1.webp>');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Saša','Bogdanović','sbogdanovic','sb@gmail.com','$2a$12$hYZ2YuKBq3qzgP1X0xOiMuykTnRBiQ5y0jthWQgBp58YSUeci1UN.'),(52,'TEST','test','test','test@gmail.com','$2a$12$G2D5viOT2PsoDX0b2ShpgOeXdD7lY1aPr00TnJxEL3ZDgQ0hftxSK'),(53,'TEST2','test2','test2','test2@gmail.com','$2a$12$u.TaUfo7rLyPZheyHKHgtuwoJbUdHkuXiKx5DKAyens9CMqjACxJS'),(54,'TEST3','test3','test3','test3@gmail.com','$2a$12$v3TLq3EXfGxIzyQI1VbgnOVWZDpBEqOYcyiPFLlBhwO6cm/R7IuAe'),(55,'emir','puska','epuska','epuska@gmail.com','$2a$12$sVBcXgvFkZbQliU1g1VJTuaOBnfpFHj./YdO5o/RT9lGuV4JAespi'),(56,'TEST4','test4','test4','test4@yahoo.com','$2a$12$t3KNiZSdBaXW8UhEYmjYMuw0sc6.SFDFcxPg88lHX.A0Ul54dw/im'),(57,'TEST5','test5','test5','test5@gmail.com','$2a$12$g2BRb239C0SLEtCsBDoYbOBtL329drF05fAsYEubwa4ON4QlmH0r2'),(58,'TEST6','test6','test6','test6@gmail.com','$2a$12$B4tzi9w4kjU1VuZTEqw66.qE6yLQF7pm2Sqb59kbE00hDd4DX5Fn6');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 15:34:39