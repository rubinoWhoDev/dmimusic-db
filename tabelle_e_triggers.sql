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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(128) NOT NULL,
  `ascolti_totali` int unsigned NOT NULL DEFAULT '0',
  `artista` int NOT NULL,
  `major_distribuzione` int NOT NULL,
  `data_distribuzione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_album`),
  KEY `artista` (`artista`),
  KEY `major_distribuzione` (`major_distribuzione`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artista`) REFERENCES `artista` (`id_artista`),
  CONSTRAINT `album_ibfk_2` FOREIGN KEY (`major_distribuzione`) REFERENCES `major` (`id_major`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `id_artista` int NOT NULL AUTO_INCREMENT,
  `pseudonimo` varchar(128) NOT NULL,
  `biografia` varchar(1024) NOT NULL,
  `ascolti_totali` int unsigned NOT NULL DEFAULT '0',
  `is_gruppo` tinyint(1) NOT NULL,
  `is_cantante` tinyint(1) NOT NULL,
  `is_produttore` tinyint(1) NOT NULL,
  `is_scrittore` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_artista`),
  UNIQUE KEY `pseudonimo` (`pseudonimo`),
  CONSTRAINT `chk_artista_valido` CHECK ((((`is_cantante` = false) and (`is_produttore` = false) and (`is_scrittore` = false)) = false))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `canzone`
--

