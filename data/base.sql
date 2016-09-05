-- phpMyAdmin SQL Dump
-- version 4.6.3deb1~xenial.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2016 at 05:30 PM
-- Server version: 10.0.25-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eurocv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_country`
--

DROP TABLE IF EXISTS `base_country`;
CREATE TABLE `base_country` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `base_country`
--

TRUNCATE TABLE `base_country`;
--
-- Dumping data for table `base_country`
--

INSERT INTO `base_country` (`id`, `name`, `code`, `visible`) VALUES
(1, 'Afghanistan', 'AF', 1),
(2, 'Albania', 'AL', 1),
(3, 'Algeria', 'DZ', 1),
(4, 'Andorra', 'AD', 1),
(5, 'Angola', 'AO', 1),
(6, 'Antigua and Barbuda', 'AG', 1),
(7, 'Argentina', 'AR', 1),
(8, 'Armenia', 'AM', 1),
(9, 'Australia', 'AU', 1),
(10, 'Austria', 'AT', 1),
(11, 'Azerbaijan', 'AZ', 1),
(12, 'Bahamas, The', 'BS', 1),
(13, 'Bahrain', 'BH', 1),
(14, 'Bangladesh', 'BD', 1),
(15, 'Barbados', 'BB', 1),
(16, 'Belarus', 'BY', 1),
(17, 'Belgium', 'BE', 1),
(18, 'Belize', 'BZ', 1),
(19, 'Benin', 'BJ', 1),
(20, 'Bhutan', 'BT', 1),
(21, 'Bolivia', 'BO', 1),
(22, 'Bosnia and Herzegovina', 'BA', 1),
(23, 'Botswana', 'BW', 1),
(24, 'Brazil', 'BR', 1),
(25, 'Brunei', 'BN', 1),
(26, 'Bulgaria', 'BG', 1),
(27, 'Burkina Faso', 'BF', 1),
(28, 'Burundi', 'BI', 1),
(29, 'Cambodia', 'KH', 1),
(30, 'Cameroon', 'CM', 1),
(31, 'Canada', 'CA', 1),
(32, 'Cape Verde', 'CV', 1),
(33, 'Central African Republic', 'CF', 1),
(34, 'Chad', 'TD', 1),
(35, 'Chile', 'CL', 1),
(36, 'China, People s Republic of', 'CN', 1),
(37, 'Colombia', 'CO', 1),
(38, 'Comoros', 'KM', 1),
(39, 'Congo, Democratic Republic of the (Congo ﾖ Kinshasa)', 'CD', 1),
(40, 'Congo, Republic of the (Congo ﾖ Brazzaville)', 'CG', 1),
(41, 'Costa Rica', 'CR', 1),
(42, 'Cote d Ivoire (Ivory Coast)', 'CI', 1),
(43, 'Croatia', 'HR', 1),
(44, 'Cuba', 'CU', 1),
(45, 'Cyprus', 'CY', 1),
(46, 'Czech Republic', 'CZ', 1),
(47, 'Denmark', 'DK', 1),
(48, 'Djibouti', 'DJ', 1),
(49, 'Dominica', 'DM', 1),
(50, 'Dominican Republic', 'DO', 1),
(51, 'Ecuador', 'EC', 1),
(52, 'Egypt', 'EG', 1),
(53, 'El Salvador', 'SV', 1),
(54, 'Equatorial Guinea', 'GQ', 1),
(55, 'Eritrea', 'ER', 1),
(56, 'Estonia', 'EE', 1),
(57, 'Ethiopia', 'ET', 1),
(58, 'Fiji', 'FJ', 1),
(59, 'Finland', 'FI', 1),
(60, 'France', 'FR', 1),
(61, 'Gabon', 'GA', 1),
(62, 'Gambia, The', 'GM', 1),
(63, 'Georgia', 'GE', 1),
(64, 'Germany', 'DE', 1),
(65, 'Ghana', 'GH', 1),
(66, 'Greece', 'GR', 1),
(67, 'Grenada', 'GD', 1),
(68, 'Guatemala', 'GT', 1),
(69, 'Guinea', 'GN', 1),
(70, 'Guinea-Bissau', 'GW', 1),
(71, 'Guyana', 'GY', 1),
(72, 'Haiti', 'HT', 1),
(73, 'Honduras', 'HN', 1),
(74, 'Hungary', 'HU', 1),
(75, 'Iceland', 'IS', 1),
(76, 'India', 'IN', 1),
(77, 'Indonesia', 'ID', 1),
(78, 'Iran', 'IR', 1),
(79, 'Iraq', 'IQ', 1),
(80, 'Ireland', 'IE', 1),
(81, 'Israel', 'IL', 1),
(82, 'Italy', 'IT', 1),
(83, 'Jamaica', 'JM', 1),
(84, 'Japan', 'JP', 1),
(85, 'Jordan', 'JO', 1),
(86, 'Kazakhstan', 'KZ', 1),
(87, 'Kenya', 'KE', 1),
(88, 'Kiribati', 'KI', 1),
(89, 'Korea, Democratic People s Republic of (North Korea)', 'KP', 1),
(90, 'Korea, Republic of  (South Korea)', 'KR', 1),
(91, 'Kuwait', 'KW', 1),
(92, 'Kyrgyzstan', 'KG', 1),
(93, 'Laos', 'LA', 1),
(94, 'Latvia', 'LV', 1),
(95, 'Lebanon', 'LB', 1),
(96, 'Lesotho', 'LS', 1),
(97, 'Liberia', 'LR', 1),
(98, 'Libya', 'LY', 1),
(99, 'Liechtenstein', 'LI', 1),
(100, 'Lithuania', 'LT', 1),
(101, 'Luxembourg', 'LU', 1),
(102, 'Macedonia', 'MK', 1),
(103, 'Madagascar', 'MG', 1),
(104, 'Malawi', 'MW', 1),
(105, 'Malaysia', 'MY', 1),
(106, 'Maldives', 'MV', 1),
(107, 'Mali', 'ML', 1),
(108, 'Malta', 'MT', 1),
(109, 'Marshall Islands', 'MH', 1),
(110, 'Mauritania', 'MR', 1),
(111, 'Mauritius', 'MU', 1),
(112, 'Mexico', 'MX', 1),
(113, 'Micronesia', 'FM', 1),
(114, 'Moldova', 'MD', 1),
(115, 'Monaco', 'MC', 1),
(116, 'Mongolia', 'MN', 1),
(117, 'Montenegro', 'ME', 1),
(118, 'Morocco', 'MA', 1),
(119, 'Mozambique', 'MZ', 1),
(120, 'Myanmar (Burma)', 'MM', 1),
(121, 'Namibia', 'NA', 1),
(122, 'Nauru', 'NR', 1),
(123, 'Nepal', 'NP', 1),
(124, 'Netherlands', 'NL', 1),
(125, 'New Zealand', 'NZ', 1),
(126, 'Nicaragua', 'NI', 1),
(127, 'Niger', 'NE', 1),
(128, 'Nigeria', 'NG', 1),
(129, 'Norway', 'NO', 1),
(130, 'Oman', 'OM', 1),
(131, 'Pakistan', 'PK', 1),
(132, 'Palau', 'PW', 1),
(133, 'Panama', 'PA', 1),
(134, 'Papua New Guinea', 'PG', 1),
(135, 'Paraguay', 'PY', 1),
(136, 'Peru', 'PE', 1),
(137, 'Philippines', 'PH', 1),
(138, 'Poland', 'PL', 1),
(139, 'Portugal', 'PT', 1),
(140, 'Qatar', 'QA', 1),
(141, 'Romania', 'RO', 1),
(142, 'Russia', 'RU', 1),
(143, 'Rwanda', 'RW', 1),
(144, 'Saint Kitts and Nevis', 'KN', 1),
(145, 'Saint Lucia', 'LC', 1),
(146, 'Saint Vincent and the Grenadines', 'VC', 1),
(147, 'Samoa', 'WS', 1),
(148, 'San Marino', 'SM', 1),
(149, 'Sao Tome and Principe', 'ST', 1),
(150, 'Saudi Arabia', 'SA', 1),
(151, 'Senegal', 'SN', 1),
(152, 'Serbia', 'RS', 1),
(153, 'Seychelles', 'SC', 1),
(154, 'Sierra Leone', 'SL', 1),
(155, 'Singapore', 'SG', 1),
(156, 'Slovakia', 'SK', 1),
(157, 'Slovenia', 'SI', 1),
(158, 'Solomon Islands', 'SB', 1),
(159, 'Somalia', 'SO', 1),
(160, 'South Africa', 'ZA', 1),
(161, 'Spain', 'ES', 1),
(162, 'Sri Lanka', 'LK', 1),
(163, 'Sudan', 'SD', 1),
(164, 'Suriname', 'SR', 1),
(165, 'Swaziland', 'SZ', 1),
(166, 'Sweden', 'SE', 1),
(167, 'Switzerland', 'CH', 1),
(168, 'Syria', 'SY', 1),
(169, 'Tajikistan', 'TJ', 1),
(170, 'Tanzania', 'TZ', 1),
(171, 'Thailand', 'TH', 1),
(172, 'Timor-Leste (East Timor)', 'TL', 1),
(173, 'Togo', 'TG', 1),
(174, 'Tonga', 'TO', 1),
(175, 'Trinidad and Tobago', 'TT', 1),
(176, 'Tunisia', 'TN', 1),
(177, 'Turkey', 'TR', 1),
(178, 'Turkmenistan', 'TM', 1),
(179, 'Tuvalu', 'TV', 1),
(180, 'Uganda', 'UG', 1),
(181, 'Ukraine', 'UA', 1),
(182, 'United Arab Emirates', 'AE', 1),
(183, 'United Kingdom', 'GB', 1),
(184, 'United States', 'US', 1),
(185, 'Uruguay', 'UY', 1),
(186, 'Uzbekistan', 'UZ', 1),
(187, 'Vanuatu', 'VU', 1),
(188, 'Vatican City', 'VA', 1),
(189, 'Venezuela', 'VE', 1),
(190, 'Vietnam', 'VN', 1),
(191, 'Yemen', 'YE', 1),
(192, 'Zambia', 'ZM', 1),
(193, 'Zimbabwe', 'ZW', 1),
(194, 'Abkhazia', 'GE', 1),
(195, 'China, Republic of (Taiwan)', 'TW', 1),
(196, 'Nagorno-Karabakh', 'AZ', 1),
(197, 'Northern Cyprus', 'CY', 1),
(198, 'Pridnestrovie (Transnistria)', 'MD', 1),
(199, 'Somaliland', 'SO', 1),
(200, 'South Ossetia', 'GE', 1),
(201, 'Ashmore and Cartier Islands', 'AU', 1),
(202, 'Christmas Island', 'CX', 1),
(203, 'Cocos (Keeling) Islands', 'CC', 1),
(204, 'Coral Sea Islands', 'AU', 1),
(205, 'Heard Island and McDonald Islands', 'HM', 1),
(206, 'Norfolk Island', 'NF', 1),
(207, 'New Caledonia', 'NC', 1),
(208, 'French Polynesia', 'PF', 1),
(209, 'Mayotte', 'YT', 1),
(210, 'Saint Barthelemy', 'GP', 1),
(211, 'Saint Martin', 'GP', 1),
(212, 'Saint Pierre and Miquelon', 'PM', 1),
(213, 'Wallis and Futuna', 'WF', 1),
(214, 'French Southern and Antarctic Lands', 'TF', 1),
(215, 'Clipperton Island', 'PF', 1),
(216, 'Bouvet Island', 'BV', 1),
(217, 'Cook Islands', 'CK', 1),
(218, 'Niue', 'NU', 1),
(219, 'Tokelau', 'TK', 1),
(220, 'Guernsey', 'GG', 1),
(221, 'Isle of Man', 'IM', 1),
(222, 'Jersey', 'JE', 1),
(223, 'Anguilla', 'AI', 1),
(224, 'Bermuda', 'BM', 1),
(225, 'British Indian Ocean Territory', 'IO', 1),
(226, 'British Sovereign Base Areas', '', 1),
(227, 'British Virgin Islands', 'VG', 1),
(228, 'Cayman Islands', 'KY', 1),
(229, 'Falkland Islands (Islas Malvinas)', 'FK', 1),
(230, 'Gibraltar', 'GI', 1),
(231, 'Montserrat', 'MS', 1),
(232, 'Pitcairn Islands', 'PN', 1),
(233, 'Saint Helena', 'SH', 1),
(234, 'South Georgia and the South Sandwich Islands', 'GS', 1),
(235, 'Turks and Caicos Islands', 'TC', 1),
(236, 'Northern Mariana Islands', 'MP', 1),
(237, 'Puerto Rico', 'PR', 1),
(238, 'American Samoa', 'AS', 1),
(239, 'Baker Island', 'UM', 1),
(240, 'Guam', 'GU', 1),
(241, 'Howland Island', 'UM', 1),
(242, 'Jarvis Island', 'UM', 1),
(243, 'Johnston Atoll', 'UM', 1),
(244, 'Kingman Reef', 'UM', 1),
(245, 'Midway Islands', 'UM', 1),
(246, 'Navassa Island', 'UM', 1),
(247, 'Palmyra Atoll', 'UM', 1),
(248, 'U.S. Virgin Islands', 'VI', 1),
(249, 'Wake Island', 'UM', 1),
(250, 'Hong Kong', 'HK', 1),
(251, 'Macau', 'MO', 1),
(252, 'Faroe Islands', 'FO', 1),
(253, 'Greenland', 'GL', 1),
(254, 'French Guiana', 'GF', 1),
(255, 'Guadeloupe', 'GP', 1),
(256, 'Martinique', 'MQ', 1),
(257, 'Reunion', 'RE', 1),
(258, 'Aland', 'AX', 1),
(259, 'Aruba', 'AW', 1),
(260, 'Netherlands Antilles', 'AN', 1),
(261, 'Svalbard', 'SJ', 1),
(262, 'Ascension', 'AC', 1),
(263, 'Tristan da Cunha', 'TA', 1),
(264, 'Antarctica', 'AQ', 1),
(265, 'Kosovo', 'CS', 1),
(266, 'Palestinian Territories (Gaza Strip and West Bank)', 'PS', 1),
(267, 'Western Sahara', 'EH', 1),
(268, 'Australian Antarctic Territory', 'AQ', 1),
(269, 'Ross Dependency', 'AQ', 1),
(270, 'Peter I Island', 'AQ', 1),
(271, 'Queen Maud Land', 'AQ', 1),
(272, 'British Antarctic Territory', 'AQ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_languages`
--

