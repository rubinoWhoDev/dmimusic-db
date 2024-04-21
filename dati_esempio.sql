-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dmimusic
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Crack Musica',50549408,1,1,'2016-03-09 23:00:00'),(2,'Succo di Zenzero',20041921,1,1,'2016-05-18 22:00:00'),(3,'The Dark Album',73841366,1,1,'2016-10-30 23:00:00'),(4,'XDVR Reloaded',87885138,4,1,'2015-11-22 23:00:00'),(5,'Toxicity',2746273365,12,2,'2001-09-03 22:00:00'),(6,'Discovery',942495368,13,3,'2001-02-25 23:00:00');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Dark Polo Gang','La Dark Polo Gang è un gruppo musicale trap italiano, nato a Roma nel 2014',144432695,1,1,0,1),(2,'Sick Luke','Sick Luke, pseudonimo di Luca Antonio Barker (Londra, 17 agosto 1994), è un produttore discografico e rapper italiano',795149,0,1,1,1),(3,'Charlie Charles','Charlie Charles, pseudonimo di Paolo Alberto Monachetti (Settimo Milanese, 24 marzo 1994), è un produttore discografico e disc jockey italiano',41556501,0,0,1,0),(4,'Sfera Ebbasta','Sfera Ebbasta, pseudonimo di Gionata Boschetti (Sesto San Giovanni, 7 dicembre 1992), è un rapper italiano.',87885138,0,1,0,1),(5,'Izi','Izi, pseudonimo di Diego Germini (Savigliano, 30 luglio 1995), è un rapper italiano.',1838861,0,1,0,1),(6,'Nino Brown','Nino Brown (anche noto come Nino B), nome d\'arte di Giacomo Forlani (29 agosto 1992), è un produttore italiano, originario di Roma.',0,0,0,1,0),(7,'Enzo Dong','Enzo Dong, nome d\'arte di Vincenzo Mazzarella (Napoli, 1990), è un rapper italiano.',3221752,0,1,0,1),(8,'Tedua','Tedua, nome d\'arte di Mario Molinari (Genova, 21 febbraio 1994), è un rapper italiano.',10502428,0,1,0,1),(9,'Gianni Bismark','Gianni Bismark, nome d\'arte di Tiziano Menghi (Roma, 1991), è un rapper italiano.',3759442,0,1,0,1),(10,'Luchè','Luchè, nome d\'arte di Luca Imprudente (Napoli, 7 gennaio 1981), è un rapper e produttore italiano.',2277463,0,1,1,1),(11,'Marracash','Marracash, pseudonimo di Fabio Bartolo Rizzo (Nicosia, 22 maggio 1979), è un rapper italiano.',9030475,0,1,0,1),(12,'System Of A Down','I System of a Down (conosciuti anche con l\'acronimo SOAD) sono un gruppo musicale alternative metal statunitense, formatosi a Los Angeles nel 1994.',2746273365,1,1,1,1),(13,'Daft Punk','I Daft Punk sono stati un gruppo musicale francese di musica elettronica fondato dai parigini Guy-Manuel de Homem-Christo e Thomas Bangalter.',942495368,1,0,1,1),(14,'Rkomi','Rkomi, nome d\'arte di Mirko Manuele Martorana (Milano, 19 aprile 1994), è un cantautore e rapper italiano.',51651585,0,1,0,1),(15,'Ghali','Ghali, nome d\'arte di Ghali Amdouni (Milano, 21 maggio 1993), precedentemente conosciuto come Fobia o Ghali Foh, è un rapper italo-tunisino.',137985268,0,1,0,1),(16,'Gigi d\'Agostino','Gigi D\'Agostino, pseudonimo di Luigino Celestino Di Agostino (Torino, 17 dicembre 1967), è un disc jockey, produttore discografico e conduttore radiofonico italiano.',633210200,0,0,1,0);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `canzone`
--

