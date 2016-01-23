# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.27)
# Database: shineisp2
# Generation Time: 2016-01-23 11:27:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table base_country
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_country`;

CREATE TABLE `base_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `base_country` WRITE;
/*!40000 ALTER TABLE `base_country` DISABLE KEYS */;

INSERT INTO `base_country` (`id`, `name`, `code`, `visible`)
VALUES
  (1,'Afghanistan','AF',1),
  (2,'Albania','AL',1),
  (3,'Algeria','DZ',1),
  (4,'Andorra','AD',1),
  (5,'Angola','AO',1),
  (6,'Antigua and Barbuda','AG',1),
  (7,'Argentina','AR',1),
  (8,'Armenia','AM',1),
  (9,'Australia','AU',1),
  (10,'Austria','AT',1),
  (11,'Azerbaijan','AZ',1),
  (12,'Bahamas, The','BS',1),
  (13,'Bahrain','BH',1),
  (14,'Bangladesh','BD',1),
  (15,'Barbados','BB',1),
  (16,'Belarus','BY',1),
  (17,'Belgium','BE',1),
  (18,'Belize','BZ',1),
  (19,'Benin','BJ',1),
  (20,'Bhutan','BT',1),
  (21,'Bolivia','BO',1),
  (22,'Bosnia and Herzegovina','BA',1),
  (23,'Botswana','BW',1),
  (24,'Brazil','BR',1),
  (25,'Brunei','BN',1),
  (26,'Bulgaria','BG',1),
  (27,'Burkina Faso','BF',1),
  (28,'Burundi','BI',1),
  (29,'Cambodia','KH',1),
  (30,'Cameroon','CM',1),
  (31,'Canada','CA',1),
  (32,'Cape Verde','CV',1),
  (33,'Central African Republic','CF',1),
  (34,'Chad','TD',1),
  (35,'Chile','CL',1),
  (36,'China, People\'s Republic of','CN',1),
  (37,'Colombia','CO',1),
  (38,'Comoros','KM',1),
  (39,'Congo, Democratic Republic of the (Congo ﾖ Kinshasa)','CD',1),
  (40,'Congo, Republic of the (Congo ﾖ Brazzaville)','CG',1),
  (41,'Costa Rica','CR',1),
  (42,'Cote d\'Ivoire (Ivory Coast)','CI',1),
  (43,'Croatia','HR',1),
  (44,'Cuba','CU',1),
  (45,'Cyprus','CY',1),
  (46,'Czech Republic','CZ',1),
  (47,'Denmark','DK',1),
  (48,'Djibouti','DJ',1),
  (49,'Dominica','DM',1),
  (50,'Dominican Republic','DO',1),
  (51,'Ecuador','EC',1),
  (52,'Egypt','EG',1),
  (53,'El Salvador','SV',1),
  (54,'Equatorial Guinea','GQ',1),
  (55,'Eritrea','ER',1),
  (56,'Estonia','EE',1),
  (57,'Ethiopia','ET',1),
  (58,'Fiji','FJ',1),
  (59,'Finland','FI',1),
  (60,'France','FR',1),
  (61,'Gabon','GA',1),
  (62,'Gambia, The','GM',1),
  (63,'Georgia','GE',1),
  (64,'Germany','DE',1),
  (65,'Ghana','GH',1),
  (66,'Greece','GR',1),
  (67,'Grenada','GD',1),
  (68,'Guatemala','GT',1),
  (69,'Guinea','GN',1),
  (70,'Guinea-Bissau','GW',1),
  (71,'Guyana','GY',1),
  (72,'Haiti','HT',1),
  (73,'Honduras','HN',1),
  (74,'Hungary','HU',1),
  (75,'Iceland','IS',1),
  (76,'India','IN',1),
  (77,'Indonesia','ID',1),
  (78,'Iran','IR',1),
  (79,'Iraq','IQ',1),
  (80,'Ireland','IE',1),
  (81,'Israel','IL',1),
  (82,'Italy','IT',1),
  (83,'Jamaica','JM',1),
  (84,'Japan','JP',1),
  (85,'Jordan','JO',1),
  (86,'Kazakhstan','KZ',1),
  (87,'Kenya','KE',1),
  (88,'Kiribati','KI',1),
  (89,'Korea, Democratic People\'s Republic of (North Korea)','KP',1),
  (90,'Korea, Republic of  (South Korea)','KR',1),
  (91,'Kuwait','KW',1),
  (92,'Kyrgyzstan','KG',1),
  (93,'Laos','LA',1),
  (94,'Latvia','LV',1),
  (95,'Lebanon','LB',1),
  (96,'Lesotho','LS',1),
  (97,'Liberia','LR',1),
  (98,'Libya','LY',1),
  (99,'Liechtenstein','LI',1),
  (100,'Lithuania','LT',1),
  (101,'Luxembourg','LU',1),
  (102,'Macedonia','MK',1),
  (103,'Madagascar','MG',1),
  (104,'Malawi','MW',1),
  (105,'Malaysia','MY',1),
  (106,'Maldives','MV',1),
  (107,'Mali','ML',1),
  (108,'Malta','MT',1),
  (109,'Marshall Islands','MH',1),
  (110,'Mauritania','MR',1),
  (111,'Mauritius','MU',1),
  (112,'Mexico','MX',1),
  (113,'Micronesia','FM',1),
  (114,'Moldova','MD',1),
  (115,'Monaco','MC',1),
  (116,'Mongolia','MN',1),
  (117,'Montenegro','ME',1),
  (118,'Morocco','MA',1),
  (119,'Mozambique','MZ',1),
  (120,'Myanmar (Burma)','MM',1),
  (121,'Namibia','NA',1),
  (122,'Nauru','NR',1),
  (123,'Nepal','NP',1),
  (124,'Netherlands','NL',1),
  (125,'New Zealand','NZ',1),
  (126,'Nicaragua','NI',1),
  (127,'Niger','NE',1),
  (128,'Nigeria','NG',1),
  (129,'Norway','NO',1),
  (130,'Oman','OM',1),
  (131,'Pakistan','PK',1),
  (132,'Palau','PW',1),
  (133,'Panama','PA',1),
  (134,'Papua New Guinea','PG',1),
  (135,'Paraguay','PY',1),
  (136,'Peru','PE',1),
  (137,'Philippines','PH',1),
  (138,'Poland','PL',1),
  (139,'Portugal','PT',1),
  (140,'Qatar','QA',1),
  (141,'Romania','RO',1),
  (142,'Russia','RU',1),
  (143,'Rwanda','RW',1),
  (144,'Saint Kitts and Nevis','KN',1),
  (145,'Saint Lucia','LC',1),
  (146,'Saint Vincent and the Grenadines','VC',1),
  (147,'Samoa','WS',1),
  (148,'San Marino','SM',1),
  (149,'Sao Tome and Principe','ST',1),
  (150,'Saudi Arabia','SA',1),
  (151,'Senegal','SN',1),
  (152,'Serbia','RS',1),
  (153,'Seychelles','SC',1),
  (154,'Sierra Leone','SL',1),
  (155,'Singapore','SG',1),
  (156,'Slovakia','SK',1),
  (157,'Slovenia','SI',1),
  (158,'Solomon Islands','SB',1),
  (159,'Somalia','SO',1),
  (160,'South Africa','ZA',1),
  (161,'Spain','ES',1),
  (162,'Sri Lanka','LK',1),
  (163,'Sudan','SD',1),
  (164,'Suriname','SR',1),
  (165,'Swaziland','SZ',1),
  (166,'Sweden','SE',1),
  (167,'Switzerland','CH',1),
  (168,'Syria','SY',1),
  (169,'Tajikistan','TJ',1),
  (170,'Tanzania','TZ',1),
  (171,'Thailand','TH',1),
  (172,'Timor-Leste (East Timor)','TL',1),
  (173,'Togo','TG',1),
  (174,'Tonga','TO',1),
  (175,'Trinidad and Tobago','TT',1),
  (176,'Tunisia','TN',1),
  (177,'Turkey','TR',1),
  (178,'Turkmenistan','TM',1),
  (179,'Tuvalu','TV',1),
  (180,'Uganda','UG',1),
  (181,'Ukraine','UA',1),
  (182,'United Arab Emirates','AE',1),
  (183,'United Kingdom','GB',1),
  (184,'United States','US',1),
  (185,'Uruguay','UY',1),
  (186,'Uzbekistan','UZ',1),
  (187,'Vanuatu','VU',1),
  (188,'Vatican City','VA',1),
  (189,'Venezuela','VE',1),
  (190,'Vietnam','VN',1),
  (191,'Yemen','YE',1),
  (192,'Zambia','ZM',1),
  (193,'Zimbabwe','ZW',1),
  (194,'Abkhazia','GE',1),
  (195,'China, Republic of (Taiwan)','TW',1),
  (196,'Nagorno-Karabakh','AZ',1),
  (197,'Northern Cyprus','CY',1),
  (198,'Pridnestrovie (Transnistria)','MD',1),
  (199,'Somaliland','SO',1),
  (200,'South Ossetia','GE',1),
  (201,'Ashmore and Cartier Islands','AU',1),
  (202,'Christmas Island','CX',1),
  (203,'Cocos (Keeling) Islands','CC',1),
  (204,'Coral Sea Islands','AU',1),
  (205,'Heard Island and McDonald Islands','HM',1),
  (206,'Norfolk Island','NF',1),
  (207,'New Caledonia','NC',1),
  (208,'French Polynesia','PF',1),
  (209,'Mayotte','YT',1),
  (210,'Saint Barthelemy','GP',1),
  (211,'Saint Martin','GP',1),
  (212,'Saint Pierre and Miquelon','PM',1),
  (213,'Wallis and Futuna','WF',1),
  (214,'French Southern and Antarctic Lands','TF',1),
  (215,'Clipperton Island','PF',1),
  (216,'Bouvet Island','BV',1),
  (217,'Cook Islands','CK',1),
  (218,'Niue','NU',1),
  (219,'Tokelau','TK',1),
  (220,'Guernsey','GG',1),
  (221,'Isle of Man','IM',1),
  (222,'Jersey','JE',1),
  (223,'Anguilla','AI',1),
  (224,'Bermuda','BM',1),
  (225,'British Indian Ocean Territory','IO',1),
  (226,'British Sovereign Base Areas','',1),
  (227,'British Virgin Islands','VG',1),
  (228,'Cayman Islands','KY',1),
  (229,'Falkland Islands (Islas Malvinas)','FK',1),
  (230,'Gibraltar','GI',1),
  (231,'Montserrat','MS',1),
  (232,'Pitcairn Islands','PN',1),
  (233,'Saint Helena','SH',1),
  (234,'South Georgia and the South Sandwich Islands','GS',1),
  (235,'Turks and Caicos Islands','TC',1),
  (236,'Northern Mariana Islands','MP',1),
  (237,'Puerto Rico','PR',1),
  (238,'American Samoa','AS',1),
  (239,'Baker Island','UM',1),
  (240,'Guam','GU',1),
  (241,'Howland Island','UM',1),
  (242,'Jarvis Island','UM',1),
  (243,'Johnston Atoll','UM',1),
  (244,'Kingman Reef','UM',1),
  (245,'Midway Islands','UM',1),
  (246,'Navassa Island','UM',1),
  (247,'Palmyra Atoll','UM',1),
  (248,'U.S. Virgin Islands','VI',1),
  (249,'Wake Island','UM',1),
  (250,'Hong Kong','HK',1),
  (251,'Macau','MO',1),
  (252,'Faroe Islands','FO',1),
  (253,'Greenland','GL',1),
  (254,'French Guiana','GF',1),
  (255,'Guadeloupe','GP',1),
  (256,'Martinique','MQ',1),
  (257,'Reunion','RE',1),
  (258,'Aland','AX',1),
  (259,'Aruba','AW',1),
  (260,'Netherlands Antilles','AN',1),
  (261,'Svalbard','SJ',1),
  (262,'Ascension','AC',1),
  (263,'Tristan da Cunha','TA',1),
  (264,'Antarctica','AQ',1),
  (265,'Kosovo','CS',1),
  (266,'Palestinian Territories (Gaza Strip and West Bank)','PS',1),
  (267,'Western Sahara','EH',1),
  (268,'Australian Antarctic Territory','AQ',1),
  (269,'Ross Dependency','AQ',1),
  (270,'Peter I Island','AQ',1),
  (271,'Queen Maud Land','AQ',1),
  (272,'British Antarctic Territory','AQ',1);

