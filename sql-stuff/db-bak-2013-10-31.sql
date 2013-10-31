-- MySQL dump 10.13  Distrib 5.5.33, for osx10.6 (i386)
--
-- Host: localhost    Database: rempatri_p2_10rempatrick_com
-- ------------------------------------------------------
-- Server version	5.5.33

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1383086278,NULL,'e78de0dcd23fe7ab0cca9ea3c002e7523fd5e1e0','ef2ec8738e24daca58e82d55b68bde6bcb9e1cc9',NULL,NULL,'jcapulet','jcapulet@veronahs.edu',NULL,NULL),(2,1383086776,NULL,'61cdfec25dd9bbb9a2e3b235df4a20c4c9aaefcb','500339f8fd3aaa369e30594e9e05f146e827cd7c',NULL,NULL,'benvolio','bvolio@veronahs.edu',NULL,NULL),(5,1383087536,NULL,'b36f14fe2793b27b46ce5fb8f197241dd7e02a59','670102259fb523edad0bf985c116d0372cd04649',NULL,NULL,'ajax','ajax@tigers.com',NULL,NULL),(7,1383088206,NULL,'b1bbcc6cb2b5f0446ce94222b86a4b550964c386','0067e352ed2ff222173ef458c52b3d7ef3a4bb53',NULL,NULL,'omarinfante','oinfante@tigers.com',NULL,NULL),(8,1383172570,NULL,'c340f8263612875487aa453d5351059d2106a4a6','86bab0ae6ff92e6491e5c7b16d5154d53d296d74',NULL,NULL,'miggy','mcabrera@tigers.com',NULL,NULL),(9,1383173270,NULL,'b139b55e3f433f420d231a08907108ea03b356a6','b30b26a2a6a22e59dc76f2419422a95d18a266af',NULL,NULL,'dkelly','ajackson@tigers.com',NULL,NULL),(10,1383188230,NULL,'1a5afb82b9c476b6bbfd219e3f72dee0edb4e40c','69ff6a83065199d7fa6e56d293df631045de4cf9',NULL,NULL,'curtis','cgranderson@yankees.com',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_users`
--

DROP TABLE IF EXISTS `users_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'follower',
  `user_id_followed` int(11) NOT NULL COMMENT 'followed',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_users`
--

LOCK TABLES `users_users` WRITE;
/*!40000 ALTER TABLE `users_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-31  8:15:50
