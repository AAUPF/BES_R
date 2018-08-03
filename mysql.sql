-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2018 at 12:18 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `newdata`
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
('20180803103123');

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
-- AUTO_INCREMENT for table `cropping_patterns`
--
ALTER TABLE `cropping_patterns`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
