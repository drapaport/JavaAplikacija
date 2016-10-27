-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: konferencija_baza
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `admini`
--

DROP TABLE IF EXISTS `admini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admini` (
  `id_admina` int(11) NOT NULL AUTO_INCREMENT,
  `korisnickoime` varchar(30) DEFAULT NULL,
  `lozinka` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_admina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admini`
--

LOCK TABLES `admini` WRITE;
/*!40000 ALTER TABLE `admini` DISABLE KEYS */;
INSERT INTO `admini` VALUES (1,'admin1','1'),(2,'admin2','2');
/*!40000 ALTER TABLE `admini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autori`
--

DROP TABLE IF EXISTS `autori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autori` (
  `id_autora` int(3) NOT NULL,
  `ime_autora` varchar(20) DEFAULT NULL,
  `prezime_autora` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `lozinka` varchar(30) DEFAULT NULL,
  `JMBG` varchar(13) DEFAULT NULL,
  `broj_telefona` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_autora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autori`
--

LOCK TABLES `autori` WRITE;
/*!40000 ALTER TABLE `autori` DISABLE KEYS */;
INSERT INTO `autori` VALUES (1,'Dejana','Rapaic','dejanarapaic@gmail.com','1','0215465478444','+381-60-5066986'),(2,'Radmila ','Jokic','rjokic@yahoo.com','1','2145658454444','+381-64-8885957');
/*!40000 ALTER TABLE `autori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odluke`
--

DROP TABLE IF EXISTS `odluke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odluke` (
  `id_rada` int(3) NOT NULL,
  `status_rada` varchar(30) DEFAULT NULL,
  `komentar` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_rada`),
  KEY `FK_r_idx` (`id_rada`),
  CONSTRAINT `fkk` FOREIGN KEY (`id_rada`) REFERENCES `radovi` (`id_rada`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odluke`
--

LOCK TABLES `odluke` WRITE;
/*!40000 ALTER TABLE `odluke` DISABLE KEYS */;
INSERT INTO `odluke` VALUES (16,'ODOBREN','Rad je super'),(18,'NEODOBREN','rad nista ne valja'),(19,'ODOBREN','Dobar rad'),(20,'Nije još dodeljen status!','Nije dodeljen komentar!');
/*!40000 ALTER TABLE `odluke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radovi`
--

DROP TABLE IF EXISTS `radovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radovi` (
  `id_rada` int(3) NOT NULL AUTO_INCREMENT,
  `ime_rada` varchar(200) DEFAULT NULL,
  `naucna_oblast` varchar(20) DEFAULT NULL,
  `apstrakt` varchar(350) DEFAULT NULL,
  `koautor1` varchar(60) DEFAULT NULL,
  `koautor2` varchar(60) DEFAULT NULL,
  `datum_prijave_rada` varchar(200) DEFAULT NULL,
  `upload_rada` varchar(200) DEFAULT NULL,
  `autor` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_rada`),
  KEY `FK_idautora` (`autor`),
  CONSTRAINT `FK_idautora` FOREIGN KEY (`autor`) REFERENCES `autori` (`id_autora`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radovi`
--

LOCK TABLES `radovi` WRITE;
/*!40000 ALTER TABLE `radovi` DISABLE KEYS */;
INSERT INTO `radovi` VALUES (16,'Dejanin prvi rad','telekomunikacije','apstrakt','Zorana Colovic','Radmila Jokic','20/09/2016 13:49:07','Upravljanje transakcijama.pdf',1),(18,'Dejanin drugi rad','elektronika','apstrakt','','','20/09/2016 13:51:03','US-Osnove-JAVA-programiranja-Zbirka.pdf',1),(19,'Nalov rada 1','raÄunarstvo','apstrakt','Koautor1 ','','20/09/2016 13:54:37','810688.pdf',2),(20,'Naslov rada 2','automatika','apstrakt','Dusan Milosevic','Mihailo VuÄiÄ','20/09/2016 13:57:30','810685.pdf',2);
/*!40000 ALTER TABLE `radovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaposlenje`
--

DROP TABLE IF EXISTS `zaposlenje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaposlenje` (
  `id_autora` int(3) NOT NULL,
  `ime_institucije` varchar(50) DEFAULT NULL,
  `grad` varchar(30) DEFAULT NULL,
  `drzava` varchar(30) DEFAULT NULL,
  `pozicija` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_autora`),
  CONSTRAINT `FK_zap` FOREIGN KEY (`id_autora`) REFERENCES `autori` (`id_autora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposlenje`
--

LOCK TABLES `zaposlenje` WRITE;
/*!40000 ALTER TABLE `zaposlenje` DISABLE KEYS */;
INSERT INTO `zaposlenje` VALUES (1,'NBS','Beograd','Srbija','programer'),(2,'IMPP','Beograd','Srbija','istrazivac saradnik');
/*!40000 ALTER TABLE `zaposlenje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-20 14:03:15
