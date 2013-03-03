-- Table structure for table `creature_classlevelstats`

DROP TABLE IF EXISTS `creature_classlevelstats`;

CREATE TABLE `creature_classlevelstats` (
  `exp` tinyint(1) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `basehp` smallint(2) NOT NULL,
  `basemana` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `creature_classlevelstats` (`exp`,`class`,`level`,`basehp`,`basemana`) VALUES
(0,1,1,42,0),
(0,1,2,55,0),
(0,1,3,71,0),
(0,1,4,86,0),
(0,1,5,102,0),
(0,1,6,120,0),
(0,1,7,137,0),
(0,1,8,156,0),
(0,1,9,176,0),
(0,1,10,198,0),
(0,1,11,222,0),
(0,1,12,247,0),
(0,1,13,273,0),
(0,1,14,300,0),
(0,1,15,328,0),
(0,1,16,356,0),
(0,1,17,386,0),
(0,1,18,417,0),
(0,1,19,449,0),
(0,1,20,484,0),
(0,1,21,521,0),
(0,1,22,562,0),
(0,1,23,605,0),
(0,1,24,651,0),
(0,1,25,699,0),
(0,1,26,750,0),
(0,1,27,800,0),
(0,1,28,853,0),
(0,1,29,905,0),
(0,1,30,955,0),
(0,1,31,1006,0),
(0,1,32,1057,0),
(0,1,33,1110,0),
(0,1,34,1163,0),
(0,1,35,1220,0),
(0,1,36,1277,0),
(0,1,37,1336,0),
(0,1,38,1395,0),
(0,1,39,1459,0),
(0,1,40,1524,0),
(0,1,41,1585,0),
(0,1,42,1651,0),
(0,1,43,1716,0),
(0,1,44,1782,0),
(0,1,45,1848,0),
(0,1,46,1919,0),
(0,1,47,1990,0),
(0,1,48,2061,0),
(0,1,49,2138,0),
(0,1,50,2215,0),
(0,1,51,2292,0),
(0,1,52,2371,0),
(0,1,53,2453,0),
(0,1,54,2533,0),
(0,1,55,2614,0),
(0,1,56,2699,0),
(0,1,57,2784,0),
(0,1,58,2871,0),
(0,1,59,2961,0),
(0,1,60,3052,0),
(0,1,61,3144,0),
(0,1,62,3237,0),
(0,1,63,3331,0),
(0,1,64,0,0),
(0,1,65,3524,0),
(0,1,66,0,0),
(0,1,67,3728,0),
(0,1,68,3834,0),
(0,1,69,0,0),
(0,1,70,4050,0),
(0,1,71,4163,0),
(0,1,72,4278,0),
(0,1,73,0,0),
(0,1,74,0,0),
(0,1,75,4652,0),
(0,1,76,0,0),
(0,1,77,4916,0),
(0,1,78,5052,0),
(0,1,79,0,0),
(0,1,80,5342,0),
(0,1,81,5496,0),
(0,1,82,0,0),
(0,1,83,5808,0),
(1,1,58,3989,0),
(1,1,59,4142,0),
(1,1,60,4979,0),
(1,1,61,5158,0),
(1,1,62,5341,0),
(1,1,63,5527,0),
(1,1,64,5715,0),
(1,1,65,5914,0),
(1,1,66,6116,0),
(1,1,67,6326,0),
(1,1,68,6542,0),
(1,1,69,6761,0),
(1,1,70,6986,0),
(1,1,71,7181,0),
(1,1,72,7380,0),
(1,1,73,7580,0),
(2,1,68,6986,0),
(2,1,69,7984,0),
(2,1,70,8982,0),
(2,1,71,9291,0),
(2,1,72,9610,0),
(2,1,73,9940,0),
(2,1,74,10282,0),
(2,1,75,10635,0),
(2,1,76,11001,0),
(2,1,77,11379,0),
(2,1,78,11770,0),
(2,1,79,12175,0),
(2,1,80,12600,0),
(2,1,81,13033,0),
(2,1,82,13481,0),
(2,1,83,13945,0),
(0,2,1,41,60),
(0,2,2,54,69),
(0,2,3,69,79),
(0,2,4,83,104),
(0,2,5,98,115),
(0,2,6,115,126),
(0,2,7,131,138),
(0,2,8,148,165),
(0,2,9,166,178),
(0,2,10,186,191),
(0,2,11,208,205),
(0,2,12,230,249),
(0,2,13,253,264),
(0,2,14,276,295),
(0,2,15,301,326),
(0,2,16,325,357),
(0,2,17,350,390),
(0,2,18,377,408),
(0,2,19,404,456),
(0,2,20,433,490),
(0,2,21,464,510),
(0,2,22,498,544),
(0,2,23,533,581), 
(0,2,24,571,618),
(0,2,25,610,655),
(0,2,26,651,693),
(0,2,27,690,732),
(0,2,28,732,756),
(0,2,29,773,811),
(0,2,30,811,852),
(0,2,31,850,878),
(0,2,32,888,935),
(0,2,33,928,963),
(0,2,34,967,1007),
(0,2,35,1009,1067),
(0,2,36,1050,1097),
(0,2,37,1093,1142),
(0,2,38,1135,1186),
(0,2,39,1180,1236),
(0,2,40,1226,1283),
(0,2,41,1268,1332),
(0,2,42,1321,1381),
(0,2,43,1373,1432),
(0,2,44,1426,1483),
(0,2,45,1478,1534),
(0,2,46,1535,1587),
(0,2,47,1592,1640),
(0,2,48,1650,1695),
(0,2,49,1710,1750),
(0,2,50,1772,1807),
(0,2,51,1834,1864),
(0,2,52,1897,1923),
(0,2,53,1962,1982),
(0,2,54,2026,2041),
(0,2,55,2091,2117),
(0,2,56,2159,2163),
(0,2,57,2227,2241),
(0,2,58,2297,2289),
(0,2,59,2369,2369),
(0,2,60,2442,2434),
(0,2,61,2515,2486),
(0,2,62,2590,2568),
(0,2,63,2665,2620),
(0,2,64,0,2705),
(0,2,65,2819,2790),
(0,2,66,0,2846),
(0,2,67,2982,2933),
(0,2,68,3067,2991),
(0,2,69,0,3080),
(0,2,70,3240,3155),
(0,2,71,3330,3231),
(0,2,72,3422,3309),
(0,2,73,0,3387),
(0,2,74,0,3466),
(0,2,75,3722,3561),
(0,2,76,0,3643),
(0,2,77,3933,3725),
(0,2,78,4042,3809),
(0,2,79,0,3893),
(0,2,80,4274,3994),
(0,2,81,4394,4081),
(0,2,82,0,4169),
(0,2,83,0,4258),
(1,2,58,3191,2289),
(1,2,59,3314,2369),
(1,2,60,3984,2434),
(1,2,61,4126,2486),
(1,2,62,4274,2568),
(1,2,63,4422,2620),
(1,2,64,4572,2705),
(1,2,65,4731,2790),
(1,2,66,4892,2846),
(1,2,67,5060,2933),
(1,2,68,5233,2991),
(1,2,69,5409,3080),
(1,2,70,5589,3155),
(1,2,71,5744,3231),
(1,2,72,5900,3309),
(1,2,73,6070,3387),
(2,2,68,6986,2991),
(2,2,69,7984,3080),
(2,2,70,8982,3155),
(2,2,71,9291,3231),
(2,2,72,9610,3309),
(2,2,73,9940,3387),
(2,2,74,10282,3466),
(2,2,75,10635,3561),
(2,2,76,11001,3643),
(2,2,77,11379,3725),
(2,2,78,11770,3809),
(2,2,79,12175,3893),
(2,2,80,12600,3994),
(2,2,81,13033,4081),
(2,2,82,13481,4169),
(2,2,83,13945,4258),
(0,4,1,42,0),
(0,4,2,55,0),
(0,4,3,71,0),
(0,4,4,86,0),
(0,4,5,102,0),
(0,4,6,120,0),
(0,4,7,137,0),
(0,4,8,156,0),
(0,4,9,176,0),
(0,4,10,198,0),
(0,4,11,222,0),
(0,4,12,247,0),
(0,4,13,273,0),
(0,4,14,300,0),
(0,4,15,328,0),
(0,4,16,356,0),
(0,4,17,386,0),
(0,4,18,417,0),
(0,4,19,484,0),
(0,4,20,531,0),
(0,4,21,573,0),
(0,4,22,617,0),
(0,4,23,664,0),
(0,4,24,713,0),
(0,4,25,734,0),
(0,4,26,787,0),
(0,4,27,840,0),
(0,4,28,869,0),
(0,4,29,905,0),
(0,4,30,955,0),
(0,4,31,1006,0),
(0,4,32,1057,0),
(0,4,33,1110,0),
(0,4,34,1163,0),
(0,4,35,1220,0),
(0,4,36,1277,0),
(0,4,37,1336,0),
(0,4,38,1395,0),
(0,4,39,1459,0),
(0,4,40,1524,0),
(0,4,41,1585,0),
(0,4,42,1651,0),
(0,4,43,1716,0),
(0,4,44,1782,0),
(0,4,45,1848,0),
(0,4,46,1919,0),
(0,4,47,1990,0),
(0,4,48,2062,0),
(0,4,49,2138,0),
(0,4,50,2215,0),
(0,4,51,2292,0),
(0,4,52,2371,0),
(0,4,53,2453,0),
(0,4,54,2533,0),
(0,4,55,2614,0),
(0,4,56,2699,0),
(0,4,57,2784,0),
(0,4,58,2871,0),
(0,4,59,2961,0),
(0,4,60,3052,0),
(0,4,61,3186,0),
(0,4,62,3237,0),
(0,4,63,3331,0),
(0,4,64,0,0),
(0,4,65,3524,0),
(0,4,66,0,0),
(0,4,67,3728,0),
(0,4,68,3834,0),
(0,4,69,0,0),
(0,4,70,4050,0),
(0,4,71,4163,0),
(0,4,72,4278,0),
(0,4,73,0,0),
(0,4,74,0,0),
(0,4,75,4652,0),
(0,4,76,0,0),
(0,4,77,4916,0),
(0,4,78,5052,0),
(0,4,79,0,0),
(0,4,80,5342,0),
(0,4,81,5496,0),
(0,4,82,0,0),
(0,4,83,0,0),
(1,4,58,3989,0),
(1,4,59,4142,0),
(1,4,60,4979,0),
(1,4,61,5158,0),
(1,4,62,5341,0),
(1,4,63,5527,0),
(1,4,64,5715,0),
(1,4,65,5914,0),
(1,4,66,6116,0),
(1,4,67,6326,0),
(1,4,68,6542,0),
(1,4,69,6761,0),
(1,4,70,6986,0),
(1,4,71,7181,0),
(1,4,72,7380,0),
(1,4,73,7580,0),
(2,4,68,6986,0),
(2,4,69,7984,0),
(2,4,70,8982,0),
(2,4,71,9291,0),
(2,4,72,9610,0),
(2,4,73,9940,0),
(2,4,74,10282,0),
(2,4,75,10635,0),
(2,4,76,11001,0),
(2,4,77,11379,0),
(2,4,78,11770,0),
(2,4,79,12175,0),
(2,4,80,12600,0),
(2,4,81,13033,0),
(2,4,82,13481,0),
(2,4,83,13945,0),
(0,8,1,40,120),
(0,8,2,0,0),
(0,8,3,67,174),
(0,8,4,81,202),
(0,8,5,95,230),
(0,8,6,111,259),
(0,8,7,126,289),
(0,8,8,143,319),
(0,8,9,160,350),
(0,8,10,178,382),
(0,8,11,199,459),
(0,8,12,219,537),
(0,8,13,241,601),
(0,8,14,263,710),
(0,8,15,285,790),
(0,8,16,307,856),
(0,8,17,330,938),
(0,8,18,354,1020),
(0,8,19,379,1118),
(0,8,20,405,1202),
(0,8,21,432,1272),
(0,8,22,463,1357),
(0,8,23,494,1443),
(0,8,24,528,1545),
(0,8,25,562,1633),
(0,8,26,598,1707),
(0,8,27,633,1812),
(0,8,28,669,1977),
(0,8,29,704,2068),
(0,8,30,737,2175),
(0,8,31,770,2253),
(0,8,32,802,2362),
(0,8,33,835,2457),
(0,8,34,867,2553),
(0,8,35,902,2680),
(0,8,36,935,2763),
(0,8,37,970,2861),
(0,8,38,1004,2975),
(0,8,39,1040,3075),
(0,8,40,1077,3191),
(0,8,41,1110,3293),
(0,8,42,1156,3471),
(0,8,43,1201,3575),
(0,8,44,1247,3680),
(0,8,45,1294,3801),
(0,8,46,1343,3923),
(0,8,47,1393,4031),
(0,8,48,1443,4140),
(0,8,49,1497,4281),
(0,8,50,1551,4393),
(0,8,51,1604,4506),
(0,8,52,1660,4650),
(0,8,53,1717,4765),
(0,8,54,1773,4896),
(0,8,55,1830,5013),
(0,8,56,1889,5206),
(0,8,57,1949,5340),
(0,8,58,2010,5461),
(0,8,59,2073,5598),
(0,8,60,2136,5751),
(0,8,61,2201,5875),
(0,8,62,2266,6015),
(0,8,63,2332,6156),
(0,8,64,0,6229),
(0,8,65,2467,6443),
(0,8,66,0,6588),
(0,8,67,2610,6749),
(0,8,68,2684,6882),
(0,8,69,0,7031),
(0,8,70,2835,7196),
(0,8,71,2914,7332),
(0,8,72,2995,7500),
(0,8,73,0,7654),
(0,8,74,0,7809),
(0,8,75,3257,7981),
(0,8,76,0,8139),
(0,8,77,0,8313),
(0,8,78,0,8459),
(0,8,79,0,8636),
(0,8,80,0,8814),
(0,8,81,0,8979),
(0,8,82,0,9160),
(0,8,83,0,9325),
(1,8,58,2793,5461),
(1,8,59,2899,5598),
(1,8,60,3484,5751),
(1,8,61,3611,5875),
(1,8,62,3739,6015),
(1,8,63,3870,6156),
(1,8,64,4000,6229),
(1,8,65,4140,6443),
(1,8,66,4281,6588),
(1,8,67,4429,6749),
(1,8,68,4580,6882),
(1,8,69,4733,7031),
(1,8,70,4890,7196),
(1,8,71,5027,7332),
(1,8,72,5166,7500),
(1,8,73,5311,7654),
(2,8,68,5588,6882),
(2,8,69,6387,7031),
(2,8,70,7185,7196),
(2,8,71,7432,7332),
(2,8,72,7688,7500),
(2,8,73,7952,7654),
(2,8,74,8225,7809),
(2,8,75,8508,7981),
(2,8,76,8800,8139),
(2,8,77,9103,8313),
(2,8,78,9416,8459),
(2,8,79,9740,8636),
(2,8,80,10080,8814),
(2,8,81,10486,8979),
(2,8,82,10784,9160),
(2,8,83,11156,9325);