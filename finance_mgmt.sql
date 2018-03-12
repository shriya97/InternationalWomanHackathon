-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2018 at 07:32 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finance_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer_profile`
--

CREATE TABLE `buyer_profile` (
  `buyer_id` int(255) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `H.No.` varchar(20) NOT NULL,
  `Area/Locality` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Pin-code` varchar(10) NOT NULL,
  `Phone No.` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_profile`
--

INSERT INTO `buyer_profile` (`buyer_id`, `FName`, `LName`, `Email`, `Password`, `H.No.`, `Area/Locality`, `City`, `state`, `Country`, `Pin-code`, `Phone No.`) VALUES
(1, 'Mohini', 'jadon', '15mohinijadon@gmail.com', 'Mohini@17', '140  ghanshyam', 'vai', 'jpr', 'raj', 'ind', '3020', '9928012127'),
(2, 'man', 'jam', '15mohinijadon@gmail.com', '1234', '12', 'ee', 'dd', 'dd', 'ddd', 'dd', '1234567890'),
(3, 'mer', 'fjg', '15mohinijadon', '6775ee23bf3c7474d94a1d20a2dc06a30aecc1cc', 'fg', 'gg', 'er', 'g', 'gggg', 'fe', '1234567890'),
(4, 'mah', '', 'mah', '19ddb7f74778e2041036013a39273f54ef0aa970', 'null', 'kj', 'ih', '', '', '', '2345678901'),
(6, 'vrinda', 'malhotra', 'vrinda@gmail.com', 'b7337b170a0cda04f5f769514f3499ce680fc677', 'null', 'naveen shahdara', 'delhi', 'delhi', 'India', '110032', '9212598093');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_profile`
--

