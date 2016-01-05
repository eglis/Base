-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Nov 17, 2015 alle 16:59
-- Versione del server: 5.6.27-0ubuntu1
-- Versione PHP: 5.6.11-1ubuntu3.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shineisp`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `base_country`
--

DROP TABLE IF EXISTS `base_country`;
CREATE TABLE IF NOT EXISTS `base_country` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `base_country`
--

INSERT INTO `base_country` (`id`, `name`, `code`, `visible`) VALUES
(1, 'Afghanistan', 'AF', 0),
(2, 'Albania', 'AL', 0),
(3, 'Algeria', 'DZ', 0),
(4, 'Andorra', 'AD', 0),
(5, 'Angola', 'AO', 0),
(6, 'Antigua and Barbuda', 'AG', 0),
(7, 'Argentina', 'AR', 0),
(8, 'Armenia', 'AM', 0),
(9, 'Australia', 'AU', 0),
(10, 'Austria', 'AT', 0),
(11, 'Azerbaijan', 'AZ', 0),
(12, 'Bahamas, The', 'BS', 0),
(13, 'Bahrain', 'BH', 0),
(14, 'Bangladesh', 'BD', 0),
(15, 'Barbados', 'BB', 0),
(16, 'Belarus', 'BY', 0),
(17, 'Belgium', 'BE', 0),
(18, 'Belize', 'BZ', 0),
(19, 'Benin', 'BJ', 0),
(20, 'Bhutan', 'BT', 0),
(21, 'Bolivia', 'BO', 0),
(22, 'Bosnia and Herzegovina', 'BA', 0),
(23, 'Botswana', 'BW', 0),
(24, 'Brazil', 'BR', 0),
(25, 'Brunei', 'BN', 0),
(26, 'Bulgaria', 'BG', 0),
(27, 'Burkina Faso', 'BF', 0),
(28, 'Burundi', 'BI', 0),
(29, 'Cambodia', 'KH', 0),
(30, 'Cameroon', 'CM', 0),
(31, 'Canada', 'CA', 0),
(32, 'Cape Verde', 'CV', 0),
(33, 'Central African Republic', 'CF', 0),
(34, 'Chad', 'TD', 0),
(35, 'Chile', 'CL', 0),
(36, 'China, People''s Republic of', 'CN', 0),
(37, 'Colombia', 'CO', 0),
(38, 'Comoros', 'KM', 0),
(39, 'Congo, Democratic Republic of the (Congo ? Kinshasa)', 'CD', 0),
(40, 'Congo, Republic of the (Congo ? Brazzaville)', 'CG', 0),
(41, 'Costa Rica', 'CR', 0),
(42, 'Cote d''Ivoire (Ivory Coast)', 'CI', 0),
(43, 'Croatia', 'HR', 1),
(44, 'Cuba', 'CU', 0),
(45, 'Cyprus', 'CY', 0),
(46, 'Czech Republic', 'CZ', 0),
(47, 'Denmark', 'DK', 0),
(48, 'Djibouti', 'DJ', 0),
(49, 'Dominica', 'DM', 0),
(50, 'Dominican Republic', 'DO', 0),
(51, 'Ecuador', 'EC', 0),
(52, 'Egypt', 'EG', 0),
(53, 'El Salvador', 'SV', 0),
(54, 'Equatorial Guinea', 'GQ', 0),
(55, 'Eritrea', 'ER', 0),
(56, 'Estonia', 'EE', 0),
(57, 'Ethiopia', 'ET', 0),
(58, 'Fiji', 'FJ', 0),
(59, 'Finland', 'FI', 0),
(60, 'France', 'FR', 0),
(61, 'Gabon', 'GA', 0),
(62, 'Gambia, The', 'GM', 0),
(63, 'Georgia', 'GE', 0),
(64, 'Germany', 'DE', 0),
(65, 'Ghana', 'GH', 0),
(66, 'Greece', 'GR', 0),
(67, 'Grenada', 'GD', 0),
(68, 'Guatemala', 'GT', 0),
(69, 'Guinea', 'GN', 0),
(70, 'Guinea-Bissau', 'GW', 0),
(71, 'Guyana', 'GY', 0),
(72, 'Haiti', 'HT', 0),
(73, 'Honduras', 'HN', 0),
(74, 'Hungary', 'HU', 0),
(75, 'Iceland', 'IS', 0),
(76, 'India', 'IN', 0),
(77, 'Indonesia', 'ID', 0),
(78, 'Iran', 'IR', 0),
(79, 'Iraq', 'IQ', 0),
(80, 'Ireland', 'IE', 0),
(81, 'Israel', 'IL', 0),
(82, 'Italy', 'IT', 1),
(83, 'Jamaica', 'JM', 0),
(84, 'Japan', 'JP', 0),
(85, 'Jordan', 'JO', 0),
(86, 'Kazakhstan', 'KZ', 0),
(87, 'Kenya', 'KE', 0),
(88, 'Kiribati', 'KI', 0),
(89, 'Korea, Democratic People''s Republic of (North Korea)', 'KP', 0),
(90, 'Korea, Republic of  (South Korea)', 'KR', 0),
(91, 'Kuwait', 'KW', 0),
(92, 'Kyrgyzstan', 'KG', 0),
(93, 'Laos', 'LA', 0),
(94, 'Latvia', 'LV', 0),
(95, 'Lebanon', 'LB', 0),
(96, 'Lesotho', 'LS', 0),
(97, 'Liberia', 'LR', 0),
(98, 'Libya', 'LY', 0),
(99, 'Liechtenstein', 'LI', 0),
(100, 'Lithuania', 'LT', 0),
(101, 'Luxembourg', 'LU', 0),
(102, 'Macedonia', 'MK', 0),
(103, 'Madagascar', 'MG', 0),
(104, 'Malawi', 'MW', 0),
(105, 'Malaysia', 'MY', 0),
(106, 'Maldives', 'MV', 0),
(107, 'Mali', 'ML', 0),
(108, 'Malta', 'MT', 0),
(109, 'Marshall Islands', 'MH', 0),
(110, 'Mauritania', 'MR', 0),
(111, 'Mauritius', 'MU', 0),
(112, 'Mexico', 'MX', 0),
(113, 'Micronesia', 'FM', 0),
(114, 'Moldova', 'MD', 0),
(115, 'Monaco', 'MC', 0),
(116, 'Mongolia', 'MN', 0),
(117, 'Montenegro', 'ME', 0),
(118, 'Morocco', 'MA', 0),
(119, 'Mozambique', 'MZ', 0),
(120, 'Myanmar (Burma)', 'MM', 0),
(121, 'Namibia', 'NA', 0),
(122, 'Nauru', 'NR', 0),
(123, 'Nepal', 'NP', 0),
(124, 'Netherlands', 'NL', 0),
(125, 'New Zealand', 'NZ', 0),
(126, 'Nicaragua', 'NI', 0),
(127, 'Niger', 'NE', 0),
(128, 'Nigeria', 'NG', 0),
(129, 'Norway', 'NO', 0),
(130, 'Oman', 'OM', 0),
(131, 'Pakistan', 'PK', 0),
(132, 'Palau', 'PW', 0),
(133, 'Panama', 'PA', 0),
(134, 'Papua New Guinea', 'PG', 0),
(135, 'Paraguay', 'PY', 0),
(136, 'Peru', 'PE', 0),
(137, 'Philippines', 'PH', 0),
(138, 'Poland', 'PL', 0),
(139, 'Portugal', 'PT', 0),
(140, 'Qatar', 'QA', 0),
(141, 'Romania', 'RO', 0),
(142, 'Russia', 'RU', 0),
(143, 'Rwanda', 'RW', 0),
(144, 'Saint Kitts and Nevis', 'KN', 0),
(145, 'Saint Lucia', 'LC', 0),
(146, 'Saint Vincent and the Grenadines', 'VC', 0),
(147, 'Samoa', 'WS', 0),
(148, 'San Marino', 'SM', 0),
(149, 'Sao Tome and Principe', 'ST', 0),
(150, 'Saudi Arabia', 'SA', 0),
(151, 'Senegal', 'SN', 0),
(152, 'Serbia', 'RS', 0),
(153, 'Seychelles', 'SC', 0),
(154, 'Sierra Leone', 'SL', 0),
(155, 'Singapore', 'SG', 0),
(156, 'Slovakia', 'SK', 0),
(157, 'Slovenia', 'SI', 1),
(158, 'Solomon Islands', 'SB', 0),
(159, 'Somalia', 'SO', 0),
(160, 'South Africa', 'ZA', 0),
(161, 'Spain', 'ES', 0),
(162, 'Sri Lanka', 'LK', 0),
(163, 'Sudan', 'SD', 0),
(164, 'Suriname', 'SR', 0),
(165, 'Swaziland', 'SZ', 0),
(166, 'Sweden', 'SE', 0),
(167, 'Switzerland', 'CH', 0),
(168, 'Syria', 'SY', 0),
(169, 'Tajikistan', 'TJ', 0),
(170, 'Tanzania', 'TZ', 0),
(171, 'Thailand', 'TH', 0),
(172, 'Timor-Leste (East Timor)', 'TL', 0),
(173, 'Togo', 'TG', 0),
(174, 'Tonga', 'TO', 0),
(175, 'Trinidad and Tobago', 'TT', 0),
(176, 'Tunisia', 'TN', 0),
(177, 'Turkey', 'TR', 0),
(178, 'Turkmenistan', 'TM', 0),
(179, 'Tuvalu', 'TV', 0),
(180, 'Uganda', 'UG', 0),
(181, 'Ukraine', 'UA', 0),
(182, 'United Arab Emirates', 'AE', 0),
(183, 'United Kingdom', 'GB', 1),
(184, 'United States', 'US', 0),
(185, 'Uruguay', 'UY', 0),
(186, 'Uzbekistan', 'UZ', 0),
(187, 'Vanuatu', 'VU', 0),
(188, 'Vatican City', 'VA', 0),
(189, 'Venezuela', 'VE', 0),
(190, 'Vietnam', 'VN', 0),
(191, 'Yemen', 'YE', 0),
(192, 'Zambia', 'ZM', 0),
(193, 'Zimbabwe', 'ZW', 0),
(194, 'Abkhazia', 'GE', 0),
(195, 'China, Republic of (Taiwan)', 'TW', 0),
(196, 'Nagorno-Karabakh', 'AZ', 0),
(197, 'Northern Cyprus', 'CY', 0),
(198, 'Pridnestrovie (Transnistria)', 'MD', 0),
(199, 'Somaliland', 'SO', 0),
(200, 'South Ossetia', 'GE', 0),
(201, 'Ashmore and Cartier Islands', 'AU', 0),
(202, 'Christmas Island', 'CX', 0),
(203, 'Cocos (Keeling) Islands', 'CC', 0),
(204, 'Coral Sea Islands', 'AU', 0),
(205, 'Heard Island and McDonald Islands', 'HM', 0),
(206, 'Norfolk Island', 'NF', 0),
(207, 'New Caledonia', 'NC', 0),
(208, 'French Polynesia', 'PF', 0),
(209, 'Mayotte', 'YT', 0),
(210, 'Saint Barthelemy', 'GP', 0),
(211, 'Saint Martin', 'GP', 0),
(212, 'Saint Pierre and Miquelon', 'PM', 0),
(213, 'Wallis and Futuna', 'WF', 0),
(214, 'French Southern and Antarctic Lands', 'TF', 0),
(215, 'Clipperton Island', 'PF', 0),
(216, 'Bouvet Island', 'BV', 0),
(217, 'Cook Islands', 'CK', 0),
(218, 'Niue', 'NU', 0),
(219, 'Tokelau', 'TK', 0),
(220, 'Guernsey', 'GG', 0),
(221, 'Isle of Man', 'IM', 0),
(222, 'Jersey', 'JE', 0),
(223, 'Anguilla', 'AI', 0),
(224, 'Bermuda', 'BM', 0),
(225, 'British Indian Ocean Territory', 'IO', 0),
(226, 'British Sovereign Base Areas', '', 0),
(227, 'British Virgin Islands', 'VG', 0),
(228, 'Cayman Islands', 'KY', 0),
(229, 'Falkland Islands (Islas Malvinas)', 'FK', 0),
(230, 'Gibraltar', 'GI', 0),
(231, 'Montserrat', 'MS', 0),
(232, 'Pitcairn Islands', 'PN', 0),
(233, 'Saint Helena', 'SH', 0),
(234, 'South Georgia and the South Sandwich Islands', 'GS', 0),
(235, 'Turks and Caicos Islands', 'TC', 0),
(236, 'Northern Mariana Islands', 'MP', 0),
(237, 'Puerto Rico', 'PR', 0),
(238, 'American Samoa', 'AS', 0),
(239, 'Baker Island', 'UM', 0),
(240, 'Guam', 'GU', 0),
(241, 'Howland Island', 'UM', 0),
(242, 'Jarvis Island', 'UM', 0),
(243, 'Johnston Atoll', 'UM', 0),
(244, 'Kingman Reef', 'UM', 0),
(245, 'Midway Islands', 'UM', 0),
(246, 'Navassa Island', 'UM', 0),
(247, 'Palmyra Atoll', 'UM', 0),
(248, 'U.S. Virgin Islands', 'VI', 0),
(249, 'Wake Island', 'UM', 0),
(250, 'Hong Kong', 'HK', 0),
(251, 'Macau', 'MO', 0),
(252, 'Faroe Islands', 'FO', 0),
(253, 'Greenland', 'GL', 0),
(254, 'French Guiana', 'GF', 0),
(255, 'Guadeloupe', 'GP', 0),
(256, 'Martinique', 'MQ', 0),
(257, 'Reunion', 'RE', 0),
(258, 'Aland', 'AX', 0),
(259, 'Aruba', 'AW', 0),
(260, 'Netherlands Antilles', 'AN', 0),
(261, 'Svalbard', 'SJ', 0),
(262, 'Ascension', 'AC', 0),
(263, 'Tristan da Cunha', 'TA', 0),
(264, 'Antarctica', 'AQ', 0),
(265, 'Kosovo', 'CS', 0),
(266, 'Palestinian Territories (Gaza Strip and West Bank)', 'PS', 0),
(267, 'Western Sahara', 'EH', 0),
(268, 'Australian Antarctic Territory', 'AQ', 0),
(269, 'Ross Dependency', 'AQ', 0),
(270, 'Peter I Island', 'AQ', 0),
(271, 'Queen Maud Land', 'AQ', 0),
(272, 'British Antarctic Territory', 'AQ', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `base_languages`
--

DROP TABLE IF EXISTS `base_languages`;
CREATE TABLE IF NOT EXISTS `base_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(250) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `hreflang` varchar(5) DEFAULT NULL,
  `code` varchar(2) NOT NULL,
  `base` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `base_languages`
