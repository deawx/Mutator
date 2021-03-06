-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2020 at 11:44 AM
-- Server version: 5.7.29-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devtk_supk`
--

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `name` mediumtext CHARACTER SET utf8 NOT NULL,
  `description` mediumtext CHARACTER SET utf8,
  `file` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `name`, `description`, `file`, `points`) VALUES
(8, 'The New Homework', 'Homework for tests', 'null', 2);

-- --------------------------------------------------------

--
-- Table structure for table `homework_clear`
--

CREATE TABLE `homework_clear` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `hwid` int(11) NOT NULL,
  `file` varchar(500) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework_clear`
--

INSERT INTO `homework_clear` (`id`, `name`, `hwid`, `file`, `status`, `score`) VALUES
(6, '1898', 8, '/page/attach/a2b3dbece7/answersheet.py', 1, 2),
(7, '1888', 8, '/page/attach/54c62ebf06/1_8.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hw`
--

CREATE TABLE `hw` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL,
  `class` varchar(20) NOT NULL,
  `num` int(10) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `rank`, `name`, `class`, `num`, `points`) VALUES
(6, '126565', '548989', 1, 'class admin', '199', 5, 0),
(7, '1898', '6666', 0, 'class student', '101', 1, 2),
(8, '1888', '3434', 0, 'à¸™à¸²à¸¢à¸›à¸£à¸°à¸¢à¸¸à¸—à¸˜à¹Œ à¸ˆà¸±à¸™à¸—à¸£à¹Œà¹‚à¸—à¸£à¸¥à¸²', '111', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `v` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tn` varchar(255) NOT NULL,
  `view_cc` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_clear`
--
ALTER TABLE `homework_clear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hw`
--
ALTER TABLE `hw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `homework_clear`
--
ALTER TABLE `homework_clear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hw`
--
ALTER TABLE `hw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
