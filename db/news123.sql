-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: news123
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('SPAM','DELETED','ACTIVE','STANDBY') NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `full_text` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,'Twitter tiene 100 millones de usuarios activos ','A comienzos de aÃ±o, Twitter habÃ­a anunciado que contaba con 200 millones de usuarios registrados en su plataforma; sin embargo en su momento dichas cifras fueron bastante cuestionadas, porque en realidad Â¿cuÃ¡ntos de esos usuarios eran activos en la red social?\r\n','2011-09-16 02:46:57'),(3,'Ahora YouTube permite editar videos ','El sitio agregÃ³ una herramienta con la que se puede retocar, modificar, aÃ±adir y recortar imÃ¡genes. TambiÃ©n cambiar los tonos y colores y hasta agregar canciones. Vea el video de cÃ³mo funciona.\r\n\r\n\r\nFunciona el update\r\n','2011-09-16 02:47:15'),(4,'Facebook decidiÃ³ retrasar su salida a Bolsa hasta fines de 2012 ','Estaba prevista para abril. Fuentes cercanas a la empresa dicen que no es por las turbulencias financieras sino por \"intereses internos\" de la compaÃ±Ã­a.\r\n','2011-09-16 02:47:26'),(5,'Google comprÃ³ 1.000 patentes de IBM para defender al Android ','La empresa de Internet estÃ¡ construyendo un arsenal de patentes para contrarrestar la \"campaÃ±a organizada y hostil\" de Apple y Microsoft contra los fabricantes de telefonÃ­a que usan su sistema operativo.\r\n','2011-09-16 02:47:37'),(6,'Una computadora â€œtrabajaâ€ de mÃ©dico ','La supercomputadora Watson, recordada por derrotar a los mejores jugadores del concurso televisivo Jeopardy!, ya tiene un nuevo trabajo. IBM, su dueÃ±o, firmÃ³ un contrato con WellPoint, una de las aseguradoras mÃ©dicas mÃ¡s importantes del mundo, que la usarÃ¡ para ayudar a sus doctores a diagnosticar problemas de salud y enfermedades.\r\n','2011-09-16 02:47:59'),(7,'Microsoft prepara el terreno para el lanzamiento de Windows 8 ','Presenta hoy en una conferencia para desarrolladores las caracterÃ­sticas de su prÃ³ximo sistema operativo. ServirÃ¡ para tabletas, desktops y portÃ¡tiles. Calculan el lanzamiento oficial para mediados de 2012.\r\n','2011-09-16 02:48:16'),(8,'Inauguran la nueva era ','Hacia mediados de los aÃ±os noventa ya muchos pronosticaban el inicio de la \"era Post-PC\". \r\n\r\nDecÃ­an que dejarÃ­amos las computadoras y pasarÃ­amos a usar terminales \"bobas\", con poca capacidad, pero conectadas a un servidor muy poderoso. TodavÃ­a se pensaba a la PC en la forma tradicional, con el sistema Windows y softwares que prÃ¡cticamente no ofrecÃ­an conexiÃ³n con otras personas ni equipos. \r\n\r\nQuince aÃ±os despuÃ©s el pronÃ³stico del fin de la PC empieza a hacerse realidad, pero bajo una forma completamente distinta a la que se imaginaba. \r\n','2011-09-16 02:48:28'),(9,'Claves para comprar una tableta en la Argentina ','El iPad dio vida a esta categorÃ­a de computadoras tÃ¡ctiles con mucho estilo. Cada vez hay mÃ¡s variantes para elegir. Los secretos para no errar.\r\n','2011-09-16 02:48:37'),(10,'Watson, la supercomputadora que ayudarÃ¡ a resolver enigmas de la medicina','En EE.UU. es muy famosa porque ganÃ³ 1 millÃ³n de dÃ³lares en un programa de preguntas y respuestas. Es capaz de buscar en 200 millones de pÃ¡ginas de datos y responder en menos de 3 segundos.\r\n','2011-09-16 02:49:16'),(11,'Soy lo que soy ','Nilda FernÃ¡ndez y Falete. Ambos cultivan la ambigÃ¼edad en materia sexual, y esta semana darÃ¡n sendos shows en Buenos Aires. AquÃ­, hablan del arte sin fronteras de gÃ©nero.\r\n','2011-09-16 02:49:43'),(12,'Impuestos altisimos a la importacion','La presidenta Cristina aumenta los impuestos a la importacion de electronicos.','2011-09-16 03:22:41');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_categories`
--

DROP TABLE IF EXISTS `posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_categories` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_categories`
--

LOCK TABLES `posts_categories` WRITE;
/*!40000 ALTER TABLE `posts_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2011-09-25 11:56:40
