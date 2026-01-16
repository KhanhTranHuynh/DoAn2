-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: learn
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
-- Table structure for table `cartitems`
--

DROP TABLE IF EXISTS `cartitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CartItem_Quantity` int NOT NULL,
  `ProductID` int NOT NULL,
  `UserID` int NOT NULL,
  `Status` varchar(255) NOT NULL,
  `TotalPriceItem` float NOT NULL,
  `MemoryID` int NOT NULL,
  `ColorID` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`),
  KEY `ProductID` (`ProductID`),
  KEY `MemoryID` (`MemoryID`),
  KEY `ColorID` (`ColorID`),
  CONSTRAINT `cartitems_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cartitems_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cartitems_ibfk_3` FOREIGN KEY (`MemoryID`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cartitems_ibfk_4` FOREIGN KEY (`ColorID`) REFERENCES `optioncolors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitems`
--

LOCK TABLES `cartitems` WRITE;
/*!40000 ALTER TABLE `cartitems` DISABLE KEYS */;
INSERT INTO `cartitems` VALUES (99,1,42,1,'No',19490000,50,56,'2024-12-12 22:18:17','2024-12-12 22:20:05'),(101,1,40,6,'No',29390000,43,49,'2024-12-24 21:18:54','2024-12-24 21:19:33'),(102,1,39,6,'Yes',21990000,40,43,'2024-12-25 15:47:17','2024-12-25 15:48:23'),(103,1,42,1,'No',19490000,50,56,'2024-12-25 15:48:57','2024-12-25 15:49:12'),(104,1,49,6,'No',7790000,67,85,'2024-12-25 16:03:06','2024-12-25 16:03:43'),(105,1,42,6,'No',19490000,50,56,'2024-12-27 07:50:41','2024-12-27 07:51:12'),(106,1,61,8,'No',12990000,83,105,'2024-12-27 08:19:26','2024-12-27 08:20:16');
/*!40000 ALTER TABLE `cartitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_Category_Name` (`Category_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Apple','2024-11-17 00:41:17','2024-11-19 15:10:53'),(2,'Samsung','2024-11-19 15:09:47','2024-11-19 15:09:47'),(3,'Xiaomi','2024-11-19 15:11:08','2024-11-19 15:11:08'),(4,'Oppo','2024-11-19 15:11:14','2024-11-19 15:11:14');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comants`
--

DROP TABLE IF EXISTS `comants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Value` varchar(255) NOT NULL,
  `UserID` int NOT NULL,
  `ProductID` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `comants_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comants_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comants`
--

LOCK TABLES `comants` WRITE;
/*!40000 ALTER TABLE `comants` DISABLE KEYS */;
INSERT INTO `comants` VALUES (65,'San Pham Nay Dung Tot',6,39,'2024-12-24 21:21:00','2024-12-24 21:21:00');
/*!40000 ALTER TABLE `comants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversationId` int NOT NULL,
  `senderID` int NOT NULL,
  `text` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (268,2,2,'alo','2024-11-29 14:05:42','2024-11-29 14:05:42'),(269,2,1,'nghe','2024-11-29 14:05:55','2024-11-29 14:05:55'),(270,3,3,'em cần hổ trợ','2024-11-30 19:56:54','2024-11-30 19:56:54'),(271,3,3,'mã giao dịch 24113097885','2024-11-30 19:57:02','2024-11-30 19:57:02'),(272,3,1,'ok em','2024-11-30 19:57:21','2024-11-30 19:57:21'),(273,3,3,'24113097885','2024-11-30 20:14:22','2024-11-30 20:14:22'),(274,3,1,'ádasdasd','2024-11-30 20:14:41','2024-11-30 20:14:41'),(275,3,3,'ádasdasd','2024-11-30 20:14:44','2024-11-30 20:14:44'),(276,3,1,'ád','2024-12-10 15:56:09','2024-12-10 15:56:09'),(277,5,5,'hổ trợ giúp mình','2024-12-12 22:29:16','2024-12-12 22:29:16'),(278,5,1,'Quý Khách cần hổ trợ gì ạ','2024-12-12 22:30:35','2024-12-12 22:30:35'),(279,5,5,'hổ trợ mã giao dịch 241212858933 giúp tôi','2024-12-12 22:31:05','2024-12-12 22:31:05'),(280,6,6,'Em Can ho tro','2024-12-24 21:24:33','2024-12-24 21:24:33'),(281,6,1,'ban can giup gi','2024-12-24 21:24:46','2024-12-24 21:24:46'),(282,6,6,'241224413144','2024-12-24 21:25:25','2024-12-24 21:25:25'),(283,6,6,'Em Can Giup do','2024-12-25 16:06:30','2024-12-25 16:06:30'),(284,8,8,'Ho Tro Giup Em','2024-12-27 08:22:24','2024-12-27 08:22:24'),(285,8,1,'Ban Can Giup Gi','2024-12-27 08:22:44','2024-12-27 08:22:44');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oders`
--

DROP TABLE IF EXISTS `oders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Oder_TotalPrice` float NOT NULL,
  `Oder_Status` varchar(255) NOT NULL,
  `Oder_AddressShipping` varchar(255) NOT NULL,
  `ShippingID` int NOT NULL,
  `CartItemID` int NOT NULL,
  `Payment` varchar(255) NOT NULL,
  `UserID` int NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `app_trans_id` varchar(255) NOT NULL,
  `Note` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CartItemID` (`CartItemID`),
  KEY `UserID` (`UserID`),
  KEY `app_trans_id` (`app_trans_id`),
  CONSTRAINT `oders_ibfk_1` FOREIGN KEY (`CartItemID`) REFERENCES `cartitems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oders_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oders_ibfk_3` FOREIGN KEY (`CartItemID`) REFERENCES `cartitems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oders_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oders_ibfk_5` FOREIGN KEY (`app_trans_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oders`
--

LOCK TABLES `oders` WRITE;
/*!40000 ALTER TABLE `oders` DISABLE KEYS */;
INSERT INTO `oders` VALUES (98,19490000,'Order Unpaid','Kiên Giang An Biên Đông Thái',1,99,'Online',1,'Huynh Khanh Tran','0868333224','241212882335','Nhanh Giúp Em !!!','2024-12-12 22:20:05','2024-12-12 22:20:05'),(100,29390000,'Paid Online','Can Tho Ninh Kieu Nguyen Van Cu',1,101,'Online',6,'KhanhTran','0868333224','241224413144','Nhanh Giup Em','2024-12-24 21:19:33','2024-12-24 21:19:33'),(101,21990000,'Order Unpaid','Kien Giang An Bien Dong Thai',1,102,'Online',6,'KhanhTran','0868333224','241225981507','Nhanh Giup Em','2024-12-25 15:47:37','2024-12-25 15:47:37'),(102,21990000,'Order Unpaid','Kien Giang An Bien Dong Thai',1,102,'Online',6,'KhanhTran','0868333224','24122578924','Nhanh Giup Em','2024-12-25 15:48:23','2024-12-25 15:48:23'),(103,19490000,'Paid Online','KG AB DT',1,103,'Online',1,'Huynh Khanh Tran','0123123123','241225585565','','2024-12-25 15:49:12','2024-12-25 15:49:12'),(104,7790000,'Order Unpaid','An Bien Kien Giang Dong Thai',1,104,'Online',6,'KhanhTran','0868333224','241225802901','Nhanh Giuep Em','2024-12-25 16:03:43','2024-12-25 16:03:43'),(105,19490000,'Order Unpaid','Kien Giang An Bien Dong Thai',1,105,'Online',6,'KhanhTran','0868333224','241227155853','Nhanh Giup Em','2024-12-27 07:51:12','2024-12-27 07:51:12'),(106,12990000,'Order Unpaid','Kien Giang An Bien Dong Thai',1,106,'Online',8,'Mai Quoc Tri','0868333224','241227886627','Nhanh Giup Em','2024-12-27 08:20:16','2024-12-27 08:20:16');
/*!40000 ALTER TABLE `oders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optioncolors`
--

DROP TABLE IF EXISTS `optioncolors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optioncolors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `color` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productID` (`productID`),
  CONSTRAINT `optioncolors_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optioncolors`
--

LOCK TABLES `optioncolors` WRITE;
/*!40000 ALTER TABLE `optioncolors` DISABLE KEYS */;
INSERT INTO `optioncolors` VALUES (39,38,'Titan Sa Mạc','\\images\\products\\1733818218641.webp','2024-12-10 15:10:18','2024-12-10 15:10:18'),(40,38,'Titan Tự Nhiên','\\images\\products\\1733818262116.webp','2024-12-10 15:11:02','2024-12-10 15:11:02'),(41,38,'Titan Đen','\\images\\products\\1733818286680.webp','2024-12-10 15:11:26','2024-12-10 15:11:26'),(42,38,'Titan Trắng','\\images\\products\\1733818312651.webp','2024-12-10 15:11:52','2024-12-10 15:11:52'),(43,39,'Trắng','\\images\\products\\1733818494094.webp','2024-12-10 15:14:54','2024-12-10 15:14:54'),(44,39,'Hồng','\\images\\products\\1733818516212.webp','2024-12-10 15:15:16','2024-12-10 15:15:16'),(45,39,'Xanh Mòng Két','\\images\\products\\1733818540219.webp','2024-12-10 15:15:40','2024-12-10 15:15:40'),(46,39,'Xanh Lưu Ly','\\images\\products\\1733818559412.webp','2024-12-10 15:15:59','2024-12-10 15:15:59'),(47,39,'Đen','\\images\\products\\1733818574013.webp','2024-12-10 15:16:14','2024-12-10 15:16:14'),(48,40,'Titan Trắng','\\images\\products\\1733818656854.webp','2024-12-10 15:17:36','2024-12-10 15:17:36'),(49,40,'Titan Đen','\\images\\products\\1733818679833.webp','2024-12-10 15:17:59','2024-12-10 15:17:59'),(50,40,'Titan Xanh','\\images\\products\\1733818692793.webp','2024-12-10 15:18:12','2024-12-10 15:18:12'),(51,40,'Titan Tự Nhiên','\\images\\products\\1733818708143.webp','2024-12-10 15:18:28','2024-12-10 15:18:28'),(52,41,'Titan Tự Nhiên','\\images\\products\\1733818832359.webp','2024-12-10 15:20:32','2024-12-10 15:20:32'),(53,41,'Titan Đen','\\images\\products\\1733818850668.webp','2024-12-10 15:20:50','2024-12-10 15:20:50'),(54,41,'Titan Sa Mạc','\\images\\products\\1733818865496.webp','2024-12-10 15:21:05','2024-12-10 15:21:05'),(55,41,'Titan Trắng','\\images\\products\\1733818882868.webp','2024-12-10 15:21:22','2024-12-10 15:21:22'),(56,42,'Đen','\\images\\products\\1733818964898.webp','2024-12-10 15:22:44','2024-12-10 15:22:44'),(57,42,'Xanh Dương','\\images\\products\\1733818992965.webp','2024-12-10 15:23:12','2024-12-10 15:23:12'),(58,42,'Hồng','\\images\\products\\1733819003448.webp','2024-12-10 15:23:23','2024-12-10 15:23:23'),(59,42,'Vàng','\\images\\products\\1733819019968.webp','2024-12-10 15:23:39','2024-12-10 15:23:39'),(60,42,'Xanh Lá','\\images\\products\\1733819031684.webp','2024-12-10 15:23:51','2024-12-10 15:23:51'),(61,43,'Xanh Mòng Két','\\images\\products\\1733819574053.webp','2024-12-10 15:32:54','2024-12-10 15:32:54'),(62,43,'Hồng','\\images\\products\\1733819596418.webp','2024-12-10 15:33:16','2024-12-10 15:33:16'),(63,43,'Đen','\\images\\products\\1733819609686.webp','2024-12-10 15:33:29','2024-12-10 15:33:29'),(64,43,'Trắng','\\images\\products\\1733819620917.webp','2024-12-10 15:33:40','2024-12-10 15:33:40'),(65,44,'Trắng','\\images\\products\\1733819724910.webp','2024-12-10 15:35:24','2024-12-10 15:35:24'),(66,44,'Đen','\\images\\products\\1733819757493.webp','2024-12-10 15:35:57','2024-12-10 15:35:57'),(67,45,'Titan Trắng','\\images\\products\\1733819822098.webp','2024-12-10 15:37:02','2024-12-10 15:37:02'),(68,45,'Titan Tự Nhiên','\\images\\products\\1733819849359.webp','2024-12-10 15:37:29','2024-12-10 15:37:29'),(69,45,'Titan Xanh','\\images\\products\\1733819864624.webp','2024-12-10 15:37:44','2024-12-10 15:37:44'),(70,45,'Titan Đen','\\images\\products\\1733819879806.webp','2024-12-10 15:37:59','2024-12-10 15:37:59'),(71,46,'Đen','\\images\\products\\1733819987810.webp','2024-12-10 15:39:47','2024-12-10 15:39:47'),(72,46,'Trắng','\\images\\products\\1733820012141.webp','2024-12-10 15:40:12','2024-12-10 15:40:12'),(73,46,'Đỏ','\\images\\products\\1733820021706.webp','2024-12-10 15:40:21','2024-12-10 15:40:21'),(74,46,'Tím','\\images\\products\\1733820031416.webp','2024-12-10 15:40:31','2024-12-10 15:40:31'),(75,46,'Vàng','\\images\\products\\1733820040767.webp','2024-12-10 15:40:40','2024-12-10 15:40:40'),(76,47,'Trắng','\\images\\products\\1733820292185.webp','2024-12-10 15:44:52','2024-12-10 15:44:52'),(77,47,'Hồng','\\images\\products\\1733820313522.webp','2024-12-10 15:45:13','2024-12-10 15:45:13'),(78,47,'Xám','\\images\\products\\1733820323184.webp','2024-12-10 15:45:23','2024-12-10 15:45:23'),(79,47,'Xanh Dương','\\images\\products\\1733820338088.webp','2024-12-10 15:45:38','2024-12-10 15:45:38'),(80,48,'Xám','\\images\\products\\1733820421685.webp','2024-12-10 15:47:01','2024-12-10 15:47:01'),(81,48,'Vàng','\\images\\products\\1733820434720.webp','2024-12-10 15:47:14','2024-12-10 15:47:14'),(82,48,'Tím','\\images\\products\\1733820443294.webp','2024-12-10 15:47:23','2024-12-10 15:47:23'),(83,48,'Đen','\\images\\products\\1733820453030.webp','2024-12-10 15:47:33','2024-12-10 15:47:33'),(84,49,'Đen','\\images\\products\\1733820552669.webp','2024-12-10 15:49:12','2024-12-10 15:49:12'),(85,49,'Xanh','\\images\\products\\1733820565942.webp','2024-12-10 15:49:25','2024-12-10 15:49:25'),(86,49,'Tím','\\images\\products\\1733820575169.webp','2024-12-10 15:49:35','2024-12-10 15:49:35'),(87,50,'Đen','\\images\\products\\1733820656721.webp','2024-12-10 15:50:56','2024-12-10 15:50:56'),(88,50,'Vàng','\\images\\products\\1733820668846.webp','2024-12-10 15:51:08','2024-12-10 15:51:08'),(89,50,'Xám','\\images\\products\\1733820678147.webp','2024-12-10 15:51:18','2024-12-10 15:51:18'),(90,50,'Xanh Lá','\\images\\products\\1733820688104.webp','2024-12-10 15:51:28','2024-12-10 15:51:28'),(91,50,'Xanh Dương','\\images\\products\\1733820697865.webp','2024-12-10 15:51:37','2024-12-10 15:51:37'),(92,51,'Xám','\\images\\products\\1733820766876.webp','2024-12-10 15:52:46','2024-12-10 15:52:46'),(93,51,'Tím','\\images\\products\\1733820777648.webp','2024-12-10 15:52:57','2024-12-10 15:52:57'),(94,52,'Xám','\\images\\products\\1733820825366.webp','2024-12-10 15:53:45','2024-12-10 15:53:45'),(95,52,'Xanh','\\images\\products\\1733820837176.webp','2024-12-10 15:53:57','2024-12-10 15:53:57'),(96,52,'Bạc','\\images\\products\\1733820845459.webp','2024-12-10 15:54:05','2024-12-10 15:54:05'),(97,53,'Xanh Dương','\\images\\products\\1733822435871.webp','2024-12-10 16:20:35','2024-12-10 16:20:35'),(98,54,'Đen','\\images\\products\\1733822466714.webp','2024-12-10 16:21:06','2024-12-10 16:21:06'),(99,55,'Tím','\\images\\products\\1733822505409.webp','2024-12-10 16:21:45','2024-12-10 16:21:45'),(100,56,'Trắng','\\images\\products\\1733822555683.webp','2024-12-10 16:22:35','2024-12-10 16:22:35'),(101,57,'Xanh Dương','\\images\\products\\1733822650123.webp','2024-12-10 16:24:10','2024-12-10 16:24:10'),(102,58,'Xanh Lá','\\images\\products\\1733822681651.webp','2024-12-10 16:24:41','2024-12-10 16:24:41'),(103,59,'Vàng','\\images\\products\\1733822727843.webp','2024-12-10 16:25:27','2024-12-10 16:25:27'),(104,60,'Cam','\\images\\products\\1733822766200.webp','2024-12-10 16:26:06','2024-12-10 16:26:06'),(105,61,'Tím','\\images\\products\\1733822794531.webp','2024-12-10 16:26:34','2024-12-10 16:26:34'),(106,62,'Đen','\\images\\products\\1733822822447.webp','2024-12-10 16:27:02','2024-12-10 16:27:02'),(107,63,'Xanh Dương','\\images\\products\\1733822876444.webp','2024-12-10 16:27:56','2024-12-10 16:27:56'),(108,64,'Xanh','\\images\\products\\1733822905901.webp','2024-12-10 16:28:25','2024-12-10 16:28:25'),(109,65,'Vang','\\images\\products\\1735050162242.webp','2024-12-24 21:22:42','2024-12-24 21:22:42');
/*!40000 ALTER TABLE `optioncolors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `memory` varchar(255) NOT NULL,
  `option_price` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productID` (`productID`),
  CONSTRAINT `options_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (37,38,'256','33990000','2024-12-10 15:10:18','2024-12-10 15:10:18'),(38,38,'1T','45990000','2024-12-10 15:12:14','2024-12-10 15:12:14'),(39,38,'512','39390000','2024-12-10 15:12:30','2024-12-10 15:12:30'),(40,39,'128','21990000','2024-12-10 15:14:54','2024-12-10 15:14:54'),(41,39,'256','24590000','2024-12-10 15:16:35','2024-12-10 15:16:35'),(42,39,'512','28990000','2024-12-10 15:16:45','2024-12-10 15:16:45'),(43,40,'256','29390000','2024-12-10 15:17:36','2024-12-10 15:17:36'),(44,40,'512','34690000','2024-12-10 15:18:49','2024-12-10 15:18:49'),(45,40,'1T','40190000','2024-12-10 15:18:58','2024-12-10 15:18:58'),(46,41,'128','28390000','2024-12-10 15:20:32','2024-12-10 15:20:32'),(47,41,'256','31390000','2024-12-10 15:21:41','2024-12-10 15:21:41'),(48,41,'512','37990000','2024-12-10 15:21:51','2024-12-10 15:21:51'),(49,41,'1T','42590000','2024-12-10 15:22:02','2024-12-10 15:22:02'),(50,42,'128','19490000','2024-12-10 15:22:44','2024-12-10 15:22:44'),(51,42,'256','22990000','2024-12-10 15:24:05','2024-12-10 15:24:05'),(52,43,'128','25390000','2024-12-10 15:32:54','2024-12-10 15:32:54'),(53,43,'256','27890000','2024-12-10 15:34:05','2024-12-10 15:34:05'),(54,43,'512','32990000','2024-12-10 15:34:13','2024-12-10 15:34:13'),(55,44,'64','8790000','2024-12-10 15:35:24','2024-12-10 15:35:24'),(56,44,'128','10290000','2024-12-10 15:36:09','2024-12-10 15:36:09'),(57,45,'128','25990000','2024-12-10 15:37:02','2024-12-10 15:37:02'),(58,45,'256','28590000','2024-12-10 15:38:15','2024-12-10 15:38:15'),(59,46,'128','19690000','2024-12-10 15:39:47','2024-12-10 15:39:47'),(60,46,'256','22390000','2024-12-10 15:40:55','2024-12-10 15:40:55'),(61,47,'256','39990000','2024-12-10 15:44:52','2024-12-10 15:44:52'),(62,47,'512','42990000','2024-12-10 15:45:52','2024-12-10 15:45:52'),(63,47,'1T','49990000','2024-12-10 15:46:01','2024-12-10 15:46:01'),(64,48,'256','25490000','2024-12-10 15:47:01','2024-12-10 15:47:01'),(65,48,'512','31990000','2024-12-10 15:47:47','2024-12-10 15:47:47'),(66,48,'1T','38490000','2024-12-10 15:47:55','2024-12-10 15:47:55'),(67,49,'128','7790000','2024-12-10 15:49:12','2024-12-10 15:49:12'),(68,49,'256','9090000','2024-12-10 15:49:47','2024-12-10 15:49:47'),(69,50,'256','22990000','2024-12-10 15:50:56','2024-12-10 15:50:56'),(70,50,'512','26990000','2024-12-10 15:51:57','2024-12-10 15:51:57'),(71,51,'128','9890000','2024-12-10 15:52:46','2024-12-10 15:52:46'),(72,51,'256','12990000','2024-12-10 15:53:08','2024-12-10 15:53:08'),(73,52,'128','2790000','2024-12-10 15:53:45','2024-12-10 15:53:45'),(74,52,'256','3390000','2024-12-10 15:54:22','2024-12-10 15:54:22'),(75,53,'128','2990000','2024-12-10 16:20:35','2024-12-10 16:20:35'),(76,54,'128','13990000','2024-12-10 16:21:06','2024-12-10 16:21:06'),(77,55,'128','4090000','2024-12-10 16:21:45','2024-12-10 16:21:45'),(78,56,'512','27990000','2024-12-10 16:22:35','2024-12-10 16:22:35'),(79,57,'128','2590000','2024-12-10 16:24:10','2024-12-10 16:24:10'),(80,58,'256','18990000','2024-12-10 16:24:41','2024-12-10 16:24:41'),(81,59,'256','22990000','2024-12-10 16:25:27','2024-12-10 16:25:27'),(82,60,'256','11990000','2024-12-10 16:26:06','2024-12-10 16:26:06'),(83,61,'256','12990000','2024-12-10 16:26:34','2024-12-10 16:26:34'),(84,62,'256','6890000','2024-12-10 16:27:02','2024-12-10 16:27:02'),(85,63,'128','3390000','2024-12-10 16:27:56','2024-12-10 16:27:56'),(86,64,'128','5190000','2024-12-10 16:28:25','2024-12-10 16:28:25'),(87,65,'168','9000000','2024-12-24 21:22:42','2024-12-24 21:22:42');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` varchar(255) NOT NULL,
  `Payment_Method` varchar(255) NOT NULL,
  `Oder_TotalPrice` float NOT NULL,
  `UserID` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('241129113144','Online',21000100,1,'2024-11-29 08:37:30','2024-11-29 08:37:30'),('241129421783','Online',21000000,1,'2024-11-29 08:44:24','2024-11-29 08:44:24'),('241129564674','Online',123,1,'2024-11-29 08:35:10','2024-11-29 08:35:10'),('241129791969','Cash',123,1,'2024-11-29 08:29:36','2024-11-29 08:29:36'),('241129804511','Cash',44000000,1,'2024-11-29 08:26:12','2024-11-29 08:26:12'),('241129849892','Online',123,1,'2024-11-29 08:37:00','2024-11-29 08:37:00'),('241129883991','Online',20000000,1,'2024-11-29 08:40:14','2024-11-29 08:40:14'),('241129989353','Online',123,1,'2024-11-29 08:35:05','2024-11-29 08:35:05'),('241212882335','Online',19490000,1,'2024-12-12 22:20:05','2024-12-12 22:20:05'),('241224413144','Online',29390000,6,'2024-12-24 21:19:33','2024-12-24 21:19:33'),('241225585565','Online',19490000,1,'2024-12-25 15:49:12','2024-12-25 15:49:12'),('24122578924','Online',21990000,6,'2024-12-25 15:48:23','2024-12-25 15:48:23'),('241225802901','Online',7790000,6,'2024-12-25 16:03:43','2024-12-25 16:03:43'),('241225981507','Online',21990000,6,'2024-12-25 15:47:37','2024-12-25 15:47:37'),('241227155853','Online',19490000,6,'2024-12-27 07:51:12','2024-12-27 07:51:12'),('241227886627','Online',12990000,8,'2024-12-27 08:20:16','2024-12-27 08:20:16');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Product_Description` varchar(255) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Quantity` int NOT NULL,
  `CategoryID` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_Product_Name` (`Product_Name`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (38,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 16 Pro Max',100,1,'2024-12-10 15:10:18','2024-12-10 15:10:18'),(39,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 16',100,1,'2024-12-10 15:14:54','2024-12-10 15:14:54'),(40,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 15 Pro Max',100,1,'2024-12-10 15:17:36','2024-12-10 15:17:36'),(41,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 16 Pro',100,1,'2024-12-10 15:20:32','2024-12-10 15:20:32'),(42,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 15',100,1,'2024-12-10 15:22:44','2024-12-10 15:22:44'),(43,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 16 Plus',100,1,'2024-12-10 15:32:54','2024-12-10 15:42:15'),(44,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 11',100,1,'2024-12-10 15:35:24','2024-12-10 15:42:25'),(45,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 15 Pro',100,1,'2024-12-10 15:37:02','2024-12-10 15:37:02'),(46,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Iphone 14 Plus',100,1,'2024-12-10 15:39:47','2024-12-10 15:39:47'),(47,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Samsung Galaxy Z Fold6',100,2,'2024-12-10 15:44:52','2024-12-10 15:44:52'),(48,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Samsung Galaxy S24 Ultra',100,2,'2024-12-10 15:47:01','2024-12-10 15:47:01'),(49,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Samsung Galax A55',100,2,'2024-12-10 15:49:12','2024-12-10 15:49:12'),(50,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Samsung Galax Z Flip6',100,2,'2024-12-10 15:50:56','2024-12-10 15:50:56'),(51,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Samsung Galax s23 FE',100,2,'2024-12-10 15:52:46','2024-12-10 15:52:46'),(52,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Samsung Galax A05s',100,2,'2024-12-10 15:53:45','2024-12-10 15:53:45'),(53,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Xiaomi Redmi 14C',100,3,'2024-12-10 16:20:35','2024-12-10 16:20:35'),(54,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Xiaomi 14T',100,3,'2024-12-10 16:21:06','2024-12-10 16:21:06'),(55,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Xiaomi Redmi Note 13 Pro',100,3,'2024-12-10 16:21:45','2024-12-10 16:21:45'),(56,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Xiaomi 14 Ultra',100,3,'2024-12-10 16:22:35','2024-12-10 16:22:35'),(57,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Xiaomi Redmi A3',100,3,'2024-12-10 16:24:10','2024-12-10 16:24:10'),(58,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','Xiaomi 14',100,3,'2024-12-10 16:24:41','2024-12-10 16:24:41'),(59,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','OPPO Find X8',100,4,'2024-12-10 16:25:27','2024-12-10 16:25:27'),(60,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','OPPO Reno12 F',100,4,'2024-12-10 16:26:06','2024-12-10 16:26:06'),(61,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','OPPO Reno10+',100,4,'2024-12-10 16:26:34','2024-12-10 16:26:34'),(62,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','OPPO A79',100,4,'2024-12-10 16:27:02','2024-12-10 16:27:02'),(63,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','OPPO A18',100,4,'2024-12-10 16:27:56','2024-12-10 16:27:56'),(64,'Không phí chuyển đổi khi trả góp 0% qua thẻ tín dụng kỳ hạn 3-6 tháng','OPPO A77s',100,4,'2024-12-10 16:28:25','2024-12-10 16:28:25'),(65,'San Pham Dep Re Trong Tam Gia','Samsung moi',100,2,'2024-12-24 21:22:42','2024-12-24 21:22:42');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('create-cartItem.js'),('create-categories.js'),('create-coment.js'),('create-message.js'),('create-oder.js'),('create-option.js'),('create-optionColor.js'),('create-payment.js'),('create-product.js'),('create-user.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(255) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `User_Password` varchar(255) NOT NULL,
  `User_Role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_User_Email` (`User_Email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Huynh Khanh Tran','admin@gmail.com','$2a$10$INwdoTZYdYFCSdy4geKhXurE6vgTeY1OdQCpF15oBrh4uHXTYaGSi','Admin','2024-11-17 00:58:27','2024-11-22 08:21:22'),(6,'KhanhTran','tran219979@student.nctu.edu.vn','$2a$10$Y5pYqgeO82ryeNLILzUReeqPJ7Vy63euVxGsOGYiQZK/CIUHA9Rj.','Client','2024-12-24 21:18:00','2024-12-24 21:18:00'),(8,'Mai Quoc Tri','maiquoctri4444@gmail.com','$2a$10$z43GvhBlTRihsd0qeMbr9u3Hw3wHwn0ZPjYW9shzCtD3QvWop6Ogq','Client','2024-12-27 08:17:54','2024-12-27 08:17:54');
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

-- Dump completed on 2025-01-14 16:56:08