CREATE TABLE `ngo_profile` (
  `ngo_id` int(255) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `H.No.` varchar(20) NOT NULL,
  `Area/Locality` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Pin-code` varchar(10) NOT NULL,
  `Phone No.` varchar(10) NOT NULL,
  `Website` varchar(50) NOT NULL,
  `NGO_name` varchar(50) DEFAULT NULL,
  `selected_seller` varchar(30) DEFAULT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_profile`
--

INSERT INTO `ngo_profile` (`ngo_id`, `FName`, `LName`, `Email`, `Password`, `H.No.`, `Area/Locality`, `City`, `state`, `Country`, `Pin-code`, `Phone No.`, `Website`, `NGO_name`, `selected_seller`, `selected`) VALUES
(1, 'kritika', 'malhotra', 'kritika@gmail.com', '094772765b24b19a5e62429bcf914a42b32544ac', 'null', 'naveen shahdara', 'delhi', 'delhi', 'India', '110032', '9212598093', 'ngo2.com', 'ngo2', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seller_pdt`
--

CREATE TABLE `seller_pdt` (
  `pdt_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `pdt_name` varchar(80) NOT NULL,
  `pdt_description` varchar(100) NOT NULL,
  `cprice` double NOT NULL,
  `sprice` double NOT NULL,
  `available_qty` int(11) NOT NULL,
  `qty_purchased` int(11) NOT NULL DEFAULT '0',
  `total_selling_cost` int(11) NOT NULL DEFAULT '0',
  `Image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_pdt`
--

INSERT INTO `seller_pdt` (`pdt_id`, `seller_id`, `pdt_name`, `pdt_description`, `cprice`, `sprice`, `available_qty`, `qty_purchased`, `total_selling_cost`, `Image`) VALUES
(9, 55, 'popcorn', 'popcorn', 30, 50, 8, 2, 0, 0x3138323431323638372e6a7067),
(10, 55, 'chair', 'wooden chair', 50000, 70000, 2, 0, 0, 0x3138323431323638372e6a7067),
(11, 55, 'iphoneX', 'supercool', 100000, 140000, 5, 3, 0, 0x3138323431323638372e6a7067),
(13, 55, 'door', 'wooden door', 12000, 15000, 4, 0, 0, 0x31393032393239335f3836373634343838333338373039325f3637353530333134383134373031383638355f6e2e6a7067),
(15, 55, 'macosx', 'slim', 90000, 90010, 12, 5, 450000, 0x3138323431323638372e6a7067),
(16, 5, 'hp', '360 rotatable', 89000, 90000, 20, 0, 0, 0x3138323431323638372e6a7067),
(17, 5, 'dell', 'thick', 50000, 55000, 34, 0, 0, 0x3138323431323638372e6a7067),
(18, 5, 'lenovo', 'medium', 34000, 45000, 67, 0, 0, 0x3138323431323638372e6a7067),
(19, 60, 'bananas', 'yellow', 10, 20, 15, 15, 300, 0x3138323431323638372e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `seller_profile`
--

CREATE TABLE `seller_profile` (
  `seller_id` int(255) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `H.No.` varchar(20) NOT NULL,
  `Area/Locality` varchar(50) NOT NULL,
  `State` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Pin-code` varchar(10) NOT NULL,
  `Phone No.` varchar(10) NOT NULL,
  `Company` varchar(50) DEFAULT NULL,
  `Website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_profile`
--

INSERT INTO `seller_profile` (`seller_id`, `FName`, `LName`, `Email`, `Password`, `H.No.`, `Area/Locality`, `State`, `City`, `Country`, `Pin-code`, `Phone No.`, `Company`, `Website`) VALUES
(5, 'Pallavi', 'Singh', 'pallavis98@gmail.com', '996e5205eabf870dfb1c89a25d3d54f734ee0a42', '338/4', 'Shivaji colony rohtak', 'haryana', 'rohtak', 'india', '124001', '9017410108', 'hack pvt ltd', 'hack.com'),
(55, 'shriya', 'malhotra', 'shri17ya@gmail.com', 'd87d8685eef72cd41002c5e8c60ff2dd92d65317', '3', 'naveen', 'delhi', 'delhi', 'India', '110032', '9212598093', 'abc pvt ltd', 'abc2.com'),
(60, 'sonu', 'singhsss', 'sonu@gmail.com', '074ba5a9d31094ba921775ff695a9f383768784b', '123', '123', '', '', '', '', '123', 'my company', 'my company.com');

-- --------------------------------------------------------

--
-- Table structure for table `seller_profit_loss`
--

CREATE TABLE `seller_profit_loss` (
  `seller_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  `labour_cost` int(11) NOT NULL,
  `raw_cost` int(11) NOT NULL,
  `transport_cost` int(11) NOT NULL,
  `govt_help` int(11) NOT NULL,
  `Loan` int(11) NOT NULL,
  `profit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_profit_loss`
--

INSERT INTO `seller_profit_loss` (`seller_id`, `pdt_id`, `year`, `month`, `labour_cost`, `raw_cost`, `transport_cost`, `govt_help`, `Loan`, `profit`) VALUES
(5, 15, '2018', 'JANUARY', 12, 23, 34, 45, 2, 652074),
(5, 15, '2017', 'JANUARY', 23, 45, 56, 66, 6, 362803),
(5, 15, '2016', 'JANUARY', 6666, 78788, 89, 90, 8, 426),
(5, 15, '2014', 'JANUARY', 111111, 1111, 11, 11, 11, 301),
(60, 15, '2018', 'JANUARY', 12, 23, 23, 22, 2, 775762),
(60, 19, '2018', 'JANUARY', 166, 123, 56, 7, 7, -39),
(60, 19, '2017', 'JANUARY', 12, 12, 12, 1, 1, 552),
(60, 19, '2015', 'JANUARY', 12, 12, 12, 1, 1, 552),
(60, 19, '2014', 'JANUARY', 120, 120, 12, 1, 1, -25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer_profile`
--
ALTER TABLE `buyer_profile`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `ngo_profile`
--
ALTER TABLE `ngo_profile`
  ADD PRIMARY KEY (`ngo_id`);

--
-- Indexes for table `seller_pdt`
--
ALTER TABLE `seller_pdt`
  ADD PRIMARY KEY (`pdt_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller_profile`
--
ALTER TABLE `seller_profile`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `seller_profit_loss`
--
ALTER TABLE `seller_profit_loss`
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer_profile`
--
ALTER TABLE `buyer_profile`
  MODIFY `buyer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ngo_profile`
--
ALTER TABLE `ngo_profile`
  MODIFY `ngo_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_pdt`
--
ALTER TABLE `seller_pdt`
  MODIFY `pdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seller_profile`
--
ALTER TABLE `seller_profile`
  MODIFY `seller_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seller_profit_loss`
--
ALTER TABLE `seller_profit_loss`
  ADD CONSTRAINT `seller_profit_loss_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_profile` (`seller_id`),
  ADD CONSTRAINT `seller_profit_loss_ibfk_2` FOREIGN KEY (`pdt_id`) REFERENCES `seller_pdt` (`pdt_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