/*!40000 ALTER TABLE `base_country` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_languages`;

CREATE TABLE `base_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(250) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `code` varchar(2) NOT NULL,
  `base` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `base_languages` WRITE;
/*!40000 ALTER TABLE `base_languages` DISABLE KEYS */;

INSERT INTO `base_languages` (`id`, `language`, `locale`, `code`, `base`, `active`)
VALUES
  (1,'English','en_US','en',1,1),
  (2,'Italiano','it_IT','it',0,1),
  (3,'French','fr_FR','fr',0,1),
  (4,'Spanish','es_ES','es',0,1),
  (5,'Dutch','nl_NL','nl',0,1),
  (6,'German','de_DE','de',0,1),
  (7,'Serbian','sr_CS','rs',0,1);

/*!40000 ALTER TABLE `base_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_province
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_province`;

CREATE TABLE `base_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id_idx` (`country_id`),
  KEY `region_id_idx` (`region_id`),
  CONSTRAINT `base_province_country_id_countries_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE CASCADE,
  CONSTRAINT `base_province_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `base_region` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `base_province` WRITE;
/*!40000 ALTER TABLE `base_province` DISABLE KEYS */;

INSERT INTO `base_province` (`id`, `region_id`, `country_id`, `name`, `code`)
VALUES
  (1,19,82,'Agrigento','AG'),
  (2,2,82,'Alessandria','AL'),
  (3,10,82,'Ancona','AN'),
  (4,1,82,'Aosta','AO'),
  (5,9,82,'Arezzo','AR'),
  (6,10,82,'Ascoli Piceno','AP'),
  (7,2,82,'Asti','AT'),
  (8,16,82,'Avellino','AV'),
  (9,15,82,'Bari','BA'),
  (10,5,82,'Belluno','BL'),
  (11,16,82,'Benevento','BN'),
  (12,3,82,'Bergamo','BG'),
  (13,2,82,'Biella','BI'),
  (14,7,82,'Bologna','BO'),
  (15,4,82,'Bolzano - Bozen','BZ'),
  (16,3,82,'Brescia','BS'),
  (17,15,82,'Brindisi','BR'),
  (18,20,82,'Cagliari','CA'),
  (19,19,82,'Caltanissetta','CL'),
  (20,13,82,'Campobasso','CB'),
  (21,16,82,'Caserta','CE'),
  (22,19,82,'Catania','CT'),
  (23,18,82,'Catanzaro','CZ'),
  (24,12,82,'Chieti','CH'),
  (25,3,82,'Como','CO'),
  (26,18,82,'Cosenza','CS'),
  (27,3,82,'Cremona','CR'),
  (28,18,82,'Crotone','KR'),
  (29,2,82,'Cuneo','CN'),
  (30,19,82,'Enna','EN'),
  (31,7,82,'Ferrara','FE'),
  (32,9,82,'Firenze','FI'),
  (33,15,82,'Foggia','FG'),
  (34,7,82,'Forlì-Cesena','FC'),
  (35,14,82,'Frosinone','FR'),
  (36,8,82,'Genova','GE'),
  (37,6,82,'Gorizia','GO'),
  (38,9,82,'Grosseto','GR'),
  (39,8,82,'Imperia','IM'),
  (40,13,82,'Isernia','IS'),
  (41,12,82,'L\'Aquila','AQ'),
  (42,8,82,'La Spezia','SP'),
  (43,14,82,'Latina','LT'),
  (44,15,82,'Lecce','LE'),
  (45,3,82,'Lecco','LC'),
  (46,9,82,'Livorno','LI'),
  (47,3,82,'Lodi','LO'),
  (48,9,82,'Lucca','LU'),
  (49,10,82,'Macerata','MC'),
  (50,3,82,'Mantova','MN'),
  (51,9,82,'Massa - Carrara','MS'),
  (52,17,82,'Matera','MT'),
  (53,19,82,'Messina','ME'),
  (54,3,82,'Milano','MI'),
  (55,7,82,'Modena','MO'),
  (56,16,82,'Napoli','NA'),
  (57,2,82,'Novara','NO'),
  (58,20,82,'Nuoro','NU'),
  (59,20,82,'Oristano','OR'),
  (60,5,82,'Padova','PD'),
  (61,19,82,'Palermo','PA'),
  (62,7,82,'Parma','PR'),
  (63,3,82,'Pavia','PV'),
  (64,11,82,'Perugia','PG'),
  (65,10,82,'Pesaro e Urbino','PU'),
  (66,12,82,'Pescara','PE'),
  (67,7,82,'Piacenza','PC'),
  (68,9,82,'Pisa','PI'),
  (69,9,82,'Pistoia','PT'),
  (70,6,82,'Pordenone','PN'),
  (71,17,82,'Potenza','PZ'),
  (72,9,82,'Prato','PO'),
  (73,19,82,'Ragusa','RG'),
  (74,7,82,'Ravenna','RA'),
  (75,18,82,'Reggio Calabria','RC'),
  (76,7,82,'Reggio Emilia','RE'),
  (77,14,82,'Rieti','RI'),
  (78,7,82,'Rimini','RN'),
  (79,14,82,'Roma','RM'),
  (80,5,82,'Rovigo','RO'),
  (81,16,82,'Salerno','SA'),
  (82,20,82,'Sassari','SS'),
  (83,8,82,'Savona','SV'),
  (84,9,82,'Siena','SI'),
  (85,19,82,'Siracusa','SR'),
  (86,3,82,'Sondrio','SO'),
  (87,15,82,'Taranto','TA'),
  (88,12,82,'Teramo','TE'),
  (89,11,82,'Terni','TR'),
  (90,2,82,'Torino','TO'),
  (91,19,82,'Trapani','TP'),
  (92,4,82,'Trento','TN'),
  (93,5,82,'Treviso','TV'),
  (94,6,82,'Trieste','TS'),
  (95,6,82,'Udine','UD'),
  (96,3,82,'Varese','VA'),
  (97,5,82,'Venezia','VE'),
  (98,2,82,'Verbano - Cusio','VB'),
  (99,2,82,'Vercelli','VC'),
  (100,5,82,'Verona','VR'),
  (101,18,82,'Vibo - Valentia','VV'),
  (102,5,82,'Vicenza','VI'),
  (103,14,82,'Viterbo','VT'),
  (104,20,82,'Olbia-Tempio','OT'),
  (105,20,82,'Carbonia-Iglesias','CI'),
  (106,20,82,'Medio Campidano','VS'),
  (107,3,82,'Monza e della Brianza','MB');

