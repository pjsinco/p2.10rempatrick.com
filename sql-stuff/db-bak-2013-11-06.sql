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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,1383583085,1383583085,35,'I hit .292 my rookie year, 1967.'),(3,1383583358,1383583358,35,'I made the All-Star team every year but my last. '),(4,1383583813,1383583813,35,'I was born in Panama. My mom gave birth to me on a train.'),(6,1383584522,1383584522,35,'I stole home seven times in 1969.'),(8,1383587067,1383587067,26,'I played for five teams that won the World Series.'),(9,1383591844,1383591844,5,'I play centerfield for the Detroit Tigers.'),(10,1383592094,1383592094,5,'The Tigers acquired me from the Yankees in the trade that also netted them Max Scherzer from the Diamondbacks.'),(11,1383592832,1383592832,12,'I played for the Brewers before signing a big contract with the Tigers.'),(12,1383593359,1383593359,1,'The only thing I like about this house is the balcony.'),(13,1383593398,1383593398,1,'It\'s nice to wander out on the balcony at night, esp. on nights like this when I\'m feeling heartsick.'),(14,1383593750,1383593750,1,'ziggy stardust and the spiders from mars *listeningto*'),(15,1383594155,1383594155,36,'Distracting myself by thinking only of a black Gibson Les Paul. Someday.'),(16,1383594220,1383594220,36,'Wandering through town. Can\'t wait to get out one day.'),(17,1383594450,1383594450,36,'*listeningto* The Clash'),(18,1383595827,1383595827,36,'*listeningto\" Lady Gaga'),(19,1383605005,1383605005,36,'*listeningto* tUnEyArDs'),(20,1383607117,1383607117,36,'http://www2.gibson.com/Products/Electric-Guitars/Les-Paul/Gibson-Custom/Les-Paul-Custom.aspx'),(21,1383612349,1383612349,25,'This is a post from Billy Martin.'),(22,1383612388,1383612388,27,'People, this is a post from former Yankees secondbaseman Willie Randolph.'),(23,1383664916,1383664916,12,'I make a lot of money playing first base for the Detroit Tigers.'),(24,1383676154,1383676154,36,'http://www2.gibson.com/Products/Electric-Guitars/SG/Gibson-USA/SG-Standard.aspx'),(25,1383676178,1383676178,36,'But, soft! what light through yonder window breaks?\r\n'),(26,1383676205,1383676205,36,'It is the east, and Juliet is the sun.'),(27,1383676265,1383676265,36,'Two of the fairest stars in all the heaven,\r\nHaving some business, do entreat her eyes\r\nTo twinkle in their spheres till they return.'),(28,1383676348,1383676348,1,'Ay me!\r\n'),(29,1383676430,1383676430,1,'What man art thou that thus bescreen\'d in night\r\nSo stumblest on my counsel?'),(30,1383676491,1383676491,36,'By a name, I know not how to tell thee who I am.'),(31,1383676562,1383676562,1,'My ears have not yet drunk a hundred words of that tongue\'s utterance, yet I know the sound'),(32,1383676588,1383676588,1,'Art thou not Romeo and a Montague?'),(33,1383676627,1383676627,36,'Neither, fair saint, if either thee dislike.'),(34,1383676658,1383676658,1,'If they do see thee, they will murder thee.'),(35,1383676728,1383676728,36,'But thou love me, let them find me here'),(36,1383676746,1383676746,36,'My life were better ended by their hate, than death prorogued, wanting of thy love.'),(37,1383676821,1383676821,1,'O gentle Romeo, if thou dost love, pronounce it faithfully'),(38,1383676899,1383676899,36,'Lady, by yonder blessed moon I swear'),(39,1383676928,1383676928,1,'O, swear not by the moon, the inconstant moon'),(40,1383676967,1383676967,36,'What shall I swear by?'),(41,1383676991,1383676991,1,'Do not swear at all'),(42,1383677016,1383677016,1,'Or, if thou wilt, swear by thy gracious self, which is the god of my idolatry, and I\'ll believe thee.'),(43,1383677084,1383677084,36,'If my heart\'s dear love--'),(44,1383677114,1383677114,1,'I have no joy of this contract to-night: It is too rash, too unadvised, too sudden'),(45,1383677192,1383677192,1,'Good night, good night! as sweet repose and rest come to thy heart as that within my breast!'),(46,1383677216,1383677216,36,'O, wilt thou leave me so unsatisfied?'),(47,1383677245,1383677245,1,'What satisfaction canst thou have to-night?'),(48,1383677268,1383677268,36,'The exchange of thy love\'s faithful vow for mine.'),(49,1383677328,1383677328,1,'I gave thee mine before thou didst request it'),(50,1383677360,1383677360,1,'I hear some noise within ...'),(51,1383677451,1383677451,1,'A thousand times good night!'),(52,1383677494,1383677494,36,'A thousand times the worse, to want thy light.'),(53,1383677521,1383677521,1,'Romeo!'),(54,1383677542,1383677542,36,'My dear?'),(55,1383677643,1383677643,1,'\'Tis almost morning'),(56,1383677734,1383677734,1,'Good night, good night!'),(57,1383677775,1383677775,1,'Parting is such sweet sorrow'),(58,1383677800,1383677800,36,'Sleep dwell upon thine eyes, peace in thy breast'),(59,1383678364,1383678364,12,'my middle name is Semien.'),(60,1383687348,1383687348,8,'I\'m Don Kelly, utility ballplayer.'),(61,1383708746,1383708746,38,'I\'m hungry'),(62,1383709087,1383709087,38,'i\'m sleepy'),(63,1383709879,1383709879,38,'I just hear a good song by Toni Braxton'),(64,1383710120,1383710120,38,'And one by the Chameleons UK'),(65,1383710143,1383710143,38,''),(66,1383763576,1383763576,39,'Where has thou been sister?'),(67,1383763785,1383763785,40,'Killing swine'),(68,1383763814,1383763814,40,'Sister, where thou?'),(69,1383763860,1383763860,39,'A sailor\\\'s wife had chestnuts in her lap'),(70,1383763900,1383763900,39,'And munch\\\'d, and munch\\\'d, and munch\\\'d'),(71,1383763921,1383763921,39,'\\\'Give me,\\\' quoth I'),(72,1383763951,1383763951,39,'\\\'Aroint thee, witch!\\\' the rump-fed ronyon cries'),(73,1383777025,1383777025,25,'I made a big, game-saving catch in the 1952 World Series when I played for the Yankees.');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1383086278,NULL,'2880d7e72decb78e0b3ecfb852ba0b5eb3f55d06','ef2ec8738e24daca58e82d55b68bde6bcb9e1cc9',1383774358,NULL,'jcapulet','jcapulet@veronahs.edu','Verona, Italy','Tragic figure at 14',NULL,NULL,NULL,NULL,NULL,'Juliet','Capulet'),(5,1383087536,NULL,'922b99179c07c45db7012740fa210ff4613ab408','670102259fb523edad0bf985c116d0372cd04649',1383591777,NULL,'ajax','ajax@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1383088206,NULL,'b1bbcc6cb2b5f0446ce94222b86a4b550964c386','0067e352ed2ff222173ef458c52b3d7ef3a4bb53',NULL,NULL,'omarinfante','oinfante@tigers.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1383427944,NULL,'895d43fd453df593d0b0804628d025cacd1a4f04','d0b550f0e6e03ef927b408d6b6c8854c5a33f58e',1383767193,NULL,'dk','dk@tigers.com','Detroit','I\'m a utility player for the Detroit Tigers.',NULL,NULL,NULL,NULL,NULL,'Don','Kelly'),(12,1383431804,1383431804,'c86bc6e47c30ba3ddfae977e0a226f6c6b22ac79','130d571ea83e200c72cd3c7f0f9c8b4be315ae83',1383678265,NULL,'prince','pfielder@tigers.com','Detroit','I play for the Detroit Tigers; I tend to hit a lot of home runs.','76.109.14.196','','','','eqeruvahab','Prince','Fielder'),(13,1383493273,1383493273,'02e0bfca0bf00eb249fde982e172a31a6d4fe83d','10add7ab9632cba1e4928d4d51ed5ae086b9132b',NULL,NULL,'cbetran','cbetran@cardinals.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','bygahahuha',NULL,NULL),(14,1383499103,1383499103,'86fa506097c841e52322259e740350c81ad126e1','36d5f7dd5c605fd919ee827230a3838db29ee5fa',NULL,NULL,'yadier','ymolina@cards.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','pajyqahyzu',NULL,NULL),(17,1383502827,1383502827,'b84ba44b7c32f77c333ebb3bfed7e12e12b1cf1f','f16a62b2b28668c6676663f877fe93c2b7f6688b',NULL,NULL,'salty','salty@redsox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','pygamujese',NULL,NULL),(18,1383503084,1383503084,'cd8b1fdc0e92907d470bed7d89177010d1e13cd0','b3b3a4c11e8fd5302538286d573a6105d2bbed85',1383503093,NULL,'bighurt','bighurt@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','yhujezynaj',NULL,NULL),(19,1383503803,1383503803,'f19233f18664cfdd90782c86142a8f93a423b18e','dca186e4bb86c9473b9dd67767dcaaf343009bc0',1383598357,NULL,'hank','hank@braves.com','Atlanta','Knocker of 755 home runs.','76.109.14.196','FL','US','West Palm Beach','sudyvumuha','Henry','Aaron'),(20,1383507300,1383507300,'d3a0bdc70fb81aaecb2b876d29c002f969dcc310','1f603936f964e3f0202435698cfa519ec2363c8f',NULL,NULL,'panda','dkelly@tigers.com',NULL,NULL,'76.109.14.196','','','','ytyqemybyj',NULL,NULL),(21,1383507474,1383507474,'cc59171ff2cd24e18d094708f3104f8df24cc989','f745007980045f9105b1ea4b4dc98bb0e5441bb0',NULL,NULL,'shawon','shawon@giants.com',NULL,NULL,'76.109.14.196','','','','urysyrubub',NULL,NULL),(22,1383508158,1383508158,'498a276851d3b9fef47c16a657fb876dff6a8421','0d2cac3bf1d4fb4f2b264c738e87b124783fdcf8',NULL,NULL,'pudge','pudge@redsox.com',NULL,NULL,'76.109.14.196','','','','ejebadevav',NULL,NULL),(23,1383508222,1383508222,'a77afc5b2990e036f878767b20c15024d4f62311','d47cc6319330ef8267158178d6ccd5404ecde9dd',NULL,NULL,'sweetlou','sweetlou@tigers.com',NULL,NULL,'76.109.14.196','','','','udemevutun',NULL,NULL),(24,1383508418,1383508418,'3976e910d285e4c6151c41c0e0e4a35dafae4c27','6523c747d2ae9cfc3a0d00b1ed499772166a9ad2',NULL,NULL,'luispujols','lpujols@angels.com',NULL,NULL,'76.109.14.196','','','','uhuguhytab',NULL,NULL),(25,1383508732,1383508732,'9be189f21d52f4b74cbc55a40d2be8bf260f9bd9','f17d70ae5b9378c7be3ebea846dc761adc90be28',1383775605,NULL,'billymartin','bmartin@yankees.com','Once, New York City','I was hired and fired by George Steinbrenner, like, 5 times.','76.109.14.196','','','','uqetarenyr','Billy','Martin'),(26,1383509003,1383509003,'b620b7fe8cec474faf8839a3a0d4d9bf62d74edc','a5c5eb9628ae39bd5058b5c0d45cd4fd5526e7d8',1383586948,NULL,'reggie','','New York City/Oakland','AKA \"Mr. October\"; played for Yankees, A\'s, Angels','76.109.14.196','','','','pyzarepaqu','Reggie','Jackson'),(27,1383509804,1383509804,'850b5d8606eb8daa65730de89722faa52f4a76fd','1cf174a77c1c8ea6c021244c0590b7ea4e734254',1383612359,NULL,'willie','willie@yankees.com','Queens','Former 2Ber for NYYankees!','76.109.14.196','FL','US','West Palm Beach','umasapumuv','Willie','Randolph'),(28,1383509979,1383509979,'a7c819fac7c3f6eeaf6a22694ace79ebb781fec5','bdc2f8ad28b45123b6e81be461f2822c752ea7c8',1383597672,NULL,'mickey','mickey@yankees.com','NYC','I used to play for the New York Yankees.','76.109.14.196','FL','US','West Palm Beach','qenasuvugy','Mickey','Rivers'),(29,1383520581,1383520581,'0406404718561b3bcc15f5a53ddb5a38b318c776','da7664e8459c68c44e9fa5dfd6a54ef8da101235',1383688945,NULL,'yaz','yaz@redsox.com','Boston, Mass.','Red Sox lifer','76.109.14.196','FL','US','West Palm Beach','qesudebyme','Carl','Yastrzemski'),(30,1383531838,1383531838,'7d77b95ee7c79757be6a4546d5b3174773e59bb3','aa41cc6ee145d124db6740274daaead31f0706d0',1383531849,NULL,'ralomar','ralomar@orioles.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','epuregyhen',NULL,NULL),(31,1383532131,1383532131,'711713a31603add18dce7316a6d13bbcf95a5a2b','f99eb4c8f7878ef39d6179faadb5f7ed94d6bc7d',1383532131,NULL,'lappling','lappling@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','hegesadypu',NULL,NULL),(32,1383532287,1383532287,'163083bd99aaedced32de67ae07e0bf9c67382b5','93fa670deca930defd6af04c26848e46edc060d8',1383532287,NULL,'richieallen','rallen@whitesox.com',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','gyjahevydy',NULL,NULL),(33,1383532472,1383532472,'3825f9eb03d496a8d0e678f50c6585070f8b2e8b','06105ccec30306d7b4c5a568754b0507d4fc175f',1383532472,NULL,'yogi','yogi@yankees.com','','','76.109.14.196','FL','US','West Palm Beach','ejapygygan','Yogi',''),(34,1383534077,1383534077,'9c435c18a3593abba2429d8ef8e31e15889976e0','1046744fc5b665b29cfbc379aa95ff184718d644',1383771189,NULL,'ernie','mrcub@cubs.com','Chicago','Former Chicago Cubs shortstop','76.109.14.196','FL','US','West Palm Beach','dagemesaza','Ernie','Banks'),(35,1383543755,1383543755,'0a8a93d4cde2a0317f51193184815a6f0a0e4223','e3527661c632add843ee91bde65248ddc0bfaf9b',1383771082,NULL,'rodcarew','rcarew@twins.com','Panama','1991 inductee into Baseball Hall of Fame; played for the Twins and Angels between 1967 and 1985.','76.109.14.196','FL','US','West Palm Beach','vametyreba','Rod','Carew'),(36,1383593857,1383593857,'8bef4f41c71cdccd49bc8e4c924279c488e66e39','1a260a5764fcd2dfd9d328ee68e2e7b8bf57fbd9',1383704618,NULL,'RoMontague','romeo@veronahs.edu','Verona','Yes, the famous star-crossed lover','76.109.14.196','','','','samadyqupu','Romeo','Montague'),(37,1383691914,1383691914,'2a1dbd5bdbc2006289e1c382ea4580e25a846a86','224c2c9fef507c6c9c1eb80d65fc346a52956a7a',1383691914,NULL,'AndreDawson','adawson@expos.com','Miami','Former Expo, Cub; Hall of Famer; Born in Miami.','76.109.14.196','FL','US','West Palm Beach','umuqanagun','Andre','Dawson'),(38,1383695556,1383695556,'7f65b80b38bc23f188eeac954d48a0117c493e2a','a4a5fd7fbc1ddde27c3aae3730189773b0acd63c',1383749528,NULL,'psinco','psinco@fas.harvard.edu','Chicago','Could eat a horse right now','76.109.14.196','','','','ahudamezan','Patrick','Sinco'),(39,1383749805,1383749805,'c773e78480ba419eb5fe668db6662250b4ef1e2b','880103827b7f06517061fde5f39a0ceaa178d703',1383763843,NULL,'weirdSister1','wsister1@scotlandunderground.net','Scotland','famous witch','76.109.14.196','FL','US','West Palm Beach','mujasunyvu','',''),(40,1383763606,1383763606,'3ad6c24a9f502260d1b3c5dcfbefa2d85a8033aa','d55881c39fd76dc243c066f30bbcdd62470d448d',1383763606,NULL,'weirdSister2','wsister2@su.net','heath near Forres','Seeking: eye of newt and toe of frog','76.109.14.196','FL','US','West Palm Beach','yjegubejyj','',''),(41,1383769271,1383769271,'4e23e0a99c12f5af58c3a96db135aaa370326c8e','ae55aecf6fd497a7dfda468d628b535a4b2cf607',1383769271,NULL,'weirdSister3','wsister3@su.net',NULL,NULL,'76.109.14.196','FL','US','West Palm Beach','qutarajuse',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_users`
--

LOCK TABLES `users_users` WRITE;
/*!40000 ALTER TABLE `users_users` DISABLE KEYS */;
INSERT INTO `users_users` VALUES (1,1383602361,0,0),(2,1383602383,36,0),(3,1383602490,34,35),(6,1383603414,34,0),(7,1383604586,34,27),(8,1383605034,36,1),(10,1383607592,29,25),(11,1383607596,29,35),(12,1383607599,29,34),(14,1383611394,27,25),(15,1383611399,27,23),(16,1383611402,27,26),(17,1383611405,27,28),(18,1383664234,25,35),(19,1383664240,25,34),(20,1383665147,12,35),(21,1383665160,12,26),(22,1383665163,12,27),(23,1383665283,1,36),(24,1383687775,8,12),(25,1383689450,29,26),(27,1383692258,37,34),(28,1383692261,37,35),(30,1383692551,37,28),(31,1383692554,37,27),(32,1383692557,37,25),(33,1383694620,37,33),(35,1383708978,38,36),(36,1383709273,38,1),(38,1383763738,40,39),(39,1383763868,39,40),(40,1383767310,8,29),(41,1383771100,35,27);
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

-- Dump completed on 2013-11-06 16:40:40