LOCK TABLES `canzone` WRITE;
/*!40000 ALTER TABLE `canzone` DISABLE KEYS */;
INSERT INTO `canzone` VALUES (3,'3 Metri',99,67578,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(4,'Tipa',110,61136,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(5,'Sosa',92,103135,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(6,'Crack Musica',114,1571224,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(7,'Bricks',95,52500,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(8,'CC',145,7572538,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(9,'Regole',211,42028,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(10,'Swisher',165,1691377,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(11,'Porto Rotondo',86,49642,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(12,'Neve a Settembre',107,698377,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(13,'Cavallini',253,26730924,'Trap',1,1,3,1,1,'2016-03-09 23:00:00'),(14,'Mafia',189,9905878,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(15,'Lei Mi Chiama',240,62478,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(16,'Super Sayan',95,1554486,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(17,'Solo X La Gang',156,123552,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(18,'Cotoletta',110,67848,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(19,'Alprazolam',78,58708,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(20,'Sinaloa',208,135999,'Trap',1,1,2,1,1,'2016-03-09 23:00:00'),(22,'Pavimenti in Resina',159,27051,'Cloud Rap',1,1,6,1,2,'2016-05-18 22:00:00'),(23,'Non mi interessa',113,30101,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(24,'Riviste',163,2878232,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(25,'Passala',101,19015,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(26,'Beatles',329,45376,'Cloud Rap',1,1,6,1,2,'2016-05-18 22:00:00'),(27,'Crystal Ball',198,280858,'Cloud Rap',1,1,6,1,2,'2016-05-18 22:00:00'),(28,'Infame',81,11076,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(29,'Tokyo Hotel',148,66628,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(30,'Bang Bang',260,88146,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(31,'Pesi Sul Collo',187,9640577,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(32,'Scusa',210,33480,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(33,'Gioco dell\'Uva',94,10717,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(34,'Aldilà',203,6892524,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(35,'Nuvole',109,18140,'Cloud Rap',1,1,2,1,2,'2016-05-18 22:00:00'),(36,'Intro TDA',113,41078,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(37,'Bello Figo Dark',157,3231143,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(38,'Dark Boy',211,4506624,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(39,'Sportswear',120,38625658,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(40,'Latte di Suocera',145,104569,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(41,'Oxy',160,3278633,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(42,'Canale 777',184,22913,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(43,'GTA San Andreas',188,107646,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(44,'Panorama Bar',133,74149,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(45,'Fiori del Male',194,23709495,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(46,'DM',114,48111,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(47,'Voodoo',98,28368,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(48,'Età d\'Oro',153,30829,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(49,'Demoni',142,32150,'Dark Trap',1,1,2,1,3,'2016-10-30 23:00:00'),(50,'XDVR',120,1892150,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(51,'Sg4m1',153,130608,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(52,'Panette',191,13993354,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(53,'No Champagne',183,4669000,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(54,'Mercedes Nero',235,9524825,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(55,'Te Lo Do',152,94589,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(56,'Brutti Sogni',207,10591219,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(57,'Più Forte',231,346626,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(58,'Tutti Scemi',211,4928874,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(59,'Rapina',174,217031,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(60,'Zero',194,2883899,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(61,'Marshmallow',244,195930,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(62,'Ciny',166,23078244,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(63,'XDVRMX',204,12861168,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(64,'Trap Kings',240,2003473,'Trap',4,4,3,4,4,'2015-11-22 23:00:00'),(65,'Prison Song',204,4830382,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(66,'Needles',193,16417895,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(67,'Deer Dance',176,2678360,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(68,'Jet Pilot',126,5194849,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(69,'X',118,4476613,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(70,'Chop Suey!',208,1344944631,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(71,'Bounce',115,8038881,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(72,'Forest',240,20567848,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(73,'ATWA',177,4732849,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(74,'Science',162,8508305,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(75,'Shimmy',110,6490375,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(76,'Toxicity',224,868781010,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(77,'Psycho',227,1828483,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(78,'Aerials',243,446858657,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(79,'Arto',133,1924227,'Metal',12,12,12,12,5,'2001-09-03 22:00:00'),(80,'One More Time',321,490402644,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(81,'Aerodynamic',212,44558983,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(82,'Digital Love',265,31896191,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(83,'Harder, Better, Faster, Stronger',222,133853269,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(84,'Crescendolls',234,13242843,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(85,'Nightvision',111,7857142,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(86,'Superheroes',234,30099889,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(87,'High Life',196,15618821,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(88,'Something About Us',228,87466964,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(89,'Voyager',225,12848154,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(90,'Veridis Quo',406,26745538,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(91,'Short Circuit',196,6963417,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(92,'Face to Face',238,23730285,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(93,'Too Long',599,17211228,'Elettronica',13,NULL,13,13,6,'2001-02-25 23:00:00'),(95,'Stamm Fort',172,2277463,'Pop trap',10,10,3,10,NULL,'2019-01-17 23:00:00'),(96,'Niagara Freestyle',196,1838861,'Alternative Rap',5,5,3,5,NULL,'2016-12-18 23:00:00'),(97,'È tutto vero',163,3759442,'Gangsta Trap',9,9,2,9,NULL,'2016-09-26 22:00:00'),(98,'Buste della Spesa',190,10502428,'Drill',8,8,3,8,NULL,'2016-06-29 22:00:00'),(99,'Bandito',196,3221752,'Pop Trap',7,7,2,7,NULL,'2020-02-05 23:00:00'),(100,'Badabum Cha Cha',218,9030475,'Old School Rap',11,11,3,11,NULL,'2008-04-17 22:00:00'),(101,'Nuovo Range',175,51651585,'Pop Trap',14,14,3,14,NULL,'2021-04-29 22:00:00'),(102,'Cara Italia',246,137985268,'Pop',15,15,3,15,NULL,'2018-01-26 23:00:00'),(103,'Bimbi',241,41556501,'Trap',3,NULL,3,NULL,NULL,'2017-03-23 23:00:00'),(104,'Lo sai che',191,795149,'Alternative Trap',2,2,2,2,NULL,'2018-06-18 22:00:00'),(105,'L\'Amour Toujours',242,467005787,'Italodance',16,NULL,16,NULL,NULL,'2024-02-22 12:47:03'),(106,'Bla Bla Bla',191,72383380,'Italodance',16,NULL,16,NULL,NULL,'2024-02-22 12:47:51'),(107,'The Riddle',206,93821033,'Italodance',16,NULL,16,NULL,NULL,'2024-02-22 12:48:39');
/*!40000 ALTER TABLE `canzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `canzoneinplaylist`
--

LOCK TABLES `canzoneinplaylist` WRITE;
/*!40000 ALTER TABLE `canzoneinplaylist` DISABLE KEYS */;
INSERT INTO `canzoneinplaylist` VALUES (5,1,'2024-02-22 12:26:52'),(10,1,'2024-02-22 12:27:23'),(11,4,'2024-02-22 12:56:00'),(13,1,'2024-02-21 21:54:25'),(13,2,'2024-02-22 12:32:04'),(14,1,'2024-02-21 21:54:41'),(14,5,'2024-02-23 14:38:16'),(23,4,'2024-02-23 13:28:29'),(31,1,'2024-02-22 12:27:30'),(39,1,'2024-02-21 21:54:30'),(45,1,'2024-02-21 21:56:58'),(45,2,'2024-02-22 12:37:39'),(52,1,'2024-02-21 21:54:35'),(52,2,'2024-02-22 12:38:32'),(54,1,'2024-02-21 21:55:35'),(55,4,'2024-02-23 13:23:21'),(62,1,'2024-02-21 21:56:50'),(63,2,'2024-02-22 12:33:09'),(70,3,'2024-02-22 12:40:59'),(76,3,'2024-02-22 12:52:13'),(78,3,'2024-02-22 12:41:05'),(80,3,'2024-02-22 12:40:50'),(83,3,'2024-02-22 12:40:45'),(84,3,'2024-02-22 12:41:46'),(88,3,'2024-02-22 12:41:12'),(95,2,'2024-02-22 12:36:46'),(96,2,'2024-02-22 12:32:34'),(98,2,'2024-02-22 12:34:31'),(100,2,'2024-02-22 12:31:46'),(101,2,'2024-02-22 12:33:18'),(101,4,'2024-02-23 13:24:06'),(102,4,'2024-02-23 13:28:24'),(103,1,'2024-02-21 21:54:47'),(104,1,'2024-02-22 12:25:48'),(105,3,'2024-02-22 12:50:16'),(106,3,'2024-02-22 12:50:21'),(107,3,'2024-02-22 12:49:59');
/*!40000 ALTER TABLE `canzoneinplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `featuring`
--

LOCK TABLES `featuring` WRITE;
/*!40000 ALTER TABLE `featuring` DISABLE KEYS */;
INSERT INTO `featuring` VALUES (5,10),(4,13),(4,30),(7,34),(6,36),(6,38),(9,40),(6,44),(3,45),(4,45),(8,48),(5,54),(8,54),(10,63),(11,63),(2,95),(4,95),(1,97),(1,99),(4,101),(4,103),(5,103),(8,103),(14,103),(15,103);
/*!40000 ALTER TABLE `featuring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'Universal Music Italia Srl','Italia'),(2,'Sony Music Entertainment','America'),(3,'Warner Music France','Francia');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'È trap fra',10,1,'2024-02-21 21:52:51'),(2,'Il Classico',25,3,'2024-02-22 12:31:11'),(3,'Wake up in 2000',50,4,'2024-02-22 12:40:20'),(4,'Best Music Ever',-20,2,'2024-02-22 12:55:40'),(5,'I am biotic god',5,5,'2024-02-23 14:36:52');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recensione`
--

LOCK TABLES `recensione` WRITE;
/*!40000 ALTER TABLE `recensione` DISABLE KEYS */;
INSERT INTO `recensione` VALUES (1,13,'Classico della trap italiana, perfetta nel suo genere.',10,'2024-02-23 13:51:46'),(1,39,'Ricordo ancora quando tutti saltavano sentendo le prime note di questo beat leggendario.',9,'2024-02-23 14:20:53'),(1,45,'Altro classico, quasi perfetta.',9,'2024-02-23 13:52:30'),(1,55,'La peggiore del suo album ma comunque molto efficace nel suo genere.',6,'2024-02-23 14:14:37'),(1,56,'Pezzo molto intimo e sentito mantenendo comunque sonorità estremamente innovative.',10,'2024-02-23 13:53:23'),(1,95,'Pezzo ignorante ma comunque molto d\'effetto.',7,'2024-02-23 14:23:32'),(1,101,'La morte della trap italiana.',4,'2024-02-23 14:21:32'),(1,102,'Pezzo commerciale con ritmo accattivante e satira politica, peccato per le sonorità un po\' banali.',7,'2024-02-23 13:54:33'),(1,104,'Pezzo che ti entra subito in testa, Sick Luke si scopre ottimo cantante oltre che produttore.',8,'2024-02-23 14:22:17'),(1,105,'PO, POPOROPO, PO POROPO, PO POROPOPOROPOROPOROPO.',10,'2024-02-23 14:04:52'),(1,106,'Altro classico, memorabile ma il più debole secondo la mia opinione.',8,'2024-02-23 14:18:00'),(1,107,'Un altro classico della musica dance, memorabile ma non quanto altri pezzi che sono rimasti nei nostri ricordi.',9,'2024-02-23 14:17:09'),(3,53,'Io lo champagne ce l\'ho, nonostante ciò la canzone è spacca.',7,'2024-02-23 14:53:10'),(3,63,'L\'acronimo è confusionario ma la canzone spacca.',10,'2024-02-23 14:54:57'),(5,6,'Questa canzone promuove la droga.',2,'2024-02-23 14:47:25'),(5,14,'L\'UNICO PEZZO DECENTE DI QUESTO CATALOGO.',10,'2024-02-23 14:41:34'),(5,40,'Sto andando a vomitare.',1,'2024-02-23 14:48:46'),(5,50,'Che schifo gli acronimi.',3,'2024-02-23 14:48:03'),(5,98,'La canzone può essere ascoltata solo durante la spesa.',6,'2024-02-23 14:44:11'),(5,100,'Che nome dm (in gergo che nome brutto).',1,'2024-02-23 14:44:46');
/*!40000 ALTER TABLE `recensione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'rubino','Riccardo','Rubino'),(2,'best_name','Mario','Rossi'),(3,'tubo','Davide','Iannaccone'),(4,'il san','Giorgio','Panariello'),(5,'slutusmona','Slutus','Mona');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 22:16:39
