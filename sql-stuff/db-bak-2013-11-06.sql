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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,1383583085,1383583085,35,'I hit .292 my rookie year, 1967.'),(3,1383583358,1383583358,35,'I made the All-Star team every year but my last. '),(4,1383583813,1383583813,35,'I was born in Panama. My mom gave birth to me on a train.'),(6,1383584522,1383584522,35,'I stole home seven times in 1969.'),(8,1383587067,1383587067,26,'I played for five teams that won the World Series.'),(9,1383591844,1383591844,5,'I play centerfield for the Detroit Tigers.'),(10,1383592094,1383592094,5,'The Tigers acquired me from the Yankees in the trade that also netted them Max Scherzer from the Diamondbacks.'),(11,1383592832,1383592832,12,'I played for the Brewers before signing a big contract with the Tigers.'),(14,1383593750,1383593750,1,'ziggy stardust and the spiders from mars *listeningto*'),(21,1383612349,1383612349,25,'This is a post from Billy Martin.'),(22,1383612388,1383612388,27,'People, this is a post from former Yankees secondbaseman Willie Randolph.'),(23,1383664916,1383664916,12,'I make a lot of money playing first base for the Detroit Tigers.'),(24,1383676154,1383676154,36,'http://www2.gibson.com/Products/Electric-Guitars/SG/Gibson-USA/SG-Standard.aspx'),(25,1383676178,1383676178,36,'But, soft! what light through yonder window breaks?\r\n'),(26,1383676205,1383676205,36,'It is the east, and Juliet is the sun.'),(27,1383676265,1383676265,36,'Two of the fairest stars in all the heaven,\r\nHaving some business, do entreat her eyes\r\nTo twinkle in their spheres till they return.'),(28,1383676348,1383676348,1,'Ay me!\r\n'),(29,1383676430,1383676430,1,'What man art thou that thus bescreen\'d in night\r\nSo stumblest on my counsel?'),(30,1383676491,1383676491,36,'By a name, I know not how to tell thee who I am.'),(31,1383676562,1383676562,1,'My ears have not yet drunk a hundred words of that tongue\'s utterance, yet I know the sound'),(32,1383676588,1383676588,1,'Art thou not Romeo and a Montague?'),(33,1383676627,1383676627,36,'Neither, fair saint, if either thee dislike.'),(34,1383676658,1383676658,1,'If they do see thee, they will murder thee.'),(35,1383676728,1383676728,36,'But thou love me, let them find me here'),(36,1383676746,1383676746,36,'My life were better ended by their hate, than death prorogued, wanting of thy love.'),(37,1383676821,1383676821,1,'O gentle Romeo, if thou dost love, pronounce it faithfully'),(38,1383676899,1383676899,36,'Lady, by yonder blessed moon I swear'),(39,1383676928,1383676928,1,'O, swear not by the moon, the inconstant moon'),(40,1383676967,1383676967,36,'What shall I swear by?'),(41,1383676991,1383676991,1,'Do not swear at all'),(42,1383677016,1383677016,1,'Or, if thou wilt, swear by thy gracious self, which is the god of my idolatry, and I\'ll believe thee.'),(43,1383677084,1383677084,36,'If my heart\'s dear love--'),(44,1383677114,1383677114,1,'I have no joy of this contract to-night: It is too rash, too unadvised, too sudden'),(45,1383677192,1383677192,1,'Good night, good night! as sweet repose and rest come to thy heart as that within my breast!'),(46,1383677216,1383677216,36,'O, wilt thou leave me so unsatisfied?'),(47,1383677245,1383677245,1,'What satisfaction canst thou have to-night?'),(48,1383677268,1383677268,36,'The exchange of thy love\'s faithful vow for mine.'),(49,1383677328,1383677328,1,'I gave thee mine before thou didst request it'),(50,1383677360,1383677360,1,'I hear some noise within ...'),(51,1383677451,1383677451,1,'A thousand times good night!'),(52,1383677494,1383677494,36,'A thousand times the worse, to want thy light.'),(53,1383677521,1383677521,1,'Romeo!'),(54,1383677542,1383677542,36,'My dear?'),(55,1383677643,1383677643,1,'\'Tis almost morning'),(56,1383677734,1383677734,1,'Good night, good night!'),(57,1383677775,1383677775,1,'Parting is such sweet sorrow'),(58,1383677800,1383677800,36,'Sleep dwell upon thine eyes, peace in thy breast'),(59,1383678364,1383678364,12,'my middle name is Semien.'),(60,1383687348,1383687348,8,'I\'m Don Kelly, utility ballplayer.'),(61,1383708746,1383708746,38,'I\'m hungry'),(63,1383709879,1383709879,38,'I just heard a good song by Toni Braxton'),(64,1383710120,1383710120,38,'And one by the Chameleons UK'),(66,1383778371,1383778371,8,'I hit .222 this year.'),(67,1383782547,1383782547,39,'My compulsion is to be a visionary mystic.');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1383086278,NULL,'29cb2a4ce131b213e819b83a1ff4fb693274b52c','ef2ec8738e24daca58e82d55b68bde6bcb9e1cc9',1383784699,NULL,'jcapulet','jcapulet@veronahs.edu','Verona, Italy','Tragic figure at age 14',NULL,NULL,NULL,NULL,NULL,'Juliet','Capulet'),(5,1383087536,NULL,'3f3feb3e58b1f37f8a11a2772c9470b6ce52ab9c','670102259fb523edad0bf985c116d0372cd04649',1383788235,NULL,'ajax','ajax@tigers.com','Detroit','CFer for Tigers',NULL,NULL,NULL,NULL,NULL,'Austin','Jackson'),(8,1383427944,NULL,'a7aa1d682cc4bee5224e8a2ae4942caab0f07a22','d0b550f0e6e03ef927b408d6b6c8854c5a33f58e',1383778037,NULL,'dk','dk@tigers.com','Detroit','I\'m a utility player for the Detroit Tigers.',NULL,NULL,NULL,NULL,NULL,'Don','Kelly'),(12,1383431804,1383431804,'c86bc6e47c30ba3ddfae977e0a226f6c6b22ac79','130d571ea83e200c72cd3c7f0f9c8b4be315ae83',1383678265,NULL,'prince','pfielder@tigers.com','Detroit','I play for the Detroit Tigers; I tend to hit a lot of home runs.','76.109.14.196','','','','eqeruvahab','Prince','Fielder'),(19,1383503803,1383503803,'f19233f18664cfdd90782c86142a8f93a423b18e','dca186e4bb86c9473b9dd67767dcaaf343009bc0',1383598357,NULL,'hank','hank@braves.com','Atlanta','Knocker of 755 home runs.','76.109.14.196','FL','US','West Palm Beach','sudyvumuha','Henry','Aaron'),(25,1383508732,1383508732,'9be189f21d52f4b74cbc55a40d2be8bf260f9bd9','f17d70ae5b9378c7be3ebea846dc761adc90be28',1383682731,NULL,'billymartin','bmartin@yankees.com','Once, New York City','I was hired and fired by George Steinbrenner, like, 5 times.','76.109.14.196','','','','uqetarenyr','Billy','Martin'),(26,1383509003,1383509003,'b620b7fe8cec474faf8839a3a0d4d9bf62d74edc','a5c5eb9628ae39bd5058b5c0d45cd4fd5526e7d8',1383586948,NULL,'reggie','','New York City/Oakland','AKA \"Mr. October\"; played for Yankees, A\'s, Angels','76.109.14.196','','','','pyzarepaqu','Reggie','Jackson'),(27,1383509804,1383509804,'850b5d8606eb8daa65730de89722faa52f4a76fd','1cf174a77c1c8ea6c021244c0590b7ea4e734254',1383612359,NULL,'willie','willie@yankees.com','Queens','Former 2Ber for NYYankees!','76.109.14.196','FL','US','West Palm Beach','umasapumuv','Willie','Randolph'),(28,1383509979,1383509979,'a7c819fac7c3f6eeaf6a22694ace79ebb781fec5','bdc2f8ad28b45123b6e81be461f2822c752ea7c8',1383597672,NULL,'mickey','mickey@yankees.com','NYC','I used to play for the New York Yankees.','76.109.14.196','FL','US','West Palm Beach','qenasuvugy','Mickey','Rivers'),(29,1383520581,1383520581,'0406404718561b3bcc15f5a53ddb5a38b318c776','da7664e8459c68c44e9fa5dfd6a54ef8da101235',1383688945,NULL,'yaz','yaz@redsox.com','Boston, Mass.','Red Sox lifer','76.109.14.196','FL','US','West Palm Beach','qesudebyme','Carl','Yastrzemski'),(34,1383534077,1383534077,'a3d603c089cf9b7b436e1c411fb51cb7656b9e8b','1046744fc5b665b29cfbc379aa95ff184718d644',1383790523,NULL,'ernie','mrcub@cubs.com','Chicago','Former Chicago Cubs shortstop','76.109.14.196','FL','US','West Palm Beach','dagemesaza','Ernie','Banks'),(35,1383543755,1383543755,'2172bad797d5ede0e2cca18271d2bf4d8fb3c9d4','e3527661c632add843ee91bde65248ddc0bfaf9b',1383708832,NULL,'rodcarew','rcarew@twins.com','Panama','1991 inductee into Baseball Hall of Fame; played for the Twins and Angels between 1967 and 1985.','76.109.14.196','FL','US','West Palm Beach','vametyreba','Rod','Carew'),(36,1383593857,1383593857,'28cf5c9ff7b498f5e8f65ceda72cfa462815be65','1a260a5764fcd2dfd9d328ee68e2e7b8bf57fbd9',1383788223,NULL,'RoMontague','romeo@veronahs.edu','Verona','Yes, the famous star-crossed lover','76.109.14.196','','','','samadyqupu','Romeo','Montague'),(37,1383691914,1383691914,'dc4cb0dc66d1f7288d43376d24d103a86045fd87','224c2c9fef507c6c9c1eb80d65fc346a52956a7a',1383784354,NULL,'AndreDawson','adawson@expos.com','Miami','Former Expo, Cub; Hall of Famer; Born in Miami.','76.109.14.196','FL','US','West Palm Beach','umuqanagun','Andre','Dawson'),(38,1383695556,1383695556,'afb4257aba9ef050966f534a8316aab7839adc75','a4a5fd7fbc1ddde27c3aae3730189773b0acd63c',1383710027,NULL,'psinco','psinco@fas.harvard.edu','Chicago','Could eat a horse right now','76.109.14.196','','','','ahudamezan','Patrick','Sinco'),(39,1383782272,1383782272,'9b86602482bf19135f6a712a6477f29df1b04875','3c8a68dae04ac299d24370abca537af347c6521c',1383782272,NULL,'billypumpkin','psinco+billypumpkin@gmail.com','Highland Park, IL','Gloomy little goth-pop records, make I','76.109.14.196','FL','US','West Palm Beach','apumabydyz','Billy','Corgan');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_users`
--

LOCK TABLES `users_users` WRITE;
/*!40000 ALTER TABLE `users_users` DISABLE KEYS */;
INSERT INTO `users_users` VALUES (1,1383602361,0,0),(2,1383602383,36,0),(3,1383602490,34,35),(6,1383603414,34,0),(7,1383604586,34,27),(8,1383605034,36,1),(10,1383607592,29,25),(11,1383607596,29,35),(12,1383607599,29,34),(14,1383611394,27,25),(15,1383611399,27,23),(16,1383611402,27,26),(17,1383611405,27,28),(18,1383664234,25,35),(19,1383664240,25,34),(20,1383665147,12,35),(21,1383665160,12,26),(22,1383665163,12,27),(23,1383665283,1,36),(24,1383687775,8,12),(25,1383689450,29,26),(27,1383692258,37,34),(28,1383692261,37,35),(30,1383692551,37,28),(31,1383692554,37,27),(32,1383692557,37,25),(33,1383694620,37,33),(35,1383708978,38,36),(36,1383709273,38,1),(37,1383783023,39,1),(38,1383783026,39,36);
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

-- Dump completed on 2013-11-06 20:28:12
