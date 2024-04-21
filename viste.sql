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
-- Temporary view structure for view `artistipreferitirubino`
--

DROP TABLE IF EXISTS `artistipreferitirubino`;
/*!50001 DROP VIEW IF EXISTS `artistipreferitirubino`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artistipreferitirubino` AS SELECT 
 1 AS `id_artista`,
 1 AS `pseudonimo`,
 1 AS `voto_medio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `artistipreferitislutus`
--

DROP TABLE IF EXISTS `artistipreferitislutus`;
/*!50001 DROP VIEW IF EXISTS `artistipreferitislutus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artistipreferitislutus` AS SELECT 
 1 AS `id_artista`,
 1 AS `pseudonimo`,
 1 AS `voto_medio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ascoltitotalimajor`
--

DROP TABLE IF EXISTS `ascoltitotalimajor`;
/*!50001 DROP VIEW IF EXISTS `ascoltitotalimajor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ascoltitotalimajor` AS SELECT 
 1 AS `ascolti_totali`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `branipreferitirubino`
--

DROP TABLE IF EXISTS `branipreferitirubino`;
/*!50001 DROP VIEW IF EXISTS `branipreferitirubino`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `branipreferitirubino` AS SELECT 
 1 AS `id_canzone`,
 1 AS `titolo`,
 1 AS `voto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `branipreferitislutus`
--

DROP TABLE IF EXISTS `branipreferitislutus`;
/*!50001 DROP VIEW IF EXISTS `branipreferitislutus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `branipreferitislutus` AS SELECT 
 1 AS `id_canzone`,
 1 AS `titolo`,
 1 AS `voto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `classificaalbum`
--

DROP TABLE IF EXISTS `classificaalbum`;
/*!50001 DROP VIEW IF EXISTS `classificaalbum`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `classificaalbum` AS SELECT 
 1 AS `id_album`,
 1 AS `titolo`,
 1 AS `ascolti_totali`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `classificaartisti`
--

DROP TABLE IF EXISTS `classificaartisti`;
/*!50001 DROP VIEW IF EXISTS `classificaartisti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `classificaartisti` AS SELECT 
 1 AS `id_artista`,
 1 AS `pseudonimo`,
 1 AS `ascolti_totali`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `classificacanzoni`
--

DROP TABLE IF EXISTS `classificacanzoni`;
/*!50001 DROP VIEW IF EXISTS `classificacanzoni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `classificacanzoni` AS SELECT 
 1 AS `id_canzone`,
 1 AS `titolo`,
 1 AS `ascolti`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `artistipreferitirubino`
--

/*!50001 DROP VIEW IF EXISTS `artistipreferitirubino`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artistipreferitirubino` AS select `artista`.`id_artista` AS `id_artista`,`artista`.`pseudonimo` AS `pseudonimo`,avg(`recensione`.`voto`) AS `voto_medio` from ((`recensione` join `canzone`) join `artista`) where ((`recensione`.`utente` = 1) and (`canzone`.`id_canzone` = `recensione`.`canzone`) and (`artista`.`id_artista` = `canzone`.`artista`)) group by `artista`.`id_artista` order by `voto_medio` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `artistipreferitislutus`
--

/*!50001 DROP VIEW IF EXISTS `artistipreferitislutus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artistipreferitislutus` AS select `artista`.`id_artista` AS `id_artista`,`artista`.`pseudonimo` AS `pseudonimo`,avg(`recensione`.`voto`) AS `voto_medio` from ((`recensione` join `canzone`) join `artista`) where ((`recensione`.`utente` = (select `utente`.`id_utente` from `utente` where (`utente`.`username` = 'slutusmona'))) and (`canzone`.`id_canzone` = `recensione`.`canzone`) and (`artista`.`id_artista` = `canzone`.`artista`)) group by `artista`.`id_artista` order by `voto_medio` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ascoltitotalimajor`
--

/*!50001 DROP VIEW IF EXISTS `ascoltitotalimajor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ascoltitotalimajor` AS select sum(`album`.`ascolti_totali`) AS `ascolti_totali` from `album` where (`album`.`major_distribuzione` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `branipreferitirubino`
--

/*!50001 DROP VIEW IF EXISTS `branipreferitirubino`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `branipreferitirubino` AS select `canzone`.`id_canzone` AS `id_canzone`,`canzone`.`titolo` AS `titolo`,`recensione`.`voto` AS `voto` from (`recensione` join `canzone`) where ((`recensione`.`utente` = 1) and (`canzone`.`id_canzone` = `recensione`.`canzone`)) order by `recensione`.`voto` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `branipreferitislutus`
--

/*!50001 DROP VIEW IF EXISTS `branipreferitislutus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `branipreferitislutus` AS select `canzone`.`id_canzone` AS `id_canzone`,`canzone`.`titolo` AS `titolo`,`recensione`.`voto` AS `voto` from (`recensione` join `canzone`) where ((`recensione`.`utente` = (select `utente`.`id_utente` from `utente` where (`utente`.`username` = 'slutusmona'))) and (`canzone`.`id_canzone` = `recensione`.`canzone`)) order by `recensione`.`voto` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classificaalbum`
--

/*!50001 DROP VIEW IF EXISTS `classificaalbum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classificaalbum` AS select `album`.`id_album` AS `id_album`,`album`.`titolo` AS `titolo`,`album`.`ascolti_totali` AS `ascolti_totali` from `album` order by `album`.`ascolti_totali` desc limit 50 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classificaartisti`
--

/*!50001 DROP VIEW IF EXISTS `classificaartisti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classificaartisti` AS select `artista`.`id_artista` AS `id_artista`,`artista`.`pseudonimo` AS `pseudonimo`,`artista`.`ascolti_totali` AS `ascolti_totali` from `artista` order by `artista`.`ascolti_totali` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classificacanzoni`
--

/*!50001 DROP VIEW IF EXISTS `classificacanzoni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classificacanzoni` AS select `canzone`.`id_canzone` AS `id_canzone`,`canzone`.`titolo` AS `titolo`,`canzone`.`ascolti` AS `ascolti` from `canzone` order by `canzone`.`ascolti` desc limit 100 */;
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

-- Dump completed on 2024-02-23 22:14:27
