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
  `ip` varchar(64) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `registration_code` char(10) DEFAULT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1383086278,NULL,'e78de0dcd23fe7ab0cca9ea3c002e7523fd5e1e0','ef2ec8738e24daca58e82d55b68bde6bcb9e1cc9',NULL,NULL,'jcapulet','jcapulet@veronahs.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1383086776,NULL,'61cdfec25dd9bbb9a2e3b235df4a20c4c9aaefcb','500339f8fd3aaa369e30594e9e05f146e827cd7c',NULL,NULL,'benvolio','bvolio@veronahs.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1383087041,NULL,'b0ac297d9e72e1ae0c3f54d17d0912abfb6924a7','500339f8fd3aaa369e30594e9e05f146e827cd7c',NULL,NULL,'benvolio','bvolio@veronahs.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1383087465,NULL,'a92941c5cd4f6d15827de14c22c207c1482e7bf2','500339f8fd3aaa369e30594e9e05f146e827cd7c',NULL,NULL,'benvolio','bvolio@veronahs.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1383087536,NULL,'b36f14fe2793b27b46ce5fb8f197241dd7e02a59','670102259fb523edad0bf985c116d0372cd04649',NULL,NULL,'ajax','ajax@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1383088206,NULL,'b1bbcc6cb2b5f0446ce94222b86a4b550964c386','0067e352ed2ff222173ef458c52b3d7ef3a4bb53',NULL,NULL,'omarinfante','oinfante@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1383427944,NULL,'4b8593a0fa8f0da39b88c45fba6e506852677eb7','d0b550f0e6e03ef927b408d6b6c8854c5a33f58e',1383513473,NULL,'dk','dk@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,1383428815,1383428815,'c9e1c73c6d6036100d775a57bdc8401da1daccf8','3d8c00b8f7baccaae88f2736ae4d82f649c01ff0',NULL,NULL,'ad','adirks@tigers.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','gysanujaja',NULL,NULL),(10,1383430131,1383430131,'4e7eda01541780db46f4829e246f56031de83151','16653c73c29a6d2fd346ffcb157589fd9d53cfc3',NULL,NULL,'aa','aavila@tigers.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','bumaqamyma',NULL,NULL),(11,1383430940,1383430940,'d2b9d6dfd3cf7d61bf44d093c5393c962bfc9809','18577ee73e6e9921d99c48a2d47d631048686114',NULL,NULL,'gl','glaird@tigers.com',NULL,NULL,'76.109.14.196','','','','epuqasenud',NULL,NULL),(12,1383431804,1383431804,'1a7686b58fb02d59915038f70d2cbda2572c60ca','130d571ea83e200c72cd3c7f0f9c8b4be315ae83',NULL,NULL,'prince','pfielder@tigers.com',NULL,NULL,'76.109.14.196','','','','eqeruvahab',NULL,NULL),(13,1383493273,1383493273,'02e0bfca0bf00eb249fde982e172a31a6d4fe83d','10add7ab9632cba1e4928d4d51ed5ae086b9132b',NULL,NULL,'cbetran','cbetran@cardinals.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','bygahahuha',NULL,NULL),(14,1383499103,1383499103,'86fa506097c841e52322259e740350c81ad126e1','36d5f7dd5c605fd919ee827230a3838db29ee5fa',NULL,NULL,'yadier','ymolina@cards.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','pajyqahyzu',NULL,NULL),(17,1383502827,1383502827,'b84ba44b7c32f77c333ebb3bfed7e12e12b1cf1f','f16a62b2b28668c6676663f877fe93c2b7f6688b',NULL,NULL,'salty','salty@redsox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','pygamujese',NULL,NULL),(18,1383503084,1383503084,'cd8b1fdc0e92907d470bed7d89177010d1e13cd0','b3b3a4c11e8fd5302538286d573a6105d2bbed85',1383503093,NULL,'bighurt','bighurt@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','yhujezynaj',NULL,NULL),(19,1383503803,1383503803,'aac82d45b12720034e521d1a1f2dc0c3e8a84ca9','dca186e4bb86c9473b9dd67767dcaaf343009bc0',1383510361,NULL,'hank','hank@braves.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','sudyvumuha',NULL,NULL),(20,1383507300,1383507300,'d3a0bdc70fb81aaecb2b876d29c002f969dcc310','1f603936f964e3f0202435698cfa519ec2363c8f',NULL,NULL,'panda','dkelly@tigers.com',NULL,NULL,'76.109.14.196','','','','ytyqemybyj',NULL,NULL),(21,1383507474,1383507474,'cc59171ff2cd24e18d094708f3104f8df24cc989','f745007980045f9105b1ea4b4dc98bb0e5441bb0',NULL,NULL,'shawon','shawon@giants.com',NULL,NULL,'76.109.14.196','','','','urysyrubub',NULL,NULL),(22,1383508158,1383508158,'498a276851d3b9fef47c16a657fb876dff6a8421','0d2cac3bf1d4fb4f2b264c738e87b124783fdcf8',NULL,NULL,'pudge','pudge@redsox.com',NULL,NULL,'76.109.14.196','','','','ejebadevav',NULL,NULL),(23,1383508222,1383508222,'a77afc5b2990e036f878767b20c15024d4f62311','d47cc6319330ef8267158178d6ccd5404ecde9dd',NULL,NULL,'sweetlou','sweetlou@tigers.com',NULL,NULL,'76.109.14.196','','','','udemevutun',NULL,NULL),(24,1383508418,1383508418,'3976e910d285e4c6151c41c0e0e4a35dafae4c27','6523c747d2ae9cfc3a0d00b1ed499772166a9ad2',NULL,NULL,'luispujols','lpujols@angels.com',NULL,NULL,'76.109.14.196','','','','uhuguhytab',NULL,NULL),(25,1383508732,1383508732,'785bd33f11513e68ad18a73d0f713844c0d0a415','f17d70ae5b9378c7be3ebea846dc761adc90be28',NULL,NULL,'billymartin','bmartin@yankees.com',NULL,NULL,'76.109.14.196','','','','uqetarenyr',NULL,NULL),(26,1383509003,1383509003,'c06b260e893957284bf762962292242bc0bbd29d','a5c5eb9628ae39bd5058b5c0d45cd4fd5526e7d8',1383535249,NULL,'reggie','reggie@yankees.com','New York City/Oakland','AKA \"Mr. October\"; played for Yankees, A\'s, Angels','76.109.14.196','','','','pyzarepaqu','Reggie','Jackson'),(27,1383509804,1383509804,'8c5aa28ea92185ffcc9fe73faa5c91296f677309','1cf174a77c1c8ea6c021244c0590b7ea4e734254',1383509815,NULL,'willie','willie@yankees.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','umasapumuv',NULL,NULL),(28,1383509979,1383509979,'b978ca287021033d87e15ba7c8167d9db4fd6c0a','bdc2f8ad28b45123b6e81be461f2822c752ea7c8',NULL,NULL,'mickey','mickey@yankees.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','qenasuvugy',NULL,NULL),(29,1383520581,1383520581,'8c88a7fe9cfe73f258843e09482fe6c688a64931','da7664e8459c68c44e9fa5dfd6a54ef8da101235',1383520588,NULL,'yaz','yaz@redsox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','qesudebyme',NULL,NULL),(30,1383531838,1383531838,'7d77b95ee7c79757be6a4546d5b3174773e59bb3','aa41cc6ee145d124db6740274daaead31f0706d0',1383531849,NULL,'ralomar','ralomar@orioles.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','epuregyhen',NULL,NULL),(31,1383532131,1383532131,'711713a31603add18dce7316a6d13bbcf95a5a2b','f99eb4c8f7878ef39d6179faadb5f7ed94d6bc7d',1383532131,NULL,'lappling','lappling@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','hegesadypu',NULL,NULL),(32,1383532287,1383532287,'163083bd99aaedced32de67ae07e0bf9c67382b5','93fa670deca930defd6af04c26848e46edc060d8',1383532287,NULL,'richieallen','rallen@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','gyjahevydy',NULL,NULL),(33,1383532472,1383532472,'3825f9eb03d496a8d0e678f50c6585070f8b2e8b','06105ccec30306d7b4c5a568754b0507d4fc175f',1383532472,NULL,'yogi','yogi@yankees.com','','','76.109.14.196','FL','US','West Palm Beach','ejapygygan','Yogi',''),(34,1383534077,1383534077,'62dcd03af6ab6876b0bf1fa3c483e2110ffa3672','1046744fc5b665b29cfbc379aa95ff184718d644',1383534077,NULL,'ernie','ernie@cubs.com','','Former Chicago Cubs shortstop; originator of the saying \"Let\'s play two!\"','76.109.14.196','FL','US','West Palm Beach','dagemesaza','Ernie','');
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

-- Dump completed on 2013-11-03 21:24:25
