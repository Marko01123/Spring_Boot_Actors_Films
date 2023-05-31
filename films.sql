-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: films
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `actor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birth_year` int(4) NOT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Matthew Broderick',1962,'USA'),(2,'Alan Ruck',1956,'USA'),(3,'Mia Sara',1967,'USA'),(4,'Tom Skerritt',1933,'USA'),(5,'Sigourney Weaver',1949,'USA'),(6,'Veronica Cartwright',1949,'UK'),(7,'Cillian Murphy',1976,'UK'),(8,'Naomie Harris',1976,'UK'),(9,'Christopher Eccleston',1964,'UK'),(10,'Tom Hanks',1956,'USA'),(11,'Tim Allen',1953,'USA'),(12,'John Travolta',1954,'USA'),(13,'Uma Thurman',1970,'USA'),(14,'Samuel L. Jackson',1948,'USA'),(15,'Bruce Willis',1955,'BRD'),(16,'Alan Rickman',1946,'UK'),(17,'Bonnie Bedelia',1948,'USA'),(18,'Haley Joel Osment',1988,'USA'),(19,'Toni Collette',1972,'AUS'),(20,'Brad Pitt',1963,'USA'),(21,'Edward Norton',1969,'USA'),(22,'Helena Bonham Carter',1966,'UK'),(23,'Bill Murray',1950,'USA'),(24,'Frances McDormand',1957,'USA'),(25,'Robin Wright',1966,'USA'),(26,'Morgan Freeman',1937,'USA'),(27,'Kevin Spacey',1959,'USA'),(28,'Diane Kruger',1976,'BRD'),(29,'Christoph Waltz',1956,'AUT'),(30,'Harrison Ford',1942,'USA'),(31,'Rutger Hauer',1944,'NLD'),(32,'Sean Connery',1930,'UK'),(33,'Kevin Costner',1955,'USA'),(34,'Robert De Niro',1943,'USA'),(35,'Jodie Foster',1962,'USA'),(36,'Matt Damon',1970,'USA'),(37,'Kurt Russell',1951,'USA'),(38,'Lee Van Cleef',1925,'USA'),(39,'Keith David',1956,'USA'),(40,'Ben Affleck',1972,'USA'),(41,'Robin Williams',1951,'USA'),(42,'Jack Nicholson',1937,'USA'),(43,'Shelley Duvall',1949,'USA'),(44,'Tom Cruise',1962,'USA'),(45,'Nicole Kidman',1967,'USA'),(46,'Ewan McGregor',1971,'UK'),(47,'Joseph Gordon-Levitt',1981,'USA'),(48,'Leonardo DiCaprio',1974,'USA'),(49,'Tom Hardy',1977,'UK'),(50,'Ewen Bremner',1972,'UK'),(51,'Jonny Lee Miller',1972,'UK'),(52,'Annette Bening',1958,'USA'),(53,'Jamie Foxx',1967,'USA'),(54,'Jason Statham',1967,'UK'),(55,'Vinnie Jones',1965,'UK'),(56,'Jason Flemyng',1966,'UK'),(59,'Rade Serbedzija',1946,'YU'),(60,'Ellen Page',1987,'CAN');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_film`
--

