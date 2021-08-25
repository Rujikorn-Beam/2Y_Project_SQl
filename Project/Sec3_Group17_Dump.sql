-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `membar`
--

DROP TABLE IF EXISTS `membar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membar` (
  `Mem_id` char(5) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Plan_No` char(5) NOT NULL,
  `bill` char(6) DEFAULT NULL,
  PRIMARY KEY (`Mem_id`),
  KEY `FK_planmem` (`Plan_No`),
  CONSTRAINT `FK_idmem` FOREIGN KEY (`Mem_id`) REFERENCES `member_info` (`Mem_id`),
  CONSTRAINT `FK_planmem` FOREIGN KEY (`Plan_No`) REFERENCES `plan` (`Plan_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membar`
--

LOCK TABLES `membar` WRITE;
/*!40000 ALTER TABLE `membar` DISABLE KEYS */;
INSERT INTO `membar` VALUES ('10734','Wanwisa','Laowsiriwong','08-955-5578-59','38264',NULL),('10799','Porsuk','Rungarunsrisuk','08-955-5269-71','41105',NULL),('13761','Paveena','Hongitthiporn','08-855-5425-15','15997',NULL),('18803','Pitchaporn','Songprakob','8-955-5553-48','41105',NULL),('20768','Pongsakorn','Tayanukorn','08-955-5796-76','22287',NULL),('21226','Waipop','Permpornskul','08-655-5799-73','15997',NULL),('26776','Napida','Chongcharoenkit','08-655-5613-35','22287',NULL),('27386','Deven','Tiwari','08-955-5986-75','38264',NULL),('36367','Nithinee','Trironnarith','08-856-5866-67','15997',NULL),('37704','Jane','Wathanayunyong','08-655-5858-06','22287',NULL),('38294','Cholravee','Kittimethee','08-955-5604-22','38264',NULL),('41114','Detbodi','Wetsirikun','08-955-5150-87','22287',NULL),('41299','Napat','Pangkul','8-855-5426-86','15997',NULL),('44023','Rujikorn','Yeamapichard','08-955-5759-20','15997',NULL),('48335','Pubas','Deedumrong','08-955-5754-24','38264',NULL),('50610','Kittipoj','Tuntanet','08-655-5716-26','22287',NULL),('57569','Anyamanee','Amatyakul','08-857-5866-67','38264',NULL),('63042','Kasidis','Chokphaiboon','08-655-5433-61','15997',NULL),('64734','Chatchai','Hojitsiriyanon','08-855-5866-67','38264',NULL),('68235','Atitiya','Pakdeevanich','08-655-5883-18','38264',NULL),('71687','Punyaporn','Srisuk','08-655-5111-46','38264',NULL),('72318','Araya','Prateepthintong','08-855-5199-01','38264',NULL),('72438','Chonnikarn','Wavemanee','08-655-5336-97','38264',NULL),('73473','Siriwimon','Ainsawang','08-955-5922-58','15997',NULL),('77103','Tasha','Settewong','08-655-5972-85','22287',NULL),('79326','Chancheep','Mahacharoensuk','08-655-5989-00','41105',NULL),('79568','Apisith','Roopsom','08-955-5603-03','22287',NULL),('84800','Taiichi','Sudo','08-855-5839-58','15997',NULL),('96145','Nutsongwat','Cheawka','08-955-5453-61','41105',NULL),('98902','Cherdrush','Apiratiwut','08-655-5312-83','22287',NULL);
/*!40000 ALTER TABLE `membar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_info`
--

DROP TABLE IF EXISTS `member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_info` (
  `Mem_id` char(5) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Passward` varchar(100) NOT NULL,
  `Sub_date` date NOT NULL,
  `Reserve_email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
INSERT INTO `member_info` VALUES ('10734','Drive00@hotmail.com','67PcGz3Gmr','2020-10-31',NULL),('10799','Porsuk_Rung@gmail.com','Am02uoH0','2020-11-17',NULL),('13761','Cartoon555@mahidol.ac.th','9C68CZ8RrS','2020-10-17',NULL),('18803','Pitchaporan@hotmail.com','SnfMkwK32W','2020-09-25',NULL),('20768','Pongsakorn.taya@gmail.com','cZ1Swm','2020-09-23',NULL),('21226','Zixi@hotmail.com','Q8869mqZtR','2020-10-26',NULL),('26776','Yuanfang.ma@mahidol.ac.th','7U6HmNPDYa','2020-11-24',NULL),('27386','suder.yo@gmail.com','JKLm5BtCFA','2020-10-30',NULL),('36367','Nithinee.tri@mahidol.ac.th','pnBWgHFScW','2020-04-24',NULL),('37704','Haowen_Yang@gmail.com','JdY6caXmYG','2020-10-25',NULL),('38294','Cholravee.kit@mahidol.ac.th','43fdEKin','2020-01-11',NULL),('41114','non.som@gmail.com','YDAPDBdKfL','2020-10-24',NULL),('41299','fightda@gmail.com','NngvHYExwy','2020-05-24',NULL),('44023','Rujikorn.yea@mahidol.ac.th','6RnWKf','2020-09-11',NULL),('48335','Pubas.dee@mahidol.edu','OaigR3MbkG8S','2020-09-17',NULL),('50610','Kittipoj@mahidol.edu','hIkr99igdvrb','2020-08-22',NULL),('57569','Anyamanee_yam@gmail.com','eYJerkCjWe','2020-02-24',NULL),('63042','Yu.wang@hotmail.com','mJ6P5PLTKP','2020-12-24',NULL),('64734','Chatchai.hoji@hotmail.com','RSk6x5hKvL','2020-01-24',NULL),('68235','Atitiya_pakdee@hotmail.com','CmB7BtvMYj3OH1pFR','2020-05-27',NULL),('71687','Punyaporn@gmail.com','8k3G9h5UOAo1panw','2020-10-24',NULL),('72318','ArayaPratee@hotmail.com','5Z6s87wZWnMS','2020-01-04',NULL),('72438','Yohoka@mahidol.ac.th','ALgjRqJvhq','2020-10-29',NULL),('73473','Siriwimon@hotmail.com','s1qb7Sw2Q6','2020-02-24',NULL),('77103','ghop123@mahidol.ac.th','h8MGv9eTJB','2020-10-28',NULL),('79326','Chancheep@hotmail.com','l8C6JshsgI','2020-05-03',NULL),('79568','Wawa.ac@mahidol.ac.th','KqK27DaqjG','2020-10-27',NULL),('84800','Taiichi.sud@mahidol.ac.th','UXSxRPr2Sp','2020-10-24',NULL),('96145','Nutsongwat@hotmail.com','U0XA2Qt1gSlCJpzg','2020-04-23',NULL),('98902','Cherdrush@mahidol.ac.th','vCKQ11','2020-03-18',NULL);
/*!40000 ALTER TABLE `member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `Movie_id` char(5) NOT NULL,
  `Mem_id` char(5) DEFAULT NULL,
  `Rat_id` char(5) DEFAULT NULL,
  `Rev_id` char(5) DEFAULT NULL,
  PRIMARY KEY (`Movie_id`),
  KEY `Mem_id` (`Mem_id`),
  KEY `Rev_id` (`Rev_id`),
  KEY `Rat_id` (`Rat_id`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`Mem_id`) REFERENCES `member_info` (`Mem_id`),
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`Rev_id`) REFERENCES `review_info` (`Rev_id`),
  CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`Rat_id`) REFERENCES `rating_info` (`Rat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('12481','10734','58699',NULL),('13725','21226','35579','41863'),('21211','79568','82502',NULL),('21216','41299',NULL,'30258'),('24534',NULL,NULL,NULL),('27236','10799','21642',NULL),('33463','41114','11698',NULL),('35266',NULL,NULL,NULL),('35832','48335',NULL,'82742'),('35849','68235','72696',NULL),('36271','77103','90996',NULL),('38523','50610','68301','44335'),('42936',NULL,NULL,NULL),('45423','10799',NULL,'83943'),('47762','73473','13363','45248'),('47937','18803','64733',NULL),('48629','18803','22624',NULL),('48634','10799','86205',NULL),('49643',NULL,NULL,NULL),('53705','71687','13752',NULL),('73627','63042','59098',NULL),('74862','72438','59198',NULL),('82362','37704','99885',NULL),('82385','72318','29502',NULL),('83285','38294',NULL,'37626'),('83592','18803',NULL,'53762'),('86470','98902','93772',NULL),('88340','96145',NULL,'93762'),('92366','26776','48310',NULL),('93763','79326',NULL,'84926'),('98625',NULL,NULL,NULL),('99912','27386','26788',NULL);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_info`
--

DROP TABLE IF EXISTS `movie_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_info` (
  `Movie_id` char(5) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Y_ear` char(4) NOT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `T_ime` time NOT NULL,
  `Mature_rat` varchar(20) NOT NULL,
  PRIMARY KEY (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_info`
--

LOCK TABLES `movie_info` WRITE;
/*!40000 ALTER TABLE `movie_info` DISABLE KEYS */;
INSERT INTO `movie_info` VALUES ('12481','Rio 2','2014','Family/Animation','01:41:00','Kids'),('13725','MILF','2018','Comedies','01:41:00','Adult_Only'),('21211','Sin Sisters 2','2010','Thai Dramas','01:44:00','Adult_Only'),('21216','Hotel Transylvania 2','2015','Family/Animation','01:29:00','Kids'),('24534','The Legend of Muay Thai: 9 Satra','2018','Fantasy/Action','01:44:00','Everyone'),('27236','Resident Evil: Vendetta','2017','Action/Animation','01:55:00','Everyone'),('33463','Johnny English Strikes Again','2018','Comedy/Adventure','01:28:00','Everyone'),('35266','Extraction','2020','Action/Thriller','01:57:00','Everyone'),('35832','Oceans 8','2018','Comedy/Crime','01:51:00','Everyone'),('35849','Mae Bia','2015','Life','02:12:00','Adult_Only'),('36271','Chocolate City: Vegas Strip','2017','Dramas','01:29:00','Adult_Only'),('38523','A Babysitters Guide to Monster Hunting','2020',NULL,'01:34:00','Everyone'),('42936','Tiger','2016','Dramas','01:37:00','Adult_Only'),('45423','Bloodshot','2020','Action/Adventure','01:49:00','Adult_Only'),('47762','Call','2020','Fantasy/Thriller','01:52:00','Everyone'),('47937','#Alive','2020','Drama/Horror','01:39:00','Everyone'),('48629','The Open House','2018','Horror','01:34:00','Everyone'),('48634','Zombieland: Double Tap','2019','Comedy/Horror','01:39:00','Everyone'),('49643','Latte and the Magic Waterstone','2019','Family/Animation','01:29:00','Kids'),('53705','Bumblebee','2018','Action/Sci-fi','01:54:00','Everyone'),('73496','365 Days','2019','Dramas','01:54:00','Adult_Only'),('73627','Friend Zone','2019','Romance/Drama','01:59:00','Everyone'),('74862','Pets United','2019','Animation/Comedy','01:32:00','Kids'),('82362','Bikeman 2','2019','Romance/Comedy','01:50:00','Everyone'),('82385','Spider-Man: Far From Home','2019','Action/Adventure','02:09:00','Everyone'),('83285','Overlord','2018','Horror/War','01:48:00','Everyone'),('83592','Parasite','2019','Thriller/Comedy','02:12:00','Everyone'),('86470','The Princess Switch','2018','Romance/Comedy','01:42:00','Everyone'),('88340','The Christmas Chronicles 2','2020','Comedy/Adventure','01:55:00','Kids'),('92366','Jurassic World: Fallen Kingdom','2018','Action','02:10:00','Everyone'),('93763','The Little Mermaid','2018','Fantasy/Adventure','01:34:00','Kids'),('98625','Red Wine in the Dark Night','2015','Thai Movies','01:44:00','Adult_Only'),('99912','The Angry Birds Movie 2','2019','Family/Comedy','01:37:00','Kids');
/*!40000 ALTER TABLE `movie_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `Plan_No` char(5) NOT NULL,
  `Price` varchar(4) DEFAULT NULL,
  `Quality` varchar(8) DEFAULT NULL,
  `No_screen` char(1) DEFAULT NULL,
  `Download` char(1) DEFAULT NULL,
  PRIMARY KEY (`Plan_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES ('1',NULL,NULL,NULL,NULL),('15997','99','Nomal','1','1'),('2',NULL,NULL,NULL,NULL),('22287','279','Nomal','1','1'),('3',NULL,NULL,NULL,NULL),('38264','379','FULL_HD','2','2'),('4',NULL,NULL,NULL,NULL),('41105','419','FULL_HD','4','4'),('5',NULL,NULL,NULL,NULL),('6',NULL,NULL,NULL,NULL),('7',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil`
--

DROP TABLE IF EXISTS `profil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profil` (
  `Pro_id` char(6) NOT NULL,
  `Mem_id` char(5) NOT NULL,
  `Rat_id` char(5) DEFAULT NULL,
  PRIMARY KEY (`Pro_id`),
  KEY `FK_mempro` (`Mem_id`),
  KEY `FK_ratpro` (`Rat_id`),
  CONSTRAINT `FK_mempro` FOREIGN KEY (`Mem_id`) REFERENCES `member_info` (`Mem_id`),
  CONSTRAINT `FK_ratpro` FOREIGN KEY (`Rat_id`) REFERENCES `rating_info` (`Rat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil`
--

LOCK TABLES `profil` WRITE;
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
INSERT INTO `profil` VALUES ('114396','57569',NULL),('115837','36367',NULL),('164934','77103','90996'),('167609','37704','99885'),('311198','73473','13363'),('311357','98902','93772'),('319989','48335',NULL),('320367','18803','64733'),('321452','71687','13752'),('322345','38294',NULL),('323119','68235','1258'),('324257','50610','68301'),('324258','44023',NULL),('324269','10799','21642'),('324273','72318','29502'),('324274','79326',NULL),('324291','96145','95829'),('324299','20768','35834'),('325563','84800','38573'),('326578','68235','72696'),('327689','18803','22624'),('328799','10799','86205'),('328934','79326','10148'),('328993','96145',NULL),('330010','71687',NULL),('330021','48335',NULL),('332345','79326',NULL),('342722','10799',NULL),('342745','18803',NULL),('342748','84800',NULL),('343749','96145',NULL),('345755','79326',NULL),('345758','72318','77432'),('345767','96145','86206'),('345779','18803','16080'),('345783','10799','40389'),('382492','13761',NULL),('443088','41114','11698'),('446912','41299',NULL),('460030','63042','59098'),('534317','26776','48310'),('602327','21226','35579'),('623342','72438','59198'),('647028','27386','26788'),('900245','38294','53609'),('918648','10734','58699');
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_info`
--

DROP TABLE IF EXISTS `profile_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_info` (
  `Pro_id` char(6) NOT NULL,
  `Nam` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Tpye_Color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_info`
--

LOCK TABLES `profile_info` WRITE;
/*!40000 ALTER TABLE `profile_info` DISABLE KEYS */;
INSERT INTO `profile_info` VALUES ('114396','Linda','1988-06-29','Anyamanee_yam@gmail.com',NULL),('115837','Morthy','1989-06-30','Nithinee.tri@mahidol.ac.th',NULL),('164934','Prayuth','1981-06-22','Heinz_02@ghotmail.com',NULL),('167609','Elmo','1978-10-21','Haowen_Yang@gmail.com',NULL),('311198','Anne','1970-11-15','Siriwimon@hotmail.com',NULL),('311357','Jan','1973-04-04','Cherdrush@mahidol.ac.th',NULL),('319989','Heinz','1960-02-25','Pubas.dee@mahidol.edu',NULL),('320367','Suzanna','1976-10-18','Pitchaporan@hotmail.com',NULL),('321452','William','1972-02-12','Punyaporn@gmail.com',NULL),('322345','Sidney','1956-12-14','Cholravee.kit@mahidol.ac.th',NULL),('323119','George','1970-04-04','Atitiya_pakdee@hotmail.com',NULL),('324257','Anne','1973-11-18','Kittipoj@mahidol.edu',NULL),('324258','Juliette','1966-08-23','Rujikorn.yea@mahidol.ac.th',NULL),('324269','Walter','1973-09-16','Porsuk_Rung@gmail.com',NULL),('324273','John','1955-12-30','ArayaPratee@hotmail.com',NULL),('324274','Raphael','1968-10-25','Chancheep@hotmail.com',NULL),('324291','Gerald','1970-04-04','Nutsongwat@hotmail.com',NULL),('324299','John','1975-11-30','Pongsakorn.taya@gmail.com',NULL),('325563','Marie','1971-08-22','Taiichi.sud@mahidol.ac.th',NULL),('326578','Joker','1978-02-01','Viphob.ler@mahidol.ac.th',NULL),('327689','Leontine','1976-10-15','Satayu_Narg@hotmail.com',NULL),('328799','Robert','1950-04-08','PimsuangKanjan@gmail.com',NULL),('328934','Carlos','1976-11-30','Non_Somboon@mahidol.edu',NULL),('328993','Anton','1958-10-29','Arnon.noo@mahidol.ac.th',NULL),('330010','Georgette','1949-02-25','TeetusPram@hotmail.com',NULL),('330021','William','1972-12-30','Prom_Porm@hotmail.com',NULL),('332345','Annelise','1974-01-05','Peangtep.sae@mahidol.ac.th',NULL),('342722','Louise','1984-10-12','SivatSupasuk@gmail.com',NULL),('342745','Warren','1975-09-23','Pakin_chu@mahidol.ac.th',NULL),('342748','George','1970-05-27','Jilin.li@gmail.com',NULL),('343749','John','1966-05-01','Yu.wang@mahidol.edu',NULL),('345755','Jeanine','1978-12-25','Luxi_xue@hotmail.com',NULL),('345758','Antoinette','1975-06-16','Prayuth.cha@mahidol.ac.th',NULL),('345767','Rupert','1975-03-19','Trisiri.cha@hotmail.com',NULL),('345779','Kenna','1971-07-12','Raypho@gmail.com',NULL),('345783','LaRue','1979-11-28','Lata_ta@hotmail.com',NULL),('382492','Belle','1986-06-27','Cartoon555@mahidol.ac.th',NULL),('443088','Albus','1975-07-21','non.som@gmail.com',NULL),('446912','Elsa','1985-06-26','fightda@gmail.com',NULL),('460030','Ernie','1977-09-21','Yu.wang@hotmail.com',NULL),('534317','Bert','1976-08-21','Yuanfang.ma@mahidol.ac.th',NULL),('602327','Roger','1979-11-21','Zixi@hotmail.com',NULL),('623342','Trump','1982-06-23','Yohoka@mahidol.ac.th',NULL),('647028','Groge','1983-06-24','suder.yo@gmail.com',NULL),('804835','Ken','1987-06-28','Chatchai.hoji@hotmail.com',NULL),('900245','Randy','1975-06-21','halohalo@gmail.com',NULL),('918648','Anna','1984-06-25','Drive00@hotmail.com',NULL),('968498','Kermit','1980-12-21','Wawa.ac@mahidol.ac.th',NULL);
/*!40000 ALTER TABLE `profile_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `Rat_id` char(5) NOT NULL,
  `Pro_id` char(6) NOT NULL,
  `Movie_id` char(5) DEFAULT NULL,
  `TV_id` char(5) DEFAULT NULL,
  `mem_id` char(6) DEFAULT NULL,
  PRIMARY KEY (`Rat_id`),
  KEY `Pro_id` (`Pro_id`),
  KEY `Movie_id` (`Movie_id`),
  KEY `TV_id` (`TV_id`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`Pro_id`) REFERENCES `profile_info` (`Pro_id`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`Movie_id`) REFERENCES `movie_info` (`Movie_id`),
  CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`TV_id`) REFERENCES `tv_show_info` (`TV_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES ('10148','328934',NULL,'73852',NULL),('11698','443088','33463',NULL,NULL),('13363','311198','47762',NULL,NULL),('13752','321452','53705',NULL,NULL),('16080','345779',NULL,'46347',NULL),('21642','324269','27236',NULL,NULL),('22624','327689','48629',NULL,NULL),('26788','647028','99912',NULL,NULL),('29502','324273','82385',NULL,NULL),('35579','602327','13725',NULL,NULL),('35834','324299',NULL,'93255',NULL),('38573','325563',NULL,'35362',NULL),('40389','345783',NULL,'84276',NULL),('48310','534317','92366',NULL,NULL),('53609','900245',NULL,'74728',NULL),('58699','918648','12481',NULL,NULL),('59098','460030','73627',NULL,NULL),('59198','623342','74862',NULL,NULL),('64733','320367','47937',NULL,NULL),('68301','324257','38523',NULL,NULL),('72696','326578','35849',NULL,NULL),('77432','345758',NULL,'87440',NULL),('82502','968498','21211',NULL,NULL),('86205','328799','48634',NULL,NULL),('86206','345767',NULL,'46347',NULL),('90996','164934','36271',NULL,NULL),('93772','311357','86470',NULL,NULL),('95829','324291','73496',NULL,NULL),('99885','167609','82362',NULL,NULL);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_info`
--

DROP TABLE IF EXISTS `rating_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_info` (
  `Rat_id` char(5) NOT NULL,
  `D_M_Y` date NOT NULL,
  `Rat_point` varchar(5) NOT NULL,
  PRIMARY KEY (`Rat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_info`
--

LOCK TABLES `rating_info` WRITE;
/*!40000 ALTER TABLE `rating_info` DISABLE KEYS */;
INSERT INTO `rating_info` VALUES ('10148','2020-07-11','***'),('11698','2020-07-12','*****'),('1258','2019-07-30','****'),('13363','2020-12-15','***'),('13752','2020-04-05','***'),('16080','2020-04-11','*****'),('21642','2020-12-05','**'),('22624','2019-01-19','***'),('26788','2020-07-15','*'),('29502','2019-10-06','****'),('35579','2020-11-11','***'),('35834','2029-05-14','**'),('38573','2020-11-23','***'),('40389','2020-02-11','****'),('48310','2020-08-11','*'),('53609','2020-01-11','*****'),('58699','2020-07-16','**'),('59098','2020-09-11','****'),('59198','2020-07-14','****'),('64733','2019-07-15','**'),('68301','2020-05-31','****'),('72696','2018-05-27','*****'),('77432','2020-06-11','*****'),('82502','2020-12-11','**'),('86205','2020-03-11','****'),('86206','2020-05-11','***'),('90996','2020-07-13','**'),('93772','2020-01-25','*'),('95829','2020-11-09','****'),('99885','2020-10-11','*****');
/*!40000 ALTER TABLE `rating_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `Rev_id` char(5) NOT NULL,
  `Movie_id` char(5) DEFAULT NULL,
  `Pro_id` char(6) NOT NULL,
  `TV_id` char(5) DEFAULT NULL,
  PRIMARY KEY (`Rev_id`),
  KEY `Pro_id` (`Pro_id`),
  KEY `Movie_id` (`Movie_id`),
  KEY `TV_id` (`TV_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Pro_id`) REFERENCES `profile_info` (`Pro_id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`Movie_id`) REFERENCES `movie_info` (`Movie_id`),
  CONSTRAINT `review_ibfk_3` FOREIGN KEY (`TV_id`) REFERENCES `tv_show_info` (`TV_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('12563',NULL,'345767','58945'),('13051',NULL,'623342','1045'),('15903',NULL,'342722','38593'),('2356',NULL,'332345','83756'),('27121',NULL,'647028','124'),('30258','21216','446912',NULL),('37626','83285','900245',NULL),('38651',NULL,'319989','48320'),('41863','13725','602327',NULL),('44335','38523','311357',NULL),('45248','47762','311198',NULL),('50953',NULL,'918648','3596'),('53638',NULL,'345758','58295'),('53762','83592','342745',NULL),('56096',NULL,'164934','11005'),('67184',NULL,'321452','93263'),('69370',NULL,'804835','84744'),('70690',NULL,'382492','35111'),('81506',NULL,'330010','87573'),('82742','35832','330021',NULL),('82937',NULL,'968498','78003'),('83417','73496','320367',NULL),('83943','45423','345783',NULL),('84926','93763','345755',NULL),('89117',NULL,'115837','83520'),('92377',NULL,'342748','88636'),('92763',NULL,'345779','32572'),('93762','88340','343749',NULL),('95792',NULL,'328993','74743'),('99786',NULL,'114396','99321');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_info`
--

DROP TABLE IF EXISTS `review_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_info` (
  `Rev_id` char(5) NOT NULL,
  `D_M_Y` date NOT NULL,
  `De_scription` varchar(70) NOT NULL,
  `t_ime` time DEFAULT NULL,
  PRIMARY KEY (`Rev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_info`
--

LOCK TABLES `review_info` WRITE;
/*!40000 ALTER TABLE `review_info` DISABLE KEYS */;
INSERT INTO `review_info` VALUES ('12563','2020-04-05','One the of the best movie.',NULL),('13051','2020-12-19','Now get a bucket and a mop, thats some wet butt kitty.',NULL),('15903','2020-10-05','OMG$$.',NULL),('2356','2020-11-05','Hello everyone >=<.',NULL),('27121','2020-12-18','Now from the top, make it drop, thats some wet butt kitty.',NULL),('30258','2020-12-12','Hello world',NULL),('37626','2020-01-05','It is so good.',NULL),('38651','2020-12-11','Shrek have done better than this.',NULL),('41863','2020-12-22','Theres some hole in this house.',NULL),('44335','2020-12-10','Nevermind Biden already won.',NULL),('45248','2020-12-08','dame dane dame yo dame na no yo',NULL),('50953','2020-12-17','I said certified freak, seven days a week.',NULL),('53638','2020-05-05','NOooooo.',NULL),('53762','2020-09-05','SO SO.',NULL),('56096','2020-12-20','Im talkin WAP, WAP, WAP, thats some wet butt kitty.',NULL),('67184','2020-12-07','Mi Pan Su Su Sum. Su Su Sum.',NULL),('69370','2020-12-14','bruh',NULL),('70690','2020-12-13','I hope you will give us an A',NULL),('81506','2020-01-08','please give our group full score xoxo.',NULL),('82742','2020-12-05','{}+*&^#%@#%.',NULL),('82937','2020-12-21','Macaroni in a pot, thats some wet butt kitty.',NULL),('83417','2020-12-09','Mom, is that you?',NULL),('83943','2020-02-05','Niceee.',NULL),('84926','2020-06-05','What the heck!!.',NULL),('89117','2020-12-16','Im not homophobic but [homophobic stuff].',NULL),('92763','2020-03-05','So sick.',NULL),('93762','2020-07-05','The best!!.',NULL),('95792','2020-12-06','Xue hua piao piao bei feng xiao xiao.',NULL),('99786','2020-12-15','Anyone find this from that tiktok song?',NULL);
/*!40000 ALTER TABLE `review_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show`
--

DROP TABLE IF EXISTS `tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show` (
  `TV_id` char(5) NOT NULL,
  `Mem_id` char(5) DEFAULT NULL,
  `Rat_id` char(5) DEFAULT NULL,
  `Rev_id` char(5) DEFAULT NULL,
  PRIMARY KEY (`TV_id`),
  KEY `Mem_id` (`Mem_id`),
  KEY `Rat_id` (`Rat_id`),
  CONSTRAINT `tv_show_ibfk_1` FOREIGN KEY (`Mem_id`) REFERENCES `member_info` (`Mem_id`),
  CONSTRAINT `tv_show_ibfk_2` FOREIGN KEY (`Rat_id`) REFERENCES `rating_info` (`Rat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show`
--

LOCK TABLES `tv_show` WRITE;
/*!40000 ALTER TABLE `tv_show` DISABLE KEYS */;
INSERT INTO `tv_show` VALUES ('1045','72438',NULL,'13051'),('11005','77103',NULL,'56096'),('124','27386',NULL,'27121'),('12432',NULL,NULL,NULL),('32572','18803',NULL,'92763'),('35111','13761',NULL,'70690'),('35362','84800','38573',NULL),('3596','10734',NULL,'50953'),('38593','10799',NULL,'15903'),('46347','96145','86206',NULL),('48320','48335',NULL,'38651'),('58295','72318',NULL,'53638'),('58945','96145',NULL,'12563'),('73783',NULL,NULL,NULL),('73852','79326','10148',NULL),('74728','38294','53609',NULL),('74743','96145',NULL,'95792'),('75736',NULL,NULL,NULL),('78003','79568',NULL,'82937'),('82395','18803','16080',NULL),('83520','36367',NULL,'89117'),('83756','79326',NULL,'2356'),('84276','10799','40389',NULL),('84744','64734',NULL,'69370'),('84829','68235','1258',NULL),('87440','72318','77432',NULL),('87573','71687',NULL,'81506'),('88636','84800',NULL,'92377'),('93255','20768','35834',NULL),('93263','71687',NULL,'67184'),('99321','57569',NULL,'99786');
/*!40000 ALTER TABLE `tv_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_info`
--

DROP TABLE IF EXISTS `tv_show_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show_info` (
  `TV_id` char(5) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `Season` varchar(10) DEFAULT NULL,
  `Y_ear` char(4) NOT NULL,
  PRIMARY KEY (`TV_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_info`
--

LOCK TABLES `tv_show_info` WRITE;
/*!40000 ALTER TABLE `tv_show_info` DISABLE KEYS */;
INSERT INTO `tv_show_info` VALUES ('1045','Whats Wrong with Secretary Kim?','Rom-com','1 season','2018'),('11005','We Bare Bears','Animation','4 seasons','2015'),('124','Go Go Squid!','Rom-com','1 season','2019'),('12432','Start-Up','Drama','1 season','2020'),('32572','The 100','Sci-fi ','7 seasons','2014'),('35111','Find Yourself','Rom-com','1 season','2020'),('35362','A Korean Odyssey','Romance','1 season','2017'),('3596','Peaky Blinders','Crime','5 seasons','2013'),('38593','Welcome to Waikiki 2','Comedy',NULL,'2019'),('46347','Vikings','Period Pieces','5 Seasons','2013'),('48320','Kingdom','Horror','2 seasons','2019'),('58295','Better than Us','Drama','1 season','2018'),('58945','Hotel del Luna','Rom-com','1 season','2019'),('73783','Prison Break','TV Thrillers','5 Seasons','2020'),('73852','Private Lives','TV Dramas','1 Season','2020'),('74728','Queen for Seven Days','Romance','1 season','2017'),('74743','Thong EK: The Herbal Master','Dramas','1 Season','2019'),('75736','Assassination Classroom','Action Anime','2 Seasons','2015'),('78003','Blood','Romance','1 season','2015'),('82395','Money Heist','TV Thrillers','4 Seasons','2017'),('83520','Itaewon Class','Drama','1 season','2020'),('83756','SKY Castle','Drama','1 season','2018'),('84276','The Queens Gambit','TV Dramas','1 Season','2020'),('84744','Love Alarm','Romance','1 season','2019'),('84829','The Crown','Drama','4 seasons','2016'),('87440','The Worst Witch','Kids TV','4 Seasons','2017'),('87573','Strong Girl Bong-soon','Action','1 season','2017'),('88636','Abyss','Rom-com','1 season','2019'),('93255','The Last Kingdom','History','4 seasons','2015'),('93263','Weightlifting Fairy Kim Bok Joo','Korean TV Shows','1 Season','2016'),('99321','My Mister','Drama','1 season','2018');
/*!40000 ALTER TABLE `tv_show_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 16:52:33
