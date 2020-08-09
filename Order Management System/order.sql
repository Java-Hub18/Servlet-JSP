-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 04:27 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `cname`, `price`, `qty`, `total`) VALUES
(1, 'vadapav', '15', '1', 15),
(2, 'water', '15', '1', 15),
(3, 'milk', '50', '1', 50),
(4, 'bhaji pav', '40', '1', 40);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` float NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty` float NOT NULL,
  `total` float NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `item`, `price`, `qty`, `total`, `added_date`) VALUES
(1, 1000, 'vadapav', 15, 1, 15, '2018-03-30 13:57:42'),
(2, 1000, 'vadapav', 15, 1, 15, '2018-03-30 14:25:59'),
(3, 1001, 'water', 15, 1, 15, '2018-03-30 14:25:59'),
(4, 1001, 'vadapav', 15, 1, 15, '2018-03-30 14:30:57'),
(5, 1001, 'milk', 50, 2, 100, '2018-03-30 14:30:57'),
(6, 1001, 'bhaji pav', 40, 4, 160, '2018-03-30 14:32:48'),
(7, 1001, 'vadapav', 15, 4, 60, '2018-03-30 14:32:48'),
(8, 1001, 'milk', 50, 1, 50, '2018-03-30 14:32:48'),
(10, 1001, 'vadapav', 15, 1, 15, '2018-03-30 14:34:33'),
(11, 1001, 'water', 15, 1, 15, '2018-03-30 14:34:48'),
(12, 1001, 'milk', 50, 1, 50, '2018-03-30 14:35:19'),
(13, 1002, 'milk', 50, 1, 50, '2018-03-30 14:37:19'),
(14, 1003, 'vadapav', 15, 1, 15, '2018-03-30 14:39:04'),
(15, 1003, 'water', 15, 1, 15, '2018-03-30 14:39:04'),
(16, 1003, 'milk', 50, 1, 50, '2018-03-30 14:39:04'),
(17, 1003, 'bhaji pav', 40, 1, 40, '2018-03-30 14:39:04'),
(18, 1004, 'vadapav', 15, 1, 15, '2018-03-30 15:06:50'),
(19, 1004, 'water', 15, 1, 15, '2018-03-30 15:06:50'),
(20, 1004, 'milk', 50, 1, 50, '2018-03-30 15:06:50'),
(21, 1004, 'bhaji pav', 40, 1, 40, '2018-03-30 15:06:50'),
(22, 1005, 'vadapav', 15, 1, 15, '2018-03-30 15:06:50'),
(23, 1005, 'water', 15, 1, 15, '2018-03-30 15:06:50'),
(24, 1005, 'milk', 50, 1, 50, '2018-03-30 15:06:50'),
(25, 1005, 'bhaji pav', 40, 1, 40, '2018-03-30 15:06:50'),
(26, 1006, 'vadapav', 15, 1, 15, '2018-03-30 15:07:43'),
(27, 1007, 'vadapav', 15, 1, 15, '2018-03-30 15:08:37'),
(28, 1008, 'vadapav', 15, 1, 15, '2018-03-30 15:10:37'),
(29, 1008, 'vadapav', 15, 1, 15, '2018-03-30 15:10:37'),
(30, 1009, 'bhaji pav', 40, 1, 40, '2018-03-30 15:11:09'),
(31, 1009, 'milk', 50, 1, 50, '2018-03-30 15:11:09'),
(32, 1009, 'water', 15, 1, 15, '2018-03-30 15:11:09'),
(33, 1009, 'vadapav', 15, 1, 15, '2018-03-30 15:11:09'),
(34, 1010, 'vadapav', 15, 1, 15, '2018-03-30 15:18:49'),
(35, 1010, 'water', 15, 1, 15, '2018-03-30 15:18:49'),
(36, 1010, 'bhaji pav', 40, 1, 40, '2018-03-30 15:18:49'),
(37, 1011, 'vadapav', 15, 1, 15, '2018-03-30 15:22:23'),
(38, 1012, 'vadapav', 15, 1, 15, '2018-03-30 15:23:17'),
(39, 1013, 'vadapav', 15, 1, 15, '2018-03-30 15:32:34'),
(40, 1014, 'vadapav', 15, 1, 15, '2018-03-30 15:34:19'),
(41, 1015, 'vadapav', 15, 1, 15, '2018-03-30 15:34:50'),
(42, 1016, 'vadapav', 15, 1, 15, '2018-03-30 15:35:59'),
(43, 1017, 'vadapav', 15, 1, 15, '2018-03-30 15:36:29'),
(44, 1018, 'vadapav', 15, 5, 75, '2018-03-30 15:39:46'),
(45, 1019, 'milk', 50, 2, 100, '2018-03-30 15:41:11'),
(46, 1020, 'bhaji pav', 40, 5, 200, '2018-03-30 15:42:23'),
(47, 1021, 'water', 15, 10, 150, '2018-03-30 15:43:28'),
(48, 1022, 'water', 15, 1, 15, '2018-03-30 15:44:44'),
(49, 1023, 'milk', 50, 1, 50, '2018-03-30 15:48:54'),
(50, 1024, 'milk', 50, 1, 50, '2018-03-30 15:52:20'),
(51, 1025, 'bhaji pav', 40, 5, 200, '2018-03-30 15:53:36'),
(52, 1026, 'milk', 50, 1, 50, '2018-03-30 15:55:17'),
(53, 1027, 'vadapav', 15, 10, 150, '2018-03-30 15:58:35'),
(54, 1028, 'bhaji pav', 40, 1, 40, '2018-03-30 17:40:30'),
(55, 1028, 'milk', 50, 1, 50, '2018-03-30 17:40:30'),
(56, 1029, 'milk', 50, 1, 50, '2018-04-02 14:03:12'),
(57, 1030, 'vadapav', 15, 1, 15, '2018-04-02 14:06:24'),
(58, 1030, 'bhaji pav', 40, 1, 40, '2018-04-02 14:06:24'),
(59, 1031, 'milk', 50, 1, 50, '2018-04-02 14:06:44'),
(60, 1032, 'vadapav', 15, 1, 15, '2018-04-02 14:06:55'),
(61, 1033, 'milk', 50, 1, 50, '2018-04-02 14:08:35'),
(62, 1033, 'bhaji pav', 40, 1, 40, '2018-04-02 14:08:35'),
(63, 1034, 'bhaji pav', 40, 1, 40, '2018-04-02 14:09:10'),
(64, 1034, 'milk', 50, 5, 250, '2018-04-02 14:09:10'),
(65, 1035, 'vadapav', 15, 1, 15, '2018-04-02 14:09:25'),
(66, 1035, 'water', 15, 1, 15, '2018-04-02 14:09:26'),
(67, 1036, 'vadapav', 15, 1, 15, '2018-04-02 14:10:05'),
(68, 1036, 'water', 15, 1, 15, '2018-04-02 14:10:05'),
(69, 1036, 'milk', 50, 1, 50, '2018-04-02 14:10:05'),
(70, 1036, 'bhaji pav', 40, 1, 40, '2018-04-02 14:10:05'),
(71, 1037, 'vadapav', 15, 1, 15, '2018-04-02 14:10:18'),
(72, 1037, 'water', 15, 1, 15, '2018-04-02 14:10:18'),
(73, 1038, 'vadapav', 15, 1, 15, '2018-04-02 14:15:44'),
(74, 1038, 'vadapav', 15, 1, 15, '2018-04-02 14:15:44'),
(75, 1039, 'vadapav', 15, 1, 15, '2018-04-02 14:18:23'),
(76, 1039, 'water', 15, 1, 15, '2018-04-02 14:18:23'),
(77, 1039, 'milk', 50, 1, 50, '2018-04-02 14:18:23'),
(78, 1039, 'bhaji pav', 40, 1, 40, '2018-04-02 14:18:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
