-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 10:33 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_showroom`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `register` (IN `Name` VARCHAR(100), IN `Email` VARCHAR(100), IN `Pass` VARCHAR(100), IN `Phone` VARCHAR(100), IN `Address` VARCHAR(20))  BEGIN
INSERT INTO customer(name,email,pass,phone,address) VALUES (Name , Email, Pass, Phone, Address);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', '478048'),
(2, 'admin1', '24685'),
(3, 'rrabbybhuiyan48@gmail.com', '484848');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `chassis_number` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`chassis_number`, `model`, `color`) VALUES
(77, 71, 'blue'),
(345, 1005, 'red'),
(355, 73, 'black'),
(1003, 72, 'blue'),
(1004, 72, 'green'),
(1005, 73, 'blue'),
(1006, 73, 'green'),
(1007, 74, 'blue'),
(1008, 74, 'green'),
(1110, 75, 'blue'),
(1114, 81, 'yellow'),
(1115, 83, 'red'),
(1116, 83, 'yellow'),
(1117, 84, 'red'),
(1118, 84, 'yellow'),
(1120, 85, 'red'),
(1124, 92, 'white'),
(1126, 93, 'white'),
(1133, 1002, 'orange'),
(1134, 1002, 'orange'),
(1135, 1003, 'orange'),
(1136, 1003, 'silver'),
(1137, 1004, 'orange'),
(1138, 1004, 'silver'),
(1139, 1005, 'orange'),
(1140, 1005, 'silver'),
(1141, 1101, 'silver'),
(1142, 1101, 'silver'),
(1145, 1103, 'silver'),
(1146, 1103, 'silver'),
(1147, 1104, 'silver'),
(1148, 1104, 'silver'),
(1149, 1105, 'silver'),
(1150, 1105, 'silver'),
(1151, 1201, 'white'),
(1152, 1201, 'white'),
(1153, 1202, 'white'),
(1154, 1202, 'white'),
(1155, 1203, 'white'),
(1156, 1203, 'white'),
(1157, 1204, 'white'),
(1158, 1204, 'white'),
(1160, 1205, 'white');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `name`, `email`, `pass`, `phone`, `address`) VALUES
(3, 'Afridi', 'rrabbybhuiyan48@gmail.com', 'Rabbys', '01581833021', 'Gopalganj ');

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `d_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealership`
--

INSERT INTO `dealership` (`d_id`, `name`) VALUES
(7001, 'Galaxy Toyota'),
(8001, 'Audi Central'),
(9001, 'BMW One Central'),
(10001, 'Metro Chevrolet'),
(11001, 'Aston Martin'),
(12001, 'Mistubishi');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `m_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`m_id`, `name`) VALUES
(7001, 'Toyota'),
(8001, 'Audi'),
(9001, 'BMW'),
(10001, 'Chevrolet'),
(11001, 'Aston Martin'),
(12001, 'Mitsubishi');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  `basic_spec` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model`, `m_id`, `name`, `year`, `basic_spec`) VALUES
(71, 7001, 'Land Cruiser Prado', 2023, ''),
(72, 7001, 'Fortuner', 2023, ''),
(73, 7001, 'Camry', 2023, ''),
(74, 7001, 'Innova Crysta', 2016, ''),
(75, 7001, 'Etios Cross', 2023, ''),
(81, 8001, 'R8', 2016, ''),
(82, 8001, 'Q7', 2015, ''),
(83, 8001, 'RS7', 2016, ''),
(84, 8001, 'A8', 2017, ''),
(85, 8001, 'TT', 2015, ''),
(91, 9001, 'M4', 2016, ''),
(92, 9001, 'X6', 2017, ''),
(93, 9001, 'i8', 2015, ''),
(94, 9001, 'M3', 2017, ''),
(95, 9001, 'X3', 2023, ''),
(1001, 10001, 'Trailblazer', 2016, ''),
(1002, 10001, 'Cruze', 2017, ''),
(1003, 10001, 'Sail', 2015, ''),
(1004, 10001, 'Beat', 2023, ''),
(1005, 10001, 'Volt', 2016, ''),
(1101, 11001, 'Db11', 2014, ''),
(1102, 11001, 'Rapide', 2023, ''),
(1103, 11001, 'Vanquish', 2023, ''),
(1104, 11001, 'Vantage', 2023, ''),
(1105, 11001, 'Vulcan', 2023, ''),
(1201, 12001, 'Cedia', 2012, ''),
(1202, 12001, 'Lancer', 2002, ''),
(1203, 12001, 'Montero', 2013, ''),
(1204, 12001, 'Outlander', 2016, ''),
(1205, 12001, 'Pajero', 2014, '');

-- --------------------------------------------------------

--
-- Table structure for table `sale2`
--

CREATE TABLE `sale2` (
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `carmodel` varchar(100) NOT NULL,
  `ordertime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale2`
--

INSERT INTO `sale2` (`sale_id`, `customer_id`, `carmodel`, `ordertime`) VALUES
(5, 3, '91', '2023-07-11 23:09:28'),
(6, 3, '71', '2023-07-12 01:15:39'),
(7, 3, '75', '2023-07-13 02:14:00'),
(8, 3, '95', '2023-07-14 01:20:14'),
(9, 3, '85', '2023-07-14 21:13:34'),
(10, 3, '1205', '2023-07-15 15:21:30'),
(11, 3, '91', '2023-07-15 15:33:18'),
(12, 3, '1001', '2023-07-15 16:10:45'),
(13, 3, '1001', '2023-07-15 16:13:52'),
(14, 3, '93', '2023-07-15 16:27:04'),
(15, 3, '94', '2023-07-15 16:27:17'),
(16, 3, '94', '2023-07-15 16:28:00'),
(17, 3, '92', '2023-07-15 16:36:29'),
(18, 3, '95', '2023-07-15 16:38:43'),
(19, 3, '95', '2023-07-15 16:38:49'),
(20, 3, '1102', '2023-07-15 16:39:24'),
(21, 3, '1102', '2023-07-15 16:40:02'),
(22, 3, '83', '2023-07-15 23:15:14');

--
-- Triggers `sale2`
--
DELIMITER $$
CREATE TRIGGER `Transaction` BEFORE INSERT ON `sale2` FOR EACH ROW BEGIN
	SET NEW.ordertime = NOW();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`chassis_number`),
  ADD KEY `serial` (`model`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `d_id_2` (`d_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `sale2`
--
ALTER TABLE `sale2`
  ADD PRIMARY KEY (`sale_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `chassis_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale2`
--
ALTER TABLE `sale2`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`model`) REFERENCES `model` (`model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dealership`
--
ALTER TABLE `dealership`
  ADD CONSTRAINT `dealership_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `manufacturer` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `manufacturer` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