/*!40000 ALTER TABLE `base_province` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_region
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_region`;

CREATE TABLE `base_region` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `base_region_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `base_country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `base_region` WRITE;
/*!40000 ALTER TABLE `base_region` DISABLE KEYS */;

INSERT INTO `base_region` (`id`, `country_id`, `name`)
VALUES
  (1,82,'Valle d\'Aosta'),
  (2,82,'Piemonte'),
  (3,82,'Lombardia'),
  (4,82,'Trentino-Alto Adige'),
  (5,82,'Veneto'),
  (6,82,'Friuli-Venezia Giulia'),
  (7,82,'Emilia-Romagna'),
  (8,82,'Liguria'),
  (9,82,'Toscana'),
  (10,82,'Marche'),
  (11,82,'Umbria'),
  (12,82,'Abruzzo'),
  (13,82,'Molise'),
  (14,82,'Lazio'),
  (15,82,'Puglia'),
  (16,82,'Campania'),
  (17,82,'Basilicata'),
  (18,82,'Calabria'),
  (19,82,'Sicilia'),
  (20,82,'Sardegna'),
  (21,82,'San Marino');

/*!40000 ALTER TABLE `base_region` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_settings`;

CREATE TABLE `base_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `base_settings` WRITE;
/*!40000 ALTER TABLE `base_settings` DISABLE KEYS */;

