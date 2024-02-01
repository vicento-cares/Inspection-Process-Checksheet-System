-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 09:48 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `falp_iprocs`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_accounts`
--

CREATE TABLE `m_accounts` (
  `id` int(50) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `line_no` varchar(255) NOT NULL,
  `process` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_accounts`
--

INSERT INTO `m_accounts` (`id`, `id_number`, `full_name`, `username`, `password`, `role`, `line_no`, `process`, `date_updated`) VALUES
(1, 'N/A', 'ADMIN', 'admin', 'admin', 'admin', 'N/A', 'N/A', '2023-08-10 14:04:55'),
(83, 'N/A', 'USER1', 'user1', 'user1', 'user', '5102', 'Appearance', '2023-08-10 14:04:48'),
(84, 'N/A', 'USER2', 'user2', 'user2', 'user', '4110', 'Assurance', '2023-08-10 14:04:51'),
(85, 'N/A', 'USER3', 'user3', 'user3', 'user', '3158', 'Dimension', '2023-08-10 14:05:00'),
(86, 'N/A', 'USER4', 'user4', 'user4', 'user', '3159', 'Dimension', '2023-08-10 14:05:04'),
(87, 'N/A', 'USER5', 'user5', 'user5', 'user', '2113', 'Appearance', '2023-08-10 14:05:08'),
(88, 'N/A', 'user7', 'user7', 'user7', 'user', '4111', 'Assurance', '2023-08-10 14:05:15'),
(89, 'N/A', 'user8', 'user8', 'user8', 'user', '4019', 'Assurance', '2023-08-10 14:05:23'),
(90, 'N/A', 'USER', 'user', 'user', 'user', '5101', 'Dimension', '2023-08-10 17:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `m_inspection_processes`
--

CREATE TABLE `m_inspection_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `process` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_inspection_processes`
--

INSERT INTO `m_inspection_processes` (`id`, `process`, `date_updated`) VALUES
(1, 'Dimension', '2023-08-07 17:37:08'),
(2, 'Appearance', '2023-08-07 17:37:08'),
(3, 'Assurance', '2023-08-07 17:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `m_lines`
--

CREATE TABLE `m_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `line_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_maker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factory_area` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_lines`
--

INSERT INTO `m_lines` (`id`, `line_no`, `car_maker`, `car_model`, `section`, `factory_area`, `date_updated`) VALUES
(1, '4110', 'Toyota', '700B', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(2, '4111', 'Toyota', '700B', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(3, '4018', 'Toyota', '700B', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(4, '4019', 'Toyota', '700B', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(5, '5101', 'Suzuki', 'YV7', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(6, '5102', 'Suzuki', 'YV7', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(7, '5103', 'Suzuki', 'Y6L', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(8, '5104', 'Suzuki', 'Y6L', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(9, '5105', 'Suzuki', 'YV7', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(10, '5111', 'Suzuki', 'YKC', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(11, '5112', 'Suzuki', 'YLP', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(12, '5113', 'Suzuki', 'YSB', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(13, '5114', 'Suzuki', 'YSA/YSB/YSE', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(14, '5015', 'Suzuki', 'XF273', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(15, '5116', 'Suzuki', 'YD1', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(16, '5117', 'Suzuki', 'YD1', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(17, '5119', 'Suzuki', 'YD1', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(18, '5121', 'Suzuki', 'Y0C/YLP', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(19, '5124', 'Suzuki', 'YD1', 'Section 2', 'FAS1', '2023-08-08 14:45:29'),
(20, '5125', 'Suzuki', 'Y2R', 'Section 1', 'FAS1', '2023-08-08 14:45:29'),
(21, '5126', 'Suzuki', 'Y2R', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(22, '5127', 'Suzuki', 'Y2R', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(23, '5128', 'Suzuki', 'Y2R', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(24, '5031', 'Suzuki', 'YKC', 'Section 2', 'FAS1', '2023-08-08 14:45:30'),
(25, '5133', 'Suzuki', 'YT3', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(26, '5138', 'Suzuki', 'Y6L', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(27, '5139', 'Suzuki', 'Y6L', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(28, '5140', 'Suzuki', 'YT3/Y6L', 'Section 1', 'FAS1', '2023-08-08 14:45:30'),
(29, '1135', 'Mazda', 'J30A', 'Section 3', 'FAS1', '2023-08-08 14:45:30'),
(30, '1137', 'Mazda', 'J30A', 'Section 3', 'FAS1', '2023-08-08 14:45:30'),
(31, '1139', 'Mazda', 'J30A', 'Section 3', 'FAS1', '2023-08-08 14:45:30'),
(32, '1040', 'Mazda', 'J30A', 'Section 3', 'FAS1', '2023-08-08 14:45:30'),
(33, '2026', 'Daihatsu', 'D01L/D54L', 'Section 4', 'FAS2', '2023-08-08 14:45:30'),
(34, '2102', 'Daihatsu', 'D11D/D65N', 'Section 4', 'FAS2', '2023-08-08 14:45:30'),
(35, '2104', 'Daihatsu', 'D65N/D33B', 'Section 4', 'FAS2', '2023-08-08 14:45:30'),
(36, '2105', 'Daihatsu', 'D23L/D65N', 'Section 4', 'FAS2', '2023-08-08 14:45:30'),
(37, '2107', 'Daihatsu', 'D23L/D43L/D65N', 'Section 4', 'FAS2', '2023-08-08 14:45:30'),
(38, '1101', 'Mazda', 'J12A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(39, '1102', 'Mazda', 'J12A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(40, '1103', 'Mazda', 'J12A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(41, '1004', 'Mazda', 'J12A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(42, '1005', 'Mazda', 'J12A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(43, '1006', 'Mazda', 'J12A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(44, '1007', 'Mazda', 'J36A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(45, '1008', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(46, '1110', 'Mazda', 'J71E', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(47, '1112', 'Mazda', 'J71E', 'Section 3', 'FAS2', '2023-08-08 14:45:30'),
(48, '1114', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(49, '1115', 'Mazda', 'J71E', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(50, '1117', 'Mazda', 'J71E', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(51, '1118', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(52, '1119', 'Mazda', 'J71E', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(53, '1121', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(54, '1123', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(55, '1124', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(56, '1125', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(57, '1126', 'Mazda', 'J72A', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(58, '1032', 'Mazda', 'J71E', 'Section 3', 'FAS2', '2023-08-08 14:45:31'),
(59, '5123', 'Suzuki', 'YD1', 'Section 1', 'FAS2', '2023-08-08 14:45:31'),
(60, '5130', 'Suzuki', 'YKC', 'Section 1', 'FAS2', '2023-08-08 14:45:31'),
(61, '5132', 'Suzuki', 'YKC', 'Section 1', 'FAS2', '2023-08-08 14:45:31'),
(62, '5135', 'Suzuki', 'YT3', 'Section 1', 'FAS2', '2023-08-08 14:45:31'),
(63, '5009', 'Suzuki', 'YT3', 'Section 1', 'FAS3', '2023-08-08 14:45:31'),
(64, '3122', 'Honda', 'TKRA', 'Section 7', 'FAS3', '2023-08-08 14:45:31'),
(65, '3123', 'Honda', 'TKRA', 'Section 7', 'FAS3', '2023-08-08 14:45:31'),
(66, '3124', 'Honda', 'TKRA', 'Section 7', 'FAS3', '2023-08-08 14:45:31'),
(67, '3125', 'Honda', 'TKRA', 'Section 7', 'FAS3', '2023-08-08 14:45:31'),
(68, '3127', 'Honda', 'TKRA', 'Section 7', 'FAS3', '2023-08-08 14:45:31'),
(69, '3129', 'Honda', 'TKRA', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(70, '3130', 'Honda', 'TTA', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(71, '3133', 'Honda', 'T20A/T50A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(72, '3136', 'Honda', 'T20A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(73, '3138', 'Honda', '3M0A', 'Section 6', 'FAS3', '2023-08-08 14:45:32'),
(74, '3139', 'Honda', '3M0A', 'Section 6', 'FAS3', '2023-08-08 14:45:32'),
(75, '3140', 'Honda', '3M0A', 'Section 6', 'FAS3', '2023-08-08 14:45:32'),
(76, '3141', 'Honda', '3M0A', 'Section 6', 'FAS3', '2023-08-08 14:45:32'),
(77, '3142', 'Honda', '3M0A', 'Section 6', 'FAS3', '2023-08-08 14:45:32'),
(78, '3144', 'Honda', 'T20A/T50A', 'Section 5', 'FAS3', '2023-08-08 14:45:32'),
(79, '3145', 'Honda', 'T20A/T50A', 'Section 5', 'FAS3', '2023-08-08 14:45:32'),
(80, '3053', 'Honda', 'TYA/TJB', 'Section 6', 'FAS3', '2023-08-08 14:45:32'),
(81, '3158', 'Honda', '3T0A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(82, '3159', 'Honda', '3T0A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(83, '3160', 'Honda', '3T0A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(84, '3161', 'Honda', '3T0A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(85, '3168', 'Honda', '3A0A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(86, '3169', 'Honda', '3A0A', 'Section 7', 'FAS3', '2023-08-08 14:45:32'),
(87, '2001', 'Daihatsu', 'D11D/D83A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(88, '2109', 'Daihatsu', 'D54L/D83A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(89, '2111', 'Daihatsu', 'D01L/D94L/D04B/D18B/D19B/D20B', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(90, '2112', 'Daihatsu', 'D01L/D04B/D18B/D96A/D19B/D20B', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(91, '2113', 'Daihatsu', 'D01L/D27B/D04B/D18B/D96A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(92, '2114', 'Daihatsu', 'D01L/D18B/D96A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(93, '2115', 'Daihatsu', 'D01L/D18B/*D96A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(94, '2116', 'Daihatsu', 'D01L/D94L/D18B/D96A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(95, '2117', 'Daihatsu', 'D54L/D83A', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(96, '2119', 'Daihatsu', 'D01L/D04B', 'Section 4', 'FAS3', '2023-08-08 14:45:32'),
(97, '2120', 'Daihatsu', 'D01L/D27B/D04B', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(98, '2121', 'Daihatsu', 'D01L', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(99, '2122', 'Daihatsu', 'D01L/D94L/D04B/D19B/D20B', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(100, '2123', 'Daihatsu', 'D54L/D96A/D92A/D19B/D20B', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(101, '2124', 'Daihatsu', 'D54L/D92A', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(102, '2125', 'Daihatsu', 'D01L/D94L/D96A', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(103, '2127', 'Daihatsu', 'D54L/D83A', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(104, '2128', 'Daihatsu', 'D54A', 'Section 4', 'FAS3', '2023-08-08 14:45:33'),
(105, '7101', 'Subaru', 'GC7/GB8/GZ1/GY2', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(106, '7102', 'Subaru', 'GC7/GB8/GZ1/GY2', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(107, '7103', 'Subaru', 'GC7/GB8/GZ1/GY2', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(108, '7104', 'Subaru', 'GC7/GC7Y/GB8/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(109, '7105', 'Subaru', 'GC7/GB8/GZ1/GY2', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(110, '7106', 'Subaru', 'GC7/GB8/GZ1/GY2', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(111, '7107', 'Subaru', 'GC7/GB8/GZ1/GY2', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(112, '7108', 'Subaru', 'GC7/GC7Y/GB8/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(113, '7109', 'Subaru', 'GC7/GA9/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(114, '7110', 'Subaru', 'GC7/GC7Y/GA9/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(115, '7111', 'Subaru', 'GC7/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(116, '7112', 'Subaru', 'GC7/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(117, '7113', 'Subaru', 'GC7', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(118, '7114', 'Subaru', 'GC7/GC7Y/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(119, '7015', 'Subaru', 'GC7', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(120, '7116', 'Subaru', 'GZ1/GC7Y', 'Section 5', 'FAS3', '2023-08-08 14:45:33'),
(121, '7118', 'Subaru', 'GA9/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:34'),
(122, '7119', 'Subaru', 'GC7/GC7Y/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:34'),
(123, '7120', 'Subaru', 'GA9/GZ1', 'Section 5', 'FAS3', '2023-08-08 14:45:34'),
(124, '7121', 'Subaru', 'GC7/GA9', 'Section 5', 'FAS3', '2023-08-08 14:45:34'),
(125, '7122', 'Subaru', 'GC7/GA9', 'Section 5', 'FAS3', '2023-08-08 14:45:34'),
(126, '7023', 'Subaru', 'GA9', 'Section 5', 'FAS3', '2023-08-08 14:45:34'),
(127, '5006', 'Suzuki', 'YV7', 'Section 1', 'FAS4', '2023-08-08 14:45:34'),
(128, '5029', 'Suzuki', 'YSB', 'Section 1', 'FAS4', '2023-08-08 14:45:34'),
(129, '5018', 'Suzuki', 'YD1', 'Section 2', 'FAS4', '2023-08-08 14:45:34'),
(130, '3031', 'Honda', 'TKRA/TTAY', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(131, '3032', 'Honda', 'TKRA/TTAY', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(132, '3046', 'Honda', 'T20A', 'Section 5', 'FAS4', '2023-08-08 14:45:34'),
(133, '3037', 'Honda', 'T20A/3S5A', 'Section 5', 'FAS4', '2023-08-08 14:45:34'),
(134, '3149', 'Honda', 'TGS/T', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(135, '3150', 'Honda', 'TYA/B', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(136, '3151', 'Honda', 'TYA/B', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(137, '3152', 'Honda', 'TYA/B', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(138, '3162', 'Honda', '3T0A', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(139, '3163', 'Honda', '3T0A', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(140, '3164', 'Honda', '3T0A', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(141, '3165', 'Honda', '3T0A', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(142, '3066', 'Honda', '3T0A', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(143, '3067', 'Honda', '3T0A', 'Section 7', 'FAS4', '2023-08-08 14:45:34'),
(144, '1033', 'Mazda', 'J20', 'Section 3', 'FAS4', '2023-08-08 14:45:34'),
(145, '1034', 'Mazda', 'J20E', 'Section 3', 'FAS4', '2023-08-08 14:45:34'),
(146, '8001', 'Yamaha', '6Y8/6EK/6EM', 'Section 2', 'FAS4', '2023-08-08 14:45:34'),
(147, '4120', 'Toyota', 'LC', 'Section 2', 'FAS4', '2023-08-08 14:45:34'),
(148, '4121', 'Toyota', '940B', 'Section 2', 'FAS4', '2023-08-08 14:45:34'),
(149, '4122', 'Toyota', '940B', 'Section 2', 'FAS4', '2023-08-08 14:45:34'),
(150, '4123', 'Toyota', '780B', 'Section 2', 'FAS4', '2023-08-08 14:45:35'),
(151, '4124', 'Toyota', 'NX', 'Section 2', 'FAS4', '2023-08-08 14:45:35'),
(152, '4125', 'Toyota', 'LC', 'Section 2', 'FAS4', '2023-08-08 14:45:35'),
(153, '4126', 'Toyota', 'LC', 'Section 2', 'FAS4', '2023-08-08 14:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `t_dcrib`
--

CREATE TABLE `t_dcrib` (
  `id` int(10) UNSIGNED NOT NULL,
  `dcrib_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_maker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ib_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ib_kind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rhp_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mi_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_date` date NOT NULL,
  `d_inspection_date` date NOT NULL DEFAULT current_timestamp(),
  `cont_1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_3a` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_3b` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_3c` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_3d` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_5` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_8` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_9` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_10` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_11` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_inspector_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_prod_qa_js_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_sgt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_checked_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_dirr`
--

CREATE TABLE `t_dirr` (
  `id` int(10) UNSIGNED NOT NULL,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `misn_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_date` date NOT NULL,
  `d_inspection_date` date NOT NULL DEFAULT current_timestamp(),
  `cont_1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_3a` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_3b` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_inspector_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_js_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_ipdctm`
--

CREATE TABLE `t_ipdctm` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipdctm_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_maker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_date` date NOT NULL,
  `d_inspection_date` date NOT NULL DEFAULT current_timestamp(),
  `cont_1` int(10) UNSIGNED NOT NULL,
  `cont_2` int(10) UNSIGNED NOT NULL,
  `cont_3` int(10) UNSIGNED NOT NULL,
  `cont_4` int(10) UNSIGNED NOT NULL,
  `cont_5` int(10) UNSIGNED NOT NULL,
  `cont_6` int(10) UNSIGNED NOT NULL,
  `cont_7` int(10) UNSIGNED NOT NULL,
  `cont_8` int(10) UNSIGNED NOT NULL,
  `cont_9` int(10) UNSIGNED NOT NULL,
  `cont_10` int(10) UNSIGNED NOT NULL,
  `cont_11` int(10) UNSIGNED NOT NULL,
  `cont_12` int(10) UNSIGNED NOT NULL,
  `cont_13` int(10) UNSIGNED NOT NULL,
  `cont_14` int(10) UNSIGNED NOT NULL,
  `cont_15` int(10) UNSIGNED NOT NULL,
  `cont_16` int(10) UNSIGNED NOT NULL,
  `cont_17` int(10) UNSIGNED NOT NULL,
  `cont_18` int(10) UNSIGNED NOT NULL,
  `cont_19` int(10) UNSIGNED NOT NULL,
  `cont_20` int(10) UNSIGNED NOT NULL,
  `cont_21` int(10) UNSIGNED NOT NULL,
  `cont_22` int(10) UNSIGNED NOT NULL,
  `cont_23` int(10) UNSIGNED NOT NULL,
  `cont_1s` int(10) UNSIGNED NOT NULL,
  `cont_2s` int(10) UNSIGNED NOT NULL,
  `cont_3s` int(10) UNSIGNED NOT NULL,
  `cont_4s` int(10) UNSIGNED NOT NULL,
  `cont_5s` int(10) UNSIGNED NOT NULL,
  `cont_6s` int(10) UNSIGNED NOT NULL,
  `cont_7s` int(10) UNSIGNED NOT NULL,
  `cont_8s` int(10) UNSIGNED NOT NULL,
  `cont_9s` int(10) UNSIGNED NOT NULL,
  `cont_10s` int(10) UNSIGNED NOT NULL,
  `cont_11s` int(10) UNSIGNED NOT NULL,
  `cont_12s` int(10) UNSIGNED NOT NULL,
  `cont_13s` int(10) UNSIGNED NOT NULL,
  `cont_14s` int(10) UNSIGNED NOT NULL,
  `cont_15s` int(10) UNSIGNED NOT NULL,
  `cont_16s` int(10) UNSIGNED NOT NULL,
  `cont_17s` int(10) UNSIGNED NOT NULL,
  `cont_18s` int(10) UNSIGNED NOT NULL,
  `cont_19s` int(10) UNSIGNED NOT NULL,
  `cont_20s` int(10) UNSIGNED NOT NULL,
  `cont_21s` int(10) UNSIGNED NOT NULL,
  `cont_22s` int(10) UNSIGNED NOT NULL,
  `cont_23s` int(10) UNSIGNED NOT NULL,
  `cont_1e` int(10) UNSIGNED NOT NULL,
  `cont_2e` int(10) UNSIGNED NOT NULL,
  `cont_3e` int(10) UNSIGNED NOT NULL,
  `cont_4e` int(10) UNSIGNED NOT NULL,
  `cont_5e` int(10) UNSIGNED NOT NULL,
  `cont_6e` int(10) UNSIGNED NOT NULL,
  `cont_7e` int(10) UNSIGNED NOT NULL,
  `cont_8e` int(10) UNSIGNED NOT NULL,
  `cont_9e` int(10) UNSIGNED NOT NULL,
  `cont_10e` int(10) UNSIGNED NOT NULL,
  `cont_11e` int(10) UNSIGNED NOT NULL,
  `cont_12e` int(10) UNSIGNED NOT NULL,
  `cont_13e` int(10) UNSIGNED NOT NULL,
  `cont_14e` int(10) UNSIGNED NOT NULL,
  `cont_15e` int(10) UNSIGNED NOT NULL,
  `cont_16e` int(10) UNSIGNED NOT NULL,
  `cont_17e` int(10) UNSIGNED NOT NULL,
  `cont_18e` int(10) UNSIGNED NOT NULL,
  `cont_19e` int(10) UNSIGNED NOT NULL,
  `cont_20e` int(10) UNSIGNED NOT NULL,
  `cont_21e` int(10) UNSIGNED NOT NULL,
  `cont_22e` int(10) UNSIGNED NOT NULL,
  `cont_23e` int(10) UNSIGNED NOT NULL,
  `a_inspector_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_js_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_verified_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_accounts`
--
ALTER TABLE `m_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `m_inspection_processes`
--
ALTER TABLE `m_inspection_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_lines`
--
ALTER TABLE `m_lines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `line_no` (`line_no`);

--
-- Indexes for table `t_dcrib`
--
ALTER TABLE `t_dcrib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_dirr`
--
ALTER TABLE `t_dirr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_ipdctm`
--
ALTER TABLE `t_ipdctm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_accounts`
--
ALTER TABLE `m_accounts`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `m_inspection_processes`
--
ALTER TABLE `m_inspection_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_lines`
--
ALTER TABLE `m_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `t_dcrib`
--
ALTER TABLE `t_dcrib`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_dirr`
--
ALTER TABLE `t_dirr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ipdctm`
--
ALTER TABLE `t_ipdctm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
