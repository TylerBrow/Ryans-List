# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.2.8-MariaDB)
# Database: ryans-list
# Generation Time: 2019-01-17 21:59:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_fk` (`parent_id`),
  CONSTRAINT `parent_fk` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`)
VALUES
	(1,'community',NULL,'community'),
	(2,'housing',NULL,'housing'),
	(3,'jobs',NULL,'jobs'),
	(4,'services',NULL,'services'),
	(5,'for sale',NULL,'for-sale'),
	(6,'activities',1,'activities'),
	(7,'artists',1,'artists'),
	(8,'childcare',1,'childcare'),
	(9,'classes',1,'classes'),
	(10,'events',1,'events'),
	(11,'general',1,'general'),
	(12,'groups',1,'groups'),
	(13,'local news',1,'local-news'),
	(14,'lost+found',1,'lost-found'),
	(15,'missed connections',1,'missed-connections'),
	(16,'pets',1,'pets'),
	(17,'politics',1,'politics'),
	(18,'rants & raves',1,'rants-raves'),
	(19,'rideshare',1,'ride-share'),
	(20,'volunteers',1,'volunteers'),
	(21,'apts / housing',2,'apts-housing'),
	(22,'housing swap',2,'housing-swap'),
	(23,'housing wanted',2,'housing-wanted'),
	(24,'office / commercial',2,'office-commercial'),
	(25,'parking / storage',2,'parking-storage'),
	(26,'real estate for sale',2,'real-estate-for-sale'),
	(27,'rooms / shared',2,'rooms-shared'),
	(28,'rooms wanted',2,'rooms-wanted'),
	(29,'sublets / temporary',2,'sublets-temporary'),
	(30,'vacation rentals',2,'vacation-rentals'),
	(31,'accounting + finance',3,'accounting-finance'),
	(32,'admin / office',3,'admin-office'),
	(33,'arch / engineering',3,'arch-engineering'),
	(34,'art / media / design',3,'art-media-design'),
	(35,'biotech / science',3,'biotech-science'),
	(36,'business / mgmt',3,'business-mgmt'),
	(37,'customer service',3,'customer-service'),
	(38,'education',3,'education'),
	(39,'food / bev / hosp',3,'food-bev-hosp'),
	(40,'general labor',3,'general-labor'),
	(41,'government',3,'government'),
	(42,'human resources',3,'human-resources'),
	(43,'internet engineers',3,'internet engineers'),
	(44,'legal / paralegal',3,'legal-paralegal'),
	(45,'manufacturing',3,'manufacturing'),
	(46,'marketing / pr / ad',3,'marketing-pr-ad'),
	(47,'medical / health',3,'medical-health'),
	(48,'nonprofit sector',3,'nonprofit-sector'),
	(49,'real estate',3,'real-estate-jobs'),
	(50,'retail / wholesale',3,'retail-wholesale'),
	(51,'sales / biz dev',3,'sales-biz-dev'),
	(52,'salon / spa / fitness',3,'salon-spa-fitness'),
	(53,'security',3,'security'),
	(54,'skilled trade',3,'skilled trade'),
	(55,'software / qa / dba',3,'software-qa-dba'),
	(56,'systems network',3,'systems-network'),
	(57,'technical support',3,'technical-support'),
	(58,'transport',3,'transport'),
	(59,'tv / film / video',3,'tv-film-video'),
	(60,'web / info design',3,'web-info-design'),
	(61,'writing / editing',3,'writing-editing'),
	(62,'[ETC]',3,'ETC-jobs'),
	(63,'[ part-time ]',3,'part-time-jobs'),
	(64,'antiques',5,'antiques'),
	(65,'appliances',5,'appliances'),
	(66,'arts + crafts',5,'arts-crafts'),
	(67,'atv / utv / sno',5,'atv-utv-sno'),
	(68,'auto parts',5,'auto-parts'),
	(69,'aviation',5,'aviation'),
	(70,'baby + kid',5,'baby-kid'),
	(71,'barter',5,'barter'),
	(72,'beauty + health',5,'beauty-health'),
	(73,'bikes',5,'bikes'),
	(74,'boats',5,'boats'),
	(75,'books',5,'books'),
	(76,'business',5,'business'),
	(77,'cars + trucks',5,'cars-trucks'),
	(78,'cds / dvd / vhs',5,'cds-dvd-vhs'),
	(79,'cell phones',5,'cell-phones'),
	(80,'clothes + acc',5,'clothes-acc'),
	(81,'computers',5,'computers'),
	(82,'electronics',5,'electronics'),
	(83,'farm + garden',5,'farm-garden'),
	(84,'free',5,'free'),
	(85,'furniture',5,'furniture'),
	(86,'garage sale',5,'garage-sale'),
	(87,'general',5,'general'),
	(88,'heavy equip',5,'heavy-equip'),
	(89,'household',5,'household'),
	(90,'jewelry',5,'jewelry'),
	(91,'materials',5,'materials'),
	(92,'music instr',5,'music-instr'),
	(93,'photo + video',5,'photo-video'),
	(94,'rvs + camp',5,'rvs-comp'),
	(95,'sporting',5,'sporting'),
	(96,'tickets',5,'tickets'),
	(97,'tools',5,'tools'),
	(98,'toys + games',5,'toys-games'),
	(99,'trailers',5,'trailers'),
	(100,'video gaming',5,'video-gaming'),
	(101,'wanted',5,'wanted'),
	(102,'automotive',4,'automotive'),
	(103,'beauty',4,'beauty'),
	(104,'cell / movbile',4,'cell-mobile'),
	(105,'computer',4,'computer'),
	(106,'creative',4,'creative'),
	(107,'cycle',4,'cycle'),
	(108,'event',4,'event'),
	(109,'farm + garden',4,'farm-garden'),
	(110,'financial',4,'financial'),
	(111,'household',4,'household'),
	(112,'labor / move',4,'labor-move'),
	(113,'legal',4,'legal-services'),
	(114,'lessons',4,'lessons'),
	(115,'marine',4,'marine'),
	(116,'pet',4,'pet'),
	(117,'real estate',4,'real-estate-services'),
	(118,'skilled trade',4,'skilled-trade-services'),
	(119,'sm biz ads',4,'sm-biz-ads'),
	(120,'travel / vac',4,'travel-vacation'),
	(121,'write / ed / tran',4,'write-ed-tran'),
	(122,'personals',NULL,'personals'),
	(123,'gigs',NULL,'gigs'),
	(124,'strictly platonic',122,'strictly-platonic'),
	(125,'women seeking women',122,'women-seeking-women'),
	(126,'women seeking men',122,'women-seeking-men'),
	(127,'men seeking women',122,'men-seeking-women'),
	(128,'men seeking men',122,'men-seeking-men'),
	(129,'misc romance',122,'misc-romance'),
	(130,'casual encounters',122,'casual-encounters'),
	(131,'computer',123,'computer-gigs'),
	(132,'creative',123,'creative-gigs'),
	(133,'crew',123,'crew-gigs'),
	(134,'domestic',123,'domestic-gigs'),
	(135,'event',123,'event-gigs'),
	(136,'labor',123,'labor'),
	(137,'talent',123,'talent'),
	(138,'writing',123,'writing'),
	(139,'resumes',NULL,'resumes');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
