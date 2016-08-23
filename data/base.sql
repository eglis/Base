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

INSERT INTO `base_country` (`id`, `name`, `code`, `visible`) VALUES
  (1, 'Andorra', 'AD', 1),
  (2, 'United Arab Emirates', 'AE', 1),
  (3, 'Afghanistan', 'AF', 1),
  (4, 'Antigua & Barbuda', 'AG', 1),
  (5, 'Anguilla', 'AI', 1),
  (6, 'Albania', 'AL', 1),
  (7, 'Armenia', 'AM', 1),
  (8, 'Netherlands Antilles', 'AN', 1),
  (9, 'Angola', 'AO', 1),
  (10, 'Antarctica', 'AQ', 1),
  (11, 'Argentina', 'AR', 1),
  (12, 'American Samoa', 'AS', 1),
  (13, 'Austria', 'AT', 1),
  (14, 'Australia', 'AU', 1),
  (15, 'Aruba', 'AW', 1),
  (16, 'Azerbaijan', 'AZ', 1),
  (17, 'Bosnia and Herzegovina', 'BA', 1),
  (18, 'Barbados', 'BB', 1),
  (19, 'Bangladesh', 'BD', 1),
  (20, 'Belgium', 'BE', 1),
  (21, 'Burkina Faso', 'BF', 1),
  (22, 'Bulgaria', 'BG', 1),
  (23, 'Bahrain', 'BH', 1),
  (24, 'Burundi', 'BI', 1),
  (25, 'Benin', 'BJ', 1),
  (26, 'Bermuda', 'BM', 1),
  (27, 'Brunei Darussalam', 'BN', 1),
  (28, 'Bolivia', 'BO', 1),
  (29, 'Brazil', 'BR', 1),
  (30, 'Bahama', 'BS', 1),
  (31, 'Bhutan', 'BT', 1),
  (32, 'Burma (no longer exists)', 'BU', 1),
  (33, 'Bouvet Island', 'BV', 1),
  (34, 'Botswana', 'BW', 1),
  (35, 'Belarus', 'BY', 1),
  (36, 'Belize', 'BZ', 1),
  (37, 'Canada', 'CA', 1),
  (38, 'Cocos (Keeling) Islands', 'CC', 1),
  (39, 'Central African Republic', 'CF', 1),
  (40, 'Congo', 'CG', 1),
  (41, 'Switzerland', 'CH', 1),
  (42, 'Côte D\'ivoire (Ivory Coas', 'CI', 1),
  (43, 'Cook Iislands', 'CK', 1),
  (44, 'Chile', 'CL', 1),
  (45, 'Cameroon', 'CM', 1),
  (46, 'China', 'CN', 1),
  (47, 'Colombia', 'CO', 1),
  (48, 'Costa Rica', 'CR', 1),
  (49, 'Czechoslovakia', 'CS', 1),
  (50, 'Cuba', 'CU', 1),
  (51, 'Cape Verde', 'CV', 1),
  (52, 'Christmas Island', 'CX', 1),
  (53, 'Cyprus', 'CY', 1),
  (54, 'Czech Republic', 'CZ', 1),
  (55, 'German Democratic Republic', 'DD', 1),
  (56, 'Germany', 'DE', 1),
  (57, 'Djibouti', 'DJ', 1),
  (58, 'Denmark', 'DK', 1),
  (59, 'Dominica', 'DM', 1),
  (60, 'Dominican Republic', 'DO', 1),
  (61, 'Algeria', 'DZ', 1),
  (62, 'Ecuador', 'EC', 1),
  (63, 'Estonia', 'EE', 1),
  (64, 'Egypt', 'EG', 1),
  (65, 'Western Sahara', 'EH', 1),
  (66, 'Eritrea', 'ER', 1),
  (67, 'Spain', 'ES', 1),
  (68, 'Ethiopia', 'ET', 1),
  (69, 'Finland', 'FI', 1),
  (70, 'Fiji', 'FJ', 1),
  (71, 'Falkland Islands (Malvina)', 'FK', 1),
  (72, 'Micronesia', 'FM', 1),
  (73, 'Faroe Islands', 'FO', 1),
  (74, 'France', 'FR', 1),
  (75, 'France, Metropolitan', 'FX', 1),
  (76, 'Gabon', 'GA', 1),
  (77, 'United Kingdom (Great Britain)', 'GB', 1),
  (78, 'Grenada', 'GD', 1),
  (79, 'Georgia', 'GE', 1),
  (80, 'French Guiana', 'GF', 1),
  (81, 'Ghana', 'GH', 1),
  (82, 'Gibraltar', 'GI', 1),
  (83, 'Greenland', 'GL', 1),
  (84, 'Gambia', 'GM', 1),
  (85, 'Guinea', 'GN', 1),
  (86, 'Guadeloupe', 'GP', 1),
  (87, 'Equatorial Guinea', 'GQ', 1),
  (88, 'Greece', 'GR', 1),
  (89, 'South Georgia', 'GS', 1),
  (90, 'Guatemala', 'GT', 1),
  (91, 'Guam', 'GU', 1),
  (92, 'Guinea-Bissau', 'GW', 1),
  (93, 'Guyana', 'GY', 1),
  (94, 'Hong Kong', 'HK', 1),
  (95, 'Heard & McDonald Islands', 'HM', 1),
  (96, 'Honduras', 'HN', 1),
  (97, 'Croatia', 'HR', 1),
  (98, 'Haiti', 'HT', 1),
  (99, 'Hungary', 'HU', 1),
  (100, 'Indonesia', 'ID', 1),
  (101, 'Ireland', 'IE', 1),
  (102, 'Israel', 'IL', 1),
  (103, 'India', 'IN', 1),
  (104, 'British Indian Ocean Territories', 'IO', 1),
  (105, 'Iraq', 'IQ', 1),
  (106, 'Islamic Republic of Iran', 'IR', 1),
  (107, 'Iceland', 'IS', 1),
  (108, 'Italy', 'IT', 1),
  (109, 'Jamaica', 'JM', 1),
  (110, 'Jordan', 'JO', 1),
  (111, 'Japan', 'JP', 1),
  (112, 'Kenya', 'KE', 1),
  (113, 'Kyrgyzstan', 'KG', 1),
  (114, 'Cambodia', 'KH', 1),
  (115, 'Kiribati', 'KI', 1),
  (116, 'Comoros', 'KM', 1),
  (117, 'St. Kitts and Nevis', 'KN', 1),
  (118, 'Korea, Democratic People', 'KP', 1),
  (119, 'Korea, Republic of', 'KR', 1),
  (120, 'Kuwait', 'KW', 1),
  (121, 'Cayman Islands', 'KY', 1),
  (122, 'Kazakhstan', 'KZ', 1),
  (123, 'Lao People\'s Democratic Republic', 'LA', 1),
  (124, 'Lebanon', 'LB', 1),
  (125, 'Saint Lucia', 'LC', 1),
  (126, 'Liechtenstein', 'LI', 1),
  (127, 'Sri Lanka', 'LK', 1),
  (128, 'Liberia', 'LR', 1),
  (129, 'Lesotho', 'LS', 1),
  (130, 'Lithuania', 'LT', 1),
  (131, 'Luxembourg', 'LU', 1),
  (132, 'Latvia', 'LV', 1),
  (133, 'Libyan Arab Jamahiriya', 'LY', 1),
  (134, 'Morocco', 'MA', 1),
  (135, 'Monaco', 'MC', 1),
  (136, 'Moldova, Republic of ', 'MD', 1),
  (137, 'Madagascar', 'MG', 1),
  (138, 'Marshall Islands', 'MH', 1),
  (139, 'Mali', 'ML', 1),
  (140, 'Mongolia', 'MN', 1),
  (141, 'Myanmar', 'MM', 1),
  (142, 'Macau', 'MO', 1),
  (143, 'Northern Mariana Islands', 'MP', 1),
  (144, 'Martinique', 'MQ', 1),
  (145, 'Mauritania', 'MR', 1),
  (146, 'Monserrat', 'MS', 1),
  (147, 'Malta', 'MT', 1),
  (148, 'Mauritius', 'MU', 1),
  (149, 'Maldives', 'MV', 1),
  (150, 'Malawi', 'MW', 1),
  (151, 'Mexico', 'MX', 1),
  (152, 'Malaysia', 'MY', 1),
  (153, 'Mozambique', 'MZ', 1),
  (154, 'Namibia', 'NA', 1),
  (155, 'New Caledonia', 'NC', 1),
  (156, 'Niger', 'NE', 1),
  (157, 'Norfolk Island', 'NF', 1),
  (158, 'Nigeria', 'NG', 1),
  (159, 'Nicaragua', 'NI', 1),
  (160, 'Netherlands', 'NL', 1),
  (161, 'Norway', 'NO', 1),
  (162, 'Nepal', 'NP', 1),
  (163, 'Nauru', 'NR', 1),
  (164, 'Neutral Zone', 'NT', 1),
  (165, 'Niue', 'NU', 1),
  (166, 'New Zealand', 'NZ', 1),
  (167, 'Oman', 'OM', 1),
  (168, 'Panama', 'PA', 1),
  (169, 'Peru', 'PE', 1),
  (170, 'French Polynesia', 'PF', 1),
  (171, 'Papua New Guinea', 'PG', 1),
  (172, 'Philippines', 'PH', 1),
  (173, 'Pakistan', 'PK', 1),
  (174, 'Poland', 'PL', 1),
  (175, 'St. Pierre & Miquelon', 'PM', 1),
  (176, 'Pitcairn', 'PN', 1),
  (177, 'Puerto Rico', 'PR', 1),
  (178, 'Portugal', 'PT', 1),
  (179, 'Palau', 'PW', 1),
  (180, 'Paraguay', 'PY', 1),
  (181, 'Qatar', 'QA', 1),
  (182, 'Réunion', 'RE', 1),
  (183, 'Romania', 'RO', 1),
  (184, 'Russian Federation', 'RU', 1),
  (185, 'Rwanda', 'RW', 1),
  (186, 'Saudi Arabia', 'SA', 1),
  (187, 'Solomon Islands', 'SB', 1),
  (188, 'Seychelles', 'SC', 1),
  (189, 'Sudan', 'SD', 1),
  (190, 'Sweden', 'SE', 1),
  (191, 'Singapore', 'SG', 1),
  (192, 'St. Helena', 'SH', 1),
  (193, 'Slovenia', 'SI', 1),
  (194, 'Svalbard & Jan Mayen Island', 'SJ', 1),
  (195, 'Slovakia', 'SK', 1),
  (196, 'Sierra Leone', 'SL', 1),
  (197, 'San Marino', 'SM', 1),
  (198, 'Senegal', 'SN', 1),
  (199, 'Somalia', 'SO', 1),
  (200, 'Suriname', 'SR', 1),
  (201, 'Sao Tome & Principe', 'ST', 1),
  (202, 'Union of Soviet Socialist', 'SU', 1),
  (203, 'El Salvador', 'SV', 1),
  (204, 'Syrian Arab Republic', 'SY', 1),
  (205, 'Swaziland', 'SZ', 1),
  (206, 'Turks & Caicos Islands', 'TC', 1),
  (207, 'Chad', 'TD', 1),
  (208, 'French Southern Territories', 'TF', 1),
  (209, 'Togo', 'TG', 1),
  (210, 'Thailand', 'TH', 1),
  (211, 'Tajikistan', 'TJ', 1),
  (212, 'Tokelau', 'TK', 1),
  (213, 'Turkmenistan', 'TM', 1),
  (214, 'Tunisia', 'TN', 1),
  (215, 'Tonga', 'TO', 1),
  (216, 'East Timor', 'TP', 1),
  (217, 'Turkey', 'TR', 1),
  (218, 'Trinidad & Tobago', 'TT', 1),
  (219, 'Tuvalu', 'TV', 1),
  (220, 'Taiwan, Province of China', 'TW', 1),
  (221, 'Tanzania, United Republic', 'TZ', 1),
  (222, 'Ukraine', 'UA', 1),
  (223, 'Uganda', 'UG', 1),
  (224, 'United States Minor Outly', 'UM', 1),
  (225, 'United States of America', 'US', 1),
  (226, 'Uruguay', 'UY', 1),
  (227, 'Uzbekistan', 'UZ', 1),
  (228, 'Vatican City State (Holy see)', 'VA', 1),
  (229, 'St. Vincent & the Grenadi', 'VC', 1),
  (230, 'Venezuela', 'VE', 1),
  (231, 'British Virgin Islands', 'VG', 1),
  (232, 'United States Virgin Isla', 'VI', 1),
  (233, 'Viet Nam', 'VN', 1),
  (234, 'Vanuatu', 'VU', 1),
  (235, 'Wallis & Futuna Islands', 'WF', 1),
  (236, 'Samoa', 'WS', 1),
  (237, 'Democratic Yemen', 'YD', 1),
  (238, 'Yemen', 'YE', 1),
  (239, 'Mayotte', 'YT', 1),
  (240, 'Yugoslavia', 'YU', 1),
  (241, 'South Africa', 'ZA', 1),
  (242, 'Zambia', 'ZM', 1),
  (243, 'Zaire', 'ZR', 1),
  (244, 'Zimbabwe', 'ZW', 1),
  (245, 'Unknown or unspecified country', 'ZZ', 1),
  (246, 'Palestine', 'PS', 1);


