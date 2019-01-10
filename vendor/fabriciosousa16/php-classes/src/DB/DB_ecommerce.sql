-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ecommerce
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.37-MariaDB

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
-- Table structure for table `tb_addresses`
--

DROP TABLE IF EXISTS `tb_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_addresses` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `desaddress` varchar(128) NOT NULL,
  `desnumber` varchar(16) NOT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `descity` varchar(32) NOT NULL,
  `desstate` varchar(32) NOT NULL,
  `descountry` varchar(32) NOT NULL,
  `deszipcode` char(8) NOT NULL,
  `desdistrict` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaddress`),
  KEY `fk_addresses_persons_idx` (`idperson`),
  CONSTRAINT `fk_addresses_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_addresses`
--

LOCK TABLES `tb_addresses` WRITE;
/*!40000 ALTER TABLE `tb_addresses` DISABLE KEYS */;
INSERT INTO `tb_addresses` VALUES (1,15,'Rua 1','1200','(Acesso Est Sepetiba 4718)','Rio de Janeiro','RJ','Brasil','23545037','Sepetiba','2019-01-06 19:15:28'),(2,15,'Rua 1','100','(Acesso Est Sepetiba 4718)','Rio de Janeiro','RJ','Brasil','23545037','Sepetiba','2019-01-06 19:26:39'),(3,24,'Rua João Ferraz','1266','Proximo ao Bar São Lucas','Oeiras','Piaui','Brasil','6450000','Oeias Nova','2019-01-07 01:21:19'),(4,7,'Rua 1','1200','(Acesso Est Sepetiba 4718)','Rio de Janeiro','RJ','Brasil','23545037','Sepetiba','2019-01-07 01:26:41'),(5,25,'Rua 1','1200','(Acesso Est Sepetiba 4718)','Rio de Janeiro','RJ','Brasil','23545037','Sepetiba','2019-01-07 11:37:11'),(6,25,'Rua 1','2000','(Acesso Est Sepetiba 4718)','Rio de Janeiro','RJ','Brasil','23545037','Sepetiba','2019-01-07 11:46:10');
/*!40000 ALTER TABLE `tb_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carts`
--

DROP TABLE IF EXISTS `tb_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_carts` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `dessessionid` varchar(64) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `vlfreight` decimal(10,2) DEFAULT NULL,
  `nrdays` int(11) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcart`),
  KEY `FK_carts_users_idx` (`iduser`),
  CONSTRAINT `fk_carts_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carts`
--

