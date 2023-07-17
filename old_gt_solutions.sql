-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 05:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `old_gt_solutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `pago_mensual`
--

CREATE TABLE `pago_mensual` (
  `id_pago` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `fecha_corte` date DEFAULT NULL,
  `abono` double DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `saldo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `pago_mensual`
--

INSERT INTO `pago_mensual` (`id_pago`, `id_cliente`, `fecha_pago`, `fecha_corte`, `abono`, `monto`, `saldo`) VALUES
(1, 915, '2023-07-31', NULL, 0, 0, 0),
(2, 916, '2023-07-31', NULL, 0, 0, 0),
(3, 917, '2023-07-31', NULL, 0, 0, 0),
(4, 918, '2023-07-31', NULL, 0, 0, 0),
(5, 919, '2023-07-31', NULL, 0, 0, 0),
(6, 920, '2023-07-31', NULL, 0, 0, 0),
(7, 921, '2023-07-31', NULL, 0, 0, 0),
(8, 922, '2023-07-31', NULL, 0, 0, 0),
(9, 923, '2023-07-31', NULL, 0, 0, 0),
(10, 924, '2023-07-31', NULL, 0, 0, 0),
(11, 925, '2023-07-31', NULL, 0, 0, 0),
(12, 926, '2023-07-31', NULL, 0, 0, 0),
(13, 927, '2023-07-31', NULL, 0, 0, 0),
(14, 928, '2023-07-31', NULL, 0, 0, 0),
(15, 929, '2023-07-31', NULL, 0, 0, 0),
(16, 930, '2023-07-31', NULL, 0, 0, 0),
(17, 931, '2023-07-31', NULL, 0, 0, 0),
(18, 932, '2023-07-31', NULL, 0, 0, 0),
(19, 933, '2023-07-31', NULL, 0, 0, 0),
(20, 934, '2023-07-31', NULL, 0, 0, 0),
(21, 935, '2023-07-31', NULL, 0, 0, 0),
(22, 936, '2023-07-31', NULL, 0, 0, 0),
(23, 937, '2023-07-31', NULL, 0, 0, 0),
(24, 938, '2023-07-31', NULL, 0, 0, 0),
(25, 939, '2023-07-31', NULL, 0, 0, 0),
(26, 940, '2023-07-31', NULL, 0, 0, 0),
(27, 941, '2023-07-31', NULL, 0, 0, 0),
(28, 942, '2023-07-31', NULL, 0, 0, 0),
(29, 943, '2023-07-31', NULL, 0, 0, 0),
(30, 944, '2023-07-31', NULL, 0, 0, 0),
(31, 945, '2023-07-31', NULL, 0, 0, 0),
(32, 946, '2023-07-31', NULL, 0, 0, 0),
(33, 947, '2023-07-31', NULL, 0, 0, 0),
(34, 948, '2023-07-31', NULL, 0, 0, 0),
(35, 949, '2023-07-31', NULL, 0, 0, 0),
(36, 950, '2023-07-31', NULL, 0, 0, 0),
(37, 951, '2023-07-31', NULL, 0, 0, 0),
(38, 952, '2023-07-31', NULL, 0, 0, 0),
(39, 953, '2023-07-31', NULL, 0, 0, 0),
(40, 954, '2023-07-31', NULL, 0, 0, 0),
(41, 955, '2023-07-31', NULL, 0, 0, 0),
(42, 956, '2023-07-31', NULL, 0, 0, 0),
(43, 957, '2023-07-31', NULL, 0, 0, 0),
(44, 958, '2023-07-31', NULL, 0, 0, 0),
(45, 959, '2023-07-31', NULL, 0, 0, 0),
(46, 960, '2023-07-31', NULL, 0, 0, 0),
(47, 961, '2023-07-31', NULL, 0, 0, 0),
(48, 962, '2023-07-31', NULL, 0, 0, 0),
(49, 963, '2023-07-31', NULL, 0, 0, 0),
(50, 964, '2023-07-31', NULL, 0, 0, 0),
(51, 965, '2023-07-31', NULL, 0, 0, 0),
(52, 966, '2023-07-31', NULL, 0, 0, 0),
(53, 967, '2023-07-31', NULL, 0, 0, 0),
(54, 968, '2023-07-31', NULL, 0, 0, 0),
(55, 969, '2023-07-31', NULL, 0, 0, 0),
(56, 970, '2023-07-31', NULL, 0, 0, 0),
(57, 971, '2023-07-31', NULL, 0, 0, 0),
(58, 972, '2023-07-31', NULL, 0, 0, 0),
(59, 973, '2023-07-31', NULL, 0, 0, 0),
(60, 974, '2023-07-31', NULL, 0, 0, 0),
(61, 975, '2023-07-31', NULL, 0, 0, 0),
(62, 976, '2023-07-31', NULL, 0, 0, 0),
(63, 977, '2023-07-31', NULL, 0, 0, 0),
(64, 978, '2023-07-31', NULL, 0, 0, 0),
(65, 979, '2023-07-31', NULL, 0, 0, 0),
(66, 980, '2023-07-31', NULL, 0, 0, 0),
(67, 981, '2023-07-31', NULL, 0, 0, 0),
(68, 982, '2023-07-31', NULL, 0, 0, 0),
(69, 983, '2023-07-31', NULL, 0, 0, 0),
(70, 984, '2023-07-31', NULL, 0, 0, 0),
(71, 985, '2023-07-31', NULL, 0, 0, 0),
(72, 986, '2023-07-31', NULL, 0, 0, 0),
(73, 987, '2023-07-31', NULL, 0, 0, 0),
(74, 988, '2023-07-31', NULL, 0, 0, 0),
(75, 989, '2023-07-31', NULL, 0, 0, 0),
(76, 990, '2023-07-31', NULL, 0, 0, 0),
(77, 991, '2023-07-31', NULL, 0, 0, 0),
(78, 992, '2023-07-31', NULL, 0, 0, 0),
(79, 993, '2023-07-31', NULL, 0, 0, 0),
(80, 994, '2023-07-31', NULL, 0, 0, 0),
(81, 995, '2023-07-31', NULL, 0, 0, 0),
(82, 996, '2023-07-31', NULL, 0, 0, 0),
(83, 997, '2023-07-31', NULL, 0, 0, 0),
(84, 998, '2023-07-31', NULL, 0, 0, 0),
(85, 999, '2023-07-31', NULL, 0, 0, 0),
(86, 1000, '2023-07-31', NULL, 0, 0, 0),
(87, 1001, '2023-07-31', NULL, 0, 0, 0),
(88, 1002, '2023-07-31', NULL, 0, 0, 0),
(89, 1003, '2023-07-31', NULL, 0, 0, 0),
(90, 1004, '2023-07-31', NULL, 0, 0, 0),
(91, 1005, '2023-07-31', NULL, 0, 0, 0),
(92, 1006, '2023-07-31', NULL, 0, 0, 0),
(93, 1007, '2023-07-31', NULL, 0, 0, 0),
(94, 1008, '2023-07-31', NULL, 0, 0, 0),
(95, 1009, '2023-07-31', NULL, 0, 0, 0),
(96, 1010, '2023-07-31', NULL, 0, 0, 0),
(97, 1011, '2023-07-31', NULL, 0, 0, 0),
(98, 1012, '2023-07-31', NULL, 0, 0, 0),
(99, 1013, '2023-07-31', NULL, 0, 0, 0),
(100, 1014, '2023-07-31', NULL, 0, 0, 0),
(101, 1015, '2023-07-31', NULL, 0, 0, 0),
(102, 1016, '2023-07-31', NULL, 0, 0, 0),
(103, 1017, '2023-07-31', NULL, 0, 0, 0),
(104, 1018, '2023-07-31', NULL, 0, 0, 0),
(105, 1019, '2023-07-31', NULL, 0, 0, 0),
(106, 1020, '2023-07-31', NULL, 0, 0, 0),
(107, 1021, '2023-07-31', NULL, 0, 0, 0),
(108, 1022, '2023-07-31', NULL, 0, 0, 0),
(109, 1023, '2023-07-31', NULL, 0, 0, 0),
(110, 1024, '2023-07-31', NULL, 0, 0, 0),
(111, 1025, '2023-07-31', NULL, 0, 0, 0),
(112, 1026, '2023-07-31', NULL, 0, 0, 0),
(113, 1027, '2023-07-31', NULL, 0, 0, 0),
(114, 1028, '2023-07-31', NULL, 0, 0, 0),
(115, 1029, '2023-07-31', NULL, 0, 0, 0),
(116, 1030, '2023-07-31', NULL, 0, 0, 0),
(117, 1031, '2023-07-31', NULL, 0, 0, 0),
(118, 1032, '2023-07-31', NULL, 0, 0, 0),
(119, 1033, '2023-07-31', NULL, 0, 0, 0),
(120, 1034, '2023-07-31', NULL, 0, 0, 0),
(121, 1035, '2023-07-31', NULL, 0, 0, 0),
(122, 1036, '2023-07-31', NULL, 0, 0, 0),
(123, 1037, '2023-07-31', NULL, 0, 0, 0),
(124, 1038, '2023-07-31', NULL, 0, 0, 0),
(125, 1039, '2023-07-31', NULL, 0, 0, 0),
(126, 1040, '2023-07-31', NULL, 0, 0, 0),
(127, 1041, '2023-07-31', NULL, 0, 0, 0),
(128, 1042, '2023-07-31', NULL, 0, 0, 0),
(129, 1043, '2023-07-31', NULL, 0, 0, 0),
(130, 1044, '2023-07-31', NULL, 0, 0, 0),
(131, 1045, '2023-07-31', NULL, 0, 0, 0),
(132, 1046, '2023-07-31', NULL, 0, 0, 0),
(133, 1047, '2023-07-31', NULL, 0, 0, 0),
(134, 1048, '2023-07-31', NULL, 0, 0, 0),
(135, 1049, '2023-07-31', NULL, 0, 0, 0),
(136, 1050, '2023-07-31', NULL, 0, 0, 0),
(137, 1051, '2023-07-31', NULL, 0, 0, 0),
(138, 1052, '2023-07-31', NULL, 0, 0, 0),
(139, 1053, '2023-07-31', NULL, 0, 0, 0),
(140, 1054, '2023-07-31', NULL, 0, 0, 0),
(141, 1055, '2023-07-31', NULL, 0, 0, 0),
(142, 1056, '2023-07-31', NULL, 0, 0, 0),
(143, 1057, '2023-07-31', NULL, 0, 0, 0),
(144, 1058, '2023-07-31', NULL, 0, 0, 0),
(145, 1059, '2023-07-31', NULL, 0, 0, 0),
(146, 1060, '2023-07-31', NULL, 0, 0, 0),
(147, 1061, '2023-07-31', NULL, 0, 0, 0),
(148, 1062, '2023-07-31', NULL, 0, 0, 0),
(149, 1063, '2023-07-31', NULL, 0, 0, 0),
(150, 1064, '2023-07-31', NULL, 0, 0, 0),
(151, 1065, '2023-07-31', NULL, 0, 0, 0),
(152, 1066, '2023-07-31', NULL, 0, 0, 0),
(153, 1067, '2023-07-31', NULL, 0, 0, 0),
(154, 1068, '2023-07-31', NULL, 0, 0, 0),
(155, 1069, '2023-07-31', NULL, 0, 0, 0),
(156, 1070, '2023-07-31', NULL, 0, 0, 0),
(157, 1071, '2023-07-31', NULL, 0, 0, 0),
(158, 1072, '2023-07-31', NULL, 0, 0, 0),
(159, 1073, '2023-07-31', NULL, 0, 0, 0),
(160, 1074, '2023-07-31', NULL, 0, 0, 0),
(161, 1075, '2023-07-31', NULL, 0, 0, 0),
(162, 1076, '2023-07-31', NULL, 0, 0, 0),
(163, 1077, '2023-07-31', NULL, 0, 0, 0),
(164, 1078, '2023-07-31', NULL, 0, 0, 0),
(165, 1079, '2023-07-31', NULL, 0, 0, 0),
(166, 1080, '2023-07-31', NULL, 0, 0, 0),
(167, 1081, '2023-07-31', NULL, 0, 0, 0),
(168, 1082, '2023-07-31', NULL, 0, 0, 0),
(169, 1083, '2023-07-31', NULL, 0, 0, 0),
(170, 1084, '2023-07-31', NULL, 0, 0, 0),
(171, 1085, '2023-07-31', NULL, 0, 0, 0),
(172, 1086, '2023-07-31', NULL, 0, 0, 0),
(173, 1087, '2023-07-31', NULL, 0, 0, 0),
(174, 1088, '2023-07-31', NULL, 0, 0, 0),
(175, 1089, '2023-07-31', NULL, 0, 0, 0),
(176, 1090, '2023-07-31', NULL, 0, 0, 0),
(177, 1091, '2023-07-31', NULL, 0, 0, 0),
(178, 1092, '2023-07-31', NULL, 0, 0, 0),
(179, 1093, '2023-07-31', NULL, 0, 0, 0),
(180, 1094, '2023-07-31', NULL, 0, 0, 0),
(181, 1095, '2023-07-31', NULL, 0, 0, 0),
(182, 1096, '2023-07-31', NULL, 0, 0, 0),
(183, 1097, '2023-07-31', NULL, 0, 0, 0),
(184, 1098, '2023-07-31', NULL, 0, 0, 0),
(185, 1099, '2023-07-31', NULL, 0, 0, 0),
(186, 1100, '2023-07-31', NULL, 0, 0, 0),
(187, 1101, '2023-07-31', NULL, 0, 0, 0),
(188, 1102, '2023-07-31', NULL, 0, 0, 0),
(189, 1103, '2023-07-31', NULL, 0, 0, 0),
(190, 1104, '2023-07-31', NULL, 0, 0, 0),
(191, 1105, '2023-07-31', NULL, 0, 0, 0),
(192, 1106, '2023-07-31', NULL, 0, 0, 0),
(193, 1107, '2023-07-31', NULL, 0, 0, 0),
(194, 1108, '2023-07-31', NULL, 0, 0, 0),
(195, 1109, '2023-07-31', NULL, 0, 0, 0),
(196, 1110, '2023-07-31', NULL, 0, 0, 0),
(197, 1111, '2023-07-31', NULL, 0, 0, 0),
(198, 1112, '2023-07-31', NULL, 0, 0, 0),
(199, 1113, '2023-07-31', NULL, 0, 0, 0),
(200, 1114, '2023-07-31', NULL, 0, 0, 0),
(201, 1115, '2023-07-31', NULL, 0, 0, 0),
(202, 1116, '2023-07-31', NULL, 0, 0, 0),
(203, 1117, '2023-07-31', NULL, 0, 0, 0),
(204, 1118, '2023-07-31', NULL, 0, 0, 0),
(205, 1119, '2023-07-31', NULL, 0, 0, 0),
(206, 1120, '2023-07-31', NULL, 0, 0, 0),
(207, 1121, '2023-07-31', NULL, 0, 0, 0),
(208, 1122, '2023-07-31', NULL, 0, 0, 0),
(209, 1123, '2023-07-31', NULL, 0, 0, 0),
(210, 1124, '2023-07-31', NULL, 0, 0, 0),
(211, 1125, '2023-07-31', NULL, 0, 0, 0),
(212, 1126, '2023-07-31', NULL, 0, 0, 0),
(213, 1127, '2023-07-31', NULL, 0, 0, 0),
(214, 1128, '2023-07-31', NULL, 0, 0, 0),
(215, 1129, '2023-07-31', NULL, 0, 0, 0),
(216, 1130, '2023-07-31', NULL, 0, 0, 0),
(217, 1131, '2023-07-31', NULL, 0, 0, 0),
(218, 1132, '2023-07-31', NULL, 0, 0, 0),
(219, 1133, '2023-07-31', NULL, 0, 0, 0),
(220, 1134, '2023-07-31', NULL, 0, 0, 0),
(221, 1135, '2023-07-31', NULL, 0, 0, 0),
(222, 1136, '2023-07-31', NULL, 0, 0, 0),
(223, 1137, '2023-07-31', NULL, 0, 0, 0),
(224, 1138, '2023-07-31', NULL, 0, 0, 0),
(225, 1139, '2023-07-31', NULL, 0, 0, 0),
(226, 1140, '2023-07-31', NULL, 0, 0, 0),
(227, 1141, '2023-07-31', NULL, 0, 0, 0),
(228, 1142, '2023-07-31', NULL, 0, 0, 0),
(229, 1143, '2023-07-31', NULL, 0, 0, 0),
(230, 1144, '2023-07-31', NULL, 0, 0, 0),
(231, 1145, '2023-07-31', NULL, 0, 0, 0),
(232, 1146, '2023-07-31', NULL, 0, 0, 0),
(233, 1147, '2023-07-31', NULL, 0, 0, 0),
(234, 1148, '2023-07-31', NULL, 0, 0, 0),
(235, 1149, '2023-07-31', NULL, 0, 0, 0),
(236, 1150, '2023-07-31', NULL, 0, 0, 0),
(237, 1151, '2023-07-31', NULL, 0, 0, 0),
(238, 1152, '2023-07-31', NULL, 0, 0, 0),
(239, 1153, '2023-07-31', NULL, 0, 0, 0),
(240, 1154, '2023-07-31', NULL, 0, 0, 0),
(241, 1155, '2023-07-31', NULL, 0, 0, 0),
(242, 1156, '2023-07-31', NULL, 0, 0, 0),
(243, 1157, '2023-07-31', NULL, 0, 0, 0),
(244, 1158, '2023-07-31', NULL, 0, 0, 0),
(245, 1159, '2023-07-31', NULL, 0, 0, 0),
(246, 1160, '2023-07-31', NULL, 0, 0, 0),
(247, 1161, '2023-07-31', NULL, 0, 0, 0),
(248, 1162, '2023-07-31', NULL, 0, 0, 0),
(249, 1163, '2023-07-31', NULL, 0, 0, 0),
(250, 1164, '2023-07-31', NULL, 0, 0, 0),
(251, 1165, '2023-07-31', NULL, 0, 0, 0),
(252, 1166, '2023-07-31', NULL, 0, 0, 0),
(253, 1167, '2023-07-31', NULL, 0, 0, 0),
(254, 1168, '2023-07-31', NULL, 0, 0, 0),
(255, 1169, '2023-07-31', NULL, 0, 0, 0),
(256, 1170, '2023-07-31', NULL, 0, 0, 0),
(257, 1171, '2023-07-31', NULL, 0, 0, 0),
(258, 1172, '2023-07-31', NULL, 0, 0, 0),
(259, 1173, '2023-07-31', NULL, 0, 0, 0),
(260, 1174, '2023-07-31', NULL, 0, 0, 0),
(261, 1175, '2023-07-31', NULL, 0, 0, 0),
(262, 1176, '2023-07-31', NULL, 0, 0, 0),
(263, 1177, '2023-07-31', NULL, 0, 0, 0),
(264, 1178, '2023-07-31', NULL, 0, 0, 0),
(265, 1179, '2023-07-31', NULL, 0, 0, 0),
(266, 1180, '2023-07-31', NULL, 0, 0, 0),
(267, 1181, '2023-07-31', NULL, 0, 0, 0),
(268, 1182, '2023-07-31', NULL, 0, 0, 0),
(269, 1183, '2023-07-31', NULL, 0, 0, 0),
(270, 1184, '2023-07-31', NULL, 0, 0, 0),
(271, 1185, '2023-07-31', NULL, 0, 0, 0),
(272, 1186, '2023-07-31', NULL, 0, 0, 0),
(273, 1187, '2023-07-31', NULL, 0, 0, 0),
(274, 1188, '2023-07-31', NULL, 0, 0, 0),
(275, 1189, '2023-07-31', NULL, 0, 0, 0),
(276, 1190, '2023-07-31', NULL, 0, 0, 0),
(277, 1191, '2023-07-31', NULL, 0, 0, 0),
(278, 1192, '2023-07-31', NULL, 0, 0, 0),
(279, 1193, '2023-07-31', NULL, 0, 0, 0),
(280, 1194, '2023-07-31', NULL, 0, 0, 0),
(281, 1195, '2023-07-31', NULL, 0, 0, 0),
(282, 1196, '2023-07-31', NULL, 0, 0, 0),
(283, 1197, '2023-07-31', NULL, 0, 0, 0),
(284, 1198, '2023-07-31', NULL, 0, 0, 0),
(285, 1199, '2023-07-31', NULL, 0, 0, 0),
(286, 1200, '2023-07-31', NULL, 0, 0, 0),
(287, 1201, '2023-07-31', NULL, 0, 0, 0),
(288, 1202, '2023-07-31', NULL, 0, 0, 0),
(289, 1203, '2023-07-31', NULL, 0, 0, 0),
(290, 1204, '2023-07-31', NULL, 0, 0, 0),
(291, 1205, '2023-07-31', NULL, 0, 0, 0),
(292, 1206, '2023-07-31', NULL, 0, 0, 0),
(293, 1207, '2023-07-31', NULL, 0, 0, 0),
(294, 1208, '2023-07-31', NULL, 0, 0, 0),
(295, 1209, '2023-07-31', NULL, 0, 0, 0),
(296, 1210, '2023-07-31', NULL, 0, 0, 0),
(297, 1211, '2023-07-31', NULL, 0, 0, 0),
(298, 1212, '2023-07-31', NULL, 0, 0, 0),
(299, 1213, '2023-07-31', NULL, 0, 0, 0),
(300, 1214, '2023-07-31', NULL, 0, 0, 0),
(301, 1215, '2023-07-31', NULL, 0, 0, 0),
(302, 1216, '2023-07-31', NULL, 0, 0, 0),
(303, 1217, '2023-07-31', NULL, 0, 0, 0),
(304, 1218, '2023-07-31', NULL, 0, 0, 0),
(305, 1219, '2023-07-31', NULL, 0, 0, 0),
(306, 1220, '2023-07-31', NULL, 0, 0, 0),
(307, 1221, '2023-07-31', NULL, 0, 0, 0),
(308, 1222, '2023-07-31', NULL, 0, 0, 0),
(309, 1223, '2023-07-31', NULL, 0, 0, 0),
(310, 1224, '2023-07-31', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `precio_residencial`
--

CREATE TABLE `precio_residencial` (
  `id_precio` int(11) NOT NULL,
  `velocidad` int(11) DEFAULT NULL,
  `precio` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `precio_residencial`
--

INSERT INTO `precio_residencial` (`id_precio`, `velocidad`, `precio`) VALUES
(1, 2, 15000),
(2, 3, 20000),
(3, 4, 25900),
(4, 10, 29900),
(5, 15, 35000),
(6, 20, 39900),
(7, 30, 49900),
(8, 50, 59900),
(9, 100, 69900);

-- --------------------------------------------------------

--
-- Table structure for table `tblcliente`
--

CREATE TABLE `tblcliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `velocidad_contratada` int(11) DEFAULT NULL,
  `numero_contrato` varchar(255) DEFAULT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `contrasena_ppoe` varchar(255) DEFAULT NULL,
  `equipo_1` varchar(255) DEFAULT NULL,
  `mac_address_1` varchar(255) DEFAULT NULL,
  `equipo_2` varchar(255) DEFAULT NULL,
  `mac_address_2` varchar(255) DEFAULT NULL,
  `equipo_3` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `wifi_nombre` varchar(255) DEFAULT NULL,
  `wifi_contrasena` varchar(255) DEFAULT NULL,
  `sector_anclado` varchar(255) DEFAULT NULL,
  `cedula` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `id_tipo_cliente` int(11) NOT NULL,
  `fecha_instalacion` date DEFAULT NULL,
  `monto_instalacion` double NOT NULL DEFAULT 0,
  `mensualidad` double NOT NULL DEFAULT 0,
  `TMU` int(11) DEFAULT NULL,
  `numero_facturacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tblcliente`
--

INSERT INTO `tblcliente` (`id_cliente`, `nombre_cliente`, `telefono`, `localidad`, `velocidad_contratada`, `numero_contrato`, `coordenadas`, `contrasena_ppoe`, `equipo_1`, `mac_address_1`, `equipo_2`, `mac_address_2`, `equipo_3`, `serie`, `wifi_nombre`, `wifi_contrasena`, `sector_anclado`, `cedula`, `correo`, `id_tipo_cliente`, `fecha_instalacion`, `monto_instalacion`, `mensualidad`, `TMU`, `numero_facturacion`) VALUES
(915, 'Luis Orlando Rojas', '8640-3282', 'Los Angeles', 10, '20201201', '10.078495, -85.393794', 'ZK7sRxuZ', 'NBE-5AC-Gen2', 'E063DAF205E9', 'hAP ac lite', '48:8F:5A:BF:67:4B/42', 'ETH-SP-G2', '20044104612', 'Orlando', 'Dylan2009', 'GT1', '', '', 3, '0000-00-00', 0, 0, 0, 0),
(916, 'Royner Rodriguez Castro', '8462-0817', 'Los Angeles', 10, '20201202', '10.075522, -85.395664', 'HZVddU7j', 'NBE-5AC-Gen2', 'E063DAF20B08', 'hAP ac lite', '48:8F:5A:BF:68:4D/53', 'ETH-SP-G2', '20044104643', 'Dj profe', 'Dajo2728', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(917, 'Osvaldo Sibaja Soto', '8413-1820', 'Los Angeles', 6, '20201203', '10.077236, -85.395953', 'eZJTXo83', 'LBE-5AC-Gen2', NULL, 'hAP ac lite', '48:8F:5A:BF:68:F8/FE', 'ETH-SP-G2', '20044104626', 'Familia Sibaja Blanco', 'mase2626', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(918, 'Walter Cruz Fonseca', '8345-7587', 'Los Angeles', 10, '20201204', '10.077117, -85.395427', 'MvP9Ng7i', 'NBE-5AC-Gen2', 'E063DAF20A4A', 'hAP ac lite', '48:8F:5A:BF:67:90/96', 'ETH-SP-G2', NULL, 'Familia Cruz Cruz', 'Ailana1820', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(919, 'Maria Eugenia Castro Villalobos', '8812-5847', 'Los Angeles', 6, '20201205', '10.07577, -85.396372', 'aTO3PkyY', 'NBE-5AC-Gen2', 'E063DAF20B3E', 'hAP ac lite', '48:8F:5A:BF:66:F9/FF', 'ETH-SP-G2', '20044104664', 'Lic. M eugenia', 'maru2608', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(920, 'Jorge Brayan Sandoval Vega', '8698-2661', 'Los Angeles', 6, '20201206', '10.076816, -85.396693', 'GbKa4HmY', 'LBE-5AC-Gen2', '24:5A:4C:B4:79:64', 'hAP lite', 'DC:2C:6E:61:CB:78', 'ETH-SP-G2', '21074123508', 'MILO', '2518161714', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(921, 'Maria De los Angeles Esquivel', '8924-7821', 'Los Angeles', 10, '20201207', '10.077003, -85.395554', 'x4U8NwWj', 'LBE-5AC-Gen2', '68:D7:9A:A8:50:D3', 'hAP ac lite', '48:8F:5A:BF:66:AA/B0', 'ETH-SP-G2', '20044104602', 'Esquivel', 'Coco1234', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(922, 'Yesenia Gonzalez Vargas', '8512-9170', 'Pita rayada', 10, '20201208', '10.038719, -85.383191', 'iA1MoPSY', 'LBE-M5-23', '74ACB9F2B2A8', 'hAP ac lite', '48:8F:5A:BF:68:16/1C', 'ETH-SP-G2', NULL, 'Familia Gonzalez Vargas', 'recarguenlimpios', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(923, 'Enid Venegas Acosta', '8916-9987', 'Los Angeles', 10, '20201209', '10.079589, -85.383626', 'tJwJ3UYL', 'NBE-5AC-Gen2', 'E063DAF2061E', 'CISCO ', 'E89F800389F1', 'ETH-SP-G2', '20044103809', 'Vecosta', 'Meva4850', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(924, 'Miguel Angel Mendoza Perez', '2659-9321', 'Los Angeles', 10, '20201210', '10.078379, -85.393137', 'akK9LIQ3', 'NBE-5AC-Gen2', 'E0:63:DA:F2:04:D0', 'hAP mini', '48:8F:5A:BF:67:9E/A4', 'ETH-SP-G2', NULL, 'Familia Mendoza', 'Familiamendoza2020', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(925, 'Christian Carrillo Torres', '8832-4526', 'Los Angeles', 20, '20210101', '10.075202, -85.393416', 'tgbgxa3N', 'NBE-5AC-Gen2', 'E063DAD45580', 'hAP lite', '08:55:31:14:14:4F/54', 'ETH-SP-G2', '20044104634', 'Casa Abelina', '123queso', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(926, 'Cristian Vega Carrillo', '6070-0590', 'Pita rayada', 6, '20210102', '10.042111, -85.386683', 'pwXvpJ4F', 'LBE-5AC-Gen2', '68:D7:9A:B2:39:AE', 'hAP lite', 'DC:2C:6E:04:52:FD/02', 'ETH-SP-G2', '20044123097', 'FBC', 'Perla2003', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(927, 'Maikol Vargas Carrillo', '8440-9535', 'Pita rayada', 20, '20210103', '10.039538, -85.383594', 'WVRuWoc1', 'LBE-M5-23', '74ACB9F2B2A9', 'hAP lite\r\nhAp mini', '08:55:31:16:10:CA/CF\r\n08:55:31:66:F5:A3/A7', 'ETH-SP-G2', NULL, 'Familia Vargas Carrillo', '*vargas2002*\r\nJimenezvar20', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(928, 'Rosa Irene Castillo Alfaro', '8430-7777', 'El Ceiba', 6, '20210104', 'nan', '0bt0UMvj', 'NBE-5AC-Gen2', 'E063DAD45512', 'hAP lite', '08:55:31:14:1D:2A/2F', 'ETH-SP-G2', NULL, 'Familia Alfaro', '26598194', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(929, 'Francisco Mesen Fernandez', '8313-1247', 'Pita rayada', 6, '20210105', '10.036105, -85.38759', 'uykD2hPj', 'NANO LOCO', '24:5A:4C:34:45:3B', 'hAP lite', 'DC:2C:6E:04:53:9B', 'ETH-SP-G2', '20044104612', 'Cascabel', 'Cscbl1999!', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(930, 'Blanca Rosa Venegas ENID', '8526-0091', 'Los Angeles', 10, '20210106', '10.079589, -85.383626', '4k5c7CpR', 'NBE-5AC-Gen2', 'E063DAF2061E', 'hAP lite', '08:55:31:16:0E:D7:DC', 'ETH-SP-G2', NULL, 'INTERNET CASA', 'M*VZ%g36&B$n', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(931, 'Luigi Pellegrini ', '8416-4360', 'Pita rayada', 6, '20210107', '10.036723, -85.385772', 'bhAmFbN1', 'LBE-M5-23', '74ACB9F2B453', 'hAP lite', '08:55:31:71:0b:E3/E8', 'ETH-SP-G2', NULL, 'Luigi', 'luip2053', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(932, 'Magaly Castillo Castillo', '8486-7963', 'Pita rayada', 6, '20210108', '10.0363, -85.386855', 'zj27EfA7', 'LBE-5AC-Gen2', 'F492BF4222F8', 'hAP lite', '2C:C8:1B:DC:C5:80:85', 'ETH-SP-G2', NULL, 'Castillo', 'Mari2430', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(933, 'Emilce Camacho Arquiar', '8604-0074', 'Huacas', 6, '20210109', '10.023245, -85.356216', 'Ggc719F7', 'NBE-5AC-Gen2', 'E063DAF20639', 'hAP mini', '08:55:31:65:8B:6D/r2', 'ETH-SP-G2', '20074113709', 'Barboza Camacho', 'BarbozA2000*', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(934, 'Gina Sandoval', '6101-0096', 'Pilangosta', 6, '20210110', '10.032378, -85.409761', 'jdp8IV0Z', 'NBE-5AC-Gen2', 'E063DAD0C018', 'hAP mini', '08:55:31:65:8D:31/35', 'ETH-SP-G2', '20074113845', 'Familia Sandoval Perez', 'facape2021', 'GT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(935, 'Leydi Carrillo cortes', '84703211', 'Pita rayada', 10, '20210111', '10.042892, -85.386351', 'A3ZikDAp', 'LBE-M5-23', '74ACB9F2B0F2', 'hAP mini', '08:55:31:65:88:4D/51', 'ETH-SP-G2', '20044104645', 'Familia Cortes Vega', '19971993', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(936, 'Jennifer Carrillo Picado', '8681-2337', 'Pita rayada', 10, '20210112', '10.043642, -85.387284', 'b6Pv1mPe', 'NBE-5AC-Gen2', 'E063DAD0BF98', 'hAP lite', '08:55:31:14:24:60/65', 'ETH-SP-G2', '20044104619', 'Familia Carrillo Picado', '0199937368.', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(937, 'Antony Elizondo Hernandez', '8498-0782', 'Pita rayada', 10, '20210113', '10.042882, -85.386941', 'nDE59umC', 'LBE-M5-23', '74ACB9F2851D', 'hAP lite', '08:55:31:14:24:CA/CF', 'ETH-SP-G2', '20044103925', 'Familia Elizondo Hernandez', 'Colo2018', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(938, 'Mercedes Vasquez Rodriguez', '8925-3271', 'Huacas', 10, '20210114', '10.029055, -85.367779', '6AthZvpI', 'LBE-M5-23', '74ACB9F2B0AF', 'hAP lite', '08:55:31:73:A7:73/78', 'ETH-SP-G2', '20044103963', 'Familia Chacon Vasques ', '17112308', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(939, 'Alejandra Lara Vasquez', '8370-1198', 'Los Angeles', 6, '20210115', '10.079977, -85.388486', 'Z687cFsj', 'NBE-5AC-Gen2', 'E063EDAF20B3F', 'hAP lite\r\nhAP mini', '08:55:31:14:24:D0/D5\r\n08:55:31:65:90:E4:/E8', 'ETH-SP-G2', '20044103967', 'Finca el Angel\r\nMathias', 'alejandra1984\r\nalev1984', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(940, 'Roger Cuesta Grande', 'REGALIA', 'Cuesta Grande', 3, '20210116', '10.002075, -85.512481', 'UIAkn43s', 'LBE-5AC-Gen2', '68:D7:9A:B2:3C:C5', NULL, NULL, NULL, NULL, NULL, NULL, 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(941, 'Keiryn Iveth Venegas Rodriguez', '8520-4255', 'Los Angeles', 10, '20210117', '10.077695, -85.394178', 'TO5hVu2v', 'NBE-5AC-Gen2', 'E0:63:DA:F2:07:95', 'hAP lite', '08:55:31:71:0C:97/9C', 'ETH-SP-G2', '20044104211', 'Familia Venegas B.', 'Fwkam849', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(942, 'Dennis Vargas Ag�ero', '6006-0845', 'Pita rayada', 6, '20210118', '10.043473, -85.386882', 'AvrqzG3j', 'NBE-5AC-Gen2', 'E063DAD0BF98', 'hAP mini', '08:55:31:67:00:44/48', NULL, NULL, 'Familia Vargas', 'DeVaAg1991!', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(943, 'Katiana Esquivel Venegas', '8707-9129', 'Los Angeles', 10, '20210119', '10.077141, -85.396854', 'SrMax1ph', 'NBE-5AC-Gen2', 'E063DAF205ED', 'hAP lite', '08:55:31:73:A4:2F/34', 'ETH-SP-G2', '20044103826', 'SKE', 'sdxc4567', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(944, 'Diego Castro', '8367-2326', 'Los Angeles', 6, '20210120', '10.077141, -85.396854', 'OtrRJUF9', 'NBE-5AC-Gen2', 'E063DAF205ED', 'hAP lite', '08:55:31:71:0C:30/35', NULL, NULL, 'Casa DKS', 'luna4393', 'GT1', NULL, NULL, 3, NULL, 0, 0, 127, 1031),
(945, 'Israel Retana', '7093-0626', 'Pita rayada', 3, '20210121', '10.048338, -85.388556', 'XupVr8tz', 'NBE-5AC-Gen2', 'E063DAD0C1EA', 'hAP mini', '08:55:31:65:8E:A8/AC', 'ETH-SP-G2', '20074113879', 'INALI', 'corrales2020', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(946, 'Jairo Carrillo Gomez', '8399-7934', 'Huacas', 10, '20210122', '10.021417, -85.363563', 'J7ob2yYK', 'NBE-5AC-Gen2', 'E063DA969D71', 'hAP mini', '08:55:31:65:8D:02/06', 'ETH-SP-G2', '20074113843', 'Familia Carrillo Gomez', 'Isai/2020', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(947, 'Escuela Los Angeles', '8536-0984', 'Los Angeles', 6, '20210123', 'nan', 'jHSTT1gN', 'NBE-5AC-Gen2', '68:D7:9A:B2:6A:C8', NULL, NULL, NULL, NULL, 'Escuela Los Angeles', 'Esc123456*', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(948, 'Jorge Armando Esquivel', '8701-2909', 'Lapas', 3, '20210124', '10.081059, -85.374652', 'rozYA7rF', 'LBE-5AC-Gen2', '68:D7:9A:B6:6C:16', 'hAP lite', '08:55:31:84:1E:91', 'ETH-SP-G2', NULL, 'Pollera', 'Jorgillo21*', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(949, 'Victor Culiyin', 'REGALIA', 'Los Cerrillos', 2, '20210125', '10.088789, -85.394264', 'zvzSOSui', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(950, 'Doris Salazar Barrantes', '8759-8079', 'Pita rayada', 6, '20210126', '10.040632, -85.383674', 'HFkCQs65', 'NBE-5AC-Gen2', 'F492BF420741', 'hAP mini', '08:55:31:65:8F:03/07', 'ETH-SP-G2', '20044103823', 'Familia Matarrita Salazar', '2021FM59130', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(951, 'Ruben Venegas Zu�iga', '8303-4138', 'Pita rayada', 10, '20210127', '10.042079, -85.382226', 'ASUR6y2U', 'LBE-5AC-Gen2', 'F492BF423729', 'hAP mini', '08:55:31:65:8F:3F/43', 'ETH-SP-G2', '20074113922', 'VENZU', 'Pita2021', 'GT1', NULL, NULL, 3, NULL, 0, 0, 128, 1030),
(952, 'Jairo Rojas Vargas', '8314-6543', 'Lapas', 10, '20210128', '10.08608, -85.377213', 'POc29Bxh', 'LBE-5AC-Gen2', '68D79AA453C6', 'hAP mini', '08:55:31:65:8F:18/1C\r\n08:55:31:65:86:21/25', 'ETH-SP-G2', '20074113677', 'Rojas Castillo\r\nCastillo', '20122020\r\n20122021', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(953, 'Danilo Sanchez Cruz', '8302-1335', 'Lapas', 10, '20210128', '10.087152, -85.376832', 'POc29Bxh', 'NANO STATION', 'F492BFD04ACF\r\nF492BFD0538F', 'hAP mini', NULL, NULL, NULL, 'Sanchez Cruz', 'Alex2021', NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(954, 'Leida Cruz Moreno', '8701-2456', 'Lapas', 10, '20210129', '10.083423, -85.376071', '4CrCqKbp', 'LBE-5AC-Gen2', 'F492BF422F0F', 'hAP ac lite', '48:8F:5A:BF:67:90/96', 'ETH-SP-G2', '20074113849', 'Mary Angel', 'mary2021*', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(955, 'Flory Castillo Badilla', '8989-2442', 'Lapas', 6, '20210130', '10.085329, -85.376376', 'XHy7viSs', 'NANO STATION', 'F492BFD83B84\r\nF492BFD85010', 'hAP mini', '08:55:31:65:8D:36/3A', 'ETH-SP-G2', '20074113568', 'Hermanos', 's18b26d17r3', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(956, 'Veronica Sanchez Mejias', '8910-4928', 'Pita rayada', 10, '20210131', '10.034451, -85.386088', 'vzpYPG1s', 'LBE-5AC-Gen2', 'F492BF423EAC', 'hAP mini', '08:55:31:65:87:F1/F5', 'ETH-SP-G2', '20074113865', 'TitaDennis internet', 'TatiTita2001@', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(957, NULL, NULL, NULL, 6, '20210132', 'nan', 'CVT6jo9O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(958, 'Alfonso Gutierrez Sibaja', '8879-9227', 'Huacas', 20, '20210133', '10.0269, -85.373342', 'Lut6rfE5D', 'NBE-5AC-Gen2', 'E063DAD4542A', 'hAP mini', '08:55:31:66:FF:9E/A2', 'ETH-SP-G2', '20074113751', 'Tango', 'Massri.11', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(959, 'Adilio Gutierrez Ramirez', '8821-4430', 'Huacas', 10, '20210134', '10.024106, -85.374876', 'GYUkvt5e', 'LBE-M5-23\r\nLBE-5AC-Gen2', '74ACB9F2AEAA\r\nF49BF423CDE', 'LINKSYS', 'PROPIO', NULL, NULL, 'Gutierrez  ', 'Massri.11', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(960, 'Marcia Pineda Castrillo', '8996-5931', 'Arenas', 10, '20210135', '10.048245, -85.397779', 'loi78ft4DA', 'Loco5AC\r\nLoco5AC', 'F492BFD84C23\r\nF49BFD83E7F', 'hAP mini', '08:55:31:66:F0:2E/32', 'ETH-SP-G2', '20074120675', 'PINEDA', 'canelo15', 'NANO', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(961, 'Melvin Fonseca Cruz', '8378-0291', 'Huacas', 20, '20210136', '10.025157, -85.373589', 'JUt67Rtfc', 'NBE-5AC-Gen2', 'E0:63:DA:D4:55:71', 'hAP mini', '08:55:31:66:0D:C2/C6', NULL, NULL, 'Casa Huacas', 'Gemi2020', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(962, 'Leydi Carrillo cortes', '84703211', 'Pita rayada', 6, '20210137', '10.042385, -85.38479', 'ml2OR49C', 'LBE-5AC-Gen2', 'F492BFDA2AA7', 'hAP mini', '08:55:31:66:0B:F3/F7', NULL, NULL, 'Leidy', 'cusa2014', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(963, 'Yanori Sandoval Perez', '8436-0746', 'Pilangosta', 6, '20210138', '10.032357, -85.409176', '0CDf6as7A', 'NBE-5AC-Gen2', 'E063DAD0C018', 'hAP mini', '08:55:31:66:0C:E7/EB', 'ETH-SP-G2', '20074113743', 'Obando Sandoval', 'FAOSA1582', 'GT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(964, 'Lilly Campos Garcia', '8822-2622', 'Arenas', 10, '20210139', '10.055698, -85.402124', 'CbLp0t6Y3', 'LBE-5AC-Gen2', 'F492BF422C36', 'hAP mini', '08:55:31:65:83:E4/E8', 'ETH-SP-G2', '20044104261', 'Familia Vargas Campos', '02061992', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(965, 'Yeimy Porras Boza', '6036-7844', 'Los Angeles', 20, '20210140', '10.074978, -85.393848', 'NBH7i9opl', 'LBE-5AC-Gen2', 'F492BFDA2A0B', 'hAP mini', '08:55:31:66:F0:E0/E4', 'ETH-SP-G2', '20074120531', 'Porras', 'porras2437', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(966, 'Jhon Bradley', '8702-4855', 'Huacas', 20, '20210141', '0.024438, -85.376356', 'TRY0nfa7', 'NANO STATION\r\nNANO STATION', 'F492BFEED44D\r\nF492BFEED33F', 'hAP mini', '48:8F:5A:E0:05F2/F6', 'ETH-SP-G2', '20074120674', 'JB', 'Bradley0509', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(967, 'Elena Bermudez Villalobos', '8920-4610', 'Los Angeles', 3, '20210142', '10.074824, -85.392606', 'pOU7Btc46', 'LBE-5AC-Gen2', 'F492BF4CB750', 'hAP mini', '48:8F:5A:E0:06:52/56', 'ETH-SP-G2', '200441103908', 'Fam Bermudez', 'Puravida23*', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(968, 'Ronaldo G�mez espinoza', '7079-9755', 'La Libertad', 10, '20210143', '10.064668, -85.430336', 'POL5tv3W', 'LBE-5AC-Gen2', 'F492BFDA281A', 'hAP mini', '08:55:31:65:84:01/05', 'ETH-SP-G2', '20074113671', 'Hellen', '504040108', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(969, 'Julio Cesar Poveda Orozco', '8914-1943', 'Lapas', 10, '20210144', '10.085752, -85.376379', 'Vbnz45RQ', 'LBE-5AC-Gen2', '68:D7:9A:90:1F:A2', 'hAP mini', '08:55:31:65:88:AB/AF', 'ETH-SP-G2', '20074120425', 'Orozco', 'Santiago231', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(970, 'Laura Mireya Corrales Vasquez', '6041-0017', 'Pita rayada', 10, '20210145', '10.042174, -85.383449', 'gfr5DR3E', 'LBE-5AC-Gen2', '68D79AA453C6', 'hAP mini', NULL, 'ETH-SP-G2', '20114117341', 'Rancho Cortez', 'lapita2020', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(971, 'Edwin Barrantes Elizondo', '8372-9259', 'Huacas', 10, '20210146', '10.018088, -85.363943', 'CVM09iFt', 'NBE-5AC-Gen2 loco 5AC', 'E063DAF0FDEE F492BFD845AB', 'hAP mini', '08:55:31:1E:15:F4/F8', 'ETH-SP-G2', '20124123866', 'Fam Barrantes', 'derian74', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(972, 'Juan elizondo  Badilla', '8850-9432', 'huacas', 3, '20210147', '10.01728, -85.363728', 'p�lQ2vtr', 'NBE-5AC-Gen2 LBE-5AC-Gen2', 'E63DAD4542B\r\n68D79AA456C6', 'hAP mini', '08:55:31:1E:16:9B/9F', 'ETH-SP-G2', '20124123766', 'Familia Elizondo Perez', '21031946', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(973, 'Diego Abarca Espinoza', '8585-6130', 'Huacas', 6, '20210148', 'nan', 'ERT78gqe', 'LBE-5AC-Gen2', 'F4:92:BF:42:22:36', 'hAP mini', '08:55:31:1E:16:88/8C', 'ETH-SP-G2', '20124123855', 'Newton', 'Abarca78', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(974, NULL, NULL, NULL, 6, '20210149', 'nan', 'lpNAS56q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(975, 'Marcos Batista', '8320-6234', 'Huacas', 3, '20210150', '10.019256, -85.3633', 'cMv345RT', 'LBE-5AC-Gen2', '68D79AA86078', 'hAP mini', '08:55:31:4F:D1:4B/4F', 'ETH-SP-G2', '20124124089', 'Super Huacas', 'MAHG0000', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(976, 'Luis Guillermo Bonilla Pizarro', '6012-4173', 'Los Angeles', 6, '20210151', '10.07685, -85.395696', 'PnAQ234R', 'LBE-5AC-Gen2', '68D79AA869D5', 'hAP mini', '08:55:31:4F:D1:98/9C', 'ETH-SP-G2', '20114117658', 'Axel', 'patricia15', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(977, 'Dixy Granados Cardenas', '8333-1184', 'Los Angeles', 10, '20210152', '10.079913, -85.389902', '90gty43s', 'NBE-5AC-Gen2', 'E0:63:DA:F0:16:17', 'hAP mini', '08:55:31:4F:D0:FA/FE 08:55:31:4F:D1:9F/A3', 'ETH-SP-G2', '20114116885', 'GraCar House\r\nGraCar House 2', 'Solocree127\r\nElianJose05', 'GT1', NULL, NULL, 3, NULL, 0, 0, 128, 1054),
(978, 'Leonardo Fonseca Rodriguez', '8751-4345', 'Huacas', 3, '20210153', '10.022737, -85.366033', 'HJB5Aqw8', 'LBE-5AC-Gen2', '68D79AA86A06', 'hAP mini', '08:55.31:4F:D0:F0/F4', 'ETH-SP-G2', '20124123734', 'Esc Huacas', 'fonseca28', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(979, 'Bernal Sanchez Uma�a', '8788-8856', 'Los Angeles', 3, '20210154', '10.074716, -85.397391', 'ZXCVQ3Qw', 'LBE-5AC-Gen2', '68D79AA8683D', 'hAP mini', '08:55.31:4C:EB:18/1C', 'ETH-SP-G2', '20124123848', 'BMS', 'BMS1938*', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(980, 'Rodney Villalobos Mu�oz', '8467-1110', 'Los Angeles', 6, '20210155', '10.078297, -85.393475', '765Yucre', 'NBE-5AC-Gen2', 'E0:63:DA:F2:04:D0', 'hAP mini', '2C:C8:1B:75:B0:DA/DE', NULL, NULL, 'Alanna', '18011980*', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(981, 'Adriana Perez Perez ', '8410-2030', 'Matambuguito', 6, '20210156', '10.105071, -85.414049', 'MAQEr502', NULL, NULL, 'hAP mini\r\nhAP mini', '2C:C8:1B:75:B1:4B/4F\r\n2C:C8:1B:75:B1:3B/3F', NULL, NULL, 'Daniela\r\nNana', 'aleinad14\r\n29292303', 'FREE', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(982, 'Heilyn Perez Perez', '6049-9740', 'Matambuguito', 10, '20210157', '10.10402, -85.41418', 'lcer098I', 'LBE-5AC-Gen2', '68D79AA86888', 'hAP mini', '2C:C8:1B:75:B0:BB/BF', 'ETH-SP-G2', '20114117365', 'Familia Perez', 'L19H17I23N19', 'MGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(983, 'Marcela Elizondo  Prendas', '8380-1124', 'Huacas', 6, '20210158', '10.024375, -85.359279', '90FTU12S', 'LBE-5AC-Gen2', '68D79AA86A88', 'hAP mini', '08:55:31:4C:EB:C8/CC', 'ETH-SP-G2', '20114116927', 'Macela', 'mrcl1234', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(984, 'Mario Alberto Carrillo Vasquez', '8656-6047', 'Los Angeles', 3, '20210159', '10.074505, -85.396007', 'cvbnz45R', 'LBE-5AC-Gen2', '68:D7:9A:A8:6A:C2', 'hAP mini', '2C:C8:1B:75:B0:EF', 'ETH-SP-G2', '20114116897', 'Mario', '503530881', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(985, 'Maria Yesenia Hernandez O.', '8400-5154', 'Matambuguito', 3, '20210160', '10.105984, -85.413279', 'BV456as5', 'NBE-5AC-Gen2', 'E0:63:DA:D4:55:77', 'hAP mini', '08:55:31:4F:D1:1F/23', 'ETH-SP-G2', '20114116906', 'Familia Aguilar Hernandez', 'aguilar83*', 'MGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(986, 'Johana Hernandez Obregon', '8564-5255', 'Matambuguito', 3, '20210161', '10.106117, -85.413043', 'ploAS46H', 'LBE-5AC-Gen2', '68:D7:9A:A8:69:CE', 'hAP mini', '08:55:31:4F:D1:C4/C8', 'ETH-SP-G2', '20114116889', 'Familia Zu�iga Hernandez', '1029384756', 'MGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(987, 'Carlos Jimnez (ESTRADA)', 'REGALIA', 'Carrillo ', 3, '20210162', '9.889852, -85.452758', 'MNB2345c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(988, 'Karen Ruiz Zu�iga', '8552-2421', 'Matambuguito', 3, '20210163', '10.104413, -85.409347', 'kLT67Yvm', 'NBE-5AC-Gen2', 'E0:63:DA:D0:C1:92', 'hAP mini', '08:55:31:4F:D1:09/0D', 'ETH-SP-G2', '20114116922', 'Vasquez Ruiz', 'vasquez06*', 'MGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(989, 'Katia Hernandez', '8801-6723', 'Matambuguito', 3, '20210164', '10.104844, -85.408864', 'qwea345sf', 'NBE-5AC-Gen2', 'E0:63:DA:D0:BF:59', 'hAP mini', '2C:C8:1B:0A:AF:CD/D1', 'ETH-SP-G2', '20114116922', 'Familia HP', '20jeykey21', 'MGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(990, 'Franz werkstetter', 'REGALIA', 'Amaranta', 10, '20210165', '9.908484, -85.530752', 'plmnvcr7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(991, 'Maria del Carmen Gomez E.', '8578-6258', 'La Libertad', 3, '20210166', '10.065175, -85.442658', '890aczvE', 'LBE-5AC-Gen2', '68:D7:9A:B2:7A:93', 'hAP lite', '2C:C8:1B:DC:C3:72/77', 'ETH-SP-G2', '20114116915', 'Family G', 'Jime0215*', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(992, 'Marina Mendoza Camacho', '6342-7011', 'La Libertad', 10, '20210167', '10.062845, -85.439032', 'COPB78fr', 'LBE-5AC-Gen2', '68:D7:9A:B4:AC:76', 'hAP lite', '2C:C8:1B:DC:C4:32/2D', 'ETH-SP-G2', '20114116899', 'Familia MYC', 'Alberto2898', 'GT4', NULL, NULL, 3, NULL, 0, 0, 128, 1033),
(993, 'Johan Sandstrom', '46705516200', 'Huacas', 20, '20210168', '10.0255, -85.377239', 'Vy89cR3G', 'LBE-5AC-Gen2', '68:D7:9A:A8:5C:23', 'hAP lite', '08:55:31:14:1D:03', 'ETH-SP-G2', '20044104650', 'Swedish Embasy', 'Sweden20', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(994, 'Diego Mendoza', '8719-2108', 'Esterones', 10, '20210169', '9.88577,-85.56623\r\n', 'Drt56Dcv', 'LiteBeam M5', '24:5A:4C:DC:1C:F9', 'hAP lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(995, 'Rod  Bosse', '864 2054054', 'Carrillo', 10, '20210170', '9.899502,-85.464761\r\n', 'MyuFR34s', 'LBE-5AC-Gen2', '68:D7:9A:B2:37:64', 'hAP lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(996, 'Casey winn ( Antiguo pacho)', '86137675', 'Buena Vista', 10, '20210171', '9.9137970, -85.5313466', 'plo435Sw', 'LBE-5AC-Gen2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(997, 'Oscar Enrique Coto Carrillo', '8741-2561', 'Huacas', 10, '20210172', '10.024243, -85.355892', 'UGTvc21g', 'LBE-5AC-Gen2', '68:D7:9A:B2:3C:46', 'hAP lite', 'DC:2C:6E:04:52:A7/AC', 'ETH-SP-G2', '21014130678', 'Familia Coto Carrillo', 'CotoC21*', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(998, 'Henry Garcia Jimenez', '8891-8731', 'Cuesta Grande', 20, '20210173', '9.939694,-85.519158', 'bnzx90oP', 'LBE-5AC-Gen2', '68:D7:9A:B2:72:1E', 'hAP lite', NULL, NULL, NULL, 'Casa Daniela', '88918731', 'SEGT2', NULL, NULL, 3, NULL, 0, 0, 130, 1034),
(999, 'Fotseu Marion Aude Murielle', '.41 79 254 76 37.', 'Amaranta', 20, '20210174', '9.906668, -85.534419', '0PNM31w9', 'LBE-5AC-Gen2 ', '68:D7:9A:B2:39:D9', 'hap lite', NULL, NULL, NULL, 'Casa gostosa', 'jungleview', 'BVGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1000, 'Jordan Frances ', '85238585', 'Samara', 3, '20210175', '9.891819,-85.54701\r\n', '67GHTSc4', 'LBE-5AC-Gen2', NULL, 'hap lite', NULL, NULL, NULL, 'Casa Celeste', 'Halamadrid', NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1001, 'Filander Vasquez', '8703-5970', 'Los Angeles', 6, '20210176', '10.077104, -85.390771', 'mnae321q', 'NANO STATION', '24:5A:4C:34:3F:B8', 'hAP mini', '2C:C8:1B:75:B0:B1', 'ETH-SP-G2', '2004056467', 'ATHOS', 'pela3089', 'PGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1002, 'Carlos  Vargas', NULL, 'Buena Vista', 10, '20210177', '9.9134082, -85.5323672', '098ipmfrr', 'LBE-5AC-Gen2', '48:8F:5A:BF:66:A1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1003, 'Alberto Pacho', '6014-0402', 'Buena Vista', 6, '20210178', '9.9132699, -85.5325395', 'TYUr43Aq', 'LBE-5AC-Gen2', '68:D7:9A:A8:5F:3D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1004, 'Jhon Noska', '.+1(757)870-9062', 'Samara', 10, '20210179', 'nan', 'KVe4321S', 'LBE-5AC-Gen2', '68:D7:9A:B2:40:56', 'CUBE', '74ACB9F03C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1005, 'Jorge Perez Rojas', '8529-4277', 'La Libertad', 3, '20210180', '10.062322, -85.437788', '678Gr21S', 'LBE-5AC-Gen2', 'F4:92:BF:DA:2A:0B', 'hAP mini', '2C:C8:1B:0A:BE:8C', 'ETH-SP-G2', '21014130682', 'Sury', 'geroge1323', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1006, 'fransisco terciopelo', '6472-4391', 'terciopelo', 10, '20210181', '9.9428703, -85.5205413', 'frzv60L1', 'LBE-5AC-Gen2', '68:d7:9A:B2:39:E3', 'CUBE', '74ACB9F2EEB8', NULL, NULL, NULL, NULL, 'SEGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1007, 'Jose alexis Obregon Carrillo', '8546-8231', 'HUacas', 3, '20210182', '10.022764, -85.356621', 'LOTC56Re', 'LBE-5AC-Gen2', '68:D7:9A:A8:61:39', 'HAP mini', '2C:C8:1B:0A:BE:E5/E9', 'ETH-SP-G2', '21014130692', 'OBRECAR', '123456789lexi', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1008, 'Ivannia Mendoza Espinoza', '8639-5565', 'Esterones', 20, '20210183', '9.88577,-85.56623\r\n', 'GHJ4r32t', 'LiteBeam M5', '70:A7:41:22:C8:BA', 'HAP mini', NULL, 'ETH-SP-G2', '21014130977', 'Familia Mendoza', 'Mendoza21*', 'SGT', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1009, 'Omar josue Granados', '8886-3239', 'Los Angeles', 10, '20210184', '10.079924, -85.389591', 'NVZD134A', 'LBE-5AC-Gen2', '68:D7:9A:B6:6C:B9', 'HAP mini', '2C:C8:1B:0A:BE:71', 'ETH-SP-G2', '21014131001', 'Casa', 'Granados123', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1010, 'Dafina Thur', '8758-7518', 'Altos del socorro', 20, '20210185', '9.95762,-85.402593', '120KAFX6', 'LBE-5AC-Gen2', '68:D7:9A:B4:A3:B9', 'HAP mini', '2C:C8:1B:0A:BF:0D/11', 'ETH-SP-G2', '20114116955', 'ThurRica', 'ThurRica28621', 'GT JAO', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1011, 'Joshep Young', '8474-5793', 'Camaronal', 20, '20210186', '9.86978, -85.450328', 'GFT5621Z', 'LBE-5AC-Gen2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 158, 1061),
(1012, 'Paulo Collar', '8704-0027', 'Camaronal', 20, '20210187', '9.868633, -85.445904', 'KYQZ43Qs', 'NANO STATION', '24:5A:4C:34:4C:18', 'HAP mini', '2C:C8:1B:0A:BC:68', NULL, NULL, 'Casa Magna', 'cASAmAGNA', 'CAPGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1013, 'Yordano Hernandez B', '8632-3915', 'La Libertad', 3, '20210188', 'nan', 'sg6OP01Q', 'LBE-5AC-Gen2', '68:D7:9A:B6:6A:3C', 'hAP lite', '2C:C8:1B:D9:91:50', 'ETH-SP-G2', '20114116968', 'Maria', '24245824', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1014, 'Brenda Amaranta', '8706-7176', 'Amaranta', 20, '20210189', '9.908069, -85.532753', 'Npxcr5DW', 'NANO STATION', '68:D7:9A:A2:34:51', 'HAP mini', '2C:C8:1B:75:B0:C9', 'ETH-SP-G2', NULL, 'Lille 1', '9854321', 'BVGT2', NULL, NULL, 3, NULL, 0, 0, 130, 1037),
(1015, 'Jessica Lito Hernandez', '8359-4474', 'Pita Rayada', 10, '20210190', '10.043017, -85.387306', '986Dr5ac', 'LBE-5AC-Gen2', '68:D7:9A:B8:32:D4', 'hAP lite', '08:55:31:79:0A:72', 'ETH-SP-G2', '21014131003', 'Yessica', '1.03405E+11', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1016, 'Ridley buena vista', '8359-5045', 'Buena Vista', 20, '20220101', '9.9106085, -85.5381373', 'aJK4582M', 'LBE-5AC-Gen2', '68:D7:9A:B8:33:23', 'hAP lite', NULL, NULL, NULL, 'Casa Baoba', 'casabaoba007', 'BVGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1017, 'Roy Arias', '8826-2524', 'buena vista', 10, '20220102', '9.909565,-85.53977\r\n', 'Am4829f5', 'LBE-5AC-Gen2', '24:5A:4C:06:8A:3D', 'hAP lite', 'DC:2C:6E:61:DA:77', NULL, NULL, 'MINORyA', 'malavista', 'BVGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1018, 'Martin  Lanz', '8966-1136', 'Altos del Socorro', 20, '20220103', '9.958198,-85.398845', '48sJFw04', 'PowerBeam 5AC-Gen2', '24:5A:4C:DE:08:58', 'hAP lite', '08:55:31:78:BA:5F', 'ETH-SP-G2', NULL, 'Pura Vida', 'shama2022', 'CGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1019, 'Leticia Villalobos Mu�oz', '8560-7983', 'HUacas', 3, '20220104', '10.029055, -85.367779', 'Ja31Ca9n', 'LBE-5AC-Gen2', '68:D7:9A:B2:36:C9', 'hAP lite', '08:55:31:78:FF:49', 'ETH-SP-G2', '21014140991', 'Leandro', 'prendas2013', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1020, 'Carlos Navarro', '8685-5833', 'Pilangosta', 10, '20220105', '10.02998, -85.404472', 'CV56rt11', 'NANO STATION', '68:D7:9A:A2:34:30', 'hAP lite', 'DC:2C:6E:61:DA:7E', 'ETH-SP-G2', '21014140879', 'Oriyir', '11047074', 'GT5 PIL', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1021, 'Simon Antonio Moreno', '8927-1337', 'Huacas', 3, '20220106', '10.023208, -85.354103', '67ftMPKA', 'LBE-5AC-Gen2', '68:D7:9A:B2:74:BE', 'hAP lite', '08:55:31:79:0A:07', 'ETH-SP-G2', '21014141219', 'Eliecer Fabiana', 'pisotillo83', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1022, 'Melissa sandobal', '1 310 347 6431', 'camaronal', 30, '20220107', '9.867919, -85.452898', 'vbze456W', 'LBE-5AC-Gen2', '68:D7:9A:B8:32:C8', 'hAP lite', 'DC:2C:6E:61:DA:C5', 'ETH-SP-G2', NULL, 'zopilote1', 'zopilote2', 'CGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1023, 'Finca Lucky', '8736-1465', 'Buena vista', 50, '20220108', '9.911154,-85.536333', 'NBY6fR34', 'NANO STATION', '24:5A:4C:34:3B:54', 'hAP lite', '08:55:31:78:FF:43', 'ETH-SP-G2', NULL, 'SIN WIFI', 'SIN WIFI', 'BVGT4', NULL, NULL, 3, NULL, 0, 0, 132, 1070),
(1024, 'Gustavo Aguilera Castro', '8719-8906', 'HUacas', 3, '20220109', '10.021792, -85.357327', '0OARt31A', 'LBE-5AC-Gen2', '68:D7:9A:B2:7C:79', 'hAP lite', '2C:C8:1B:08:14:DB', 'ETH-SP-G2', '21014141239', 'A.F.F.G', 'Gustavo2301', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1025, 'Manfred Altos del Socorro', '(+491786014016)', 'Altos del socorro', 30, '20220110', '9.957128,-85.399483\r\n', 'Bcfz46qw', 'PowerBeam 5AC-ISO', '24:5A:4C:0A:2E:B8', 'hAP lite', '2C:C8:1B:08:16:0D', 'ETH-SP-G2', '21014141337', NULL, NULL, 'CGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1026, 'Steven Jimenez', '61982020', 'cuesta grande', 10, '20220111', '10.001853, -85.504354', 'LKi8Gcrt', 'LBE-5AC-Gen2', '68:D7:9A:B2:34:94', 'hAP lite', 'DC:2C:6E:61:CA:DB', 'ETH-SP-G2', NULL, 'Familia JP', 'evans2007jp', 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1027, 'Cristel Artavia', '6094-4079', 'Buena Vista', 10, '20220112', '9.91879,-85.537482\r\n', 'AZer890u', 'LBE-5AC-Gen2', '68:D7:9A:B2:36:C9', 'hAP lite', '08:55:31:84:33:3B', 'ETH-SP-G2', '21014141292', 'Familia Artavia', 'Artavia01*', 'BVGT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1028, 'Sylvain Dostie', '8982-8798', 'Maquenco', 10, '20220113', '9.962475,-85.521156\r\n', 'BGT5eQaX', 'LBE-5AC-Gen2', '68:D7:9A:B6:6E:63', 'hAP lite', '08:55:31:84:33:C0', 'ETH-SP-G2', '21014141251', 'casa maquenco', 'sylvain01', 'SEGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1029, 'Joselyn Gutierrez Solis', '8768-9948', 'Mansion', 6, '20220114', '10.108803, -85.374292', 'CVre45Sw', 'LBE-5AC-Gen2', '68:D7:9A:B6:6E:6C', 'hAP lite', 'DC:2C:6E:61:D4:6B', 'ETH-SP-G2', '21044567341', 'THILE', 'thile0818', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1030, 'Maria Fernanda Lopez', '8545-6269', 'Matambuguito', 6, '20220115', 'nan', '0ag45vcR', 'LBE-5AC-Gen2', '24:5A:4C:30:32:8D', 'HAP mini', '2C:C8:1B:0A:B5:84', 'ETH-SP-G2', '2.10044E+11', 'Fernanda', 'ferlv1409', 'MGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1031, 'JOE', '1 612 554 5120', 'Camaronal', 50, '20220116', '9.86857,-85.447838\r\n', 'L4cv43aS', 'LBE-5AC-Gen2', '68:D7:9A:B6:6E:C6', 'hAP lite', '2C:C8:1B:0A:17:5D', 'ETH-SP-G2', NULL, 'harmonicconect', 'Harmonic', 'CAPGT1', NULL, 'joseph@harmonicfarms.com', 3, NULL, 0, 0, 132, 1051),
(1032, 'William Mejias Venegas', '8386-5190', 'San Gerardo', 10, '20220117', '10.049445, -85.431734', 'Dxj789tv', 'LBE-5AC-Gen2', '24:5A:4C:30:BA:AC', 'HAP mini', '2C:C8:1B:0A:B5:B5', 'ETH-SP-G2', NULL, 'WG01', 'Andres01', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1033, 'Sophie Elvire Chepy', '8546-1421', 'Santo Domingo', 20, '20220118', '9.890265,-85.510445\r\n', '1ZC4fj7M', 'LBE-5AC-Gen2', '68:D7:9A:B6:6D:90', 'hAP lite', '08:55:31:82:F7:B3', 'ETH-SP-G2', NULL, 'Casa 2', 'barbieforest', 'CGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1034, 'Mathew Gregory Mccormack', '8553-8776', 'Esterones', 10, '20220119', '9.899973,-85.555036\r\n', '6CFVm8Qr', 'LBE-5AC-Gen2', '68:D7:9A:B2:75:4E', 'hAP lite', 'DC:2C:6E:61:D5:25', 'ETH-SP-G2', NULL, 'Casa MACK', 'Ponedoras7', 'CGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1035, 'Danny Ramirez Sibaja', '8885-6187', 'Los Angeles', 10, '20220120', '10.078593, -85.394843', 'VB65sa12', 'LBE-5AC-Gen2', '24:5A:4C:B4:7E:08', 'hAP lite', 'DC:2C:6E:61:CC:44', 'ETH-SP-G2', '20014141341', 'Jose Daniel', 'JDaniel0104', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1036, 'Joe CIANCIO', '8514-9193', 'Maquenco', 10, '20220121', '9.963003,-85.520609\r\n', '67VCe12L', 'NBE-5AC-Gen2', '24:5A:4C:06:91:81', 'hAP lite', 'DC:2C:6E:61:CB:EF', 'ETH-SP-G2', '21044116117', 'JOE', 'Q1W2E3R4T', 'SEGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1037, 'Deibin DIaz Carrillo', '8461-2582', 'Huacas', 6, '20220122', '10.021961, -85.355277', 'tyzvc3Sw', 'LBE-5AC-Gen2', '24:5A:4C:B6:0A:42', 'hAP lite', 'DC:2C:6E:61:CE:17', 'ETH-SP-G2', '21044116107', 'Familia Diaz', 'Andres2014', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1038, 'Karol Murillo Lopez', '8991-0627', 'LOs Angeles', 3, 'Brayan Sandoval', '10.077325, -85.39723', 'Brayan Sandoval', 'NANO STATION M5', '24:5A:4C:B6:06:0A', 'hAP lite', 'DC:2C:6E:F4:F9:3E', 'ETH-SP-G2', '21104140368', NULL, NULL, 'SANDOVAL', 'Sale de la casa de Brayan Sandoval', NULL, 3, NULL, 0, 0, 126, 1045),
(1039, 'Milanda Hernandez Venegas', '6227-5590', 'Matambuguito', 6, '20220124', '10.102335, -85.412099', 'Gtyu45h', 'LBE-5AC-Gen2', '24:5A:4C:B2:3C:5B', 'hAP lite', 'DC:2C:6E:61:CB:BA', 'ETH-SP-G2', '21014141210', 'Familia Hernandez Venegas', 'Hdezvene07', 'MGT1', NULL, NULL, 3, NULL, 0, 0, 127, 1035),
(1040, 'Leonardo Araya Jimenez', '8303-3064', 'LOs Angeles', 3, '20220125', '10.078215, -85.39366', 'XT6cgt17', 'LBE-5AC-Gen2', '24:5A:4C:B4:7F:FE', 'hAP lite', 'DC:2C:6E:61:CB:B9', 'ETH-SP-G2', '21074123373', 'LEO', 'Ministerio03', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1041, 'Javier Hernandez Gaitan', '8371-7706', 'LOs Angeles', 6, '20220126', '10.079702, -85.400095', 'TyVcxW90', 'LBE-5AC-Gen2', '24:5A:4C:B4:70:7E', 'hAP lite', '08:55:31:77:35:29', 'ETH-SP-G2', NULL, 'Familia H.G', 'Gaitan1483', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1042, 'Henry Garcia Jimenez', '88918731', 'Santa Elena', 10, '20220127', '10.014652, -85.470738', 'GvuiAS3C', 'NANO STATION', '68:D7:9A:9E:86:2E', 'hAP lite', '08:55:31:77:18:FE', 'ETH-SP-G2', NULL, 'FGZ', 'senedama', '3011 SEGT', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1043, 'Lorena Vargas', '8915-9526', 'Pita Rayada', 6, '20220128', '10.043814, -85.387601', 'Ytas13CV', 'LBE-5AC-Gen2', '24:5A:4C:B6:0B:F6', 'hAP lite', 'DC:2C:6E:61:CB:D2', 'ETH-SP-G2', '21074123499', 'Junior Quiros Vargas ', 'nuno2006qv', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1044, 'Greivin Rmirez Rodriguez', '8597-3937', 'Los Cerrillos', 6, '20220129', '10.088937, -85.393092', '65TGc98', 'NBE-5AC-Gen2', '24:54:4C:06:8A:28', 'hAP lite', 'DC:2C:6E:67:18:40', 'ETH-SP-G2', '21074115967', 'POCHO', 'pocho01142181', 'cerrilllos 1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1045, 'Didier Mu�oz Sequeira', '8378-8015', 'Los Cerrillos', 6, '20220130', '10.088031, -85.393216', '0of41asV', 'LBE-5AC-Gen2', '24:5A:4C:B6:0A:45', 'hAP lite', 'DC:2C:6E:67:18:E2', 'ETH-SP-G2', NULL, 'MUNOZ JIMENEZ', 'cholo259', 'Cerrillos 2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1046, 'Abel Barrantes', '6033-8389', 'Los Cerrillos', 6, '20220131', '10.089029, -85.393371', 'Ytcv54AS', 'LBE-5AC-Gen2', '24:5A:4C:B4:7B:7A', 'hAP lite', 'DC:2C:6E:67:18:9A', 'ETH-SP-G2', NULL, 'Familia Barrantes', 'ValE2018@#', 'ceririllos 2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1047, 'Yeimi Mu�oz Carrillo', '8611-2919', 'Los Cerrillos', 6, '20220132', '10.090033, -85.391885', 'MNLK89e', 'LBE-5AC-Gen2', '24:5A:4C:B4:79:42', 'hAP lite', 'DC:2C:6E:67:18:70', 'ETH-SP-G2', NULL, 'Yeimi', '18311227', 'cerrillos 3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1048, 'karen Salazar Vasquez', '6072-8655', 'Huacas', 3, '20220133', '10.021285, -85.363421', 'TY5ds21a', 'LBE-5AC-Gen2', '24:5A:4C:B4:72:71', 'hAP lite', 'DC:2C:6E:67:18:41', 'ETH-SP-G2', '21074116030', 'Familia Salazar', '20212231', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1049, 'Ana Lidieth Mu�oz', '8993-7213', 'Los Cerrillos', 6, '20220134', '10.08993, -85.394224', 'Vcxz3as2', 'LBE-5AC-Gen2', '24:5A:4C:B4:7C:3B', 'hAP lite', 'DC.:2C:6E:68:69:D8', 'ETH-SP-G2', NULL, 'Lidieth Diaz', 'diaz1970', 'Cerrillos 1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1050, 'Gabriel Thur', '8966-1147', 'Altos del socorro', 10, '20220135', '9.96199,-85.405655', 'PLMN45ai', 'LBE-5AC-Gen2', '24:5A:4C:30:39:E2', 'hAP lite', 'DC:2C:6E:68:69:F0', 'ETH-SP-G2', '21074115826', NULL, NULL, 'SEGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1051, 'Carina Risi', '6482-8415', 'Altos del socorro', 10, '20220136', '9.9525028,-85.4009271', 'PLBX43sf', 'LBE-5AC-Gen2', '68:D7:9A:B4:B7:E6', 'hAP lite', 'DC:2C:6E:68:66:30', 'ETH-SP-G2', NULL, 'Casa Carina', '44444444', 'SEGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1052, 'ROberto Garcia Guevara', '8822-7998', 'Hojancha', 20, '20220137', '10.056494, -85.423601', 'ln45ds24', 'LBE-5AC-Gen2', '24:5A:4C:B4:79:EB', 'hAP lite', 'DC:2C:6E:68:6A:C3', 'ETH-SP-G2', NULL, 'Garcia', 'Pilsen1989', 'GT4', NULL, NULL, 3, NULL, 0, 0, 130, 1036),
(1053, 'Dereck Rodriguez', '6030-1104', 'Pilangosta', 3, '20220138', '10.035273, -85.407395', 'VBHGsd32', 'LiteBeam M5', '68:D7:9A:A0:18:74', 'hAP lite', 'DC:2C:6E:68:6A:4A', 'ETH-SP-G2', NULL, 'Familia-Rodriguez', 'deowwi1104', 'GT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1054, 'Ron Frances', '8601-3651', 'San Gerardo', 15, '20220139', '10.056503,-85.434975', 'TYU7fCrd3', 'LiteBeam M5', '68:D7:9A:A0:23:FF', 'hAP lite', 'DC:2C:6E:68:6C:A6', 'ETH-SP-G2', '21074122596', NULL, NULL, 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1055, 'James  Nick Weed', '8932-9504', 'El carmen', 20, '20220140', '9.881053, -85.424595', 'CFDAd45a', 'LiteBeam M5', '68:D7:9A:A0:2E:CC', 'hAP lite', '08:55:31:79:0B:E2', 'ETH-SP-G2', '21074113723', 'CNWEED', '87654321', 'CGT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1056, 'Michael Thomas Cabinas Rio Ora', '6398-3825', 'Buena Vista', 50, '20220141', '9.915547,-85.526808\r\n', 'ZXCP09fd', 'NANO STATION', '68:D7:9A:A2:1A:3C', 'hAP lite', '08:55:31:79:16:0A', 'ETH-SP-G2', '21074124614', 'Casa Ora', 'msthomas57inc!', 'BVGT6', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1057, 'Joselyn Carrillo Elizondo', '8410-0272', 'Huacas', 3, '20220142', '10.022423, -85.356911', 'BvcRfD4R', 'NANO STATION', '24:5A:4C:34:3C:5A', 'hAP lite', 'DC:2C:6E:61:CE:17', 'ETH-SP-G2', '21074114292', 'Nazareth', 'carrilloelizondo', 'CGT2-2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1058, 'Grace Jimenez ', '8639-4833', 'La libertad', 10, '20220143', '10.064192, -85.430146', 'YUTvcfr5', 'LBE-5AC-Gen2', '24:5A:4C:B6:0A:42', 'hAP lite', '08:55:31:78:C0:CD', 'ETH-SP-G2', '21014140150', 'Grace', 'jimenez89', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1059, 'Jane collins camaronal', '19144787855', 'Camaronal', 10, '20220144', '9.8692290, -85.4504408', 'cvgtDrf2', 'LBE-5AC-Gen2', '24:5A:4C:B4:7D:9B', 'hAP lite', '08:55:31:78:F2:6F', 'ETH-SP-G2', '21074114138', 'Cielo', 'jane@home2022', 'CGT', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1060, 'Julio Obregon', '8582-1627', 'Polvazales', 20, '20220145', 'nan', 'Frt725DG', 'LiteBeam M5', '68:D7:9A:A0:2F:00', 'hAP lite', '08:55:31:78:C0:5F', 'ETH-SP-G2', '21074114342', 'Obregon Sanchez', 'YaDlirle763F', 'Cerrillos 4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1061, 'Rogelio Rodriguez', '8816-1316', 'Carrilo', 10, '20220146', '9.8988648, -85.4666815', 'cvtR41We', 'NANO STATION', '68:D7:9A:A2:19:47', 'hAP lite', '08:55:31:78:C0:E1', 'ETH-SP-G2', '21074114144', 'Bella Mar', '20227314', 'SGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1062, 'vicent Geyer', '8428-1759', 'cuesta grande', 10, '20220147', '9.993846, -85.50581', 'BNMre321', 'LiteBeam M5', '24:5A:4C:DC:17:95', 'hAP lite', 'DC:2C:6E:EC:5E:DA', 'ETH-SP-G2', '21074122347', 'House Colibri', '1234dgvg4321', 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 128, 1055),
(1063, 'Adolfo Brenes', '8596-1285', 'LOs Angeles', 1, '20220148', '10.080632, -85.393389', '0pnc23ER', 'LiteBeam M5', '24:5A:4C:DC:08:36', 'hAP lite', 'DC:2C:6E:EC:60:33', 'ETH-SP-G2', '21074123788', 'Familia Brenes', 'brenes2022', 'GT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1064, 'Magally Oviedo', '70141185', 'Gamalotal', 30, '20220149', '10.054247,-85.522844', '78VXEqwa', 'Powerbeam M5', '68:D7:9A:AA:B3:FB', 'hAP lite', NULL, 'ETH-SP-G2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 131, 1038),
(1065, 'Asdrubal Aguero', '8375-2869', 'Pita Rayada', 6, '20220150', '10.03476, -85.385686', 'asxc67ty', 'NANO STATION', '24:5A:4C:34:3D:DF', 'hAP lite', '08:55:31:79:0C:7A', 'ETH-SP-G2', NULL, 'Familia Aguero Valverde', 'Aguero255524', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1066, 'Jean-Claude AZOULAY', '83632176', 'Carrillo', 20, '20220151', '9.8949742, -85.4686359', '67T87Yvc', 'NANO STATION', '68:D7:9A:9E:86:2E', 'hAP lite', '08:55:31:84:14:4D', 'ETH-SP-G2', NULL, NULL, NULL, 'CGT6', NULL, NULL, 3, NULL, 0, 0, 130, 1032),
(1067, 'Marta Arelys Gomez ', '8549-6112', 'La Libertad', 6, '20220152', '10.063516, -85.441355', 'yu5ratW', 'LiteBeam M5', '68:D7:9A:A8:69:CE', 'hAP lite', '08:55:31:4F:D1:C8', 'ETH-SP-G2', '21044115540', 'Familia Salazar Gomez', 'Adriel1521*', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1068, 'Channa santo domingo', '85015624', 'Carrillo', 30, '20220153', '9.890265,-85.510445\r\n', 'zc123R56', 'LBE-5AC-Gen2', '68:D7:9A:B6:6D:90', 'Linksys ', '58EF6848BBGF', NULL, NULL, 'Chamma', 'Mermaid2019!', 'CGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1069, 'Anthon Kast', '8912-3968', 'La Libertad', 10, '20220154', '10.065169, -85.441199', 'bgtrs23a', 'LBE-5AC-Gen2', '70:A7:41:12:E0:0B', 'Linksys ', '58EF6848BD1F', 'ETH-SP-G2', '21044109783', 'Familia Kast Sanchez', '123456789', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1070, 'Anita Camaronal', '8431-6078', 'Camaronal ', 10, '20220155', '9.868786, -85.449041', 'GFtc345a', 'LiteBeam M5', '24:5A:4C:34:48:35', 'Linksys  E2500', '24:F5:A2:DA:50:8D', 'ETH-SP-G2', NULL, 'Cabinas Olas', 'Surf7751', 'PGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1071, 'Anderson Mendez', '8321-5507', 'San Gerardo', 10, '20220156', '10.060611, -85.441894', 'zx5rToP0', 'LBE-5AC-Gen2', '70:A7:41:12:E2:66', 'hAP lite', '08:55:31:77:17:83', 'ETH-SP-G2', NULL, 'Familia Mendez Gusman', '12345678Yu', 'SEGT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1072, 'Carlos Jimenez Estrada casa La Paz', '83601950', 'Estrada', 3, '20220157', '9.889852, -85.452758', 'mku76sA1', 'LBE-5AC-Gen2', '70:A7:41:12:E8:06', 'Linksys  E2500', '58EF6848BD7Y', NULL, NULL, 'Casa La Paz', 'April2022', 'CGT6', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1073, 'Carlos Jimenez Estrada casa silencio', '83601950', 'Estrada', 100, '20220158', '9.889852, -85.452758', '1AS1PLUt', 'LBE-5AC-Gen2', '70:A7:41:12:E8:06', 'Hap ac rd', 'F4:92:BF:B2:0B:CB', NULL, NULL, 'Casa Silencio', 'Jorge2022', 'CGT6', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1074, 'Carlos Jimenez Estrada casa TranquilaSarah Zirkel Casa Tranquila', '83601950', 'Estrada', 50, '20220159', '9.889852, -85.452758', 'sd23jy67', 'LBE-5AC-Gen2', '70:A7:41:12:E8:06', 'Linksys  E2500', '58EF6848BD1T', NULL, NULL, 'Casa Tranquila', 'Juanka2022', 'CGT6', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1075, 'Gerber Edinson', '6170-5107', 'Dulce Nombre', 10, '20220160', '10.081150,-85.493885', 'SGvg234R', 'LiteBeam M5', '24:5A:4C:B6:06:0A', 'hAP lite', '08:55:31:77:47:81', 'ETH-SP-G2', NULL, 'Super Bahia', 'n^Xu^6h9iU$&ddcB!*9vM@YiZc#QVu!3*5ZM*FhBwM$26Mqu@@g5tZ4EHnJh^RR', 'SEGT6', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1076, 'Anthon Kast  (pollera)', '8912-3968', 'La libertad', 3, '20220161', '10.063432, -85.440947', 'MBZXre33', 'LiteBeam M5', '68:D7:9A:A8:5E:CB', 'hAP lite', '08:55:31:77:17:33', 'ETH-SP-G2', NULL, 'ANTON', '123456789', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1077, 'Tara  jaeger', '84481059', 'camaronal', 10, '20220162', '9.868998, -85.450559', 'cay567r4', 'LiteBeam M5', '24:5A:4C:DC:26:2A', 'hAP lite', '08:55:31:77:17:41', 'ETH-SP-G2', NULL, 'Mono Loco', 'Pocoloco', 'CGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1078, 'Ricardo Delicias Garza', '7075-3920', 'Delicias Garza', 10, '20220163', '9.9295783,-85.6149723', 'Frh67Yu8', 'LBE-5AC-Gen2', '70:A7:41:12:E1:34', 'hAP lite', '08:55:31.79:18:B3', 'ETH-SP-G2', '21044115525', NULL, NULL, 'GGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1079, 'Guerin Rojas ', '8452-6740', 'Huacas', 3, '20220164', '10.01643, -85.363104', 'MNb65ERd', 'NANOSTATION', '24:5A:4C:34:3C:01', 'hAP lite', '18:FD:74:5F:FE:81', 'ETH-SP-G2', NULL, 'Familia Rojas Batista', 'Maikel123', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1080, 'Juan Carlos Pineda Alvarado', '8978-2522', 'La libertad', 3, '20220165', '10.063569, -85.441924', 'O7Yush34', 'LiteBeam M5', '24:5A:4C:DC:08:36', 'Linksys  E2500', '24:F5:A2:6E:80:AC', 'ETH-SP-G2', NULL, 'Jobel Pinea', '5545jcyv', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1081, 'Udo Ehrenfeuchter', '4.91703E+11', 'Huacas', 10, '20220166', '10.001998, -85.373291', 'nas67Ytd', 'LBE-5AC-Gen2', '70:A7:41:12:E0:38', 'hAP lite', 'DC:2C:6E:68:66:35', 'ETH-SP-G2', NULL, 'Casa Azul._Udo', 'NoelleEstelle2012', 'GT7', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1082, 'Franz  Ruhl amaranta', '84581103', 'Amaranta', 30, '20220167', '9.906526, -85.534234', 'SUPu78sd', 'LBE-5AC-Gen2', '24:5A:4C:B4:7B:7A', 'Linksys  E2500', NULL, 'ETH-SP-G2', NULL, 'Casa Frank 1', '12345678', 'BVGT2', NULL, 'clever-frank@gmx.de', 3, NULL, 0, 0, 0, 0),
(1083, 'Juan Carlos terciopelo', NULL, 'Terciopelo', 10, '20220168', '9.942726,-85.520689\r\n', 'A234dfTU', 'LiteBeam M5', '24:5A:4C:DC:3B:9F', NULL, NULL, 'ETH-SP-G2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1084, 'Flor Casa Brillasol', '83866556', 'Terciopelo', 10, '20220169', '9.943043,-85.520212\r\n', 'Daqw45Hj', 'LiteBeam M5', '24:5A:4C:DD:32:30', NULL, NULL, 'ETH-SP-G2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 128, 1076),
(1085, 'Stephane Yves', '33 6 20 34 19 37', 'Buena Vista', 10, '20220170', '9.9102224, -85.5381621', 'rty890AS', 'LBE-5AC-Gen2', '68:D7:9A:B2:39:E3', 'hAP lite', 'DC:2C:6E:68:66:12', 'ETH-SP-G2', NULL, 'Samarica', 'Cubera83', 'BVGT3', NULL, 'stephane.vanuxeem@wadoo.fr', 3, NULL, 0, 0, 128, 1050),
(1086, 'Nikole Neukirch amaranta', '86473922', 'Amaranta', 100, '20220171', '9.908441, -85.53186', 'ert234AS', 'ETHERNET', 'ETHERNET', 'ETHERNET', 'ETHERNET', 'ETHERNET', 'ETHERNET', NULL, NULL, '3011 PRINC', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1087, 'Maria Perez Mora', '6020-0905', 'LOs Angeles', 6, '20220172', '10.076354, -85.396801', 'TYUbv45f', 'LBE-5AC-Gen2', '24:54:4C:C0:71:56', 'hAP lite', 'DC:2C:6E:F4:F9:5B', 'ETH-SP-G2', '21014130966', 'Garcia Perez', '3121624', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1088, 'Marina Benso Osti (Casa Marina)', '6136-1590', 'Samara', 20, '20220173', 'nan', '020FRTa3', 'LBE-5AC-Gen2', '70:A7:41:12:E2:83', 'hAP lite', 'DC:2C:6E:F4:F9:44', 'ETH-SP-G2', NULL, 'Casa Marina', 'casamarina2022', 'CGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1089, 'Susana Vargas Vargas', '60084334', 'Cuesta Grande', 20, '20220174', '10�00�06.5/85�30�11.8', 'sdxz5678', 'LBE-5AC-Gen2', '74:AC:B9:F4:D9:B8', 'hAP lite', 'DC:2C:6E:AE:54:3D', 'ETH-SP-G2', NULL, 'Jayda walt', 'August2022', 'SEGT1', NULL, 'jayda27@gmail.com', 3, NULL, 0, 0, 0, 0),
(1090, 'Jos� Luiz zeledon', '88033698', 'Santa Elena', 3, '20220175', '10.000362, -85.470083', 'ert56POP', 'LBE-5AC-Gen2', '70:A7:41:12:E1:7F', 'hAP lite', 'DC:2C:6E:AE:56:F5', 'ETH-SP-G2', NULL, 'Zeledon Nunez', '18300104', 'GT8', '5-328-428', 'Jose18063006@hotmail.com', 3, NULL, 0, 0, 0, 0),
(1091, 'Dagnes orias rosales', '50113610', 'Santa Elena', 3, '20220176', '10.007969, -85.470963', 'Dbvt569O', 'LBE-5AC-Gen2', '70:A7:41:12:E4:BD', 'hAP lite', 'DC:2C:6E:AE:52:2B', 'ETH-SP-G2', NULL, 'Benjamin', 'maheva2022', 'GT8', '503930983', 'Dagnesperez@gmail.com', 3, NULL, 0, 0, 0, 0),
(1092, 'Comite deportes Pilangosta', '8315-2259', 'Pilangosta', 20, '20220177', '10.03265, -85.406182', 'mnbty65E', 'LBE-5AC-Gen2', '24:5A:4C:C0:75:6E', 'hAP lite', '18:FD:74:5D:98:E8', 'ETH-SP-G2', NULL, 'C.D.R. Pilangosta', 'xfncdr2022', 'GT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1093, 'Ivannia Mendoza Espinoza (Casa Jungle)', '8639-5565', 'Buena Vista', 20, '20220178', '9.911165,-85.536788\r\n', '89hRtvcK', 'LBE-5AC-Gen2', '74:AC:B9:86:FB:0C', 'hAP lite', 'AP PROPIO', 'ETH-SP-G2', NULL, 'Casa Jungle', 'Jungle22', 'BVGT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1094, 'Vidal Esquivel Herrera', '8619 2823', 'Nosarita', 3, '20220179', '10.039131, -85.48768', '890NMR34', 'LBE-5AC-Gen2', '24:5A:4C:C0:85:72', 'hAP lite', 'DC:2C:6E:AE:57:29', 'ETH-SP-G2', NULL, 'Casa Tranquila', 'esquivel22', 'SEGT13', '50265 0066', 'Casaventura2@hotmail.com', 3, NULL, 0, 0, 0, 0),
(1095, 'Casa Jungle (Tierry Mappas)', '8785 9757', 'Buena Vista', 50, '20220180', '9.909484,-85.538688', 'iopBr567', 'LBE-5AC-Gen2', '24:5A:4C:C0:7E:78', 'AP PROPIO', 'AP PROPIO', 'ETH-SP-G2', NULL, 'Casa Jungle', 'Puravida', 'BVGT3', NULL, NULL, 3, NULL, 0, 0, 132, 1056),
(1096, 'Ivannia Castro Castro', '8543-7412', 'Huacas', 6, '20220181', '10.022062,-85.357263\r\n', 'jyuTB56F', 'LBE-5AC-Gen2', '24:5A:4C:C0:72:5B', 'hAP lite', '2C:C8:1B:56:56:3F', 'ETH-SP-G2', NULL, 'Coca Pan', 'Lolas1629', 'GT2', NULL, 'ivaniacastrocastro50@gmail.com', 3, NULL, 0, 0, 0, 0),
(1097, 'Refugio y Reserva Camaronal', '84541376', 'Camronal', 30, '20220182', '9.863808,-85.444868', 'mnBE1234', 'LBE-5AC-Gen2', '24:5A:4C:C0:7E:F2', 'hAP lite', 'DC:2C:6E:AE:51:E9', 'ETH-SP-G2', NULL, 'Casa Guarda Parques', 'mobulabirostris', 'CGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1098, 'Ron Manuel Sporer', '8601-3651', 'San Gerardo', 6, '20220183', '10.056503,-85.434975\r\n', 'NbcRtg6r', 'LBE-5AC-Gen2', '24:5A:4C:C0:7C:C0', 'hAP lite', 'DC:2C:6E:68:6C:AB', 'ETH-SP-G2', NULL, 'Casa Ron', 'r1hr312973', 'GT4', NULL, NULL, 3, NULL, 0, 0, 127, 0);
INSERT INTO `tblcliente` (`id_cliente`, `nombre_cliente`, `telefono`, `localidad`, `velocidad_contratada`, `numero_contrato`, `coordenadas`, `contrasena_ppoe`, `equipo_1`, `mac_address_1`, `equipo_2`, `mac_address_2`, `equipo_3`, `serie`, `wifi_nombre`, `wifi_contrasena`, `sector_anclado`, `cedula`, `correo`, `id_tipo_cliente`, `fecha_instalacion`, `monto_instalacion`, `mensualidad`, `TMU`, `numero_facturacion`) VALUES
(1099, 'James McGregor', '1 (514) 927-0933', 'Buen Vista', 10, '20220184', '9.935107,-85.543587', 'LOP7yr3s', 'LBE-5AC-Gen2', 'F4:92:BF:42:22:36', 'AP PROPIO', 'AP PROPIO', 'ETH-SP-G2', NULL, 'Colibri', 'costarica', 'BVGT5', NULL, NULL, 3, NULL, 0, 0, 128, 0),
(1100, 'Freiman Venegas Gran', '6299-1952', 'LOs Angeles', 6, '20220185', '10.075294,-85.394523', 'BvFrtuJ9', 'LBE-5AC-Gen2', '70:A7:41:1A:A2:77', 'hAP lite', '2C:C8:1B:56:56:5D', 'ETH-SP-G2', NULL, 'Fam Vegas Alcoocer', 'Granados1990', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1101, 'Gerardo Salazar Picado', '8851-8849', 'Cuesta Blanca', 10, '20220186', '10.040183,-85.425913\r\n', 'Tyhgcer4', 'LBE-5AC-Gen2', 'FC:EC:DA:C4:89:68', 'hAP lite', '2C:C8:1B:56:47:F9', 'ETH-SP-G2', NULL, 'Salazar Mora', 'Gerardo5156114', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1102, 'Agustin Hidalgo Morera (Ganaderia el comienzo)', '8834-3095', 'Terciopelo', 50, '20220187', '9.936084,-85.521694', '20agtYdd', 'LBE-5AC-Gen2', '70:A7:41:12:E5:D9', 'hAP lite', 'DC:2C:6E:F4:FD:DB', 'ETH-SP-G2', NULL, 'Casa 2', '28282828', 'BVGT7', NULL, 'Ibusesorotinafacturas@gmail.com', 3, NULL, 0, 0, 132, 1047),
(1103, 'Zeneida Castro Castro', '8429-0403', 'Huacas', 3, '20220188', '10.022189,-85.357215\r\n', 'Nmuy67rC', 'LBE-5AC-Gen2', '70:A7:41:1A:E3:AA', 'hAP lite', '08:55:31:84:33:C5', 'ETH-SP-G2', NULL, 'Zeneida', '229151110', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1104, 'Johan Delicias', '1 202 999 0806', 'Las delicias', 50, '20220189', '9.923477,-85.627745', 'VCDS234r', 'Powerebeam 2AC 400', '24:5A:4C:F0:2B:30', 'hAP lite', NULL, 'ETH-SP-G2', NULL, NULL, NULL, 'GGT2', NULL, NULL, 3, NULL, 0, 0, 131, 1046),
(1105, 'Johan Delicias', '1 202 999 0806', 'Las Delicias ', 50, '20220190', '9.923477,-85.627745', 'VC54RtCv', 'Powerebeam 2AC 400', '24:5A:4C:F0:2C:2B', NULL, NULL, 'ETH-SP-G2', NULL, NULL, NULL, 'GGT2', NULL, NULL, 3, NULL, 0, 0, 131, 1046),
(1106, 'Maxime Plessis Belair', '1 819 570 8484', 'Cuesta Grande', 10, '20220191', '9.9938455, -85.5054146', '78UIrfte', 'LBE-5AC-Gen2', '70:A7:41:1A:EC:A9', 'hap lite', NULL, 'ETH-SP-G2', NULL, 'Casa Max', '135792468', 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1107, 'Silvain Carrier', '506 87801572', 'Cuesta Grande', 10, '20220192', '9.9937564, -85.5060399', '45fdertY', 'NANO STATION M2', '68:D7:9A:BE:CC:A3', 'hap lite', NULL, 'ETH-SP-G2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1108, 'Javier Humberto Matarrita Morera', '8557-5378', 'Pita Rayada', 10, '20220193', '10.040863,-85.383771\r\n', '0opijnm8', 'LBE-5AC-Gen2', '70:A7:41:1A:EC:C1', 'hap lite', NULL, 'ETH-SP-G2', NULL, 'Matarrita', NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1109, 'William Fonseca Alvarado', '(+1(951)602-0642', 'Huacas', 3, '20220194', '10.035803,-85.357975', 'UIY765cx', 'LiteBeam M5', '68:D7:9A:A1:18:74', 'Hap Mini', '2C:C8:1B:75:B1:4D', 'ETH-SP-G2', NULL, 'Casa  Fonseca', 'fonseca05', 'GT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1110, 'Pierre', NULL, 'Naranjal', 10, '20220195', '9.98149, -85.53475', 'hgt56gcG', 'power Beam', NULL, NULL, NULL, 'ETH-SP-G2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1111, 'Deborah Moss', NULL, 'Delicias Garza', 10, '20220196', '9.9295783,-85.6149723', 'p096Rdxc', 'LBE-5AC-Gen2', '68:D7:9A:B2:39:D9', 'ROUTER PROPIO', 'ROUTER PROPIO', 'ETH-SP-G2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1112, 'Pablo Garita', '8311-6437', 'San Gerardo', 6, '20220197', '10.055541,-85.436639', 'jvR43sDB', 'LBE-5AC-Gen2', '68:D7:9A:B2:56:F7', NULL, NULL, 'ETH-SP-G2', NULL, NULL, NULL, 'GT4', '603310192', NULL, 3, NULL, 0, 0, 0, 0),
(1113, 'Luci Price', '(+1 (808) 936-9988)', 'BUENA Vista', 10, '20220198', '9.9104873, -85.5377208', 'BVCX12QW', 'LiteBeam M5', '70:A7:41:20:6B:FC', NULL, NULL, 'ETH-SP-G2', NULL, NULL, NULL, 'BVGT3', '660997510', NULL, 3, NULL, 0, 0, 128, 1057),
(1114, 'Josh Silver', '(+1 (413)687-5584)', 'Esterones', 20, '20220199', '9.9008861, -85.5542376', 'nbhy76ds', 'LBE-5AC-Gen2', 'F4:92:BF:E0:51:B2', 'ROUTER PROPIO', 'ROUTER PROPIO', 'ETH-SP-G2', NULL, NULL, NULL, 'SGT', NULL, NULL, 3, NULL, 0, 0, 130, 1052),
(1115, 'Jose Angel Urbina', '6068-3457', 'San isidro ', 10, '20220200', '9.9814163,-85.3958166', '097hgvcr', 'LBE-5AC-Gen2', '70:A7:41:1C:84:CF', 'hap lite', '18:FD:74:8A:8B:6F', 'ETH-SP-G2', NULL, 'Familia Valverde', '20737588', 'SEGT14', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1116, 'Marco D�molly', '88369469', 'Amaranta', 10, '20220201', '9.9107211, -85.5325908', 'Jy56uh23', 'LBE-5AC-Gen2', '70:A7:41:1C:82:81', 'hap lite', '18:FD:74:8A:8B:69', 'ETH-SP-G2', NULL, 'CasaSandra', 'Maurizio', 'BVGT7', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1117, 'Luis Elias', NULL, 'San Gerardo', 10, '20220202', '10.055541,-85.436639', 'HT254yus', 'LBE-5AC-Gen2', '70:A7:41:1C:C3:16', 'hap lite', 'DC:2C:6E:AE:4B:9F', 'ETH-SP-G3', NULL, 'Kelu', 'Todomayuscula', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1118, 'Juana Rivas Mendoza', '83767605', 'LOs Angeles', 3, '20220203', '10.080785,-85.393132', 'JNT56rSA', 'LBE-5AC-Gen2', '70:A7:41:1C:85:E5', 'hap lite', 'DC:2C:6E:AE:39:63', 'ETH-SP-G4', NULL, 'PIZZA FRNAK', 'lolita23', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1119, 'Franklin Venegas Castillo', '8764-3808', 'LOs Angeles', 3, '20230101', '10.079974,-85.3847', 'fnmr6Gvc', 'LBE-5AC-Gen2', '70:A7:41:1C:86:6C', 'hap lite', '18:FD:74:8A:8B:0B', NULL, NULL, 'Fran Venegas', 'AniFer0804', 'GT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1120, 'Saskia Quiros Batres', '8627-1859', 'Santa Martha', 10, '20230102', '9.9214565, -85.4410849', 'oTVfr1qu', 'LBE-5AC-Gen2', '70:A7:41:1C:BC:BC', 'hap lite', '18:FD:74:8A:8C:D1', NULL, NULL, 'SAS', 'sisi7669', 'ASGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1121, 'Proyecto Hotel Cerro Azul', '8946-3019', 'Cerro Azul', 10, '20230103', '10.006712,-85.306903\r\n', '12XMN7u3', 'PowerBeam M5', '68:D7:9A:96:2A:7F', NULL, NULL, NULL, NULL, NULL, NULL, 'AZGT1', NULL, NULL, 3, NULL, 0, 0, 128, 1079),
(1122, 'Guillermo Angulo', '6040-8023', 'Altos del socorro', 20, '20230104', '9.958173,-85.399354', 'vFfT56dn', 'LBE-5AC-Gen2', '78:45:58:A8:84:59', 'hap lite', '18:FD:74:8A:C2:99', NULL, NULL, '116chapala', 'A((.P1us', 'CGT3', NULL, NULL, 3, NULL, 0, 0, 130, 1060),
(1123, 'FLAWLESS VIEW LIMITADA casa argudas', '8611-8407', 'Las delicias', 10, '20230105', 'nan', 'NMLser45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 128, 1078),
(1124, 'frank caba�as Amaranta', 'Regalia', 'amaranta', 15, '20230105', '9.91202, -85.53013', 'NMLser45', NULL, NULL, NULL, NULL, NULL, NULL, 'Casa 1', '12345678', 'AGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1125, 'Mauricio Castro Hernandes', '83275492', 'Santa Martha', 10, '20230106', '9.9208699, -85.4427683', 'GTY56saq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1126, 'Karla Veronica  Carrillo Obando', '8911-1887', 'Los angeles', 6, '20230107', '10.07558,-85.39511', 'Retcd340', 'LBE-5AC-Gen2', '70:A7:41:1C:BC:FD', 'hap lite', NULL, NULL, NULL, NULL, NULL, 'GT3', NULL, NULL, 3, NULL, 0, 0, 127, 1064),
(1127, 'Catherine suarez  (fabiola carvajal)', '6225-0781', 'San Fernando', 50, '20230108', '9.91887, /85.53723', 'NMY67Sad', 'LBE-5AC', '70:A7:41:1C:BD:F2', 'hap lite', NULL, NULL, NULL, NULL, NULL, 'BVGT3', NULL, 'faby041208@gmail.com', 3, NULL, 0, 0, 132, 1063),
(1128, 'Joshua Broussard', '8760-7570', 'Santa Martha', 10, '20230109', '9.9220450, -85.4434470', 'yhu65vcd', 'LBE-5AC', '70:A7:41:28:3D:D5', 'hap lite', '18:FD:74:8A:B7:59', NULL, NULL, 'NACHOINTERNET', '1234567890', 'ASGT1', NULL, 'J333@duck.com', 3, NULL, 0, 0, 0, 0),
(1129, 'Cecile Colnaghi', '6346-3590', 'Buena Vista', 20, '20230110', '9.91202, -85.53516', 'pmn123qA', 'LBE-5AC', '70:A7:41:28:3E:EB', 'hap lite', '18:FD:74:8A:B7:0C', NULL, NULL, 'Casa ', 'pequena', 'BVGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1130, 'Eddi Gonzales', '8886-6828', 'Santa Elena', 10, '20230111', '10.007164, -85.471122', 'nbvcr54D', 'LBE-5AC', '70:A7:41:1C:21:96', 'hap lite', 'DC:2C:6E:AE:20:9E', NULL, NULL, 'Familia Gonzales Diaz', 'Valentina2018', 'GT8', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1131, 'Eduardo Pineda Barrantes', '6015-0393', 'La Libertad', 20, '20230112', '10.064525,-85.430482', 'MNu7yFSe', 'LBE-5AC-Gen2', '70:A7:41:28:3F:40', 'hap lite', '18:FD:74:8A:8C:D1', NULL, NULL, 'Caliope PJ', 'caliopeatenea', 'GT4', '503530884', 'edkreator@hotmail.com', 3, NULL, 0, 0, 130, 1065),
(1132, 'Alexander Villagra Hernandez', '84493040', 'santa Martha', 10, '20230113', '9.88343, -85.44314', 'nm789poG', 'LBE-5AC-Gen2', '70:A7:41:1C:22:BF', 'hap lite', 'DC:2C:6E:AE:39:A7', NULL, NULL, 'Rancho Yellowstone', 'MRBAVH23', 'ASGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1133, 'Flor Guevara', '8321-1331', 'Amaranta', 10, '20230114', '9.919728,-85.525979\r\n', 'po90Ngr1', 'PBE-2AC-400', '24:5A:4C:F0:27:5A', 'hap lite', NULL, NULL, NULL, NULL, NULL, 'BVGT8', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1134, 'Fredy Obregon Aleman', '8778-3774', 'santa Martha', 10, '20230115', '9.919605,-85.443381', 'cvbxERT1', 'LBE-5AC-Gen2', '70:A7:41:1A:C9:8F', 'hap lite', '18:FD:74:8A:B8:A4', NULL, NULL, 'Rumina Come Tamales', 'M1mic1t428', 'ASGT1', '502540543', NULL, 3, NULL, 0, 0, 0, 0),
(1135, 'Quetzal Tomartia Hernandez', '8352-6856', 'Las Delicias', 10, '20230116', '10.087867,-85.391115', 'BNTDF312', 'LBE-5AC-Gen2', '70:A7:41:1A:D9:A1', 'hap lite', '18:FD:74:8A:C1:E6', NULL, NULL, 'Casa Q', 'delicias2023', 'GGT1', NULL, NULL, 3, NULL, 0, 0, 128, 1066),
(1136, 'Wilfredo Matarrita Matarrita', '7177-8137', 'Pita Rayada', 6, '20230117', '10.03514,-85.387403', 'mnad43er3', 'LBE-5AC-Gen2', '70:A7:41:1C:21:75', 'hap lite', '18:FD:74:8A:B1:0E', NULL, NULL, 'Maribel', '24041979', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1137, 'Maria Kruse', '8449-2525', 'Cuesta Grande', 10, '20230118', 'nan', 'vbnyt78y', 'LBE-5AC', '70:A7:41:28:84:DF', 'hap lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 128, 1069),
(1138, 'ASADA Buena Vista Tanque', NULL, 'Amaranta', 3, '20230119', 'nan', 'HBt43QWo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1139, 'ASADA Buena Vista Pozo', NULL, 'Buena Vista', 3, '20230120', 'nan', 'MKNB5tDc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1140, 'Angelica Delgado Madrigal', '8814-2283', 'La libertad', 10, '20230121', '10.056612,-85.430176', 'nby645E3', 'LBE-5AC-Gen2', '70:A7:41:28:85:B9', 'hap lite', '18:FD:74:8A:B1:22', NULL, NULL, 'GSM', 'Sarita1799', 'GT4', '2-0553-0155', NULL, 3, NULL, 0, 0, 0, 0),
(1141, 'Melany Venegas', '8515-6164', 'Pita Rayada', 3, '20230122', '10.04124,-85.384313', '9uyW12Xd', 'LBE-5AC-Gen2', '70:A7:41:1C:21:91', 'hap lite', '18:FD:74:8A:B7:86', NULL, NULL, 'Alanna', 'A070821*', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1142, 'Luis Adolfo Castrillo Fajardo', '8788-9098', 'San Gerardo', 6, '20230123', '10.049445, -85.431734', 'bvT98U76', 'LBE-5AC-Gen2', '68:D7:9A:A8:6A:06', 'hap lite', '18:FD:74:8A:B7:61', NULL, NULL, 'Castrillo', '87654321', 'GT4', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1143, 'Sara Maria Erb', '41797770714', 'Zapotal', 20, '20230124', '9.997144,-85.316589', 'cv31EAfry', 'LBE-5AC-Gen2', '70:A7:41:1A:FD:A7', 'hap lite', NULL, NULL, NULL, 'Sara', '12345678', 'GT2.', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1144, 'Cecile Colnaghi', '6346-3590', 'Buena Vista', 10, '20230125', '9.91202, -85.53516', 'cG5rt12S', 'LBE-5AC-Gen2', 'F4:92:BF:42:3C:DE', 'hap lite', '18:FD:74:8A:A6:19', NULL, NULL, 'Casa Cecilie', '12345678', 'BVGT7', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1145, 'Rebeca Navarrte Noguera (Tj Jac Information)', '8811-1968', 'Garza', 20, '20230126', '9.957722,-85.615180', 'fgt6ybd4', 'LiteBeam M5', '70:A7:41:22:C6:27', 'hap lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 120, 1068),
(1146, 'Steve Bliss (Camaronal)', '8658-4031', 'Camaronal', 20, '20230127', 'nan', '89DTr2AH', 'LBE-5AC-Gen2', '70:A7:41:28:85:BB', 'hap lite', '18:FD:74:8A:8A:C9', NULL, NULL, 'Casa Bliss', '12345678', NULL, NULL, NULL, 3, NULL, 0, 0, 130, 1067),
(1147, 'Allan Obregon Lopez', '8604-6917', 'San Gerardo', 10, '20230128', '10.052959,-85.429768', 'vnm4tig9', 'LBE-5AC-Gen2', '68:D7:9A:B4:B7:E6', 'hap lite', '08:55:31:71:0C:35', NULL, NULL, 'PROF ALLAN', 'katana1984', 'GT4', '503410703', NULL, 3, NULL, 0, 0, 0, 0),
(1148, 'Mariana Mayorga Perez', '6079-0703', 'Matmabuguito', 6, '20230129', '10.104732,-85.414536', '89UJGdsr', 'LBE-5AC-Gen2', '70:A7:41:28:85:BB', 'hap lite', 'DC:2C:6E:68:73:55', NULL, NULL, 'Mary', 'Ema243188', 'MGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1149, 'Dafina Thur', NULL, 'Altos del socorro', 20, '20230130', '9.957628,-85.402625\r\n', 'Lu67DXC5', 'PBE-M5-400', '68:D7:9A:96:2A:7F', 'hap lite', NULL, NULL, NULL, NULL, NULL, 'CGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1150, 'Dayanna barthley arce ', '8690-7375', 'Maquenco', 10, '20230131', '9.96356,-85.51434\r\n', 'lY6543Sv', 'LBE-5AC ', '24:5A:4C:B6:0A:68', 'hap lite', '08:55:31:77:7D:5D', NULL, NULL, 'Tyson', 'Homerun09', 'SEGT2', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1151, 'Dievy Ronaldo Carazo', '8461-6814', 'Pita Rayada', 3, '20230132', '10.041279,-85.384337\r\n', 'FT23QW1', 'LBE-5AC-Gen2', '68:D7:9A:A8:7A:6B', 'hap lite', 'DC:2C:6E:F4:F9:D9', NULL, NULL, 'Jefferson', 'kenai123', 'GT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1152, 'Wolfgang con Stachelski', '8984-9852', 'Altos del socorro', 10, '20230133', '9.958354,-85.398472', '09HT12as', 'PBE-M5-400', '68:D7:9A:96:26:D6', 'hap lite', NULL, NULL, NULL, NULL, NULL, 'CGT3', 'E4388332', 'wolfgangvonstachelski@gmail.com', 3, NULL, 0, 0, 128, 1071),
(1153, 'Manfred Ad�n Vega Espinoza ', '8644-0142', 'La libertad', 10, '20230134', '10.062168,-85.442467\r\n', 'Vbzsa12A', 'LBE-5AC ', '70:A7:41:1C:24:9D', 'hap lite', '08:55:31:78:C1:79', NULL, NULL, 'Familia Vega Mendoza', 'Mc14121$', 'SEGT4', '503190549', 'manfredvegaespinoza@gmail.com', 3, NULL, 0, 0, 128, 1072),
(1154, 'Mariana Madrigal Castillo', '6284-7836', 'Samara', 20, '20230135', '9.9155377,-85.526699', 'MLOc56Fb', 'LBE-5AC-Gen2', 'F4:92:BF:42:22:36', 'hap lite', '18:FD:74:A8:84:EE', NULL, NULL, 'The Yorringtons', 'Yorringtons2001', 'BVGT6', '114270440', 'Madrigalcastillomari559@gmail.com', 3, NULL, 0, 0, 0, 0),
(1155, 'Cloudbird bonin  Nube', '89240495', 'samara', 10, '20230136', '9.91990, -85.52607', 'Jai4tyq1', 'PBE-M5-400', '24:5A:4C:F0:29:81', 'hap lite', NULL, NULL, NULL, NULL, NULL, 'BVGT8', '3102867746', 'cloudbird3@gmail.com', 3, NULL, 0, 0, 128, 1074),
(1156, 'Alejandro Arce Ulloa', '8599-4352', 'Buena vista', 10, '20230137', '9.910871,-85.538338', 'JusvR4da', 'LBE-5AC', '70:A7:41:28:76:0C', 'hAP lite', '18:FD:74:A8:86:23', NULL, NULL, 'Filitico', 'Potrero0203', 'BVGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1157, 'Troy (Edith Zeledon)', '8972-2929', 'Cuesta Grande', 10, '20230138', '9.9941381, -85.5060289', '657Hvfre', 'NBE-5AC-Gen2', '70:A7:41:14:E0:21', 'hAP lite', '18:FD:74:8A:B8:35', NULL, NULL, 'Los Antonio', 'Enjoy2022', 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1158, 'Katie Redford  (Charles Milner  Due�o casa)', '1 250 320 3959', 'cuesta grande', 20, '20230139', '9.9956253, -85.5061348', 'LpobRe34', 'PBE-2AC-400', '24:5A:4C:F0:27:E8', 'hAP lite', '18:FD:74:A8:85:99', NULL, NULL, 'Carlos', 'Carlos300!', 'SEGT7', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1159, 'Rudy Mendoza', '87088403', 'Esterones', 10, '20230140', '9.8859666, -85.5660899', 'Bvc1a2wu', 'LiteBeam M5', '70:A7:41:22:A2:05', 'hAP lite', NULL, NULL, NULL, NULL, NULL, 'Enlace-Esterones-GT', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1160, 'Robert Calhoun Grainger  Casa Gaia', 'email', 'Garza', 30, '20230141', '9.911376,-85.61369', 'Nbt56fdVH', 'PBE-M5-400', '78:8A:20:64:F1:90', 'hAP lite', '18:FD:74:A8:84:F4', NULL, NULL, 'Casagaia', 'shadow50', 'GRZ-B-DAT-1768-001', NULL, 'robcgrainger@msn.com', 3, NULL, 0, 0, 184, 1083),
(1161, 'Mike Schaefe', '8656-0308', 'Estrada', 30, '20230142', '9.889168,-85.45307', 'mnHt56De', 'LBE-5AC', '70:A7:41:1A:F9:05', 'hAP lite', '18:FD:74:A8:A0:3F', NULL, NULL, 'Casa Sandra', 'Timo2015', 'CGT2', 'C4VW3KC36', 'handelschaefer@gmail.com', 3, NULL, 0, 0, 131, 1075),
(1162, 'Michael Keenan & Carol Guida (STEADY AS WE GO LLC SRL)', '1 (860) 933-2027', 'Garza', 10, '20230143', '9.911376,-85.61364', 'cv45R3SE', 'PBE-M5-400', 'F0:9F:C2:88:9D:68', 'hAP lite', '18:FD:74:A9:3F:5A', NULL, NULL, 'CarolMichael House', 'SAWG212023', 'GRZ-B-DAT-1768-001', '3-102-807060', NULL, 3, NULL, 0, 0, 120, 1080),
(1163, 'Asada San Fernando', NULL, 'San Fernando', 10, '20230144', '9.920791,-85.533432', 'NJK9df2E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1164, 'Oldemar Matarrita Matarrita', '6312-5943', 'San Fernando', 6, '20230145', 'nan', 'vgty67As', 'LBE-5AC', '68:D7:9A:A8:50:D3', 'hAP lite', '18:FD:74:A8:8F:9E', NULL, NULL, 'Nadine', '20021065', 'SFGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1165, 'Marjurie Miranda Matamoros', '6347-0009', 'Estrada', 6, '20230146', '9.88162,-85.452393\r\n', 'HJy67FCA', 'LBE-5AC', '68:D7:9A:A8:61:39', 'hAP lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1166, 'Dixi Dayana Matarrita Salazar', '8539-6615', 'Pita Rayada', 3, '20230147', '10.040268,-85.383397\r\n', 'SqwVBHjk', 'LBE-5AC', '70:A7:41:1A:FC:13', 'hAP lite', 'DC:2C:6E:04:53:32', NULL, NULL, 'Familia Valverde Matarrita', 'mnbv1234', 'GT1.', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1167, 'Luis Alberto Romero Borge', '8821-4792', 'San Fernando', 10, '20230148', '9.920087,-85.533801\r\n', 'De678Lp0', 'LBE-5AC', '68:D7:9A:B2:3C:46', 'hAP lite', '18:FD:74:A8:9B:04', NULL, NULL, 'LORO1', 'DONALuisa1', 'SFGT1', '800930432', NULL, 3, NULL, 0, 0, 0, 0),
(1168, 'Luis Fernando Mendoza Centeno', '6212-0426', 'La libertad', 10, '20230149', '10.062267,-85.44194\r\n', 'Aq23Sqop', 'LBE-5AC', '70:A7:41:28:7C:01', 'hAP lite', '18:FD:74:A9:42:51', NULL, NULL, 'Mendoza', 'LFMC1996', 'SEGT4', '5-0411-0977', NULL, 3, NULL, 0, 0, 0, 0),
(1169, 'Maria Custodia Carrillo Alem�n', '8554-0930', 'La libertad', 3, '20230150', '10.063834,-85.426575', '25DswQ1e', 'LBE-5AC', '70:A7:41:1C:40:E5', 'hAP lite', '18:FD:74:A9:42:33', NULL, NULL, 'CASA  ', 'labebita19', 'GT4', '502980039', 'deliciasdelmaiz1977@gmail.com ', 3, NULL, 0, 0, 0, 0),
(1170, 'yanina Jim�nez Fajardo', '8777-6964', 'La libertad', 3, '20230151', '10.064732,-85.42910', '67uLogtY', 'LBE-5AC', '70:A7:41:1C:45:02', 'hAP lite', '18:FD:74:A9:41:E5', NULL, NULL, 'YANINA', 'Yanina34', 'GT4', '503680082', 'jimenezyani13@gmail.com', 3, NULL, 0, 0, 0, 0),
(1171, 'Margaret Dunn', '8803-7700', 'San Fernando', 10, '20230152', '9.928835,-85.536823\r\n', '25KJUasY', 'LBE-5AC', '70:A7:41:28:87:FF', 'hAP lite', '18:FD:74:A8:95:2C', NULL, NULL, 'FAMILIA RUIZ', 'lila2023', 'SFGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1172, 'Jaykay samara', '8328-0221', 'buena vista', 20, '20230153', '9.9057649,-85.5335147', '21BNtYC', 'LBE-5AC', '70:A7:41:28:86:91', 'hAP lite', '18:FD:74:A9:42:80', NULL, NULL, 'CASA ESTRELLAS', 'CasaEstrellas2023', 'BGT7', NULL, 'hillinkent@hotmail.com', 3, NULL, 0, 0, 0, 0),
(1173, 'David Alberto Quiros Solis', '8372-2900', 'San Fernando', 20, '20230154', '9.918288,-85.532896\r\n', 'BVGT5QW', 'LBE-5AC', '70:A7:41:1A:BB:9C', 'hAP lite', '18:FD:74:A8:8F:BE', NULL, NULL, 'Familia Quiros Picado', 'FAQP1720', 'SFGT2', NULL, 'pepetravel85@hotmail.com', 3, NULL, 0, 0, 130, 1077),
(1174, 'Marco Gawehns', '8797-1600', 'Estrada', 30, '20230155', '9.888861,-85.45163\r\n', 'Nvgty6zx', 'NBE-5AC-Gen2', '24:5A:4C:06:8A:75', 'RUJIE ', 'RUJIE', NULL, NULL, 'Holshe Jecke', 'Frieda2909', 'CGT8', NULL, NULL, 3, NULL, 0, 0, 131, 1081),
(1175, 'Greddy Centeno', '8807-7811', 'San Fernando', 6, '20230156', '9.92077,-85.533524\r\n', 'mnhyr4E2', NULL, NULL, 'hAP lite', '18:FD:74:A9:43:45', NULL, NULL, 'GENESIS', 'W31011655423X', 'SFGT4', '503200387', NULL, 3, NULL, 0, 0, 127, 1082),
(1176, 'Jos� �ngel Montiel Torres ', '8832-6267', 'Huacas', 20, '20230157', '10.005968,-85.368627\r\n', 'nbVcd321', 'LBE-5AC-Gen2', '68:D7:9A:B4:A3:B9', 'hAP lite', 'DC:2C:6E:67:18:9A', NULL, NULL, 'Jose Angel Montiel', 'jamt1220', 'GT JAO', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1177, 'Guillermo Angulo', '6040-8023', 'Altos del socorro', 3, '20230158', '9.958173,-85.399354', 'bGt50Pdq', 'PBE-M5-400', '24:5A:4C:F6:DC:0D', 'hAP lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 126, 1060),
(1178, 'Justin Miller', '1 (317)797-3316', 'Camaronal', 20, '20230159', '9.868108,-85.44017\r\n', 'xZswq1T5', 'LBE-5AC', '24:5A:4C:B4:7C:3B', 'hAP lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'justrmil@gmail.com', 3, NULL, 0, 0, 130, 1067),
(1179, 'Mar�a del Rosio S�nchez Porras', '6008-3808', 'La libertad', 6, '20230160', '10.064023,-85.428436\r\n', 'nILpfg53', 'LBE-5AC', '60:22:32:C8:08:7D', 'hAP lite', '18:FD:74:A8:88:12', NULL, NULL, 'Ismael', '18202102', 'GT4', '5-318-779', NULL, 3, NULL, 0, 0, 0, 0),
(1180, 'Manuel Chavez', '8349-3462', 'Estrada', 10, '20230161', '9.8899064, -85.4534774', 'nBGtdsz3', 'ENLACE OPTICO', 'ENLACE OPTICO', 'hAP lite', NULL, NULL, NULL, NULL, NULL, 'Swicht Carlos Jim', '6-01540224', NULL, 3, NULL, 0, 0, 0, 0),
(1181, 'Andrew Weinstein', '1 703 597 6175', 'Guiones', 50, '20230162', '9.9446728, -85.6615423', '6y7U89Vp', 'LBE-5AC', '70:A7:41:1C:1C:AA', 'hAP lite', NULL, NULL, NULL, 'sin wifi', 'sin wifi', 'GGT3', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1182, 'Victoria Rommelspacher', '8984-0117', 'Buena Vista ', 6, '20230163', '10.014439,  -85.47086', 'fr2sr56x', 'Nano Station M5', '78:8A:20:16:1B:32', 'hAP lite', NULL, NULL, NULL, 'Casita Iguana', 'Matilori23', 'BVGT10', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1183, 'Charles Fransisco Carazo Nu�ez', '71427500 (esposa Xiomara)', 'Carrillo', 6, '20230164', '9.87271, -85.49882', '56Potyvs', 'LBE-5AC', '60:22:32:C8:08:F2', 'hAP lite', '18:FD:74:5F:FE:81', NULL, NULL, 'Carazo', 'Brittany', 'CGT1', '206800040', NULL, 3, NULL, 0, 0, 0, 0),
(1184, 'Luis Campos ', '8422-3357', 'Pilangosta', 6, '20230165', '10.031751,-85.417085', 'rt543esC', 'LBE-5AC', '60:22:32:D0:D7:E1', 'hAP lite', '18:FD:74:A9:3D:41', NULL, NULL, 'JLCR', 'JLCR0411', 'GT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1185, 'Marina Benso Osti', '6136-1590', 'San Fernando', 10, '20230166', '9.923403,-85.5322336', '3edrt56yb', 'LBE-5AC', '60:22:32:C8:05:D8', 'hAP lite', '18:FD:74:A9:3E:85', NULL, NULL, 'Casa Marina', 'cabanamarina', 'SFGT5', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1186, 'Neyman', '61300094', 'cuesta grande', 10, '20230167', '10.001679,-85.511917', 'xswqa2QA', 'LBE-5AC', '60:22:32:CE:10:8C', 'hAP lite', '18:FD:74:A8:85:2D', NULL, NULL, 'Barrantes', 'MORTADELA01', 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1187, 'Neyman', '61300094', 'cuesta grande', 10, '20230168', '10.001862,-85.512314', 'ASE345up', 'LBE-5AC', '60:22:32:CE:0F:0E', 'hAP lite', '48:A9:8A:56:80:76', NULL, NULL, 'Neyman', 'Victoria2019', 'SEGT1', NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1188, 'Yomar Aleman Gomez', '6458-7542', 'Garza ', 10, '20230169', '9.956373,-85.61567', 'puygT56a', 'PBE-M5-400', '24:5A:4C:EC:38:46', 'hAP lite', '48:A9:8A:56:82:2E', NULL, NULL, 'ELECTRICOS', 'Yomar.1986', 'GRZ-B-DAT-1768', '503530742', NULL, 3, NULL, 0, 0, 0, 0),
(1189, NULL, NULL, NULL, 0, '20230170', 'nan', '25fgT4sE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1190, NULL, NULL, NULL, 0, '20230171', 'nan', 'JUOgCR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1191, NULL, NULL, NULL, 0, '20230172', 'nan', '09WSaq12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1192, NULL, NULL, NULL, 0, '20230173', 'nan', 'Ygfae34f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0),
(1193, 'Paula Annette White', '83391131', 'Vista al mar', 20, '20221001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 114, NULL, NULL),
(1194, 'MP-Gabiruski Corporation S.A', '83981165', 'Mal pais', 20, '20221010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 203, NULL, NULL),
(1195, 'MAL PAIS BUSINESS ADMINISTRATION S.A (paga fabio casa biba)', '72911222', 'Mal pais', 20, '20221002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172, NULL, NULL),
(1196, 'MAL PAIS MAINTENANCE COMPANY S.A.', '83219900', 'Mal pais', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1197, 'Zodiac Mountain S.A.', '83511208', 'Mal pais', 20, '20221003\r\n20221005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 252, NULL, NULL),
(1198, 'CASA TECAL', '26400880', 'Pausaleku', 20, '20221004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 355, NULL, NULL),
(1199, 'RC Holdings LLC Limitada', '26400611', 'Pausaleku', 20, '20221005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1200, 'AKWABA LIMITADA', '87295233', NULL, 10, '20221006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1201, 'David Gonzalez Quesada', '88304749', 'Panorama', 10, '20221007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172, NULL, NULL),
(1202, 'Villa Forrest Veintiseis Limitada', '9.72509E+11', 'Panorama', 50, '20221008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 517, NULL, NULL),
(1203, 'TRES CIENTO UNO SETECIENTOS SIETE MIL DOSCIENTOS SESENTA SOCIEDAD ANONIMA', '88206261', 'Panorama', 20, '20221009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 114, NULL, NULL),
(1204, '3-102-739344 LTDA', '22888888', 'Garza', 5, '20221011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 269, NULL, NULL),
(1205, 'Carole Priggione', '85504670', 'Garza', 20, '20221012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 201, NULL, NULL),
(1206, 'SABOR Y SENTIMIENTO SOCIEDAD AN�NIMA (cristopher loss)', '2640 0045', NULL, 20, '20221013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 177, NULL, NULL),
(1207, 'ELI AND THE BOYS RETREAT SRL', '87090089', NULL, 40, '20221014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 201, NULL, NULL),
(1208, 'FINCA CRIVELLI LIMITADA (DANIEL PAGA EL SERVICIO)', 'c xz', 'Garza', 20, '20221015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 218, NULL, NULL),
(1209, 'HERN INDUSTRIES LLC SOCIEDAD DE RESPONSABILIDAD LIMITADA', '83773066', NULL, 5, '20221016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 170, NULL, NULL),
(1210, 'MP-MARGOT WINTER (BOUGANBILIA) ST THUNDER PAGA', '88388911', 'Garza', 20, '20221017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 143, NULL, NULL),
(1211, 'Martin Tait', '3455260286', 'Garza', 30, '20221018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1212, 'Richard Bryant', '83215132', 'Garza', 20, '20221019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172, NULL, NULL),
(1213, 'SHUKRANI INVESTMENT SRL', '83114920', 'Garza', 20, '20221020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1214, 'Thomas Drummond Walker', '17579991305', 'Garza', 10, '20221021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 143, NULL, NULL),
(1215, 'Venus de Garza', '84115242', 'Garza', 20, '20221022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 154, NULL, NULL),
(1216, 'Arenal Compuesto Zeta S.A.', '87031561', 'Tilaran', 20, '20221023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 102, NULL, NULL),
(1217, 'Rancho Margot S.A', '89112108', 'Tilaran', 20, '20221024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1218, 'MALA MUJER LIMITADA', '88172816', 'Cerro Azul', 15, '20221025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172, NULL, NULL),
(1219, 'Lloyd George Standish', '40000977', 'cerro azul', 10, '20221026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, NULL, NULL),
(1220, 'Carlotta Jovino', '85166245', 'Cerro Azul', 15, '20221027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 229, NULL, NULL),
(1221, 'HACIENDA VALLE SOLO SRL', '87126519', 'Vista al Mar', 30, '20221028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 315, NULL, NULL),
(1222, 'Asociacion del Santo Nombre', '87379595', 'Vista al Mar', 20, '20221029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 269, NULL, NULL),
(1223, 'Gary Chambers Macdonald (paga 506942244)', '83854080 / 84038326', 'Garza', 30, '20221030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172, NULL, NULL),
(1224, 'MP-Scott Ford', '89916832', NULL, 3, '20221031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 167, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`id_tipo_cliente`, `nombre_cliente`) VALUES
(3, 'Residencial'),
(4, 'Empresarial');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'super_admin'),
(2, 'administrador'),
(3, 'solo_vista');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_tipo_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `correo`, `password`, `id_tipo_usuario`) VALUES
(2, 'Joshua Sandi Guevara', 'joshuasg99@gmail.com', '$2y$10$O0xKhy563EvvdQs7.reFveZL2u.uaSLJ88I2sffV8VumBrKMu4I2u', 1),
(4, 'GT-Solutions', 'gtsolutionscr@gmail.com', '$2y$10$upY1rp6702NJ7vWI8I9LbubcpbV2Q1ZK1qAYqnHVaukzyJoUKmqo6', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pago_mensual`
--
ALTER TABLE `pago_mensual`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indexes for table `precio_residencial`
--
ALTER TABLE `precio_residencial`
  ADD PRIMARY KEY (`id_precio`);

--
-- Indexes for table `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_tipo_cliente` (`id_tipo_cliente`);

--
-- Indexes for table `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id_tipo_cliente`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `usuario_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pago_mensual`
--
ALTER TABLE `pago_mensual`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `precio_residencial`
--
ALTER TABLE `precio_residencial`
  MODIFY `id_precio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1225;

--
-- AUTO_INCREMENT for table `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id_tipo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pago_mensual`
--
ALTER TABLE `pago_mensual`
  ADD CONSTRAINT `pago_mensual_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tblcliente` (`id_cliente`);

--
-- Constraints for table `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD CONSTRAINT `tblcliente_ibfk_1` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