DROP TABLE IF EXISTS `canzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canzone` (
  `id_canzone` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(128) NOT NULL,
  `durata` int unsigned NOT NULL,
  `ascolti` int unsigned NOT NULL DEFAULT '0',
  `genere` varchar(64) NOT NULL,
  `artista` int NOT NULL,
  `cantante` int DEFAULT NULL,
  `produttore` int NOT NULL,
  `scrittore` int DEFAULT NULL,
  `album` int DEFAULT NULL,
  `data_pubblicazione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_canzone`),
  UNIQUE KEY `titolo` (`titolo`,`artista`),
  KEY `artista` (`artista`),
  KEY `cantante` (`cantante`),
  KEY `produttore` (`produttore`),
  KEY `scrittore` (`scrittore`),
  KEY `album` (`album`),
  CONSTRAINT `canzone_ibfk_1` FOREIGN KEY (`artista`) REFERENCES `artista` (`id_artista`),
  CONSTRAINT `canzone_ibfk_2` FOREIGN KEY (`cantante`) REFERENCES `artista` (`id_artista`),
  CONSTRAINT `canzone_ibfk_3` FOREIGN KEY (`produttore`) REFERENCES `artista` (`id_artista`),
  CONSTRAINT `canzone_ibfk_4` FOREIGN KEY (`scrittore`) REFERENCES `artista` (`id_artista`),
  CONSTRAINT `canzone_ibfk_5` FOREIGN KEY (`album`) REFERENCES `album` (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `chk_artisti_canzone` BEFORE INSERT ON `canzone` FOR EACH ROW BEGIN
	IF (NEW.cantante IS NOT NULL AND 
                 NOT EXISTS (SELECT * FROM Artista WHERE id_artista = NEW.cantante 
                                          AND is_cantante = TRUE)) THEN
                 SIGNAL SQLSTATE "45000" SET MESSAGE_TEXT = "Cantante inesistente";
            END IF;
            IF (NOT EXISTS (SELECT * FROM Artista WHERE id_artista = NEW.produttore 
                                         AND is_produttore = TRUE)) THEN
                 SIGNAL SQLSTATE "45000" SET MESSAGE_TEXT = "Produttore inesistente";
            END IF;
            IF (NEW.scrittore IS NOT NULL AND
     NOT EXISTS (SELECT * FROM Artista WHERE id_artista = NEW.scrittore 
                             AND is_scrittore = TRUE)) THEN
                 SIGNAL SQLSTATE "45000" SET MESSAGE_TEXT = "Scrittore inesistente";
            END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `chk_artista_album_on_ins` BEFORE INSERT ON `canzone` FOR EACH ROW BEGIN
	DECLARE artista_album INT;
    	IF NEW.album IS NOT NULL THEN
		SELECT artista INTO artista_album
		FROM Album WHERE id_album = NEW.album;
        		IF NEW.artista <> artista_album THEN
			SIGNAL SQLSTATE "45000"
SET MESSAGE_TEXT = "Artista dell'album diverso dall'artista della canzone.";
		END IF;
    	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_data_canzoni_album` BEFORE INSERT ON `canzone` FOR EACH ROW BEGIN
	DECLARE data_album TIMESTAMP;
	IF NEW.album IS NOT NULL THEN
		SELECT data_distribuzione INTO data_album 
        FROM Album WHERE id_album = NEW.album;
        SET NEW.data_pubblicazione = data_album;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_ascolti_totali_on_ins` AFTER INSERT ON `canzone` FOR EACH ROW BEGIN
	IF NEW.ascolti <> 0 THEN
		IF NEW.album IS NOT NULL THEN
			UPDATE Album SET ascolti_totali = ascolti_totali + NEW.ascolti
WHERE id_album = NEW.album;
		END IF;
UPDATE Artista SET ascolti_totali = ascolti_totali + NEW.ascolti 
WHERE id_artista = NEW.artista;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `chk_nuovi_ascolti` BEFORE UPDATE ON `canzone` FOR EACH ROW BEGIN
	IF NEW.ascolti < OLD.ascolti THEN
		SIGNAL SQLSTATE "45000" 
SET MESSAGE_TEXT = "Impossibile aggiornare il numero 
di ascolti con un valore minore.";
    	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `chk_artista_album_on_upd` BEFORE UPDATE ON `canzone` FOR EACH ROW BEGIN
	DECLARE artista_album INT;
    	IF NEW.album IS NOT NULL THEN
		SELECT artista INTO artista_album
		FROM Album WHERE id_album = NEW.album;
        		IF NEW.artista <> artista_album THEN
			SIGNAL SQLSTATE "45000"
SET MESSAGE_TEXT = "Artista dell'album diverso dall'artista della canzone.";
		END IF;
    	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_ascolti_totali` AFTER UPDATE ON `canzone` FOR EACH ROW BEGIN
	IF NEW.ascolti <> OLD.ascolti THEN
		IF NEW.album IS NOT NULL THEN
			UPDATE Album 
SET ascolti_totali = ascolti_totali + (NEW.ascolti - OLD.ascolti)
WHERE id_album = NEW.album;
		END IF;
UPDATE Artista
SET ascolti_totali = ascolti_totali + (NEW.ascolti - OLD.ascolti)
WHERE id_artista = NEW.artista;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `canzoneinplaylist`
--

DROP TABLE IF EXISTS `canzoneinplaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canzoneinplaylist` (
  `canzone` int NOT NULL,
  `playlist` int NOT NULL,
  `data_inserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`canzone`,`playlist`),
  KEY `playlist` (`playlist`),
  CONSTRAINT `canzoneinplaylist_ibfk_1` FOREIGN KEY (`canzone`) REFERENCES `canzone` (`id_canzone`),
  CONSTRAINT `canzoneinplaylist_ibfk_2` FOREIGN KEY (`playlist`) REFERENCES `playlist` (`id_playlist`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featuring`
--

DROP TABLE IF EXISTS `featuring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `featuring` (
  `artista_featuring` int NOT NULL,
  `canzone` int NOT NULL,
  PRIMARY KEY (`artista_featuring`,`canzone`),
  KEY `canzone` (`canzone`),
  CONSTRAINT `featuring_ibfk_1` FOREIGN KEY (`artista_featuring`) REFERENCES `artista` (`id_artista`),
  CONSTRAINT `featuring_ibfk_2` FOREIGN KEY (`canzone`) REFERENCES `canzone` (`id_canzone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `chk_featuring` BEFORE INSERT ON `featuring` FOR EACH ROW BEGIN
	DECLARE a, c, p, s INT;
SELECT artista, cantante, produttore, scrittore INTO a, c, p, s FROM Canzone
WHERE id_canzone = NEW.canzone;
IF (NEW.artista_featuring IN (a, c, p, s)) THEN
                SIGNAL SQLSTATE "45000" 
    SET MESSAGE_TEXT = "Artista featuring già presente nella canzone";
            END IF;
	IF (NOT EXISTS (SELECT * FROM Artista WHERE id_artista = NEW.artista_featuring
      AND (is_cantante = FALSE AND is_produttore = FALSE) = FALSE)) THEN
	    SIGNAL SQLSTATE "45000"
                SET MESSAGE_TEXT = "Artista featuring non valido";
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `id_major` int NOT NULL AUTO_INCREMENT,
  `nome_azienda` varchar(128) NOT NULL,
  `sede` varchar(128) NOT NULL,
  PRIMARY KEY (`id_major`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int NOT NULL AUTO_INCREMENT,
  `nome_playlist` varchar(128) NOT NULL,
  `gradimento` float NOT NULL DEFAULT '0',
  `creatore` int NOT NULL,
  `data_creazione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_playlist`),
  KEY `creatore` (`creatore`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`creatore`) REFERENCES `utente` (`id_utente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recensione`
--

DROP TABLE IF EXISTS `recensione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recensione` (
  `utente` int NOT NULL,
  `canzone` int NOT NULL,
  `recensione` varchar(1024) NOT NULL,
  `voto` int unsigned NOT NULL,
  `data_recensione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`utente`,`canzone`),
  KEY `canzone` (`canzone`),
  CONSTRAINT `recensione_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `utente` (`id_utente`) ON DELETE CASCADE,
  CONSTRAINT `recensione_ibfk_2` FOREIGN KEY (`canzone`) REFERENCES `canzone` (`id_canzone`),
  CONSTRAINT `chk_voto_valido` CHECK (((`voto` >= 1) and (`voto` <= 10)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `id_utente` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `cognome` varchar(32) NOT NULL,
  PRIMARY KEY (`id_utente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 22:10:46