DROP TABLE IF EXISTS `actor_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_film` (
  `actor_film_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) unsigned NOT NULL,
  `film_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`actor_film_id`),
  KEY `fk_actor_film_actor_id_idx` (`actor_id`),
  KEY `fk_actor_film_film_id_idx` (`film_id`),
  CONSTRAINT `fk_actor_film_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_film_film_id` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_film`
--

LOCK TABLES `actor_film` WRITE;
/*!40000 ALTER TABLE `actor_film` DISABLE KEYS */;
INSERT INTO `actor_film` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,3),(8,8,3),(9,9,3),(10,10,4),(11,11,4),(12,12,5),(13,13,5),(14,14,5),(15,15,5),(16,15,6),(17,16,6),(18,17,6),(19,15,7),(20,18,7),(21,19,7),(22,20,8),(23,21,8),(24,22,8),(25,21,9),(26,23,9),(27,24,9),(28,15,9),(29,10,10),(30,25,10),(31,15,11),(32,14,11),(33,25,11),(34,26,12),(35,27,12),(36,20,12),(37,20,13),(38,28,13),(39,29,13),(40,30,14),(41,31,14),(42,30,15),(43,32,15),(44,32,16),(45,33,16),(46,34,16),(47,34,17),(48,35,17),(49,36,18),(50,10,18),(51,37,19),(52,38,19),(53,37,20),(54,39,20),(55,15,21),(56,40,21),(57,39,21),(58,40,22),(59,41,22),(60,36,22),(61,42,23),(62,43,23),(63,44,24),(64,45,24),(65,45,25),(66,46,25),(67,47,26),(68,48,26),(69,49,26),(70,7,26),(71,47,27),(72,15,27),(73,49,28),(74,7,28),(75,46,29),(76,50,29),(77,51,29),(78,52,30),(79,27,30),(80,42,31),(81,36,31),(82,48,31),(83,53,32),(84,48,32),(85,14,32),(86,29,32),(87,54,33),(88,55,33),(89,56,33),(90,20,33),(91,54,34),(92,55,34),(93,56,34),(94,44,35),(95,53,35),(96,54,35),(97,59,33),(98,60,26);
/*!40000 ALTER TABLE `actor_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `film_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(4) NOT NULL,
  `genre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Ferris Bueller\'s Day Off','John Hughes',1986,'Comedy'),(2,'Alien','Ridley Scott',1979,'Horror'),(3,'28 Days Later...','Danny Boyle',2002,'Horror'),(4,'Toy Story','John Lasseter',1995,'Animation'),(5,'Pulp Fiction','Quentin Tarantino',1994,'Crime'),(6,'Die Hard','John McTiernan',1988,'Action'),(7,'The Sixth Sense','M. Night Shyamalan',1999,'Mystery'),(8,'Fight Club','David Fincher',1999,'Drama'),(9,'Moonrise Kingdom','Wes Anderson',2012,'Comedy'),(10,'Forrest Gump','Robert Zemeckis',1994,'Drama'),(11,'Unbreakable','M. Night Shyamalan',2000,'Mystery'),(12,'Se7en','David Fincher',1995,'Crime'),(13,'Inglourious Basterds','Quentin Tarantino',2009,'War'),(14,'Blade Runner','Ridley Scott',1982,'Sci-fi'),(15,'Indiana Jones and the Last Crusade','Steven Spielberg',1989,'Adventure'),(16,'The Untouchables','Brian De Palma',1987,'Crime'),(17,'Taxi Driver','Martin Scorsese',1976,'Crime'),(18,'Saving Private Ryan','Steven Spielberg',1998,'War'),(19,'Escape from New York','John Carpenter',1981,'Action'),(20,'The Thing','John Carpenter',1982,'Horror'),(21,'Armageddon','Michael Bay',1998,'Adventure'),(22,'Good Will Hunting','Gus Van Sant',1997,'Drama'),(23,'The Shining','Stanley Kubrick',1980,'Horror'),(24,'Eyes Wide Shut','Stanley Kubrick',1999,'Drama'),(25,'Moulin Rouge!','Baz Luhrmann',2001,'Musical'),(26,'Inception','Christopher Nolan',2010,'Sci-fi'),(27,'Looper','Rian Johnson',2012,'Action'),(28,'Dunkirk','Christopher Nolan',2017,'War'),(29,'Trainspotting','Danny Boyle',1996,'Drama'),(30,'American Beauty','Sam Mendes',1999,'Drama'),(31,'The Departed','Martin Scorsese',2006,'Crime'),(32,'Django Unchained','Quentin Tarantino',2012,'Western'),(33,'Snatch','Guy Ritchie',2000,'Crime'),(34,'Lock, Stock and Two Smoking Barrels','Guy Ritchie',1998,'Comedy'),(35,'Collateral','Michael Mann',2004,'Crime');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 17:29:33
