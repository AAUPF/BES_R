-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2018 at 01:26 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bihar_survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_credit1s`
--

DROP TABLE IF EXISTS `agricultural_credit1s`;
CREATE TABLE `agricultural_credit1s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Commercial_Bank_Target` float DEFAULT NULL,
  `Commercial_Bank_Achievement` float DEFAULT NULL,
  `RRBs_Target` float DEFAULT NULL,
  `RRBs_Achievement` float DEFAULT NULL,
  `CCBs_Target` float DEFAULT NULL,
  `CCBs_Achievement` float DEFAULT NULL,
  `Total_Target` float DEFAULT NULL,
  `Total_Achievement` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_credit1s`
--

INSERT INTO `agricultural_credit1s` (`id`, `Year`, `Commercial_Bank_Target`, `Commercial_Bank_Achievement`, `RRBs_Target`, `RRBs_Achievement`, `CCBs_Target`, `CCBs_Achievement`, `Total_Target`, `Total_Achievement`, `created_at`, `updated_at`) VALUES
(1, 2012, 14674, 13203, 8407, 8035, 2319, 328, 25401, 21566, '2018-07-13 15:21:44', '2018-07-13 15:21:44'),
(2, 2013, 18709, 17786, 10777, 10676, 800, 307, 30286, 28770, '2018-07-13 15:21:44', '2018-07-13 15:21:44'),
(3, 2014, 22191, 21260, 12809, 13058, 1000, 362, 36000, 34680, '2018-07-13 15:21:44', '2018-07-13 15:21:44'),
(4, 2015, 26554, 24957, 14946, 15135, 1000, 1258, 42500, 41350, '2018-07-13 15:21:44', '2018-07-13 15:21:44'),
(5, 2016, 28317, 25004, 18682, 14247, 1000, 1825, 48000, 41076, '2018-07-13 15:21:44', '2018-07-13 15:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_credit2s`
--

DROP TABLE IF EXISTS `agricultural_credit2s`;
CREATE TABLE `agricultural_credit2s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Target` float DEFAULT NULL,
  `Achievement` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Target_Colour` varchar(255) DEFAULT NULL,
  `Achievement_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_credit2s`
--

INSERT INTO `agricultural_credit2s` (`id`, `Districts`, `Target`, `Achievement`, `Year`, `Target_Colour`, `Achievement_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 100000, 38088.7, 2014, 'Dark_Green', 'Dark_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(2, 'Begusarai', 11727, 8326.25, 2014, 'Dark_Green', 'Dark_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(3, 'Khagaria', 3388, 4326.32, 2014, 'Yellow', 'Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(4, 'Madhubani', 7907, 3951.74, 2014, 'Green', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(5, 'Patna', 11433, 3013.2, 2014, 'Dark_Green', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(6, 'Samastipur', 3398, 2951.83, 2014, 'Yellow', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(7, 'Nawada', 2865, 2729.81, 2014, 'Dark_Yellow', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(8, 'EastChamparan', 2199, 2318.87, 2014, 'Dark_Yellow', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(9, 'Gopalganj', 1092, 1935.46, 2014, 'Orange', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(10, 'Rohtas', 2351, 1743.26, 2014, 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(11, 'Aurangabad', 3208, 1534.52, 2014, 'Yellow', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(12, 'Siwan', 3393, 789.9, 2014, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(13, 'Kaimur', 1647, 583.38, 2014, 'Orange', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(14, 'Bhojpur', 5391, 520.91, 2014, 'Light_Green', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(15, 'WestChamparan', 3583, 488.72, 2014, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(16, 'Nalanda', 4303, 434.99, 2014, 'Light_Green', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(17, 'Buxar', 3926, 402.38, 2014, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(18, 'Kishanganj', 3540, 390.67, 2014, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(19, 'Purnia', 3464, 295.37, 2014, 'Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(20, 'Gaya', 3047, 268.38, 2014, 'Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(21, 'Bhagalpur', 1265, 233.39, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(22, 'Muzaffarpur', 2997, 205.53, 2014, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(23, 'Vaishali', 964, 156.36, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(24, 'Katihar', 2001, 155.58, 2014, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(25, 'Sitamarhi', 1601, 121.19, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(26, 'Araria', 2180, 120.01, 2014, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(27, 'Sheohar', 286, 45.82, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(28, 'Banka', 1557, 26.23, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(29, 'Munger', 563, 11.09, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(30, 'Jehanabad', 1018, 6.55, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(31, 'Arwal', 383, 1, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(32, 'Lakhisarai', 1532, 0, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(33, 'Jamui', 977, 0, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(34, 'Sheikhpura', 814, 0, 2014, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(35, 'Saran', 0, 0, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(36, 'Darbhanga', 0, 0, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(37, 'Saharsa', 0, 0, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(38, 'Supaul', 0, 0, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(39, 'Madhepura', 0, 0, 2014, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(40, 'Bihar', 100000, 45519.7, 2015, 'Dark_Green', 'Dark_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(41, 'Begusarai', 11727, 10047.5, 2015, 'Dark_Green', 'Dark_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(42, 'Madhubani', 7907, 6660.84, 2015, 'Green', 'Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(43, 'Khagaria', 3388, 3791.35, 2015, 'Yellow', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(44, 'Samastipur', 3398, 3088.95, 2015, 'Yellow', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(45, 'Patna', 11433, 3072.4, 2015, 'Dark_Green', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(46, 'EastChamparan', 2199, 3046.64, 2015, 'Dark_Yellow', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(47, 'Siwan', 3393, 2296.54, 2015, 'Yellow', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(48, 'Nawada', 2865, 2078, 2015, 'Dark_Yellow', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(49, 'Gopalganj', 1092, 1773.31, 2015, 'Orange', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(50, 'Aurangabad', 3208, 1434.97, 2015, 'Yellow', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(51, 'Saharsa', 0, 1118.29, 2015, 'Red', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(52, 'Kaimur', 1647, 1016.97, 2015, 'Orange', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(53, 'Rohtas', 2351, 910, 2015, 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(54, 'Nalanda', 4303, 770.75, 2015, 'Light_Green', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(55, 'Bhojpur', 5391, 592.86, 2015, 'Light_Green', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(56, 'Araria', 2180, 584.01, 2015, 'Dark_Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(57, 'Muzaffarpur', 2997, 575.96, 2015, 'Dark_Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(58, 'WestChamparan', 3583, 567.91, 2015, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(59, 'Gaya', 3047, 374.15, 2015, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(60, 'Buxar', 3926, 351.83, 2015, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(61, 'Purnia', 3464, 327.56, 2015, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(62, 'Bhagalpur', 1265, 289.47, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(63, 'Sitamarhi', 1601, 224.72, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(64, 'Kishanganj', 3540, 209.11, 2015, 'Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(65, 'Katihar', 2001, 87.5, 2015, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(66, 'Vaishali', 964, 64.53, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(67, 'Sheohar', 286, 55.46, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(68, 'Jehanabad', 1018, 38.89, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(69, 'Banka', 1557, 33.69, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(70, 'Arwal', 383, 18.4, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(71, 'Munger', 563, 17.11, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(72, 'Lakhisarai', 1532, 0, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(73, 'Jamui', 977, 0, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(74, 'Sheikhpura', 814, 0, 2015, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(75, 'Saran', 0, 0, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(76, 'Darbhanga', 0, 0, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(77, 'Supaul', 0, 0, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(78, 'Madhepura', 0, 0, 2015, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(79, 'Bihar', 100000, 36150, 2016, 'Dark_Green', 'Dark_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(80, 'Begusarai', 3458, 8054.83, 2016, 'Dark_Yellow', 'Dark_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(81, 'Khagaria', 2394, 5100.63, 2016, 'Orange', 'Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(82, 'Madhubani', 6118, 4668.6, 2016, 'Green', 'Light_Green', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(83, 'Patna', 3990, 3065.15, 2016, 'Dark_Yellow', 'Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(84, 'EastChamparan', 4256, 2385.44, 2016, 'Yellow', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(85, 'Rohtas', 3458, 2035.91, 2016, 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(86, 'Samastipur', 2660, 1989.01, 2016, 'Orange', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(87, 'Gopalganj', 6383, 1618.93, 2016, 'Dark_Green', 'Dark_Yellow', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(88, 'Siwan', 4242, 1049.73, 2016, 'Yellow', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(89, 'Kaimur', 2926, 864.05, 2016, 'Orange', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(90, 'Nalanda', 5586, 794.05, 2016, 'Light_Green', 'Orange', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(91, 'Nawada', 6118, 589, 2016, 'Green', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(92, 'Aurangabad', 5320, 558.77, 2016, 'Light_Green', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(93, 'WestChamparan', 2128, 556.63, 2016, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(94, 'Bhojpur', 6383, 472.79, 2016, 'Dark_Green', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(95, 'Purnia', 4522, 393.6, 2016, 'Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(96, 'Bhagalpur', 2660, 346.03, 2016, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(97, 'Muzaffarpur', 4256, 341.67, 2016, 'Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(98, 'Buxar', 3724, 292.11, 2016, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(99, 'Araria', 2926, 274.62, 2016, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(100, 'Gaya', 1596, 231.97, 2016, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(101, 'Sitamarhi', 3192, 196.62, 2016, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(102, 'Kishanganj', 2128, 86.97, 2016, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(103, 'Sheohar', 532, 66.99, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(104, 'Katihar', 3192, 60.38, 2016, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(105, 'Banka', 3458, 24.35, 2016, 'Dark_Yellow', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(106, 'Munger', 0, 19.96, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(107, 'Vaishali', 1862, 6.52, 2016, 'Orange', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(108, 'Jehanabad', 532, 4.7, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(109, 'Arwal', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(110, 'Saran', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(111, 'Darbhanga', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(112, 'Sheikhpura', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(113, 'Lakhisarai', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(114, 'Jamui', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(115, 'Saharsa', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(116, 'Supaul', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35'),
(117, 'Madhepura', 0, 0, 2016, 'Red', 'Red', '2018-07-26 06:29:35', '2018-07-26 06:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs1_part1s`
--

DROP TABLE IF EXISTS `agricultural_inputs1_part1s`;
CREATE TABLE `agricultural_inputs1_part1s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Crops` varchar(255) DEFAULT NULL,
  `Type_Crops` varchar(255) DEFAULT NULL,
  `Paddy` float DEFAULT NULL,
  `Maize` float DEFAULT NULL,
  `Urad` float DEFAULT NULL,
  `Arhar` float DEFAULT NULL,
  `Moong` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs1_part1s`
--

INSERT INTO `agricultural_inputs1_part1s` (`id`, `Year`, `Crops`, `Type_Crops`, `Paddy`, `Maize`, `Urad`, `Arhar`, `Moong`, `created_at`, `updated_at`) VALUES
(1, 2014, 'Require-ment', 'Kharif_Crops', 324.8, 0, 1.62, 5.48, 0, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(2, 2014, 'Supply', 'Kharif_Crops', 245.09, 0, 0, 1.06, 0, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(3, 2014, 'SRR', 'Kharif_Crops', 38.75, 0, 25, 10.58, 0, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(4, 2015, 'Require-ment', 'Kharif_Crops', 324.8, 90, 1.73, 5.84, 1.6, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(5, 2015, 'Supply', 'Kharif_Crops', 273.96, 9.05, 1.46, 1.5, 0.45, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(6, 2015, 'SRR', 'Kharif_Crops', 39.13, 10.45, 27, 15.01, 19.18, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(7, 2016, 'Require-ment', 'Kharif_Crops', 431.25, 90, 1.78, 6.02, 1.65, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(8, 2016, 'Supply', 'Kharif_Crops', 317.54, 11.96, 0, 1.05, 0.32, '2018-08-03 10:27:45', '2018-08-03 10:27:45'),
(9, 2016, 'SRR', 'Kharif_Crops', 42.88, 13.82, 0, 8.72, 13.5, '2018-08-03 10:27:45', '2018-08-03 10:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs1_part2s`
--

DROP TABLE IF EXISTS `agricultural_inputs1_part2s`;
CREATE TABLE `agricultural_inputs1_part2s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Crops` varchar(255) DEFAULT NULL,
  `Type_Crops` varchar(255) DEFAULT NULL,
  `Wheat` float DEFAULT NULL,
  `Maize` float DEFAULT NULL,
  `Arhar` float DEFAULT NULL,
  `Gram` float DEFAULT NULL,
  `Pea` float DEFAULT NULL,
  `Masoor` float DEFAULT NULL,
  `Rapeseed_Mustard` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs1_part2s`
--

INSERT INTO `agricultural_inputs1_part2s` (`id`, `Year`, `Crops`, `Type_Crops`, `Wheat`, `Maize`, `Arhar`, `Gram`, `Pea`, `Masoor`, `Rapeseed_Mustard`, `created_at`, `updated_at`) VALUES
(1, 2014, 'Require-ment', 'Rabi_Crops', 864, 226.45, 5.4, 27.6, 0, 25.8, 3.46, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(2, 2014, 'Supply', 'Rabi_Crops', 728.31, 207, 1.05, 4.38, 0, 7.08, 3.07, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(3, 2014, 'SRR', 'Rabi_Crops', 35.58, 90, 10.58, 5.51, 0, 11.35, 49.04, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(4, 2015, 'Require-ment', 'Rabi_Crops', 912, 130, 0, 29.44, 8.96, 27.52, 3.59, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(5, 2015, 'Supply', 'Rabi_Crops', 616.39, 70.65, 0, 6.58, 1.18, 1.07, 2.28, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(6, 2015, 'SRR', 'Rabi_Crops', 27.12, 80.66, 0, 8.32, 2.7, 1.25, 36.33, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(7, 2016, 'Require-ment', 'Rabi_Crops', 930, 112.5, 0, 30.36, 9.24, 28.38, 8.21, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(8, 2016, 'Supply', 'Rabi_Crops', 465.16, 108.78, 0, 2.99, 0.2, 6.24, 4.44, '2018-08-03 10:32:48', '2018-08-03 10:32:48'),
(9, 2016, 'SRR', 'Rabi_Crops', 20.3, 87.02, 0, 3.58, 0.76, 7.33, 58.65, '2018-08-03 10:32:48', '2018-08-03 10:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs2s`
--

DROP TABLE IF EXISTS `agricultural_inputs2s`;
CREATE TABLE `agricultural_inputs2s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Type_of_Fertilizer` varchar(255) DEFAULT NULL,
  `Urea` float DEFAULT NULL,
  `DAP` float DEFAULT NULL,
  `SSP` float DEFAULT NULL,
  `MOP` float DEFAULT NULL,
  `Ammonium_Sulphate` float DEFAULT NULL,
  `Complex` float DEFAULT NULL,
  `Sub_Total` float DEFAULT NULL,
  `N` float DEFAULT NULL,
  `P` float DEFAULT NULL,
  `K` float DEFAULT NULL,
  `Total_NPK` float DEFAULT NULL,
  `Grand_Total` float DEFAULT NULL,
  `Consumption_of_Fertilizer` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs2s`
--

INSERT INTO `agricultural_inputs2s` (`id`, `Year`, `Type_of_Fertilizer`, `Urea`, `DAP`, `SSP`, `MOP`, `Ammonium_Sulphate`, `Complex`, `Sub_Total`, `N`, `P`, `K`, `Total_NPK`, `Grand_Total`, `Consumption_of_Fertilizer`, `created_at`, `updated_at`) VALUES
(1, 2014, 'Kharif', 864.3, 128.6, 26.1, 54.6, 1.3, 76, 1150.8, 433.1, 82.4, 39.4, 554.8, 1705.7, 138.1, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(2, 2014, 'Rabi', 1076.1, 224.1, 30.7, 99.1, 2.4, 186, 1618.5, 567.3, 152.8, 71.8, 791.8, 2410.3, 181.8, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(3, 2014, 'Total', 1940.4, 352.7, 56.8, 153.7, 3.7, 262, 2769.4, 1000.4, 235.1, 111.2, 1346.7, 4116, 160.8, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(4, 2015, 'Kharif', 954.2, 186.4, 47.6, 48.3, 2.6, 150.3, 1389.2, 499.8, 128.1, 35.4, 663.4, 2052.6, 160.4, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(5, 2015, 'Rabi', 1403.9, 356.4, 26.2, 105.5, 15.8, 201.6, 2109.3, 749.9, 212.8, 70.7, 1033.4, 3142.7, 240.2, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(6, 2015, 'Total', 2358.1, 542.8, 73.7, 153.7, 18.4, 351.8, 3498.5, 1249.8, 340.9, 106.2, 1696.8, 5195.3, 201.1, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(7, 2016, 'Kharif', 882.7, 148.7, 33.3, 50.6, 6, 53.4, 1174.7, 444, 85.2, 31.8, 561, 1735.8, 137, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(8, 2016, 'Rabi', 1094.8, 383.1, 33.1, 179.2, 21.4, 187.2, 1898.7, 610.8, 223.6, 115, 949.4, 2848.1, 205.29, '2018-07-24 06:59:43', '2018-07-24 06:59:43'),
(9, 2016, 'Total', 1977.5, 531.7, 66.5, 229.8, 27.4, 240.6, 3073.5, 1054.8, 308.8, 146.7, 1510.4, 4583.9, 173.18, '2018-07-24 06:59:43', '2018-07-24 06:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs3s`
--

DROP TABLE IF EXISTS `agricultural_inputs3s`;
CREATE TABLE `agricultural_inputs3s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Tractor` float DEFAULT NULL,
  `Combine_Harvestors` float DEFAULT NULL,
  `Zero_Tillage` float DEFAULT NULL,
  `Pumpsets` float DEFAULT NULL,
  `Power_Tiller` float DEFAULT NULL,
  `Manually_operated_tools_implements` float DEFAULT NULL,
  `Threshers` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs3s`
--

INSERT INTO `agricultural_inputs3s` (`id`, `Year`, `Tractor`, `Combine_Harvestors`, `Zero_Tillage`, `Pumpsets`, `Power_Tiller`, `Manually_operated_tools_implements`, `Threshers`, `Total`, `created_at`, `updated_at`) VALUES
(1, 2015, 4617, 177, 1537, 5788, 1637, 46590, 2314, 62660, '2018-07-17 06:16:28', '2018-07-17 06:16:28'),
(2, 2016, 0, 158, 833, 5080, 1225, 16583, 2654, 26533, '2018-07-17 06:16:28', '2018-07-17 06:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs4s`
--

DROP TABLE IF EXISTS `agricultural_inputs4s`;
CREATE TABLE `agricultural_inputs4s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Urea` float DEFAULT NULL,
  `DAP` float DEFAULT NULL,
  `SSP` float DEFAULT NULL,
  `MOP` float DEFAULT NULL,
  `Ammonium_Sulphate` float DEFAULT NULL,
  `Complex` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `N` float DEFAULT NULL,
  `P` float DEFAULT NULL,
  `K` float DEFAULT NULL,
  `Total_NPK` float DEFAULT NULL,
  `Grand_Total` float DEFAULT NULL,
  `Urea_Colour` varchar(255) DEFAULT NULL,
  `DAP_Colour` varchar(255) DEFAULT NULL,
  `SSP_Colour` varchar(255) DEFAULT NULL,
  `MOP_Colour` varchar(255) DEFAULT NULL,
  `Ammonium_Sulphate_Colour` varchar(255) DEFAULT NULL,
  `Complex_Colour` varchar(255) DEFAULT NULL,
  `Total_Colour` varchar(255) DEFAULT NULL,
  `N_Colour` varchar(255) DEFAULT NULL,
  `P_Colour` varchar(255) DEFAULT NULL,
  `K_Colour` varchar(255) DEFAULT NULL,
  `Total_NPK_Colour` varchar(255) DEFAULT NULL,
  `Grand_Total_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs4s`
--

INSERT INTO `agricultural_inputs4s` (`id`, `Districts`, `Year`, `Urea`, `DAP`, `SSP`, `MOP`, `Ammonium_Sulphate`, `Complex`, `Total`, `N`, `P`, `K`, `Total_NPK`, `Grand_Total`, `Urea_Colour`, `DAP_Colour`, `SSP_Colour`, `MOP_Colour`, `Ammonium_Sulphate_Colour`, `Complex_Colour`, `Total_Colour`, `N_Colour`, `P_Colour`, `K_Colour`, `Total_NPK_Colour`, `Grand_Total_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 2015, 2358.1, 542.8, 73.7, 153.7, 18.4, 351.8, 3498.5, 1249.8, 340.9, 106.2, 1696.8, 5195.3, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(2, 'Purnia', 2015, 115.5, 45, 10.2, 19, 1.4, 18.7, 209.7, 65.1, 26.2, 11.6, 102.9, 312.6, 'Dark_Green', 'Dark_Green', 'Green', 'Dark_Green', 'Light_Green', 'Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(3, 'EastChamparan', 2015, 120.5, 24.6, 2.5, 6.1, 0.3, 18.2, 172.2, 63.1, 16.1, 4.7, 83.8, 256, 'Dark_Green', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Green', 'Green', 'Dark_Green', 'Green', 'Yellow', 'Green', 'Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(4, 'Rohtas', 2015, 110.5, 16, 13.8, 1.5, 0, 25.6, 167.4, 57.8, 16, 3.3, 77, 244.5, 'Dark_Green', 'Yellow', 'Dark_Green', 'Orange', 'Red', 'Dark_Green', 'Green', 'Green', 'Green', 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(5, 'WestChamparan', 2015, 105.5, 22.6, 1.5, 7.7, 0, 15.3, 152.6, 55.4, 14, 5.2, 74.6, 227.2, 'Green', 'Light_Green', 'Orange', 'Light_Green', 'Red', 'Light_Green', 'Light_Green', 'Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(6, 'Nalanda', 2015, 99.3, 22.8, 5.5, 2.1, 0.6, 13.6, 143.9, 52, 14.9, 2.4, 69.4, 213.3, 'Green', 'Light_Green', 'Light_Green', 'Orange', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Green', 'Light_Green', 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(7, 'Begusarai', 2015, 78.9, 27.9, 1.5, 10.2, 2.6, 14.5, 135.7, 44.3, 16.7, 7.1, 68, 203.7, 'Light_Green', 'Green', 'Orange', 'Green', 'Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Green', 'Green', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(8, 'Katihar', 2015, 79.4, 25.3, 3.6, 11.9, 2.4, 13.2, 135.8, 44.1, 15, 7.3, 66.4, 202.2, 'Light_Green', 'Green', 'Yellow', 'Green', 'Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Green', 'Green', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(9, 'Samastipur', 2015, 93.3, 20, 1.2, 6.9, 0.3, 12.3, 133.9, 48.8, 12.1, 4.5, 65.5, 199.4, 'Green', 'Light_Green', 'Orange', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Yellow', 'Light_Green', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(10, 'Patna', 2015, 101, 17.9, 1.5, 1.5, 0.3, 10.6, 132.9, 51.7, 10.9, 1.4, 64, 196.9, 'Green', 'Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Green', 'Yellow', 'Orange', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(11, 'Vaishali', 2015, 87.2, 22.2, 1.3, 9, 3.1, 8.9, 131.7, 46.3, 12.4, 5.8, 64.6, 196.3, 'Light_Green', 'Light_Green', 'Orange', 'Light_Green', 'Dark_Green', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(12, 'Araria', 2015, 73.1, 25.3, 3.4, 11.7, 0.9, 13.4, 127.7, 40.9, 15.1, 7.3, 63.2, 191, 'Light_Green', 'Green', 'Yellow', 'Green', 'Yellow', 'Light_Green', 'Yellow', 'Light_Green', 'Green', 'Green', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(13, 'Muzaffarpur', 2015, 88, 21.9, 0.8, 5.6, 1.6, 9.3, 127.1, 46.4, 12.3, 3.7, 62.4, 189.6, 'Light_Green', 'Light_Green', 'Red', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(14, 'Khagaria', 2015, 81, 19, 1, 10.8, 0.3, 8.8, 120.8, 42.4, 10.7, 6.5, 59.6, 180.4, 'Light_Green', 'Yellow', 'Orange', 'Green', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Yellow', 'Light_Green', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(15, 'Bhojpur', 2015, 79.3, 10.1, 2.6, 0.6, 0.2, 14.5, 107.3, 41.1, 8.2, 0.7, 50, 157.3, 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Red', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(16, 'Bhagalpur', 2015, 70, 19, 1.7, 4.9, 1, 8.3, 105, 37.4, 10.8, 3.1, 51.4, 156.4, 'Light_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(17, 'Gaya', 2015, 69.7, 16.1, 1.6, 1.4, 0.2, 10.9, 99.8, 36.9, 10.2, 1.4, 48.4, 148.3, 'Yellow', 'Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(18, 'Madhepura', 2015, 62.1, 14, 0.3, 8, 0, 10.7, 95.1, 33, 8.9, 5.1, 47.1, 142.1, 'Yellow', 'Dark_Yellow', 'Red', 'Light_Green', 'Red', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(19, 'Saran', 2015, 63, 15.2, 0.3, 2.6, 0.3, 12.3, 93.8, 34.2, 9.5, 1.6, 45.4, 139.2, 'Yellow', 'Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(20, 'Darbhanga', 2015, 61.4, 15.6, 0.4, 3.4, 0.9, 10.2, 91.9, 33, 9.7, 2.6, 45.3, 137.1, 'Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(21, 'Aurangabad', 2015, 62.4, 10.2, 6.6, 0.5, 0, 11.6, 91.2, 32.7, 8.3, 0.6, 41.6, 132.9, 'Yellow', 'Dark_Yellow', 'Light_Green', 'Red', 'Red', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(22, 'Sitamarhi', 2015, 53.2, 14, 0.2, 2.5, 0.3, 9.2, 79.6, 28.8, 8.5, 1.8, 39.1, 118.7, 'Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(23, 'Buxar', 2015, 57.7, 6.2, 1.4, 0.4, 0, 14, 79.7, 30.4, 6, 0.4, 36.7, 116.5, 'Yellow', 'Orange', 'Orange', 'Red', 'Red', 'Light_Green', 'Orange', 'Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(24, 'Madhubani', 2015, 50.6, 14.4, 0.3, 3, 0.7, 7.2, 76.2, 27.3, 8.3, 2, 37.6, 113.8, 'Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(25, 'Kaimur', 2015, 51.9, 7.7, 5, 0.5, 0, 9.9, 74.9, 27, 6.6, 0.7, 34.3, 109.3, 'Yellow', 'Orange', 'Light_Green', 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(26, 'Supaul', 2015, 37.8, 13.6, 0.1, 6.1, 0, 11.3, 68.9, 21.9, 8.8, 4, 34.7, 103.7, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Yellow', 'Red', 'Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(27, 'Jamui', 2015, 46.8, 14.8, 0.3, 0.8, 0.2, 3.5, 66.4, 24.8, 7.7, 0.7, 33.2, 99.6, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(28, 'Siwan', 2015, 52.6, 7.2, 0, 1.3, 0.1, 5.8, 67, 26.6, 4.5, 0.8, 32, 98.9, 'Yellow', 'Orange', 'Red', 'Orange', 'Orange', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(29, 'Saharsa', 2015, 43.7, 10.3, 0.1, 5.5, 0, 5.3, 64.8, 22.8, 6, 3.6, 32.5, 97.3, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Yellow', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(30, 'Banka', 2015, 39.3, 10.5, 0.6, 3.9, 0.6, 4.8, 59.7, 20.9, 6, 2.6, 29.6, 89.3, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(31, 'Nawada', 2015, 37, 4.7, 0.7, 0.3, 0, 4.1, 46.7, 18.6, 3.2, 0.3, 22.1, 68.8, 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Orange', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(32, 'Gopalganj', 2015, 33.2, 2.6, 0, 0.4, 0, 4.5, 40.6, 16.6, 2.1, 0.3, 19, 59.7, 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(33, 'Jehanabad', 2015, 32.9, 3.6, 0.2, 0.2, 0.2, 2.4, 39.5, 16.3, 2.2, 0.2, 18.7, 58.1, 'Dark_Yellow', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(34, 'Kishanganj', 2015, 23.9, 5.9, 1.7, 1.1, 0, 2.5, 35.1, 12.5, 3.6, 0.8, 16.8, 51.9, 'Orange', 'Orange', 'Orange', 'Orange', 'Red', 'Red', 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(35, 'Sheikhpura', 2015, 27.1, 4.3, 0.9, 0.2, 0, 1.8, 34.2, 13.5, 2.6, 0.2, 16.3, 50.5, 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(36, 'Arwal', 2015, 25.9, 3.9, 0.4, 0.3, 0, 1.5, 31.9, 12.9, 2.2, 0.2, 15.3, 47.3, 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(37, 'Munger', 2015, 17.9, 2.8, 0.1, 1.3, 0, 0.6, 22.6, 8.8, 1.4, 0.8, 11.1, 33.7, 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(38, 'Lakhisarai', 2015, 14.2, 3.8, 0.5, 0.4, 0, 1.7, 20.5, 7.5, 2.2, 0.3, 9.9, 30.4, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(39, 'Sheohar', 2015, 11.6, 1.9, 0, 0.4, 0, 0.8, 14.7, 5.8, 1, 0.3, 7.1, 21.8, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(40, 'Bihar', 2016, 1977.5, 531.8, 66.5, 229.8, 27.4, 240.6, 3073.5, 1054.8, 308.9, 146.7, 1510.4, 4583.9, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(41, 'Purnia', 2016, 103.3, 39.2, 6.6, 24.5, 2.7, 16, 192.2, 58.3, 22.3, 14.8, 95.4, 287.5, 'Dark_Green', 'Green', 'Green', 'Dark_Green', 'Green', 'Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(42, 'Rohtas', 2016, 101.4, 20.9, 8.1, 2, 0, 24.1, 156.6, 54.1, 17.5, 3.7, 75.2, 231.8, 'Dark_Green', 'Light_Green', 'Dark_Green', 'Orange', 'Red', 'Dark_Green', 'Green', 'Green', 'Green', 'Dark_Yellow', 'Green', 'Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(43, 'EastChamparan', 2016, 99.5, 25.3, 3.2, 7.9, 0.1, 8.7, 144.6, 51.9, 14.1, 5.1, 71.1, 215.7, 'Green', 'Green', 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Light_Green', 'Green', 'Light_Green', 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(44, 'Begusarai', 2016, 65.9, 37.9, 2.3, 18.7, 4.5, 11.3, 140.6, 40, 20.4, 11.8, 72.2, 212.8, 'Yellow', 'Green', 'Dark_Yellow', 'Light_Green', 'Dark_Green', 'Yellow', 'Light_Green', 'Light_Green', 'Green', 'Green', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(45, 'Araria', 2016, 77.9, 25.3, 2.9, 21.1, 0.8, 12.5, 140.4, 43, 14.7, 12.8, 70.4, 210.9, 'Light_Green', 'Green', 'Dark_Yellow', 'Green', 'Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Green', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(46, 'Katihar', 2016, 75.2, 28, 3.7, 15.8, 1.5, 16.4, 140.6, 43.1, 16.9, 9.8, 69.8, 210.4, 'Light_Green', 'Green', 'Yellow', 'Light_Green', 'Light_Green', 'Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(47, 'WestChamparan', 2016, 90.1, 22.9, 2.4, 12.7, 0.1, 10, 138.2, 47.3, 13.3, 8.1, 68.7, 206.9, 'Green', 'Light_Green', 'Dark_Yellow', 'Light_Green', 'Orange', 'Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Yellow', 'Light_Green', 'Light_Green', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(48, 'Vaishali', 2016, 73.9, 25.6, 1.2, 14.7, 5, 9.8, 130.2, 41.4, 14.2, 9.2, 64.8, 195, 'Light_Green', 'Green', 'Orange', 'Light_Green', 'Dark_Green', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(49, 'Nalanda', 2016, 88.8, 20.7, 6.5, 1.6, 0.6, 5.7, 123.9, 45.5, 12, 1.7, 59.2, 183.1, 'Light_Green', 'Light_Green', 'Green', 'Red', 'Dark_Yellow', 'Orange', 'Yellow', 'Light_Green', 'Yellow', 'Orange', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(50, 'Muzaffarpur', 2016, 68.2, 20.4, 0.3, 10.2, 2.5, 6.9, 108.5, 36.8, 10.9, 6.3, 54, 162.5, 'Yellow', 'Light_Green', 'Red', 'Light_Green', 'Green', 'Orange', 'Yellow', 'Yellow', 'Yellow', 'Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(51, 'Patna', 2016, 71.5, 19.7, 1.9, 6.7, 2.4, 5.8, 107.9, 38, 10.6, 4.3, 52.8, 160.6, 'Light_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Green', 'Orange', 'Yellow', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(52, 'Khagaria', 2016, 64.4, 21.3, 1, 13.6, 0, 4.1, 104.4, 34.2, 10.9, 8.3, 53.4, 157.8, 'Yellow', 'Light_Green', 'Orange', 'Light_Green', 'Red', 'Orange', 'Yellow', 'Yellow', 'Yellow', 'Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(53, 'Bhagalpur', 2016, 67.9, 15.8, 2, 12.4, 1.5, 5.2, 104.8, 35.4, 8.7, 7.5, 51.5, 156.3, 'Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Orange', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(54, 'Samastipur', 2016, 65.9, 18.2, 1.7, 10.8, 0.1, 4.3, 101, 34.4, 9.7, 6.7, 50.8, 151.8, 'Yellow', 'Yellow', 'Orange', 'Light_Green', 'Orange', 'Orange', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(55, 'Gaya', 2016, 66.8, 14.6, 3, 1, 0.2, 8.8, 94.4, 35.1, 9, 0.7, 44.8, 139.2, 'Yellow', 'Dark_Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(56, 'Aurangabad', 2016, 61.9, 14.6, 5.9, 0.7, 0, 10.8, 93.9, 33.1, 10.1, 0.8, 44, 137.9, 'Yellow', 'Dark_Yellow', 'Light_Green', 'Red', 'Red', 'Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(57, 'Bhojpur', 2016, 62.9, 11.2, 1.7, 0.5, 1.1, 10.7, 88.2, 33.2, 7.8, 0.6, 41.6, 129.7, 'Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Light_Green', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(58, 'Madhepura', 2016, 46.5, 13.7, 0.4, 12.3, 0.6, 9.5, 83, 25.8, 8.4, 7.6, 41.7, 124.8, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(59, 'Supaul', 2016, 34.9, 16.4, 0.1, 9.6, 0.1, 9.2, 70.3, 20.9, 9.4, 5.8, 36, 106.3, 'Dark_Yellow', 'Yellow', 'Red', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(60, 'Buxar', 2016, 51.2, 5.2, 0.5, 0.4, 1, 9.4, 67.6, 26.5, 4.5, 0.4, 31.4, 99, 'Yellow', 'Orange', 'Red', 'Red', 'Light_Green', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(61, 'Kaimur', 2016, 49, 7.6, 3, 0.2, 0, 7.6, 67.3, 25.2, 5.8, 0.5, 31.5, 98.8, 'Dark_Yellow', 'Orange', 'Yellow', 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(62, 'Saran', 2016, 51.4, 7.4, 0.1, 0.4, 0, 6.8, 66, 26.3, 4.8, 0.3, 31.3, 97.4, 'Yellow', 'Orange', 'Red', 'Red', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(63, 'Jamui', 2016, 45.2, 14.2, 0.8, 2.4, 0.1, 1.5, 64.1, 23.6, 7, 1.5, 32.1, 96.2, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(64, 'Sitamarhi', 2016, 42.6, 11.7, 0.4, 3.5, 0.8, 2.2, 61.2, 22.3, 5.9, 2.1, 30.4, 91.6, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(65, 'Madhubani', 2016, 36.1, 15.3, 0.1, 5.4, 0.7, 2.9, 60.5, 20, 7.7, 3.3, 31, 91.5, 'Dark_Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(66, 'Darbhanga', 2016, 39.7, 11.9, 0.4, 4.9, 0.6, 3.3, 60.8, 21.1, 6.3, 3.2, 30.6, 91.4, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(67, 'Saharsa', 2016, 37.1, 10.5, 0.2, 7.6, 0.3, 4.5, 60.2, 19.9, 5.8, 4.7, 30.4, 90.6, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(68, 'Banka', 2016, 38.6, 8.5, 1.2, 2.9, 0.2, 1.5, 53, 19.6, 4.4, 1.8, 25.8, 78.8, 'Dark_Yellow', 'Orange', 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Orange', 'Orange', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(69, 'Siwan', 2016, 38.9, 3.8, 0, 0.1, 0, 2.4, 45.2, 19, 2.3, 0.1, 21.4, 66.7, 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Orange', 'Orange', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(70, 'Nawada', 2016, 26.1, 3.5, 0.8, 0.2, 0, 1.6, 32.1, 12.9, 2.1, 0.1, 15.1, 47.2, 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(71, 'Kishanganj', 2016, 19.8, 5.3, 1.4, 1.6, 0, 0.8, 28.9, 10.2, 2.8, 1, 14, 42.9, 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Orange', 'Orange', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(72, 'Jehanabad', 2016, 22.2, 2.5, 0.2, 0.2, 0, 1, 26.1, 10.9, 1.4, 0.1, 12.4, 38.5, 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(73, 'Gopalganj', 2016, 21.5, 1.1, 0, 0.5, 0, 2.2, 25.4, 10.5, 1, 0.4, 11.9, 37.2, 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(74, 'Sheikhpura', 2016, 18.6, 3.2, 1.5, 0.1, 0, 0.7, 24.1, 9.2, 1.9, 0.1, 11.2, 35.2, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(75, 'Arwal', 2016, 19.6, 2.6, 0.2, 0.2, 0, 0.7, 23.2, 9.6, 1.4, 0.1, 11.1, 34.3, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(76, 'Munger', 2016, 14.5, 2, 0.4, 1.9, 0, 0.6, 19.4, 7.2, 1.1, 1.2, 9.4, 28.9, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(77, 'Lakhisarai', 2016, 11, 2.3, 0.3, 0.3, 0, 1.1, 15, 5.7, 1.3, 0.2, 7.2, 22.1, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03'),
(78, 'Sheohar', 2016, 7.5, 1.5, 0, 0.6, 0.1, 0.4, 10, 3.8, 0.8, 0.4, 4.9, 14.9, 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 09:01:03', '2018-07-26 09:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs5s`
--

DROP TABLE IF EXISTS `agricultural_inputs5s`;
CREATE TABLE `agricultural_inputs5s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Target_Physical` float DEFAULT NULL,
  `Target_Financial` float DEFAULT NULL,
  `Achievement_Physical` float DEFAULT NULL,
  `Achievement_Financial` float DEFAULT NULL,
  `Target_Physical_Colour` varchar(255) DEFAULT NULL,
  `Target_Financial_Colour` varchar(255) DEFAULT NULL,
  `Achievement_Physical_Colour` varchar(255) DEFAULT NULL,
  `Achievement_Financial_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs6s`
--

DROP TABLE IF EXISTS `agricultural_inputs6s`;
CREATE TABLE `agricultural_inputs6s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Target_Physical` float DEFAULT NULL,
  `Target_Financial` float DEFAULT NULL,
  `Achievement_Physical` float DEFAULT NULL,
  `Achievement_Financial` float DEFAULT NULL,
  `Target_Physical_Colour` varchar(255) DEFAULT NULL,
  `Target_Financial_Colour` varchar(255) DEFAULT NULL,
  `Achievement_Physical_Colour` varchar(255) DEFAULT NULL,
  `Achievement_Financial_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs6s`
--

INSERT INTO `agricultural_inputs6s` (`id`, `Districts`, `Target_Physical`, `Target_Financial`, `Achievement_Physical`, `Achievement_Financial`, `Target_Physical_Colour`, `Target_Financial_Colour`, `Achievement_Physical_Colour`, `Achievement_Financial_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 20000, 100, 1971, 8.94, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(2, 'Gaya', 853, 4.27, 298, 1.49, 'Light_Green', 'Green', 'Dark_Green', 'Dark_Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(3, 'Sitamarhi', 632, 3.16, 240, 1.2, 'Yellow', 'Light_Green', 'Green', 'Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(4, 'Muzaffarpur', 897, 4.49, 214, 1.07, 'Light_Green', 'Green', 'Light_Green', 'Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(5, 'EastChamparan', 947, 4.74, 203, 1.01, 'Dark_Green', 'Dark_Green', 'Light_Green', 'Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(6, 'Samastipur', 883, 4.42, 165, 0.83, 'Light_Green', 'Green', 'Yellow', 'Light_Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(7, 'Patna', 766, 3.83, 148, 0.74, 'Yellow', 'Green', 'Dark_Yellow', 'Light_Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(8, 'Bhagalpur', 581, 2.91, 142, 0.71, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(9, 'Saran', 764, 3.82, 72, 0.36, 'Yellow', 'Green', 'Orange', 'Dark_Yellow', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(10, 'Vaishali', 671, 3.36, 72, 0.36, 'Yellow', 'Light_Green', 'Orange', 'Dark_Yellow', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(11, 'Jehanabad', 216, 1.08, 61, 0.32, 'Orange', 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(12, 'Bhojpur', 528, 2.64, 50, 0.25, 'Dark_Yellow', 'Yellow', 'Orange', 'Orange', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(13, 'Nawada', 443, 2.22, 50, 0.25, 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(14, 'Aurangabad', 480, 2.4, 48, 0.24, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(15, 'Munger', 244, 1.22, 25, 0.11, 'Orange', 'Orange', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(16, 'Saharsa', 357, 1.79, 183, 0, 'Orange', 'Orange', 'Yellow', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(17, 'Madhubani', 925, 4.63, 0, 0, 'Green', 'Dark_Green', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(18, 'WestChamparan', 803, 4.02, 0, 0, 'Light_Green', 'Green', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(19, 'Darbhanga', 764, 3.82, 0, 0, 'Yellow', 'Green', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(20, 'Siwan', 680, 3.4, 0, 0, 'Yellow', 'Light_Green', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(21, 'Begusarai', 596, 2.98, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(22, 'Purnia', 593, 2.97, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(23, 'Rohtas', 579, 2.9, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(24, 'Nalanda', 577, 2.89, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(25, 'Katihar', 563, 2.82, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(26, 'Gopalganj', 552, 2.76, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(27, 'Araria', 510, 2.55, 0, 0, 'Dark_Yellow', 'Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(28, 'Banka', 470, 2.35, 0, 0, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(29, 'Supaul', 420, 2.1, 0, 0, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(30, 'Madhepura', 405, 2.03, 0, 0, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(31, 'Kaimur', 391, 1.96, 0, 0, 'Orange', 'Orange', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(32, 'Jamui', 376, 1.88, 0, 0, 'Orange', 'Orange', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(33, 'Buxar', 329, 1.65, 0, 0, 'Orange', 'Orange', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(34, 'Kishanganj', 304, 1.52, 0, 0, 'Orange', 'Orange', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(35, 'Khagaria', 299, 1.5, 0, 0, 'Orange', 'Orange', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(36, 'Sheikhpura', 190, 0.95, 0, 0, 'Red', 'Red', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(37, 'Arwal', 153, 0.77, 0, 0, 'Red', 'Red', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(38, 'Lakhisarai', 136, 0.68, 0, 0, 'Red', 'Red', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55'),
(39, 'Sheohar', 123, 0.62, 0, 0, 'Red', 'Red', 'Red', 'Red', '2018-07-27 06:46:55', '2018-07-27 06:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs7s`
--

DROP TABLE IF EXISTS `agricultural_inputs7s`;
CREATE TABLE `agricultural_inputs7s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Tractor` float DEFAULT NULL,
  `Combine_Harvestor` float DEFAULT NULL,
  `Zero_Tillage` float DEFAULT NULL,
  `Pumpset` float DEFAULT NULL,
  `Power_Tiller` float DEFAULT NULL,
  `Manually_Operated_Tools` float DEFAULT NULL,
  `Thresher` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Tractor_Colour` varchar(255) DEFAULT NULL,
  `Combine_Harvestor_Colour` varchar(255) DEFAULT NULL,
  `Zero_Tillage_Colour` varchar(255) DEFAULT NULL,
  `Pumpset_Colour` varchar(255) DEFAULT NULL,
  `Power_Tiller_Colour` varchar(255) DEFAULT NULL,
  `Manually_Operated_Tools_Colour` varchar(255) DEFAULT NULL,
  `Thresher_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agricultural_inputs7s`
--

INSERT INTO `agricultural_inputs7s` (`id`, `Districts`, `Tractor`, `Combine_Harvestor`, `Zero_Tillage`, `Pumpset`, `Power_Tiller`, `Manually_Operated_Tools`, `Thresher`, `Year`, `Tractor_Colour`, `Combine_Harvestor_Colour`, `Zero_Tillage_Colour`, `Pumpset_Colour`, `Power_Tiller_Colour`, `Manually_Operated_Tools_Colour`, `Thresher_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 4617, 177, 1537, 5788, 1637, 46590, 2314, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(2, 'Madhubani', 217, 0, 31, 260, 10, 3685, 209, 2015, 'Light_Green', 'Red', 'Red', 'Light_Green', 'Orange', 'Green', 'Dark_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(3, 'Araria', 122, 3, 170, 212, 1, 1294, 176, 2015, 'Dark_Yellow', 'Orange', 'Green', 'Yellow', 'Red', 'Dark_Yellow', 'Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(4, 'Saharsa', 115, 0, 47, 100, 0, 1554, 160, 2015, 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Red', 'Yellow', 'Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(5, 'EastChamparan', 238, 4, 8, 245, 18, 1752, 148, 2015, 'Light_Green', 'Orange', 'Red', 'Light_Green', 'Orange', 'Yellow', 'Light_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(6, 'Katihar', 148, 17, 2, 150, 44, 782, 122, 2015, 'Dark_Yellow', 'Green', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(7, 'Aurangabad', 116, 8, 10, 184, 37, 629, 120, 2015, 'Dark_Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(8, 'Nawada', 108, 11, 3, 117, 88, 864, 111, 2015, 'Dark_Yellow', 'Light_Green', 'Red', 'Orange', 'Yellow', 'Orange', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(9, 'Arwal', 57, 1, 2, 32, 17, 480, 105, 2015, 'Orange', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(10, 'Purnia', 161, 3, 32, 238, 3, 1456, 102, 2015, 'Yellow', 'Orange', 'Red', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(11, 'Gaya', 202, 18, 107, 229, 329, 1877, 85, 2015, 'Light_Green', 'Green', 'Yellow', 'Yellow', 'Green', 'Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(12, 'Madhepura', 127, 0, 11, 117, 1, 970, 80, 2015, 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(13, 'Gopalganj', 178, 5, 4, 211, 0, 2850, 69, 2015, 'Yellow', 'Dark_Yellow', 'Red', 'Yellow', 'Red', 'Light_Green', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(14, 'Siwan', 207, 2, 5, 249, 1, 238, 69, 2015, 'Light_Green', 'Red', 'Red', 'Light_Green', 'Red', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(15, 'Sitamarhi', 72, 1, 21, 216, 4, 3046, 67, 2015, 'Orange', 'Red', 'Red', 'Yellow', 'Red', 'Light_Green', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(16, 'WestChamparan', 278, 0, 27, 299, 0, 997, 67, 2015, 'Dark_Green', 'Red', 'Red', 'Green', 'Red', 'Orange', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(17, 'Saran', 253, 3, 36, 206, 10, 1833, 66, 2015, 'Green', 'Orange', 'Red', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(18, 'Jamui', 113, 5, 20, 63, 27, 279, 60, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(19, 'Samastipur', 184, 1, 19, 202, 1, 7212, 55, 2015, 'Yellow', 'Red', 'Red', 'Yellow', 'Red', 'Dark_Green', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(20, 'Bhagalpur', 86, 2, 151, 230, 15, 1410, 55, 2015, 'Orange', 'Red', 'Light_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(21, 'Bhojpur', 144, 5, 252, 164, 1, 256, 51, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Green', 'Dark_Yellow', 'Red', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(22, 'Patna', 142, 4, 3, 207, 321, 217, 43, 2015, 'Dark_Yellow', 'Orange', 'Red', 'Yellow', 'Green', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(23, 'Kishanganj', 62, 8, 6, 92, 1, 187, 40, 2015, 'Orange', 'Yellow', 'Red', 'Red', 'Red', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(24, 'Begusarai', 132, 2, 9, 142, 0, 498, 39, 2015, 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(25, 'Rohtas', 107, 40, 133, 135, 3, 1019, 36, 2015, 'Dark_Yellow', 'Dark_Green', 'Light_Green', 'Orange', 'Red', 'Dark_Yellow', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(26, 'Muzaffarpur', 162, 0, 7, 333, 2, 1770, 26, 2015, 'Yellow', 'Red', 'Red', 'Dark_Green', 'Red', 'Yellow', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(27, 'Khagaria', 89, 0, 5, 99, 0, 841, 26, 2015, 'Orange', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(28, 'Supaul', 112, 0, 40, 125, 0, 722, 19, 2015, 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(29, 'Kaimur', 65, 5, 127, 48, 1, 89, 18, 2015, 'Orange', 'Dark_Yellow', 'Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(30, 'Munger', 32, 3, 9, 84, 14, 1373, 17, 2015, 'Red', 'Orange', 'Red', 'Red', 'Orange', 'Dark_Yellow', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(31, 'Darbhanga', 87, 0, 44, 173, 0, 1503, 14, 2015, 'Orange', 'Red', 'Orange', 'Dark_Yellow', 'Red', 'Yellow', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(32, 'Sheikhpura', 43, 6, 12, 55, 8, 258, 14, 2015, 'Red', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(33, 'Nalanda', 123, 6, 24, 87, 447, 181, 14, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Dark_Green', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(34, 'Banka', 51, 3, 99, 77, 76, 1398, 9, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(35, 'Lakhisarai', 55, 4, 5, 63, 1, 316, 9, 2015, 'Orange', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(36, 'Jehanabad', 68, 0, 0, 44, 152, 784, 7, 2015, 'Orange', 'Red', 'Red', 'Red', 'Light_Green', 'Orange', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(37, 'Vaishali', 55, 0, 10, 133, 1, 1054, 6, 2015, 'Orange', 'Red', 'Red', 'Orange', 'Red', 'Dark_Yellow', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(38, 'Sheohar', 33, 0, 20, 70, 0, 874, 0, 2015, 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(39, 'Buxar', 73, 7, 26, 97, 3, 42, 0, 2015, 'Orange', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(40, 'Bihar', 0, 158, 833, 5080, 1225, 16583, 2654, 2016, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(41, 'Madhubani', 0, 0, 25, 232, 0, 786, 321, 2016, 'Red', 'Red', 'Dark_Yellow', 'Yellow', 'Red', 'Yellow', 'Dark_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(42, 'Westchamparan', 0, 4, 26, 237, 40, 1080, 184, 2016, 'Red', 'Orange', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Green', 'Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(43, 'EastChamparan', 0, 0, 31, 361, 1, 490, 145, 2016, 'Red', 'Red', 'Yellow', 'Dark_Green', 'Red', 'Orange', 'Light_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(44, 'Arwal', 0, 1, 0, 56, 21, 65, 142, 2016, 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Light_Green', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(45, 'Saran', 0, 0, 53, 373, 4, 435, 135, 2016, 'Red', 'Red', 'Light_Green', 'Dark_Green', 'Red', 'Orange', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(46, 'Purnia', 0, 0, 6, 184, 30, 699, 134, 2016, 'Red', 'Red', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(47, 'Aurangabad', 0, 8, 5, 54, 15, 34, 124, 2016, 'Red', 'Yellow', 'Red', 'Red', 'Orange', 'Red', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(48, 'Saharsa', 0, 0, 13, 124, 0, 1532, 123, 2016, 'Red', 'Red', 'Orange', 'Orange', 'Red', 'Dark_Green', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(49, 'Sitamarhi', 0, 0, 17, 144, 0, 272, 122, 2016, 'Red', 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(50, 'Gaya', 0, 17, 11, 241, 285, 910, 113, 2016, 'Red', 'Green', 'Orange', 'Light_Green', 'Dark_Green', 'Light_Green', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(51, 'Gopalganj', 0, 5, 5, 225, 0, 688, 109, 2016, 'Red', 'Dark_Yellow', 'Red', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(52, 'Kishanganj', 0, 0, 9, 79, 2, 211, 86, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(53, 'Vaishali', 0, 0, 27, 97, 17, 562, 81, 2016, 'Red', 'Red', 'Dark_Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(54, 'Rohtas', 0, 31, 158, 132, 4, 131, 80, 2016, 'Red', 'Dark_Green', 'Dark_Green', 'Orange', 'Red', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(55, 'Banka', 0, 3, 32, 183, 105, 839, 78, 2016, 'Red', 'Orange', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(56, 'Katihar', 0, 5, 2, 129, 25, 614, 71, 2016, 'Red', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(57, 'Bhojpur', 0, 6, 161, 131, 6, 269, 67, 2016, 'Red', 'Dark_Yellow', 'Dark_Green', 'Orange', 'Red', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(58, 'Nalanda', 0, 8, 18, 138, 282, 106, 63, 2016, 'Red', 'Yellow', 'Orange', 'Orange', 'Dark_Green', 'Red', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(59, 'Madhepura', 0, 0, 1, 120, 1, 909, 60, 2016, 'Red', 'Red', 'Red', 'Orange', 'Red', 'Light_Green', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(60, 'Jehanabad', 0, 4, 2, 72, 197, 615, 51, 2016, 'Red', 'Orange', 'Red', 'Red', 'Green', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(61, 'Bhagalpur', 0, 0, 23, 251, 7, 608, 47, 2016, 'Red', 'Red', 'Dark_Yellow', 'Light_Green', 'Red', 'Dark_Yellow', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(62, 'Khagaria', 0, 2, 1, 88, 0, 694, 41, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(63, 'Jamui', 0, 4, 1, 61, 38, 190, 41, 2016, 'Red', 'Orange', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(64, 'Nawada', 0, 13, 5, 117, 74, 389, 36, 2016, 'Red', 'Light_Green', 'Red', 'Orange', 'Light_Green', 'Orange', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(65, 'Patna', 0, 2, 7, 18, 54, 29, 32, 2016, 'Red', 'Red', 'Red', 'Red', 'Yellow', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(66, 'Siwan', 0, 1, 3, 101, 1, 71, 25, 2016, 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(67, 'Kaimur', 0, 12, 94, 116, 0, 301, 23, 2016, 'Red', 'Light_Green', 'Green', 'Orange', 'Red', 'Orange', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(68, 'Araria', 0, 0, 2, 13, 0, 8, 22, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(69, 'Lakhisarai', 0, 5, 7, 80, 0, 404, 20, 2016, 'Red', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Orange', 'Orange', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(70, 'Supaul', 0, 0, 2, 115, 0, 528, 18, 2016, 'Red', 'Red', 'Red', 'Orange', 'Red', 'Dark_Yellow', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(71, 'Begusarai', 0, 3, 6, 111, 0, 239, 15, 2016, 'Red', 'Orange', 'Red', 'Orange', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(72, 'Munger', 0, 0, 2, 63, 10, 187, 12, 2016, 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(73, 'Samastipur', 0, 0, 10, 114, 0, 277, 10, 2016, 'Red', 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(74, 'Muzaffarpur', 0, 0, 4, 339, 0, 846, 9, 2016, 'Red', 'Red', 'Red', 'Green', 'Red', 'Yellow', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(75, 'Sheohar', 0, 0, 6, 35, 0, 435, 8, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(76, 'Buxar', 0, 14, 47, 125, 0, 122, 2, 2016, 'Red', 'Light_Green', 'Light_Green', 'Orange', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(77, 'Sheikhpura', 0, 10, 1, 5, 6, 4, 2, 2016, 'Red', 'Yellow', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57'),
(78, 'Darbhanga', 0, 0, 10, 16, 0, 4, 2, 2016, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:02:57', '2018-07-26 10:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_inputs8s`
--

DROP TABLE IF EXISTS `agricultural_inputs8s`;
CREATE TABLE `agricultural_inputs8s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Tractor` float DEFAULT NULL,
  `Combine_Harvestor` float DEFAULT NULL,
  `Zero_Tillage` float DEFAULT NULL,
  `Pumpset` float DEFAULT NULL,
  `Power_Tiller` float DEFAULT NULL,
  `Manually_Operated_Tools` float DEFAULT NULL,
  `Thresher` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `animal_husbandry1s`
--

DROP TABLE IF EXISTS `animal_husbandry1s`;
CREATE TABLE `animal_husbandry1s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Cattle` float DEFAULT NULL,
  `Males_over_3_years` float DEFAULT NULL,
  `Females_over_3_years` float DEFAULT NULL,
  `Young_stock` float DEFAULT NULL,
  `Buffalo` float DEFAULT NULL,
  `Sheep` float DEFAULT NULL,
  `Goats` float DEFAULT NULL,
  `Pigs` float DEFAULT NULL,
  `Horses_Ponies` float DEFAULT NULL,
  `Others` float DEFAULT NULL,
  `Total_Livestock` float DEFAULT NULL,
  `Total_Poultry` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_husbandry1s`
--

INSERT INTO `animal_husbandry1s` (`id`, `Year`, `Cattle`, `Males_over_3_years`, `Females_over_3_years`, `Young_stock`, `Buffalo`, `Sheep`, `Goats`, `Pigs`, `Horses_Ponies`, `Others`, `Total_Livestock`, `Total_Poultry`, `created_at`, `updated_at`) VALUES
(1, 2003, 10470, 274, 2901, 2590, 5766, 346, 9606, 627, 115, 0, 26957, 13968, '2018-07-17 06:58:11', '2018-07-17 06:58:11'),
(2, 2007, 12408, 329, 3546, 2815, 6690, 218, 10167, 632, 51, 0, 30167, 11420, '2018-07-17 06:58:11', '2018-07-17 06:58:11'),
(3, 2012, 12232, 300, 4017, 3250, 7567, 232, 12154, 650, 49, 55, 32939, 12748, '2018-07-17 06:58:11', '2018-07-17 06:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `animal_husbandry2s`
--

DROP TABLE IF EXISTS `animal_husbandry2s`;
CREATE TABLE `animal_husbandry2s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Milk_lakh_tonnes` float DEFAULT NULL,
  `Egg_crore` float DEFAULT NULL,
  `Wool_lakh_kgs` float DEFAULT NULL,
  `Meat_lakh_tonnes` float DEFAULT NULL,
  `Fish_lakh_tonnes` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_husbandry2s`
--

INSERT INTO `animal_husbandry2s` (`id`, `Year`, `Milk_lakh_tonnes`, `Egg_crore`, `Wool_lakh_kgs`, `Meat_lakh_tonnes`, `Fish_lakh_tonnes`, `created_at`, `updated_at`) VALUES
(1, 2012, 68.45, 83.72, 2.67, 2.28, 4, '2018-07-17 08:00:08', '2018-07-17 08:00:08'),
(2, 2013, 71.97, 93.08, 2.71, 2.92, 4.32, '2018-07-17 08:00:08', '2018-07-17 08:00:08'),
(3, 2014, 77.75, 98.45, 2.78, 2.94, 4.79, '2018-07-17 08:00:08', '2018-07-17 08:00:08'),
(4, 2015, 82.88, 100.21, 2.4, 3.02, 5.07, '2018-07-17 08:00:08', '2018-07-17 08:00:08'),
(5, 2016, 87.1, 111.17, 2.81, 3.26, 5.09, '2018-07-17 08:00:08', '2018-07-17 08:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `animal_husbandry3s`
--

DROP TABLE IF EXISTS `animal_husbandry3s`;
CREATE TABLE `animal_husbandry3s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Animals_Treated` float DEFAULT NULL,
  `Immunization` float DEFAULT NULL,
  `Artificial_Insemination` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_husbandry3s`
--

INSERT INTO `animal_husbandry3s` (`id`, `Year`, `Animals_Treated`, `Immunization`, `Artificial_Insemination`, `created_at`, `updated_at`) VALUES
(1, 2012, 28.24, 198.78, 24.63, '2018-07-17 09:18:10', '2018-07-17 09:18:10'),
(2, 2013, 25.12, 147.57, 24.14, '2018-07-17 09:18:10', '2018-07-17 09:18:10'),
(3, 2014, 32.99, 10.87, 3, '2018-07-17 09:18:10', '2018-07-17 09:18:10'),
(4, 2015, 38.26, 163.31, 26.31, '2018-07-17 09:18:10', '2018-07-17 09:18:10'),
(5, 2016, 41.03, 296.45, 26.2, '2018-07-17 09:18:10', '2018-07-17 09:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `animal_husbandry4s`
--

DROP TABLE IF EXISTS `animal_husbandry4s`;
CREATE TABLE `animal_husbandry4s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Cow` float DEFAULT NULL,
  `Buffalo` float DEFAULT NULL,
  `Pig` float DEFAULT NULL,
  `Sheep` float DEFAULT NULL,
  `Goat` float DEFAULT NULL,
  `Poultry` float DEFAULT NULL,
  `Cow_Colour` varchar(255) DEFAULT NULL,
  `Buffalo_Colour` varchar(255) DEFAULT NULL,
  `Pig_Colour` varchar(255) DEFAULT NULL,
  `Sheep_Colour` varchar(255) DEFAULT NULL,
  `Goat_Colour` varchar(255) DEFAULT NULL,
  `Poultry_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_husbandry4s`
--

INSERT INTO `animal_husbandry4s` (`id`, `Districts`, `Cow`, `Buffalo`, `Pig`, `Sheep`, `Goat`, `Poultry`, `Cow_Colour`, `Buffalo_Colour`, `Pig_Colour`, `Sheep_Colour`, `Goat_Colour`, `Poultry_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 12232, 7567, 650, 232, 12154, 12748, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(2, 'Katihar', 605, 101, 23, 6, 580, 876, 'Green', 'Orange', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Dark_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(3, 'Muzaffarpur', 344, 278, 5, 2, 564, 853, 'Dark_Yellow', 'Yellow', 'Orange', 'Red', 'Light_Green', 'Dark_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(4, 'Vaishali', 213, 169, 2, 2, 299, 756, 'Orange', 'Orange', 'Red', 'Red', 'Orange', 'Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(5, 'Kishanganj', 411, 45, 12, 1, 407, 736, 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Red', 'Yellow', 'Light_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(6, 'Araria', 678, 300, 16, 3, 980, 722, 'Dark_Green', 'Light_Green', 'Dark_Yellow', 'Orange', 'Dark_Green', 'Light_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(7, 'EastChamparan', 360, 340, 16, 2, 725, 684, 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', 'Red', 'Green', 'Light_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(8, 'Purnia', 499, 133, 19, 0, 516, 559, 'Yellow', 'Orange', 'Dark_Yellow', 'Red', 'Light_Green', 'Light_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(9, 'Samastipur', 467, 241, 3, 3, 387, 551, 'Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(10, 'Nalanda', 176, 317, 23, 8, 157, 520, 'Red', 'Light_Green', 'Yellow', 'Dark_Yellow', 'Red', 'Light_Green', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(11, 'Gaya', 654, 314, 83, 10, 428, 496, 'Dark_Green', 'Light_Green', 'Green', 'Yellow', 'Yellow', 'Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(12, 'Darbhanga', 260, 222, 9, 1, 302, 480, 'Orange', 'Dark_Yellow', 'Orange', 'Red', 'Dark_Yellow', 'Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(13, 'WestChamparan', 367, 260, 17, 2, 593, 466, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Light_Green', 'Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(14, 'Patna', 306, 293, 39, 13, 179, 401, 'Dark_Yellow', 'Yellow', 'Light_Green', 'Yellow', 'Red', 'Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(15, 'Aurangabad', 364, 200, 11, 25, 209, 377, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Orange', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(16, 'Bhagalpur', 509, 191, 9, 1, 582, 358, 'Light_Green', 'Orange', 'Orange', 'Red', 'Light_Green', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(17, 'Saran', 321, 187, 8, 5, 188, 325, 'Dark_Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(18, 'Sitamarhi', 151, 186, 6, 0, 366, 281, 'Red', 'Orange', 'Orange', 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(19, 'Nawada', 307, 130, 28, 3, 224, 274, 'Dark_Yellow', 'Orange', 'Yellow', 'Orange', 'Orange', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(20, 'Madhubani', 526, 380, 16, 1, 400, 259, 'Light_Green', 'Green', 'Dark_Yellow', 'Red', 'Yellow', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(21, 'Begusarai', 363, 99, 4, 0, 231, 256, 'Dark_Yellow', 'Red', 'Red', 'Red', 'Orange', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(22, 'Siwan', 295, 149, 10, 2, 235, 232, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Orange', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(23, 'Banka', 552, 142, 21, 16, 377, 212, 'Light_Green', 'Orange', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(24, 'Madhepura', 346, 820, 7, 1, 403, 198, 'Dark_Yellow', 'Dark_Green', 'Orange', 'Red', 'Yellow', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(25, 'Jamui', 459, 78, 33, 11, 351, 189, 'Yellow', 'Red', 'Light_Green', 'Yellow', 'Dark_Yellow', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(26, 'Rohtas', 396, 299, 11, 14, 369, 187, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(27, 'Supaul', 475, 313, 11, 16, 448, 176, 'Yellow', 'Light_Green', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(28, 'Bhojpur', 204, 202, 131, 19, 115, 161, 'Orange', 'Dark_Yellow', 'Dark_Green', 'Light_Green', 'Red', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(29, 'Khagaria', 239, 88, 4, 0, 228, 148, 'Orange', 'Red', 'Red', 'Red', 'Orange', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(30, 'Gopalganj', 188, 115, 6, 0, 211, 146, 'Red', 'Orange', 'Orange', 'Red', 'Orange', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(31, 'Munger', 167, 52, 8, 0, 169, 141, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(32, 'Saharsa', 298, 163, 11, 0, 347, 138, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(33, 'Arwal', 53, 73, 4, 2, 50, 134, 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(34, 'Kaimur', 204, 222, 8, 43, 111, 131, 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Green', 'Red', 'Orange', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(35, 'Jehanabad', 80, 132, 16, 2, 73, 95, 'Red', 'Orange', 'Dark_Yellow', 'Red', 'Red', 'Red', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(36, 'Buxar', 162, 183, 8, 16, 81, 80, 'Red', 'Orange', 'Orange', 'Light_Green', 'Red', 'Red', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(37, 'Sheikhpura', 67, 46, 5, 1, 64, 60, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(38, 'Sheohar', 40, 47, 1, 0, 96, 48, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:20:57', '2018-07-26 10:20:57'),
(39, 'Lakhisarai', 126, 58, 4, 1, 107, 45, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-26 10:20:57', '2018-07-26 10:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `animal_husbandry5s`
--

DROP TABLE IF EXISTS `animal_husbandry5s`;
CREATE TABLE `animal_husbandry5s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Fish_Production` float DEFAULT NULL,
  `Fish_Seeds` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Fish_Production_Colour` varchar(255) DEFAULT NULL,
  `Fish_Seeds_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_husbandry5s`
--

INSERT INTO `animal_husbandry5s` (`id`, `Districts`, `Fish_Production`, `Fish_Seeds`, `Year`, `Fish_Production_Colour`, `Fish_Seeds_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 479.8, 5057.5, 2014, 'Dark_Green', 'Dark_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(2, 'Darbhanga', 38.7, 2000, 2014, 'Green', 'Dark_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(3, 'Banka', 8.3, 1300, 2014, 'Dark_Yellow', 'Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(4, 'Muzaffarpur', 20.2, 1100, 2014, 'Light_Green', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(5, 'Gopalganj', 8.5, 142.05, 2014, 'Dark_Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(6, 'WestChamparan', 22.2, 108, 2014, 'Light_Green', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(7, 'Madhubani', 42.3, 95, 2014, 'Dark_Green', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(8, 'EastChamparan', 36.9, 70, 2014, 'Green', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(9, 'Sitamarhi', 11.2, 70, 2014, 'Yellow', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(10, 'Vaishali', 13.4, 55, 2014, 'Yellow', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(11, 'Saran', 9.5, 39, 2014, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(12, 'Bhagalpur', 13.6, 33.2, 2014, 'Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(13, 'Purnia', 13.7, 15, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(14, 'Jehanabad', 3.2, 15, 2014, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(15, 'Sheikhpura', 3, 7.1, 2014, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(16, 'Sheohar', 1.9, 5, 2014, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(17, 'Patna', 14, 1.3, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(18, 'Saharsa', 8.2, 1.3, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(19, 'Munger', 6.2, 0.5, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(20, 'Katihar', 37, 0, 2014, 'Green', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(21, 'Begusarai', 23.2, 0, 2014, 'Light_Green', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(22, 'Khagaria', 18.8, 0, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(23, 'Siwan', 17, 0, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(24, 'Nalanda', 16.6, 0, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(25, 'Samastipur', 12, 0, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(26, 'Araria', 10, 0, 2014, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(27, 'Bhojpur', 9.3, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(28, 'Supaul', 8.8, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(29, 'Lakhisarai', 7.3, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(30, 'Kaimur', 7, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(31, 'Buxar', 6.4, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(32, 'Rohtas', 6.3, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(33, 'Kishanganj', 6, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(34, 'Nawada', 5.2, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(35, 'Aurangabad', 5, 0, 2014, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(36, 'Madhepura', 2.9, 0, 2014, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(37, 'Gaya', 2.5, 0, 2014, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(38, 'Jamui', 2.1, 0, 2014, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(39, 'Arwal', 1.8, 0, 2014, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(40, 'Bihar', 506.9, 5240.7, 2015, 'Dark_Green', 'Dark_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(41, 'Sitamarhi', 12.24, 596, 2015, 'Yellow', 'Dark_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(42, 'Muzaffarpur', 21.75, 480, 2015, 'Light_Green', 'Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(43, 'Katihar', 23.5, 470, 2015, 'Light_Green', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(44, 'WestChamparan', 23.1, 460, 2015, 'Light_Green', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(45, 'Darbhanga', 44, 450, 2015, 'Green', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(46, 'Bhagalpur', 13.6, 364, 2015, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(47, 'Nalanda', 17.61, 360, 2015, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(48, 'Patna', 15.47, 308.88, 2015, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(49, 'Samastipur', 13.08, 300, 2015, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(50, 'EastChamparan', 50.4, 216, 2015, 'Dark_Green', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(51, 'Madhubani', 51.45, 150, 2015, 'Dark_Green', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(52, 'Khagaria', 18.9, 125, 2015, 'Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(53, 'Kaimur', 9.95, 124, 2015, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(54, 'Kishanganj', 6.17, 112, 2015, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(55, 'Rohtas', 6.75, 100, 2015, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(56, 'Vaishali', 15.09, 95.2, 2015, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(57, 'Aurangabad', 7.02, 70, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(58, 'Purnia', 12.05, 63, 2015, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(59, 'Bhojpur', 10.05, 60, 2015, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(60, 'Saran', 9.71, 48.4, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(61, 'Madhepura', 3.73, 46, 2015, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(62, 'Buxar', 6.91, 45, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(63, 'Araria', 10.85, 28.6, 2015, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(64, 'Begusarai', 21.76, 25, 2015, 'Light_Green', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(65, 'Saharsa', 6.7, 25, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(66, 'Gopalganj', 9.25, 23.2, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(67, 'Munger', 9.4, 20, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(68, 'Siwan', 6.21, 20, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(69, 'Arwal', 1.37, 20, 2015, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(70, 'Jehanabad', 1.26, 15, 2015, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(71, 'Sheikhpura', 2.93, 10, 2015, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(72, 'Sheohar', 2.05, 5, 2015, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(73, 'Supaul', 10.54, 3.1, 2015, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(74, 'Gaya', 6.5, 1.86, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(75, 'Jamui', 2.35, 0.5, 2015, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(76, 'Banka', 9.89, 0, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(77, 'Lakhisarai', 7.9, 0, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(78, 'Nawada', 5.4, 0, 2015, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(79, 'Bihar', 509.1, 7932.6, 2016, NULL, NULL, '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(80, 'Madhubani', 51.8, 1600, 2016, 'Dark_Green', 'Dark_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(81, 'Darbhanga', 44, 1000, 2016, 'Green', 'Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(82, 'EastChamparan', 50, 725, 2016, 'Dark_Green', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(83, 'Sitamarhi', 12.25, 598, 2016, 'Yellow', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(84, 'Muzaffarpur', 21.75, 520, 2016, 'Light_Green', 'Light_Green', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(85, 'Katihar', 23.9, 470, 2016, 'Light_Green', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(86, 'WestChamparan', 23.2, 461, 2016, 'Light_Green', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(87, 'Bhagalpur', 13.6, 375, 2016, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(88, 'Nalanda', 17.62, 360, 2016, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(89, 'Samastipur', 14, 320, 2016, 'Yellow', 'Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(90, 'Patna', 15.63, 225, 2016, 'Yellow', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(91, 'Rohtas', 6.78, 175, 2016, 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(92, 'Gaya', 6.5, 150, 2016, 'Dark_Yellow', 'Dark_Yellow', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(93, 'Kaimur', 9.98, 125, 2016, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(94, 'Khagaria', 20, 120, 2016, 'Light_Green', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(95, 'Kishanganj', 6.2, 115, 2016, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(96, 'Vaishali', 15.09, 96, 2016, 'Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(97, 'Buxar', 6.2, 84, 2016, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(98, 'Purnia', 12.1, 70, 2016, 'Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(99, 'Aurangabad', 8.13, 70, 2016, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(100, 'Bhojpur', 10.07, 60.05, 2016, 'Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(101, 'Saran', 9.71, 56.8, 2016, 'Dark_Yellow', 'Orange', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(102, 'Araria', 10.9, 33.5, 2016, 'Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(103, 'Munger', 9.4, 20, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(104, 'Siwan', 6.22, 20, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(105, 'Arwal', 1.37, 20, 2016, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(106, 'Gopalganj', 9.41, 16.25, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(107, 'Jehanabad', 1.26, 15, 2016, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(108, 'Saharsa', 6.9, 10, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(109, 'Sheikhpura', 2.9, 10, 2016, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(110, 'Sheohar', 2.2, 6, 2016, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(111, 'Supaul', 8.1, 2.2, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(112, 'Jamui', 2.4, 1.5, 2016, 'Red', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(113, 'Madhepura', 3.8, 1.3, 2016, 'Orange', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(114, 'Nawada', 5.5, 1, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(115, 'Begusarai', 21.8, 0, 2016, 'Light_Green', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(116, 'Banka', 9.9, 0, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26'),
(117, 'Lakhisarai', 7.9, 0, 2016, 'Dark_Yellow', 'Red', '2018-07-26 12:29:26', '2018-07-26 12:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `animal_husbandry6s`
--

DROP TABLE IF EXISTS `animal_husbandry6s`;
CREATE TABLE `animal_husbandry6s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Crossbred_Cow` float DEFAULT NULL,
  `Local_Cow` float DEFAULT NULL,
  `Total_Cow` float DEFAULT NULL,
  `Buffalo` float DEFAULT NULL,
  `Total_Cow_Buffalo` float DEFAULT NULL,
  `Goat` float DEFAULT NULL,
  `Total_Production` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Crossbred_Cow_Colour` varchar(255) DEFAULT NULL,
  `Local_Cow_Colour` varchar(255) DEFAULT NULL,
  `Total_Cow_Colour` varchar(255) DEFAULT NULL,
  `Buffalo_Colour` varchar(255) DEFAULT NULL,
  `Total_Cow_Buffalo_Colour` varchar(255) DEFAULT NULL,
  `Goat_Colour` varchar(255) DEFAULT NULL,
  `Total_Production_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_husbandry6s`
--

INSERT INTO `animal_husbandry6s` (`id`, `Districts`, `Crossbred_Cow`, `Local_Cow`, `Total_Cow`, `Buffalo`, `Total_Cow_Buffalo`, `Goat`, `Total_Production`, `Year`, `Crossbred_Cow_Colour`, `Local_Cow_Colour`, `Total_Cow_Colour`, `Buffalo_Colour`, `Total_Cow_Buffalo_Colour`, `Goat_Colour`, `Total_Production_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 2579.21, 2301.78, 4880.99, 3209.59, 8090.58, 197.74, 8288.32, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(2, 'Patna', 261.46, 15.82, 277.28, 177.1, 454.38, 3.67, 458.05, 2015, 'Green', 'Red', 'Green', 'Green', 'Dark_Green', 'Orange', 'Dark_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(3, 'Samastipur', 299.87, 11.87, 311.74, 99.52, 411.26, 5.56, 416.82, 2015, 'Dark_Green', 'Red', 'Dark_Green', 'Dark_Yellow', 'Green', 'Dark_Yellow', 'Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(4, 'Nalanda', 92.05, 26.09, 118.14, 200.63, 318.77, 3.05, 321.82, 2015, 'Orange', 'Orange', 'Yellow', 'Dark_Green', 'Light_Green', 'Orange', 'Light_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(5, 'Supaul', 2.29, 111.78, 114.07, 200.19, 314.26, 6.86, 321.11, 2015, 'Red', 'Light_Green', 'Yellow', 'Dark_Green', 'Light_Green', 'Yellow', 'Light_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(6, 'Muzaffarpur', 172.55, 19.19, 191.74, 118.6, 310.34, 8.48, 318.82, 2015, 'Light_Green', 'Red', 'Yellow', 'Yellow', 'Light_Green', 'Light_Green', 'Light_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(7, 'Bhagalpur', 132.13, 88.12, 220.26, 89.21, 309.47, 7.64, 317.11, 2015, 'Yellow', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Light_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(8, 'Begusarai', 251.71, 6, 257.71, 48.07, 305.78, 3.62, 309.4, 2015, 'Green', 'Red', 'Green', 'Red', 'Light_Green', 'Orange', 'Light_Green', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(9, 'Gaya', 37.37, 122.7, 160.08, 117.06, 277.13, 6.89, 284.02, 2015, 'Red', 'Green', 'Yellow', 'Yellow', 'Yellow', 'Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(10, 'EastChamparan', 36.38, 103.96, 140.34, 129.42, 269.76, 10.62, 280.38, 2015, 'Red', 'Light_Green', 'Yellow', 'Yellow', 'Yellow', 'Green', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(11, 'Bhojpur', 128.04, 25.62, 153.66, 122.17, 275.83, 2.64, 278.47, 2015, 'Yellow', 'Orange', 'Yellow', 'Yellow', 'Yellow', 'Orange', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(12, 'Araria', 7.13, 151.61, 158.73, 89.68, 248.41, 28.79, 277.2, 2015, 'Red', 'Dark_Green', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Green', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(13, 'Madhubani', 8.52, 122.71, 131.23, 136.68, 267.91, 6.84, 274.75, 2015, 'Red', 'Green', 'Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(14, 'Rohtas', 65.27, 50.89, 116.16, 140.55, 256.71, 2.98, 259.69, 2015, 'Orange', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Yellow', 'Orange', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(15, 'Saran', 109.58, 60.95, 170.53, 82.85, 253.38, 2.83, 256.21, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(16, 'WestChamparan', 56.28, 92.38, 148.67, 92.04, 240.7, 8.55, 249.26, 2015, 'Orange', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(17, 'Khagaria', 156.62, 26.46, 183.08, 52.23, 235.3, 3.65, 238.95, 2015, 'Light_Green', 'Orange', 'Yellow', 'Orange', 'Yellow', 'Orange', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(18, 'Vaishali', 148.55, 4.65, 153.2, 70, 223.2, 4.37, 227.56, 2015, 'Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(19, 'Darbhanga', 47.1, 56.2, 103.39, 114.24, 217.62, 5, 222.62, 2015, 'Orange', 'Dark_Yellow', 'Yellow', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(20, 'Banka', 25.94, 124.51, 150.45, 62.61, 213.06, 5.74, 218.8, 2015, 'Red', 'Green', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(21, 'Aurangabad', 27.61, 88.57, 116.18, 94.44, 210.62, 4.6, 215.22, 2015, 'Red', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(22, 'Katihar', 9.44, 149.09, 158.54, 48.33, 206.87, 8.34, 215.21, 2015, 'Red', 'Dark_Green', 'Yellow', 'Red', 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(23, 'Purnia', 20.91, 125.87, 146.78, 49.84, 196.63, 6.24, 202.87, 2015, 'Red', 'Green', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(24, 'Madhepura', 16.46, 91.15, 107.61, 80.32, 187.93, 5.73, 193.66, 2015, 'Red', 'Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(25, 'Saharsa', 19.31, 80.84, 100.16, 85.88, 186.04, 5.26, 191.3, 2015, 'Red', 'Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(26, 'Siwan', 49.89, 56.65, 106.54, 73.5, 180.03, 3.36, 183.39, 2015, 'Orange', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(27, 'Kaimur', 26.89, 45.79, 72.68, 103.18, 175.86, 1.21, 177.07, 2015, 'Red', 'Orange', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(28, 'Buxar', 58.94, 32.69, 91.64, 81.49, 173.13, 1.21, 174.33, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(29, 'Kishanganj', 12.7, 116.52, 129.22, 24.7, 153.92, 6.04, 159.96, 2015, 'Red', 'Light_Green', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(30, 'Jamui', 12.4, 92.02, 104.42, 36.5, 140.93, 5.62, 146.54, 2015, 'Red', 'Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(31, 'Nawada', 16.87, 62.23, 79.1, 54.59, 133.69, 3.17, 136.86, 2015, 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(32, 'Munger', 64.8, 33.73, 98.53, 31.83, 130.36, 3.28, 133.65, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Orange', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(33, 'Gopalganj', 35.42, 37.14, 72.56, 56.14, 128.7, 3.12, 131.82, 2015, 'Red', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(34, 'Sitamarhi', 22.42, 15.7, 38.12, 81.13, 119.25, 6.25, 125.5, 2015, 'Red', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(35, 'Lakhisarai', 55.06, 15.86, 70.92, 29.47, 100.39, 1.49, 101.88, 2015, 'Orange', 'Red', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Red', 'Dark_Yellow', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(36, 'Jehanabad', 23.23, 13.17, 36.4, 53.5, 89.89, 1.28, 91.18, 2015, 'Red', 'Red', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(37, 'Sheikhpura', 28.21, 12.68, 40.89, 26.17, 67.06, 1.05, 68.11, 2015, 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', 'Orange', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(38, 'Arwal', 28.47, 2.97, 31.43, 35.5, 66.94, 1.04, 67.97, 2015, 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', 'Orange', '2018-07-27 04:22:03', '2018-07-27 04:22:03'),
(39, 'Sheohar', 11.23, 7.58, 18.81, 20.25, 39.07, 1.71, 40.78, 2015, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 04:22:03', '2018-07-27 04:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `annual_rainfalls`
--

DROP TABLE IF EXISTS `annual_rainfalls`;
CREATE TABLE `annual_rainfalls` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `January` float DEFAULT NULL,
  `February` float DEFAULT NULL,
  `March` float DEFAULT NULL,
  `April` float DEFAULT NULL,
  `May` float DEFAULT NULL,
  `June` float DEFAULT NULL,
  `July` float DEFAULT NULL,
  `August` float DEFAULT NULL,
  `September` float DEFAULT NULL,
  `October` float DEFAULT NULL,
  `November` float DEFAULT NULL,
  `December` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annual_rainfalls`
--

INSERT INTO `annual_rainfalls` (`id`, `Districts`, `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November`, `December`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Araria', 0, 0, 0, 12.28, 58.5, 231.1, 270.714, 363.2, 102.286, 16.7714, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(2, 'Arwal', 15.2, 20.8, 0, 0.5, 5.85, 12.75, 320.4, 189.8, 158.333, 22.7333, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(3, 'Aurangabad', 11.32, 15.64, 5.68, 0, 0, 21.62, 83.2727, 167.229, 127.745, 18.0182, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(4, 'Banka', 2.24, 0.12, 4.54, 0, 48.36, 64.28, 466.39, 305.92, 55.91, 35.32, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(5, 'Begusarai', 5.66667, 0, 0, 0, 8.13333, 12.5667, 293.1, 57.8273, 35.7636, 3.7, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(6, 'Bhagalpur', 0, 0, 0, 0, 0, 16.68, 169.32, 324.48, 127.84, 31.3375, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(7, 'Bhojpur', 28.7667, 12.8333, 0.733333, 0, 0, 9.12333, 277.8, 349.167, 35.0667, 32.1667, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(8, 'Buxar', 8.45, 6.75, 0, 0, 0, 5.75, 270.46, 113.08, 33.7, 0, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(9, 'Darbhanga', 16.35, 17.3, 31.25, 24.95, 47.775, 83.725, 88.9286, 15.7143, 0, 0, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(10, 'EastChamparan', 0, 8, 5, 8.9, 35.8667, 62.8667, 318.3, 533.642, 55.5857, 56.22, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(11, 'Gaya', 2.32, 8.1, 9.08, 0.883333, 6.28333, 47.2714, 156.975, 181.02, 69.43, 2.14, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(12, 'Gopalganj', 4.12, 6.87, 1.39, 4.59, 3.65, 31.19, 184.327, 148.03, 31.37, 29.19, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(13, 'Jehanabad', 6.68, 7.16, 0, 0, 0, 8.16667, 192.367, 136.283, 105.74, 0.533333, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(14, 'Jamui ', 0, 0, 0, 0, 6.26, 52.58, 192, 131.767, 62.5833, 17.75, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(15, 'Kaimur', 24.75, 24.45, 4.15, 0, 0, 29.38, 241.58, 282.14, 132.24, 0, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(16, 'Katihar', 27.6, 8.65, 54.2, 4.5, 47.775, 30.05, 338.875, 247.342, 171.183, 0, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(17, 'Khagaria', 0.8, 0, 2.83333, 0, 2.6, 0.516667, 86.2833, 259.017, 158.1, 30, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(18, 'Kishanganj', 5.8, 6.6, 43.1, 37, 56.3, 148.243, 147.986, 388.9, 91.6929, 94.9714, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(19, 'Lakhisarai', 6, 0, 0, 21.2, 48.2, 61.7, 349.8, 246.8, 246.8, 44.5, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(20, 'Madhepura', 18.2333, 12.1667, 15.7667, 14.3, 41.4667, 0, 184.783, 406.733, 151.7, 9.56667, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(21, 'Madhubani', 9.65, 0, 2.44, 21.26, 0.4, 61.56, 113.258, 327.455, 24.0727, 1.18182, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(22, 'Munger', 0, 0, 0, 0, 0, 28.1429, 323.171, 276.657, 129.157, 59.0286, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(23, 'Muzaffarpur', 3.09286, 5.75714, 3.55, 1.82143, 10.1571, 51.2571, 252.779, 215.757, 46.5429, 18.2571, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(24, 'Nalanda', 2.48333, 0.883333, 0.166667, 0, 0.833333, 13.8667, 190.667, 138.633, 100.133, 8.63333, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(25, 'Nawada', 1.96, 5.54, 8.68, 0.46, 1.9, 28.41, 137.83, 68.791, 91.62, 0, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(26, 'Patna', 12.8333, 12.95, 0.4, 0.366667, 1.16667, 10.25, 329.95, 126.133, 60.95, 38.9111, 6.09, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(27, 'Purnia', 1.83333, 8.33333, 3.7, 3.46667, 28.3, 86.1, 36.7667, 297.356, 259.322, 56.8222, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(28, 'Rohtas', 15.55, 34.0833, 0, 0, 0, 35, 150.43, 168.29, 36.53, 13.38, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(29, 'Saharsa', 3.5, 14.15, 2.7, 2.4, 0, 2.4, 91.45, 156.103, 61.9429, 12.6, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(30, 'Samastipur', 9.125, 12.175, 15.95, 0.375, 9.4375, 56.3125, 221.712, 122.72, 92.12, 16.45, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(31, 'Saran', 17.2429, 19.1857, 5.02857, 0, 25.5286, 41.9889, 263.027, 689.172, 61.8692, 50.2615, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(32, 'Shekhpura', 0, 0, 0, 0, 0, 15.2, 318, 133.6, 69.7, 0, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(33, 'Sheohar', 2.5, 1.4, 22, 0, 142, 208.9, 319.6, 478, 34.6, 52.6, 0, 11, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(34, 'Sitamarhi', 0, 0, 0, 4.34706, 15.5353, 35.8471, 97.9059, 51.4529, 74.9647, 49.9353, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(35, 'Siwan', 0.6625, 0.8125, 0.625, 0, 3.25, 23.1812, 118.978, 138.021, 6.49375, 10.4625, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(36, 'Supaul', 15.6, 35.9, 13.5, 15.55, 69.8, 104.2, 330.378, 348.733, 38.4167, 2.66667, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(37, 'Vaishali', 8.13636, 14.0782, 0, 0, 6.44818, 9.04545, 192.327, 169.896, 49.2455, 18.6182, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(38, 'WestChamparan', 22.6, 11.65, 9.575, 2.45, 40.85, 99.6725, 235.089, 530.478, 47.775, 131.5, 0, 0, 2005, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(39, 'Araria', 0, 0, 0, 32.025, 170.05, 138.44, 323.575, 154.812, 218.3, 12.26, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(40, 'Arwal', 0, 0, 0, 0, 38.5333, 304.367, 331.667, 159.967, 186.167, 7.76667, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(41, 'Aurangabad', 0, 0, 1.38182, 3.15455, 51.8818, 239.573, 285.336, 197.009, 181.227, 8.50909, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(42, 'Banka', 0, 0, 0, 0, 99.775, 357.38, 270.29, 234.31, 394.78, 5.9, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(43, 'Begusarai', 0, 0, 0, 0, 32.544, 130.2, 353.84, 95.5133, 247.761, 27.9556, 11.8778, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(44, 'Bhagalpur', 0, 0, 0, 13.7636, 59.7455, 187.582, 285.427, 157.6, 426.945, 30.8818, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(45, 'Bhojpur', 0, 0, 0, 16.2571, 91.2857, 201.943, 238.33, 171.38, 178.72, 7.16, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(46, 'Buxar', 0, 0, 0, 8.53333, 21.9333, 51.3333, 250.167, 190.733, 175.233, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(47, 'Darbhanga', 0, 0, 0.166667, 28.8667, 68.5, 70.4167, 192.386, 81.4429, 201.386, 22.7875, 3.275, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(48, 'EastChamparan', 0, 0, 0, 17.6714, 117.713, 203.675, 214.65, 104.667, 225.804, 20.475, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(49, 'Gaya', 0, 0, 1.94, 7.42222, 49.3909, 341.544, 542.294, 77.7063, 181.806, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(50, 'Gopalganj', 0, 0, 0, 23.89, 94.72, 237.18, 270.66, 185.05, 278.53, 21.27, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(51, 'Jehanabad', 0, 0, 3.075, 8.45, 25.875, 227.55, 226.475, 116.575, 228.5, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(52, 'Jamui ', 0, 0, 0, 0, 0, 308.633, 352.317, 241.15, 359.467, 8.66667, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(53, 'Kaimur', 0, 0, 0, 22.0111, 83.65, 201.083, 919.349, 262.593, 202.041, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(54, 'Katihar', 0, 0, 2.66, 13.71, 78.81, 152.3, 260.26, 163.25, 278.79, 36.67, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(55, 'Khagaria', 0, 11.6833, 0.466667, 15.1, 66.9, 157.167, 265.9, 158.917, 349.917, 30.45, 4.26667, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(56, 'Kishanganj', 0, 0, 0, 10.8, 105.95, 195.367, 307.8, 84.3443, 139.314, 52.0857, 0, 0.714286, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(57, 'Lakhisarai', 0, 0, 0, 0, 43.2, 248.6, 307.775, 226.8, 388.7, 31, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(58, 'Madhepura', 0, 0, 2.5, 36.4, 122.65, 144.975, 418.025, 114.967, 187.483, 31.64, 7.92, 3.48, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(59, 'Madhubani', 0, 0, 0, 15.05, 8.58333, 41.0538, 203.454, 85.2846, 288.215, 3.11538, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(60, 'Munger', 0, 0, 9.5, 7.06667, 37.2167, 119.967, 127.633, 79.05, 110.6, 27.3333, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(61, 'Muzaffarpur', 0, 0, 1.02857, 6.8, 61.93, 199.6, 289.04, 114.222, 298.256, 23.9778, 3.73333, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(62, 'Nalanda', 0, 0, 0, 7.16667, 16.6333, 232.833, 357.1, 96.99, 228.067, 3.46667, 2.95556, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(63, 'Nawada', 0, 0, 12.85, 7.6375, 25.15, 306.013, 333.489, 215.978, 314, 16.7778, 0.877778, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(64, 'Patna', 0, 0, 0, 7.47273, 34.8727, 281.317, 353.8, 146.108, 187.045, 3.09091, 6.86667, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(65, 'Purniya', 0, 0, 1.575, 24.42, 100.567, 153.867, 313.16, 165.143, 392.18, 14.425, 1.48, 2.38, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(66, 'Rohtas', 0, 0, 0, 3.3875, 69.1222, 213.933, 136.011, 230.1, 138.12, 0.3, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(67, 'Saharsa', 0, 0, 0, 3.74286, 10.4, 21.3429, 176.314, 99.7143, 257.557, 27.4, 15.4286, 3.34286, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(68, 'Samastipur', 0, 0, 0, 5.23333, 38.9417, 139.992, 368.677, 151.695, 275.758, 35.6231, 4.53846, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(69, 'Saran', 0, 0, 0, 13.2909, 35.8636, 239.018, 254.391, 136.855, 252.345, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(70, 'Shekhpura', 0, 0, 0, 0, 47.4, 86.6, 496.8, 197.1, 233.7, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(71, 'Sheohar', 0, 0, 0, 0, 27.45, 147, 193, 120.167, 21.7667, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(72, 'Sitamadhi', 0, 0, 0, 5.46, 63.25, 43.06, 180.544, 49.83, 145.375, 6.43, 0, 8.97, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(73, 'Siwan', 0, 0, 0, 14.3231, 51.7333, 53, 234.155, 54.5583, 143.108, 0, 0, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(74, 'Supaul', 0, 0, 0, 34.4, 135.4, 75.4667, 211.975, 118.186, 175.06, 42, 30.9333, 6.36667, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(75, 'Vaishali', 0, 0, 0, 23.34, 41.29, 223.97, 181.656, 245.955, 33.41, 5.24, 1, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(76, 'WestChamparan', 0, 0, 0, 65.0143, 95.8143, 149.6, 277.936, 171.057, 212.014, 26.6643, 4.24375, 0, 2006, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(77, 'Arwal', 0, 40.7333, 6.13333, 6.33333, 42.3333, 67.5, 669.733, 245.033, 212.2, 36, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(78, 'Aurangabad', 0, 47.1, 14.4182, 7.20909, 28.1091, 38.5636, 421.16, 215.882, 235.191, 59.8636, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(79, 'Bhojpur', 0, 32.14, 41.77, 6.82, 42.16, 61.04, 595.742, 254.945, 243.836, 59.0727, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(80, 'Buxar', 0, 2.6, 2.32, 0, 1.04, 28.4, 345.7, 178.94, 176.94, 5.24, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(81, 'Darbhanga', 0, 13.4222, 2.88889, 10.8889, 45.2778, 81.3289, 485.355, 354.7, 398.472, 19.6333, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(82, 'East champaran', 0, 5.53333, 24.5429, 13.3167, 26.325, 237.038, 762.493, 580.553, 316.847, 10.6267, 1.22, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(83, 'Gaya', 0, 32.6733, 12.08, 0, 27.4867, 23.32, 450.738, 241.467, 307.108, 69.2083, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(84, 'Gopalganj', 0, 18.22, 38.38, 2.56, 43.38, 115.25, 629.956, 273.7, 363.69, 37.4, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(85, 'Jehanabad', 0, 31.575, 9.025, 12.15, 35.125, 65.5, 533.6, 213.34, 335.65, 35.15, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(86, 'Kaimur', 0, 137.868, 0, 0.3, 53.87, 65.4, 290.7, 177.56, 154.112, 7.6, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(87, 'Madhubani', 0, 7.98333, 0, 3.66667, 21.3778, 69.0118, 481.212, 0, 0, 0, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(88, 'Muzaffarpur', 0, 23.9091, 18.4545, 8.275, 78.875, 154.125, 588.583, 563.733, 683.792, 105.567, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(89, 'Nalanda', 0, 24.5333, 9.15556, 5.58889, 45.5778, 67.2444, 526.9, 224.136, 210.444, 32.2, 0, 8.06667, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(90, 'Nawada', 0, 32.88, 11.62, 19.36, 33.43, 59.46, 417.13, 157.93, 159.51, 52.52, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(91, 'Patna', 0, 25.725, 26.8923, 6.71429, 40.6786, 53.9643, 630.658, 348.883, 306.325, 24, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(92, 'Rohtas', 0, 40.6182, 10.8182, 0, 0, 31.3182, 316.936, 285.236, 203.684, 36.2273, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(93, 'Samastipur', 0, 18.8769, 19.8077, 0.461538, 67.7538, 134.325, 601.405, 365.688, 631.663, 56.5667, 3.5, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(94, 'Saran', 0, 18.93, 28.53, 7.29, 41.62, 108.7, 668.367, 359.711, 255, 11.4, 5.18182, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(95, 'Sheohar', 0, 1.4, 1.33333, 5.06667, 6.33333, 67.6667, 432.6, 277.133, 240.467, 9.46667, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(96, 'Sitamadhi', 1.01538, 0, 0, 0, 0, 192.677, 651.272, 553.071, 333.223, 0, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(97, 'Siwan', 0, 20.8143, 37.8167, 0, 12.1429, 120.322, 371.082, 279.162, 366.8, 2.50909, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(98, 'Vaishali', 0, 23.4, 42.4727, 10.3455, 26.0091, 123.591, 572.155, 368.245, 539.564, 38.2909, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(99, 'WestChamparan', 0, 44.7941, 38.5118, 1.72941, 37.4529, 157.635, 858.188, 493.1, 397.888, 44.3706, 0, 0, 2007, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(100, 'Araria', 0.542857, 5.48571, 13.5143, 15.8857, 151.086, 306.886, 450.086, 519.157, 206.514, 33.3143, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(101, 'Arwal', 49.9667, 10.6, 0, 21.4, 40.3333, 369.6, 455.567, 371, 55.0333, 1.73333, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(102, 'Aurangabad', 78.9818, 7.29091, 0, 11.8727, 42.6909, 0, 352.364, 203.045, 14.4909, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(103, 'Banka', 40.72, 0, 0, 11.46, 18.1, 190.72, 260.49, 186.56, 198.433, 33.7444, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(104, 'Begusarai', 2.36364, 0, 0, 0, 0, 300.487, 341.49, 257.61, 168.229, 21.92, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(105, 'Bhagalpur', 27.1273, 0, 0, 1.05455, 39.1909, 241.609, 198.227, 185.464, 113.573, 28.8182, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(106, 'Bhojpur', 45.7273, 14.4364, 0, 15.3636, 50.5636, 372.582, 428.558, 276.389, 108.517, 4.63333, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(107, 'Buxar', 27.25, 0, 0, 0.0833333, 48.95, 503.217, 356.457, 364.729, 25.5143, 12.7833, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(108, 'Darbhanga', 0, 0, 0, 0, 33.5875, 74.9125, 314.273, 186.645, 56.6917, 15.875, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(109, 'EastChamparan', 0.171429, 6.31429, 1.51429, 17.1429, 71.5, 362.357, 405.157, 262.68, 155.544, 31.47, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(110, 'Gaya', 78.8308, 20.5615, 10.6083, 7.45385, 19.8308, 327.192, 266.923, 193.064, 36.18, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(111, 'Gopalganj', 0, 0, 0, 7.1, 44.6556, 346.873, 524.967, 348.713, 92.3333, 17.7333, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(112, 'Jehanabad', 62.3, 4.3, 0, 10.05, 14.9, 291.067, 382.375, 303.4, 87.5, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(113, 'Jamui ', 0, 0, 0, 0, 44.4222, 0, 0, 0, 0, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(114, 'Kaimur', 0.566667, 0, 0, 0, 1.53333, 300.18, 378.32, 182.6, 37.9, 0.6, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(115, 'Katihar', 18.7333, 0, 0, 18.2, 75.7222, 200.044, 271.889, 333.133, 142.211, 12.9333, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(116, 'Khagaria', 0, 0, 0, 6.8, 31.7667, 260.65, 232.35, 316.05, 58.8333, 31.6, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(117, 'Kishanganj', 10.2143, 16.5429, 27.2143, 31.8857, 129.371, 394.229, 583.025, 738.517, 270.514, 12.6286, 0, 0.457143, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(118, 'Lakhisarai', 27, 0, 0, 0, 62.8667, 258.367, 499.133, 245.4, 181.567, 7.475, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(119, 'Madhepura', 8.6, 7.86667, 0.0833333, 10.0667, 29.45, 219.567, 185.2, 111.688, 16.1111, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(120, 'Madhubani', 0, 0, 0, 0, 0, 47.4667, 702.58, 173.277, 121.431, 74.7923, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(121, 'Munger', 33.7167, 0, 0, 0, 53.1833, 328.417, 437.775, 206.317, 159.417, 18.1667, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(122, 'Muzaffarpur', 8.01667, 6.19167, 0.0833333, 10.275, 40.5333, 358.792, 493.392, 227.192, 150.65, 36.7667, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(123, 'Nalanda', 57.2, 3, 0, 0, 8.075, 116.059, 474.087, 241.2, 119.738, 6.175, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(124, 'Nawada', 59.5375, 1.7, 0, 0, 26.8125, 222.15, 518.017, 259, 73.8429, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(125, 'Patna', 54.0154, 6.23636, 0, 11.025, 18.15, 297.908, 919.277, 224.436, 121.246, 98.9675, 0.733333, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(126, 'Purnia', 17.3429, 6.12857, 7.54286, 13.3375, 97.7, 184.075, 413.404, 397.12, 191.062, 20.92, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(127, 'Rohtas', 44.27, 16.6875, 0.8, 11.325, 34.9143, 285.133, 374.35, 242.1, 31.7, 3.975, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(128, 'Saharsa', 9.33333, 23.1333, 57.6, 37, 75.8, 93.1667, 148.867, 162.917, 47.6667, 3, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(129, 'Samastipur', 14.6308, 3.49231, 0, 6.19231, 7.43077, 203.423, 425.7, 134.417, 112.657, 46.6286, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(130, 'Saran', 14.1333, 6.23333, 0, 22.1, 40.6, 413.222, 492.289, 350.811, 113.589, 1.88889, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(131, 'Shekhpura', 68, 0, 0, 3.2, 8.85, 306.8, 338.1, 120.7, 87.3, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(132, 'Sheohar', 0, 0, 0, 0, 113, 111.9, 397.85, 210.23, 260.2, 127.6, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(133, 'Sitamarhi', 0, 1.25385, 0, 0, 6.44615, 70.3238, 367.582, 247.908, 62.0623, 4.08462, 1.46154, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(134, 'Siwan', 0, 0, 0, 0, 0, 411.614, 666.622, 302.229, 131.986, 0, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(135, 'Supaul', 0, 18, 11.0667, 16.6667, 181.067, 180.467, 293.433, 98.7, 159.833, 53.9667, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(136, 'Vaishali', 12.8, 0.909091, 0, 0, 23.2333, 335.15, 628.32, 295.771, 155.233, 27.68, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(137, 'WestChamparan', 0, 0, 5.78824, 0.376471, 104.965, 344.506, 516.088, 368.119, 162.647, 15.7467, 0, 0, 2008, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(138, 'Araria', 0, 0, 0, 17.6714, 224.357, 142.257, 358.729, 423.143, 70.5714, 78.0571, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(139, 'Arwal', 0, 0, 0, 0, 125.033, 67.8, 177.8, 292.167, 141.4, 35.2333, 5.76667, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(140, 'Aurangabad', 0, 0, 0, 0, 33.0364, 41.5273, 164.682, 310.73, 177.6, 21, 3.31, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(141, 'Banka', 0, 0, 0, 0, 65.03, 29.19, 171.27, 243.71, 192.94, 98.34, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(142, 'Begusarai', 0, 0, 0, 0, 0, 0, 0, 139.418, 70.6727, 68.2, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(143, 'Bhagalpur', 0, 0.54, 0, 0, 155.78, 83.09, 192, 342.38, 155.96, 113.47, 0.27, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(144, 'Bhojpur', 0, 0, 0, 0, 58.8333, 44.65, 142.4, 269.367, 136.483, 35.0833, 8.61667, 3.06667, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(145, 'Biharsharif', 58.9778, 97.5333, 83.4889, 18, 0.0444444, 1.46667, 3.57778, 0, 19.4333, 60.0556, 95.7444, 54.7056, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(146, 'Buxar', 0, 0, 0, 0, 16.3, 19.6714, 134.014, 232.886, 93.7714, 22.7857, 8.62857, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(147, 'Darbhanga', 0, 1.66667, 0, 0, 30.8917, 63.85, 112.4, 246.783, 302.883, 188.083, 71.1583, 22.85, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(148, 'Gaya', 0, 0, 0, 0, 0, 12.1538, 51.8, 82.5154, 295.546, 262.477, 70.9286, 20.6417, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(149, 'Gopalganj', 0, 0, 0, 0, 87.6, 41.0125, 205.775, 372.825, 100.175, 165.25, 0, 0.9, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(150, 'Jehanabad', 0, 0, 0, 0, 50.8, 71.7, 136.8, 162.9, 141.95, 30.75, 30.75, 1.5, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(151, 'Jamui ', 0, 0, 0, 0.32, 0.56, 0, 9.49, 70.12, 28.61, 86.34, 127.99, 127.02, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(152, 'Kaimur', 153.1, 67.7455, 14.5818, 4.24545, 0, 0, 5.41818, 0, 10.1273, 6.40909, 94.9, 177.718, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(153, 'Katihar', 0, 1.11111, 2.14444, 4.11111, 197.94, 36.67, 206.127, 329.1, 54.3091, 198.145, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(154, 'Khagaria', 0, 0, 0, 0, 0, 3.66667, 8.83333, 88.5667, 143.9, 249.45, 154.317, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(155, 'Kishanganj', 0, 0, 2.42857, 4.25714, 103, 151.6, 441.029, 506.086, 56.7429, 210.957, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(156, 'Lakhisarai', 74.35, 231.325, 10.225, 67.075, 31.15, 0, 3.15, 0, 2.95, 0, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(157, 'Madhepura', 0, 0, 0, 0, 0.555556, 7.45556, 130.736, 84.4444, 93.3222, 85.2222, 20.7333, 16.4556, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(158, 'Madhubani', 0, 0, 0, 0, 61.1762, 41.5905, 282.505, 308.352, 71.5524, 22.7238, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(159, 'Munger', 0, 0, 0, 0, 90.8833, 81, 309.533, 337.367, 144.417, 69.65, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(160, 'Muzaffarpur', 0, 0.4, 0.542857, 0.142857, 115.787, 32.8818, 169.29, 249.22, 167, 0, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(161, 'Nalanda', 0, 0, 0, 0, 67.45, 68.2, 144.938, 131.562, 92.175, 37.5, 3.0875, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(162, 'Nawada', 7.31, 0, 0, 0, 65.52, 187.93, 94.1, 0.5, 10.72, 0, 0, 63.42, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(163, 'Patna', 0, 0, 0, 0, 61.1909, 54.4909, 156.818, 241.591, 159.073, 55.4364, 1.41818, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(164, 'Purnia', 50.8545, 64.5545, 120.118, 53.0727, 10.7364, 14.2909, 14.5429, 1.53333, 43.0727, 47.9444, 42.5333, 119.3, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(165, 'EastChamparan', 0, 0, 0, 0, 99.6875, 65.8786, 310.592, 338.169, 78.6846, 23.0462, 0, 0.471429, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(166, 'Rohtas', 109.278, 66.2182, 41.7455, 26.8545, 0, 0, 7.95455, 15.8636, 133.173, 115.4, 166, 352.209, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(167, 'Saharsa', 212.757, 44.2857, 186.257, 41.6857, 0, 0, 29.2857, 1.74286, 0.0857143, 0, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(168, 'Samastipur', 0.833333, 26.2583, 112.605, 134.55, 127.63, 80.65, 28.2917, 0.923077, 3.07692, 1.38462, 21.16, 30.4, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(169, 'Shekhpura', 179.233, 171.843, 192.933, 232.583, 135.96, 165.9, 91.3, 75.6833, 9.31667, 0, 2.95, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(170, 'Sheohar', 0, 0, 0, 0, 154.2, 75.2, 228.85, 251.333, 0, 0, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(171, 'Sitamarhi', 0, 0, 0, 0, 0, 68.5, 199.938, 574.908, 61.2, 8.37692, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(172, 'Siwan', 0, 33.4611, 108.5, 209.244, 30.6556, 0, 0.288889, 37.9667, 66.7639, 0, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(173, 'Supaul', 0, 0, 0, 0, 0, 0, 29.3714, 1.34286, 0, 0, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(174, 'Vaishali', 46.9909, 16.3364, 8.32727, 51.1818, 74.1945, 85.3909, 45.5218, 22.1818, 52.2818, 19.7818, 0, 0, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(175, 'WestChamparan', 0, 0, 0, 0, 90.1647, 134.206, 253.024, 366.229, 76.1294, 20.2706, 0, 1.83529, 2009, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(176, 'Araria', 0, 0, 0, 10.4857, 96.5714, 252.625, 450.9, 228.578, 164.556, 1.95556, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(177, 'Arwal', 0, 4.3, 0, 0, 30.3, 8.66667, 147.667, 168.833, 111.033, 80.2333, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(178, 'Aurangabad', 0, 0.545455, 0, 0, 3.69091, 13.5, 112.682, 181.673, 105.836, 29.3727, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(179, 'Banka', 0, 1.64, 5.76, 0.4, 30.52, 113.556, 155.4, 215.61, 123.74, 13.24, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(180, 'Begusarai', 0, 0, 0, 15.6222, 72.8222, 0, 0, 140.07, 0, 41.8, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(181, 'Bhagalpur', 0, 0, 2.26, 7.67727, 48.4, 99.7455, 155.091, 106.709, 107.06, 21.9545, 1.13636, 0.0909091, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(182, 'Bhojpur', 0.25, 0.75, 0, 0, 3.96667, 44.7, 214.275, 145.208, 119.725, 53.8667, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(183, 'Buxar', 0, 0, 0, 0, 7.3, 13.1, 184.786, 162.757, 173.8, 37.0286, 0.285714, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(184, 'Darbhanga', 0, 0, 0, 0, 54.3333, 49, 225.56, 150.48, 124.52, 10.87, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(185, 'Gaya', 0, 0, 0, 0, 19.0462, 37.9231, 116.585, 105.657, 37.2286, 28.8071, 14.4312, 7.37143, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(186, 'Gopalganj', 0, 0, 0, 0, 41.92, 49.55, 198.59, 155.56, 172.63, 54.88, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(187, 'Jehanabad', 0, 0, 0, 0, 16.16, 31.12, 141.175, 228.967, 31.675, 46.25, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(188, 'Jamui ', 0, 0, 0, 0, 15.7143, 61.9, 114.9, 128.771, 108.11, 17.26, 2, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(189, 'Kaimur', 0, 6.35, 0, 0, 32.8875, 15.0875, 238.562, 231.075, 124.75, 11.9625, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(190, 'Katihar', 0, 0, 0, 11.9273, 40.3182, 127, 185.44, 120.63, 159.19, 29.57, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(191, 'Khagaria', 0, 0, 0, 0.971429, 10.9429, 11.5429, 3.71429, 0, 0, 0, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(192, 'Kishanganj', 0, 0, 0, 30.8571, 125.857, 349.543, 696.951, 444.429, 310.271, 27.2857, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(193, 'Lakhisarai', 0, 0, 0, 0, 26.9429, 180.708, 113.45, 134.5, 113.4, 26.5, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(194, 'Madhepura', 0, 0, 0, 63.2, 80.4, 64.2222, 239.1, 128.7, 200.322, 7.55556, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(195, 'Madhubani', 0, 0, 0, 0, 16.7905, 122.165, 211.848, 129.25, 83.55, 7.78571, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(196, 'Munger', 0, 0, 0, 0, 26.1167, 69.9, 157.3, 150.117, 124.433, 19.9667, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(197, 'Muzaffarpur', 0, 0, 0, 0, 39.71, 91.2, 229.97, 181.008, 100, 29.2714, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(198, 'Nalanda', 0, 0, 0, 0, 15.575, 51.275, 133.438, 211.1, 134.542, 59.1008, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(199, 'Nawada', 0, 0, 0, 0, 17.37, 47.2, 138.52, 100.9, 78.35, 89.39, 4.2, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(200, 'Patna', 0, 0, 0, 0, 26.6818, 33.8455, 143.52, 149.255, 68.4727, 19.5, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(201, 'Purnia', 0, 0, 0, 15.2667, 71.4111, 137.044, 336.167, 136.478, 142.489, 142.489, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(202, 'EastChamparan', 0, 0, 0, 46.6214, 54.3429, 147.75, 123.46, 19.7867, 1.13333, 58.7267, 116.32, 51.1533, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(203, 'Rohtas', 0, 5.13333, 0, 0, 36.65, 40.3429, 183.9, 93.4, 1.96, 0, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(204, 'Saharsa', 0, 0, 0, 10.88, 42.08, 30.74, 131.883, 76.6833, 109.977, 3.96667, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(205, 'Samastipur', 0, 0.615385, 0, 8.62308, 69.4923, 78.25, 166.106, 164.714, 0, 57.7357, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(206, 'Saran', 0, 1.11111, 0, 0, 8.02222, 26.8889, 165.153, 98.4542, 164.167, 59.1533, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(207, 'Shekhpura', 0, 1.31667, 0, 0, 78.2333, 167.067, 188.133, 136.8, 128.667, 61.1333, 0, 4.4, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(208, 'Sheohar', 4.3, 0, 0, 0, 4.3, 133.5, 99.6, 239.2, 39.2, 46.9, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(209, 'Siwan', 0, 0, 0, 0, 0, 66.5938, 292.375, 187.993, 205.844, 47.7125, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(210, 'Supaul', 0, 0, 0, 10.0667, 19.3, 26.4667, 332.7, 159.462, 128.812, 0, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(211, 'Vaishali', 0, 0, 0, 0, 18.6778, 63.5222, 157.933, 143.433, 92.9778, 65.8444, 0, 1.86667, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(212, 'WestChamparan', 0, 1.48, 0, 3.02857, 87.8286, 72.1714, 292.889, 392.457, 208.729, 63.6286, 0, 0, 2010, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(213, 'Araria', 0, 0, 0, 6.12222, 10.9556, 221.989, 537.95, 395.111, 355.422, 54.1333, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(214, 'Arwal', 0, 0.08, 11.66, 1.6, 19.26, 187.96, 115.54, 389.4, 283.92, 1.6, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(215, 'Begusarai', 0, 0, 4.07778, 4.18182, 52.0692, 228.4, 243.681, 189.172, 110.222, 32.0222, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(216, 'Bhagalpur', 0.25, 1.9125, 4, 28.65, 77.7375, 287.987, 139.631, 252.431, 108.35, 13.8, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(217, 'Bhojpur', 0, 1.07143, 1.28571, 0, 30.3429, 198.521, 114.669, 392.086, 232.829, 9.47857, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(218, 'Buxar', 0.818182, 0, 5.89, 0, 39.9455, 291.164, 129.009, 304.191, 243.945, 2.38182, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(219, 'Darbhanga', 0, 9.15833, 4.29167, 14.7667, 76.85, 156.76, 282.339, 215.689, 218.572, 6.95556, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(220, 'Gaya', 4.2375, 4.15, 1.4875, 8.00625, 148.15, 7.34375, 104.85, 232.356, 163.7, 3.6, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(221, 'Gopalganj', 0.728571, 8.88571, 0.442857, 12.5071, 24.05, 214.371, 257.014, 297.293, 0, 0, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(222, 'Jamui', 0, 1.82, 3.96, 42.08, 95.7, 242.38, 99.6, 310.21, 156.33, 12.73, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(223, 'Jehanabad', 0.828571, 1.11429, 4.37143, 5.82857, 10.6143, 309.714, 150.171, 413.057, 328.814, 3.31429, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(224, 'Kaimur', 0.9, 2.24545, 0.136364, 2.69091, 10.7727, 202.255, 127.591, 340.445, 304.145, 0, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(225, 'Katihar', 0, 0, 1.41875, 15.9, 140.273, 313.562, 298.788, 233.512, 228.194, 4.95625, 2.89375, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(226, 'Khagaria', 0, 0.6, 7.04286, 4.58571, 30.1857, 263.343, 220.614, 243.286, 103.229, 14.4286, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(227, 'Kisangunj', 0, 5.57143, 35.5, 73.3714, 149.557, 239.5, 751.843, 334.171, 474.114, 0, 5.57143, 0.285714, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(228, 'Lakhisarai', 0, 0, 0, 0, 34.0714, 165.029, 229.4, 245.386, 194.071, 17, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(229, 'Munger', 0, 0, 12.4111, 6.8, 22.2, 125.422, 128.522, 237.178, 166.467, 25.6222, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(230, 'Nalanda', 0, 0, 1.52, 7.9, 24.805, 237.6, 165.68, 335.71, 328.045, 4.4, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(231, 'Nawada', 0, 0, 0, 0, 0, 0, 60.2857, 284.814, 332.343, 1.24286, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(232, 'Patna', 0, 0, 0, 3.86667, 17.8875, 165.458, 142.679, 261.075, 266.546, 3.46667, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(233, 'Purnia', 0, 0, 0, 0, 0, 0, 0, 234.866, 362.879, 2.82857, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(234, 'Saharsa', 0, 2.38333, 2.8, 6.46667, 44.3333, 156.667, 233.751, 171.1, 109.47, 1.98, 0.763636, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(235, 'Samastipur', 0, 2.81905, 9.79048, 6.58095, 24.2857, 190.929, 207.119, 280.219, 162.729, 33.781, 4.20476, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(236, 'Sheikhpura', 1.3, 0.883333, 2.7, 0, 29.8833, 170.467, 125.35, 163.883, 152.833, 4.83333, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(237, 'Sheohar', 1.6, 3.72, 0.94, 0.7, 24.76, 283.12, 322.76, 165.72, 430.6, 1.32, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(238, 'Siwan', 0, 0, 0, 0, 30.46, 188.1, 196.82, 249.785, 157.065, 0, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(239, 'Vaishali', 0, 1.05625, 7.70625, 5.8, 30.125, 151.969, 159.575, 158.706, 255.994, 8.8125, 0, 0, 2011, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(240, 'Patna', 7.06957, 0, 2.84348, 1.04348, 0, 9.88696, 305.052, 213.93, 220.201, 50.5, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(241, 'Nalanda', 15.94, 0, 4.82, 25.68, 2.77, 51.68, 336.66, 269.34, 186.8, 59.2, 4.22, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(242, 'Bhojpur', 0, 0, 0.392857, 0, 0, 50.8714, 203.221, 206.092, 153.586, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(243, 'Buxar', 10.0636, 3.6, 5.55455, 10.6818, 0, 66.23, 321.027, 147.3, 125.3, 26.2727, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(244, 'Rohtas', 0.677778, 0, 0.526316, 4.18947, 0, 55.0426, 112.668, 229.273, 0, 11.673, 0.811111, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(245, 'Kaimur', 8.91818, 1.50909, 4.43636, 14.9091, 0, 54.8455, 303.582, 265.027, 207.745, 6.01818, 0.854545, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(246, 'Gaya', 12.5857, 0.25, 3.16, 5.52857, 5.39048, 57.0961, 177.453, 286.257, 130.53, 33.2, 10.4126, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(247, 'Jehanabad', 14.7714, 0.642857, 3.15714, 29.4286, 7.4, 37.2857, 260.257, 262.829, 183.543, 77.5857, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(248, 'Arwal', 16.8, 0.2, 6, 22.16, 1.7, 70.58, 234.66, 254.6, 146.18, 17.64, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(249, 'Nawada', 21.3692, 2.78, 3.44286, 14.9571, 2.52143, 31.9769, 222.683, 197.598, 134.845, 54.8, 30.9667, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(250, 'Aurangabad', 4.07273, 0, 3.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(251, 'Saran', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(252, 'Siwan', 20.0118, 0, 11.315, 6.96, 1.04, 28.92, 230.86, 192.3, 315.01, 2.975, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(253, 'Gopalgunj', 18.7643, 0, 5.64286, 1.15714, 1.2, 31.2143, 358.329, 203.693, 303.907, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(254, 'Muzaffarpur', 21.0125, 0, 13.225, 7.175, 22.65, 291.5, 291.875, 254.575, 264.837, 42.55, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(255, 'EastChamparan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(256, 'WestChaparan', 27.06, 21.8846, 4.30556, 14.0333, 33.8611, 77.8167, 385.159, 173.367, 318.983, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(257, 'Sitamarhi', 9.20909, 0, 1.22353, 9.48824, 25.5471, 251.559, 251.559, 261.135, 222.865, 12.4706, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(258, 'Sheohar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(259, 'Vaishali', 2.24, 0, 2.96875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(260, 'Darbhanga', 10.5133, 0, 3.42778, 14.8056, 15.6389, 25.5722, 306.883, 0, 179.789, 27.2706, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(261, 'Madhubani', 6.95, 0.4, 0.495238, 18.8, 16.7381, 110.029, 209.252, 122.824, 103.638, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(262, 'Samastipur', 15.7786, 0, 8.33158, 3.82, 6.025, 35.9947, 267.3, 153.635, 156.185, 44.43, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(263, 'Begusarai', 12.4643, 0, 4.73333, 8.27222, 0.888889, 27.0056, 136.306, 108.217, 170.217, 58.8722, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(264, 'Munger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:35', '2018-08-06 11:10:35'),
(265, 'Lakhisarai', 10.5857, 0, 6.18571, 6.84286, 3.17143, 81.9286, 174.471, 137.586, 199.143, 104.657, 0.6, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(266, 'Sheikhpura', 4.66, 0, 0, 0, 0, 0, 229.14, 164.62, 259.48, 98.24, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(267, 'Jamui', 15, 0, 0, 29.35, 0, 61.04, 0, 100.61, 171.55, 72.92, 51.79, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(268, 'Bhagalpur', 11.1125, 0, 5.60625, 7.99375, 16.3062, 33.375, 206.906, 140.05, 139.75, 41.1125, 6.7125, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(269, 'Banka', 0, 0, 1.53636, 27.9636, 6.98182, 55.4182, 277.155, 142.582, 160.2, 31.3818, 49.5455, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(270, 'Saharsa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(271, 'Supaul', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(272, 'Madhepura', 8.86154, 0, 5.53077, 33.3923, 32.6154, 79.1846, 201.296, 179.121, 127.242, 32.9846, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(273, 'Purnia', 0, 0, 0, 41.5286, 23.1286, 57.3571, 343.74, 101.493, 0, 55.8571, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(274, 'Kishangunj', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(275, 'Araria', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(276, 'Kathihar', 10.7769, 0, 6.43125, 52.2625, 20.3563, 92.5188, 317.25, 99.4625, 195.4, 94.2375, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(277, 'Khagaria', 13.7143, 0, 5.04286, 6.84286, 0, 32.1667, 186.833, 180.5, 234.5, 61.4143, 0, 0, 2012, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(278, 'Araria', 12.3889, 11.2889, 2.8, 15.2167, 124.167, 287.267, 563.924, 316.356, 147.546, 101.811, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(279, 'Arwal', 0, 0, 0, 0, 15.36, 111.54, 35.42, 60.02, 41.6, 126.38, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(280, 'Aurangabad', 0, 32.7182, 0, 8.98182, 1.18182, 106.191, 120.582, 269.073, 124.236, 114.1, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(281, 'Banka', 0, 0, 0, 0, 67.7636, 43.2, 133.818, 234.573, 138.418, 183.564, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(282, 'Begusarai', 0, 5.86111, 0, 28.4, 50.4944, 109.217, 145.639, 116.933, 98.0513, 126.157, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(283, 'Bhagalpur', 0, 6.25625, 0, 39.3812, 80.925, 129.481, 183.637, 179.34, 146.76, 258.507, 3.36, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(284, 'Bhojpur', 0, 6.56429, 0, 0, 26.8143, 141.414, 90.0786, 165.079, 97.9, 171.114, 0.285714, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(285, 'Buxar', 5.21818, 47.4364, 1.25455, 29.7818, 0, 134.136, 74.4691, 133.136, 124.491, 174.527, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(286, 'Darbhanga', 0.964706, 0, 0, 0, 27.2444, 180.039, 125.317, 36.3889, 93.0333, 162.287, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(287, 'EastChamparan', 5.57778, 15.2926, 0, 22.2926, 119.371, 161.407, 84.2695, 87.2889, 52.2778, 162.226, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(288, 'Gaya', 0, 4.80435, 0, 8.46087, 31.6875, 36.5625, 59.5042, 177.121, 114.15, 125.554, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(289, 'Gopalgunj', 6.69286, 39.0214, 0, 21.6429, 69.7357, 235.057, 132.836, 119.107, 90.7571, 225.35, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(290, 'Jamui', 0, 3.83, 0, 3.28, 84.11, 98.33, 98.33, 143.81, 67.6856, 171.63, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(291, 'Jehanabad', 0, 21.0857, 0.714286, 19.5429, 88.7143, 55.9857, 95.325, 69.3286, 81.9833, 137.229, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(292, 'Kaimur', 2.74545, 67.7818, 4.33636, 4.12727, 2.56364, 61.7818, 191.491, 238.836, 165.036, 129.909, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(293, 'Kathihar', 0, 10.8313, 0, 43.9562, 81.3688, 324.638, 331.431, 112.571, 110.175, 349.388, 0.225, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(294, 'Khagaria', 0, 8.27143, 0, 38.5, 54.5429, 146.567, 175.543, 177.671, 115.071, 130.743, 12.8286, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(295, 'Kishangunj', 6.74286, 5.57143, 0, 56.4286, 130.457, 446, 275.257, 199.136, 156.557, 133.943, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(296, 'Lakhisarai', 0, 0, 0, 0, 30.4286, 257.1, 144.057, 143.957, 93.7857, 121.957, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(297, 'Madhepura', 0, 0, 0, 0, 72.5, 172.1, 170.989, 140.307, 174.4, 243.538, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(298, 'Madhubani', 13.0571, 20.0333, 0.247619, 35.5476, 98.4429, 238.562, 0, 18.1905, 111.738, 159.552, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(299, 'Munger', 0, 7.44444, 0, 13.1444, 45.9778, 135.722, 174.478, 228.033, 97.1111, 183.789, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(300, 'Muzaffarpur', 14.3938, 24.75, 0, 18.2563, 137.756, 167.887, 64, 37.3438, 104.812, 214.2, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(301, 'Nalanda', 0, 7.65, 0, 10.195, 90.785, 99, 100.885, 56.34, 108.67, 130.76, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(302, 'Nawada', 0, 2.4, 0, 2.29167, 73.2, 53.75, 69.0604, 171.336, 93.0714, 148.543, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(303, 'Patna', 0, 28.0773, 0, 0.858333, 61.4167, 111.658, 78.375, 144.703, 98.0743, 118.817, 0.8, 1.50909, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(304, 'Purnia', 0, 0, 0, 0, 84.2357, 268.443, 226.221, 172.15, 222.829, 127.354, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(305, 'Rohtas', 0, 48.8, 0, 0, 1.39474, 334.7, 129.463, 140.532, 78.2421, 127.474, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(306, 'Saharsa', 5.33636, 5.36364, 0, 67.5273, 74.0273, 190.173, 150.418, 136.082, 74.0727, 122.191, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(307, 'Samastipur', 3.42857, 18.2905, 0, 27.5143, 48.1955, 165.724, 104.148, 109.105, 112.214, 210.567, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(308, 'Saran', 9.96, 31.32, 0, 15.625, 106, 135.863, 70.9, 146.053, 90.5, 194.296, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(309, 'Sheikhpura', 0, 5.62, 0, 0, 64.9167, 113.4, 85.4, 133.733, 51.74, 125.833, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(310, 'Sheohar', 2.6, 35.86, 2.56, 0, 25.74, 197.94, 120.1, 156.2, 136.46, 216.16, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(311, 'Sitamarhi', 0, 0, 0, 0, 37.6941, 176.047, 76.1, 107.218, 95.7059, 137.376, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(312, 'Siwan', 1.915, 21.265, 0, 31.82, 42.69, 124.66, 103.3, 85.1475, 154.215, 268.18, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(313, 'Supaul', 0, 0, 0, 0, 24.4364, 276, 154.5, 194.364, 82.5727, 212.191, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(314, 'Vaishali', 0, 0, 0, 0, 25.1875, 92.6937, 0, 63.5625, 49.9214, 166.214, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(315, 'WestChamparan', 6.9, 25.0056, 0, 36.1333, 89.5778, 188.117, 234.4, 0, 108.528, 153.594, 0, 0, 2013, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(316, 'Araria', 0, 0, 40.8875, 75.125, 123.988, 163.044, 141.756, 315.633, 146.011, 5.75556, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(317, 'Arwal', 10.92, 0, 14.34, 14.84, 0, 177.135, 241.33, 211.54, 76.14, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(318, 'Aurangabad', 17.0818, 0, 13.9273, 42.2, 14.6727, 179.782, 382.789, 233.191, 71.9909, 2.67273, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(319, 'Banka', 21.3636, 0, 19.78, 56.6889, 17.9111, 132.267, 131.4, 261.818, 81.3182, 3.76364, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(320, 'Begusarai', 4.21111, 12.6833, 23.1395, 20.1333, 9.33889, 138.953, 146.533, 312.572, 130.133, 2.61176, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(321, 'Bhagalpur', 45.0875, 11.975, 42.2062, 86.0938, 51.575, 81.9151, 394.862, 335.594, 246.15, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(322, 'Bhojpur', 3.22857, 0, 18.4857, 29.4714, 12.3714, 119.779, 139, 246.914, 63.1571, 11.7429, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(323, 'Buxar', 23.8364, 0, 13.4273, 18.7182, 0, 204.785, 174.347, 217.327, 90.3818, 9.92727, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(324, 'Darbhanga', 0, 0, 47.5611, 74.75, 0, 67.8833, 155.006, 365.373, 125.406, 2.78889, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(325, 'EastChamparan', 8.02222, 0, 37.7778, 17.6481, 57.9211, 44.7568, 146.733, 479.956, 87.4074, 5.14074, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(326, 'Gaya', 15.425, 0, 4.35417, 26.65, 2, 169.887, 287.958, 165.867, 61.3208, 0.483333, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(327, 'Gopalgunj', 11.3143, 0, 46.0214, 53.9643, 24.7052, 63.5218, 160.655, 291.579, 40.5071, 23.9357, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(328, 'Jamui', 3.04, 0, 10.16, 12.81, 1.7, 119.92, 276.4, 243.67, 76.82, 0.12, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(329, 'Jehanabad', 5.14286, 0, 4.91429, 0, 0.142857, 135.005, 144, 170.829, 102.557, 0.314286, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(330, 'Kaimur', 18.6253, 0.145455, 12.5273, 27.7, 5.42727, 155.364, 338.336, 208.091, 47.4818, 14, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(331, 'Kathihar', 9.16875, 0, 17.775, 50.1312, 96.1625, 163.275, 265.319, 222.627, 107.45, 9.525, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(332, 'Khagaria', 15.0286, 16.5286, 16.6429, 58.7333, 36.5333, 126.229, 186.029, 417.043, 184.898, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(333, 'Kishangunj', 7.45714, 0, 28.4857, 66.1857, 253.843, 186.5, 355.9, 574.86, 180.743, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(334, 'Lakhisarai', 9.11429, 0, 29.1143, 20.1143, 18.4571, 141.714, 291.271, 237.014, 72.1429, 1.77143, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(335, 'Madhepura', 14.7154, 5.58462, 25.566, 59.475, 85.7333, 110.333, 179.333, 233.177, 157.715, 0.692308, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(336, 'Madhubani', 9.75238, 0, 16.7143, 42.6952, 34.2095, 64.1381, 33.0238, 261.629, 114.61, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(337, 'Munger', 10.9333, 9.95556, 23.1778, 42.5556, 17.6222, 140.622, 212.256, 386.378, 16.6222, 2.91111, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(338, 'Muzaffarpur', 6.1625, 0, 0.9625, 4.45333, 1.8125, 17.65, 130.062, 211.056, 22.9125, 1.2375, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(339, 'Nalanda', 8.95, 0, 17.775, 22.895, 2.74737, 127.895, 211.32, 208.46, 70.3426, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(340, 'Nawada', 9.14286, 0, 5.37143, 5.74286, 11.0286, 104.307, 222.049, 210.714, 58.9643, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(341, 'Patna', 0, 0, 9.05833, 6.14167, 0, 73.2762, 203.606, 124.133, 81.2858, 1.8, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(342, 'Purnia', 13.0286, 0, 27.1143, 21.4506, 66.4881, 142.179, 218.729, 198.614, 134, 4.35714, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(343, 'Rohtas', 8.90526, 0.368421, 9.15333, 35.3857, 35.3857, 115.532, 165.209, 106.189, 27.1105, 10.1842, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(344, 'Saharsa', 13.1464, 2.57, 29.6, 56.38, 48.38, 111.3, 206.42, 270.673, 191.64, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36');
INSERT INTO `annual_rainfalls` (`id`, `Districts`, `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November`, `December`, `Year`, `created_at`, `updated_at`) VALUES
(345, 'Samastipur', 10.205, 2.06842, 27.0889, 28.7611, 26.7571, 97.8, 44.4, 375.73, 0, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(346, 'Saran', 3.39, 0, 16.31, 0, 1.7, 57.085, 141.295, 220.2, 10.115, 5.67, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(347, 'Sheikhpura', 0, 0, 17.2667, 15.0167, 6.36667, 193.2, 286.633, 229.05, 56.9667, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(348, 'Sheohar', 22, 0, 61.35, 16.5, 15.5, 22.1933, 151.7, 404.96, 48.74, 28.72, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(349, 'Sitamarhi', 0.835294, 0, 25.4647, 31, 25.2533, 30.4114, 155.94, 242.541, 76.9706, 0, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(350, 'Siwan', 2.155, 0, 28.82, 75.0833, 0, 77.28, 203.321, 277.441, 17.61, 1.445, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(351, 'Supaul', 0, 0, 50.89, 3.79091, 39.7364, 104.209, 138.445, 207.645, 131.418, 16.6364, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(352, 'Vaishali', 4.55556, 0, 21.4417, 12.77, 3.72727, 46.8048, 181.722, 179.325, 56.325, 4.2375, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(353, 'WestChamparan', 8.62418, 3.92778, 53.7611, 31.5333, 43.4167, 77.4278, 195.433, 371.894, 96.85, 23.2889, 0, 0, 2015, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(354, 'Araria', 8.05556, 0, 21.2289, 0, 0, 0, 591.956, 111.047, 492.996, 81.1111, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(355, 'Arwal', 3.04, 0, 0, 0, 4.86, 108.44, 373.08, 263.2, 386.66, 97, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(356, 'Aurangabad', 12.5727, 0, 10.6, 0, 8.56364, 0, 393.5, 315.873, 399.918, 120.045, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(357, 'Banka', 12.2545, 0, 0, 0, 0, 0, 273.036, 204.436, 295.191, 45.0545, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(358, 'Begusarai', 5.37222, 0, 0, 0, 55.7339, 65.1611, 288.27, 87.4706, 392.794, 31.7667, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(359, 'Bhagalpur', 8.04667, 0, 0, 0.5, 109.181, 0, 378.906, 139.85, 347.031, 36.7, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(360, 'Bhojpur', 2.48571, 0, 4.55, 0, 39.2357, 0, 275.007, 139.471, 287.464, 44.2429, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(361, 'Buxar', 6.04545, 0, 12.9091, 0, 0, 5.85455, 332.073, 173.782, 238.545, 62.7818, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(362, 'Darbhanga', 0, 0, 2.48333, 10.7722, 97.7611, 24.7222, 304.183, 74.3444, 358.444, 46.4611, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(363, 'EastChamparan', 5.96296, 0.422222, 13.45, 10.2963, 101.659, 117.53, 265.689, 49.137, 346.989, 20.2139, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(364, 'Gaya', 19.6125, 0.375, 0, 0, 5.84583, 93.6125, 306.448, 271.438, 391.525, 84.7083, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(365, 'Gopalgunj', 0, 0, 0, 0, 0, 97.7714, 236.814, 61.5857, 313.814, 31.6571, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(366, 'Jamui', 18.34, 0, 0, 0, 0, 100.56, 298.53, 291.24, 335.74, 60.62, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(367, 'Jehanabad', 13.3714, 0, 3.88571, 0, 21.2429, 0, 289.371, 156.029, 365.443, 74.5714, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(368, 'Kaimur', 11.0364, 0, 10.9636, 0, 2.74545, 0, 339.955, 398.736, 279.327, 42.4545, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(369, 'Kathihar', 0, 0, 0, 17.9438, 15.8875, 11.3562, 354.032, 102.225, 281.706, 75.5, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(370, 'Khagaria', 4.21667, 14.3143, 0, 15.8571, 0, 0, 243.429, 96.1429, 288.571, 19.4857, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(371, 'Kishangunj', 4.8, 0, 0, 2.85714, 0, 0, 748.1, 174.457, 673.629, 124.8, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(372, 'Lakhisarai', 12.2286, 0, 4.85714, 0, 24.0571, 0, 333.886, 169.014, 387.629, 33.6857, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(373, 'Madhepura', 1.82308, 0, 0, 0, 0, 0, 339.877, 110.854, 370.249, 64.9769, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(374, 'Madhubani', 6.05238, 0, 6.1381, 0, 0, 8.92381, 298.743, 111.914, 329.8, 20.3619, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(375, 'Munger', 6.26667, 33.6222, 1.95556, 0, 48.8, 0, 301.289, 175.311, 337.122, 21.6444, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(376, 'Muzaffarpur', 0, 1.1625, 0, 1.6, 86.5062, 0, 227.25, 61.1, 228.587, 19.0375, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(377, 'Nalanda', 13.435, 0, 7.37, 0, 41.56, 0, 326.635, 186.41, 317.46, 72.05, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(378, 'Nawada', 20, 0, 3.97143, 0, 0, 0, 254.65, 205.536, 277.45, 70.6286, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(379, 'Patna', 3.46522, 0, 1.95652, 0, 59.2968, 62.3174, 251.672, 133.016, 355.057, 57.7643, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(380, 'Purnia', 0, 0, 10.1, 21.2571, 153.957, 0, 420.386, 118.743, 415.643, 51.7429, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(381, 'Rohtas', 0, 0, 2.37778, 0, 0, 0, 340.779, 266.839, 278.368, 65.1737, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(382, 'Saharsa', 0, 0, 0.24, 13.36, 97.46, 0, 341.291, 138.364, 525.382, 65.6545, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(383, 'Samastipur', 0.190476, 0, 0, 3.61, 3.61, 0, 363.6, 65.3, 346.88, 87.4, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(384, 'Saran', 0.43, 0, 0, 0, 42.2805, 0, 186.81, 88.43, 88.655, 35.72, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(385, 'Sheikhpura', 14.8667, 3.7, 0, 0, 0, 0, 285.317, 202.133, 352.8, 78.0667, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(386, 'Sheohar', 0, 5.25, 0, 0, 108.72, 0, 267.04, 105, 335, 0, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(387, 'Sitamarhi', 1.91765, 0, 0, 3.54118, 48.6, 0, 113.79, 87.1235, 281.318, 6.56471, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(388, 'Siwan', 1.215, 0, 0, 0, 20.69, 50.1284, 343.145, 110.125, 295.1, 39.07, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(389, 'Supaul', 0, 0, 24.8273, 29.4091, 109.864, 0, 108.882, 138.227, 436.991, 79.8273, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(390, 'Vaishali', 0.925, 0.3125, 0.2125, 0, 0, 43.2625, 253.025, 90.8933, 264.575, 57.775, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(391, 'WestChamparan', 0, 1.71111, 1.66667, 4.04444, 96.5111, 170.172, 415.128, 54.9778, 340.209, 2.74444, 0, 0, 2016, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(392, 'Patna', 0, 0, 5.2, 3.75556, 31.2967, 63.204, 290.925, 183.476, 83.0342, 15.2417, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(393, 'Nalanda', 0, 0, 2.1, 0, 23.555, 53.98, 323.6, 205.17, 71.12, 17.99, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(394, 'Bhojpur', 0, 0, 4.2, 5.74286, 29.0171, 51.5527, 337.757, 207.444, 130.693, 6.07857, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(395, 'Buxar', 0, 0, 1.3, 1.38182, 25.3273, 26.44, 332.973, 187.3, 108.8, 20.3818, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(396, 'Rohtas', 0, 0, 0, 0, 10.4545, 27.468, 451.76, 202.375, 57.3904, 4.18947, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(397, 'Kaimur', 0, 0, 1.4, 0, 1.4, 53.2364, 476.773, 227.078, 61.24, 0.272727, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(398, 'Gaya', 0, 0, 0.4, 0, 7.5, 45.375, 383.175, 256.275, 103.275, 9.6, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(399, 'Jehanabad', 0, 0, 0, 0, 11.2714, 92.5667, 278.357, 120.886, 125.8, 7.28571, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(400, 'Arwal', 0, 0, 6, 5.4, 11.8, 19.2, 281.913, 149.94, 113.8, 8.2, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(401, 'Nawada', 0, 0, 0, 0, 8.34286, 26.3357, 288.179, 194.511, 65.9857, 34.3929, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(402, 'Aurangabad', 0, 0, 0.854545, 2.84545, 13.5364, 37.0909, 423.891, 289.855, 100.445, 5.00909, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(403, 'Saran', 0, 0, 0, 0, 50.4003, 68.86, 372, 204.47, 71.24, 0, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(404, 'Siwan', 1.9, 0, 1.85, 11.2471, 64.01, 85.21, 311.371, 195.85, 103.765, 1.29, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(405, 'Gopalgunj', 5.5, 0, 10.5429, 4.94286, 58.95, 83.9143, 318.729, 153.793, 161.114, 3.4, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(406, 'Muzaffarpur', 0, 0, 15.3875, 5.0875, 99.1375, 61.9125, 386.346, 241.062, 54.6625, 0.1875, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(407, 'EastChamparan', 0, 0, 21.0741, 23.0148, 81.5328, 103.229, 312.016, 271.937, 126.45, 0, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(408, 'WestChamparan', 9, 0, 33.6, 14.8667, 65.8699, 93.5333, 315.646, 459.321, 238.737, 7.65556, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(409, 'Sitamarhi', 0, 0, 0, 41.3529, 51.3176, 82.011, 329.314, 394.506, 85.1647, 1.17647, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(410, 'Sheohar', 27.5, 0, 27.52, 0, 116.1, 123.32, 367.64, 291.752, 135.28, 0, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(411, 'Vaishali', 0, 0, 13.9125, 18.45, 76.7875, 96.6312, 410.044, 287.782, 86.325, 4.4625, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(412, 'Darbhanga', 33.7, 0, 0, 33.7, 106.561, 60.3722, 417.133, 403.872, 82.3278, 6.88889, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(413, 'Madhubani', 0, 0, 34.1, 54.4571, 127.59, 120.895, 429.829, 509.43, 120.409, 12.3048, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(414, 'Samastipur', 0, 0, 20.56, 25.29, 88.28, 74.59, 354.16, 307.92, 83.17, 19.65, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(415, 'Begusarai', 0, 0, 0, 9.23333, 54.8067, 45.0222, 265.727, 262.571, 98.0367, 48.8167, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(416, 'Munger', 0, 0, 0, 0.444444, 86.0333, 76.3778, 352.967, 191.273, 124.122, 179.6, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(417, 'Lakhisarai', 0, 0, 0, 0, 53.9943, 82.4571, 345.943, 208.857, 96.3143, 137.343, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(418, 'Sheikhpura', 0, 0, 0, 0, 67.3, 96.3667, 302.95, 195.433, 63.3333, 39.6667, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(419, 'Jamui', 0, 0, 0, 1.9, 71.66, 66.21, 367.28, 240.28, 58.86, 227.68, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(420, 'Bhagalpur', 0, 0, 0, 9.0125, 145.775, 98.6519, 394.212, 284.881, 221.431, 232.812, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(421, 'Banka', 0, 0, 0.454545, 11.52, 81.1473, 88.6545, 368.564, 184.527, 167.527, 226.284, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(422, 'Saharsa', 0, 0, 0, 52.89, 144.737, 152.073, 490.782, 339.64, 88.7836, 38.8909, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(423, 'Supaul', 0, 0, 30.5909, 42.4636, 127.375, 144.867, 451.518, 460.764, 136.709, 27.5545, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(424, 'Madhepura', 0, 0, 0, 0, 141.691, 135.515, 403.338, 306.536, 102.823, 67.7462, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(425, 'Purnia', 64, 0, 63.9714, 86.6286, 139.014, 84.4143, 340.143, 343.981, 158.238, 67.7571, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(426, 'Kishangunj', 0, 0, 45.2, 39.1429, 151.193, 158.571, 570.986, 927.6, 161.419, 34.2571, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(427, 'Araria', 0, 0, 36.4333, 25.9556, 92.0979, 111.775, 243.933, 547.811, 84.2222, 49.6528, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(428, 'Kathihar', 0, 0, 8.80625, 2.93333, 130.083, 123.105, 312.892, 327.927, 168.865, 184.852, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(429, 'Khagaria', 4, 0, 4, 36.2571, 78.5524, 98.1143, 301.3, 197, 106.514, 85.4571, 0, 0, 2017, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(430, 'Araria', 5.1, 25.2, 1, 10.3, 142.4, 223.8, 237.7, 389.1, 215.8, 30.6, 0, 0.5, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(431, 'Arwal', 27.4, 24.8, 8.4, 0, 17.8, 22.5, 107.3, 139.6, 123.9, 12.3, 0, 1.3, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(432, 'Aurangabad', 50.5, 28.3, 15, 0, 27.2, 51.5, 208.6, 142.4, 121.4, 25.8, 0, 0.5, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(433, 'Banka', 3.2, 112.5, 2.9, 0, 172.3, 64, 553.4, 221.2, 130.6, 30.4, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(434, 'Begusarai', 16.2, 14.1, 1.3, 0, 233.9, 203.8, 545.5, 431.3, 190.2, 38.7, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(435, 'Bhagalpur', 5.6, 38.1, 3.8, 0, 197.6, 95.3, 476.3, 203.3, 149.6, 9, 0, 0.2, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(436, 'Bhojpur', 10.8, 25.8, 16.2, 0, 40.6, 38.9, 192.3, 248, 246.7, 34.8, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(437, 'Buxar', 41.8, 31.6, 6.4, 0, 4, 15.1, 68.5, 23, 27.4, 8.2, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(438, 'Darbhanga', 14.9, 37.7, 4.6, 0, 84.3, 176.9, 260.5, 363.3, 86.8, 117.2, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(439, 'EastChamparan', 11.9, 32, 7.1, 0, 102.3, 131.4, 170.2, 383.7, 181.1, 94.6, 0, 4.2, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(440, 'Gaya', 38.6, 20.1, 7.8, 0, 84.4, 56.4, 247.9, 313.5, 132, 8.8, 0, 2.7, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(441, 'Gopalganj', 12.4, 21, 9.7, 0, 16.6, 77.6, 121.8, 281.5, 110.3, 83, 0, 5.3, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(442, 'Jehanabad', 17.2, 21.1, 5.9, 0, 40.6, 37.4, 247.8, 371.3, 117.1, 14.4, 0, 1.2, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(443, 'Jamui', 18.8, 94.2, 0.7, 0, 96.6, 90.5, 445.5, 191.4, 161.2, 24.7, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(444, 'Kaimur', 14.2, 31, 11, 0, 8, 19.5, 213, 291.6, 150, 35.5, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(445, 'Katihar', 5.8, 28.5, 4.5, 0, 249.1, 164.5, 215.4, 276.7, 114.3, 30.4, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(446, 'Khagaria', 6.8, 10.5, 5.3, 0, 129, 99.3, 499.4, 210.7, 132.1, 17.9, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(447, 'Kishanganj', 3, 23, 0.5, 7.4, 190.6, 449, 317.4, 520.1, 345.8, 13.1, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(448, 'Lakhisarai', 15, 15.3, 5, 0, 224.3, 230, 433, 522.2, 128.5, 45.5, 0, 1, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(449, 'Madhepura', 7.9, 24, 2.7, 0, 202.7, 155.7, 285.6, 290.8, 106.1, 17.4, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(450, 'Madhubani', 2.4, 22.8, 2.9, 0, 81.1, 183.9, 223.3, 341.7, 115.1, 111.3, 0, 2.6, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(451, 'Munger', 9.5, 26, 34.2, 0, 269.7, 42.2, 494.9, 263.7, 146.8, 38, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(452, 'Muzaffarpur', 16.1, 28.6, 5.8, 0, 66.7, 90.3, 230.7, 357.1, 212.4, 34.5, 0, 1.4, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(453, 'Nalanda', 30.2, 19.4, 9.2, 0, 96.2, 79.3, 239.4, 455.8, 117.5, 4.4, 0, 2.3, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(454, 'Nawada', 25, 37.1, 7.7, 0, 64.4, 86.6, 218, 265.3, 99.4, 5, 0, 3.6, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(455, 'Patna', 25.2, 27.4, 19.9, 0, 71.3, 105.8, 172.9, 448.9, 183.1, 35.7, 0, 0.1, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(456, 'Purnia', 6.8, 26, 9.7, 5.6, 275.2, 114.2, 229.7, 190.1, 234, 21.8, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(457, 'Rohtas', 36.9, 40.7, 42.1, 0, 77.5, 51.1, 166, 110.5, 106.2, 28.4, 0, 0.1, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(458, 'Saharsa', 0, 7.4, 0, 0, 80.4, 24.8, 175.4, 182.5, 42.5, 6, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(459, 'Samastipur', 5, 31, 0, 0, 78.5, 163.1, 393.7, 310.4, 233.1, 42.2, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(460, 'Saran', 23.4, 44.7, 5.1, 0, 59.8, 63.4, 153.7, 280.4, 231.4, 58.2, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(461, 'Shekhpura', 27, 16, 6.7, 0, 154.7, 131.6, 383.1, 259, 257.5, 14.8, 0, 2.2, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(462, 'Sheohar', 12.6, 7.8, 0, 0, 79.4, 196.8, 172.4, 255.6, 187, 180.2, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(463, 'Sitamarhi', 0, 29, 4.5, 0, 134.9, 138.2, 159.5, 368.2, 129.8, 120, 0, 4, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(464, 'Siwan', 63.5, 48.8, 15.5, 0, 36.5, 100.9, 223.9, 391.8, 139.5, 66.4, 0, 0, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(465, 'Supaul', 2, 37.2, 3.1, 0.5, 123.9, 205.8, 223.5, 453.3, 175.5, 45.2, 0, 0.3, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(466, 'Vaishali', 17.2, 49.2, 4.1, 0, 50.3, 92.1, 225.2, 357.2, 171, 23.6, 0, 3.9, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36'),
(467, 'WestChamparan', 6, 28.6, 6, 0, 37.4, 171.8, 309.7, 431.9, 233.2, 177, 0, 3.1, 2014, '2018-08-06 11:10:36', '2018-08-06 11:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-07-10 04:34:40', '2018-07-10 04:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `cropping_patterns`
--

DROP TABLE IF EXISTS `cropping_patterns`;
CREATE TABLE `cropping_patterns` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Food_grains` float DEFAULT NULL,
  `Cereals` float DEFAULT NULL,
  `Pulses` float DEFAULT NULL,
  `Oil_seeds` float DEFAULT NULL,
  `Fibre_Crops` float DEFAULT NULL,
  `Sugarcane` float DEFAULT NULL,
  `Total_Area` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cropping_patterns`
--

INSERT INTO `cropping_patterns` (`id`, `Year`, `Food_grains`, `Cereals`, `Pulses`, `Oil_seeds`, `Fibre_Crops`, `Sugarcane`, `Total_Area`, `created_at`, `updated_at`) VALUES
(1, 2012, 93.02, 85.9, 7.11, 1.59, 1.94, 3.46, 100, '2018-07-16 09:08:48', '2018-07-16 09:08:48'),
(2, 2013, 92.89, 85.8, 7.08, 1.74, 1.71, 3.66, 100, '2018-07-16 09:08:48', '2018-07-16 09:08:48'),
(3, 2014, 93.25, 86.14, 7.09, 1.63, 1.58, 3.56, 100, '2018-07-16 09:08:48', '2018-07-16 09:08:48'),
(4, 2015, 93.27, 86.18, 7.07, 1.69, 1.58, 3.46, 100, '2018-07-16 09:08:48', '2018-07-16 09:08:48'),
(5, 2016, 93.47, 86.57, 6.9, 1.52, 1.66, 3.35, 100, '2018-07-16 09:08:48', '2018-07-16 09:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `health1s`
--

DROP TABLE IF EXISTS `health1s`;
CREATE TABLE `health1s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Total_Expense_on_Social_Services_India` float DEFAULT NULL,
  `Total_Expense_on_Social_Services_Bihar` float DEFAULT NULL,
  `Total_Expense_India` float DEFAULT NULL,
  `Total_Expense_Bihar` float DEFAULT NULL,
  `Percentage_share_of_Social_Services_in_Total_Expenditure_India` float DEFAULT NULL,
  `Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar` float DEFAULT NULL,
  `Per_Capita_Expenditure_on_Social_Services_India` float DEFAULT NULL,
  `Per_Capita_Expenditure_on_Social_Services_Bihar` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health1s`
--

INSERT INTO `health1s` (`id`, `Year`, `Total_Expense_on_Social_Services_India`, `Total_Expense_on_Social_Services_Bihar`, `Total_Expense_India`, `Total_Expense_Bihar`, `Percentage_share_of_Social_Services_in_Total_Expenditure_India`, `Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar`, `Per_Capita_Expenditure_on_Social_Services_India`, `Per_Capita_Expenditure_on_Social_Services_Bihar`, `created_at`, `updated_at`) VALUES
(1, 2011, 459980, 19536, 1245820, 60182, 36.9, 32.5, 3801, 1878, '2018-08-06 10:39:46', '2018-08-06 10:39:46'),
(2, 2012, 528655, 24438, 1424880, 69207, 37.1, 35.3, 4296, 2292, '2018-08-06 10:39:46', '2018-08-06 10:39:46'),
(3, 2013, 600231, 28253, 1600300, 80405, 37.5, 35.1, 4796, 2586, '2018-08-06 10:39:46', '2018-08-06 10:39:46'),
(4, 2014, 696207, 33386, 1909200, 94698, 36.5, 35.3, 5470, 2981, '2018-08-06 10:39:46', '2018-08-06 10:39:46'),
(5, 2015, 900746, 38684, 2371350, 112328, 38, 34.4, 6959, 3370, '2018-08-06 10:39:46', '2018-08-06 10:39:46'),
(6, 2016, 1007780, 44329, 2680280, 126302, 37.6, 35.1, 7656, 3767, '2018-08-06 10:39:46', '2018-08-06 10:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `health5s`
--

DROP TABLE IF EXISTS `health5s`;
CREATE TABLE `health5s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `District_Hospital` float DEFAULT NULL,
  `Referral_Hospital` float DEFAULT NULL,
  `Sub_Divisional_Hospital` float DEFAULT NULL,
  `PHC` float DEFAULT NULL,
  `Sub_Centre` float DEFAULT NULL,
  `APHC` float DEFAULT NULL,
  `Total_Health_Centre` float DEFAULT NULL,
  `Health_centres_per_lakh_of_population` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health5s`
--

INSERT INTO `health5s` (`id`, `Year`, `District_Hospital`, `Referral_Hospital`, `Sub_Divisional_Hospital`, `PHC`, `Sub_Centre`, `APHC`, `Total_Health_Centre`, `Health_centres_per_lakh_of_population`, `created_at`, `updated_at`) VALUES
(1, 2011, 36, 70, 55, 533, 9696, 1330, 11559, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51'),
(2, 2012, 36, 70, 55, 533, 9696, 1330, 11559, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51'),
(3, 2013, 36, 70, 55, 533, 9696, 1330, 11559, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51'),
(4, 2014, 36, 70, 55, 533, 9729, 1350, 11612, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51'),
(5, 2015, 36, 70, 55, 533, 9729, 1350, 11612, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51'),
(6, 2016, 36, 70, 55, 533, 9729, 1350, 11612, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51'),
(7, 2017, 36, 70, 55, 533, 9949, 1366, 11848, 11, '2018-08-07 07:04:51', '2018-08-07 07:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `health6s`
--

DROP TABLE IF EXISTS `health6s`;
CREATE TABLE `health6s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Average_number_of_Outpatient_visits_per_day` float DEFAULT NULL,
  `Inpatient_Bed_Occupancy_Rate` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health6s`
--

INSERT INTO `health6s` (`id`, `Districts`, `Average_number_of_Outpatient_visits_per_day`, `Inpatient_Bed_Occupancy_Rate`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 235, 73, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(2, 'Nalanda', 391, 119, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(3, 'Bhojpur', 275, 33, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(4, 'Buxar', 213, 62, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(5, 'Rohtas', 290, 70, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(6, 'Kaimur', 301, 82, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(7, 'Gaya', 348, 87, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(8, 'Jehanabad', 377, 72, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(9, 'Arwal', 321, 76, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(10, 'Nawada', 167, 77, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(11, 'Aurangabad', 501, 74, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(12, 'Saran', 420, 89, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(13, 'Siwan', 292, 99, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(14, 'Gopalganj', 318, 76, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(15, 'WestChamparan', 255, 52, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(16, 'EastChamparan', 357, 84, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(17, 'Muzaffarpur', 502, 60, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(18, 'Sitamarhi', 240, 94, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(19, 'Sheohar', 159, 78, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(20, 'Vaishali', 402, 101, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(21, 'Darbhanga', 355, 89, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(22, 'Madhubani', 301, 58, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(23, 'Samastipur', 420, 124, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(24, 'Begusarai', 250, 62, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(25, 'Munger', 306, 104, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(26, 'Sheikhpura', 200, 60, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(27, 'Lakhisarai', 266, 70, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(28, 'Jamui', 199, 46, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(29, 'Khagaria', 401, 130, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(30, 'Bhagalpur', 310, 130, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(31, 'Banka', 350, 76, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(32, 'Saharsa', 229, 71, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(33, 'Supaul', 379, 106, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(34, 'Madhepura', 328, 143, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(35, 'Purnia', 523, 122, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(36, 'Kishanganj', 290, 94, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(37, 'Araria', 450, 99, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(38, 'Katihar', 306, 78, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(39, 'Bihar', 323, 84, 2015, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(40, 'Patna', 305, 75, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(41, 'Nalanda', 390, 125, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(42, 'Bhojpur', 270, 70, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(43, 'Buxar', 209, 52, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(44, 'Rohtas', 258, 70, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(45, 'Kaimur', 312, 63, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(46, 'Gaya', 338, 25, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(47, 'Jehanabad', 358, 50, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(48, 'Arwal', 247, 29, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(49, 'Nawada', 171, 81, 2016, '2018-08-07 11:16:18', '2018-08-07 11:16:18'),
(50, 'Aurangabad', 483, 52, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(51, 'Saran', 465, 92, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(52, 'Siwan', 323, 76, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(53, 'Gopalganj', 370, 66, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(54, 'WestChamparan', 258, 43, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(55, 'EastChamparan', 400, 83, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(56, 'Muzaffarpur', 497, 20, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(57, 'Sitamarhi', 225, 88, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(58, 'Sheohar', 135, 51, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(59, 'Vaishali', 430, 94, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(60, 'Darbhanga', 342, 44, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(61, 'Madhubani', 361, 57, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(62, 'Samastipur', 353, 126, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(63, 'Begusarai', 265, 75, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(64, 'Munger', 338, 85, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(65, 'Sheikhpura', 179, 62, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(66, 'Lakhisarai', 245, 76, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(67, 'Jamui', 219, 41, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(68, 'Khagaria', 555, 118, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(69, 'Bhagalpur', 330, 134, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(70, 'Banka', 439, 66, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(71, 'Saharsa', 213, 110, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(72, 'Supaul', 370, 85, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(73, 'Madhepura', 407, 131, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(74, 'Purnia', 503, 101, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(75, 'Kishanganj', 319, 100, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(76, 'Araria', 485, 146, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(77, 'Katihar', 354, 83, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(78, 'Bihar', 335, 69, 2016, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(79, 'Patna', 305, 31, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(80, 'Nalanda', 390, 106, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(81, 'Bhojpur', 270, 64, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(82, 'Buxar', 209, 43, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(83, 'Rohtas', 258, 62, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(84, 'Kaimur', 312, 33, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(85, 'Gaya', 338, 23, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(86, 'Jehanabad', 358, 42, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(87, 'Arwal', 247, 29, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(88, 'Nawada', 171, 75, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(89, 'Aurangabad', 483, 33, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(90, 'Saran', 465, 74, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(91, 'Siwan', 323, 75, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(92, 'Gopalganj', 370, 63, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(93, 'WestChamparan', 258, 34, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(94, 'EastChamparan', 400, 70, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(95, 'Muzaffarpur', 497, 14, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(96, 'Sitamarhi', 225, 74, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(97, 'Sheohar', 135, 43, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(98, 'Vaishali', 430, 87, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(99, 'Darbhanga', 342, 31, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(100, 'Madhubani', 361, 53, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(101, 'Samastipur', 353, 100, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(102, 'Begusarai', 265, 60, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(103, 'Munger', 338, 80, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(104, 'Sheikhpura', 179, 66, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(105, 'Lakhisarai', 245, 63, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(106, 'Jamui', 219, 36, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(107, 'Khagaria', 555, 125, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(108, 'Bhagalpur', 330, 115, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(109, 'Banka', 439, 65, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(110, 'Saharsa', 213, 106, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(111, 'Supaul', 370, 39, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(112, 'Madhepura', 407, 121, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(113, 'Purnia', 503, 70, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(114, 'Kishanganj', 319, 77, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(115, 'Araria', 485, 92, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(116, 'Katihar', 354, 70, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19'),
(117, 'Bihar', 335, 57, 2017, '2018-08-07 11:16:19', '2018-08-07 11:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `health7s`
--

DROP TABLE IF EXISTS `health7s`;
CREATE TABLE `health7s` (
  `id` bigint(20) NOT NULL,
  `Name_of_the_Post` varchar(255) DEFAULT NULL,
  `Regular_Total_Sanctioned_Posts` float DEFAULT NULL,
  `Regular_Working` float DEFAULT NULL,
  `Contractual_Sanctioned_Posts` float DEFAULT NULL,
  `Contractual_Working` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health7s`
--

INSERT INTO `health7s` (`id`, `Name_of_the_Post`, `Regular_Total_Sanctioned_Posts`, `Regular_Working`, `Contractual_Sanctioned_Posts`, `Contractual_Working`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Doctors', 7249, 2052, 2479, 1488, 2015, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(2, 'GradeANurse', 4704, 1700, 2550, 505, 2015, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(3, 'ANM', 21859, 8974, 12659, 9711, 2015, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(4, 'ASHA', 0, 0, 93687, 85502, 2015, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(5, 'Doctors', 7249, 3183, 2479, 923, 2016, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(6, 'GradeANurse', 4704, 2032, 2550, 383, 2016, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(7, 'ANM', 21859, 12205, 12659, 6848, 2016, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(8, 'ASHA', 0, 0, 93687, 85708, 2016, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(9, 'Doctors', 7249, 3146, 2479, 709, 2017, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(10, 'GradeANurse', 4704, 2096, 2550, 166, 2017, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(11, 'ANM', 21859, 12134, 12659, 5758, 2017, '2018-08-07 11:20:57', '2018-08-07 11:20:57'),
(12, 'ASHA', 0, 0, 93687, 86893, 2017, '2018-08-07 11:20:57', '2018-08-07 11:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `health8s`
--

DROP TABLE IF EXISTS `health8s`;
CREATE TABLE `health8s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Institutional_Delivery` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health8s`
--

INSERT INTO `health8s` (`id`, `Year`, `Institutional_Delivery`, `created_at`, `updated_at`) VALUES
(1, 2012, 14.69, '2018-08-07 11:50:20', '2018-08-07 11:50:20'),
(2, 2013, 16.48, '2018-08-07 11:50:20', '2018-08-07 11:50:20'),
(3, 2014, 14.94, '2018-08-07 11:50:20', '2018-08-07 11:50:20'),
(4, 2015, 15.33, '2018-08-07 11:50:20', '2018-08-07 11:50:20'),
(5, 2016, 15.45, '2018-08-07 11:50:20', '2018-08-07 11:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `health9s`
--

DROP TABLE IF EXISTS `health9s`;
CREATE TABLE `health9s` (
  `id` bigint(20) NOT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Percentage_of_children_fully_immunized_NFHS_3_2005_06` float DEFAULT NULL,
  `Percentage_of_children_fully_immunized_NFHS_4_2015_16` float DEFAULT NULL,
  `Percentage_Point_Increase` float DEFAULT NULL,
  `Rank_by_percentage_increase` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health9s`
--

INSERT INTO `health9s` (`id`, `State`, `Percentage_of_children_fully_immunized_NFHS_3_2005_06`, `Percentage_of_children_fully_immunized_NFHS_4_2015_16`, `Percentage_Point_Increase`, `Rank_by_percentage_increase`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', 46, 65.3, 19.3, 3, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(2, 'Bihar', 32.8, 61.7, 28.9, 1, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(3, 'Goa', 78.6, 88.4, 9.8, 8, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(4, 'Haryana', 65.3, 62.2, -3.1, 11, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(5, 'Karnataka', 55, 62.6, 7.6, 7, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(6, 'Madhya Pradesh', 40.3, 53.8, 13.5, 4, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(7, 'Meghalaya', 32.9, 61.5, 28.6, 2, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(8, 'Sikkim', 69.6, 83, 13.4, 6, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(9, 'Tamil Nadu', 80.9, 69.7, -11.2, 12, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(10, 'Tripura', 49.7, 54.5, 4.8, 9, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(11, 'Uttarakhand', 60, 57.7, -2.3, 10, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(12, 'West Bengal', 64.3, 84.4, 20.1, 5, '2018-08-07 12:03:24', '2018-08-07 12:03:24'),
(13, 'India', 43.5, 62, 18.5, NULL, '2018-08-07 12:03:24', '2018-08-07 12:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `health10s`
--

DROP TABLE IF EXISTS `health10s`;
CREATE TABLE `health10s` (
  `id` bigint(20) NOT NULL,
  `Antigenname` varchar(255) DEFAULT NULL,
  `Target` float DEFAULT NULL,
  `Achievement` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health10s`
--

INSERT INTO `health10s` (`id`, `Antigenname`, `Target`, `Achievement`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'TT2 plus Booster(PW)', 3184, 2407, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(2, 'BCG', 3000, 2712, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(3, 'OPV0', 3000, 1836, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(4, 'OPV1', 3000, 2640, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(5, 'OPV2', 3000, 2584, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(6, 'OPV3', 3000, 2515, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(7, 'DPT1', 3000, 14, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(8, 'DPT2', 3000, 90, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(9, 'DPT3', 3000, 253, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(10, 'PENTA-1', 3000, 2637, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(11, 'PENTA-2', 3000, 2534, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(12, 'PENTA-3', 3000, 2328, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(13, 'Measles', 3000, 2548, 2015, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(14, 'TT2+Booster(PW)', 3261, 2467, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(15, 'BCG', 3080, 2749, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(16, 'OPV0', 3080, 1836, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(17, 'OPV1', 3080, 2733, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(18, 'OPV2', 3080, 2708, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(19, 'OPV3', 3080, 2682, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(20, 'DPT1', 3080, 2, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(21, 'DPT2', 3080, 2, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(22, 'DPT3', 3080, 48, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(23, 'PENTA-1', 3080, 2750, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(24, 'PENTA-2', 3080, 2736, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(25, 'PENTA-3', 3080, 2712, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(26, 'Measles', 3080, 2714, 2016, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(27, 'TT2+Booster(PW)', 1670, 1438, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(28, 'BCG', 1579, 1268, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(29, 'OPV0', 1579, 892, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(30, 'OPV1', 1579, 1169, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(31, 'OPV2', 1579, 1204, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(32, 'OPV3', 1579, 1239, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(33, 'DPT1', 1579, 0, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(34, 'DPT2', 1579, 0, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(35, 'DPT3', 1579, 0, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(36, 'PENTA-1', 1579, 1169, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(37, 'PENTA-2', 1579, 1203, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(38, 'PENTA-3', 1579, 1241, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17'),
(39, 'Measles', 1579, 1338, 2017, '2018-08-08 05:24:17', '2018-08-08 05:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `health11s`
--

DROP TABLE IF EXISTS `health11s`;
CREATE TABLE `health11s` (
  `id` bigint(20) NOT NULL,
  `Diseases` varchar(255) DEFAULT NULL,
  `Number_of_Patients` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health11s`
--

INSERT INTO `health11s` (`id`, `Diseases`, `Number_of_Patients`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Acute Diarrhoea', 6.9, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(2, 'Bacillary Dysentery', 3.6, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(3, 'Viral Hepatitis', 0.3, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(4, 'Enteric Fever', 3.1, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(5, 'Malaria', 0.3, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(6, 'Fever of Unknown Origin', 13.2, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(7, 'Acute Respiratory Illnesses', 17.3, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(8, 'Pneumonia', 0.5, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(9, 'Dog Bite', 6.3, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(10, 'Any other State Specific disease', 0.3, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(11, 'Unusual Syndromes not captured above', 0.7, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(12, 'Total', 52.4, 2014, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(13, 'Acute Diarrhoea', 5.1, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(14, 'Bacillary Dysentery', 2.8, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(15, 'Viral Hepatitis', 0.3, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(16, 'Enteric Fever', 2.6, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(17, 'Malaria', 0.3, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(18, 'Fever of Unknown Origin', 10.3, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(19, 'Acute Respiratory Illnesses', 13.5, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(20, 'Pneumonia', 0.4, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(21, 'Dog Bite', 2.7, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(22, 'Any other State Specific disease', 0.3, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(23, 'Unusual Syndromes not captured above', 0.6, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(24, 'Total', 38.8, 2015, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(25, 'Acute Diarrhoea', 2.7, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(26, 'Bacillary Dysentery', 1.4, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(27, 'Viral Hepatitis', 0.2, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(28, 'Enteric Fever', 1.3, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(29, 'Malaria', 0.2, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(30, 'Fever of Unknown Origin', 5.1, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(31, 'Acute Respiratory Illnesses', 6.9, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(32, 'Pneumonia', 0.2, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(33, 'Dog Bite', 1.9, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(34, 'Any other State Specific disease', 0.2, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(35, 'Unusual Syndromes not captured above', 0.2, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47'),
(36, 'Total', 20.4, 2016, '2018-08-08 06:14:47', '2018-08-08 06:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `health12s`
--

DROP TABLE IF EXISTS `health12s`;
CREATE TABLE `health12s` (
  `id` bigint(20) NOT NULL,
  `NRHM` varchar(255) DEFAULT NULL,
  `Fund_Disbursed` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health12s`
--

INSERT INTO `health12s` (`id`, `NRHM`, `Fund_Disbursed`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'NRHM-A', 43853.5, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(2, 'NRHM-B', 24994.7, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(3, 'NRHM-C', 8792.1, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(4, 'NRHM-D', 0, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(5, 'NRHM-E', 0, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(6, 'NRHM-F', 0, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(7, 'NRHM-G', 525.5, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(8, 'Total', 78165.8, 2011, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(9, 'NRHM-A', 60305.2, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(10, 'NRHM-B', 29520.9, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(11, 'NRHM-C', 7948, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(12, 'NRHM-D', 0, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(13, 'NRHM-E', 141.8, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(14, 'NRHM-F', 2590.1, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(15, 'NRHM-G', 0, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(16, 'Total', 100506, 2012, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(17, 'NRHM-A', 68535.1, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(18, 'NRHM-B', 17995.8, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(19, 'NRHM-C', 9045.7, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(20, 'NRHM-D', 0, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(21, 'NRHM-E', 178.7, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(22, 'NRHM-F', 1774.7, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(23, 'NRHM-G', 92.7, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(24, 'Total', 97622.6, 2013, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(25, 'NRHM-A', 67011.5, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(26, 'NRHM-B', 25135.5, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(27, 'NRHM-C', 9243.1, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(28, 'NRHM-D', 192, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(29, 'NRHM-E', 61.5, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(30, 'NRHM-F', 2785.1, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(31, 'NRHM-G', 542.6, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(32, 'Total', 104971, 2014, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(33, 'NRHM-A', 72371.2, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(34, 'NRHM-B', 21000.1, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(35, 'NRHM-C', 11251, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(36, 'NRHM-D', 2, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(37, 'NRHM-E', 552.3, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(38, 'NRHM-F', 5694.1, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(39, 'NRHM-G', 860.9, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(40, 'Total', 111732, 2015, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(41, 'NRHM-A', 77868.9, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(42, 'NRHM-B', 42949.9, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(43, 'NRHM-C', 7869.8, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(44, 'NRHM-D', 15.5, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(45, 'NRHM-E', 282.3, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(46, 'NRHM-F', 3542, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(47, 'NRHM-G', 834.4, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46'),
(48, 'Total', 133363, 2016, '2018-08-08 06:36:46', '2018-08-08 06:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `health13s`
--

DROP TABLE IF EXISTS `health13s`;
CREATE TABLE `health13s` (
  `id` bigint(20) NOT NULL,
  `Posts` varchar(255) DEFAULT NULL,
  `No_of_Sanctioned_Posts` float DEFAULT NULL,
  `Working` float DEFAULT NULL,
  `Percentage_of_Vacant_Post` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health13s`
--

INSERT INTO `health13s` (`id`, `Posts`, `No_of_Sanctioned_Posts`, `Working`, `Percentage_of_Vacant_Post`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'CDPO', 544, 507, 6.8, 2012, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(2, 'Lady Supervisor', 3288, 2916, 11.3, 2012, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(3, 'Anganwadi Worker', 91677, 75183, 18, 2012, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(4, 'Anganwadi Helper', 86337, 67753, 21.4, 2012, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(5, 'CDPO', 544, 504, 7.4, 2013, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(6, 'Lady Supervisor', 3288, 2859, 13, 2013, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(7, 'Anganwadi Worker', 91677, 82177, 10.4, 2013, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(8, 'Anganwadi Helper', 86337, 78076, 9.5, 2013, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(9, 'CDPO', 544, 458, 15.8, 2014, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(10, 'Lady Supervisor', 3288, 2499, 24, 2014, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(11, 'Anganwadi Worker', 91677, 85936, 6.3, 2014, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(12, 'Anganwadi Helper', 86337, 80176, 7, 2014, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(13, 'CDPO', 544, 458, 15.8, 2015, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(14, 'Lady Supervisor', 3288, 2499, 24, 2015, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(15, 'Anganwadi Worker', 91677, 85944, 6.3, 2015, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(16, 'Anganwadi Helper', 86337, 80178, 7.1, 2015, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(17, 'CDPO', 544, 442, 18.8, 2016, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(18, 'Lady Supervisor', 3288, 2427, 26.2, 2016, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(19, 'Anganwadi Worker', 91677, 86800, 5.3, 2016, '2018-08-08 07:05:24', '2018-08-08 07:05:24'),
(20, 'Anganwadi Helper', 86337, 80373, 6.9, 2016, '2018-08-08 07:05:24', '2018-08-08 07:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `health14s`
--

DROP TABLE IF EXISTS `health14s`;
CREATE TABLE `health14s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Budget_for_ICDS_Bihar` float DEFAULT NULL,
  `Funds_Released_by_GOI` float DEFAULT NULL,
  `Expenditure` float DEFAULT NULL,
  `Fund_Released_as_Percentage_of_Budget` float DEFAULT NULL,
  `Expenditure_as_Percentage_of_Fund_Released` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health14s`
--

INSERT INTO `health14s` (`id`, `Year`, `Budget_for_ICDS_Bihar`, `Funds_Released_by_GOI`, `Expenditure`, `Fund_Released_as_Percentage_of_Budget`, `Expenditure_as_Percentage_of_Fund_Released`, `created_at`, `updated_at`) VALUES
(1, 2012, 1393.3, 1094, 1075.3, 78.5, 98.3, '2018-08-08 07:30:19', '2018-08-08 07:30:19'),
(2, 2013, 1714.3, 1153.5, 1310.1, 67.3, 113.6, '2018-08-08 07:30:19', '2018-08-08 07:30:19'),
(3, 2014, 2238.3, 1281.5, 1236.4, 57.3, 96.5, '2018-08-08 07:30:19', '2018-08-08 07:30:19'),
(4, 2015, 1409.7, 1062.2, 983.4, 75.3, 92.6, '2018-08-08 07:30:19', '2018-08-08 07:30:19'),
(5, 2016, 1494.1, 987.3, 893.5, 66.1, 90.5, '2018-08-08 07:30:19', '2018-08-08 07:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `health15s`
--

DROP TABLE IF EXISTS `health15s`;
CREATE TABLE `health15s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `District_Hospital` float DEFAULT NULL,
  `Referral_Hospital` float DEFAULT NULL,
  `SDH` float DEFAULT NULL,
  `PHC` float DEFAULT NULL,
  `Health_SubCentre` float DEFAULT NULL,
  `APHC` float DEFAULT NULL,
  `DH_RH_SDH_PHC_HSC_APHC` float DEFAULT NULL,
  `Population_Health_Institution` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health15s`
--

INSERT INTO `health15s` (`id`, `Districts`, `District_Hospital`, `Referral_Hospital`, `SDH`, `PHC`, `Health_SubCentre`, `APHC`, `DH_RH_SDH_PHC_HSC_APHC`, `Population_Health_Institution`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 0, 4, 4, 23, 234, 94, 359, 16263, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(2, 'Nalanda', 1, 3, 2, 20, 368, 45, 439, 6555, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(3, 'Bhojpur', 1, 3, 2, 14, 298, 27, 344, 7931, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(4, 'Buxar', 1, 0, 1, 11, 160, 28, 201, 8489, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(5, 'Rohtas', 1, 2, 2, 19, 251, 32, 307, 9641, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(6, 'Kaimur', 1, 2, 1, 11, 175, 19, 208, 7819, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(7, 'Gaya', 1, 2, 2, 24, 469, 36, 533, 8239, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(8, 'Jehanabad', 1, 2, 0, 7, 107, 31, 148, 7603, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(9, 'Arwal', 1, 0, 0, 5, 65, 27, 98, 7151, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(10, 'Nawada', 1, 2, 1, 14, 174, 36, 228, 9733, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(11, 'Aurangabad', 1, 3, 1, 11, 254, 61, 331, 7674, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(12, 'Saran', 1, 3, 2, 20, 414, 41, 480, 8233, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(13, 'Siwan', 1, 3, 1, 19, 378, 44, 446, 7467, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(14, 'Gopalganj', 1, 3, 1, 14, 185, 22, 226, 11336, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(15, 'WestChamparan', 1, 2, 2, 18, 532, 33, 588, 6692, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(16, 'EastChamparan', 1, 1, 3, 27, 398, 70, 500, 10199, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(17, 'Muzaffarpur', 1, 2, 0, 16, 499, 83, 600, 8002, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(18, 'Sitamarhi', 1, 1, 2, 17, 208, 38, 266, 12871, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(19, 'Sheohar', 1, 0, 0, 5, 91, 13, 110, 5966, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(20, 'Vaishali', 1, 2, 2, 16, 334, 34, 390, 8962, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(21, 'Darbhanga', 0, 2, 1, 18, 261, 46, 328, 12004, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(22, 'Madhubani', 1, 4, 4, 21, 376, 61, 465, 9650, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(23, 'Samastipur', 1, 1, 4, 20, 358, 55, 439, 9707, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(24, 'Begusarai', 1, 2, 4, 18, 292, 22, 337, 8815, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(25, 'Munger', 1, 0, 2, 9, 154, 20, 185, 7393, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(26, 'Sheikhpura', 1, 1, 0, 6, 85, 17, 110, 5785, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(27, 'Lakhisarai', 1, 1, 0, 6, 102, 12, 122, 8204, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(28, 'Jamui', 1, 3, 0, 10, 279, 22, 315, 5589, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(29, 'Khagaria', 1, 1, 0, 7, 186, 23, 218, 7646, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(30, 'Bhagalpur', 1, 3, 2, 16, 362, 54, 438, 6936, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(31, 'Banka', 1, 3, 2, 11, 239, 31, 285, 7140, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(32, 'Saharsa', 1, 0, 1, 10, 171, 32, 215, 8840, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(33, 'Supaul', 1, 2, 1, 11, 181, 23, 219, 10178, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(34, 'Madhepura', 1, 0, 1, 13, 272, 21, 308, 6499, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(35, 'Purnia', 1, 2, 3, 14, 312, 33, 364, 8969, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(36, 'Kishanganj', 1, 1, 0, 7, 156, 10, 175, 9659, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(37, 'Araria', 1, 2, 1, 9, 242, 29, 284, 9900, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(38, 'Katihar', 1, 2, 2, 16, 327, 41, 388, 7915, '2018-08-08 08:48:32', '2018-08-08 08:48:32'),
(39, 'Bihar', 36, 70, 55, 533, 9949, 1366, 11997, 8677, '2018-08-08 08:48:32', '2018-08-08 08:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `health16s`
--

DROP TABLE IF EXISTS `health16s`;
CREATE TABLE `health16s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Regular_Post_sanctioned` float DEFAULT NULL,
  `Contractual_Post_sanctioned` float DEFAULT NULL,
  `Regular_Doctor_Employed` float DEFAULT NULL,
  `Contractual_Doctor_Employed` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Number_of_doctors_per_lakh_population` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health16s`
--

INSERT INTO `health16s` (`id`, `Districts`, `Regular_Post_sanctioned`, `Contractual_Post_sanctioned`, `Regular_Doctor_Employed`, `Contractual_Doctor_Employed`, `Year`, `Number_of_doctors_per_lakh_population`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 422, 92, 248, 14, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(2, 'Nalanda', 285, 95, 119, 55, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(3, 'Bhojpur', 194, 65, 129, 11, 2016, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(4, 'Buxar', 115, 54, 83, 2, 2016, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(5, 'Rohtas', 248, 89, 89, 30, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(6, 'Kaimur', 114, 48, 70, 11, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(7, 'Gaya', 400, 106, 108, 22, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(8, 'Jehanabad', 150, 46, 83, 11, 2016, 8, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(9, 'Arwal', 81, 26, 11, 14, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(10, 'Nawada', 198, 45, 68, 2, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(11, 'Aurangabad', 193, 60, 53, 18, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(12, 'Saran', 165, 94, 76, 37, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(13, 'Siwan', 234, 108, 75, 31, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(14, 'Gopalganj', 101, 69, 70, 19, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(15, 'WestChamparan', 132, 83, 71, 24, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(16, 'EastChamparan', 190, 128, 106, 42, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(17, 'Muzaffarpur', 274, 64, 108, 17, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(18, 'Sitamarhi', 170, 68, 64, 16, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(19, 'Sheohar', 103, 19, 37, 5, 2016, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(20, 'Vaishali', 239, 69, 104, 14, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(21, 'Darbhanga', 163, 89, 80, 53, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(22, 'Madhubani', 366, 85, 101, 21, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(23, 'Samastipur', 192, 95, 102, 16, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(24, 'Begusarai', 146, 94, 60, 13, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(25, 'Munger', 145, 44, 72, 5, 2016, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(26, 'Sheikhpura', 190, 24, 65, 6, 2016, 10, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(27, 'Lakhisarai', 122, 30, 55, 3, 2016, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(28, 'Jamui', 131, 48, 59, 16, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(29, 'Khagaria', 123, 44, 59, 11, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(30, 'Bhagalpur', 206, 64, 84, 9, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(31, 'Banka', 167, 58, 70, 8, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(32, 'Saharsa', 167, 55, 53, 116, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(33, 'Supaul', 251, 48, 83, 12, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(34, 'Madhepura', 190, 67, 51, 25, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(35, 'Purnia', 226, 64, 117, 13, 2016, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(36, 'Kishanganj', 85, 28, 47, 5, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(37, 'Araria', 179, 36, 61, 4, 2016, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(38, 'Katihar', 192, 78, 192, 192, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(39, 'Bihar', 7249, 2479, 3183, 923, 2016, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(40, 'Patna', 422, 92, 248, 18, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(41, 'Nalanda', 285, 95, 117, 58, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(42, 'Bhojpur', 194, 65, 129, 11, 2017, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(43, 'Buxar', 115, 54, 84, 3, 2017, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(44, 'Rohtas', 248, 89, 85, 27, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(45, 'Kaimur', 114, 48, 70, 15, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(46, 'Gaya', 400, 106, 106, 22, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(47, 'Jehanabad', 150, 46, 86, 11, 2017, 8, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(48, 'Arwal', 81, 26, 28, 11, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(49, 'Nawada', 198, 45, 74, 2, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(50, 'Aurangabad', 193, 60, 58, 30, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(51, 'Saran', 165, 94, 121, 34, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(52, 'Siwan', 234, 108, 80, 32, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(53, 'Gopalganj', 101, 69, 69, 26, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(54, 'WestChamparan', 132, 83, 65, 26, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(55, 'EastChamparan', 190, 128, 99, 36, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(56, 'Muzaffarpur', 274, 64, 108, 17, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(57, 'Sitamarhi', 170, 68, 62, 16, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(58, 'Sheohar', 103, 19, 32, 5, 2017, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(59, 'Vaishali', 239, 69, 136, 4, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(60, 'Darbhanga', 163, 89, 72, 10, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(61, 'Madhubani', 366, 85, 92, 17, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(62, 'Samastipur', 192, 95, 102, 15, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(63, 'Begusarai', 146, 94, 70, 13, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(64, 'Munger', 145, 44, 71, 5, 2017, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(65, 'Sheikhpura', 190, 24, 65, 5, 2017, 10, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(66, 'Lakhisarai', 122, 30, 52, 1, 2017, 5, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(67, 'Jamui', 131, 48, 54, 16, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(68, 'Khagaria', 123, 44, 59, 12, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(69, 'Bhagalpur', 206, 64, 82, 9, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(70, 'Banka', 167, 58, 70, 6, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(71, 'Saharsa', 167, 55, 53, 116, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(72, 'Supaul', 251, 48, 83, 11, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(73, 'Madhepura', 190, 67, 51, 31, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(74, 'Purnia', 226, 64, 117, 13, 2017, 4, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(75, 'Kishanganj', 85, 28, 47, 5, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(76, 'Araria', 179, 36, 56, 4, 2017, 2, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(77, 'Katihar', 192, 78, 93, 16, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51'),
(78, 'Bihar', 7249, 2479, 3146, 709, 2017, 3, '2018-08-08 10:39:51', '2018-08-08 10:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `health17s`
--

DROP TABLE IF EXISTS `health17s`;
CREATE TABLE `health17s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Regular_Post_sanctioned` float DEFAULT NULL,
  `Contractual_Post_sanctioned` float DEFAULT NULL,
  `Regular_Grade_A_Nurses_Employed` float DEFAULT NULL,
  `Contractual_Grade_A_Nurses_Employed` float DEFAULT NULL,
  `Number_of_Grade_A_Nurses_per_lakh_population` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health17s`
--

INSERT INTO `health17s` (`id`, `Districts`, `Regular_Post_sanctioned`, `Contractual_Post_sanctioned`, `Regular_Grade_A_Nurses_Employed`, `Contractual_Grade_A_Nurses_Employed`, `Number_of_Grade_A_Nurses_per_lakh_population`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 161, 46, 158, 23, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(2, 'Nalanda', 129, 88, 92, 32, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(3, 'Bhojpur', 162, 54, 47, 10, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(4, 'Buxar', 85, 74, 33, 2, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(5, 'Rohtas', 88, 20, 32, 18, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(6, 'Kaimur', 38, 44, 17, 9, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(7, 'Gaya', 174, 25, 77, 16, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(8, 'Jehanabad', 85, 34, 60, 3, 7, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(9, 'Arwal', 50, 56, 6, 3, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(10, 'Nawada', 82, 175, 67, 13, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(11, 'Aurangabad', 35, 128, 22, 6, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(12, 'Saran', 86, 25, 24, 5, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(13, 'Siwan', 147, 110, 14, 2, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(14, 'Gopalganj', 84, 18, 15, 4, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(15, 'WestChamparan', 108, 37, 26, 28, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(16, 'EastChamparan', 165, 48, 25, 37, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(17, 'Muzaffarpur', 152, 54, 53, 1, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(18, 'Sitamarhi', 116, 17, 15, 14, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(19, 'Sheohar', 59, 34, 3, 6, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(20, 'Vaishali', 258, 118, 45, 49, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(21, 'Darbhanga', 154, 30, 29, 9, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(22, 'Madhubani', 364, 114, 26, 7, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(23, 'Samastipur', 304, 146, 97, 6, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(24, 'Begusarai', 128, 102, 116, 4, 4, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(25, 'Munger', 119, 38, 103, 0, 7, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(26, 'Sheikhpura', 74, 34, 33, 4, 7, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(27, 'Lakhisarai', 73, 38, 38, 12, 5, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(28, 'Jamui', 75, 85, 31, 41, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(29, 'Khagaria', 61, 50, 59, 6, 4, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(30, 'Bhagalpur', 108, 165, 75, 7, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(31, 'Banka', 67, 64, 58, 56, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(32, 'Saharsa', 167, 64, 30, 38, 3, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(33, 'Supaul', 172, 107, 25, 2, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(34, 'Madhepura', 58, 9, 6, 8, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(35, 'Purnia', 110, 112, 62, 9, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(36, 'Kishanganj', 60, 44, 18, 2, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(37, 'Araria', 96, 39, 14, 7, 1, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(38, 'Katihar', 250, 104, 49, 6, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(39, 'Bihar', 4704, 2550, 1700, 505, 2, 2015, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(40, 'Patna', 161, 46, 158, 23, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(41, 'Nalanda', 129, 88, 88, 32, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(42, 'Bhojpur', 162, 54, 60, 1, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(43, 'Buxar', 85, 74, 45, 2, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(44, 'Rohtas', 88, 20, 54, 18, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(45, 'Kaimur', 38, 44, 29, 9, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(46, 'Gaya', 174, 25, 97, 16, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(47, 'Jehanabad', 85, 34, 76, 3, 7, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(48, 'Arwal', 50, 56, 20, 3, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(49, 'Nawada', 82, 175, 75, 13, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(50, 'Aurangabad', 35, 128, 31, 6, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(51, 'Saran', 86, 25, 9, 5, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(52, 'Siwan', 147, 110, 14, 2, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(53, 'Gopalganj', 84, 18, 29, 4, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(54, 'WestChamparan', 108, 37, 39, 5, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(55, 'EastChamparan', 165, 48, 17, 37, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(56, 'Muzaffarpur', 152, 54, 39, 0, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(57, 'Sitamarhi', 116, 17, 33, 14, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(58, 'Sheohar', 59, 34, 11, 5, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(59, 'Vaishali', 258, 118, 69, 49, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(60, 'Darbhanga', 154, 30, 28, 2, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(61, 'Madhubani', 364, 114, 60, 7, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(62, 'Samastipur', 304, 146, 120, 2, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(63, 'Begusarai', 128, 102, 118, 4, 4, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(64, 'Munger', 119, 38, 103, 0, 7, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(65, 'Sheikhpura', 74, 34, 33, 4, 7, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(66, 'Lakhisarai', 73, 38, 53, 23, 5, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(67, 'Jamui', 75, 85, 40, 8, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(68, 'Khagaria', 61, 50, 57, 2, 4, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(69, 'Bhagalpur', 108, 165, 75, 7, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(70, 'Banka', 67, 64, 59, 7, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(71, 'Saharsa', 167, 64, 47, 38, 3, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(72, 'Supaul', 172, 107, 39, 1, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(73, 'Madhepura', 58, 9, 31, 8, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(74, 'Purnia', 110, 112, 79, 9, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(75, 'Kishanganj', 60, 44, 23, 1, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(76, 'Araria', 96, 39, 25, 7, 1, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(77, 'Katihar', 250, 104, 49, 6, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(78, 'Bihar', 4704, 2550, 2032, 383, 2, 2016, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(79, 'Patna', 161, 46, 134, 4, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(80, 'Nalanda', 129, 88, 98, 3, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(81, 'Bhojpur', 162, 54, 60, 1, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(82, 'Buxar', 85, 74, 42, 1, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(83, 'Rohtas', 88, 20, 54, 11, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(84, 'Kaimur', 38, 44, 28, 9, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(85, 'Gaya', 174, 25, 95, 16, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(86, 'Jehanabad', 85, 34, 77, 1, 7, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(87, 'Arwal', 50, 56, 19, 2, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(88, 'Nawada', 82, 175, 75, 0, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(89, 'Aurangabad', 35, 128, 30, 2, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(90, 'Saran', 86, 25, 47, 6, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(91, 'Siwan', 147, 110, 35, 0, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(92, 'Gopalganj', 84, 18, 31, 2, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(93, 'WestChamparan', 108, 37, 39, 4, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(94, 'EastChamparan', 165, 48, 36, 37, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(95, 'Muzaffarpur', 152, 54, 39, 0, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(96, 'Sitamarhi', 116, 17, 33, 14, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(97, 'Sheohar', 59, 34, 9, 4, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(98, 'Vaishali', 258, 118, 69, 1, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(99, 'Darbhanga', 154, 30, 28, 2, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(100, 'Madhubani', 364, 114, 53, 2, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(101, 'Samastipur', 304, 146, 120, 2, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(102, 'Begusarai', 128, 102, 122, 1, 4, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(103, 'Munger', 119, 38, 100, 0, 7, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(104, 'Sheikhpura', 74, 34, 44, 1, 7, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(105, 'Lakhisarai', 73, 38, 53, 1, 5, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(106, 'Jamui', 75, 85, 38, 8, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(107, 'Khagaria', 61, 50, 59, 2, 4, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(108, 'Bhagalpur', 108, 165, 76, 1, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(109, 'Banka', 67, 64, 59, 7, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(110, 'Saharsa', 167, 64, 49, 4, 3, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(111, 'Supaul', 172, 107, 40, 1, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(112, 'Madhepura', 58, 9, 31, 2, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(113, 'Purnia', 110, 112, 75, 2, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(114, 'Kishanganj', 60, 44, 23, 1, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(115, 'Araria', 96, 39, 27, 5, 1, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(116, 'Katihar', 250, 104, 49, 6, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10'),
(117, 'Bihar', 4704, 2550, 2096, 166, 2, 2017, '2018-08-08 11:26:10', '2018-08-08 11:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `health18s`
--

DROP TABLE IF EXISTS `health18s`;
CREATE TABLE `health18s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Regular_Post_sanctioned` float DEFAULT NULL,
  `Contractual_Post_sanctioned` float DEFAULT NULL,
  `Regular_ANM_Employed` float DEFAULT NULL,
  `Contractual_ANM_Employed` float DEFAULT NULL,
  `Number_of_ANM_per_lakh_population` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health18s`
--

INSERT INTO `health18s` (`id`, `Districts`, `Regular_Post_sanctioned`, `Contractual_Post_sanctioned`, `Regular_ANM_Employed`, `Contractual_ANM_Employed`, `Number_of_ANM_per_lakh_population`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 1155, 418, 491, 375, 16, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(2, 'Nalanda', 835, 370, 389, 358, 25, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(3, 'Bhojpur', 706, 350, 295, 345, 14, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(4, 'Buxar', 382, 162, 158, 161, 12, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(5, 'Rohtas', 593, 308, 211, 255, 14, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(6, 'Kaimur', 325, 287, 119, 223, 16, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(7, 'Gaya', 1170, 541, 479, 487, 15, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(8, 'Jehanabad', 351, 151, 176, 192, 15, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(9, 'Arwal', 125, 65, 65, 62, 12, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(10, 'Nawada', 443, 525, 208, 118, 10, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(11, 'Aurangabad', 581, 308, 280, 292, 13, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(12, 'Saran', 789, 643, 291, 382, 9, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(13, 'Siwan', 501, 370, 224, 265, 9, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(14, 'Gopalganj', 512, 186, 199, 113, 8, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(15, 'WestChamparan', 535, 895, 254, 646, 7, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(16, 'EastChamparan', 1017, 503, 316, 470, 4, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(17, 'Muzaffarpur', 956, 583, 592, 379, 15, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(18, 'Sitamarhi', 684, 213, 216, 100, 6, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(19, 'Sheohar', 97, 172, 18, 111, 4, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(20, 'Vaishali', 764, 418, 329, 296, 13, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(21, 'Darbhanga', 585, 419, 220, 312, 7, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(22, 'Madhubani', 1017, 702, 283, 299, 7, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(23, 'Samastipur', 854, 486, 494, 437, 13, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(24, 'Begusarai', 661, 360, 382, 347, 18, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(25, 'Munger', 491, 165, 141, 159, 26, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(26, 'Sheikhpura', 257, 123, 105, 90, 24, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(27, 'Lakhisarai', 400, 102, 125, 100, 23, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(28, 'Jamui', 609, 212, 139, 193, 15, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(29, 'Khagaria', 362, 193, 159, 173, 16, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(30, 'Bhagalpur', 567, 362, 333, 336, 20, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(31, 'Banka', 406, 265, 361, 254, 17, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(32, 'Saharsa', 350, 212, 138, 155, 7, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(33, 'Supaul', 212, 246, 68, 172, 4, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(34, 'Madhepura', 399, 153, 77, 87, 5, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(35, 'Purnia', 655, 370, 198, 392, 8, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(36, 'Kishanganj', 338, 186, 78, 149, 4, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(37, 'Araria', 561, 290, 129, 216, 5, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(38, 'Katihar', 614, 345, 234, 210, 10, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(39, 'Bihar', 21859, 12659, 8974, 9711, 12, 2015, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(40, 'Patna', 1155, 418, 939, 247, 16, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(41, 'Nalanda', 835, 370, 750, 210, 25, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(42, 'Bhojpur', 706, 350, 377, 172, 14, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(43, 'Buxar', 382, 162, 207, 105, 12, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(44, 'Rohtas', 593, 308, 409, 102, 14, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(45, 'Kaimur', 325, 287, 245, 97, 16, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(46, 'Gaya', 1170, 541, 640, 303, 15, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(47, 'Jehanabad', 351, 151, 243, 195, 15, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(48, 'Arwal', 125, 65, 87, 60, 12, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(49, 'Nawada', 443, 525, 221, 91, 10, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(50, 'Aurangabad', 581, 308, 339, 156, 13, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(51, 'Saran', 789, 643, 358, 360, 9, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(52, 'Siwan', 501, 370, 329, 122, 9, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(53, 'Gopalganj', 512, 186, 206, 107, 8, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(54, 'WestChamparan', 535, 895, 295, 570, 7, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(55, 'EastChamparan', 1017, 503, 242, 399, 4, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(56, 'Muzaffarpur', 956, 583, 702, 234, 15, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(57, 'Sitamarhi', 684, 213, 217, 96, 6, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(58, 'Sheohar', 97, 172, 23, 101, 4, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(59, 'Vaishali', 764, 418, 444, 266, 13, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(60, 'Darbhanga', 585, 419, 301, 248, 7, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(61, 'Madhubani', 1017, 702, 321, 239, 7, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(62, 'Samastipur', 854, 486, 537, 200, 13, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(63, 'Begusarai', 661, 360, 493, 217, 18, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(64, 'Munger', 491, 165, 358, 64, 26, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(65, 'Sheikhpura', 257, 123, 105, 46, 24, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(66, 'Lakhisarai', 400, 102, 230, 87, 23, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(67, 'Jamui', 609, 212, 211, 182, 15, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(68, 'Khagaria', 362, 193, 228, 110, 16, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(69, 'Bhagalpur', 567, 362, 618, 247, 20, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(70, 'Banka', 406, 265, 361, 125, 17, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(71, 'Saharsa', 350, 212, 152, 137, 7, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(72, 'Supaul', 212, 246, 90, 148, 4, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(73, 'Madhepura', 399, 153, 101, 72, 5, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(74, 'Purnia', 655, 370, 280, 184, 8, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(75, 'Kishanganj', 338, 186, 82, 126, 4, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(76, 'Araria', 561, 290, 153, 213, 5, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(77, 'Katihar', 614, 345, 311, 210, 10, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(78, 'Bihar', 21859, 12659, 12205, 6848, 12, 2016, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(79, 'Patna', 1155, 418, 948, 172, 16, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(80, 'Nalanda', 835, 370, 720, 143, 25, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(81, 'Bhojpur', 706, 350, 377, 172, 14, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(82, 'Buxar', 382, 162, 202, 86, 12, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(83, 'Rohtas', 593, 308, 409, 91, 14, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(84, 'Kaimur', 325, 287, 257, 99, 16, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(85, 'Gaya', 1170, 541, 641, 254, 15, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(86, 'Jehanabad', 351, 151, 173, 71, 15, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(87, 'Arwal', 125, 65, 85, 32, 12, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(88, 'Nawada', 443, 525, 214, 91, 10, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(89, 'Aurangabad', 581, 308, 333, 154, 13, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(90, 'Saran', 789, 643, 344, 267, 9, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(91, 'Siwan', 501, 370, 295, 113, 9, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(92, 'Gopalganj', 512, 186, 205, 107, 8, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(93, 'WestChamparan', 535, 895, 295, 570, 7, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(94, 'EastChamparan', 1017, 503, 228, 374, 4, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(95, 'Muzaffarpur', 956, 583, 702, 234, 15, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(96, 'Sitamarhi', 684, 213, 215, 81, 6, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(97, 'Sheohar', 97, 172, 23, 92, 4, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(98, 'Vaishali', 764, 418, 444, 162, 13, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(99, 'Darbhanga', 585, 419, 269, 196, 7, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(100, 'Madhubani', 1017, 702, 312, 211, 7, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(101, 'Samastipur', 854, 486, 537, 189, 13, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(102, 'Begusarai', 661, 360, 529, 172, 18, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(103, 'Munger', 491, 165, 361, 64, 26, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(104, 'Sheikhpura', 257, 123, 155, 43, 24, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(105, 'Lakhisarai', 400, 102, 230, 45, 23, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(106, 'Jamui', 609, 212, 257, 118, 15, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(107, 'Khagaria', 362, 193, 273, 79, 16, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(108, 'Bhagalpur', 567, 362, 614, 152, 20, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(109, 'Banka', 406, 265, 353, 123, 17, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(110, 'Saharsa', 350, 212, 140, 116, 7, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(111, 'Supaul', 212, 246, 86, 148, 4, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(112, 'Madhepura', 399, 153, 105, 75, 5, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(113, 'Purnia', 655, 370, 268, 184, 8, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(114, 'Kishanganj', 338, 186, 74, 111, 4, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(115, 'Araria', 561, 290, 150, 157, 5, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(116, 'Katihar', 614, 345, 311, 210, 10, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27'),
(117, 'Bihar', 21859, 12659, 12134, 5758, 12, 2017, '2018-08-08 12:32:27', '2018-08-08 12:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `health19s`
--

DROP TABLE IF EXISTS `health19s`;
CREATE TABLE `health19s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Target` float DEFAULT NULL,
  `Selection` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health19s`
--

INSERT INTO `health19s` (`id`, `Districts`, `Target`, `Selection`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 3233, 3018, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(2, 'Nalanda', 2365, 2313, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(3, 'Bhojpur', 2264, 2199, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(4, 'Buxar', 1493, 1474, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(5, 'Rohtas', 2490, 2430, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(6, 'Kaimur', 1462, 1462, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(7, 'Gaya', 3514, 3442, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(8, 'Jehanabad', 871, 870, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(9, 'Arwal', 773, 746, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(10, 'Nawada', 1959, 1928, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(11, 'Aurangabad', 2160, 2142, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(12, 'Saran', 3459, 3385, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(13, 'Siwan', 3008, 2834, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(14, 'Gopalganj', 2371, 2336, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(15, 'WestChamparan', 3206, 3043, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(16, 'EastChamparan', 4326, 3906, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(17, 'Muzaffarpur', 3984, 3856, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(18, 'Sitamarhi', 2965, 2912, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(19, 'Sheohar', 580, 572, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(20, 'Vaishali', 2969, 2888, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(21, 'Darbhanga', 3550, 3100, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(22, 'Madhubani', 4046, 3682, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(23, 'Samastipur', 3835, 3779, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(24, 'Begusarai', 2629, 2410, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(25, 'Munger', 961, 956, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(26, 'Sheikhpura', 520, 476, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(27, 'Lakhisarai', 802, 756, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(28, 'Jamui', 1520, 1504, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(29, 'Khagaria', 1412, 1399, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(30, 'Bhagalpur', 2311, 2236, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(31, 'Banka', 1820, 1782, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(32, 'Saharsa', 1622, 1471, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(33, 'Supaul', 1928, 1912, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(34, 'Madhepura', 1711, 1655, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(35, 'Purnia', 2723, 2634, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(36, 'Kishanganj', 1368, 1280, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(37, 'Araria', 2376, 2365, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(38, 'Katihar', 2549, 2549, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(39, 'Bihar', 87135, 83702, 2013, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(40, 'Patna', 5842, 3018, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(41, 'Nalanda', 2880, 2316, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(42, 'Bhojpur', 2731, 2188, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(43, 'Buxar', 1708, 1474, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(44, 'Rohtas', 2962, 2454, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(45, 'Kaimur', 1628, 1462, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(46, 'Gaya', 4395, 3448, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(47, 'Jehanabad', 1126, 870, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(48, 'Arwal', 773, 750, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(49, 'Nawada', 2221, 1956, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(50, 'Aurangabad', 2542, 2142, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(51, 'Saran', 3955, 3402, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(52, 'Siwan', 3334, 2822, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(53, 'Gopalganj', 2564, 2374, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(54, 'WestChamparan', 3935, 3108, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(55, 'EastChamparan', 5099, 4060, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(56, 'Muzaffarpur', 4805, 3858, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(57, 'Sitamarhi', 3424, 2919, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(58, 'Sheohar', 656, 572, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(59, 'Vaishali', 3498, 3019, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(60, 'Darbhanga', 3941, 3118, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(61, 'Madhubani', 4487, 3853, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(62, 'Samastipur', 4266, 3794, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(63, 'Begusarai', 2973, 2403, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(64, 'Munger', 1369, 952, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(65, 'Sheikhpura', 637, 476, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(66, 'Lakhisarai', 1002, 901, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(67, 'Jamui', 1762, 1505, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(68, 'Khagaria', 1668, 1468, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(69, 'Bhagalpur', 3040, 2232, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(70, 'Banka', 2037, 1809, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(71, 'Saharsa', 1902, 1471, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(72, 'Supaul', 2229, 2093, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(73, 'Madhepura', 2004, 1674, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(74, 'Purnia', 3268, 2709, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(75, 'Kishanganj', 1690, 1290, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(76, 'Araria', 2812, 2365, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(77, 'Katihar', 3074, 2720, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(78, 'Bihar', 104239, 85045, 2014, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(79, 'Patna', 3461, 3043, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(80, 'Nalanda', 2415, 2316, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(81, 'Bhojpur', 2331, 2079, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(82, 'Buxar', 1551, 1474, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(83, 'Rohtas', 2538, 2465, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(84, 'Kaimur', 1570, 1483, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(85, 'Gaya', 3878, 3448, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(86, 'Jehanabad', 990, 870, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(87, 'Arwal', 749, 749, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(88, 'Nawada', 2004, 1957, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(89, 'Aurangabad', 2299, 2213, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(90, 'Saran', 3602, 3406, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(91, 'Siwan', 3136, 2822, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(92, 'Gopalganj', 2396, 2390, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(93, 'WestChamparan', 3644, 3135, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(94, 'EastChamparan', 4684, 4060, 2015, '2018-08-08 12:42:20', '2018-08-08 12:42:20'),
(95, 'Muzaffarpur', 4510, 3880, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(96, 'Sitamarhi', 3259, 2919, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(97, 'Sheohar', 646, 572, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(98, 'Vaishali', 3265, 3121, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(99, 'Darbhanga', 3729, 3192, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(100, 'Madhubani', 4298, 3902, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(101, 'Samastipur', 4161, 3798, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(102, 'Begusarai', 2493, 2410, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(103, 'Munger', 1014, 953, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(104, 'Sheikhpura', 526, 476, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(105, 'Lakhisarai', 900, 898, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(106, 'Jamui', 1654, 1509, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(107, 'Khagaria', 1571, 1499, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(108, 'Bhagalpur', 2435, 2236, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(109, 'Banka', 1966, 1819, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(110, 'Saharsa', 1823, 1471, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(111, 'Supaul', 2140, 2111, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(112, 'Madhepura', 2049, 1704, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(113, 'Purnia', 2983, 2817, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(114, 'Kishanganj', 1585, 1298, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(115, 'Araria', 2637, 2237, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(116, 'Katihar', 2795, 2770, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(117, 'Bihar', 93687, 85502, 2015, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(118, 'Patna', 3461, 2992, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(119, 'Nalanda', 2415, 2316, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(120, 'Bhojpur', 2331, 2079, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(121, 'Buxar', 1551, 1494, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(122, 'Rohtas', 2538, 2465, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(123, 'Kaimur', 1570, 1509, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(124, 'Gaya', 3878, 3448, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(125, 'Jehanabad', 990, 870, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(126, 'Arwal', 749, 747, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(127, 'Nawada', 2004, 1957, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(128, 'Aurangabad', 2299, 2243, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(129, 'Saran', 3602, 3408, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(130, 'Siwan', 3136, 2822, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(131, 'Gopalganj', 2396, 2395, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(132, 'WestChamparan', 3644, 3178, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(133, 'EastChamparan', 4684, 4060, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(134, 'Muzaffarpur', 4510, 3880, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(135, 'Sitamarhi', 3259, 2919, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(136, 'Sheohar', 646, 572, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(137, 'Vaishali', 3265, 3129, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(138, 'Darbhanga', 3729, 3242, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(139, 'Madhubani', 4298, 3910, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(140, 'Samastipur', 4161, 3798, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(141, 'Begusarai', 2493, 2410, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(142, 'Munger', 1014, 953, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(143, 'Sheikhpura', 526, 478, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(144, 'Lakhisarai', 900, 898, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(145, 'Jamui', 1654, 1509, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(146, 'Khagaria', 1571, 1501, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(147, 'Bhagalpur', 2435, 2236, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(148, 'Banka', 1966, 1819, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(149, 'Saharsa', 1823, 1471, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(150, 'Supaul', 2140, 2111, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(151, 'Madhepura', 2049, 1704, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(152, 'Purnia', 2983, 2833, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(153, 'Kishanganj', 1585, 1298, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(154, 'Araria', 2637, 2284, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(155, 'Katihar', 2795, 2770, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21'),
(156, 'Bihar', 93687, 85708, 2016, '2018-08-08 12:42:21', '2018-08-08 12:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `health20s`
--

DROP TABLE IF EXISTS `health20s`;
CREATE TABLE `health20s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Institutional_Deliveries` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health20s`
--

INSERT INTO `health20s` (`id`, `Districts`, `Institutional_Deliveries`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 78, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(2, 'Nalanda', 46, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(3, 'Bhojpur', 43, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(4, 'Buxar', 24, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(5, 'Rohtas', 33, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(6, 'Kaimur', 26, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(7, 'Gaya', 52, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(8, 'Jehanabad', 21, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(9, 'Arwal', 10, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(10, 'Nawada', 33, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(11, 'Aurangabad', 36, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(12, 'Saran', 52, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(13, 'Siwan', 45, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(14, 'Gopalganj', 40, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(15, 'WestChamparan', 73, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(16, 'EastChamparan', 67, 2013, '2018-08-08 12:52:04', '2018-08-08 12:52:04'),
(17, 'Muzaffarpur', 56, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(18, 'Sitamarhi', 49, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(19, 'Sheohar', 10, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(20, 'Vaishali', 63, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(21, 'Darbhanga', 51, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(22, 'Madhubani', 54, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(23, 'Samastipur', 94, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(24, 'Begusarai', 57, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(25, 'Munger', 23, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(26, 'Sheikhpura', 13, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(27, 'Lakhisarai', 16, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(28, 'Jamui', 29, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(29, 'Khagaria', 36, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(30, 'Bhagalpur', 50, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(31, 'Banka', 36, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(32, 'Saharsa', 41, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(33, 'Supaul', 46, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(34, 'Madhepura', 38, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(35, 'Purnia', 73, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(36, 'Kishanganj', 27, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(37, 'Araria', 51, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(38, 'Katihar', 56, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(39, 'Bihar', 1648, 2013, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(40, 'Patna', 83, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(41, 'Nalanda', 41, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(42, 'Bhojpur', 39, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(43, 'Buxar', 25, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(44, 'Rohtas', 43, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(45, 'Kaimur', 23, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(46, 'Gaya', 63, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(47, 'Jehanabad', 16, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(48, 'Arwal', 10, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(49, 'Nawada', 32, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(50, 'Aurangabad', 36, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(51, 'Saran', 57, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(52, 'Siwan', 48, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(53, 'Gopalganj', 37, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(54, 'WestChamparan', 57, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(55, 'EastChamparan', 73, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(56, 'Muzaffarpur', 69, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(57, 'Sitamarhi', 49, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(58, 'Sheohar', 9, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(59, 'Vaishali', 50, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(60, 'Darbhanga', 57, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(61, 'Madhubani', 65, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(62, 'Samastipur', 61, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(63, 'Begusarai', 43, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(64, 'Munger', 20, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(65, 'Sheikhpura', 9, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(66, 'Lakhisarai', 14, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(67, 'Jamui', 25, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(68, 'Khagaria', 24, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(69, 'Bhagalpur', 44, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(70, 'Banka', 29, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(71, 'Saharsa', 27, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(72, 'Supaul', 32, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(73, 'Madhepura', 29, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(74, 'Purnia', 47, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(75, 'Kishanganj', 24, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(76, 'Araria', 40, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(77, 'Katihar', 44, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(78, 'Bihar', 1494, 2014, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(79, 'Patna', 64, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(80, 'Nalanda', 41, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(81, 'Bhojpur', 38, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(82, 'Buxar', 21, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(83, 'Rohtas', 27, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(84, 'Kaimur', 24, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(85, 'Gaya', 49, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(86, 'Jehanabad', 16, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(87, 'Arwal', 9, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(88, 'Nawada', 30, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(89, 'Aurangabad', 33, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(90, 'Saran', 48, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(91, 'Siwan', 39, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(92, 'Gopalganj', 38, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(93, 'WestChamparan', 67, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(94, 'EastChamparan', 62, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(95, 'Muzaffarpur', 54, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(96, 'Sitamarhi', 43, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(97, 'Sheohar', 9, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(98, 'Vaishali', 60, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(99, 'Darbhanga', 48, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(100, 'Madhubani', 54, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(101, 'Samastipur', 88, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(102, 'Begusarai', 55, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(103, 'Munger', 21, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(104, 'Sheikhpura', 13, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(105, 'Lakhisarai', 16, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(106, 'Jamui', 27, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(107, 'Khagaria', 34, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(108, 'Bhagalpur', 52, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(109, 'Banka', 35, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(110, 'Saharsa', 40, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(111, 'Supaul', 46, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(112, 'Madhepura', 37, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(113, 'Purnia', 71, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(114, 'Kishanganj', 21, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(115, 'Araria', 51, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(116, 'Katihar', 52, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(117, 'Bihar', 1533, 2015, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(118, 'Patna', 64, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(119, 'Nalanda', 39, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(120, 'Bhojpur', 36, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(121, 'Buxar', 21, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(122, 'Rohtas', 26, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(123, 'Kaimur', 24, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(124, 'Gaya', 47, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(125, 'Jehanabad', 14, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(126, 'Arwal', 9, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(127, 'Nawada', 28, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(128, 'Aurangabad', 31, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(129, 'Saran', 50, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(130, 'Siwan', 40, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(131, 'Gopalganj', 38, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(132, 'WestChamparan', 68, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(133, 'EastChamparan', 62, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(134, 'Muzaffarpur', 53, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(135, 'Sitamarhi', 45, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(136, 'Sheohar', 10, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(137, 'Vaishali', 60, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(138, 'Darbhanga', 50, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(139, 'Madhubani', 59, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(140, 'Samastipur', 89, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(141, 'Begusarai', 54, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(142, 'Munger', 21, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(143, 'Sheikhpura', 12, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(144, 'Lakhisarai', 15, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(145, 'Jamui', 27, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(146, 'Khagaria', 35, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(147, 'Bhagalpur', 51, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(148, 'Banka', 33, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(149, 'Saharsa', 40, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(150, 'Supaul', 47, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(151, 'Madhepura', 42, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(152, 'Purnia', 71, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(153, 'Kishanganj', 23, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(154, 'Araria', 54, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(155, 'Katihar', 57, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(156, 'Bihar', 1545, 2016, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(157, 'Patna', 32, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(158, 'Nalanda', 22, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(159, 'Bhojpur', 20, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(160, 'Buxar', 11, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(161, 'Rohtas', 13, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(162, 'Kaimur', 13, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(163, 'Gaya', 25, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(164, 'Jehanabad', 7, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(165, 'Arwal', 5, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(166, 'Nawada', 17, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(167, 'Aurangabad', 14, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(168, 'Saran', 27, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(169, 'Siwan', 21, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(170, 'Gopalganj', 20, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(171, 'WestChamparan', 32, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(172, 'EastChamparan', 35, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(173, 'Muzaffarpur', 26, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(174, 'Sitamarhi', 22, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(175, 'Sheohar', 5, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(176, 'Vaishali', 32, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(177, 'Darbhanga', 25, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(178, 'Madhubani', 28, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(179, 'Samastipur', 47, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(180, 'Begusarai', 28, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(181, 'Munger', 12, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(182, 'Sheikhpura', 7, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(183, 'Lakhisarai', 8, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(184, 'Jamui', 16, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(185, 'Khagaria', 18, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(186, 'Bhagalpur', 27, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(187, 'Banka', 18, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(188, 'Saharsa', 17, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(189, 'Supaul', 23, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(190, 'Madhepura', 23, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(191, 'Purnia', 35, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(192, 'Kishanganj', 13, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(193, 'Araria', 25, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(194, 'Katihar', 32, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05'),
(195, 'Bihar', 801, 2017, '2018-08-08 12:52:05', '2018-08-08 12:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `health21s`
--

DROP TABLE IF EXISTS `health21s`;
CREATE TABLE `health21s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Acute_Diarrheal_Disease` float DEFAULT NULL,
  `Bacillary_Dysentery` float DEFAULT NULL,
  `Viral_Hepatitis` float DEFAULT NULL,
  `Enteric_Fever` float DEFAULT NULL,
  `Malaria` float DEFAULT NULL,
  `PUO` float DEFAULT NULL,
  `Acute_Respiratory_Infection` float DEFAULT NULL,
  `Pneumonia` float DEFAULT NULL,
  `Dogbite` float DEFAULT NULL,
  `Other_State_Specific_Disease` float DEFAULT NULL,
  `Unusual_Syndromes_Not_Captured` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health21s`
--

INSERT INTO `health21s` (`id`, `Districts`, `Acute_Diarrheal_Disease`, `Bacillary_Dysentery`, `Viral_Hepatitis`, `Enteric_Fever`, `Malaria`, `PUO`, `Acute_Respiratory_Infection`, `Pneumonia`, `Dogbite`, `Other_State_Specific_Disease`, `Unusual_Syndromes_Not_Captured`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 9760, 6463, 2666, 2918, 146, 10327, 10566, 1655, 15916, 3980, 10491, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(2, 'Nalanda', 4425, 2481, 0, 382, 485, 8037, 7677, 903, 11813, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(3, 'Bhojpur', 5772, 3164, 0, 880, 0, 54, 17499, 9, 12219, 343, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(4, 'Buxar', 898, 2677, 87, 4204, 113, 4426, 29871, 1471, 1940, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(5, 'Rohtas', 10608, 1950, 242, 10516, 1166, 10876, 21643, 1137, 10623, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(6, 'Kaimur', 5981, 3699, 29, 13511, 344, 7230, 10424, 580, 3241, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(7, 'Gaya', 3135, 2459, 18, 1669, 1810, 14442, 11814, 554, 2585, 1991, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(8, 'Jehanabad', 5415, 3174, 8, 3717, 17, 14209, 17928, 364, 6421, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(9, 'Arwal', 1666, 1781, 0, 1510, 0, 5225, 2100, 88, 3508, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(10, 'Nawada', 5882, 3671, 6577, 1579, 2336, 16935, 4912, 1792, 4465, 2446, 4749, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(11, 'Aurangabad', 2794, 1019, 0, 961, 96, 530, 2513, 1120, 2523, 228, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(12, 'Saran', 1973, 904, 0, 395, 27, 4695, 3411, 92, 2080, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(13, 'Siwan', 11048, 5266, 0, 5930, 303, 35485, 41796, 608, 9632, 1395, 1052, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(14, 'Gopalganj', 6703, 548, 35, 391, 22, 29367, 31078, 266, 3777, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(15, 'WestChamparan', 13942, 1229, 0, 0, 0, 2090, 17737, 1241, 4077, 1243, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(16, 'EastChamparan', 1725, 1322, 0, 925, 0, 5104, 1541, 780, 473, 405, 170, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(17, 'Muzaffarpur', 14374, 3413, 616, 6590, 939, 30021, 24126, 1088, 15079, 0, 935, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(18, 'Sitamarhi', 12037, 5902, 0, 3843, 1, 7193, 18084, 1549, 9677, 131, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(19, 'Sheohar', 3391, 2367, 0, 2598, 3, 1467, 3074, 0, 2405, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(20, 'Vaishali', 13639, 17576, 5860, 21389, 810, 26354, 62227, 1376, 14576, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(21, 'Darbhanga', 4155, 2177, 1021, 1898, 171, 4684, 16966, 47, 5191, 525, 2528, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(22, 'Madhubani', 13431, 8040, 290, 8860, 473, 12538, 25486, 332, 6034, 651, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(23, 'Samastipur', 16474, 11266, 1, 10846, 420, 29299, 37795, 174, 5471, 875, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(24, 'Begusarai', 14088, 3639, 29, 13511, 344, 28838, 25191, 145, 9943, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(25, 'Munger', 8099, 5605, 88, 291, 3438, 11207, 15887, 101, 4129, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(26, 'Sheikhpura', 610, 473, 0, 40, 43, 1268, 2128, 68, 1072, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(27, 'Lakhisarai', 1435, 788, 0, 324, 92, 422, 4069, 89, 1123, 1105, 663, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(28, 'Jamui', 6394, 6081, 7, 3685, 1148, 51307, 41903, 810, 2397, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(29, 'Khagaria', 18427, 2744, 0, 73, 11, 55581, 53838, 361, 1904, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(30, 'Bhagalpur', 236, 104, 0, 0, 0, 26459, 14062, 0, 6913, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(31, 'Banka', 2564, 794, 0, 813, 54, 1760, 23506, 52, 2314, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(32, 'Saharsa', 6016, 3856, 6, 1302, 0, 13227, 35047, 106, 1198, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(33, 'Supaul', 3388, 1935, 1, 993, 2, 9599, 3051, 29, 2156, 590, 748, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(34, 'Madhepura', 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(35, 'Purnia', 13202, 5536, 0, 3452, 13, 14626, 28011, 210, 2646, 868, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(36, 'Kishanganj', 3944, 911, 179, 1586, 21, 2337, 3946, 0, 1420, 232, 0, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(37, 'Araria', 10995, 11935, 0, 1010, 1538, 2610, 3714, 162, 1124, 863, 303, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(38, 'Katihar', 11719, 6396, 0, 2333, 1344, 7283, 16676, 140, 1771, 122, 1747, '2018-08-08 13:02:54', '2018-08-08 13:02:54'),
(39, 'Bihar', 270383, 143345, 17760, 134925, 17730, 507112, 691297, 19499, 193836, 17993, 23386, '2018-08-08 13:02:54', '2018-08-08 13:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `health22s`
--

DROP TABLE IF EXISTS `health22s`;
CREATE TABLE `health22s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `NRHM_Total` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health22s`
--

INSERT INTO `health22s` (`id`, `Districts`, `NRHM_Total`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 4035.69, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(2, 'Nalanda', 2963.24, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(3, 'Bhojpur', 2058.36, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(4, 'Buxar', 1382.92, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(5, 'Rohtas', 1932.67, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(6, 'Kaimur', 1703.82, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(7, 'Gaya', 4460.1, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(8, 'Jehanabad', 1329.96, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(9, 'Arwal', 920.83, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(10, 'Nawada', 1742.69, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(11, 'Aurangabad', 2594.13, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(12, 'Saran', 2851.63, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(13, 'Siwan', 2721.04, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(14, 'Gopalganj', 2520.83, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(15, 'WestChamparan', 3713.46, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(16, 'EastChamparan', 3822.36, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(17, 'Muzaffarpur', 3444.63, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(18, 'Sitamarhi', 2506.62, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(19, 'Sheohar', 646.29, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(20, 'Vaishali', 4011.61, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(21, 'Darbhanga', 3113.09, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(22, 'Madhubani', 3530.15, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(23, 'Samastipur', 4714.65, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(24, 'Begusarai', 3233.34, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(25, 'Munger', 1945.43, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(26, 'Sheikhpura', 814.86, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(27, 'Lakhisarai', 1046.17, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(28, 'Jamui', 1621.89, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(29, 'Khagaria', 1754.41, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(30, 'Bhagalpur', 3327.31, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(31, 'Banka', 2321.64, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(32, 'Saharsa', 2093.93, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(33, 'Supaul', 1858.28, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(34, 'Madhepura', 1951.99, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(35, 'Purnia', 3393.22, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(36, 'Kishanganj', 965.72, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(37, 'Araria', 1972.3, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(38, 'Katihar', 3131.46, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(39, 'Bihar', 94152.7, 2013, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(40, 'Patna', 5293.2, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(41, 'Nalanda', 3779.53, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(42, 'Bhojpur', 2648.43, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(43, 'Buxar', 1860.02, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(44, 'Rohtas', 1923.7, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(45, 'Kaimur', 1860.06, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(46, 'Gaya', 4056.57, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(47, 'Jehanabad', 1536.25, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(48, 'Arwal', 829.17, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(49, 'Nawada', 2048.67, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(50, 'Aurangabad', 2733.26, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(51, 'Saran', 2650.22, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(52, 'Siwan', 2537.74, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(53, 'Gopalganj', 2409.59, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(54, 'WestChamparan', 3834.59, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(55, 'EastChamparan', 5555.89, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(56, 'Muzaffarpur', 2848.42, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(57, 'Sitamarhi', 2150.8, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(58, 'Sheohar', 779.95, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(59, 'Vaishali', 3450.86, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(60, 'Darbhanga', 2920.53, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(61, 'Madhubani', 3091.18, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(62, 'Samastipur', 3872.8, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(63, 'Begusarai', 3552.2, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(64, 'Munger', 1513.31, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(65, 'Sheikhpura', 965.65, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(66, 'Lakhisarai', 1188.39, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(67, 'Jamui', 2450.75, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(68, 'Khagaria', 2322.32, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(69, 'Bhagalpur', 3267.48, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(70, 'Banka', 2594.63, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(71, 'Saharsa', 1962.26, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(72, 'Supaul', 2154.84, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(73, 'Madhepura', 2264.27, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(74, 'Purnia', 4414.5, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(75, 'Kishanganj', 1405.2, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(76, 'Araria', 2726.41, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(77, 'Katihar', 2742.98, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(78, 'Bihar', 100197, 2014, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(79, 'Patna', 3993.42, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(80, 'Nalanda', 3237.22, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(81, 'Bhojpur', 2715.25, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(82, 'Buxar', 1762.66, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(83, 'Rohtas', 2372.06, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(84, 'Kaimur', 2079.02, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(85, 'Gaya', 4118.13, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(86, 'Jehanabad', 1173.85, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(87, 'Arwal', 915.73, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(88, 'Nawada', 1909.12, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(89, 'Aurangabad', 2288.9, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(90, 'Saran', 3069.12, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(91, 'Siwan', 3284.57, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(92, 'Gopalganj', 2062.6, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(93, 'WestChamparan', 5111.42, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(94, 'EastChamparan', 3414.01, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(95, 'Muzaffarpur', 3381.03, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(96, 'Sitamarhi', 2620.85, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(97, 'Sheohar', 720.14, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(98, 'Vaishali', 3925.29, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(99, 'Darbhanga', 2466.06, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(100, 'Madhubani', 3602.8, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(101, 'Samastipur', 5684.7, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(102, 'Begusarai', 3236.42, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(103, 'Munger', 1712.3, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(104, 'Sheikhpura', 1141.25, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(105, 'Lakhisarai', 1362.4, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(106, 'Jamui', 2090.6, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(107, 'Khagaria', 1986.11, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(108, 'Bhagalpur', 3729.52, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(109, 'Banka', 2430.29, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(110, 'Saharsa', 2409.91, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(111, 'Supaul', 2689.32, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(112, 'Madhepura', 1974.33, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(113, 'Purnia', 3922.66, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(114, 'Kishanganj', 1327.24, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(115, 'Araria', 2797.04, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(116, 'Katihar', 4096.26, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(117, 'Bihar', 102814, 2015, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(118, 'Patna', 5550.03, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(119, 'Nalanda', 3506.71, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(120, 'Bhojpur', 2850.6, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(121, 'Buxar', 1854.8, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(122, 'Rohtas', 3293.57, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(123, 'Kaimur', 2330.84, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(124, 'Gaya', 4819.95, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(125, 'Jehanabad', 1623.98, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(126, 'Arwal', 1229.81, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(127, 'Nawada', 2781.61, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(128, 'Aurangabad', 3192.48, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(129, 'Saran', 4476.2, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(130, 'Siwan', 3021.85, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(131, 'Gopalganj', 3186.89, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(132, 'WestChamparan', 5483.08, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(133, 'EastChamparan', 6127.74, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(134, 'Muzaffarpur', 4200.25, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(135, 'Sitamarhi', 3954.29, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(136, 'Sheohar', 1045.64, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(137, 'Vaishali', 4979.16, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(138, 'Darbhanga', 3908, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(139, 'Madhubani', 4503.06, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(140, 'Samastipur', 5195.57, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(141, 'Begusarai', 4195.12, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(142, 'Munger', 1941.4, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(143, 'Sheikhpura', 1136.28, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(144, 'Lakhisarai', 1321.27, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(145, 'Jamui', 2718.46, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(146, 'Khagaria', 2481.58, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(147, 'Bhagalpur', 3720.49, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(148, 'Banka', 2701.92, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(149, 'Saharsa', 2726.17, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(150, 'Supaul', 3063.04, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(151, 'Madhepura', 2718.04, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(152, 'Purnia', 4776, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(153, 'Kishanganj', 2174.46, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(154, 'Araria', 3974.42, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(155, 'Katihar', 4530.91, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30'),
(156, 'Bihar', 127296, 2016, '2018-08-08 13:18:30', '2018-08-08 13:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `hhs`
--

DROP TABLE IF EXISTS `hhs`;
CREATE TABLE `hhs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `irrigation1s`
--

DROP TABLE IF EXISTS `irrigation1s`;
CREATE TABLE `irrigation1s` (
  `id` bigint(20) NOT NULL,
  `TypeofIrrigationPotential` varchar(255) DEFAULT NULL,
  `Ultimat_Potential` float DEFAULT NULL,
  `Created_Potential` float DEFAULT NULL,
  `Utilised_Potential` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irrigation1s`
--

INSERT INTO `irrigation1s` (`id`, `TypeofIrrigationPotential`, `Ultimat_Potential`, `Created_Potential`, `Utilised_Potential`, `created_at`, `updated_at`) VALUES
(1, 'MajorandMediumIrrigation', 53.53, 29.69, 26.72, '2018-08-03 05:36:08', '2018-08-03 05:36:08'),
(2, 'MinorIrrigation', 64.01, 40.79, 36.7, '2018-08-03 05:36:08', '2018-08-03 05:36:08'),
(3, 'SurfaceIrrigation', 15.44, 8.14, 7.32, '2018-08-03 05:36:08', '2018-08-03 05:36:08'),
(4, 'GroundWater', 48.57, 32.65, 29.38, '2018-08-03 05:36:08', '2018-08-03 05:36:08'),
(5, 'Total', 117.54, 70.48, 63.42, '2018-08-03 05:36:08', '2018-08-03 05:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `irrigation2s`
--

DROP TABLE IF EXISTS `irrigation2s`;
CREATE TABLE `irrigation2s` (
  `id` bigint(20) NOT NULL,
  `Name_of_Scheme` varchar(255) DEFAULT NULL,
  `Created_Irrigation_Potential` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irrigation2s`
--

INSERT INTO `irrigation2s` (`id`, `Name_of_Scheme`, `Created_Irrigation_Potential`, `created_at`, `updated_at`) VALUES
(1, 'Western Kosi Canal System', 2000, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(2, 'Durgawati Reservoir Scheme', 1000, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(3, 'Lavaich Rampur Barrage', 6550, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(4, 'Uderasthan Barrage Scheme', 2250, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(5, 'Solhanda Weir Scheme', 20, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(6, 'Nusratpur weir Scheme', 4000, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(7, 'Siwan weir Scheme', 2000, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(8, 'Eastern Gandak Canal Phase II', 4920, '2018-08-03 07:41:29', '2018-08-03 07:41:29'),
(9, 'Total', 22740, '2018-08-03 07:41:29', '2018-08-03 07:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `irrigation3s`
--

DROP TABLE IF EXISTS `irrigation3s`;
CREATE TABLE `irrigation3s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Created_Irrigation_Potential` float DEFAULT NULL,
  `Kharif_Target` float DEFAULT NULL,
  `Kharif_Irrigation` float DEFAULT NULL,
  `Rabi_Target` float DEFAULT NULL,
  `Rabi_Irrigation` float DEFAULT NULL,
  `Hot_Weather_Target` float DEFAULT NULL,
  `Hot_Weather_Irrigation` float DEFAULT NULL,
  `Total_Utilised_Irrigation_Potential` float DEFAULT NULL,
  `Utilisation_Efficiency` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irrigation3s`
--

INSERT INTO `irrigation3s` (`id`, `Year`, `Created_Irrigation_Potential`, `Kharif_Target`, `Kharif_Irrigation`, `Rabi_Target`, `Rabi_Irrigation`, `Hot_Weather_Target`, `Hot_Weather_Irrigation`, `Total_Utilised_Irrigation_Potential`, `Utilisation_Efficiency`, `created_at`, `updated_at`) VALUES
(1, 2012, 2913, 1491, 1394, 439, 366, 0, 0, 1760, 60.4, '2018-07-18 04:33:13', '2018-07-18 04:33:13'),
(2, 2013, 2921, 1865, 1614, 567, 491, 15, 15, 2120, 72.6, '2018-07-18 04:33:13', '2018-07-18 04:33:13'),
(3, 2014, 2925, 1865, 1628, 373, 314, 0, 0, 1942, 66.4, '2018-07-18 04:33:13', '2018-07-18 04:33:13'),
(4, 2015, 2946, 1918, 1718, 485, 382, 28, 26, 2125, 72.1, '2018-07-18 04:33:13', '2018-07-18 04:33:13'),
(5, 2016, 2969, 1982, 1931, 802, 714, 29, 28, 2672, 90, '2018-07-18 04:33:13', '2018-07-18 04:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `irrigation4s`
--

DROP TABLE IF EXISTS `irrigation4s`;
CREATE TABLE `irrigation4s` (
  `id` bigint(20) NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Management_of_irrigation_System_Transferred` float DEFAULT NULL,
  `Societies_ready_for_transfer_of_system` float DEFAULT NULL,
  `Applied_for_Registration` float DEFAULT NULL,
  `Under_the_process_of_motivation` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irrigation4s`
--

INSERT INTO `irrigation4s` (`id`, `Status`, `Management_of_irrigation_System_Transferred`, `Societies_ready_for_transfer_of_system`, `Applied_for_Registration`, `Under_the_process_of_motivation`, `Total`, `created_at`, `updated_at`) VALUES
(1, 'Number', 54, 27, 30, 511, 622, '2018-08-03 07:59:58', '2018-08-03 07:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `irrigation5s`
--

DROP TABLE IF EXISTS `irrigation5s`;
CREATE TABLE `irrigation5s` (
  `id` bigint(20) NOT NULL,
  `Irrigation_Sources` varchar(255) DEFAULT NULL,
  `Ultimate_Potential` float DEFAULT NULL,
  `Created_Potential` float DEFAULT NULL,
  `Utilized_Potential` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irrigation5s`
--

INSERT INTO `irrigation5s` (`id`, `Irrigation_Sources`, `Ultimate_Potential`, `Created_Potential`, `Utilized_Potential`, `created_at`, `updated_at`) VALUES
(1, 'Surface Irrigation', 15.44, 8.14, 7.32, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(2, 'Ahar / Pynes/ Irrigation Tanks', 0, 3.47, 3.12, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(3, 'Lift Irrigation', 0, 2.64, 2.37, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(4, 'Surface minor Irrigation Bear/ Slice Gates', 0, 2.03, 1.83, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(5, 'Ground Water Irrigation', 48.57, 32.65, 29.38, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(6, ' State Tubewells', 0, 8.37, 7.54, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(7, ' Private Tubewells', 0, 24.28, 21.84, '2018-08-03 07:28:57', '2018-08-03 07:28:57'),
(8, 'Total', 64.01, 40.79, 36.7, '2018-08-03 07:28:57', '2018-08-03 07:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `irrigation6s`
--

DROP TABLE IF EXISTS `irrigation6s`;
CREATE TABLE `irrigation6s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Surface_Canal` float DEFAULT NULL,
  `Tanks_including_Ahars_Pynes` float DEFAULT NULL,
  `Tubewells_Private_and_State` float DEFAULT NULL,
  `Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irrigation6s`
--

INSERT INTO `irrigation6s` (`id`, `Year`, `Surface_Canal`, `Tanks_including_Ahars_Pynes`, `Tubewells_Private_and_State`, `Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation`, `Total`, `created_at`, `updated_at`) VALUES
(1, 2012, 36315, 59407, 161962, 24220, 281904, '2018-07-18 05:58:17', '2018-07-18 05:58:17'),
(2, 2013, 26086, 41591, 64251, 9627, 141555, '2018-07-18 05:58:17', '2018-07-18 05:58:17'),
(3, 2014, 9310, 10934, 15610, 2564, 38418, '2018-07-18 05:58:17', '2018-07-18 05:58:17'),
(4, 2015, 0, 28631, 38440, 5055, 72126, '2018-07-18 05:58:17', '2018-07-18 05:58:17'),
(5, 2016, 2600, 20500, 86200, 18000, 127300, '2018-07-18 05:58:17', '2018-07-18 05:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `land1s`
--

DROP TABLE IF EXISTS `land1s`;
CREATE TABLE `land1s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Geographical_Area` float DEFAULT NULL,
  `Forests` float DEFAULT NULL,
  `Barren_Unculturable_Land` float DEFAULT NULL,
  `Land_put_to_Non_agricultural_use` float DEFAULT NULL,
  `Land_Area` float DEFAULT NULL,
  `Water_Area` float DEFAULT NULL,
  `Culturable_Waste` float DEFAULT NULL,
  `Permanent_Pastures` float DEFAULT NULL,
  `Land_under_Tree_Crops` float DEFAULT NULL,
  `Fallow_Land_excl_Current_Fallow` float DEFAULT NULL,
  `Current_Fallow` float DEFAULT NULL,
  `Total_Unculturable_Land` float DEFAULT NULL,
  `Net_Sown_Area` float DEFAULT NULL,
  `Gross_Sown_Area` float DEFAULT NULL,
  `Cropping_Intensity` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `land1s`
--

INSERT INTO `land1s` (`id`, `Year`, `Geographical_Area`, `Forests`, `Barren_Unculturable_Land`, `Land_put_to_Non_agricultural_use`, `Land_Area`, `Water_Area`, `Culturable_Waste`, `Permanent_Pastures`, `Land_under_Tree_Crops`, `Fallow_Land_excl_Current_Fallow`, `Current_Fallow`, `Total_Unculturable_Land`, `Net_Sown_Area`, `Gross_Sown_Area`, `Cropping_Intensity`, `created_at`, `updated_at`) VALUES
(1, 2010, 9359.57, 621.64, 431.72, 1699.74, 1342.69, 357.05, 45.34, 15.73, 244.56, 121.88, 920.27, 4100.87, 5258.7, 7194, 1.37, '2018-07-12 10:57:40', '2018-07-12 10:57:40'),
(2, 2011, 9359.57, 621.64, 431.72, 1702.54, 1345.57, 356.97, 45.23, 15.7, 244.57, 121.17, 781.26, 3963.82, 5395.75, 7646.76, 1.42, '2018-07-12 10:57:40', '2018-07-12 10:57:40'),
(3, 2012, 9359.57, 621.64, 431.72, 1708.38, 1352.89, 355.48, 45.02, 15.6, 246.34, 121.79, 766.7, 3957.17, 5402.39, 7777.52, 1.44, '2018-07-12 10:57:40', '2018-07-12 10:57:40'),
(4, 2013, 9359.57, 621.64, 431.72, 1712.28, 1356.8, 355.49, 44.89, 15.47, 247.36, 120.49, 913.49, 4107.32, 5252.25, 7580.14, 1.44, '2018-07-12 10:57:40', '2018-07-12 10:57:40'),
(5, 2014, 9359.57, 621.64, 431.72, 1712.1, 1359.77, 352.33, 44.67, 15.33, 247.81, 119.41, 888.59, 4081.25, 5278.32, 7672.95, 1.45, '2018-07-12 10:57:40', '2018-07-12 10:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

DROP TABLE IF EXISTS `lands`;
CREATE TABLE `lands` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Geographical_area` float DEFAULT NULL,
  `Forest` float DEFAULT NULL,
  `Barren_unculturable_land` float DEFAULT NULL,
  `Non_Agriculture_Land_area` float DEFAULT NULL,
  `Non_Agriculture_Perennial_Water_Area` float DEFAULT NULL,
  `Non_Agriculture_Temporary_Water_Area` float DEFAULT NULL,
  `Culturable_Waste_Land` float DEFAULT NULL,
  `Permanent_Pastures` float DEFAULT NULL,
  `Tree_Crops` float DEFAULT NULL,
  `Fallow_land` float DEFAULT NULL,
  `Current_Fallow` float DEFAULT NULL,
  `Total_Uncultivable_Land` float DEFAULT NULL,
  `Net_Area_Sown` float DEFAULT NULL,
  `Gross_Crop_Area` float DEFAULT NULL,
  `Cropping_Intensity` float DEFAULT NULL,
  `Geographical_area_Colour` varchar(255) DEFAULT NULL,
  `Forest_Colour` varchar(255) DEFAULT NULL,
  `Barren_unculturable_land_Colour` varchar(255) DEFAULT NULL,
  `Non_Agriculture_Land_area_Colour` varchar(255) DEFAULT NULL,
  `Non_Agriculture_Perennial_Water_Area_Colour` varchar(255) DEFAULT NULL,
  `Non_Agriculture_Temporary_Water_Area_Colour` varchar(255) DEFAULT NULL,
  `Culturable_Waste_Land_Colour` varchar(255) DEFAULT NULL,
  `Permanent_Pastures_Colour` varchar(255) DEFAULT NULL,
  `Tree_Crops_Colour` varchar(255) DEFAULT NULL,
  `_ColourFallow_land` varchar(255) DEFAULT NULL,
  `Current_Fallow_Colour` varchar(255) DEFAULT NULL,
  `Total_Uncultivable_Land_Colour` varchar(255) DEFAULT NULL,
  `Net_Area_Sown_Colour` varchar(255) DEFAULT NULL,
  `Gross_Crop_Area_Colour` varchar(255) DEFAULT NULL,
  `Cropping_Intensity_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lands`
--

INSERT INTO `lands` (`id`, `Districts`, `Geographical_area`, `Forest`, `Barren_unculturable_land`, `Non_Agriculture_Land_area`, `Non_Agriculture_Perennial_Water_Area`, `Non_Agriculture_Temporary_Water_Area`, `Culturable_Waste_Land`, `Permanent_Pastures`, `Tree_Crops`, `Fallow_land`, `Current_Fallow`, `Total_Uncultivable_Land`, `Net_Area_Sown`, `Gross_Crop_Area`, `Cropping_Intensity`, `Geographical_area_Colour`, `Forest_Colour`, `Barren_unculturable_land_Colour`, `Non_Agriculture_Land_area_Colour`, `Non_Agriculture_Perennial_Water_Area_Colour`, `Non_Agriculture_Temporary_Water_Area_Colour`, `Culturable_Waste_Land_Colour`, `Permanent_Pastures_Colour`, `Tree_Crops_Colour`, `_ColourFallow_land`, `Current_Fallow_Colour`, `Total_Uncultivable_Land_Colour`, `Net_Area_Sown_Colour`, `Gross_Crop_Area_Colour`, `Cropping_Intensity_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Araria', 271.7, 0.8, 5, 40.9, 6.4, 5.5, 0.5, 0.22, 19.15, 3.46, 68.11, 150.1, 121.5, 245.3, 2.02, 'Yellow', 'Red', 'Orange', 'Yellow', 'Dark_Yellow', 'Yellow', 'Red', 'Orange', 'Green', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Dark_Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(2, 'Saharsa', 164.5, 0, 10.8, 22.2, 4.8, 2.4, 0.4, 1.12, 4.41, 3.72, 16.35, 66.15, 98.4, 195.7, 1.99, 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Light_Green', 'Orange', 'Dark_Yellow', 'Orange', 'Orange', 'Orange', 'Yellow', 'Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(3, 'Jehanabad', 94, 0.6, 3.2, 13.9, 0.8, 0.5, 0.1, 0.08, 0.74, 0.21, 31.77, 52.09, 41.97, 78.23, 1.86, 'Orange', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(4, 'Vaishali', 201.4, 0, 24.1, 30.5, 5.8, 2, 0.1, 0.32, 9.79, 0.27, 0.23, 73.14, 128.3, 185.1, 1.84, 'Dark_Yellow', 'Red', 'Light_Green', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Dark_Yellow', 'Yellow', 'Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(5, 'Sheohar', 43.5, 0, 0.4, 10, 1.3, 0.2, 0, 0, 3.66, 0.82, 0.71, 17.03, 26.46, 48.92, 1.84, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(6, 'Sitamarhi', 221.8, 0, 1.8, 45.2, 2.5, 16, 0.1, 1.36, 13.95, 0.48, 12.19, 93.51, 128.3, 233.8, 1.82, 'Dark_Yellow', 'Red', 'Red', 'Yellow', 'Red', 'Dark_Green', 'Red', 'Light_Green', 'Yellow', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Light_Green', 'Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(7, 'Samastipur', 262.3, 0, 3.8, 54.7, 8.2, 0.8, 0, 0.06, 8.3, 0.89, 26.53, 103.3, 159, 287.2, 1.81, 'Yellow', 'Red', 'Orange', 'Light_Green', 'Yellow', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(8, 'Supaul', 238.6, 0, 20.2, 39.2, 9.8, 3.1, 1.4, 0.24, 3.12, 9.42, 0.21, 86.72, 151.8, 259, 1.71, 'Dark_Yellow', 'Red', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Light_Green', 'Red', 'Orange', 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(9, 'WestChamparan', 484.3, 91.8, 2.9, 71.1, 15.2, 8.7, 1.3, 1.13, 6.5, 2.2, 22.41, 223.2, 261.1, 423, 1.62, 'Dark_Green', 'Green', 'Red', 'Dark_Green', 'Dark_Green', 'Green', 'Dark_Yellow', 'Light_Green', 'Orange', 'Orange', 'Dark_Yellow', 'Light_Green', 'Green', 'Dark_Green', 'Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(10, 'Lakhisarai', 128.6, 13.5, 7, 9.3, 1.2, 4.8, 0.7, 0.05, 0.44, 6.26, 43.79, 86.98, 41.63, 66.83, 1.61, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Yellow', 'Yellow', 'Orange', 'Red', 'Orange', 'Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(11, 'Madhepura', 179.5, 0, 3.9, 26.8, 3.9, 1.2, 0, 0.05, 7.16, 1, 13.48, 57.45, 122.1, 193.8, 1.59, 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Red', 'Orange', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(12, 'Begusarai', 187.8, 0, 18, 30.2, 7.7, 4, 0, 0.01, 3.8, 0.81, 25, 89.5, 98.32, 154, 1.57, 'Dark_Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Orange', 'Yellow', 'Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(13, 'EastChamparan', 431.7, 0.1, 8.1, 51.6, 10.1, 15.2, 0.3, 0.42, 27.17, 2.93, 14.05, 129.8, 301.8, 448.7, 1.49, 'Green', 'Red', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Dark_Green', 'Red', 'Dark_Yellow', 'Dark_Green', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(14, 'Gopalganj', 203.7, 0, 5.5, 31.3, 2.1, 0.5, 1.4, 0.19, 7.48, 2.33, 7.88, 58.62, 145.1, 214.9, 1.48, 'Dark_Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(15, 'Rohtas', 390.7, 66.7, 16.8, 39.4, 9, 0.6, 1.1, 0.09, 2.92, 0.7, 6.05, 143.3, 247.3, 362.5, 1.47, 'Light_Green', 'Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Red', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Light_Green', 'Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(16, 'Muzaffarpur', 315.3, 0, 5.3, 51.5, 7.8, 4, 0.3, 0.03, 17.49, 1.34, 0.4, 88.16, 227.2, 334.2, 1.47, 'Yellow', 'Red', 'Orange', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Red', 'Red', 'Light_Green', 'Orange', 'Red', 'Orange', 'Light_Green', 'Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(17, 'Madhubani', 353.5, 0, 2.2, 71.3, 13.4, 2.2, 0.5, 1.27, 23.94, 2.9, 0.41, 118.3, 235.3, 343.6, 1.46, 'Light_Green', 'Red', 'Red', 'Dark_Green', 'Green', 'Dark_Yellow', 'Red', 'Light_Green', 'Green', 'Orange', 'Red', 'Dark_Yellow', 'Light_Green', 'Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(18, 'Jamui', 305.2, 92.9, 28.6, 39.6, 2.2, 2.8, 10.3, 1.65, 2.13, 15.99, 61.91, 257.9, 47.32, 69, 1.46, 'Yellow', 'Green', 'Green', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Green', 'Green', 'Red', 'Dark_Green', 'Light_Green', 'Green', 'Red', 'Orange', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(19, 'Bihar', 9359, 621.6, 431.7, 1359.7, 207.4, 144.9, 44.7, 15.33, 247.8, 119.4, 888.5, 4081.2, 5278.3, 7672.9, 1.45, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(20, 'Kishanganj', 189, 0.4, 11.2, 25.9, 7.3, 2.7, 1.2, 0.41, 5.22, 3, 36.21, 93.41, 95.66, 137.1, 1.43, 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(21, 'Khagaria', 149.3, 0, 13.6, 19.3, 7.7, 4.1, 0.6, 0.21, 3.11, 2.16, 4.25, 55.12, 94.24, 135, 1.43, 'Orange', 'Red', 'Yellow', 'Red', 'Dark_Yellow', 'Yellow', 'Orange', 'Orange', 'Red', 'Orange', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(22, 'Aurangabad', 330, 18.8, 16.4, 56.5, 1.7, 1.7, 1.8, 0.54, 0.65, 1.13, 26.92, 125.7, 204.2, 289.8, 1.42, 'Yellow', 'Orange', 'Yellow', 'Light_Green', 'Red', 'Orange', 'Yellow', 'Yellow', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(23, 'Katihar', 291.3, 1.8, 22.1, 42.2, 12.1, 4.2, 0.6, 0.12, 11.12, 5.89, 12.88, 112.9, 178.3, 252.4, 1.42, 'Yellow', 'Red', 'Light_Green', 'Yellow', 'Green', 'Yellow', 'Orange', 'Red', 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(24, 'Kaimur', 342.4, 113, 19.3, 31.1, 2.5, 1.6, 1.9, 0.13, 0.76, 0.1, 26.39, 196.6, 145.7, 207.7, 1.42, 'Yellow', 'Dark_Green', 'Light_Green', 'Dark_Yellow', 'Red', 'Orange', 'Yellow', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(25, 'Siwan', 224.4, 0, 8.7, 29.8, 2, 1.6, 0.7, 0.15, 8.95, 1.42, 7.45, 60.66, 163.7, 226.9, 1.39, 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Orange', 'Red', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(26, 'Buxar', 167, 0, 2.2, 13.2, 3.2, 1.1, 0.6, 0.02, 0.78, 0.56, 0.58, 22.28, 144.7, 200.5, 1.39, 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(27, 'Banka', 305.6, 46.3, 43, 36.9, 2.9, 3.1, 7.9, 1.06, 7.45, 11.14, 32.35, 192, 113.5, 150.8, 1.33, 'Yellow', 'Dark_Yellow', 'Dark_Green', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Green', 'Light_Green', 'Dark_Yellow', 'Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(28, 'Purnia', 313.8, 0.1, 12.3, 38, 6.9, 1.6, 1.1, 0.05, 8.91, 4.65, 80.84, 154.5, 159.3, 209.3, 1.31, 'Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Yellow', 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(29, 'Sheikhpura', 62.1, 0, 1, 7.8, 0.9, 2, 0.2, 0, 0.32, 1.62, 0.4, 14.22, 47.88, 61.71, 1.29, 'Red', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Orange', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(30, 'Patna', 317.2, 0.1, 12.4, 67.8, 10.3, 2.1, 0.7, 0.1, 1.03, 1.54, 63, 158.9, 158.2, 202.7, 1.28, 'Yellow', 'Red', 'Yellow', 'Green', 'Light_Green', 'Dark_Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Light_Green', 'Yellow', 'Yellow', 'Light_Green', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(31, 'Saran', 264.8, 0, 17.9, 28.8, 3.5, 0.2, 0.2, 0.15, 8.62, 3.62, 36.77, 99.62, 165.2, 209.8, 1.27, 'Yellow', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Yellow', 'Light_Green', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(32, 'Nalanda', 232.7, 4.6, 1.2, 35.9, 2.5, 7.1, 0.2, 0.03, 1.31, 0.17, 0.5, 53.46, 179.3, 225, 1.25, 'Dark_Yellow', 'Red', 'Red', 'Dark_Yellow', 'Red', 'Light_Green', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Yellow', 'Light_Green', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(33, 'Gaya', 493.7, 77.8, 27.5, 63.3, 3.8, 6.1, 3.2, 2.07, 3.92, 11.25, 110, 309, 184.6, 228.3, 1.24, 'Dark_Green', 'Light_Green', 'Green', 'Green', 'Red', 'Light_Green', 'Light_Green', 'Dark_Green', 'Red', 'Green', 'Dark_Green', 'Dark_Green', 'Yellow', 'Light_Green', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(34, 'Bhagalpur', 254.3, 0.1, 22.4, 54.8, 6.6, 9.6, 2.3, 0.61, 6.74, 4.88, 14.01, 121.9, 132.3, 163.5, 1.24, 'Yellow', 'Red', 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Green', 'Light_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(35, 'Bhojpur', 237.3, 0, 6.7, 30.3, 2.8, 1.5, 0.6, 0.06, 2.07, 2.36, 14, 60.43, 176.9, 214.2, 1.21, 'Dark_Yellow', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Red', 'Red', 'Orange', 'Orange', 'Orange', 'Yellow', 'Light_Green', 'Orange', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(36, 'Nawada', 248.7, 63.2, 11.2, 25.8, 3, 7, 1.1, 0.86, 0.71, 2.63, 15.15, 131.2, 117.4, 141.4, 1.2, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Red', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(37, 'Darbhanga', 254, 0, 1.3, 44.3, 9.4, 7.4, 0.1, 0.14, 12.45, 2.13, 24.89, 102, 152, 179.3, 1.18, 'Yellow', 'Red', 'Red', 'Yellow', 'Yellow', 'Light_Green', 'Red', 'Red', 'Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Red', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(38, 'Munger', 139.7, 28.5, 11.4, 20.9, 5.8, 5.3, 0.9, 0.19, 0.61, 1.87, 24.48, 100, 39.79, 46.09, 1.16, 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Orange', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Red', '2018-07-27 07:16:26', '2018-07-27 07:16:26'),
(39, 'Arwal', 62.6, 0, 2.2, 9.2, 0.6, 0.8, 0.1, 0.14, 0.93, 1.56, 6, 21.46, 41.18, 46.64, 1.13, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 07:16:26', '2018-07-27 07:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `newrices`
--

DROP TABLE IF EXISTS `newrices`;
CREATE TABLE `newrices` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Productivity` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Area_Colour` varchar(255) DEFAULT NULL,
  `Production_Colour` varchar(255) DEFAULT NULL,
  `Productivity_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newrices`
--

INSERT INTO `newrices` (`id`, `Districts`, `Area`, `Production`, `Productivity`, `Year`, `Area_Colour`, `Production_Colour`, `Productivity_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Lakhisarai', 15.87, 67.77, 4271, 2015, 'Red', 'Orange', 'Dark_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(2, 'Sheikhpura', 24.72, 95.71, 3872, 2015, 'Red', 'Orange', 'Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(3, 'Rohtas', 196.66, 759.63, 3863, 2015, 'Green', 'Dark_Green', 'Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(4, 'Bhojpur', 88.04, 305.03, 3465, 2015, 'Dark_Yellow', 'Light_Green', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(5, 'Aurangabad', 160.23, 553.35, 3453, 2015, 'Light_Green', 'Green', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(6, 'Banka', 94.57, 316.98, 3352, 2015, 'Dark_Yellow', 'Light_Green', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(7, 'Arwal', 23.95, 74.84, 3124, 2015, 'Red', 'Orange', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(8, 'Buxar', 83.82, 258.64, 3086, 2015, 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(9, 'Patna', 63.68, 192.85, 3029, 2015, 'Orange', 'Dark_Yellow', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(10, 'Nalanda', 106.5, 308.51, 2897, 2015, 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(11, 'Jehanabad', 35.88, 96.1, 2679, 2015, 'Red', 'Orange', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(12, 'Munger', 27.39, 71.85, 2623, 2015, 'Red', 'Orange', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(13, 'Kaimur', 109.16, 282.27, 2586, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(14, 'Nawada', 68.35, 173.47, 2538, 2015, 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(15, 'Gaya', 99.93, 239.92, 2401, 2015, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(16, 'Bhagalpur', 32.91, 77.53, 2356, 2015, 'Red', 'Orange', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(17, 'Bihar', 3232.31, 6802.22, 2104, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(18, 'Katihar', 104.23, 218.71, 2098, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(19, 'Araria', 122.01, 252.08, 2066, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(20, 'Madhepura', 79.64, 162.1, 2035, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(21, 'Saharsa', 79.25, 157.26, 1984, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(22, 'Purnia', 86.06, 167.11, 1942, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(23, 'Supaul', 99.19, 188.01, 1895, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(24, 'Jamui', 70.38, 132.22, 1879, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(25, 'Khagaria', 20.92, 38.79, 1854, 2015, 'Red', 'Red', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(26, 'WestChamparan', 144.59, 266.72, 1845, 2015, 'Yellow', 'Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(27, 'Kishanganj', 78.34, 138.93, 1773, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(28, 'Samastipur', 99.45, 167.44, 1684, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(29, 'Begusarai', 18.53, 29.35, 1584, 2015, 'Red', 'Red', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(30, 'Siwan', 90.96, 143.48, 1577, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(31, 'Darbhanga', 78.96, 110.7, 1402, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(32, 'Saran', 68.74, 74.25, 1080, 2015, 'Orange', 'Orange', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(33, 'Madhubani', 204.78, 211.88, 1035, 2015, 'Dark_Green', 'Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(34, 'Vaishali', 43.72, 44.58, 1020, 2015, 'Red', 'Red', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(35, 'Sitamarhi', 96.75, 93.52, 967, 2015, 'Dark_Yellow', 'Orange', 'Red', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(36, 'Muzaffarpur', 113.99, 108.34, 951, 2015, 'Yellow', 'Dark_Yellow', 'Red', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(37, 'Gopalganj', 84.25, 70.28, 834, 2015, 'Dark_Yellow', 'Orange', 'Red', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(38, 'EastChamparan', 193.28, 139.59, 722, 2015, 'Green', 'Dark_Yellow', 'Red', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(39, 'Sheohar', 22.66, 12.46, 550, 2015, 'Red', 'Red', 'Red', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(40, 'Munger', 24.45, 91.74, 3752, 2016, 'Red', 'Orange', 'Dark_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(41, 'Aurangabad', 175.2, 619.15, 3534, 2016, 'Light_Green', 'Green', 'Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(42, 'Arwal', 41.71, 145.71, 3493, 2016, 'Red', 'Dark_Yellow', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(43, 'Nawada', 68.66, 237.33, 3457, 2016, 'Orange', 'Yellow', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(44, 'Banka', 95.54, 323.63, 3387, 2016, 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(45, 'Jamui', 18.15, 61.05, 3364, 2016, 'Red', 'Orange', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(46, 'Gaya', 98.65, 327.85, 3323, 2016, 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(47, 'Rohtas', 193.38, 640.72, 3313, 2016, 'Green', 'Dark_Green', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(48, 'Buxar', 87.78, 284.34, 3239, 2016, 'Dark_Yellow', 'Yellow', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(49, 'Nalanda', 115.09, 358.38, 3114, 2016, 'Yellow', 'Light_Green', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(50, 'Begusarai', 27.18, 84.52, 3109, 2016, 'Red', 'Orange', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(51, 'Lakhisarai', 71.39, 220.01, 3082, 2016, 'Dark_Yellow', 'Yellow', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(52, 'Jehanabad', 35.88, 108.64, 3028, 2016, 'Red', 'Dark_Yellow', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(53, 'Patna', 61.37, 184.64, 3009, 2016, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(54, 'Sheikhpura', 22.08, 63.27, 2865, 2016, 'Red', 'Orange', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(55, 'Kaimur', 118.1, 316.28, 2678, 2016, 'Yellow', 'Light_Green', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(56, 'Bhojpur', 98.9, 257.29, 2601, 2016, 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(57, 'Madhepura', 84.09, 217.78, 2590, 2016, 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(58, 'Samastipur', 88.67, 222.67, 2511, 2016, 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(59, 'Bihar', 3339.78, 8238.77, 2467, 2016, 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(60, 'Bhagalpur', 32, 74.22, 2319, 2016, 'Red', 'Orange', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(61, 'Purnia', 120.95, 276.75, 2288, 2016, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(62, 'Katihar', 109.9, 242.53, 2207, 2016, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(63, 'Vaishali', 39.62, 85.9, 2168, 2016, 'Red', 'Orange', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(64, 'Kishanganj', 78.41, 167.19, 2132, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(65, 'Sitamarhi', 96.29, 204.63, 2125, 2016, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(66, 'Saran', 76.45, 151.59, 1983, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(67, 'Araria', 115.83, 227.56, 1965, 2016, 'Yellow', 'Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(68, 'Siwan', 90.48, 177.47, 1961, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(69, 'WestChamparan', 148.49, 290.9, 1959, 2016, 'Yellow', 'Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(70, 'Supaul', 104.63, 203.08, 1941, 2016, 'Yellow', 'Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(71, 'Khagaria', 22.25, 42.68, 1918, 2016, 'Red', 'Red', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(72, 'EastChamparan', 185.07, 346.11, 1870, 2016, 'Light_Green', 'Light_Green', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(73, 'Darbhanga', 78.61, 144.4, 1837, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(74, 'Madhubani', 206.62, 363.13, 1757, 2016, 'Dark_Green', 'Light_Green', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(75, 'Saharsa', 78.69, 135.79, 1726, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(76, 'Sheohar', 22.12, 35.78, 1617, 2016, 'Red', 'Red', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(77, 'Gopalganj', 83.02, 134.16, 1616, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-24 11:24:13', '2018-07-24 11:24:13'),
(78, 'Muzaffarpur', 124.09, 169.91, 1369, 2016, 'Yellow', 'Dark_Yellow', 'Red', '2018-07-24 11:24:13', '2018-07-24 11:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `production_and_productivity_of_rices`
--

DROP TABLE IF EXISTS `production_and_productivity_of_rices`;
CREATE TABLE `production_and_productivity_of_rices` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Productivity` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_and_productivity_of_rices`
--

INSERT INTO `production_and_productivity_of_rices` (`id`, `Districts`, `Area`, `Production`, `Productivity`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 63.68, 192.85, 3029, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(2, 'Nalanda', 106.5, 308.51, 2897, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(3, 'Bhojpur', 88.04, 305.03, 3465, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(4, 'Buxar', 83.82, 258.64, 3086, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(5, 'Rohtas', 196.66, 759.63, 3863, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(6, 'Kaimur', 109.16, 282.27, 2586, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(7, 'Gaya', 99.93, 239.92, 2401, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(8, 'Jehanabad', 35.88, 96.1, 2679, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(9, 'Arwal', 23.95, 74.84, 3124, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(10, 'Nawada', 68.35, 173.47, 2538, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(11, 'Aurangabad', 160.23, 553.35, 3453, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(12, 'Saran', 68.74, 74.25, 1080, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(13, 'Siwan', 90.96, 143.48, 1577, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(14, 'Gopalganj', 84.25, 70.28, 834, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(15, 'WestChamparan', 144.59, 266.72, 1845, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(16, 'EastChamparan', 193.28, 139.59, 722, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(17, 'Muzaffarpur', 113.99, 108.34, 951, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(18, 'Sitamarhi', 96.75, 93.52, 967, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(19, 'Sheohar', 22.66, 12.46, 550, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(20, 'Vaishali', 43.72, 44.58, 1020, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(21, 'Darbhanga', 78.96, 110.7, 1402, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(22, 'Madhubani', 204.78, 211.88, 1035, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(23, 'Samastipur', 99.45, 167.44, 1684, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(24, 'Begusarai', 18.53, 29.35, 1584, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(25, 'Munger', 27.39, 71.85, 2623, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(26, 'Sheikhpura', 24.72, 95.71, 3872, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(27, 'Lakhisarai', 15.87, 67.77, 4271, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(28, 'Jamui', 70.38, 132.22, 1879, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(29, 'Khagaria', 20.92, 38.79, 1854, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(30, 'Bhagalpur', 32.91, 77.53, 2356, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(31, 'Banka', 94.57, 316.98, 3352, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(32, 'Saharsa', 79.25, 157.26, 1984, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(33, 'Supaul', 99.19, 188.01, 1895, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(34, 'Madhepura', 79.64, 162.1, 2035, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(35, 'Purnia', 86.06, 167.11, 1942, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(36, 'Kishanganj', 78.34, 138.93, 1773, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(37, 'Araria', 122.01, 252.08, 2066, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(38, 'Katihar', 104.23, 218.71, 2098, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(39, 'Bihar', 3232.31, 6802.22, 2104, 2015, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(40, 'Patna', 61.37, 184.64, 3009, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(41, 'Nalanda', 115.09, 358.38, 3114, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(42, 'Bhojpur', 98.9, 257.29, 2601, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(43, 'Buxar', 87.78, 284.34, 3239, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(44, 'Rohtas', 193.38, 640.72, 3313, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(45, 'Kaimur', 118.1, 316.28, 2678, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(46, 'Gaya', 98.65, 327.85, 3323, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(47, 'Jehanabad', 35.88, 108.64, 3028, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(48, 'Arwal', 41.71, 145.71, 3493, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(49, 'Nawada', 68.66, 237.33, 3457, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(50, 'Aurangabad', 175.2, 619.15, 3534, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(51, 'Saran', 76.45, 151.59, 1983, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(52, 'Siwan', 90.48, 177.47, 1961, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(53, 'Gopalganj', 83.02, 134.16, 1616, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(54, 'WestChamparan', 148.49, 290.9, 1959, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(55, 'EastChamparan', 185.07, 346.11, 1870, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(56, 'Muzaffarpur', 124.09, 169.91, 1369, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(57, 'Sitamarhi', 96.29, 204.63, 2125, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(58, 'Sheohar', 22.12, 35.78, 1617, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(59, 'Vaishali', 39.62, 85.9, 2168, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(60, 'Darbhanga', 78.61, 144.4, 1837, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(61, 'Madhubani', 206.62, 363.13, 1757, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(62, 'Samastipur', 88.67, 222.67, 2511, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(63, 'Begusarai', 27.18, 84.52, 3109, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(64, 'Munger', 24.45, 91.74, 3752, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(65, 'Sheikhpura', 22.08, 63.27, 2865, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(66, 'Lakhisarai', 71.39, 220.01, 3082, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(67, 'Jamui', 18.15, 61.05, 3364, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(68, 'Khagaria', 22.25, 42.68, 1918, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(69, 'Bhagalpur', 32, 74.22, 2319, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(70, 'Banka', 95.54, 323.63, 3387, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(71, 'Saharsa', 78.69, 135.79, 1726, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(72, 'Supaul', 104.63, 203.08, 1941, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(73, 'Madhepura', 84.09, 217.78, 2590, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(74, 'Purnia', 120.95, 276.75, 2288, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(75, 'Kishanganj', 78.41, 167.19, 2132, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(76, 'Araria', 115.83, 227.56, 1965, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(77, 'Katihar', 109.9, 242.53, 2207, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06'),
(78, 'Bihar', 3339.78, 8238.77, 2467, 2016, '2018-07-10 10:49:06', '2018-07-10 10:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity1s`
--

DROP TABLE IF EXISTS `production_productivity1s`;
CREATE TABLE `production_productivity1s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Total_Cereals` float DEFAULT NULL,
  `Total_Rice` float DEFAULT NULL,
  `Autumn_Rice` float DEFAULT NULL,
  `Aghani_Rice` float DEFAULT NULL,
  `Summer_Rice` float DEFAULT NULL,
  `Wheat` float DEFAULT NULL,
  `Total_Maize` float DEFAULT NULL,
  `Kharif_Maize` float DEFAULT NULL,
  `Rabi_Maize` float DEFAULT NULL,
  `Summer_Maize` float DEFAULT NULL,
  `Total_Coarse_Cereals` float DEFAULT NULL,
  `Barley` float DEFAULT NULL,
  `Jowar` float DEFAULT NULL,
  `Bajra` float DEFAULT NULL,
  `Ragi` float DEFAULT NULL,
  `Small_Millets` float DEFAULT NULL,
  `Total_Pulses` float DEFAULT NULL,
  `Total_Kharif_Pulses` float DEFAULT NULL,
  `Urad` float DEFAULT NULL,
  `Bhadai_Moong` float DEFAULT NULL,
  `Kulthi` float DEFAULT NULL,
  `Ghagra` float DEFAULT NULL,
  `Other_Kharif_Pulses` float DEFAULT NULL,
  `Total_Rabi_Pulses` float DEFAULT NULL,
  `Arhar_Tur` float DEFAULT NULL,
  `Gram` float DEFAULT NULL,
  `Lentil` float DEFAULT NULL,
  `Pea` float DEFAULT NULL,
  `Khesari` float DEFAULT NULL,
  `Summer_Moong` float DEFAULT NULL,
  `Other_Rabi_Pulses` float DEFAULT NULL,
  `Total_Oilseeds` float DEFAULT NULL,
  `Castor_seed` float DEFAULT NULL,
  `Safflower_Kusum` float DEFAULT NULL,
  `Sesamum` float DEFAULT NULL,
  `Sunflower` float DEFAULT NULL,
  `Mustard` float DEFAULT NULL,
  `Linseed` float DEFAULT NULL,
  `Ground_Nut` float DEFAULT NULL,
  `Total_Fibre_Crops` float DEFAULT NULL,
  `Jute` float DEFAULT NULL,
  `Mesta` float DEFAULT NULL,
  `Sugarcane` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity1s`
--

INSERT INTO `production_productivity1s` (`id`, `Year`, `Total_Cereals`, `Total_Rice`, `Autumn_Rice`, `Aghani_Rice`, `Summer_Rice`, `Wheat`, `Total_Maize`, `Kharif_Maize`, `Rabi_Maize`, `Summer_Maize`, `Total_Coarse_Cereals`, `Barley`, `Jowar`, `Bajra`, `Ragi`, `Small_Millets`, `Total_Pulses`, `Total_Kharif_Pulses`, `Urad`, `Bhadai_Moong`, `Kulthi`, `Ghagra`, `Other_Kharif_Pulses`, `Total_Rabi_Pulses`, `Arhar_Tur`, `Gram`, `Lentil`, `Pea`, `Khesari`, `Summer_Moong`, `Other_Rabi_Pulses`, `Total_Oilseeds`, `Castor_seed`, `Safflower_Kusum`, `Sesamum`, `Sunflower`, `Mustard`, `Linseed`, `Ground_Nut`, `Total_Fibre_Crops`, `Jute`, `Mesta`, `Sugarcane`, `created_at`, `updated_at`) VALUES
(1, 2011, 17363.7, 8237.98, 914.23, 7141.12, 182.63, 6530.96, 2557.06, 622.42, 1098.17, 836.47, 2594.71, 16.69, 2.15, 5.01, 9.39, 4.41, 521.62, 27.81, 11.87, 4.7, 8.23, 0.57, 2.45, 493.81, 42.06, 76.82, 171.61, 19.23, 92.07, 90.1, 1.93, 174.47, 0.1, 0.23, 2.25, 22.87, 127.93, 20.27, 0.83, 1738.81, 1490.7, 248.11, 17746.5, '2018-07-16 10:51:18', '2018-07-16 10:51:18'),
(2, 2012, 17286.7, 8322.01, 960.01, 7076.17, 285.83, 6174.26, 2755.95, 926.32, 791, 1038.63, 2790.42, 15.23, 2.82, 4.84, 9.37, 2.21, 542.74, 29.5, 12.15, 7.18, 7.75, 0.78, 1.64, 513.25, 47.12, 86.19, 183.24, 19.25, 83.8, 92.13, 1.53, 182.73, 0.1, 0.08, 1.95, 22.24, 138.52, 19.05, 0.78, 1717.73, 1490.52, 227.49, 22219.7, '2018-07-16 10:51:18', '2018-07-16 10:51:18'),
(3, 2013, 15716.3, 6649.59, 798.68, 5634.96, 215.95, 6134.68, 2904.24, 778.21, 1199.39, 926.64, 2932.03, 14.25, 1.31, 3, 7.14, 2.09, 522.02, 30.96, 14.14, 7.36, 7.83, 0.34, 1.29, 491.06, 36.46, 70.34, 196.06, 18.35, 70.55, 98.01, 1.3, 157.18, 0.15, 1.32, 1.99, 19.79, 117.14, 15.87, 0.91, 1745.08, 1498.04, 247, 17938.7, '2018-07-16 10:51:18', '2018-07-16 10:51:18'),
(4, 2014, 14321.1, 8241.62, 1010.34, 7049.73, 181.56, 3570.21, 2478.75, 825.15, 913.78, 739.82, 2509.28, 13.43, 1.55, 3.73, 9.84, 1.98, 428.93, 33.69, 14.36, 9.23, 7.96, 0.43, 1.71, 395.24, 28.54, 57.49, 140.06, 17.31, 60.06, 90.73, 1.05, 127.01, 0.09, 0.08, 2.56, 16.64, 92.89, 14.16, 0.59, 1637.12, 1418.71, 218.41, 21117.4, '2018-07-16 10:51:18', '2018-07-16 10:51:18'),
(5, 2015, 14087.2, 6802.22, 725.21, 5876.03, 200.98, 4736.45, 2517.1, 692.7, 1105.14, 719.26, 2548.58, 13.9, 1.71, 4.64, 9.89, 1.34, 420.78, 28.98, 12.05, 8.34, 7.21, 0.49, 0.89, 391.8, 37.13, 58.55, 140.44, 17.94, 50.99, 86.02, 0.73, 126.52, 0.04, 0.09, 2.39, 16.2, 94.39, 12.91, 0.5, 1630.6, 1308.64, 322, 18175.6, '2018-07-16 10:51:18', '2018-07-16 10:51:18'),
(6, 2016, 18099.1, 8238.77, 949.37, 7065.07, 224.33, 5985.84, 3845.7, 624.3, 2131.51, 1089.89, 3874.5, 16.29, 1.91, 4.05, 3.46, 3.1, 461.67, 29.3, 11.49, 8.33, 7.63, 0.43, 1.43, 332.69, 33.17, 66.5, 146.88, 16.74, 55.18, 111.55, 2.35, 125.86, 0.07, 0.09, 1.78, 14.69, 97.68, 10.56, 0.99, 1571, 1356, 215, 18239.9, '2018-07-16 10:51:18', '2018-07-16 10:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity2s`
--

DROP TABLE IF EXISTS `production_productivity2s`;
CREATE TABLE `production_productivity2s` (
  `id` bigint(20) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Total_Cereals` float DEFAULT NULL,
  `Total_Rice` float DEFAULT NULL,
  `Autumn_Rice` float DEFAULT NULL,
  `Aghani_Rice` float DEFAULT NULL,
  `Summer_Rice` float DEFAULT NULL,
  `Wheat` float DEFAULT NULL,
  `Total_Maize` float DEFAULT NULL,
  `Kharif_Maize` float DEFAULT NULL,
  `Rabi_Maize` float DEFAULT NULL,
  `Summer_Maize` float DEFAULT NULL,
  `Total_Coarse_Cereals` float DEFAULT NULL,
  `Barley` float DEFAULT NULL,
  `Jowar` float DEFAULT NULL,
  `Bajra` float DEFAULT NULL,
  `Ragi` float DEFAULT NULL,
  `Small_Millets` float DEFAULT NULL,
  `Total_Pulses` float DEFAULT NULL,
  `Total_Kharif_Pulses` float DEFAULT NULL,
  `Urad` float DEFAULT NULL,
  `Bhadai_Moong` float DEFAULT NULL,
  `Kulthi` float DEFAULT NULL,
  `Ghagra` float DEFAULT NULL,
  `Other_Kharif_Pulses` float DEFAULT NULL,
  `Total_Rabi_Pulses` float DEFAULT NULL,
  `Arhar_Tur` float DEFAULT NULL,
  `Gram` float DEFAULT NULL,
  `Lentil` float DEFAULT NULL,
  `Pea` float DEFAULT NULL,
  `Khesari` float DEFAULT NULL,
  `Summer_Moong` float DEFAULT NULL,
  `Other_Rabi_Pulses` float DEFAULT NULL,
  `Total_Oilseeds` float DEFAULT NULL,
  `Castor_seed` float DEFAULT NULL,
  `Safflower_Kusum` float DEFAULT NULL,
  `Sesamum` float DEFAULT NULL,
  `Sunflower` float DEFAULT NULL,
  `Mustard` float DEFAULT NULL,
  `Linseed` float DEFAULT NULL,
  `Ground_Nut` float DEFAULT NULL,
  `Total_Fibre_Crops` float DEFAULT NULL,
  `Jute` float DEFAULT NULL,
  `Mesta` float DEFAULT NULL,
  `Sugarcane` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity2s`
--

INSERT INTO `production_productivity2s` (`id`, `Year`, `Total_Cereals`, `Total_Rice`, `Autumn_Rice`, `Aghani_Rice`, `Summer_Rice`, `Wheat`, `Total_Maize`, `Kharif_Maize`, `Rabi_Maize`, `Summer_Maize`, `Total_Coarse_Cereals`, `Barley`, `Jowar`, `Bajra`, `Ragi`, `Small_Millets`, `Total_Pulses`, `Total_Kharif_Pulses`, `Urad`, `Bhadai_Moong`, `Kulthi`, `Ghagra`, `Other_Kharif_Pulses`, `Total_Rabi_Pulses`, `Arhar_Tur`, `Gram`, `Lentil`, `Pea`, `Khesari`, `Summer_Moong`, `Other_Rabi_Pulses`, `Total_Oilseeds`, `Castor_seed`, `Safflower_Kusum`, `Sesamum`, `Sunflower`, `Mustard`, `Linseed`, `Ground_Nut`, `Total_Fibre_Crops`, `Jute`, `Mesta`, `Sugarcane`, `created_at`, `updated_at`) VALUES
(1, 2011, 17363.7, 8237.98, 914.23, 7141.12, 182.63, 6530.96, 2557.06, 622.42, 1098.17, 836.47, 2594.71, 16.69, 2.15, 5.01, 9.39, 4.41, 521.62, 27.81, 11.87, 4.7, 8.23, 0.57, 2.45, 493.81, 42.06, 76.82, 171.61, 19.23, 92.07, 90.1, 1.93, 174.47, 0.1, 0.23, 2.25, 22.87, 127.93, 20.27, 0.83, 1738.81, 1490.7, 248.11, 17746.5, '2018-07-16 11:35:25', '2018-07-16 11:35:25'),
(2, 2012, 17286.7, 8322.01, 960.01, 7076.17, 285.83, 6174.26, 2755.95, 926.32, 791, 1038.63, 2790.42, 15.23, 2.82, 4.84, 9.37, 2.21, 542.74, 29.5, 12.15, 7.18, 7.75, 0.78, 1.64, 513.25, 47.12, 86.19, 183.24, 19.25, 83.8, 92.13, 1.53, 182.73, 0.1, 0.08, 1.95, 22.24, 138.52, 19.05, 0.78, 1717.73, 1490.52, 227.49, 22219.7, '2018-07-16 11:35:25', '2018-07-16 11:35:25'),
(3, 2013, 15716.3, 6649.59, 798.68, 5634.96, 215.95, 6134.68, 2904.24, 778.21, 1199.39, 926.64, 2932.03, 14.25, 1.31, 3, 7.14, 2.09, 522.02, 30.96, 14.14, 7.36, 7.83, 0.34, 1.29, 491.06, 36.46, 70.34, 196.06, 18.35, 70.55, 98.01, 1.3, 157.18, 0.15, 1.32, 1.99, 19.79, 117.14, 15.87, 0.91, 1745.08, 1498.04, 247, 17938.7, '2018-07-16 11:35:25', '2018-07-16 11:35:25'),
(4, 2014, 14321.1, 8241.62, 1010.34, 7049.73, 181.56, 3570.21, 2478.75, 825.15, 913.78, 739.82, 2509.28, 13.43, 1.55, 3.73, 9.84, 1.98, 428.93, 33.69, 14.36, 9.23, 7.96, 0.43, 1.71, 395.24, 28.54, 57.49, 140.06, 17.31, 60.06, 90.73, 1.05, 127.01, 0.09, 0.08, 2.56, 16.64, 92.89, 14.16, 0.59, 1637.12, 1418.71, 218.41, 21117.4, '2018-07-16 11:35:25', '2018-07-16 11:35:25'),
(5, 2015, 14087.2, 6802.22, 725.21, 5876.03, 200.98, 4736.45, 2517.1, 692.7, 1105.14, 719.26, 2548.58, 13.9, 1.71, 4.64, 9.89, 1.34, 420.78, 28.98, 12.05, 8.34, 7.21, 0.49, 0.89, 391.8, 37.13, 58.55, 140.44, 17.94, 50.99, 86.02, 0.73, 126.52, 0.04, 0.09, 2.39, 16.2, 94.39, 12.91, 0.5, 1630.6, 1308.64, 322, 18175.6, '2018-07-16 11:35:25', '2018-07-16 11:35:25'),
(6, 2016, 18099.1, 8238.77, 949.37, 7065.07, 224.33, 5985.84, 3845.7, 624.3, 2131.51, 1089.89, 3874.5, 16.29, 1.91, 4.05, 3.46, 3.1, 461.67, 29.3, 11.49, 8.33, 7.63, 0.43, 1.43, 332.69, 33.17, 66.5, 146.88, 16.74, 55.18, 111.55, 2.35, 125.86, 0.07, 0.09, 1.78, 14.69, 97.68, 10.56, 0.99, 1571, 1356, 215, 18239.9, '2018-07-16 11:35:25', '2018-07-16 11:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity4s`
--

DROP TABLE IF EXISTS `production_productivity4s`;
CREATE TABLE `production_productivity4s` (
  `id` bigint(20) NOT NULL,
  `Fruits` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity4s`
--

INSERT INTO `production_productivity4s` (`id`, `Fruits`, `Area`, `Production`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Mango', 135.9, 1343.3, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(2, 'Guava', 29.7, 238.1, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(3, 'Litchi', 31.1, 233.9, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(4, 'Banana', 33.6, 1414, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(5, 'Pineapple', 4.2, 113.9, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(6, 'Papaya', 1.9, 48.5, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(7, 'Amla', 1.6, 14.8, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(8, 'Watermelon', 1.4, 30.7, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(9, 'Muskmelon', 1.1, 14.2, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(10, 'Others', 32.1, 297.1, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(11, 'Total', 272.6, 3748.5, 2012, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(12, 'Mango', 148.8, 1477.4, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(13, 'Guava', 30, 373.7, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(14, 'Litchi', 32.2, 258.7, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(15, 'Banana', 35.3, 1723.9, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(16, 'Pineapple', 4.2, 113.9, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(17, 'Papaya', 1.8, 62, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(18, 'Amla', 1.7, 16, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(19, 'Watermelon', 1.4, 30.7, 2013, '2018-07-17 14:22:19', '2018-07-17 14:22:19'),
(20, 'Muskmelon', 1.1, 14.2, 2013, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(21, 'Others', 32.1, 323.6, 2013, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(22, 'Total', 288.4, 4374.3, 2013, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(23, 'Mango', 148.4, 1271.6, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(24, 'Guava', 29.4, 370, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(25, 'Litchi', 32.2, 197.7, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(26, 'Banana', 34.6, 1526.5, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(27, 'Pineapple', 4.2, 116.4, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(28, 'Papaya', 1.9, 65.3, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(29, 'Amla', 1.7, 15.5, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(30, 'Watermelon', 2, 29.9, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(31, 'Muskmelon', 1.5, 12.8, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(32, 'Others', 32.1, 310.6, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(33, 'Total', 288, 3916.3, 2014, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(34, 'Mango', 149.1, 1464.9, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(35, 'Guava', 29.3, 370, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(36, 'Litchi', 32.1, 198, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(37, 'Banana', 34.8, 1535.3, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(38, 'Pineapple', 4.3, 116.3, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(39, 'Papaya', 1.6, 53.4, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(40, 'Amla', 1.5, 13.5, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(41, 'Watermelon', 1.4, 29.7, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(42, 'Muskmelon', 1.7, 12.9, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(43, 'Others', 32.4, 310.9, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(44, 'Total', 288.3, 4105, 2015, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(45, 'Mango', 150, 1472.4, 2016, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(46, 'Guava', 29.4, 370.4, 2016, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(47, 'Litchi', 32.2, 198.6, 2016, '2018-07-17 14:22:20', '2018-07-17 14:22:20'),
(48, 'Banana', 35.1, 1527.8, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(49, 'Pineapple', 4.3, 116.6, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(50, 'Papaya', 1.6, 43.9, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(51, 'Amla', 0.9, 14.2, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(52, 'Watermelon', 1.4, 29.7, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(53, 'Muskmelon', 1.7, 12.9, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(54, 'Others', 32.4, 311, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21'),
(55, 'Total', 288.9, 4097.5, 2016, '2018-07-17 14:22:21', '2018-07-17 14:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity5s`
--

DROP TABLE IF EXISTS `production_productivity5s`;
CREATE TABLE `production_productivity5s` (
  `id` bigint(20) NOT NULL,
  `Vegetables` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity5s`
--

INSERT INTO `production_productivity5s` (`id`, `Vegetables`, `Area`, `Production`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Potato', 318.99, 6345.55, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(2, 'Onion', 54.3, 1247.31, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(3, 'Tomato', 47.73, 1046.44, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(4, 'Cauliflower', 65.7, 1003.55, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(5, 'Cabbage', 39, 695.33, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(6, 'Brinjal', 57.6, 1141.57, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(7, 'Okra', 57.71, 762.9, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(8, 'Chilli', 44.82, 418.33, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(9, 'Bottlegourd', 40.27, 631.54, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(10, 'Cucumber', 4.02, 67.04, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(11, 'Pointedgourd', 6.59, 69.72, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(12, 'Bittergourd', 9.71, 67.25, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(13, 'Pea', 10.24, 65.85, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(14, 'Radish', 24.1, 246.55, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(15, 'Carrot', 9.27, 53.45, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(16, 'Sweet_Potato', 1.03, 8.34, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(17, 'Others', 92.81, 1099.43, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(18, 'Total', 883.88, 14970.2, 2014, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(19, 'Potato', 319.13, 6345.52, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(20, 'Onion', 54.03, 1247.34, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(21, 'Tomato', 45.81, 1001.01, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(22, 'Cauliflower', 65.71, 1003.9, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(23, 'Cabbage', 40.52, 719.81, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(24, 'Brinjal', 57.62, 1138.05, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(25, 'Okra', 57.9, 763, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(26, 'Chilli', 44.8, 418.3, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(27, 'Bottlegourd', 40.3, 631.6, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(28, 'Cucumber', 3.6, 67, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(29, 'Pointedgourd', 6.6, 69.6, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(30, 'Bittergourd', 9.7, 67.3, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(31, 'Pea', 10.4, 65.7, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(32, 'Radish', 24.3, 246.5, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(33, 'Carrot', 9.1, 53.4, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(34, 'Sweet_Potato', 0.9, 8.4, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(35, 'Others', 29, 395.4, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(36, 'Total', 819.41, 14241.8, 2015, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(37, 'Potato', 320.48, 6377.71, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(38, 'Onion', 54.06, 1248.96, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(39, 'Tomato', 46.21, 1009.6, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(40, 'Cauliflower', 66.11, 1003.74, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(41, 'Cabbage', 41.18, 725.9, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(42, 'Brinjal', 57.88, 1141.2, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(43, 'Okra', 58, 765.95, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(44, 'Chilli', 45.24, 476.84, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(45, 'Bottlegourd', 40.35, 634.73, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(46, 'Cucumber', 3.6, 67, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(47, 'Pointedgourd', 6.83, 72.13, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(48, 'Bittergourd', 9.71, 67.32, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(49, 'Pea', 10.54, 64.24, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(50, 'Radish', 24.35, 246.99, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(51, 'Carrot', 9.15, 53.73, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(52, 'Sweet_Potato', 0.9, 8.4, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(53, 'Others', 29.18, 397.79, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11'),
(54, 'Total', 823.75, 14362.2, 2016, '2018-07-18 06:23:11', '2018-07-18 06:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity7s`
--

DROP TABLE IF EXISTS `production_productivity7s`;
CREATE TABLE `production_productivity7s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Productivity` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Area_Colour` varchar(255) DEFAULT NULL,
  `Production_Colour` varchar(255) DEFAULT NULL,
  `Productivity_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity7s`
--

INSERT INTO `production_productivity7s` (`id`, `Districts`, `Area`, `Production`, `Productivity`, `Year`, `Area_Colour`, `Production_Colour`, `Productivity_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 2110.75, 4736.45, 2244, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(2, 'Rohtas', 131.58, 294.21, 2236, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(3, 'Sitamarhi', 88.03, 283.07, 3216, 2015, 'Yellow', 'Dark_Green', 'Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(4, 'Buxar', 90.52, 245.58, 2713, 2015, 'Light_Green', 'Green', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(5, 'Nalanda', 84.66, 211.69, 2500, 2015, 'Yellow', 'Green', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(6, 'Saran', 87.05, 182.64, 2098, 2015, 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(7, 'Bhojpur', 74.45, 181.38, 2436, 2015, 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(8, 'Siwan', 90.2, 181.03, 2007, 2015, 'Light_Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(9, 'Kaimur', 77.97, 177.97, 2283, 2015, 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(10, 'Gaya', 71.07, 175.09, 2464, 2015, 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(11, 'Gopalganj', 76.75, 174.19, 2269, 2015, 'Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(12, 'Darbhanga', 59.35, 172.95, 2914, 2015, 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(13, 'Aurangabad', 66.77, 152.21, 2280, 2015, 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(14, 'WestChamparan', 61.67, 147.1, 2385, 2015, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(15, 'Patna', 60.07, 143.99, 2397, 2015, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(16, 'Bhagalpur', 46.23, 143.02, 3094, 2015, 'Orange', 'Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(17, 'Begusarai', 60.6, 139.94, 2309, 2015, 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(18, 'EastChamparan', 121.13, 133.35, 1101, 2015, 'Green', 'Yellow', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(19, 'Madhubani', 90.46, 128.71, 1423, 2015, 'Light_Green', 'Yellow', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(20, 'Muzaffarpur', 80.08, 124.27, 1552, 2015, 'Yellow', 'Yellow', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(21, 'Samastipur', 46.61, 107.84, 2314, 2015, 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(22, 'Saharsa', 49.84, 103.65, 2080, 2015, 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(23, 'Madhepura', 33.27, 97.54, 2932, 2015, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(24, 'Supaul', 53.51, 94.61, 1768, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(25, 'Purnia', 26.73, 93.13, 3484, 2015, 'Red', 'Dark_Yellow', 'Dark_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(26, 'Katihar', 35.46, 92.44, 2607, 2015, 'Orange', 'Dark_Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(27, 'Nawada', 42.92, 86.53, 2016, 2015, 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(28, 'Khagaria', 29.36, 82.35, 2805, 2015, 'Red', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(29, 'Jamui', 52.12, 78.85, 1513, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(30, 'Vaishali', 40.88, 75.82, 1855, 2015, 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(31, 'Lakhisarai', 29.7, 70.16, 2362, 2015, 'Red', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(32, 'Araria', 25.99, 66.99, 2577, 2015, 'Red', 'Dark_Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(33, 'Banka', 24.81, 62.59, 2523, 2015, 'Red', 'Dark_Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(34, 'Jehanabad', 23.39, 61.71, 2639, 2015, 'Red', 'Dark_Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(35, 'Sheikhpura', 22.19, 55.47, 2500, 2015, 'Red', 'Dark_Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(36, 'Kishanganj', 14.85, 38.48, 2591, 2015, 'Red', 'Orange', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(37, 'Arwal', 12.78, 28.3, 2215, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(38, 'Munger', 14.38, 24.44, 1700, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(39, 'Sheohar', 13.34, 23.17, 1736, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(40, 'Rohtas', 140.55, 460.38, 3276, 2016, 'Dark_Green', 'Dark_Green', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(41, 'Saran', 89.82, 312.71, 3482, 2016, 'Yellow', 'Green', 'Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(42, 'EastChamparan', 118.63, 287.31, 2422, 2016, 'Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(43, 'Buxar', 82.73, 278.86, 3371, 2016, 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(44, 'Sitamarhi', 87.8, 273.72, 3118, 2016, 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(45, 'Nalanda', 84.13, 265.35, 3154, 2016, 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(46, 'Gopalganj', 77.64, 263.96, 3400, 2016, 'Yellow', 'Light_Green', 'Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(47, 'Siwan', 90.18, 263.04, 2917, 2016, 'Light_Green', 'Light_Green', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(48, 'Muzaffarpur', 92.18, 257.33, 2792, 2016, 'Light_Green', 'Light_Green', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(49, 'Begusarai', 60.6, 228.99, 3779, 2016, 'Dark_Yellow', 'Yellow', 'Dark_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(50, 'Patna', 60.44, 200.79, 3322, 2016, 'Dark_Yellow', 'Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(51, 'Gaya', 71.95, 199.49, 2773, 2016, 'Yellow', 'Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(52, 'Samastipur', 49.36, 185.32, 3755, 2016, 'Orange', 'Yellow', 'Dark_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(53, 'Kaimur', 81.29, 176.69, 2174, 2016, 'Yellow', 'Yellow', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(54, 'Madhubani', 92.17, 176.07, 1910, 2016, 'Light_Green', 'Yellow', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(55, 'Bhojpur', 50.36, 166.61, 3309, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(56, 'Aurangabad', 71.13, 165.65, 2329, 2016, 'Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(57, 'Bhagalpur', 48.35, 163.6, 3384, 2016, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(58, 'WestChamparan', 69.57, 154.24, 2217, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(59, 'Darbhanga', 59.88, 150.01, 2505, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(60, 'Vaishali', 43.14, 143.46, 3326, 2016, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(61, 'Nawada', 50.6, 141.05, 2787, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(62, 'Saharsa', 49.76, 133, 2673, 2016, 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(63, 'Jamui', 46.11, 102.98, 2233, 2016, 'Orange', 'Orange', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(64, 'Supaul', 51.18, 100.6, 1965, 2016, 'Dark_Yellow', 'Orange', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(65, 'Khagaria', 29.34, 89.31, 3044, 2016, 'Red', 'Orange', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(66, 'Lakhisarai', 29.4, 89.22, 3035, 2016, 'Red', 'Orange', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(67, 'Araria', 36.22, 88.81, 2452, 2016, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(68, 'Banka', 32.96, 88.2, 2676, 2016, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(69, 'Purnia', 35.39, 85.96, 2429, 2016, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(70, 'Sheikhpura', 22.19, 52.05, 2345, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(71, 'Jehanabad', 23.39, 46.06, 1970, 2016, 'Red', 'Red', 'Red', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(72, 'Kishanganj', 17.73, 39.25, 2214, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(73, 'Arwal', 14.28, 37.75, 2643, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(74, 'Sheohar', 14.31, 34.72, 2425, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(75, 'Munger', 13.89, 34.32, 2470, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(76, 'Madhepura', 9.6, 30.57, 3184, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(77, 'Katihar', 7.58, 18.45, 2435, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12'),
(78, 'Bihar', 2105.81, 5985.84, 2843, 2016, 'Dark_Green', 'Dark_Green', 'Yellow', '2018-07-27 07:41:12', '2018-07-27 07:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity8s`
--

DROP TABLE IF EXISTS `production_productivity8s`;
CREATE TABLE `production_productivity8s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Productivity` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Area_Colour` varchar(255) DEFAULT NULL,
  `Production_Colour` varchar(255) DEFAULT NULL,
  `Productivity_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity8s`
--

INSERT INTO `production_productivity8s` (`id`, `Districts`, `Area`, `Production`, `Productivity`, `Year`, `Area_Colour`, `Production_Colour`, `Productivity_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Katihar', 45.6, 365.95, 8025, 2015, 'Light_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(2, 'Bhagalpur', 44.9, 233.34, 5197, 2015, 'Yellow', 'Green', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(3, 'Darbhanga', 14.77, 72.4, 4903, 2015, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(4, 'Purnia', 39.5, 176.17, 4460, 2015, 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(5, 'Gaya', 5.74, 25.51, 4441, 2015, 'Red', 'Orange', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(6, 'Araria', 52.6, 232.05, 4412, 2015, 'Light_Green', 'Green', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(7, 'Banka', 10.88, 46.55, 4279, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(8, 'Arwal', 0.56, 2.34, 4201, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(9, 'Jehanabad', 0.45, 1.81, 4054, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(10, 'Vaishali', 31.86, 127.9, 4014, 2015, 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(11, 'Sitamarhi', 5.42, 21.51, 3972, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(12, 'Kishanganj', 3.28, 12.88, 3921, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(13, 'Aurangabad', 0.21, 0.83, 3855, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(14, 'Saharsa', 29.83, 111.24, 3729, 2015, 'Dark_Yellow', 'Yellow', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(15, 'Supaul', 10.26, 37.87, 3690, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(16, 'Bihar', 704.96, 2517.1, 3571, 2015, 'Dark_Green', 'Dark_Green', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(17, 'Nalanda', 6.33, 21.2, 3351, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(18, 'Madhepura', 43.52, 144.78, 3326, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(19, 'Saran', 27.11, 87.89, 3242, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(20, 'Madhubani', 0.59, 1.87, 3187, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(21, 'WestChamparan', 7.4, 22.53, 3043, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(22, 'Khagaria', 55.24, 166.76, 3019, 2015, 'Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(23, 'Sheohar', 1.61, 4.73, 2936, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(24, 'Gopalganj', 11.7, 33.79, 2888, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(25, 'Jamui', 5.41, 14.78, 2732, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(26, 'Nawada', 1.69, 4.55, 2688, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(27, 'Samastipur', 63.59, 169.64, 2668, 2015, 'Dark_Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(28, 'Bhojpur', 6.61, 17.43, 2639, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(29, 'Rohtas', 0.09, 0.21, 2477, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(30, 'Patna', 6.73, 16.4, 2436, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(31, 'Siwan', 17.97, 43.28, 2409, 2015, 'Orange', 'Orange', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(32, 'Muzaffarpur', 39.16, 89.85, 2294, 2015, 'Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(33, 'Begusarai', 56.5, 121.72, 2154, 2015, 'Green', 'Yellow', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(34, 'Munger', 4.51, 9.64, 2137, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(35, 'Kaimur', 0.33, 0.67, 2012, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(36, 'Sheikhpura', 0.65, 1.21, 1851, 2015, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(37, 'Lakhisarai', 4.7, 7.17, 1524, 2015, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(38, 'Buxar', 1.15, 1.67, 1448, 2015, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(39, 'EastChamparan', 46.51, 67.04, 1441, 2015, 'Light_Green', 'Dark_Yellow', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(40, 'Katihar', 89.55, 928.28, 10366, 2016, 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(41, 'Purnia', 36.93, 285.54, 7731, 2016, 'Yellow', 'Yellow', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(42, 'Darbhanga', 14.36, 101.96, 7100, 2016, 'Orange', 'Dark_Yellow', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(43, 'Kishanganj', 3.51, 23, 6561, 2016, 'Red', 'Red', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(44, 'Araria', 42.25, 274.13, 6489, 2016, 'Yellow', 'Yellow', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(45, 'Khagaria', 63.53, 404.63, 6369, 2016, 'Green', 'Green', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(46, 'Arwal', 0.52, 2.93, 5684, 2016, 'Red', 'Red', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(47, 'Saharsa', 29.68, 165.1, 5564, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(48, 'Supaul', 15.26, 83.79, 5491, 2016, 'Orange', 'Orange', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(49, 'Bihar', 720.91, 3845.7, 5335, 2016, 'Dark_Green', 'Dark_Green', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(50, 'Madhepura', 40.89, 214.46, 5246, 2016, 'Yellow', 'Yellow', 'Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(51, 'Samastipur', 61.88, 300.39, 4855, 2016, 'Green', 'Light_Green', 'Light_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(52, 'Jehanabad', 0.44, 2.08, 4751, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(53, 'Siwan', 18.02, 85.09, 4724, 2016, 'Orange', 'Orange', 'Light_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(54, 'Nalanda', 8.05, 36.56, 4540, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(55, 'Sheohar', 1.5, 6.68, 4439, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(56, 'Saran', 24.99, 109.42, 4378, 2016, 'Orange', 'Dark_Yellow', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(57, 'Sitamarhi', 5.38, 21.83, 4057, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(58, 'Madhubani', 0.09, 0.34, 3953, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(59, 'Vaishali', 32.39, 123.48, 3813, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(60, 'Begusarai', 56.44, 211.4, 3745, 2016, 'Light_Green', 'Yellow', 'Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(61, 'WestChamparan', 5.37, 18.39, 3423, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(62, 'Bhagalpur', 40.7, 138.49, 3403, 2016, 'Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(63, 'Banka', 10.37, 33.89, 3267, 2016, 'Orange', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(64, 'Gaya', 4.39, 13.71, 3124, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(65, 'Nawada', 1.51, 4.38, 2910, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(66, 'Gopalganj', 11.28, 31.74, 2815, 2016, 'Orange', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(67, 'Jamui', 4.43, 11.99, 2704, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(68, 'EastChamparan', 46.68, 122.28, 2619, 2016, 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(69, 'Aurangabad', 1.18, 2.84, 2414, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(70, 'Buxar', 1.28, 3.01, 2357, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(71, 'Patna', 6.34, 13.91, 2194, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(72, 'Kaimur', 0.35, 0.73, 2098, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(73, 'Munger', 2.19, 4.3, 1962, 2016, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(74, 'Bhojpur', 2.64, 5.16, 1957, 2016, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(75, 'Muzaffarpur', 31.38, 56.62, 1804, 2016, 'Dark_Yellow', 'Orange', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(76, 'Sheikhpura', 0.68, 1.19, 1758, 2016, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(77, 'Rohtas', 0.08, 0.13, 1663, 2016, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19'),
(78, 'Lakhisarai', 4.44, 1.86, 420, 2016, 'Red', 'Red', 'Red', '2018-07-27 07:50:19', '2018-07-27 07:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity9s`
--

DROP TABLE IF EXISTS `production_productivity9s`;
CREATE TABLE `production_productivity9s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Productivity` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Area_Colour` varchar(255) DEFAULT NULL,
  `Production_Colour` varchar(255) DEFAULT NULL,
  `Productivity_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity9s`
--

INSERT INTO `production_productivity9s` (`id`, `Districts`, `Area`, `Production`, `Productivity`, `Year`, `Area_Colour`, `Production_Colour`, `Productivity_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Sheikhpura', 6.23, 8.94, 1437, 2015, 'Orange', 'Orange', 'Dark_Green', '2018-07-27 07:59:13', '2018-07-27 07:59:13'),
(2, 'Rohtas', 9.36, 11.82, 1263, 2015, 'Orange', 'Dark_Yellow', 'Green', '2018-07-27 07:59:13', '2018-07-27 07:59:13'),
(3, 'Nawada', 8.64, 10.23, 1184, 2015, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:59:13', '2018-07-27 07:59:13'),
(4, 'Jamui', 13.44, 15.65, 1164, 2015, 'Dark_Yellow', 'Yellow', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(5, 'Gaya', 19.65, 22.48, 1144, 2015, 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(6, 'Nalanda', 24.47, 27.81, 1136, 2015, 'Light_Green', 'Green', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(7, 'Munger', 2.26, 2.45, 1084, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(8, 'Katihar', 10.02, 10.8, 1078, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(9, 'Patna', 47.01, 49.74, 1058, 2015, 'Dark_Green', 'Dark_Green', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(10, 'Lakhisarai', 11.17, 11.68, 1046, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(11, 'Begusarai', 5.1, 5.2, 1020, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(12, 'Buxar', 8.27, 7.77, 940, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(13, 'Khagaria', 8.03, 7.48, 932, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(14, 'Kaimur', 11.77, 10.81, 919, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(15, 'Jehanabad', 15.55, 14.22, 914, 2015, 'Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(16, 'Siwan', 3.76, 3.43, 912, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(17, 'EastChamparan', 11.33, 10.3, 909, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(18, 'Purnia', 5.76, 5.22, 906, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(19, 'Darbhanga', 11.72, 10.39, 887, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(20, 'Bhojpur', 20.73, 18.25, 880, 2015, 'Light_Green', 'Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(21, 'Araria', 9.52, 8.38, 880, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(22, 'Saran', 3.05, 2.65, 869, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(23, 'Gopalganj', 1.93, 1.67, 865, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(24, 'Bihar', 498.3, 420.78, 844, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(25, 'Banka', 6.53, 5.51, 844, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(26, 'Arwal', 6.3, 5.29, 840, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(27, 'Samastipur', 17.52, 14.15, 808, 2015, 'Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(28, 'Bhagalpur', 14.75, 11.64, 789, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(29, 'Kishanganj', 9.38, 7.36, 785, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(30, 'Aurangabad', 33.38, 26.01, 779, 2015, 'Green', 'Green', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(31, 'Sitamarhi', 6.19, 4.69, 758, 2015, 'Orange', 'Red', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(32, 'Madhubani', 15.66, 11.08, 709, 2015, 'Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(33, 'WestChamparan', 11.18, 7.63, 682, 2015, 'Dark_Yellow', 'Orange', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(34, 'Sheohar', 2.02, 1.25, 616, 2015, 'Red', 'Red', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(35, 'Vaishali', 7.98, 4.41, 553, 2015, 'Orange', 'Red', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(36, 'Muzaffarpur', 27.04, 13.52, 500, 2015, 'Light_Green', 'Dark_Yellow', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(37, 'Madhepura', 21.66, 9.73, 449, 2015, 'Light_Green', 'Orange', 'Red', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(38, 'Supaul', 29.71, 13.26, 446, 2015, 'Green', 'Dark_Yellow', 'Red', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(39, 'Saharsa', 20.23, 7.9, 391, 2015, 'Light_Green', 'Orange', 'Red', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(40, 'Lakhisarai', 10.06, 13.23, 1314, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(41, 'Buxar', 7.14, 9.28, 1299, 2016, 'Orange', 'Orange', 'Dark_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(42, 'Rohtas', 10.94, 14.07, 1286, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(43, 'Patna', 46.9, 57.97, 1236, 2016, 'Dark_Green', 'Dark_Green', 'Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(44, 'Bhojpur', 14.83, 17.86, 1204, 2016, 'Dark_Yellow', 'Yellow', 'Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(45, 'Sheikhpura', 6.76, 7.9, 1168, 2016, 'Orange', 'Orange', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(46, 'WestChamparan', 9.83, 11.21, 1140, 2016, 'Orange', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(47, 'Jamui', 12.11, 13.75, 1135, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(48, 'Gaya', 19.57, 21.71, 1109, 2016, 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(49, 'Banka', 9.36, 10.13, 1083, 2016, 'Orange', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(50, 'Purnia', 6.87, 7.1, 1033, 2016, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(51, 'Araria', 9.59, 9.9, 1032, 2016, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(52, 'Kishanganj', 9.44, 9.71, 1028, 2016, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(53, 'Begusarai', 4.92, 5.02, 1021, 2016, 'Red', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(54, 'Siwan', 4.31, 4.37, 1015, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(55, 'Katihar', 7.96, 7.93, 997, 2016, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(56, 'Gopalganj', 2.05, 2.03, 991, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(57, 'Nalanda', 26.51, 26.22, 989, 2016, 'Light_Green', 'Green', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(58, 'Munger', 3.75, 3.65, 975, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(59, 'Jehanabad', 15.63, 14.88, 952, 2016, 'Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(60, 'EastChamparan', 10.51, 9.96, 947, 2016, 'Dark_Yellow', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(61, 'Bihar', 497.3, 464.83, 935, 2016, 'Dark_Green', 'Dark_Green', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(62, 'Kaimur', 12.47, 11.46, 919, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(63, 'Khagaria', 8.04, 7.23, 900, 2016, 'Orange', 'Orange', 'Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(64, 'Arwal', 6.06, 5.39, 889, 2016, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(65, 'Darbhanga', 11.5, 9.87, 858, 2016, 'Dark_Yellow', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(66, 'Nawada', 9.33, 7.91, 848, 2016, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(67, 'Samastipur', 18.49, 15.45, 836, 2016, 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(68, 'Aurangabad', 31.74, 26.04, 820, 2016, 'Green', 'Green', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(69, 'Bhagalpur', 12.55, 10.17, 810, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(70, 'Madhubani', 24.03, 19.25, 801, 2016, 'Light_Green', 'Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(71, 'Saran', 2.84, 2.27, 798, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(72, 'Sitamarhi', 6.26, 4.85, 775, 2016, 'Orange', 'Red', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(73, 'Saharsa', 20.23, 15.35, 759, 2016, 'Light_Green', 'Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(74, 'Supaul', 26.33, 19.49, 740, 2016, 'Light_Green', 'Yellow', 'Dark_Yellow', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(75, 'Madhepura', 20.14, 13.37, 664, 2016, 'Light_Green', 'Dark_Yellow', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(76, 'Sheohar', 2.08, 1.27, 609, 2016, 'Red', 'Red', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(77, 'Vaishali', 8.71, 4.99, 574, 2016, 'Orange', 'Red', 'Orange', '2018-07-27 07:59:14', '2018-07-27 07:59:14'),
(78, 'Muzaffarpur', 27.46, 12.63, 460, 2016, 'Light_Green', 'Dark_Yellow', 'Red', '2018-07-27 07:59:14', '2018-07-27 07:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity10s`
--

DROP TABLE IF EXISTS `production_productivity10s`;
CREATE TABLE `production_productivity10s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Mango_Area` float DEFAULT NULL,
  `Mango_Production` float DEFAULT NULL,
  `Guava_Area` float DEFAULT NULL,
  `Guava_Production` float DEFAULT NULL,
  `Litchi_Area` float DEFAULT NULL,
  `Litchi_Production` float DEFAULT NULL,
  `Banana_Area` float DEFAULT NULL,
  `Banana_Production` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Mango_Area_Colour` varchar(255) DEFAULT NULL,
  `Mango_Production_Colour` varchar(255) DEFAULT NULL,
  `Guava_Area_Colour` varchar(255) DEFAULT NULL,
  `Guava_Production_Colour` varchar(255) DEFAULT NULL,
  `Litchi_Area_Colour` varchar(255) DEFAULT NULL,
  `Litchi_Production_Colour` varchar(255) DEFAULT NULL,
  `Banana_Area_Colour` varchar(255) DEFAULT NULL,
  `Banana_Production_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity10s`
--

INSERT INTO `production_productivity10s` (`id`, `Districts`, `Mango_Area`, `Mango_Production`, `Guava_Area`, `Guava_Production`, `Litchi_Area`, `Litchi_Production`, `Banana_Area`, `Banana_Production`, `Year`, `Mango_Area_Colour`, `Mango_Production_Colour`, `Guava_Area_Colour`, `Guava_Production_Colour`, `Litchi_Area_Colour`, `Litchi_Production_Colour`, `Banana_Area_Colour`, `Banana_Production_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 149.14, 1464.93, 29.34, 370, 32.1, 198, 34.8, 1535.3, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(2, 'Muzaffarpur', 9.84, 96.5, 1.5, 11.8, 7.9, 40.5, 5.3, 272.5, 2015, 'Light_Green', 'Green', 'Green', 'Yellow', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(3, 'Vaishali', 8.47, 86, 1.5, 11.2, 3.7, 21.7, 3.4, 142, 2015, 'Yellow', 'Light_Green', 'Green', 'Yellow', 'Green', 'Green', 'Green', 'Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(4, 'Samastipur', 10.64, 99.3, 0.7, 5.3, 1.5, 10.3, 2.3, 102.5, 2015, 'Green', 'Green', 'Yellow', 'Orange', 'Yellow', 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(5, 'Darbhanga', 13.55, 140.5, 0.6, 4.9, 0.8, 4.1, 1.3, 70.9, 2015, 'Dark_Green', 'Dark_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(6, 'Madhepura', 2.01, 18.3, 0.7, 5, 0.2, 1.4, 1.4, 68.4, 2015, 'Orange', 'Red', 'Yellow', 'Orange', 'Orange', 'Red', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(7, 'Madhubani', 6.1, 61, 0.5, 4.1, 0.8, 5.5, 1.1, 54.2, 2015, 'Yellow', 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(8, 'Bhagalpur', 7.6, 70.51, 0.71, 5.8, 0.6, 4.3, 1.3, 52.6, 2015, 'Yellow', 'Light_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(9, 'Saharsa', 2.21, 23.2, 0.7, 5.3, 0.6, 4.7, 1.2, 51.5, 2015, 'Orange', 'Orange', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(10, 'WestChamparan', 7.32, 72.5, 1.6, 13.8, 2.1, 11.5, 1.1, 51, 2015, 'Yellow', 'Light_Green', 'Green', 'Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(11, 'Purnia', 2.58, 25.5, 0.4, 3.2, 1.3, 8.5, 1.3, 48.5, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(12, 'EastChamparan', 9.33, 92.3, 1.7, 14, 2, 12.3, 1.1, 48.1, 2015, 'Light_Green', 'Green', 'Green', 'Light_Green', 'Light_Green', 'Yellow', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(13, 'Khagaria', 1.7, 16.5, 0.4, 3, 0.3, 2.1, 1.1, 45.7, 2015, 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Orange', 'Orange', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(14, 'Begusarai', 4.1, 40.5, 0.5, 4.6, 0.6, 3.3, 1, 45.4, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(15, 'Katihar', 2.9, 28.3, 0.5, 3.7, 1.5, 10.2, 1.5, 40.7, 2015, 'Orange', 'Orange', 'Yellow', 'Orange', 'Yellow', 'Yellow', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(16, 'Saran', 5.18, 50, 0, 0, 1.1, 9.3, 0.9, 38.4, 2015, 'Yellow', 'Yellow', 'Red', 'Red', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(17, 'Siwan', 2.51, 25.1, 0.7, 5.5, 1.2, 7.6, 0.8, 35.1, 2015, 'Orange', 'Orange', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(18, 'Gopalganj', 3.12, 30.2, 0.6, 5, 1.2, 8, 0.8, 32, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(19, 'Kishanganj', 0.8, 7.5, 0.2, 1.9, 0.4, 2.1, 0.7, 31.5, 2015, 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(20, 'Sitamarhi', 5.4, 52.5, 0.7, 6.2, 2.3, 17.4, 0.7, 30.4, 2015, 'Yellow', 'Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(21, 'Patna', 4.04, 38.5, 1.1, 9, 0, 0, 0.7, 30.3, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', 'Red', 'Red', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(22, 'Nalanda', 2.91, 30.5, 1.5, 146.2, 0, 0, 0.5, 24.4, 2015, 'Orange', 'Dark_Yellow', 'Green', 'Dark_Green', 'Red', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(23, 'Supaul', 1.3, 13.1, 0.4, 3.3, 0.1, 0.7, 0.7, 24, 2015, 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Red', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(24, 'Munger', 1.3, 13.7, 0.3, 2.3, 0.3, 2.2, 0.4, 21.2, 2015, 'Red', 'Red', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(25, 'Araria', 0.71, 5.72, 0.2, 1.2, 0.4, 1.4, 0.5, 18.7, 2015, 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(26, 'Aurangabad', 1.3, 14.2, 0.7, 4.8, 0, 0, 0.4, 16.2, 2015, 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(27, 'Bhojpur', 4.65, 46.8, 1.93, 16.5, 0, 0, 0.4, 15.2, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Light_Green', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(28, 'Banka', 6.3, 50.5, 0.3, 2.5, 0.1, 0.3, 0.4, 14.7, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(29, 'Rohtas', 5.7, 58.8, 3.3, 27, 0, 0, 0.3, 14.2, 2015, 'Yellow', 'Yellow', 'Dark_Green', 'Green', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(30, 'Gaya', 1.41, 14.5, 0.7, 5.5, 0, 0, 0.3, 12.9, 2015, 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(31, 'Nawada', 1.2, 12.2, 0.5, 3.9, 0, 0, 0.4, 12, 2015, 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(32, 'Sheohar', 2.7, 27, 0.3, 2.6, 1, 6.8, 0.3, 12, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(33, 'Kaimur', 3.41, 34.3, 1.4, 10.6, 0, 0, 0.2, 11.1, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(34, 'Buxar', 3.41, 34.5, 1.6, 12.5, 0, 0, 0.2, 10.5, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(35, 'Jamui', 1.15, 11, 0.2, 1.7, 0.1, 1.2, 0.2, 9.6, 2015, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(36, 'Jehanabad', 0.41, 4.2, 0.3, 2.1, 0, 0, 0.2, 8.1, 2015, 'Red', 'Red', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(37, 'Lakhisarai', 0.61, 6, 0.1, 1.1, 0, 0.3, 0.2, 6.5, 2015, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(38, 'Sheikhpura', 0.9, 9.6, 0.1, 1.1, 0, 0.3, 0.1, 6.2, 2015, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(39, 'Arwal', 0.4, 3.6, 0.2, 1.8, 0, 0, 0.1, 6.1, 2015, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(40, 'Bihar', 150, 1472.4, 29.4, 370.4, 32.2, 198.6, 35.1, 1527.8, 2016, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(41, 'Muzaffarpur', 9.8, 96.5, 1.5, 11.8, 7.9, 40.5, 5.3, 271.5, 2016, 'Light_Green', 'Green', 'Green', 'Yellow', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(42, 'Vaishali', 8.5, 85.9, 1.5, 11.2, 3.7, 21.7, 3.4, 142.1, 2016, 'Yellow', 'Light_Green', 'Green', 'Yellow', 'Green', 'Green', 'Green', 'Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(43, 'Samastipur', 10.6, 99.3, 0.7, 5.3, 1.5, 10.4, 2.3, 102.9, 2016, 'Green', 'Green', 'Yellow', 'Orange', 'Yellow', 'Yellow', 'Light_Green', 'Light_Green', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(44, 'Darbhanga', 13.6, 140.5, 0.6, 4.9, 0.8, 4.1, 1.3, 72.3, 2016, 'Dark_Green', 'Dark_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(45, 'Madhepura', 2, 18.4, 0.7, 5, 0.2, 1.5, 1.4, 69.4, 2016, 'Orange', 'Red', 'Yellow', 'Orange', 'Orange', 'Red', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(46, 'Bhagalpur', 7.9, 73.3, 0.7, 5.8, 0.6, 4.3, 1.4, 54.6, 2016, 'Yellow', 'Light_Green', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(47, 'EastChamparan', 9, 89, 1.7, 14, 2, 12.3, 1.2, 52.5, 2016, 'Light_Green', 'Light_Green', 'Green', 'Light_Green', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(48, 'Saharsa', 2.2, 23.4, 0.7, 5.4, 0.6, 4.8, 1.2, 52, 2016, 'Orange', 'Orange', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(49, 'WestChamparan', 7.3, 72.5, 1.6, 13.8, 2.1, 11.5, 1.1, 51, 2016, 'Yellow', 'Light_Green', 'Green', 'Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(50, 'Madhubani', 6.2, 62, 0.5, 4.1, 0.8, 5.5, 1, 49.3, 2016, 'Yellow', 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(51, 'Khagaria', 1.7, 16.6, 0.4, 3, 0.3, 2.1, 1.1, 46.1, 2016, 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Orange', 'Orange', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(52, 'Begusarai', 4.3, 42.5, 0.5, 4.6, 0.6, 3.3, 1, 45.9, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(53, 'Purnia', 2.6, 25.5, 0.4, 3.2, 1.3, 8.4, 1.2, 44.8, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(54, 'Katihar', 2.9, 28.4, 0.5, 3.7, 1.5, 10.2, 1.5, 40.9, 2016, 'Orange', 'Orange', 'Yellow', 'Orange', 'Yellow', 'Yellow', 'Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(55, 'Saran', 5.2, 50, 0, 0, 1.1, 9.4, 0.9, 38.9, 2016, 'Yellow', 'Yellow', 'Red', 'Red', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(56, 'Siwan', 2.5, 25.2, 0.7, 5.5, 1.2, 7.6, 0.8, 35.2, 2016, 'Orange', 'Orange', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(57, 'Gopalganj', 3.1, 30.2, 0.6, 5, 1.2, 8, 0.8, 32, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(58, 'Kishanganj', 0.8, 7.6, 0.2, 1.9, 0.4, 2.1, 0.7, 31.9, 2016, 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(59, 'Sitamarhi', 5.3, 51.6, 0.7, 6.2, 2.3, 17.5, 0.7, 30.8, 2016, 'Yellow', 'Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Orange', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(60, 'Patna', 4.1, 38.6, 1.1, 9, 0, 0, 0.7, 28.1, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Dark_Yellow', 'Red', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(61, 'Nalanda', 2.9, 30.3, 1.5, 146.2, 0, 0, 0.6, 25, 2016, 'Orange', 'Dark_Yellow', 'Green', 'Dark_Green', 'Red', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(62, 'Supaul', 1.3, 13.1, 0.4, 3.3, 0.1, 0.7, 0.7, 24, 2016, 'Red', 'Red', 'Dark_Yellow', 'Orange', 'Red', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(63, 'Bhojpur', 4.7, 47.3, 1.9, 16.5, 0, 0, 0.5, 19, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Light_Green', 'Red', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(64, 'Araria', 0.7, 5.7, 0.2, 1.2, 0.4, 1.4, 0.5, 18.7, 2016, 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', 'Dark_Yellow', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(65, 'Munger', 1.3, 13.7, 0.3, 2.3, 0.3, 2.2, 0.3, 17, 2016, 'Red', 'Red', 'Dark_Yellow', 'Red', 'Orange', 'Orange', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(66, 'Rohtas', 5.7, 58.9, 3.3, 27.1, 0, 0, 0.3, 15.2, 2016, 'Yellow', 'Yellow', 'Dark_Green', 'Green', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(67, 'Banka', 6.5, 52.1, 0.3, 2.5, 0.1, 0.3, 0.4, 15.1, 2016, 'Yellow', 'Yellow', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(68, 'Gaya', 1.4, 14.5, 0.7, 5.5, 0, 0, 0.3, 12.9, 2016, 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(69, 'Nawada', 1.3, 13.2, 0.5, 3.9, 0, 0, 0.4, 12.3, 2016, 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(70, 'Sheohar', 2.7, 27, 0.3, 2.6, 1, 7, 0.3, 12.2, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Red', 'Yellow', 'Dark_Yellow', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(71, 'Kaimur', 3.4, 34.4, 1.4, 10.6, 0, 0, 0.2, 11.5, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(72, 'Buxar', 3.5, 35.4, 1.6, 12.5, 0, 0, 0.2, 11, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(73, 'Jamui', 1.2, 11.1, 0.2, 1.7, 0.1, 1.2, 0.2, 9.7, 2016, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(74, 'Arwal', 0.5, 4.5, 0.2, 1.8, 0, 0, 0.2, 9.2, 2016, 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(75, 'Jehanabad', 0.4, 4.2, 0.3, 2.1, 0, 0, 0.2, 8.3, 2016, 'Red', 'Red', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(76, 'Lakhisarai', 0.6, 6, 0.1, 1.1, 0, 0.3, 0.2, 6.6, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(77, 'Sheikhpura', 0.9, 9.7, 0.1, 1.2, 0, 0.3, 0.1, 6.5, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59'),
(78, 'Aurangabad', 1.3, 14.2, 0.7, 4.9, 0, 0, 0.4, 1.6, 2016, 'Red', 'Red', 'Yellow', 'Orange', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:08:59', '2018-07-27 08:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity11s`
--

DROP TABLE IF EXISTS `production_productivity11s`;
CREATE TABLE `production_productivity11s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Potato_Area` float DEFAULT NULL,
  `Potato_Production` float DEFAULT NULL,
  `Onion_Area` float DEFAULT NULL,
  `Onion_Production` float DEFAULT NULL,
  `Cauliflower_Area` float DEFAULT NULL,
  `Cauliflower_Production` float DEFAULT NULL,
  `Brinjal_Area` float DEFAULT NULL,
  `Brinjal_Production` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Potato_Area_Colour` varchar(255) DEFAULT NULL,
  `Potato_Production_Colour` varchar(255) DEFAULT NULL,
  `Onion_Area_Colour` varchar(255) DEFAULT NULL,
  `Onion_Production_Colour` varchar(255) DEFAULT NULL,
  `Cauliflower_Area_Colour` varchar(255) DEFAULT NULL,
  `Cauliflower_Production_Colour` varchar(255) DEFAULT NULL,
  `Brinjal_Area_Colour` varchar(255) DEFAULT NULL,
  `Brinjal_Production_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity11s`
--

INSERT INTO `production_productivity11s` (`id`, `Districts`, `Potato_Area`, `Potato_Production`, `Onion_Area`, `Onion_Production`, `Cauliflower_Area`, `Cauliflower_Production`, `Brinjal_Area`, `Brinjal_Production`, `Year`, `Potato_Area_Colour`, `Potato_Production_Colour`, `Onion_Area_Colour`, `Onion_Production_Colour`, `Cauliflower_Area_Colour`, `Cauliflower_Production_Colour`, `Brinjal_Area_Colour`, `Brinjal_Production_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Bihar', 319.13, 6345.52, 54.03, 1247.34, 65.71, 1003.9, 57.62, 1138.05, 2015, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(2, 'Nalanda', 20.81, 600, 6, 160, 3.1, 60, 7.22, 148.5, 2015, 'Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Green', 'Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(3, 'Vaishali', 9.91, 290.5, 1.8, 44, 6, 100, 3.21, 69, 2015, 'Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Green', 'Dark_Green', 'Green', 'Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(4, 'Begusarai', 6, 168, 2, 42.4, 1.8, 34.9, 2.81, 58.94, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(5, 'Samastipur', 9.2, 250, 1.4, 30.4, 3, 59.5, 2.31, 58.5, 2015, 'Yellow', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Light_Green', 'Light_Green', 'Light_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(6, 'Darbhanga', 5.85, 154.9, 1, 25, 1.6, 28.5, 2.5, 51.7, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Light_Green', 'Light_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(7, 'Patna', 12.51, 360, 2.6, 63, 3.8, 1.3, 1.91, 49, 2015, 'Light_Green', 'Green', 'Light_Green', 'Light_Green', 'Green', 'Red', 'Yellow', 'Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(8, 'WestChamparan', 9.27, 250, 2.4, 62, 2.9, 53.4, 2, 45, 2015, 'Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(9, 'Madhubani', 7.73, 206.9, 1.1, 25.3, 2.6, 45.8, 2.11, 43.2, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(10, 'Saran', 10.8, 280.5, 1, 18, 2.9, 38, 1.8, 38.5, 2015, 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Orange', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(11, 'Muzaffarpur', 85.5, 254, 2.6, 67, 3.5, 68, 2.9, 36.6, 2015, 'Dark_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Green', 'Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(12, 'EastChamparan', 8.9, 240.9, 2.4, 59.3, 2.91, 39.3, 1.6, 36.3, 2015, 'Yellow', 'Yellow', 'Light_Green', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(13, 'Bhagalpur', 6.31, 168.31, 1.6, 40.32, 1.7, 29.2, 1.7, 36, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(14, 'Siwan', 7.7, 205.9, 0.9, 21, 1.6, 28.4, 1.6, 35, 2015, 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(15, 'Madhepura', 5.3, 140.1, 1, 22.6, 1.8, 30.9, 1.6, 33.9, 2015, 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(16, 'Gopalganj', 9.12, 242.7, 0.9, 18.6, 1.9, 33.9, 1.42, 30.4, 2015, 'Yellow', 'Yellow', 'Orange', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(17, 'Khagaria', 4.1, 108.6, 0.8, 17.3, 1.3, 21.4, 1.2, 29.6, 2015, 'Orange', 'Orange', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(18, 'Bhojpur', 6.3, 172.7, 1.2, 26, 1.1, 21.5, 1.2, 28.9, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(19, 'Saharsa', 5.7, 151.6, 0.6, 15, 1.8, 31.5, 1.3, 28.7, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(20, 'Sitamarhi', 5.1, 136.5, 1.3, 32.5, 1.4, 24.2, 1.3, 26.9, 2015, 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(21, 'Nawada', 4.2, 100, 1, 21.8, 1.4, 22.9, 1.8, 26.8, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(22, 'Aurangabad', 4.5, 115.8, 1.12, 25.42, 1.4, 28.2, 1.1, 22.51, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(23, 'Purnia', 5.2, 137.3, 1.8, 42.5, 2.1, 35.2, 1.11, 20.9, 2015, 'Dark_Yellow', 'Orange', 'Yellow', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(24, 'Rohtas', 8, 206.9, 1.2, 27.3, 1.3, 21.9, 1, 18.8, 2015, 'Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(25, 'Banka', 4.9, 125.7, 0.7, 15.5, 0.8, 12.4, 0.8, 17.4, 2015, 'Orange', 'Orange', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(26, 'Buxar', 3.9, 105.1, 0.9, 22.6, 0.7, 12.7, 0.8, 16.9, 2015, 'Orange', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(27, 'Munger', 5.3, 142.1, 1, 24.5, 0.8, 13.3, 0.8, 16.7, 2015, 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(28, 'Kaimur', 3.22, 84, 1, 20.7, 0.8, 13.5, 0.6, 14.3, 2015, 'Orange', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(29, 'Sheohar', 3.2, 83.6, 0.7, 17.3, 0.8, 15, 0.7, 14.1, 2015, 'Orange', 'Red', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(30, 'Araria', 3.7, 89.4, 1.5, 30.3, 0.8, 14.7, 0.6, 13.91, 2015, 'Orange', 'Red', 'Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(31, 'Jehanabad', 2.81, 73.8, 0.5, 13.1, 0.5, 9.7, 0.7, 13.7, 2015, 'Red', 'Red', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(32, 'Supaul', 4.5, 116, 0.4, 8.5, 0.7, 11.7, 0.6, 13, 2015, 'Orange', 'Orange', 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(33, 'Jamui', 2.6, 67.3, 0.8, 22.2, 0.4, 7.5, 0.61, 12.4, 2015, 'Red', 'Red', 'Orange', 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(34, 'Kishanganj', 4.5, 117.9, 1.4, 31.4, 0.9, 15.9, 0.6, 12.4, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(35, 'Arwal', 2.2, 59.1, 0.4, 9.9, 0.4, 8.1, 0.4, 9.5, 2015, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(36, 'Sheikhpura', 4.2, 120, 1.3, 30, 0.2, 4.4, 0.3, 6.7, 2015, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(37, 'Katihar', 5.6, 147.8, 3.9, 83.1, 3, 5.1, 1.8, 1.8, 2015, 'Dark_Yellow', 'Orange', 'Green', 'Green', 'Green', 'Red', 'Yellow', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(38, 'Gaya', 8.1, 8.1, 1.4, 1.4, 2, 2, 1.6, 1.6, 2015, 'Yellow', 'Red', 'Dark_Yellow', 'Red', 'Light_Green', 'Red', 'Yellow', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(39, 'Lakhisarai', 2.4, 63.5, 0.4, 10.1, 0, 0, 0, 0, 2015, 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(40, 'Bihar', 320.5, 6377.7, 54.1, 1249, 66.1, 1003.7, 57.9, 1141.2, 2016, 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(41, 'Nalanda', 20, 576.6, 5.5, 146.7, 3.1, 60, 7.2, 148.5, 2016, 'Green', 'Green', 'Green', 'Dark_Green', 'Green', 'Green', 'Dark_Green', 'Dark_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(42, 'Vaishali', 9.9, 290.3, 1.8, 44, 6, 99.9, 3.2, 69, 2016, 'Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Green', 'Dark_Green', 'Green', 'Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(43, 'Begusarai', 6.5, 182, 2, 42.4, 1.8, 35.3, 2.8, 58.9, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Yellow', 'Dark_Yellow', 'Light_Green', 'Light_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(44, 'Samastipur', 9.2, 250.2, 1.4, 30.5, 3, 59.7, 2.3, 58.5, 2016, 'Yellow', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', 'Green', 'Light_Green', 'Light_Green', 'Light_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(45, 'Darbhanga', 5.8, 154.9, 1, 25, 1.7, 29.4, 2.5, 51.7, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Light_Green', 'Light_Green', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(46, 'Patna', 12.5, 359.8, 2.7, 65.4, 4, 1.4, 1.9, 48.8, 2016, 'Light_Green', 'Green', 'Light_Green', 'Light_Green', 'Green', 'Red', 'Yellow', 'Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(47, 'WestChamparan', 9.3, 250.8, 2.4, 61.9, 3, 55.2, 2, 43.9, 2016, 'Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Green', 'Light_Green', 'Light_Green', 'Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(48, 'Madhubani', 7.8, 208.8, 1, 23, 2.6, 45.8, 2.1, 43, 2016, 'Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', 'Yellow', 'Light_Green', 'Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(49, 'Saran', 10.8, 280.8, 1, 18.2, 2.9, 38.2, 1.8, 38.8, 2016, 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Orange', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(50, 'EastChamparan', 8.9, 240.9, 2.5, 61.8, 2.9, 39.2, 1.7, 38.6, 2016, 'Yellow', 'Yellow', 'Light_Green', 'Light_Green', 'Light_Green', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(51, 'Muzaffarpur', 85.5, 254, 2.7, 69.3, 3.4, 66.4, 2.9, 36.7, 2016, 'Dark_Green', 'Light_Green', 'Light_Green', 'Light_Green', 'Green', 'Green', 'Light_Green', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(52, 'Bhagalpur', 6.3, 168.4, 1.6, 40.4, 1.7, 29.2, 1.7, 36, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Yellow', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(53, 'Siwan', 7.7, 205.9, 0.9, 21, 1.6, 28.4, 1.6, 35, 2016, 'Yellow', 'Yellow', 'Orange', 'Dark_Yellow', 'Yellow', 'Orange', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(54, 'Madhepura', 5.3, 140.4, 1, 22.6, 1.8, 31.2, 1.6, 33.9, 2016, 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', 'Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(55, 'Gopalganj', 9.1, 242.7, 0.9, 18.6, 1.9, 33.9, 1.4, 30.4, 2016, 'Yellow', 'Yellow', 'Orange', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(56, 'Khagaria', 4.1, 108.9, 0.8, 17.4, 1.3, 21.6, 1.2, 29.8, 2016, 'Orange', 'Orange', 'Orange', 'Orange', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(57, 'Saharsa', 5.7, 151.9, 0.6, 15.3, 1.8, 31.7, 1.3, 28.9, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Orange', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(58, 'Bhojpur', 6.4, 175.4, 1.2, 26, 1.1, 21.7, 1.2, 28.9, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(59, 'Sitamarhi', 5.1, 137.1, 1.3, 32.6, 1.4, 24.4, 1.3, 27.1, 2016, 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(60, 'Nawada', 4.2, 100, 1, 21.8, 1.5, 24.5, 1.8, 26.7, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Yellow', 'Orange', 'Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(61, 'Aurangabad', 4.5, 115.8, 1.1, 25.5, 1.2, 24.2, 1.1, 22.5, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(62, 'Purnia', 5.2, 136, 1.8, 42.5, 2.1, 35.4, 1.1, 20.9, 2016, 'Dark_Yellow', 'Orange', 'Yellow', 'Yellow', 'Light_Green', 'Dark_Yellow', 'Dark_Yellow', 'Orange', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(63, 'Rohtas', 8, 207.2, 1.2, 27.5, 1.3, 22.1, 1, 19, 2016, 'Yellow', 'Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(64, 'Banka', 4.9, 125.7, 0.7, 15.7, 0.8, 12.6, 0.8, 17.4, 2016, 'Orange', 'Orange', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(65, 'Buxar', 4, 107.8, 1, 25.1, 0.7, 12.7, 0.8, 17.2, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(66, 'Munger', 5.3, 142.4, 1.1, 27, 0.8, 13.5, 0.8, 16.5, 2016, 'Dark_Yellow', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(67, 'Kaimur', 3.2, 84.2, 1, 20.9, 0.8, 13.6, 0.6, 14.5, 2016, 'Orange', 'Red', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(68, 'Sheohar', 3.2, 83.9, 0.7, 17.3, 0.8, 15.2, 0.7, 14.1, 2016, 'Orange', 'Red', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(69, 'Jehanabad', 2.8, 73.9, 0.5, 13.5, 0.5, 10, 0.7, 14.1, 2016, 'Red', 'Red', 'Orange', 'Orange', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(70, 'Araria', 4.6, 111.7, 1.5, 32.3, 0.8, 15, 0.7, 13.9, 2016, 'Orange', 'Orange', 'Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(71, 'Supaul', 4.5, 116, 0.4, 8.5, 0.7, 11.7, 0.6, 13, 2016, 'Orange', 'Orange', 'Red', 'Red', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(72, 'Kishanganj', 4.5, 118.1, 1.4, 31.6, 0.9, 16.1, 0.6, 12.6, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Orange', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(73, 'Jamui', 2.6, 67.5, 0.8, 22.4, 0.4, 7.5, 0.6, 12.5, 2016, 'Red', 'Red', 'Orange', 'Dark_Yellow', 'Red', 'Red', 'Orange', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(74, 'Arwal', 2.5, 67.2, 0.4, 9.9, 0.4, 8.1, 0.4, 9.7, 2016, 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(75, 'Sheikhpura', 4.2, 120.6, 1.3, 30.3, 0.2, 4.7, 0.3, 6.7, 2016, 'Orange', 'Orange', 'Dark_Yellow', 'Dark_Yellow', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(76, 'Katihar', 5.6, 148.1, 3.9, 83.2, 3, 2.1, 1.8, 1.8, 2016, 'Dark_Yellow', 'Orange', 'Green', 'Green', 'Green', 'Red', 'Yellow', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(77, 'Gaya', 8.2, 8.2, 1.4, 1.4, 2, 2, 1.6, 1.6, 2016, 'Yellow', 'Red', 'Dark_Yellow', 'Red', 'Light_Green', 'Red', 'Yellow', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47'),
(78, 'Lakhisarai', 2.4, 63.8, 0.4, 10.3, 0, 0, 0, 0, 2016, 'Red', 'Red', 'Red', 'Orange', 'Red', 'Red', 'Red', 'Red', '2018-07-27 08:16:47', '2018-07-27 08:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `production_productivity12s`
--

DROP TABLE IF EXISTS `production_productivity12s`;
CREATE TABLE `production_productivity12s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Area` float DEFAULT NULL,
  `Production` float DEFAULT NULL,
  `Yield` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Area_Colour` varchar(255) DEFAULT NULL,
  `Production_Colour` varchar(255) DEFAULT NULL,
  `Yield_Colour` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_productivity12s`
--

INSERT INTO `production_productivity12s` (`id`, `Districts`, `Area`, `Production`, `Yield`, `Year`, `Area_Colour`, `Production_Colour`, `Yield_Colour`, `created_at`, `updated_at`) VALUES
(1, 'Nalanda', 0.19, 19.01, 98.23, 2015, 'Red', 'Red', 'Dark_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(2, 'Patna', 0.49, 44.31, 90.11, 2015, 'Red', 'Red', 'Dark_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(3, 'Jehanabad', 0.09, 7.39, 84.3, 2015, 'Red', 'Red', 'Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(4, 'Bhojpur', 0.42, 34.55, 81.32, 2015, 'Red', 'Red', 'Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(5, 'EastChamparan', 43.3, 3431.91, 79.26, 2015, 'Green', 'Green', 'Light_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(6, 'Buxar', 0.34, 26.22, 78.04, 2015, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(7, 'Muzaffarpur', 8.11, 597.28, 73.64, 2015, 'Dark_Yellow', 'Yellow', 'Light_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(8, 'Aurangabad', 0.09, 6.86, 73.35, 2015, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(9, 'Katihar', 0.16, 11.15, 70.59, 2015, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(10, 'WestChamparan', 122.73, 8529.7, 69.5, 2015, 'Dark_Green', 'Dark_Green', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(11, 'Bihar', 263.53, 18175.6, 68.97, 2015, 'Dark_Green', 'Dark_Green', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(12, 'Gopalganj', 25.98, 1791.13, 68.95, 2015, 'Light_Green', 'Light_Green', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(13, 'Gaya', 0.36, 24.32, 67.99, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(14, 'Darbhanga', 2.49, 167.2, 67.13, 2015, 'Orange', 'Orange', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(15, 'Madhubani', 5.58, 373.89, 67.02, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(16, 'Arwal', 0.04, 2.67, 66.46, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(17, 'Kishanganj', 0.33, 21.5, 65.02, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:58', '2018-07-27 08:27:58'),
(18, 'Sheikhpura', 0.36, 23.4, 65, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(19, 'Lakhisarai', 0.03, 2.02, 65, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(20, 'Vaishali', 1.83, 118.65, 64.98, 2015, 'Red', 'Orange', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(21, 'Samastipur', 5.95, 375.28, 63.05, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(22, 'Sitamarhi', 14.64, 904.49, 61.79, 2015, 'Yellow', 'Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(23, 'Purnia', 1.07, 64.71, 60.54, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(24, 'Begusarai', 6.61, 399.23, 60.36, 2015, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(25, 'Bhagalpur', 4.52, 272.34, 60.24, 2015, 'Orange', 'Dark_Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(26, 'Jamui', 0.82, 49.38, 60, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(27, 'Munger', 0.18, 10.86, 60, 2015, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(28, 'Banka', 2.59, 154.71, 59.8, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(29, 'Araria', 0.43, 24.87, 58.25, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(30, 'Rohtas', 0.28, 16.05, 57.31, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(31, 'Khagaria', 0.36, 20.14, 56.72, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(32, 'Saran', 1.03, 56.26, 54.37, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(33, 'Siwan', 2.87, 156.27, 54.36, 2015, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(34, 'Madhepura', 4.25, 229.33, 54, 2015, 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(35, 'Saharsa', 0.84, 44.62, 53.72, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(36, 'Nawada', 0.38, 20.15, 52.86, 2015, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(37, 'Kaimur', 0.15, 5.77, 39.31, 2015, 'Red', 'Red', 'Red', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(38, 'Sheohar', 3.65, 137.97, 37.78, 2015, 'Orange', 'Orange', 'Red', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(39, 'Supaul', 0, 0, 0, 2015, 'Red', 'Red', 'Red', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(40, 'Nalanda', 0.06, 6.41, 101.03, 2016, 'Red', 'Red', 'Dark_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(41, 'Patna', 0.38, 35.25, 92.14, 2016, 'Red', 'Red', 'Dark_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(42, 'Kishanganj', 0.22, 20.5, 91.51, 2016, 'Red', 'Red', 'Dark_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(43, 'EastChamparan', 43.31, 3447.08, 79.59, 2016, 'Green', 'Green', 'Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(44, 'Gaya', 0.15, 11.14, 73.99, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(45, 'Aurangabad', 0.1, 7.22, 73.98, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(46, 'WestChamparan', 132.86, 9252.17, 69.64, 2016, 'Dark_Green', 'Dark_Green', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(47, 'Gopalganj', 21.16, 1464.15, 69.19, 2016, 'Light_Green', 'Yellow', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(48, 'Bihar', 264.1, 18239.9, 69.06, 2016, 'Dark_Green', 'Dark_Green', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(49, 'Katihar', 0.08, 5.5, 68.74, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(50, 'Madhubani', 5.14, 342.54, 66.66, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(51, 'Darbhanga', 2.12, 140.66, 66.5, 2016, 'Orange', 'Orange', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(52, 'Arwal', 0.01, 0.58, 65.79, 2016, 'Red', 'Red', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(53, 'Muzaffarpur', 7.13, 466.77, 65.43, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(54, 'Vaishali', 1.23, 80.18, 65.27, 2016, 'Red', 'Orange', 'Light_Green', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(55, 'Samastipur', 6.35, 400.84, 63.16, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(56, 'Rohtas', 0.25, 15.61, 62.42, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(57, 'Sitamarhi', 12.07, 748.72, 62.02, 2016, 'Yellow', 'Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(58, 'Munger', 0.18, 10.8, 60.86, 2016, 'Red', 'Red', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(59, 'Begusarai', 7.47, 451.06, 60.42, 2016, 'Dark_Yellow', 'Dark_Yellow', 'Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(60, 'Jehanabad', 0.1, 6.11, 59.75, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(61, 'Jamui', 0.29, 17.39, 59.27, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(62, 'Sheohar', 3.62, 213.73, 59.04, 2016, 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(63, 'Sheikhpura', 0.32, 18.59, 58.86, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(64, 'Purnia', 0.9, 52.61, 58.46, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(65, 'Khagaria', 1.1, 62.82, 57.31, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(66, 'Nawada', 0.21, 12.13, 56.81, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(67, 'Lakhisarai', 0.02, 1.15, 56.14, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(68, 'Banka', 3.08, 172.21, 55.93, 2016, 'Orange', 'Orange', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(69, 'Bhagalpur', 4.89, 272.96, 55.82, 2016, 'Orange', 'Dark_Yellow', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(70, 'Saharsa', 1.29, 71.24, 55.22, 2016, 'Red', 'Red', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(71, 'Siwan', 1.39, 76.42, 55.16, 2016, 'Red', 'Orange', 'Dark_Yellow', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(72, 'Saran', 0.89, 48.51, 54.79, 2016, 'Red', 'Red', 'Orange', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(73, 'Kaimur', 0.13, 6.82, 54.53, 2016, 'Red', 'Red', 'Orange', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(74, 'Araria', 0.28, 15.17, 54.07, 2016, 'Red', 'Red', 'Orange', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(75, 'Madhepura', 4.68, 250.42, 53.57, 2016, 'Orange', 'Dark_Yellow', 'Orange', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(76, 'Bhojpur', 0.39, 20.33, 52.04, 2016, 'Red', 'Red', 'Orange', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(77, 'Buxar', 0.28, 14.41, 52, 2016, 'Red', 'Red', 'Orange', '2018-07-27 08:27:59', '2018-07-27 08:27:59'),
(78, 'Supaul', 0, 0, 0, 2016, 'Red', 'Red', 'Red', '2018-07-27 08:27:59', '2018-07-27 08:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `rainfall1s`
--

DROP TABLE IF EXISTS `rainfall1s`;
CREATE TABLE `rainfall1s` (
  `id` bigint(20) NOT NULL,
  `Winter_Rain` float DEFAULT NULL,
  `Hot_Weather_Rain` float DEFAULT NULL,
  `Southwest_Monsoon` float DEFAULT NULL,
  `Northwest_Monsoon` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rainfall1s`
--

INSERT INTO `rainfall1s` (`id`, `Winter_Rain`, `Hot_Weather_Rain`, `Southwest_Monsoon`, `Northwest_Monsoon`, `Total`, `Year`, `created_at`, `updated_at`) VALUES
(1, 20.9, 86.7, 908.2, 192.2, 1208, 2001, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(2, 48.9, 66.8, 896.9, 33.2, 1045.8, 2002, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(3, 19.2, 93, 767.6, 128.9, 1008.7, 2003, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(4, 23.7, 41.4, 906.1, 60.1, 1031.3, 2004, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(5, 0.1, 89.5, 777.6, 30.2, 897.4, 2005, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(6, 0.1, 90, 925.9, 27.8, 1043.7, 2006, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(7, 28.3, 76.4, 1360, 40.5, 1506.1, 2007, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(8, 30.6, 61.8, 1084, 19.3, 1196, 2008, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(9, 0.1, 98.2, 699.2, 71.1, 868.6, 2009, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(10, 0.7, 49.3, 584.4, 43.4, 677.9, 2010, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(11, 5.2, 79.4, 1028, 0.5, 1113.1, 2011, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(12, 11.2, 31.3, 704.2, 51.2, 797.9, 2012, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(13, 17.1, 73.8, 518.4, 164.3, 773.6, 2013, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(14, 33.3, 96.1, 788.3, 41.9, 959.6, 2014, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(15, 11.7, 89.3, 690.7, 4.3, 796, 2015, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(16, 7.5, 72.6, 937, 54.5, 1071.6, 2016, '2018-07-13 06:55:14', '2018-07-13 06:55:14'),
(17, 0.4, 103.1, 843.2, 0, 946.8, 2017, '2018-07-13 06:55:14', '2018-07-13 06:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `rainfall2s`
--

DROP TABLE IF EXISTS `rainfall2s`;
CREATE TABLE `rainfall2s` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `Winter_Rain` float DEFAULT NULL,
  `Hot_Weather_Rain` float DEFAULT NULL,
  `South_West_Monsoon` float DEFAULT NULL,
  `North_West_Monsoon` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rainfall2s`
--

INSERT INTO `rainfall2s` (`id`, `Districts`, `Winter_Rain`, `Hot_Weather_Rain`, `South_West_Monsoon`, `North_West_Monsoon`, `Total`, `Year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 3.4, 56.7, 801.3, 57.8, 919.1, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(2, 'Nalanda', 13.4, 48.9, 953.3, 72.1, 1087.7, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(3, 'Bhojpur', 2.5, 43.8, 716.8, 44.2, 807.3, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(4, 'Buxar', 6, 57.6, 815.2, 63.2, 942.1, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(5, 'Rohtas', 0, 2.3, 961.9, 76.9, 1041, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(6, 'Kaimur', 24, 13.7, 1114.3, 42.5, 1194.4, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(7, 'Gaya', 20, 19.3, 1061.7, 84.7, 1185.7, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(8, 'Jehanabad', 13.4, 26.8, 892, 74.6, 1006.8, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(9, 'Arwal', 3, 4.9, 1131.4, 97, 1236.3, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(10, 'Nawada', 20, 16.8, 807.4, 70.6, 914.8, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(11, 'Aurangabad', 12.6, 17.6, 1220, 127, 1377.2, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(12, 'Saran', 0.3, 42.3, 548.2, 35.7, 626.5, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(13, 'Siwan', 1.2, 20.7, 783.2, 39.1, 844.2, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(14, 'Gopalganj', 0, 112, 710, 31.7, 853.7, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(15, 'Muzaffarpur', 1.2, 88.1, 571.2, 19, 679.5, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(16, 'EastChamparan', 6.4, 112, 773.5, 20.7, 912.6, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(17, 'WestChamparan', 1.7, 98.2, 980.5, 2.7, 1083.1, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(18, 'Sitamarhi', 1.9, 52.1, 685.9, 6.8, 746.7, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(19, 'Sheohar', 5.3, 108.7, 843.9, 7.8, 965.7, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(20, 'Vaishali', 1.2, 0.2, 651.9, 57.8, 711.1, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(21, 'Darbhanga', 0, 111, 878.9, 46.5, 1036.3, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(22, 'Madhubani', 6.1, 128.4, 951.7, 30.9, 1117, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(23, 'Samastipur', 0.2, 111.9, 859.1, 87.4, 1058.6, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(24, 'Begusarai', 5.6, 55.7, 844.8, 31.8, 937.9, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(25, 'Munger', 39.9, 50.8, 882.4, 21.6, 994.7, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(26, 'Sheikhpura', 18.6, 18, 987.9, 78.1, 1102.5, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(27, 'Lakhisarai', 12.2, 28.9, 990.7, 33.7, 1065.6, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(28, 'Jamui', 18.3, 15.5, 1026.1, 60.6, 1120.5, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(29, 'Khagaria', 17.9, 50.7, 679.1, 19.5, 767.1, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(30, 'Bhagalpur', 0, 109.7, 986.4, 36.7, 1132.8, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(31, 'Banka', 12.3, 50.9, 916.1, 45.1, 1024.4, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(32, 'Saharsa', 0, 111, 1169.9, 68.9, 1349.9, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(33, 'Supaul', 0, 164.1, 1122, 80.8, 1366.9, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(34, 'Madhepura', 1.8, 139.8, 1010, 65, 1216.6, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(35, 'Purnia', 0, 185.3, 1131.1, 51.7, 1368.1, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(36, 'Kishanganj', 4.8, 250.2, 1887.2, 124.8, 2267, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(37, 'Araria', 8.1, 164.2, 1431, 81.1, 1684.3, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(38, 'Katihar', 0, 71, 827, 75.5, 973.5, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(39, 'Bihar', 7.5, 72.6, 937, 54.5, 1071.6, 2016, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(40, 'Patna', 0, 40.1, 627.3, 0, 667.4, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(41, 'Nalanda', 0, 26.2, 653.9, 0, 680.1, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(42, 'Bhojpur', 0, 39, 727.4, 0, 766.4, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(43, 'Buxar', 0, 28.4, 655.5, 0, 683.9, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(44, 'Rohtas', 0, 11, 739, 0, 750, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(45, 'Kaimur', 0, 2.8, 818.3, 0, 821.1, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(46, 'Gaya', 0, 7.9, 790.4, 0, 798.3, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(47, 'Jehanabad', 0, 11.3, 617.6, 0, 628.9, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(48, 'Arwal', 0, 23.2, 564.8, 0, 588, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(49, 'Nawada', 0, 8.3, 575, 0, 583.4, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(50, 'Aurangabad', 0.4, 17.2, 851.3, 0, 868.9, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(51, 'Saran', 0, 68.1, 716.6, 0, 784.6, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(52, 'Siwan', 0, 77.2, 696.2, 0, 773.4, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(53, 'Gopalganj', 5.5, 74.4, 717.6, 0, 797.5, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(54, 'Muzaffarpur', 0, 119.6, 745.9, 0, 865.5, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(55, 'EastChamparan', 0, 125.6, 813.6, 0, 939.3, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(56, 'WestChamparan', 9, 114.3, 1107.3, 0, 1230.7, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(57, 'Sitamarhi', 0, 105.8, 891, 0, 996.7, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(58, 'Sheohar', 0, 143.6, 918, 0, 1061.6, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(59, 'Vaishali', 0, 109.2, 880.8, 0, 990, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(60, 'Darbhanga', 0, 174, 963.8, 0, 1137.7, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(61, 'Madhubani', 0, 216.1, 1180.6, 0, 1396.7, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(62, 'Samastipur', 0, 134.1, 819.8, 0, 954, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(63, 'Begusarai', 0, 73.8, 671.3, 0, 745.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(64, 'Munger', 0, 86.5, 744.8, 0, 831.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(65, 'Sheikhpura', 0, 67.3, 658.1, 0, 725.4, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(66, 'Lakhisarai', 0, 54, 733.5, 0, 787.5, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(67, 'Jamui', 0, 73.6, 732.6, 0, 806.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(68, 'Khagaria', 0, 118.8, 702.3, 0, 821.1, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(69, 'Bhagalpur', 0, 174, 999.2, 0, 1173.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(70, 'Banka', 0, 93.2, 806, 0, 899.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(71, 'Saharsa', 0, 242.8, 1071.3, 0, 1314.1, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(72, 'Supaul', 0, 200.4, 1193.9, 0, 1394.3, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(73, 'Madhepura', 0, 235.8, 948.2, 0, 1184, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(74, 'Purnia', 1, 289.6, 926.8, 0, 1217.4, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(75, 'Kishanganj', 0, 235.5, 1818.6, 0, 2054.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(76, 'Araria', 0, 154.9, 1029.7, 0, 1184.6, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(77, 'Katihar', 0, 141.8, 933.4, 0, 1075.2, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04'),
(78, 'Bihar', 0.4, 103.1, 843.2, 0, 946.8, 2017, '2018-07-12 08:37:04', '2018-07-12 08:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `rainfalls`
--

DROP TABLE IF EXISTS `rainfalls`;
CREATE TABLE `rainfalls` (
  `id` bigint(20) NOT NULL,
  `Districts` varchar(255) DEFAULT NULL,
  `WinterRain` float DEFAULT NULL,
  `HotWeatherRain` float DEFAULT NULL,
  `SouthWestMonsoonRain` float DEFAULT NULL,
  `NorthWestMonsoonRain` float DEFAULT NULL,
  `TotalRainfall` float DEFAULT NULL,
  `year` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rainfalls`
--

INSERT INTO `rainfalls` (`id`, `Districts`, `WinterRain`, `HotWeatherRain`, `SouthWestMonsoonRain`, `NorthWestMonsoonRain`, `TotalRainfall`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Patna', 3.4, 56.7, 801.3, 57.8, 919.1, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(2, 'Nalanda', 13.4, 48.9, 953.3, 72.1, 1087.7, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(3, 'Bhojpur', 2.5, 43.8, 716.8, 44.2, 807.3, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(4, 'Buxar', 6, 57.6, 815.2, 63.2, 942.1, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(5, 'Rohtas', 0, 2.3, 961.9, 76.9, 1041, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(6, 'Kaimur', 24, 13.7, 1114.3, 42.5, 1194.4, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(7, 'Gaya', 20, 19.3, 1061.7, 84.7, 1185.7, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(8, 'Jehanabad', 13.4, 26.8, 892, 74.6, 1006.8, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(9, 'Arwal', 3, 4.9, 1131.4, 97, 1236.3, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(10, 'Nawada', 20, 16.8, 807.4, 70.6, 914.8, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(11, 'Aurangabad', 12.6, 17.6, 1220, 127, 1377.2, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(12, 'Saran', 0.3, 42.3, 548.2, 35.7, 626.5, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(13, 'Siwan', 1.2, 20.7, 783.2, 39.1, 844.2, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(14, 'Gopalganj', 0, 112, 710, 31.7, 853.7, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(15, 'Muzaffarpur', 1.2, 88.1, 571.2, 19, 679.5, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(16, 'EastChamparan', 6.4, 112, 773.5, 20.7, 912.6, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(17, 'WestChamparan', 1.7, 98.2, 980.5, 2.7, 1083.1, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(18, 'Sitamarhi', 1.9, 52.1, 685.9, 6.8, 746.7, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(19, 'Sheohar', 5.3, 108.7, 843.9, 7.8, 965.7, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(20, 'Vaishali', 1.2, 0.2, 651.9, 57.8, 711.1, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(21, 'Darbhanga', 0, 111, 878.9, 46.5, 1036.3, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(22, 'Madhubani', 6.1, 128.4, 951.7, 30.9, 1117, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(23, 'Samastipur', 0.2, 111.9, 859.1, 87.4, 1058.6, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(24, 'Begusarai', 5.6, 55.7, 844.8, 31.8, 937.9, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(25, 'Munger', 39.9, 50.8, 882.4, 21.6, 994.7, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(26, 'Sheikhpura', 18.6, 18, 987.9, 78.1, 1102.5, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(27, 'Lakhisarai', 12.2, 28.9, 990.7, 33.7, 1065.6, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(28, 'Jamui', 18.3, 15.5, 1026.1, 60.6, 1120.5, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(29, 'Khagaria', 17.9, 50.7, 679.1, 19.5, 767.1, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(30, 'Bhagalpur', 0, 109.7, 986.4, 36.7, 1132.8, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(31, 'Banka', 12.3, 50.9, 916.1, 45.1, 1024.4, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(32, 'Saharsa', 0, 111, 1169.9, 68.9, 1349.9, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(33, 'Supaul', 0, 164.1, 1122, 80.8, 1366.9, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(34, 'Madhepura', 1.8, 139.8, 1010, 65, 1216.6, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(35, 'Purnia', 0, 185.3, 1131.1, 51.7, 1368.1, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(36, 'Kishanganj', 4.8, 250.2, 1887.2, 124.8, 2267, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(37, 'Araria', 8.1, 164.2, 1431, 81.1, 1684.3, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(38, 'Katihar', 0, 71, 827, 75.5, 973.5, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(39, 'Bihar', 7.5, 72.6, 937, 54.5, 1071.6, 2016, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(40, 'Patna', 0, 40.1, 627.3, 667.4, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(41, 'Nalanda', 0, 26.2, 653.9, 680.1, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(42, 'Bhojpur', 0, 39, 727.4, 766.4, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(43, 'Buxar', 0, 28.4, 655.5, 683.9, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(44, 'Rohtas', 0, 11, 739, 750, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(45, 'Kaimur', 0, 2.8, 818.3, 821.1, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(46, 'Gaya', 0, 7.9, 790.4, 798.3, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(47, 'Jehanabad', 0, 11.3, 617.6, 628.9, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(48, 'Arwal', 0, 23.2, 564.8, 588, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(49, 'Nawada', 0, 8.3, 575, 583.3, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(50, 'Aurangabad', 0.4, 17.2, 851.3, 868.9, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(51, 'Saran', 0, 68.1, 716.6, 784.7, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(52, 'Siwan', 0, 77.2, 696.2, 773.4, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(53, 'Gopalganj', 5.5, 74.4, 717.6, 797.5, 0, 2017, '2018-07-10 04:42:08', '2018-07-10 04:42:08'),
(54, 'Muzaffarpur', 0, 119.6, 745.9, 865.5, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(55, 'EastChamparan', 0, 125.6, 813.6, 939.2, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(56, 'WestChamparan', 9, 114.3, 1107.3, 1230.6, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(57, 'Sitamarhi', 0, 105.8, 891, 996.8, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(58, 'Sheohar', 0, 143.6, 918, 1061.6, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(59, 'Vaishali', 0, 109.2, 880.8, 990, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(60, 'Darbhanga', 0, 174, 963.8, 1137.8, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(61, 'Madhubani', 0, 216.1, 1180.6, 1396.7, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(62, 'Samastipur', 0, 134.1, 819.8, 953.9, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(63, 'Begusarai', 0, 73.8, 671.3, 745.1, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(64, 'Munger', 0, 86.5, 744.8, 831.3, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(65, 'Sheikhpura', 0, 67.3, 658.1, 725.4, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(66, 'Lakhisarai', 0, 54, 733.5, 787.5, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(67, 'Jamui', 0, 73.6, 732.6, 806.2, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(68, 'Khagaria', 0, 118.8, 702.3, 821.1, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(69, 'Bhagalpur', 0, 174, 999.2, 1173.2, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(70, 'Banka', 0, 93.2, 806, 899.2, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(71, 'Saharsa', 0, 242.8, 1071.3, 1314.1, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(72, 'Supaul', 0, 200.4, 1193.9, 1394.3, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(73, 'Madhepura', 0, 235.8, 948.2, 1184, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(74, 'Purnia', 1, 289.6, 926.8, 1217.4, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(75, 'Kishanganj', 0, 235.5, 1818.6, 2054.1, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(76, 'Araria', 0, 154.9, 1029.7, 1184.6, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(77, 'Katihar', 0, 141.8, 933.4, 1075.2, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09'),
(78, 'Bihar', 0.4, 103.1, 843.2, 946.8, 0, 2017, '2018-07-10 04:42:09', '2018-07-10 04:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180530121358'),
('20180530125025'),
('20180607104248'),
('20180620074357'),
('20180704063516'),
('20180705044630'),
('20180706071813'),
('20180706115241'),
('20180706150150'),
('20180706151416'),
('20180706152304'),
('20180707112020'),
('20180707113804'),
('20180708142911'),
('20180709072122'),
('20180709075532'),
('20180709083253'),
('20180709084113'),
('20180709101654'),
('20180709102136'),
('20180709102822'),
('20180709103457'),
('20180710103500'),
('20180710113758'),
('20180710143011'),
('20180710143758'),
('20180710150334'),
('20180711054916'),
('20180711064241'),
('20180711065204'),
('20180711085818'),
('20180711092323'),
('20180711112703'),
('20180711120543'),
('20180711121052'),
('20180712083615'),
('20180712101337'),
('20180712104830'),
('20180712105700'),
('20180713065205'),
('20180713065426'),
('20180713151755'),
('20180713152050'),
('20180716080201'),
('20180716090710'),
('20180716104647'),
('20180716111815'),
('20180716113436'),
('20180717042230'),
('20180717061522'),
('20180717065132'),
('20180717065712'),
('20180717075911'),
('20180717081022'),
('20180717091656'),
('20180717103019'),
('20180717103322'),
('20180717110138'),
('20180717112504'),
('20180717142120'),
('20180718042916'),
('20180718055651'),
('20180718061839'),
('20180718062211'),
('20180723092851'),
('20180724065643'),
('20180726061831'),
('20180726062849'),
('20180726081852'),
('20180726093132'),
('20180726093307'),
('20180726100048'),
('20180726101907'),
('20180726122302'),
('20180727041246'),
('20180727051521'),
('20180727062031'),
('20180727064016'),
('20180727064620'),
('20180727070111'),
('20180727071435'),
('20180727073928'),
('20180727074914'),
('20180727075741'),
('20180727080611'),
('20180727081533'),
('20180727082359'),
('20180803053246'),
('20180803072359'),
('20180803073914'),
('20180803075630'),
('20180803102611'),
('20180803103123'),
('20180806084101'),
('20180806103432'),
('20180806121547'),
('20180807074129'),
('20180807105025'),
('20180807112025'),
('20180807114928'),
('20180807120109'),
('20180808052216'),
('20180808061410'),
('20180808063509'),
('20180808070433'),
('20180808072408'),
('20180808084719'),
('20180808103908'),
('20180808112526'),
('20180808123145'),
('20180808124143'),
('20180808125133'),
('20180808130204'),
('20180808131745');

-- --------------------------------------------------------

--
-- Table structure for table `test1s`
--

DROP TABLE IF EXISTS `test1s`;
CREATE TABLE `test1s` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agricultural_credit1s`
--
ALTER TABLE `agricultural_credit1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_credit2s`
--
ALTER TABLE `agricultural_credit2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs1_part1s`
--
ALTER TABLE `agricultural_inputs1_part1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs1_part2s`
--
ALTER TABLE `agricultural_inputs1_part2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs2s`
--
ALTER TABLE `agricultural_inputs2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs3s`
--
ALTER TABLE `agricultural_inputs3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs4s`
--
ALTER TABLE `agricultural_inputs4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs5s`
--
ALTER TABLE `agricultural_inputs5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs6s`
--
ALTER TABLE `agricultural_inputs6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs7s`
--
ALTER TABLE `agricultural_inputs7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agricultural_inputs8s`
--
ALTER TABLE `agricultural_inputs8s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_husbandry1s`
--
ALTER TABLE `animal_husbandry1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_husbandry2s`
--
ALTER TABLE `animal_husbandry2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_husbandry3s`
--
ALTER TABLE `animal_husbandry3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_husbandry4s`
--
ALTER TABLE `animal_husbandry4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_husbandry5s`
--
ALTER TABLE `animal_husbandry5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_husbandry6s`
--
ALTER TABLE `animal_husbandry6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_rainfalls`
--
ALTER TABLE `annual_rainfalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cropping_patterns`
--
ALTER TABLE `cropping_patterns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health1s`
--
ALTER TABLE `health1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health5s`
--
ALTER TABLE `health5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health6s`
--
ALTER TABLE `health6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health7s`
--
ALTER TABLE `health7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health8s`
--
ALTER TABLE `health8s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health9s`
--
ALTER TABLE `health9s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health10s`
--
ALTER TABLE `health10s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health11s`
--
ALTER TABLE `health11s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health12s`
--
ALTER TABLE `health12s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health13s`
--
ALTER TABLE `health13s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health14s`
--
ALTER TABLE `health14s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health15s`
--
ALTER TABLE `health15s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health16s`
--
ALTER TABLE `health16s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health17s`
--
ALTER TABLE `health17s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health18s`
--
ALTER TABLE `health18s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health19s`
--
ALTER TABLE `health19s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health20s`
--
ALTER TABLE `health20s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health21s`
--
ALTER TABLE `health21s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health22s`
--
ALTER TABLE `health22s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hhs`
--
ALTER TABLE `hhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irrigation1s`
--
ALTER TABLE `irrigation1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irrigation2s`
--
ALTER TABLE `irrigation2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irrigation3s`
--
ALTER TABLE `irrigation3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irrigation4s`
--
ALTER TABLE `irrigation4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irrigation5s`
--
ALTER TABLE `irrigation5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irrigation6s`
--
ALTER TABLE `irrigation6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `land1s`
--
ALTER TABLE `land1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newrices`
--
ALTER TABLE `newrices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_and_productivity_of_rices`
--
ALTER TABLE `production_and_productivity_of_rices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity1s`
--
ALTER TABLE `production_productivity1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity2s`
--
ALTER TABLE `production_productivity2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity4s`
--
ALTER TABLE `production_productivity4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity5s`
--
ALTER TABLE `production_productivity5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity7s`
--
ALTER TABLE `production_productivity7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity8s`
--
ALTER TABLE `production_productivity8s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity9s`
--
ALTER TABLE `production_productivity9s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity10s`
--
ALTER TABLE `production_productivity10s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity11s`
--
ALTER TABLE `production_productivity11s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_productivity12s`
--
ALTER TABLE `production_productivity12s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainfall1s`
--
ALTER TABLE `rainfall1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainfall2s`
--
ALTER TABLE `rainfall2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainfalls`
--
ALTER TABLE `rainfalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `test1s`
--
ALTER TABLE `test1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agricultural_credit1s`
--
ALTER TABLE `agricultural_credit1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agricultural_credit2s`
--
ALTER TABLE `agricultural_credit2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `agricultural_inputs1_part1s`
--
ALTER TABLE `agricultural_inputs1_part1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `agricultural_inputs1_part2s`
--
ALTER TABLE `agricultural_inputs1_part2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `agricultural_inputs2s`
--
ALTER TABLE `agricultural_inputs2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `agricultural_inputs3s`
--
ALTER TABLE `agricultural_inputs3s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agricultural_inputs4s`
--
ALTER TABLE `agricultural_inputs4s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `agricultural_inputs5s`
--
ALTER TABLE `agricultural_inputs5s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agricultural_inputs6s`
--
ALTER TABLE `agricultural_inputs6s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `agricultural_inputs7s`
--
ALTER TABLE `agricultural_inputs7s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `agricultural_inputs8s`
--
ALTER TABLE `agricultural_inputs8s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animal_husbandry1s`
--
ALTER TABLE `animal_husbandry1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `animal_husbandry2s`
--
ALTER TABLE `animal_husbandry2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `animal_husbandry3s`
--
ALTER TABLE `animal_husbandry3s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `animal_husbandry4s`
--
ALTER TABLE `animal_husbandry4s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `animal_husbandry5s`
--
ALTER TABLE `animal_husbandry5s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `animal_husbandry6s`
--
ALTER TABLE `animal_husbandry6s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `annual_rainfalls`
--
ALTER TABLE `annual_rainfalls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `cropping_patterns`
--
ALTER TABLE `cropping_patterns`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `health1s`
--
ALTER TABLE `health1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `health5s`
--
ALTER TABLE `health5s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `health6s`
--
ALTER TABLE `health6s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `health7s`
--
ALTER TABLE `health7s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `health8s`
--
ALTER TABLE `health8s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `health9s`
--
ALTER TABLE `health9s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `health10s`
--
ALTER TABLE `health10s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `health11s`
--
ALTER TABLE `health11s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `health12s`
--
ALTER TABLE `health12s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `health13s`
--
ALTER TABLE `health13s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `health14s`
--
ALTER TABLE `health14s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `health15s`
--
ALTER TABLE `health15s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `health16s`
--
ALTER TABLE `health16s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `health17s`
--
ALTER TABLE `health17s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `health18s`
--
ALTER TABLE `health18s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `health19s`
--
ALTER TABLE `health19s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `health20s`
--
ALTER TABLE `health20s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `health21s`
--
ALTER TABLE `health21s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `health22s`
--
ALTER TABLE `health22s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `hhs`
--
ALTER TABLE `hhs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `irrigation1s`
--
ALTER TABLE `irrigation1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `irrigation2s`
--
ALTER TABLE `irrigation2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `irrigation3s`
--
ALTER TABLE `irrigation3s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `irrigation4s`
--
ALTER TABLE `irrigation4s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `irrigation5s`
--
ALTER TABLE `irrigation5s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `irrigation6s`
--
ALTER TABLE `irrigation6s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `land1s`
--
ALTER TABLE `land1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `newrices`
--
ALTER TABLE `newrices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_and_productivity_of_rices`
--
ALTER TABLE `production_and_productivity_of_rices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_productivity1s`
--
ALTER TABLE `production_productivity1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `production_productivity2s`
--
ALTER TABLE `production_productivity2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `production_productivity4s`
--
ALTER TABLE `production_productivity4s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `production_productivity5s`
--
ALTER TABLE `production_productivity5s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `production_productivity7s`
--
ALTER TABLE `production_productivity7s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_productivity8s`
--
ALTER TABLE `production_productivity8s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_productivity9s`
--
ALTER TABLE `production_productivity9s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_productivity10s`
--
ALTER TABLE `production_productivity10s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_productivity11s`
--
ALTER TABLE `production_productivity11s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `production_productivity12s`
--
ALTER TABLE `production_productivity12s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `rainfall1s`
--
ALTER TABLE `rainfall1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rainfall2s`
--
ALTER TABLE `rainfall2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `rainfalls`
--
ALTER TABLE `rainfalls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `test1s`
--
ALTER TABLE `test1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