/*!40000 ALTER TABLE `base_country` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_languages
# ------------------------------------------------------------


DROP TABLE IF EXISTS `base_languages`;
CREATE TABLE `base_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(250) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `code` varchar(2) NOT NULL,
  `base` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `showonsite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `base_languages`
--

INSERT INTO `base_languages` (`id`, `language`, `locale`, `code`, `base`, `active`, `showonsite`) VALUES
(1, 'Afrikaans', 'af_ZA', 'af', 0, 0, 0),
(2, 'Albanian', 'sq_AL', 'sq', 0, 0, 0),
(3, 'Arabic', 'ar_SA', 'ar', 0, 0, 0),
(4, 'Armenian', '', 'hy', 0, 0, 0),
(5, 'Basque', '', 'eu', 0, 0, 0),
(6, 'Bengali', '', 'bn', 0, 0, 0),
(7, 'Bulgarian', '', 'bg', 0, 0, 0),
(8, 'Catalan', '', 'ca', 0, 0, 0),
(9, 'Cambodian', '', 'km', 0, 0, 0),
(10, 'Chinese (Mandarin)', '', 'zh', 0, 0, 0),
(11, 'Croatian', '', 'hr', 0, 0, 0),
(12, 'Czech', 'cz_CZ', 'cs', 0, 0, 0),
(13, 'Danish', '', 'da', 0, 0, 0),
(14, 'Dutch', 'nl_NL', 'nl', 0, 0, 0),
(15, 'English', 'en_US', 'en', 1, 1, 1),
(16, 'Estonian', '', 'et', 0, 0, 0),
(17, 'Fiji', '', 'fj', 0, 0, 0),
(18, 'Finnish', '', 'fi', 0, 0, 0),
(19, 'French', '', 'fr', 0, 0, 0),
(20, 'Georgian', '', 'ka', 0, 0, 0),
(21, 'German', '', 'de', 0, 0, 0),
(22, 'Greek', '', 'el', 0, 0, 0),
(23, 'Gujarati', '', 'gu', 0, 0, 0),
(24, 'Hebrew', '', 'he', 0, 0, 0),
(25, 'Hindi', '', 'hi', 0, 0, 0),
(26, 'Hungarian', '', 'hu', 0, 0, 0),
(27, 'Icelandic', '', 'is', 0, 0, 0),
(28, 'Indonesian', '', 'id', 0, 0, 0),
(29, 'Irish', '', 'ga', 0, 0, 0),
(30, 'Italian', 'it_IT', 'it', 0, 1, 1),
(31, 'Japanese', '', 'ja', 0, 0, 0),
(32, 'Javanese', '', 'jw', 0, 0, 0),
(33, 'Korean', '', 'ko', 0, 0, 0),
(34, 'Latin', '', 'la', 0, 0, 0),
(35, 'Latvian', '', 'lv', 0, 0, 0),
(36, 'Lithuanian', '', 'lt', 0, 0, 0),
(37, 'Macedonian', '', 'mk', 0, 0, 0),
(38, 'Malay', '', 'ms', 0, 0, 0),
(39, 'Malayalam', '', 'ml', 0, 0, 0),
(40, 'Maltese', '', 'mt', 0, 0, 0),
(41, 'Maori', '', 'mi', 0, 0, 0),
(42, 'Marathi', '', 'mr', 0, 0, 0),
(43, 'Mongolian', '', 'mn', 0, 0, 0),
(44, 'Nepali', '', 'ne', 0, 0, 0),
(45, 'Norwegian', '', 'no', 0, 0, 0),
(46, 'Persian', '', 'fa', 0, 0, 0),
(47, 'Polish', '', 'pl', 0, 0, 0),
(48, 'Portuguese', '', 'pt', 0, 0, 0),
(49, 'Punjabi', '', 'pa', 0, 0, 0),
(50, 'Quechua', '', 'qu', 0, 0, 0),
(51, 'Romanian', '', 'ro', 0, 0, 0),
(52, 'Russian', '', 'ru', 0, 0, 0),
(53, 'Samoan', '', 'sm', 0, 0, 0),
(54, 'Serbian', '', 'sr', 0, 0, 0),
(55, 'Slovak', '', 'sk', 0, 0, 0),
(56, 'Slovenian', '', 'sl', 0, 0, 0),
(57, 'Spanish', '', 'es', 0, 0, 0),
(58, 'Swahili', '', 'sw', 0, 0, 0),
(59, 'Swedish ', '', 'sv', 0, 0, 0),
(60, 'Tamil', '', 'ta', 0, 0, 0),
(61, 'Tatar', '', 'tt', 0, 0, 0),
(62, 'Telugu', '', 'te', 0, 0, 0),
(63, 'Thai', '', 'th', 0, 0, 0),
(64, 'Tibetan', '', 'bo', 0, 0, 0),
(65, 'Tonga', '', 'to', 0, 0, 0),
(66, 'Turkish', '', 'tr', 0, 0, 0),
(67, 'Ukranian', '', 'uk', 0, 0, 0),
(68, 'Urdu', '', 'ur', 0, 0, 0),
(69, 'Uzbek', '', 'uz', 0, 0, 0),
(70, 'Vietnamese', '', 'vi', 0, 0, 0),
(71, 'Welsh', '', 'cy', 0, 0, 0),
(72, 'Xhosa', '', 'xh', 0, 0, 0),
(73, 'Kurdish', '', 'ku', 0, 0, 0);

ALTER TABLE `base_languages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `base_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;SET FOREIGN_KEY_CHECKS=1;

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
  (38,'Base','name','Shine Software'),
  (39,'Base','email','info@shinesoftware.com'),
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
  (1,'Active','generic',1,'active'),
  (2,'Expired','generic',1,'expired'),
  (3,'Processing','generic',1,'processing'),
  (4,'Deleted','generic',1,'deleted'),
  (5,'Complete','generic',1,'complete'),
  (6,'Suspended','generic',1,'suspended'),
  (7,'Closed','generic',1,'closed');

/*!40000 ALTER TABLE `base_status` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;