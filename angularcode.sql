-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 02:11 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angularcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countryName`, `code`) VALUES
(1, 'Russia', '+7'),
(2, 'United States', '+1'),
(5, 'Australia', '+61'),
(6, 'India', '+91'),
(7, 'South Africa', '+27'),
(8, 'Brazil', '+55');

-- --------------------------------------------------------

--
-- Table structure for table `customers_auth`
--

CREATE TABLE `customers_auth` (
  `uid` int(11) NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) NOT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_auth`
--

INSERT INTO `customers_auth` (`uid`, `first_name`, `last_name`, `email`, `phone`, `password`, `country`, `currency`, `date`) VALUES
(200, 'aaa', 'bbb', 'aaa@yahoo.com', '7-9180389818', '$2a$10$923afcabfc75334a4f660OLQb9DSDy1cLyU0rMWQxthQPH5hkqJl6', 'Russia', 'EUR', '2017-03-26'),
(201, 'ccc', 'ddd', 'ccc@yahoo.com', '789', '$2a$10$2e7f344625f94fc5994b7ewiHu5mdhCvSFAdXTOrQvoUoRKWBHOOi', 'Australia', 'USD', '2017-03-16'),
(202, 'rrr', 'ttt', 'rrr@yahoo.com', '5678', '$2a$10$937ba67500ad878e1d580udeU16OWGuDTVnVwEo8ULhHi/9peLYWO', 'South Africa', 'EUR', '2017-04-03'),
(203, 'qqq', 'www', 'qqq@yahoo.com', '+7 : 34567', '$2a$10$3c0425e7b675f5dc9d8f5uOs.p0S6G5mJay.FPSbZx0F4UPY8TBfq', '', 'EUR', '2017-04-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_auth`
--
ALTER TABLE `customers_auth`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customers_auth`
--
ALTER TABLE `customers_auth`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