DROP TABLE IF EXISTS `base_languages`;
CREATE TABLE `base_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(250) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `hreflang` varchar(10) DEFAULT NULL,
  `code` varchar(2) NOT NULL,
  `base` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `showonsite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `base_languages`
--

TRUNCATE TABLE `base_languages`;
--
-- Dumping data for table `base_languages`
--

INSERT INTO `base_languages` (`id`, `language`, `locale`, `hreflang`, `code`, `base`, `active`, `showonsite`) VALUES
(1, 'Afrikaans', 'af_ZA', '', 'af', 0, 0, 0),
(2, 'Albanian', 'sq_AL', '', 'sq', 0, 0, 0),
(3, 'Arabic', 'ar_SA', '', 'ar', 0, 0, 0),
(4, 'Armenian', '', '', 'hy', 0, 0, 0),
(5, 'Basque', '', '', 'eu', 0, 0, 0),
(6, 'Bengali', '', '', 'bn', 0, 0, 0),
(7, 'Bulgarian', '', '', 'bg', 0, 0, 0),
(8, 'Catalan', '', '', 'ca', 0, 0, 0),
(9, 'Cambodian', '', '', 'km', 0, 0, 0),
(10, 'Chinese (Mandarin)', '', '', 'zh', 0, 0, 0),
(11, 'Croatian', '', '', 'hr', 0, 0, 0),
(12, 'Czech', 'cz_CZ', '', 'cs', 0, 0, 0),
(13, 'Danish', '', '', 'da', 0, 0, 0),
(14, 'Dutch', 'nl_NL', '', 'nl', 0, 0, 0),
(15, 'English', 'en_US', '', 'en', 1, 1, 1),
(16, 'Estonian', '', '', 'et', 0, 0, 0),
(17, 'Fiji', '', '', 'fj', 0, 0, 0),
(18, 'Finnish', '', '', 'fi', 0, 0, 0),
(19, 'French', '', '', 'fr', 0, 0, 0),
(20, 'Georgian', '', '', 'ka', 0, 0, 0),
(21, 'German', '', '', 'de', 0, 0, 0),
(22, 'Greek', '', '', 'el', 0, 0, 0),
(23, 'Gujarati', '', '', 'gu', 0, 0, 0),
(24, 'Hebrew', '', '', 'he', 0, 0, 0),
(25, 'Hindi', '', '', 'hi', 0, 0, 0),
(26, 'Hungarian', '', '', 'hu', 0, 0, 0),
(27, 'Icelandic', '', '', 'is', 0, 0, 0),
(28, 'Indonesian', '', '', 'id', 0, 0, 0),
(29, 'Irish', '', '', 'ga', 0, 0, 0),
(30, 'Italian', 'it_IT', '', 'it', 0, 1, 1),
(31, 'Japanese', '', '', 'ja', 0, 0, 0),
(32, 'Javanese', '', '', 'jw', 0, 0, 0),
(33, 'Korean', '', '', 'ko', 0, 0, 0),
(34, 'Latin', '', '', 'la', 0, 0, 0),
(35, 'Latvian', '', '', 'lv', 0, 0, 0),
(36, 'Lithuanian', '', '', 'lt', 0, 0, 0),
(37, 'Macedonian', '', '', 'mk', 0, 0, 0),
(38, 'Malay', '', '', 'ms', 0, 0, 0),
(39, 'Malayalam', '', '', 'ml', 0, 0, 0),
(40, 'Maltese', '', '', 'mt', 0, 0, 0),
(41, 'Maori', '', '', 'mi', 0, 0, 0),
(42, 'Marathi', '', '', 'mr', 0, 0, 0),
(43, 'Mongolian', '', '', 'mn', 0, 0, 0),
(44, 'Nepali', '', '', 'ne', 0, 0, 0),
(45, 'Norwegian', '', '', 'no', 0, 0, 0),
(46, 'Persian', '', '', 'fa', 0, 0, 0),
(47, 'Polish', '', '', 'pl', 0, 0, 0),
(48, 'Portuguese', 'pt_PT', '', 'pt', 0, 1, 1),
(49, 'Punjabi', '', '', 'pa', 0, 0, 0),
(50, 'Quechua', '', '', 'qu', 0, 0, 0),
(51, 'Romanian', '', '', 'ro', 0, 0, 0),
(52, 'Russian', '', '', 'ru', 0, 0, 0),
(53, 'Samoan', '', '', 'sm', 0, 0, 0),
(54, 'Serbian', '', '', 'sr', 0, 0, 0),
(55, 'Slovak', '', '', 'sk', 0, 0, 0),
(56, 'Slovenian', '', '', 'sl', 0, 0, 0),
(57, 'Spanish', '', '', 'es', 0, 0, 0),
(58, 'Swahili', '', '', 'sw', 0, 0, 0),
(59, 'Swedish ', '', '', 'sv', 0, 0, 0),
(60, 'Tamil', '', '', 'ta', 0, 0, 0),
(61, 'Tatar', '', '', 'tt', 0, 0, 0),
(62, 'Telugu', '', '', 'te', 0, 0, 0),
(63, 'Thai', '', '', 'th', 0, 0, 0),
(64, 'Tibetan', '', '', 'bo', 0, 0, 0),
(65, 'Tonga', '', '', 'to', 0, 0, 0),
(66, 'Turkish', '', '', 'tr', 0, 0, 0),
(67, 'Ukranian', '', '', 'uk', 0, 0, 0),
(68, 'Urdu', '', '', 'ur', 0, 0, 0),
(69, 'Uzbek', '', '', 'uz', 0, 0, 0),
(70, 'Vietnamese', '', '', 'vi', 0, 0, 0),
(71, 'Welsh', '', '', 'cy', 0, 0, 0),
(72, 'Xhosa', '', '', 'xh', 0, 0, 0),
(73, 'Kurdish', '', '', 'ku', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `base_province`
--

DROP TABLE IF EXISTS `base_province`;
CREATE TABLE `base_province` (
  `id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `base_province`
--

TRUNCATE TABLE `base_province`;
-- --------------------------------------------------------

--
-- Table structure for table `base_region`
--

DROP TABLE IF EXISTS `base_region`;
CREATE TABLE `base_region` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `base_region`
--

TRUNCATE TABLE `base_region`;
--
-- Dumping data for table `base_region`
--

INSERT INTO `base_region` (`id`, `country_id`, `name`) VALUES
(1, 82, 'Valle d Aosta'),
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
-- Table structure for table `base_settings`
--

DROP TABLE IF EXISTS `base_settings`;
CREATE TABLE `base_settings` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_status`
--

DROP TABLE IF EXISTS `base_status`;
CREATE TABLE `base_status` (
  `id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `section` varchar(200) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '1',
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `base_status`
--

TRUNCATE TABLE `base_status`;
--
-- Dumping data for table `base_status`
--

INSERT INTO `base_status` (`id`, `status`, `section`, `public`, `code`) VALUES
(1, 'Deleted', 'generic', 1, 'deleted'),
(2, 'Suspended', 'generic', 1, 'suspended'),
(3, 'Active', 'generic', 1, 'active'),
(4, 'Active', 'domains', 1, 'active'),
(5, 'Expired', 'domains', 1, 'expired'),
(6, 'Processing', 'domains', 1, 'processing'),
(7, 'Redenption period', 'epp_domains', 1, 'redemption'),
(8, 'Registrar hold', 'epp_domains', 1, 'hold'),
(9, 'To be Paid', 'orders', 1, 'tobepaid'),
(10, 'Expired', 'orders', 1, 'expired'),
(12, 'Active', 'customers', 1, 'active'),
(13, 'Suspended', 'customers', 1, 'suspended'),
(14, 'Deleted', 'customers', 1, 'deleted'),
(15, 'Active', 'servers', 1, 'active'),
(16, 'Suspended', 'servers', 1, 'suspended'),
(17, 'Deleted', 'servers', 1, 'deleted'),
(18, 'Pending', 'orders', 1, 'pending'),
(19, 'Processing', 'orders', 1, 'processing'),
(20, 'Deleted', 'orders', 1, 'deleted'),
(21, 'Complete', 'orders', 1, 'complete'),
(22, 'Expecting a reply', 'tickets', 1, 'expectingreply'),
(23, 'Processing', 'tickets', 1, 'processing'),
(24, 'Solved', 'tickets', 1, 'solved'),
(25, 'Closed', 'tickets', 1, 'closed'),
(26, 'Active', 'domains_tasks', 1, 'active'),
(27, 'Processing', 'domains_tasks', 1, 'processing'),
(28, 'Deleted', 'domains', 1, 'deleted'),
(29, 'Suspended', 'domains', 1, 'suspended'),
(30, 'Closed', 'orders', 1, 'closed'),
(31, 'Complete', 'domains_tasks', 1, 'complete'),
(32, 'Future Release', 'tickets', 1, 'future-release'),
(33, 'Changed', 'orders', 1, 'changed'),
(34, 'Paid', 'orders', 1, 'paid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_country`
--
ALTER TABLE `base_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_languages`
--
ALTER TABLE `base_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_province`
--
ALTER TABLE `base_province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id_idx` (`country_id`),
  ADD KEY `region_id_idx` (`region_id`);

--
-- Indexes for table `base_region`
--
ALTER TABLE `base_region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `base_settings`
--
ALTER TABLE `base_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_status`
--
ALTER TABLE `base_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base_country`
--
ALTER TABLE `base_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `base_languages`
--
ALTER TABLE `base_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `base_province`
--
ALTER TABLE `base_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `base_settings`
--
ALTER TABLE `base_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `base_status`
--
ALTER TABLE `base_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `base_province`
--
ALTER TABLE `base_province`
  ADD CONSTRAINT `base_province_country_id_countries_country_id` FOREIGN KEY (`country_id`) REFERENCES `base_country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `base_province_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `base_region` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `base_region`
--
ALTER TABLE `base_region`
  ADD CONSTRAINT `base_region_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `base_country` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;