INSERT INTO `base_settings` (`id`, `module`, `parameter`, `value`)
VALUES
  (9,'Product','recordsperpage','5'),
  (10,'Product','attributes','[\"1\",\"12\",\"2\"]'),
  (11,'Cms','defaultlayout','1column'),
  (12,'Cms','postperpage','5'),
  (13,'Cms','recordsperpage','10'),
  (36,'Base','active','1'),
  (37,'Base','iscompressed','0'),
  (38,'Base','name','ShineISP'),
  (39,'Base','email','info@shinesoftware.it'),
  (40,'Base','slogan',''),
  (41,'Base','metatitle',''),
  (42,'Base','metadescription',''),
  (43,'Base','metakeywords',''),
  (44,'Base','headscript',''),
  (45,'Base','bodyscript',''),
  (46,'Base','ganalytics',''),
  (47,'Customer','recordsperpage','2'),
  (48,'Customer','attachments','/documents/customers/');

/*!40000 ALTER TABLE `base_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_status`;

CREATE TABLE `base_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `section` varchar(200) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '1',
  `code` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `base_status` WRITE;
/*!40000 ALTER TABLE `base_status` DISABLE KEYS */;

INSERT INTO `base_status` (`id`, `status`, `section`, `public`, `code`)
VALUES
  (1,'Deleted','generic',1,'deleted'),
  (2,'Suspended','generic',1,'suspended'),
  (3,'Active','generic',1,'active'),
  (4,'Active','domains',1,'active'),
  (5,'Expired','domains',1,'expired'),
  (6,'Processing','domains',1,'processing'),
  (7,'Redenption period','epp_domains',1,'redemption'),
  (8,'Registrar hold','epp_domains',1,'hold'),
  (9,'To be Paid','orders',1,'tobepaid'),
  (10,'Expired','orders',1,'expired'),
  (12,'Active','customers',1,'active'),
  (13,'Suspended','customers',1,'suspended'),
  (14,'Deleted','customers',1,'deleted'),
  (15,'Active','servers',1,'active'),
  (16,'Suspended','servers',1,'suspended'),
  (17,'Deleted','servers',1,'deleted'),
  (18,'Pending','orders',1,'pending'),
  (19,'Processing','orders',1,'processing'),
  (20,'Deleted','orders',1,'deleted'),
  (21,'Complete','orders',1,'complete'),
  (22,'Expecting a reply','tickets',1,'expectingreply'),
  (23,'Processing','tickets',1,'processing'),
  (24,'Solved','tickets',1,'solved'),
  (25,'Closed','tickets',1,'closed'),
  (26,'Active','domains_tasks',1,'active'),
  (27,'Processing','domains_tasks',1,'processing'),
  (28,'Deleted','domains',1,'deleted'),
  (29,'Suspended','domains',1,'suspended'),
  (30,'Closed','orders',1,'closed'),
  (31,'Complete','domains_tasks',1,'complete'),
  (32,'Future Release','tickets',1,'future-release'),
  (33,'Changed','orders',1,'changed'),
  (34,'Paid','orders',1,'paid');

/*!40000 ALTER TABLE `base_status` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;