-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bjpowernode
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `code` varchar(6) DEFAULT NULL,
  `tel` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (4,'阿里','浙江省杭州市滨江区网商路700号','100000','34567891012'),(5,'网易','浙江省杭州市滨江区网商路599号','100000','45678910123'),(6,'百度大厦','北京市海淀区上地十街10号','100000','12345678909'),(7,'金志杭','浙江省杭州市钱塘新区白杨街道玉屏洲生活园区','100000','13263938396'),(8,'志航','江西省上饶市鄱阳县鄱阳镇金家村','100000','15168385052');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bk_nm` varchar(255) DEFAULT NULL,
  `pic_nm` varchar(255) DEFAULT NULL,
  `pri` int DEFAULT NULL,
  `aut` varchar(255) DEFAULT NULL,
  `pub` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'《蜜蜂救大象》','读物-1',36,'钱欣葆','长江少年儿童出版社'),(2,'《雷锋的故事》','读物-2',36,'何梦佳','煤炭工业出版社'),(3,'《百问白答》','读物-3',36,'申慧荣','21世纪出版社'),(4,'《滥竽充数》','读物-4',36,'宋怀芝','五洲传播出版社'),(5,'《水浒传》《红楼梦》《三国演义》《西游记》','名著-1',231,'施耐庵、曹雪芹、罗贯中、吴承恩','红旗出版社'),(6,'《孙子兵法》《三十六计》《鬼谷子》','名著-2',231,'孙武、佚名、王诩','中国文联出版社'),(7,'《城南旧事》《朝花夕拾》《骆驼祥子》','名著-3',231,'林海音、鲁迅、老舍','中国文联出版社'),(8,'《诗经》','名著-4',231,'佚名','中国文联出版社'),(9,'《太子要出嫁·冷君嗜宠》','小说-1',68,'夜离醉','有乐中文网'),(10,'《鬼医》','小说-2',68,'云殇','云起书院'),(11,'《荒芜梦与不归人》','小说-3',68,'江书琏','xxx出版社'),(12,'《尊者医仙》','小说-4',68,'残梦夜羽','xxx出版社'),(13,'《Java从入门到项目实战》《C++从入门到精通》《Android开发从入门到精通》《C语言从入门到项目实战》','专业-1',129,'李兴华','中国水利水电出版社'),(14,'《JS高级程序设计》《JS权威指南》','专业-2',129,'David Flanagan','人民邮电、机械工业出版社'),(15,'《HTML5与CSS3权威指南》','专业-3',129,'陆凌牛','机械工业出版社'),(16,'《MySql数据库从入门到精通》','专业-4',129,'千锋教育高教产品研发部','清华大学出版社'),(17,'《Python经典教程》','专业-5',129,'张基温 等','机械工业出版社');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `deptno` varchar(255) NOT NULL,
  `dname` char(11) DEFAULT NULL,
  `loc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES ('40','qwe','SheqweqnZhen'),('王某','13223232302','江西省上饶市鄱阳县鄱阳真'),('王某某','15161342823','北京市北京市朝阳区'),('金某','14327433635','浙江省杭州市江岸区'),('金某某','17441233392','四川省成都市');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'adminjin','12345',NULL),(2,'adminsan','54321',NULL),(7,'admin123','123qweQWE','qwe123@qq.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05 13:45:56