LOCK TABLES `tb_carts` WRITE;
/*!40000 ALTER TABLE `tb_carts` DISABLE KEYS */;
INSERT INTO `tb_carts` VALUES (1,'72l0su1b6ar74eaq52mols4pr5',NULL,'88010000',163.45,6,'2019-01-05 18:23:41'),(2,'akcp6toeku9qtqsscmsiu2c436',15,NULL,NULL,NULL,'2019-01-06 04:13:46'),(3,'2t588rn0a6vuvd6jic46nt4qa5',NULL,'23545037',127.16,6,'2019-01-06 14:06:08'),(4,'61vfan4mf5hc2fvcrp4badgru2',7,'23545037',122.94,6,'2019-01-06 18:51:49'),(5,'lh29bfbsnoav35q3kg7c3e2r81',NULL,NULL,NULL,NULL,'2019-01-06 21:13:24'),(6,'5t4garet7irae3ln703615q0p0',NULL,'23545037',441.38,6,'2019-01-06 22:04:37'),(7,'jj9gsl5fj3fplv43l69q276mh3',NULL,NULL,NULL,NULL,'2019-01-07 01:27:34'),(8,'gp9t6abgup5qpfmo865p7lo360',NULL,'64500000',104.97,7,'2019-01-07 11:20:32'),(9,'otelqpard5huorohikp0be8hc1',NULL,NULL,NULL,NULL,'2019-01-07 11:25:14'),(10,'rp427j9u1qmv8reu6omq4lsn15',NULL,'23545037',197.38,6,'2019-01-07 11:34:14'),(11,'c5ud448nep2vuloheflgpjrpo4',NULL,'23545037',125.94,6,'2019-01-07 11:39:32'),(12,'o2iaq28b875sqmpedv70ej1p12',NULL,NULL,NULL,NULL,'2019-01-07 11:55:35'),(13,'de0hpq7ttrn66kf5hm87n5fhh6',NULL,NULL,NULL,NULL,'2019-01-07 12:21:45'),(14,'16o6b0f4hqqempuu04j3dl0kv3',NULL,NULL,NULL,NULL,'2019-01-07 12:28:06'),(15,'cm10tt1hlh53gb1r1tl697nc02',7,NULL,NULL,NULL,'2019-01-08 15:27:29'),(16,'h4blh7p2e1cn24bssq83pqfbj3',NULL,NULL,NULL,NULL,'2019-01-08 15:28:28'),(17,'i4fddfol19uskg1hvsl8ef1g02',NULL,NULL,NULL,NULL,'2019-01-08 22:53:41');
/*!40000 ALTER TABLE `tb_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cartsproducts`
--

DROP TABLE IF EXISTS `tb_cartsproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cartsproducts` (
  `idcartproduct` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `dtremoved` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcartproduct`),
  KEY `FK_cartsproducts_carts_idx` (`idcart`),
  KEY `FK_cartsproducts_products_idx` (`idproduct`),
  CONSTRAINT `fk_cartsproducts_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cartsproducts_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cartsproducts`
--

LOCK TABLES `tb_cartsproducts` WRITE;
/*!40000 ALTER TABLE `tb_cartsproducts` DISABLE KEYS */;
INSERT INTO `tb_cartsproducts` VALUES (1,1,7,'2019-01-05 17:38:32','2019-01-05 20:38:14'),(2,1,7,'2019-01-05 17:38:33','2019-01-05 20:38:26'),(3,1,7,'2019-01-05 17:38:33','2019-01-05 20:38:28'),(4,1,7,'2019-01-05 17:38:34','2019-01-05 20:38:29'),(5,1,7,'2019-01-05 17:38:34','2019-01-05 20:38:30'),(6,1,7,'2019-01-05 17:38:35','2019-01-05 20:38:31'),(7,1,7,'2019-01-05 17:38:36','2019-01-05 20:38:31'),(8,1,7,'0000-00-00 00:00:00','2019-01-05 20:38:31'),(9,1,7,'0000-00-00 00:00:00','2019-01-05 20:43:22'),(10,1,10,'0000-00-00 00:00:00','2019-01-05 20:43:33'),(11,1,6,'2019-01-05 17:49:45','2019-01-05 20:49:18'),(12,1,6,'2019-01-05 17:52:40','2019-01-05 20:49:21'),(13,1,6,'2019-01-05 17:52:40','2019-01-05 20:49:22'),(14,1,6,'2019-01-05 17:52:41','2019-01-05 20:49:23'),(15,1,6,'2019-01-05 17:52:41','2019-01-05 20:49:24'),(16,1,6,'2019-01-05 17:52:41','2019-01-05 20:49:24'),(17,1,6,'2019-01-05 17:52:42','2019-01-05 20:49:24'),(18,1,6,'2019-01-05 17:52:42','2019-01-05 20:49:25'),(19,1,6,'2019-01-05 17:53:02','2019-01-05 20:49:25'),(20,1,6,'2019-01-05 17:53:05','2019-01-05 20:49:26'),(21,1,6,'2019-01-05 17:53:07','2019-01-05 20:49:26'),(22,1,6,'2019-01-05 17:53:10','2019-01-05 20:49:26'),(23,1,6,'2019-01-05 17:53:10','2019-01-05 20:49:27'),(24,1,6,'2019-01-05 17:53:11','2019-01-05 20:49:28'),(25,1,6,'2019-01-05 17:53:11','2019-01-05 20:49:28'),(26,1,6,'2019-01-05 17:53:12','2019-01-05 20:49:28'),(27,1,6,'2019-01-05 17:53:12','2019-01-05 20:49:30'),(28,1,6,'2019-01-05 17:53:13','2019-01-05 20:49:31'),(29,1,6,'2019-01-05 17:53:13','2019-01-05 20:49:32'),(30,1,6,'2019-01-05 17:53:13','2019-01-05 20:49:33'),(31,1,6,'2019-01-05 17:53:14','2019-01-05 20:52:33'),(32,1,6,'2019-01-05 17:53:14','2019-01-05 20:52:35'),(33,1,6,'2019-01-05 17:53:15','2019-01-05 20:52:36'),(34,1,6,'2019-01-05 17:53:15','2019-01-05 20:52:37'),(35,1,6,'2019-01-05 17:53:15','2019-01-05 20:52:55'),(36,1,6,'2019-01-05 18:02:36','2019-01-05 20:52:59'),(37,1,7,'2019-01-05 18:04:36','2019-01-05 21:02:22'),(38,1,7,'2019-01-05 18:04:37','2019-01-05 21:02:22'),(39,1,7,'2019-01-05 18:04:38','2019-01-05 21:02:22'),(40,1,6,'2019-01-05 18:08:05','2019-01-05 21:02:28'),(41,1,7,'2019-01-05 18:07:52','2019-01-05 21:02:32'),(42,1,8,'2019-01-05 18:08:07','2019-01-05 21:04:29'),(43,1,7,'2019-01-05 18:30:14','2019-01-05 21:04:42'),(44,1,6,'2019-01-05 18:08:10','2019-01-05 21:04:44'),(45,1,8,'2019-01-05 18:30:27','2019-01-05 21:04:47'),(46,1,6,'2019-01-05 18:30:17','2019-01-05 21:08:01'),(47,1,7,'2019-01-05 18:30:14','2019-01-05 21:08:14'),(48,1,7,'2019-01-05 18:30:14','2019-01-05 21:24:32'),(49,1,8,'2019-01-05 18:30:28','2019-01-05 21:30:20'),(50,1,8,'2019-01-05 18:30:29','2019-01-05 21:30:22'),(51,1,8,'2019-01-05 18:30:29','2019-01-05 21:30:23'),(52,1,8,'2019-01-05 18:30:35','2019-01-05 21:30:23'),(53,1,10,'2019-01-05 18:35:17','2019-01-05 21:30:43'),(54,1,10,'2019-01-05 18:36:36','2019-01-05 21:30:46'),(55,1,10,'2019-01-05 18:36:36','2019-01-05 21:36:31'),(56,1,10,'2019-01-05 18:36:36','2019-01-05 21:36:33'),(57,1,10,'2019-01-05 18:36:36','2019-01-05 21:36:34'),(58,1,7,'2019-01-05 20:16:09','2019-01-05 22:26:24'),(59,1,7,'2019-01-05 20:16:10','2019-01-05 22:26:24'),(60,1,7,'2019-01-05 20:17:53','2019-01-05 22:26:24'),(61,1,10,'2019-01-05 20:35:30','2019-01-05 23:18:02'),(62,1,10,'2019-01-05 20:35:33','2019-01-05 23:35:24'),(63,1,10,'2019-01-05 20:38:32','2019-01-05 23:35:28'),(64,1,10,'2019-01-05 20:41:09','2019-01-05 23:38:28'),(65,1,10,'2019-01-05 20:41:14','2019-01-05 23:38:35'),(66,1,10,'2019-01-05 20:41:18','2019-01-05 23:38:36'),(67,1,10,NULL,'2019-01-05 23:38:37'),(68,1,10,NULL,'2019-01-05 23:47:18'),(69,1,10,NULL,'2019-01-05 23:47:30'),(70,3,10,'2019-01-06 14:16:10','2019-01-06 15:44:59'),(71,3,10,'2019-01-06 14:16:10','2019-01-06 15:45:02'),(72,3,10,'2019-01-06 14:16:12','2019-01-06 17:04:06'),(73,3,10,'2019-01-06 14:16:47','2019-01-06 17:16:31'),(74,3,10,'2019-01-06 14:29:02','2019-01-06 17:16:41'),(75,3,10,'2019-01-06 14:29:03','2019-01-06 17:16:42'),(76,3,10,'2019-01-06 14:29:04','2019-01-06 17:16:43'),(77,3,10,'2019-01-06 14:29:04','2019-01-06 17:16:44'),(78,3,10,'2019-01-06 14:29:06','2019-01-06 17:16:44'),(79,3,10,'2019-01-06 14:29:06','2019-01-06 17:16:45'),(80,3,10,'2019-01-06 14:29:07','2019-01-06 17:16:46'),(81,3,10,'2019-01-06 14:48:15','2019-01-06 17:16:47'),(82,3,10,'2019-01-06 15:29:52','2019-01-06 17:53:32'),(83,3,10,NULL,'2019-01-06 17:53:37'),(84,3,10,NULL,'2019-01-06 17:53:41'),(85,4,9,'2019-01-06 16:10:44','2019-01-06 18:52:15'),(86,4,9,'2019-01-06 16:10:44','2019-01-06 18:52:15'),(87,4,9,'2019-01-06 16:10:44','2019-01-06 18:52:15'),(88,4,9,'2019-01-06 16:10:44','2019-01-06 18:52:15'),(89,4,9,'2019-01-06 16:10:44','2019-01-06 18:52:15'),(90,4,9,'2019-01-06 16:43:38','2019-01-06 19:11:35'),(91,4,9,'2019-01-06 16:43:42','2019-01-06 19:11:36'),(92,4,9,'2019-01-06 16:43:52','2019-01-06 19:11:37'),(93,6,6,NULL,'2019-01-07 01:18:57'),(94,6,6,NULL,'2019-01-07 01:18:57'),(95,6,6,NULL,'2019-01-07 01:18:57'),(96,6,6,NULL,'2019-01-07 01:18:57'),(97,6,6,NULL,'2019-01-07 01:18:57'),(98,8,6,NULL,'2019-01-07 11:30:35'),(99,8,6,NULL,'2019-01-07 11:30:38'),(100,8,6,NULL,'2019-01-07 11:30:42'),(101,10,9,'2019-01-07 08:55:10','2019-01-07 11:37:39'),(102,10,9,'2019-01-07 08:55:10','2019-01-07 11:38:20'),(103,10,9,'2019-01-07 08:55:10','2019-01-07 11:38:21'),(104,10,9,'2019-01-07 08:55:10','2019-01-07 11:38:22'),(105,11,8,NULL,'2019-01-07 11:40:03');
/*!40000 ALTER TABLE `tb_cartsproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categories` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `descategory` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
INSERT INTO `tb_categories` VALUES (4,'Samsung','2018-12-28 02:50:07'),(5,'Celular','2018-12-29 01:39:35');
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orders` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idstatus` int(11) NOT NULL,
  `idaddress` int(11) NOT NULL,
  `vltotal` decimal(10,2) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorder`),
  KEY `FK_orders_users_idx` (`iduser`),
  KEY `fk_orders_ordersstatus_idx` (`idstatus`),
  KEY `fk_orders_carts_idx` (`idcart`),
  KEY `fk_orders_addresses_idx` (`idaddress`),
  CONSTRAINT `fk_orders_addresses` FOREIGN KEY (`idaddress`) REFERENCES `tb_addresses` (`idaddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_ordersstatus` FOREIGN KEY (`idstatus`) REFERENCES `tb_ordersstatus` (`idstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES (3,6,24,2,3,6169.23,'2019-01-07 01:21:19'),(4,6,7,3,4,6117.53,'2019-01-07 01:26:45'),(6,10,25,3,6,4793.38,'2019-01-07 11:46:12');
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ordersstatus`
--

DROP TABLE IF EXISTS `tb_ordersstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ordersstatus` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `desstatus` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ordersstatus`
--

LOCK TABLES `tb_ordersstatus` WRITE;
/*!40000 ALTER TABLE `tb_ordersstatus` DISABLE KEYS */;
INSERT INTO `tb_ordersstatus` VALUES (1,'Em Aberto','2017-03-13 03:00:00'),(2,'Aguardando Pagamento','2017-03-13 03:00:00'),(3,'Pago','2017-03-13 03:00:00'),(4,'Entregue','2017-03-13 03:00:00');
/*!40000 ALTER TABLE `tb_ordersstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_persons`
--

DROP TABLE IF EXISTS `tb_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_persons` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `desperson` varchar(64) NOT NULL,
  `desemail` varchar(128) DEFAULT NULL,
  `nrphone` bigint(20) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_persons`
--

LOCK TABLES `tb_persons` WRITE;
/*!40000 ALTER TABLE `tb_persons` DISABLE KEYS */;
INSERT INTO `tb_persons` VALUES (7,'Fabricio Sousa','fabriciojosedesousa@gmail.com',89994091618,'2017-03-15 16:10:27'),(11,'Fabricio Sousa','fabriciosousa16@hotmail.com',8994091618,'2018-12-27 21:03:31'),(12,'Artur','arturicozeira@hotmail.com',34229512,'2018-12-28 00:46:12'),(15,'Fabricio  Sousa','fabriciosousa16@hotmail.com',8994091618,'2019-01-06 04:13:45'),(24,'Fabricio Sousa','fabriciojosedesousa@gmail.com',89994091618,'2019-01-07 01:20:04'),(25,'jose de sousa','josesousa@gmail.com',0,'2019-01-07 11:32:14');
/*!40000 ALTER TABLE `tb_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_products` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `desproduct` varchar(64) NOT NULL,
  `vlprice` decimal(10,2) NOT NULL,
  `vlwidth` decimal(10,2) NOT NULL,
  `vlheight` decimal(10,2) NOT NULL,
  `vllength` decimal(10,2) NOT NULL,
  `vlweight` decimal(10,2) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (6,'Smartphone Motorola Moto G5 Plus',1135.23,15.20,7.40,0.70,0.16,'smartphone-motorola-moto-g5-plus','2018-12-30 19:37:34'),(7,'Smartphone Moto Z Play',1887.78,14.10,0.90,1.16,0.13,'smartphone-moto-z-play','2018-12-30 19:37:34'),(8,'Smartphone Samsung Galaxy J5 Pro',1299.00,14.60,7.10,0.80,0.16,'smartphone-samsung-galaxy-j5','2018-12-30 19:37:34'),(9,'Smartphone Samsung Galaxy J7 Prime',1149.00,15.10,7.50,0.80,0.16,'smartphone-samsung-galaxy-j7','2018-12-30 19:37:34'),(10,'Smartphone Samsung Galaxy J3 Dual',679.90,14.20,7.10,0.70,0.14,'smartphone-samsung-galaxy-j3','2018-12-30 19:37:34');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productscategories`
--

DROP TABLE IF EXISTS `tb_productscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productscategories` (
  `idcategory` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  PRIMARY KEY (`idcategory`,`idproduct`),
  KEY `fk_productscategories_products_idx` (`idproduct`),
  CONSTRAINT `fk_productscategories_categories` FOREIGN KEY (`idcategory`) REFERENCES `tb_categories` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productscategories_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productscategories`
--

LOCK TABLES `tb_productscategories` WRITE;
/*!40000 ALTER TABLE `tb_productscategories` DISABLE KEYS */;
INSERT INTO `tb_productscategories` VALUES (4,8),(4,9),(4,10),(5,6),(5,7),(5,8),(5,9);
/*!40000 ALTER TABLE `tb_productscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `inadmin` tinyint(4) NOT NULL DEFAULT '0',
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  KEY `FK_users_persons_idx` (`idperson`),
  CONSTRAINT `fk_users_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (7,7,'admin','$2y$12$D.VFGNa2hziPFC7S1x0eSuIS9sBXIR1tH7JvMeYbqv8d43cCb9Wre',1,'2017-03-15 16:10:27'),(10,11,'fjsousa','$2y$12$EVKjBB3F6KGKoD3.Mx2k6.6Z0rOMKEXDO3Wl4LNYZ/9XZQoxQgXia',0,'2018-12-27 21:03:31'),(12,12,'artur','$12$D.VFGNa2hziPFC7S1x0eSuIS9sBXIR1tH7JvMeYbqv8d43cCb9Wre',0,'2018-12-28 00:46:12'),(15,15,'fabriciosousa16@hotmail.com','$2y$12$uRcbjMUQ7SbxaecgR5ZzBej0bKIVVKj8gb/n/VjNuZV8aKOtGj8Sq',0,'2019-01-06 04:13:45'),(24,24,'fabriciojosedesousa@gmail.com','$2y$12$X.DbzE1EP1/fkc3.mOJ7murBrli12YBinLx5eGp3xfW59YB170YpG',0,'2019-01-07 01:20:04'),(25,25,'josesousa@gmail.com','$2y$12$rQQqFdN0d/BghvVAtdSgGOFyc6N80wXnGUDnE8tEjGQnMWha3.fR.',0,'2019-01-07 11:32:14');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userslogs`
--

DROP TABLE IF EXISTS `tb_userslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_userslogs` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `deslog` varchar(128) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `desuseragent` varchar(128) NOT NULL,
  `dessessionid` varchar(64) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog`),
  KEY `fk_userslogs_users_idx` (`iduser`),
  CONSTRAINT `fk_userslogs_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userslogs`
--

LOCK TABLES `tb_userslogs` WRITE;
/*!40000 ALTER TABLE `tb_userslogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_userslogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userspasswordsrecoveries`
--

DROP TABLE IF EXISTS `tb_userspasswordsrecoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_userspasswordsrecoveries` (
  `idrecovery` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `dtrecovery` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrecovery`),
  KEY `fk_userspasswordsrecoveries_users_idx` (`iduser`),
  CONSTRAINT `fk_userspasswordsrecoveries_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userspasswordsrecoveries`
--

LOCK TABLES `tb_userspasswordsrecoveries` WRITE;
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` DISABLE KEYS */;
INSERT INTO `tb_userspasswordsrecoveries` VALUES (1,7,'127.0.0.1',NULL,'2017-03-15 16:10:59'),(2,7,'127.0.0.1','2017-03-15 13:33:45','2017-03-15 16:11:18'),(3,7,'127.0.0.1','2017-03-15 13:37:35','2017-03-15 16:37:12'),(4,10,'127.0.0.1',NULL,'2018-12-27 22:56:02'),(5,10,'127.0.0.1',NULL,'2018-12-27 22:56:36'),(6,10,'127.0.0.1',NULL,'2018-12-27 22:57:17'),(7,10,'127.0.0.1',NULL,'2018-12-27 22:57:20'),(8,10,'127.0.0.1',NULL,'2018-12-27 22:57:21'),(9,10,'127.0.0.1',NULL,'2018-12-27 22:57:36'),(10,10,'127.0.0.1',NULL,'2018-12-27 22:58:15'),(11,10,'127.0.0.1',NULL,'2018-12-27 22:58:16'),(12,10,'127.0.0.1',NULL,'2018-12-27 22:58:18'),(13,10,'127.0.0.1',NULL,'2018-12-27 22:58:19'),(14,10,'127.0.0.1',NULL,'2018-12-27 22:59:49'),(15,10,'127.0.0.1',NULL,'2018-12-27 23:02:21'),(16,10,'127.0.0.1',NULL,'2018-12-27 23:02:23'),(17,10,'127.0.0.1',NULL,'2018-12-27 23:03:21'),(18,10,'127.0.0.1',NULL,'2018-12-27 23:12:17'),(19,10,'127.0.0.1',NULL,'2018-12-27 23:13:22'),(20,7,'127.0.0.1','2018-12-27 21:16:39','2018-12-27 23:19:25'),(21,10,'127.0.0.1','2018-12-27 21:19:36','2018-12-28 00:19:06'),(22,10,'127.0.0.1','2018-12-27 21:23:18','2018-12-28 00:22:45'),(23,7,'127.0.0.1','2018-12-27 21:33:09','2018-12-28 00:32:39'),(24,7,'127.0.0.1','2018-12-27 21:44:14','2018-12-28 00:43:49'),(25,12,'127.0.0.1',NULL,'2018-12-28 00:46:28'),(26,10,'127.0.0.1','2019-01-06 01:16:16','2019-01-06 04:14:45'),(27,10,'::1',NULL,'2019-01-07 11:21:47'),(28,10,'::1','2019-01-07 08:25:24','2019-01-07 11:24:58');
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-09 10:23:39