--

INSERT INTO `base_languages` (`id`, `language`, `locale`, `hreflang`, `code`, `base`, `active`) VALUES
(1, 'English', 'en-US', NULL, 'en', 1, 1),
(2, 'Italiano', 'it-IT', NULL, 'it', 0, 1),
(4, 'Spanish', 'es-AR', NULL, 'es', 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `base_province`
--

DROP TABLE IF EXISTS `base_province`;
CREATE TABLE IF NOT EXISTS `base_province` (
  `id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `base_province`
--

INSERT INTO `base_province` (`id`, `region_id`, `country_id`, `name`, `code`) VALUES
(1, 19, 82, 'Agrigento', 'AG'),
(2, 2, 82, 'Alessandria', 'AL'),
(3, 10, 82, 'Ancona', 'AN'),
(4, 1, 82, 'Aosta', 'AO'),
(5, 9, 82, 'Arezzo', 'AR'),
(6, 10, 82, 'Ascoli Piceno', 'AP'),
(7, 2, 82, 'Asti', 'AT'),
(8, 16, 82, 'Avellino', 'AV'),
(9, 15, 82, 'Bari', 'BA'),
(10, 5, 82, 'Belluno', 'BL'),
(11, 16, 82, 'Benevento', 'BN'),
(12, 3, 82, 'Bergamo', 'BG'),
(13, 2, 82, 'Biella', 'BI'),
(14, 7, 82, 'Bologna', 'BO'),
(15, 4, 82, 'Bolzano - Bozen', 'BZ'),
(16, 3, 82, 'Brescia', 'BS'),
(17, 15, 82, 'Brindisi', 'BR'),
(18, 20, 82, 'Cagliari', 'CA'),
(19, 19, 82, 'Caltanissetta', 'CL'),
(20, 13, 82, 'Campobasso', 'CB'),
(21, 16, 82, 'Caserta', 'CE'),
(22, 19, 82, 'Catania', 'CT'),
(23, 18, 82, 'Catanzaro', 'CZ'),
(24, 12, 82, 'Chieti', 'CH'),
(25, 3, 82, 'Como', 'CO'),
(26, 18, 82, 'Cosenza', 'CS'),
(27, 3, 82, 'Cremona', 'CR'),
(28, 18, 82, 'Crotone', 'KR'),
(29, 2, 82, 'Cuneo', 'CN'),
(30, 19, 82, 'Enna', 'EN'),
(31, 7, 82, 'Ferrara', 'FE'),
(32, 9, 82, 'Firenze', 'FI'),
(33, 15, 82, 'Foggia', 'FG'),
(34, 7, 82, 'Forlì-Cesena', 'FC'),
(35, 14, 82, 'Frosinone', 'FR'),
(36, 8, 82, 'Genova', 'GE'),
(37, 6, 82, 'Gorizia', 'GO'),
(38, 9, 82, 'Grosseto', 'GR'),
(39, 8, 82, 'Imperia', 'IM'),
(40, 13, 82, 'Isernia', 'IS'),
(41, 12, 82, 'L''Aquila', 'AQ'),
(42, 8, 82, 'La Spezia', 'SP'),
(43, 14, 82, 'Latina', 'LT'),
(44, 15, 82, 'Lecce', 'LE'),
(45, 3, 82, 'Lecco', 'LC'),
(46, 9, 82, 'Livorno', 'LI'),
(47, 3, 82, 'Lodi', 'LO'),
(48, 9, 82, 'Lucca', 'LU'),
(49, 10, 82, 'Macerata', 'MC'),
(50, 3, 82, 'Mantova', 'MN'),
(51, 9, 82, 'Massa - Carrara', 'MS'),
(52, 17, 82, 'Matera', 'MT'),
(53, 19, 82, 'Messina', 'ME'),
(54, 3, 82, 'Milano', 'MI'),
(55, 7, 82, 'Modena', 'MO'),
(56, 16, 82, 'Napoli', 'NA'),
(57, 2, 82, 'Novara', 'NO'),
(58, 20, 82, 'Nuoro', 'NU'),
(59, 20, 82, 'Oristano', 'OR'),
(60, 5, 82, 'Padova', 'PD'),
(61, 19, 82, 'Palermo', 'PA'),
(62, 7, 82, 'Parma', 'PR'),
(63, 3, 82, 'Pavia', 'PV'),
(64, 11, 82, 'Perugia', 'PG'),
(65, 10, 82, 'Pesaro e Urbino', 'PU'),
(66, 12, 82, 'Pescara', 'PE'),
(67, 7, 82, 'Piacenza', 'PC'),
(68, 9, 82, 'Pisa', 'PI'),
(69, 9, 82, 'Pistoia', 'PT'),
(70, 6, 82, 'Pordenone', 'PN'),
(71, 17, 82, 'Potenza', 'PZ'),
(72, 9, 82, 'Prato', 'PO'),
(73, 19, 82, 'Ragusa', 'RG'),
(74, 7, 82, 'Ravenna', 'RA'),
(75, 18, 82, 'Reggio Calabria', 'RC'),
(76, 7, 82, 'Reggio Emilia', 'RE'),
(77, 14, 82, 'Rieti', 'RI'),
(78, 7, 82, 'Rimini', 'RN'),
(79, 14, 82, 'Roma', 'RM'),
(80, 5, 82, 'Rovigo', 'RO'),
(81, 16, 82, 'Salerno', 'SA'),
(82, 20, 82, 'Sassari', 'SS'),
(83, 8, 82, 'Savona', 'SV'),
(84, 9, 82, 'Siena', 'SI'),
(85, 19, 82, 'Siracusa', 'SR'),
(86, 3, 82, 'Sondrio', 'SO'),
(87, 15, 82, 'Taranto', 'TA'),
(88, 12, 82, 'Teramo', 'TE'),
(89, 11, 82, 'Terni', 'TR'),
(90, 2, 82, 'Torino', 'TO'),
(91, 19, 82, 'Trapani', 'TP'),
(92, 4, 82, 'Trento', 'TN'),
(93, 5, 82, 'Treviso', 'TV'),
(94, 6, 82, 'Trieste', 'TS'),
(95, 6, 82, 'Udine', 'UD'),
(96, 3, 82, 'Varese', 'VA'),
(97, 5, 82, 'Venezia', 'VE'),
(98, 2, 82, 'Verbano - Cusio', 'VB'),
(99, 2, 82, 'Vercelli', 'VC'),
(100, 5, 82, 'Verona', 'VR'),
(101, 18, 82, 'Vibo - Valentia', 'VV'),
(102, 5, 82, 'Vicenza', 'VI'),
(103, 14, 82, 'Viterbo', 'VT'),
(104, 20, 82, 'Olbia-Tempio', 'OT'),
(105, 20, 82, 'Carbonia-Iglesias', 'CI'),
(106, 20, 82, 'Medio Campidano', 'VS'),
(107, 3, 82, 'Monza e della Brianza', 'MB');

-- --------------------------------------------------------

--
-- Struttura della tabella `base_region`
--

DROP TABLE IF EXISTS `base_region`;
CREATE TABLE IF NOT EXISTS `base_region` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `base_region`
--

INSERT INTO `base_region` (`id`, `country_id`, `name`) VALUES
(1, 82, 'Valle d''Aosta'),
(2, 82, 'Piemonte'),
(3, 82, 'Lombardia'),
(4, 82, 'Trentino-Alto Adige'),
(5, 82, 'Veneto'),
(6, 82, 'Friuli-Venezia Giulia'),
(7, 82, 'Emilia-Romagna'),
(8, 82, 'Liguria'),
(9, 82, 'Toscana'),
(10, 82, 'Marche'),
(11, 82, 'Umbria'),
(12, 82, 'Abruzzo'),
(13, 82, 'Molise'),
(14, 82, 'Lazio'),
(15, 82, 'Puglia'),
(16, 82, 'Campania'),
(17, 82, 'Basilicata'),
(18, 82, 'Calabria'),
(19, 82, 'Sicilia'),
(20, 82, 'Sardegna'),
(21, 82, 'San Marino');

-- --------------------------------------------------------

--
-- Struttura della tabella `base_settings`
--

DROP TABLE IF EXISTS `base_settings`;
CREATE TABLE IF NOT EXISTS `base_settings` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `base_settings`
--

INSERT INTO `base_settings` (`id`, `module`, `parameter`, `value`) VALUES
  (233, 'Paypal', 'currency', 'EUR'),
  (234, 'Paypal', 'mode', 'live'),
  (235, 'Paypal', 'log', '1'),
  (236, 'Paypal', 'baseurl', 'http://www.shineisp.it'),
  (237, 'Paypal', 'receiver', 'info@shineisp.it'),
  (238, 'Paypal', 'fee', '4.50'),
  (239, 'Paypal', 'feebase', '0.5'),
  (240, 'Paypal', 'feelowlimit', '0.5'),
  (349, 'Cms', 'defaultlayout', '1column'),
  (350, 'Cms', 'postperpage', '5'),
  (351, 'Cms', 'recordsperpage', '5'),
  (352, 'Cms', 'debug', '0'),
  (397, 'Base', 'active', '1'),
  (398, 'Base', 'iscompressed', '0'),
  (399, 'Base', 'name', 'shineisp'),
  (400, 'Base', 'email', 'info@shineisp.it'),
  (401, 'Base', 'slogan', 'a new way to handle the customers'),
  (402, 'Base', 'metatitle', 'Discover your best offers ever!'),
  (403, 'Base', 'metadescription', 'ShineISP is a billing system to manage your customers (CMS, eCommerce, CRM, ERP) like WHMCS and WHMAP, Parallels Plesk Billing, AWBS (Advanced Webhosting Billing System) and ClientExec.'),
  (404, 'Base', 'metakeywords', 'shineisp, zend framework, cms, orm, eCommerce, erp'),
  (405, 'Base', 'headscript', '    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Montserrat:400,700">\r\n    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Kaushan+Script">'),
  (406, 'Base', 'bodyscript', ''),
  (407, 'Base', 'ganalytics', '<script> (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga''); ga(''create'', ''UA-382523-23'', ''auto''); ga(''send'', ''pageview''); </script>');

-- --------------------------------------------------------

--
-- Struttura della tabella `base_status`
--

DROP TABLE IF EXISTS `base_status`;
CREATE TABLE IF NOT EXISTS `base_status` (
  `id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `section` varchar(200) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '1',
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `base_status`
--

INSERT INTO `base_status` (`id`, `status`, `section`, `public`, `code`) VALUES
(1, 'Deleted', 'generic', 1, 'deleted'),
(2, 'Suspended', 'generic', 1, 'suspended'),
(3, 'Active', 'generic', 1, 'active');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `base_country`
--
ALTER TABLE `base_country`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `base_languages`
--
ALTER TABLE `base_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `base_province`
--
ALTER TABLE `base_province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id_idx` (`country_id`),
  ADD KEY `region_id_idx` (`region_id`);

--
-- Indici per le tabelle `base_region`
--
ALTER TABLE `base_region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indici per le tabelle `base_settings`
--
ALTER TABLE `base_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `base_status`
--
ALTER TABLE `base_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `base_country`
--
ALTER TABLE `base_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT per la tabella `base_languages`
--
ALTER TABLE `base_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `base_province`
--
ALTER TABLE `base_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT per la tabella `base_settings`
--
ALTER TABLE `base_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=408;
--
-- AUTO_INCREMENT per la tabella `base_status`
--
ALTER TABLE `base_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `base_province`
--
ALTER TABLE `base_province`
  ADD CONSTRAINT `base_province_country_id_countries_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `base_province_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `base_region` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `base_region`
--
ALTER TABLE `base_region`
  ADD CONSTRAINT `base_region_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `base_country` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
