-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 07:41 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jimsjoint-front`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE IF NOT EXISTS `Categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `description`, `image`) VALUES
('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium "meat".', 'catm.png'),
('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('cbf29f0b47541dbcbcd6800ebf5f790ade48053f', '127.0.0.1', 1491515372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313531353336363b),
('324d6715c870c75d7929d221ee71977b33cdb3cd', '127.0.0.1', 1491516931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313531363637313b),
('f64cde346b98867a5a5a094be16f32592f0f50ac', '127.0.0.1', 1491517249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313531373035333b75736572726f6c657c733a343a2275736572223b),
('da67cc0f8fb128960c74a1a5aaeda4aafd504355', '127.0.0.1', 1491518388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313531383236363b75736572726f6c657c733a353a2261646d696e223b6b65797c4e3b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a303a22223b733a343a226e616d65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a353a227072696365223b733a303a22223b733a373a2270696374757265223b733a303a22223b733a383a2263617465676f7279223b733a303a22223b7d),
('cd36f4efb3faca9cb9d5ee1e1391e0067aa1f0c5', '127.0.0.1', 1491522108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532323130313b75736572726f6c657c733a353a2261646d696e223b6b65797c4e3b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a303a22223b733a343a226e616d65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a353a227072696365223b733a303a22223b733a373a2270696374757265223b733a303a22223b733a383a2263617465676f7279223b733a303a22223b7d),
('3b78f2ba8cb7a744cd56653187bc3f4f64a4a827', '127.0.0.1', 1491765977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313736353931343b75736572726f6c657c733a353a2261646d696e223b),
('73c7397ebb148d57a4dea7c4280805d99a1d7439', '127.0.0.1', 1491766686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313736363531383b75736572726f6c657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `Orderitems`
--

CREATE TABLE IF NOT EXISTS `Orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE IF NOT EXISTS `Orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `Orderitems`
--
ALTER TABLE `Orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
