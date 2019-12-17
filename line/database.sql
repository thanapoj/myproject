-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2019 at 05:34 PM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doggooglec_line`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `email`, `tel`) VALUES
(1, 'zthanapoj@test.com', '0831203555'),
(2, 'zkittipong@test.com', '083145test'),
(3, 'zteera@test.com', '081875test');

-- --------------------------------------------------------

--
-- Table structure for table `adminlist`
--

CREATE TABLE `adminlist` (
  `id` int(11) NOT NULL,
  `serverid` text NOT NULL,
  `adminid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlist`
--

INSERT INTO `adminlist` (`id`, `serverid`, `adminid`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '2', '1'),
(4, '2', '3'),
(5, '3', '1'),
(6, '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `userid` text NOT NULL,
  `usertext` text NOT NULL,
  `timestamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `userid`, `usertext`, `timestamp`) VALUES
(1, 'U4f06d1704e5c79234d397da9e8b0558e', 'ดีครบั', '1576066267395'),
(2, 'U4f06d1704e5c79234d397da9e8b0558e', 'สวัสดีครับ', '1576066421196'),
(3, 'U4f06d1704e5c79234d397da9e8b0558e', 'ดีครับ', '1576210286068'),
(4, 'U4f06d1704e5c79234d397da9e8b0558e', 'ดีครับ', '1576210438324'),
(5, 'U4f06d1704e5c79234d397da9e8b0558e', 'ดีครับ', '1576210470204'),
(6, 'U4f06d1704e5c79234d397da9e8b0558e', 'thanapoj', '1576210489922'),
(7, 'U4f06d1704e5c79234d397da9e8b0558e', 'thanapoj', '1576210531723'),
(8, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210611723'),
(9, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210694606'),
(10, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210718556'),
(11, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210766882'),
(12, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210781433'),
(13, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210819011'),
(14, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210855264'),
(15, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210878886'),
(16, 'U4f06d1704e5c79234d397da9e8b0558e', 'thanapoj', '1576210890778'),
(17, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210893807'),
(18, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210920110'),
(19, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210934246'),
(20, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576210988856'),
(21, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576211151779'),
(22, 'U4f06d1704e5c79234d397da9e8b0558e', 'x', '1576211197876'),
(23, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576211200153'),
(24, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576218792451'),
(25, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576218828104'),
(26, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576218897657'),
(27, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576218936473'),
(28, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576218985245'),
(29, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576219017526'),
(30, 'U4f06d1704e5c79234d397da9e8b0558e', 'test', '1576219307261'),
(31, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219324809'),
(32, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576219346963'),
(33, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219358438'),
(34, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219446356'),
(35, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219527849'),
(36, 'U4f06d1704e5c79234d397da9e8b0558e', 'test', '1576219685595'),
(37, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219691451'),
(38, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219795456'),
(39, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576219829210'),
(40, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576219834938'),
(41, 'U4f06d1704e5c79234d397da9e8b0558e', 'test-server-01', '1576219924183'),
(42, 'U4f06d1704e5c79234d397da9e8b0558e', 'test', '1576219940104'),
(43, 'U4f06d1704e5c79234d397da9e8b0558e', 'test', '1576220704822'),
(44, 'U4f06d1704e5c79234d397da9e8b0558e', 'thanapoj', '1576220715219'),
(45, 'U4f06d1704e5c79234d397da9e8b0558e', 'zt', '1576220722236'),
(46, '', '', ''),
(47, 'Udeadbeefdeadbeefdeadbeefdeadbeef', 'Hello, world', '1576221378261'),
(48, 'Udeadbeefdeadbeefdeadbeefdeadbeef', 'Hello, world', '1576221382911'),
(49, 'U4f06d1704e5c79234d397da9e8b0558e', '', '1576501754191'),
(50, 'U4f06d1704e5c79234d397da9e8b0558e', 'thanapoj', '1576501994571'),
(51, 'U4f06d1704e5c79234d397da9e8b0558e', 'z', '1576501998314'),
(52, 'U4f06d1704e5c79234d397da9e8b0558e', 'server-01', '1576502012938'),
(53, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576502024183'),
(54, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576502062671'),
(55, 'U4f06d1704e5c79234d397da9e8b0558e', 'server', '1576502144773'),
(56, 'U4f06d1704e5c79234d397da9e8b0558e', 'server-01', '1576502155235'),
(57, 'U174a1e8f98504b9168a743241c8ffc51', 'Thanapoj', '1576502398957');

-- --------------------------------------------------------

--
-- Table structure for table `servername`
--

CREATE TABLE `servername` (
  `serverid` int(11) NOT NULL,
  `servername` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servername`
--

INSERT INTO `servername` (`serverid`, `servername`) VALUES
(1, 'test-server-01'),
(2, 'test-server-02'),
(3, 'test-server-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `adminlist`
--
ALTER TABLE `adminlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servername`
--
ALTER TABLE `servername`
  ADD PRIMARY KEY (`serverid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminlist`
--
ALTER TABLE `adminlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `servername`
--
ALTER TABLE `servername`
  MODIFY `serverid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
