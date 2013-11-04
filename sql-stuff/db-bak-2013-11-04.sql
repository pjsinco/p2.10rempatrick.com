-- MySQL dump 10.13  Distrib 5.5.29, for osx10.6 (i386)
--
-- Host: localhost    Database: rempatri_p2_10rempatrick_com
-- ------------------------------------------------------
-- Server version	5.5.29

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1383582966,1383582966,35,'Got more hits than Rod Carew.'),(2,1383583085,1383583085,35,'I hit .292 my rookie year, 1967.'),(3,1383583358,1383583358,35,'I made the All-Star team every year but my last. '),(4,1383583813,1383583813,35,'I was born in Panama. My mom gave birth to me on a train.'),(5,1383583834,1383583834,35,'I was born in Panama. My mom gave birth to me on a train.'),(6,1383584522,1383584522,35,'I stole home seven times in 1969.'),(7,1383584713,1383584713,35,'I stole home seven times in 1969.'),(8,1383587067,1383587067,26,'I played for five teams that won the World Series.'),(9,1383591844,1383591844,5,'I play centerfield for the Detroit Tigers.'),(10,1383592094,1383592094,5,'The Tigers acquired me from the Yankees in the trade that also netted them Max Scherzer from the Diamondbacks.'),(11,1383592832,1383592832,12,'I played for the Brewers before signing a big contract with the Tigers.'),(12,1383593359,1383593359,1,'The only thing I like about this house is the balcony.'),(13,1383593398,1383593398,1,'It\'s nice to wander out on the balcony at night, esp. on nights like this when I\'m feeling heartsick.'),(14,1383593750,1383593750,1,'ziggy stardust and the spiders from mars *listeningto*'),(15,1383594155,1383594155,36,'Distracting myself by thinking only of a black Gibson Les Paul. Someday.'),(16,1383594220,1383594220,36,'Wandering through town. Can\'t wait to get out one day.'),(17,1383594450,1383594450,36,'*listeningto* The Clash'),(18,1383595827,1383595827,36,'*listeningto\" Lady Gaga');
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
  `ip` varchar(64) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `registration_code` char(10) DEFAULT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1383086278,NULL,'01f1ff4bcbf826fe7f1a057bc183aeaf5edf9c44','ef2ec8738e24daca58e82d55b68bde6bcb9e1cc9',1383593321,NULL,'jcapulet','jcapulet@veronahs.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1383087536,NULL,'922b99179c07c45db7012740fa210ff4613ab408','670102259fb523edad0bf985c116d0372cd04649',1383591777,NULL,'ajax','ajax@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1383088206,NULL,'b1bbcc6cb2b5f0446ce94222b86a4b550964c386','0067e352ed2ff222173ef458c52b3d7ef3a4bb53',NULL,NULL,'omarinfante','oinfante@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1383427944,NULL,'afea191a2475192cbdf656fb99999c0eb9a5aeef','d0b550f0e6e03ef927b408d6b6c8854c5a33f58e',1383542735,NULL,'dk','dk@tigers.com','Detroit','I\'m a utility player for the Detroit Tigers.',NULL,NULL,NULL,NULL,NULL,'Don','Kelly'),(12,1383431804,1383431804,'41e0dfc74622dac5b13e01bcde15ae8feaa67ad7','130d571ea83e200c72cd3c7f0f9c8b4be315ae83',1383592806,NULL,'prince','pfielder@tigers.com',NULL,NULL,'76.109.14.196','','','','eqeruvahab',NULL,NULL),(13,1383493273,1383493273,'02e0bfca0bf00eb249fde982e172a31a6d4fe83d','10add7ab9632cba1e4928d4d51ed5ae086b9132b',NULL,NULL,'cbetran','cbetran@cardinals.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','bygahahuha',NULL,NULL),(14,1383499103,1383499103,'86fa506097c841e52322259e740350c81ad126e1','36d5f7dd5c605fd919ee827230a3838db29ee5fa',NULL,NULL,'yadier','ymolina@cards.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','pajyqahyzu',NULL,NULL),(17,1383502827,1383502827,'b84ba44b7c32f77c333ebb3bfed7e12e12b1cf1f','f16a62b2b28668c6676663f877fe93c2b7f6688b',NULL,NULL,'salty','salty@redsox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','pygamujese',NULL,NULL),(18,1383503084,1383503084,'cd8b1fdc0e92907d470bed7d89177010d1e13cd0','b3b3a4c11e8fd5302538286d573a6105d2bbed85',1383503093,NULL,'bighurt','bighurt@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','yhujezynaj',NULL,NULL),(19,1383503803,1383503803,'f19233f18664cfdd90782c86142a8f93a423b18e','dca186e4bb86c9473b9dd67767dcaaf343009bc0',1383598357,NULL,'hank','hank@braves.com','Atlanta','Knocker of 755 home runs.','76.109.14.196','FL','US','West Palm Beach','sudyvumuha','Henry','Aaron'),(20,1383507300,1383507300,'d3a0bdc70fb81aaecb2b876d29c002f969dcc310','1f603936f964e3f0202435698cfa519ec2363c8f',NULL,NULL,'panda','dkelly@tigers.com',NULL,NULL,'76.109.14.196','','','','ytyqemybyj',NULL,NULL),(21,1383507474,1383507474,'cc59171ff2cd24e18d094708f3104f8df24cc989','f745007980045f9105b1ea4b4dc98bb0e5441bb0',NULL,NULL,'shawon','shawon@giants.com',NULL,NULL,'76.109.14.196','','','','urysyrubub',NULL,NULL),(22,1383508158,1383508158,'498a276851d3b9fef47c16a657fb876dff6a8421','0d2cac3bf1d4fb4f2b264c738e87b124783fdcf8',NULL,NULL,'pudge','pudge@redsox.com',NULL,NULL,'76.109.14.196','','','','ejebadevav',NULL,NULL),(23,1383508222,1383508222,'a77afc5b2990e036f878767b20c15024d4f62311','d47cc6319330ef8267158178d6ccd5404ecde9dd',NULL,NULL,'sweetlou','sweetlou@tigers.com',NULL,NULL,'76.109.14.196','','','','udemevutun',NULL,NULL),(24,1383508418,1383508418,'3976e910d285e4c6151c41c0e0e4a35dafae4c27','6523c747d2ae9cfc3a0d00b1ed499772166a9ad2',NULL,NULL,'luispujols','lpujols@angels.com',NULL,NULL,'76.109.14.196','','','','uhuguhytab',NULL,NULL),(25,1383508732,1383508732,'d9948a43c0908bb8e594ec2b4c149435f7c6933e','f17d70ae5b9378c7be3ebea846dc761adc90be28',1383598433,NULL,'billymartin','bmartin@yankees.com','Once, New York City','I was hired and fired by George Steinbrenner, like, 5 times.','76.109.14.196','','','','uqetarenyr','Billy','Martin'),(26,1383509003,1383509003,'b620b7fe8cec474faf8839a3a0d4d9bf62d74edc','a5c5eb9628ae39bd5058b5c0d45cd4fd5526e7d8',1383586948,NULL,'reggie','','New York City/Oakland','AKA \"Mr. October\"; played for Yankees, A\'s, Angels','76.109.14.196','','','','pyzarepaqu','Reggie','Jackson'),(27,1383509804,1383509804,'81c2f881f33cfa817524ccd48b13c429acbbdc50','1cf174a77c1c8ea6c021244c0590b7ea4e734254',1383598247,NULL,'willie','willie@yankees.com','Queens','Former 2Ber for NYYankees!','76.109.14.196','FL','US','West Palm Beach','umasapumuv','Willie','Randolph'),(28,1383509979,1383509979,'a7c819fac7c3f6eeaf6a22694ace79ebb781fec5','bdc2f8ad28b45123b6e81be461f2822c752ea7c8',1383597672,NULL,'mickey','mickey@yankees.com','NYC','I used to play for the New York Yankees.','76.109.14.196','FL','US','West Palm Beach','qenasuvugy','Mickey','Rivers'),(29,1383520581,1383520581,'8c88a7fe9cfe73f258843e09482fe6c688a64931','da7664e8459c68c44e9fa5dfd6a54ef8da101235',1383520588,NULL,'yaz','yaz@redsox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','qesudebyme',NULL,NULL),(30,1383531838,1383531838,'7d77b95ee7c79757be6a4546d5b3174773e59bb3','aa41cc6ee145d124db6740274daaead31f0706d0',1383531849,NULL,'ralomar','ralomar@orioles.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','epuregyhen',NULL,NULL),(31,1383532131,1383532131,'711713a31603add18dce7316a6d13bbcf95a5a2b','f99eb4c8f7878ef39d6179faadb5f7ed94d6bc7d',1383532131,NULL,'lappling','lappling@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','hegesadypu',NULL,NULL),(32,1383532287,1383532287,'163083bd99aaedced32de67ae07e0bf9c67382b5','93fa670deca930defd6af04c26848e46edc060d8',1383532287,NULL,'richieallen','rallen@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','gyjahevydy',NULL,NULL),(33,1383532472,1383532472,'3825f9eb03d496a8d0e678f50c6585070f8b2e8b','06105ccec30306d7b4c5a568754b0507d4fc175f',1383532472,NULL,'yogi','yogi@yankees.com','','','76.109.14.196','FL','US','West Palm Beach','ejapygygan','Yogi',''),(34,1383534077,1383534077,'fbf770a659c6c2b31e9ed7e332bfa7aa7461df4e','1046744fc5b665b29cfbc379aa95ff184718d644',1383604618,NULL,'ernie','mrcub@cubs.com','Chicago','Former Chicago Cubs shortstop; originator of the saying \"Let\'s play two!\"','76.109.14.196','FL','US','West Palm Beach','dagemesaza','Ernie','Banks'),(35,1383543755,1383543755,'664548faa99ed5fe27318b314f5e307c019f853d','e3527661c632add843ee91bde65248ddc0bfaf9b',1383596023,NULL,'rodcarew','rcarew@twins.com','Panama','1991 inductee into Baseball Hall of Fame; played for the Twins and Angels between 1967 and 1985.','76.109.14.196','FL','US','West Palm Beach','vametyreba','Rod','Carew'),(36,1383593857,1383593857,'97a81bdb51bf620e637682f097d25b16649178a6','1a260a5764fcd2dfd9d328ee68e2e7b8bf57fbd9',1383601452,NULL,'RoMontague','romeo@veronahs.edu','Verona','Yes, the famous star-crossed lover','76.109.14.196','','','','samadyqupu','Romeo','Montague');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_users`
--

LOCK TABLES `users_users` WRITE;
/*!40000 ALTER TABLE `users_users` DISABLE KEYS */;
INSERT INTO `users_users` VALUES (1,1383602361,0,0),(2,1383602383,36,0),(3,1383602490,34,35),(6,1383603414,34,0),(7,1383604586,34,27);
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

-- Dump completed on 2013-11-04 16:41:00
